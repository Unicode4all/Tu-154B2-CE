--[[
    Navaid Cache Module for PA-3 Moving Map

    This module handles:
    - Resolving waypoint names to geographic coordinates using X-Plane navdata
    - Querying navaids along flight plan legs (VOR, NDB, Airport, RSBN)
    - Caching navaid data for efficient rendering
    - Converting geographic coordinates to leg-relative S/Z offsets
]]

include("nav_funcs")

-- RSBN name translations (English to Russian)
include("rsbn_names_ru")

-- Navaid types to display (era-appropriate for Tu-154)
local NAVAID_TYPES = { NAV_VOR, NAV_NDB, NAV_AIRPORT, NAV_FIX }

-- Custom type for RSBN beacons (not in X-Plane navdata)
NAV_RSBN = 100

-- RSBN beacon database (loaded from rsbn.dat)
local rsbnDatabase = {}
local rsbnLoaded = false

-- Load RSBN beacons from rsbn.dat
local function loadRSBNDatabase()
    if rsbnLoaded then return end

    local path = sasl.getAircraftPath() .. "/rsbn.dat"
    local file = io.open(path, "r")

    if file then
        rsbnDatabase = {}
        while true do
            local line = file:read("*line")
            if line == nil then break end

            -- Parse: channel|name|code|freq|lat|lon|elev
            local a = 1
            local b = string.find(line, "|", a)
            if b then
                local channel = tonumber(string.sub(line, a, b - 1))
                a = b + 1
                b = string.find(line, "|", a)
                local name = string.sub(line, a, b - 1)
                a = b + 1
                b = string.find(line, "|", a)
                local code = string.sub(line, a, b - 1)
                a = b + 1
                b = string.find(line, "|", a)
                local freq = tonumber(string.sub(line, a, b - 1))
                a = b + 1
                b = string.find(line, "|", a)
                local lat = tonumber(string.sub(line, a, b - 1))
                a = b + 1
                b = string.find(line, "|", a)
                local lon = tonumber(string.sub(line, a, b - 1))
                a = b + 1
                local elev = tonumber(string.sub(line, a))

                if channel and lat and lon then
                    -- Translate name to Russian if available
                    local nameRu = translateRSBNName(name)
                    table.insert(rsbnDatabase, {
                        channel = channel,
                        name = nameRu,
                        id = code or "",
                        freq = freq or 0,
                        lat = lat,
                        lon = lon,
                        elev = elev or 0
                    })
                end
            end
        end
        file:close()
        rsbnLoaded = true
        sasl.logInfo("PA-3: Loaded " .. #rsbnDatabase .. " RSBN beacons from rsbn.dat")
    else
        sasl.logWarning("PA-3: Could not read rsbn.dat")
    end
end

-- Query RSBN beacons near a geographic point
-- Returns all RSBN beacons within maxDist NM
local function queryRSBNNear(lat, lon, maxDistNM)
    loadRSBNDatabase()
    local results = {}

    for _, beacon in ipairs(rsbnDatabase) do
        local dist = calcDistance(lat, lon, beacon.lat, beacon.lon)
        if dist <= maxDistNM then
            table.insert(results, {
                type = NAV_RSBN,
                lat = beacon.lat,
                lon = beacon.lon,
                alt = beacon.elev,
                freq = beacon.channel, -- Use channel as "frequency" for display
                id = beacon.id,
                name = beacon.name,
                hasDME = true, -- RSBN always has distance measurement
                dist = dist
            })
        end
    end

    return results
end

-- Cache structure (global for access from moving_map.lua)
navaidCache = {
    legs = {}, -- [legIndex] = { navaids = {...}, valid = bool }
    lastUpdate = 0
}

-- Airport chart cache for departure/arrival charts
airportChartCache = {
    departure = {
        icao = nil,
        name = nil,
        lat = nil,
        lon = nil,
        elevation = nil,  -- in meters
        navaids = {},     -- Nearby VOR, NDB, RSBN within 50NM
        valid = false
    },
    arrival = {
        icao = nil,
        name = nil,
        lat = nil,
        lon = nil,
        elevation = nil,
        navaids = {},
        valid = false
    },
    lastUpdate = 0
}

-- Extract departure and arrival airport ICAO codes from flight plan
-- Returns depICAO, arrICAO (both may be nil if not found)
function extractAirportsFromPlan()
    local dep, arr = nil, nil

    if not nvu_navplan then return nil, nil end

    -- Method 1: Parse plan name "XXXX-YYYY" format
    if nvu_navplan.Name and #nvu_navplan.Name >= 9 then
        local d, a = string.match(nvu_navplan.Name, "^(%u%u%u%u)%-(%u%u%u%u)")
        if d and a then
            dep, arr = d, a
            sasl.logDebug("PA-3 Airport: Extracted from plan name: " .. dep .. " -> " .. arr)
        end
    end

    -- Method 2: Parse first leg NAME for departure (if not found yet)
    if not dep and nvu_navplan.Legs and nvu_navplan.Legs[1] then
        local firstLeg = nvu_navplan.Legs[1]
        if firstLeg.NAME then
            -- Try "XXXX-..." format first
            local startWp = string.match(firstLeg.NAME, "^(%u%u%u%u)%-")
            if startWp then
                dep = startWp
                sasl.logDebug("PA-3 Airport: Extracted departure from first leg: " .. dep)
            else
                -- Try standalone 4-letter code
                startWp = string.match(firstLeg.NAME, "^(%u%u%u%u)$")
                if startWp then
                    dep = startWp
                    sasl.logDebug("PA-3 Airport: Extracted departure from first leg (standalone): " .. dep)
                end
            end
        end
    end

    -- Method 3: Parse last leg NAME for arrival (if not found yet)
    if not arr and nvu_navplan.Legs then
        local n = #nvu_navplan.Legs
        if n > 0 then
            local lastLeg = nvu_navplan.Legs[n]
            if lastLeg.NAME then
                -- Try "...-XXXX" format first
                local endWp = string.match(lastLeg.NAME, "%-(%u%u%u%u)$")
                if endWp then
                    arr = endWp
                    sasl.logDebug("PA-3 Airport: Extracted arrival from last leg: " .. arr)
                else
                    -- Try standalone 4-letter code
                    endWp = string.match(lastLeg.NAME, "^(%u%u%u%u)$")
                    if endWp then
                        arr = endWp
                        sasl.logDebug("PA-3 Airport: Extracted arrival from last leg (standalone): " .. arr)
                    end
                end
            end
        end
    end

    return dep, arr
end

-- Query navaids near an airport for chart display
-- Returns array of navaids with bearing and distance from airport
function queryAirportNavaids(airportLat, airportLon, radiusNM)
    radiusNM = radiusNM or 50
    local navaids = {}

    -- Sample points in 8 directions at half radius to find navaids
    local samplePoints = 8
    for i = 0, samplePoints - 1 do
        local bearing = i * (360 / samplePoints)
        local sampleLat, sampleLon = calcDest(airportLat, airportLon, bearing, radiusNM / 2)

        local found = queryNavaidsNear(sampleLat, sampleLon, { NAV_VOR, NAV_NDB })
        for _, nav in ipairs(found) do
            local dist = calcDistance(airportLat, airportLon, nav.lat, nav.lon)
            if dist <= radiusNM and not navaidExists(navaids, nav.id, nav.type) then
                nav.dist = dist
                nav.bearing = calcBearing(airportLat, airportLon, nav.lat, nav.lon)
                table.insert(navaids, nav)
            end
        end
    end

    -- Also sample at the airport location itself
    local centerFound = queryNavaidsNear(airportLat, airportLon, { NAV_VOR, NAV_NDB })
    for _, nav in ipairs(centerFound) do
        local dist = calcDistance(airportLat, airportLon, nav.lat, nav.lon)
        if dist <= radiusNM and not navaidExists(navaids, nav.id, nav.type) then
            nav.dist = dist
            nav.bearing = calcBearing(airportLat, airportLon, nav.lat, nav.lon)
            table.insert(navaids, nav)
        end
    end

    -- Query RSBN beacons
    local rsbnFound = queryRSBNNear(airportLat, airportLon, radiusNM)
    for _, nav in ipairs(rsbnFound) do
        if not navaidExists(navaids, nav.id, nav.type) then
            nav.bearing = calcBearing(airportLat, airportLon, nav.lat, nav.lon)
            table.insert(navaids, nav)
        end
    end

    -- Sort by distance
    table.sort(navaids, function(a, b) return (a.dist or 0) < (b.dist or 0) end)

    sasl.logDebug("PA-3 Airport: Found " .. #navaids .. " navaids within " .. radiusNM .. "NM")
    return navaids
end

-- Build airport chart cache for departure and arrival
function buildAirportChartCache()
    -- Reset cache
    airportChartCache.departure = { valid = false, navaids = {} }
    airportChartCache.arrival = { valid = false, navaids = {} }

    local depICAO, arrICAO = extractAirportsFromPlan()

    -- Cache departure airport
    if depICAO then
        local ref = findNavAid(nil, depICAO, nil, nil, nil, NAV_AIRPORT)
        if ref ~= NAV_NOT_FOUND then
            local navType, lat, lon, alt, freq, hdg, id, name = getNavAidInfo(ref)
            if lat and lon then
                airportChartCache.departure = {
                    icao = depICAO,
                    name = name or depICAO,
                    lat = lat,
                    lon = lon,
                    elevation = alt and math.floor(alt * 0.3048) or 0, -- feet to meters
                    navaids = queryAirportNavaids(lat, lon, 50),
                    valid = true
                }
                sasl.logInfo("PA-3 Airport: Cached departure " .. depICAO .. " (" .. (name or "?") .. ")")
            end
        else
            sasl.logWarning("PA-3 Airport: Could not find departure airport " .. depICAO)
        end
    end

    -- Cache arrival airport
    if arrICAO then
        local ref = findNavAid(nil, arrICAO, nil, nil, nil, NAV_AIRPORT)
        if ref ~= NAV_NOT_FOUND then
            local navType, lat, lon, alt, freq, hdg, id, name = getNavAidInfo(ref)
            if lat and lon then
                airportChartCache.arrival = {
                    icao = arrICAO,
                    name = name or arrICAO,
                    lat = lat,
                    lon = lon,
                    elevation = alt and math.floor(alt * 0.3048) or 0,
                    navaids = queryAirportNavaids(lat, lon, 50),
                    valid = true
                }
                sasl.logInfo("PA-3 Airport: Cached arrival " .. arrICAO .. " (" .. (name or "?") .. ")")
            end
        else
            sasl.logWarning("PA-3 Airport: Could not find arrival airport " .. arrICAO)
        end
    end

    airportChartCache.lastUpdate = os.time()
end

-- Resolve a waypoint name to coordinates
-- Searches in order based on name format:
-- - 4-letter codes: try Airport first (ICAO codes like UUEE, KJFK)
-- - 2-3 letter codes: try VOR/NDB first
-- - 5-letter codes: try FIX first (waypoints like ANIKI)
function resolveWaypointCoords(name)
    if not name or name == "" then return nil, nil end

    -- Trim whitespace and convert to uppercase
    name = string.upper(string.match(name, "^%s*(.-)%s*$") or name)
    if name == "" then return nil, nil end

    local ref = NAV_NOT_FOUND
    local nameLen = #name

    -- Determine search order based on name length
    if nameLen == 4 then
        -- 4-letter codes are typically ICAO airport codes
        -- For airports, search by ID only (not name fragment)
        ref = findNavAid(nil, name, nil, nil, nil, NAV_AIRPORT)
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_FIX)
        end
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_VOR)
        end
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_NDB)
        end
    elseif nameLen == 2 or nameLen == 3 then
        -- 2-3 letter codes are typically VOR/NDB identifiers
        ref = findNavAid(name, name, nil, nil, nil, NAV_VOR)
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_NDB)
        end
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_FIX)
        end
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(nil, name, nil, nil, nil, NAV_AIRPORT)
        end
    else
        -- 5+ letter codes are typically FIX/waypoint identifiers
        ref = findNavAid(name, name, nil, nil, nil, NAV_FIX)
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_VOR)
        end
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(name, name, nil, nil, nil, NAV_NDB)
        end
        if ref == NAV_NOT_FOUND then
            ref = findNavAid(nil, name, nil, nil, nil, NAV_AIRPORT)
        end
    end

    if ref ~= NAV_NOT_FOUND then
        local navType, lat, lon = getNavAidInfo(ref)
        local typeNames = {
            [NAV_AIRPORT] = "Airport",
            [NAV_VOR] = "VOR",
            [NAV_NDB] = "NDB",
            [NAV_FIX] = "FIX"
        }
        local typeName = typeNames[navType] or "Unknown"
        sasl.logDebug("PA-3: Resolved '" .. name .. "' as " .. typeName ..
            " to lat=" .. tostring(lat) .. ", lon=" .. tostring(lon))
        return lat, lon
    end

    sasl.logWarning("PA-3: Could not resolve waypoint '" .. name .. "'")
    return nil, nil
end

-- Parse leg NAME field (format: "START-END" or just "WAYPOINT")
function parseAndResolveLegCoords(leg)
    local name = leg.NAME or ""
    local startWp, endWp = string.match(name, "([^%-]+)%-([^%-]+)")

    if startWp and endWp then
        -- Format: "START-END"
        leg.startLat, leg.startLon = resolveWaypointCoords(startWp)
        leg.endLat, leg.endLon = resolveWaypointCoords(endWp)
    else
        -- Single waypoint - use as end point
        leg.endLat, leg.endLon = resolveWaypointCoords(name)
        -- Start coords will be set from previous leg's end
    end
end

-- Query navaids near a geographic point
-- Note: findNavAid returns the NEAREST navaid of each type to the given coords
function queryNavaidsNear(lat, lon, types)
    local results = {}
    for _, navType in ipairs(types) do
        local navRef = findNavAid(nil, nil, lat, lon, nil, navType)
        if navRef ~= NAV_NOT_FOUND then
            local nType, nLat, nLon, alt, freq, heading, id, name, hasDME = getNavAidInfo(navRef)
            if nLat and nLon then
                table.insert(results, {
                    type = nType,
                    lat = nLat,
                    lon = nLon,
                    alt = alt,
                    freq = freq,
                    id = id or "",
                    name = name or "",
                    hasDME = hasDME or false
                })
            end
        end
    end
    return results
end

-- Check if navaid already in list (by ID and type to handle duplicate IDs across types)
function navaidExists(list, id, navType)
    for _, nav in ipairs(list) do
        if nav.id == id and nav.type == navType then return true end
    end
    return false
end

-- Convert geographic coords to leg-relative S/Z
-- S = distance along track (km), Z = cross-track offset (km, positive = right)
function geoToLegCoords(leg, lat, lon)
    if not leg.startLat or not leg.startLon or not leg.endLat or not leg.endLon then
        return 0, 0
    end

    -- Use nav_funcs.lua functions (distance in NM, bearing in degrees)
    local distToStart = calcDistance(leg.startLat, leg.startLon, lat, lon)
    local bearingToPoint = calcBearing(leg.startLat, leg.startLon, lat, lon)

    -- Calculate actual bearing from resolved start to end coordinates
    -- (not using DTK which is user-entered and may differ from actual bearing)
    local legBearing = calcBearing(leg.startLat, leg.startLon, leg.endLat, leg.endLon)

    -- Angle difference (bearing to navaid minus leg bearing)
    local angleDiff = math.rad(bearingToPoint - legBearing)

    -- Project onto leg axis
    -- S_offset = along-track distance, Z_offset = cross-track distance
    local S_offset = distToStart * math.cos(angleDiff) * 1.852 -- NM to km
    local Z_offset = distToStart * math.sin(angleDiff) * 1.852 -- NM to km

    return S_offset, Z_offset
end

-- Collect navaids along a leg corridor
function collectNavaidsForLeg(legIndex, leg)
    local navaids = {}

    if not leg.startLat or not leg.startLon or not leg.endLat or not leg.endLon then
        return { navaids = navaids, valid = false }
    end

    -- Sample points along the leg (every ~50km, minimum 3 samples)
    local numSamples = math.max(3, math.floor(leg.S / 50))

    for j = 0, numSamples do
        local t = j / numSamples
        local sampleLat = leg.startLat + t * (leg.endLat - leg.startLat)
        local sampleLon = leg.startLon + t * (leg.endLon - leg.startLon)

        local found = queryNavaidsNear(sampleLat, sampleLon, NAVAID_TYPES)

        -- Merge avoiding duplicates
        for _, nav in ipairs(found) do
            if not navaidExists(navaids, nav.id, nav.type) then
                -- Convert to S/Z coordinates relative to leg
                nav.S_offset, nav.Z_offset = geoToLegCoords(leg, nav.lat, nav.lon)

                -- Only include if within reasonable corridor (80km each side)
                if math.abs(nav.Z_offset) <= 80 then
                    table.insert(navaids, nav)
                end
            end
        end

        -- Also query RSBN beacons (100 NM search radius per sample point)
        local rsbnFound = queryRSBNNear(sampleLat, sampleLon, 100)
        for _, nav in ipairs(rsbnFound) do
            if not navaidExists(navaids, nav.id, nav.type) then
                nav.S_offset, nav.Z_offset = geoToLegCoords(leg, nav.lat, nav.lon)
                if math.abs(nav.Z_offset) <= 80 then
                    table.insert(navaids, nav)
                end
            end
        end
    end

    sasl.logDebug("PA-3: Leg " .. legIndex .. " found " .. #navaids .. " navaids")
    return { navaids = navaids, valid = true }
end

-- Build cache for entire route
function buildNavaidCache()
    navaidCache.legs = {}

    if not nvu_navplan or not nvu_navplan.Legs then
        sasl.logDebug("PA-3: No flight plan available")
        return
    end

    -- Build airport chart cache first
    buildAirportChartCache()

    local legCount = #nvu_navplan.Legs
    if legCount == 0 then
        sasl.logDebug("PA-3: Flight plan has no legs")
        return
    end

    -- First, resolve all leg coordinates from names
    for i, leg in ipairs(nvu_navplan.Legs) do
        parseAndResolveLegCoords(leg)
    end

    -- Chain leg coordinates (end of leg N = start of leg N+1)
    for i = 2, legCount do
        local prevLeg = nvu_navplan.Legs[i - 1]
        local currLeg = nvu_navplan.Legs[i]
        if prevLeg.endLat and prevLeg.endLon then
            if not currLeg.startLat or not currLeg.startLon then
                currLeg.startLat = prevLeg.endLat
                currLeg.startLon = prevLeg.endLon
            end
        end
    end

    -- For first leg, if no start coords, try to use aircraft position or skip
    local firstLeg = nvu_navplan.Legs[1]
    if firstLeg and not firstLeg.startLat then
        -- Try to get aircraft position as starting point
        local acfLat = globalPropertyd("sim/flightmodel/position/latitude")
        local acfLon = globalPropertyd("sim/flightmodel/position/longitude")
        if acfLat and acfLon then
            firstLeg.startLat = get(acfLat)
            firstLeg.startLon = get(acfLon)
        end
    end

    -- Collect navaids for each leg
    local totalNavaids = 0
    for i, leg in ipairs(nvu_navplan.Legs) do
        if leg.startLat and leg.endLat then
            navaidCache.legs[i] = collectNavaidsForLeg(i, leg)
            totalNavaids = totalNavaids + #navaidCache.legs[i].navaids
        else
            navaidCache.legs[i] = { navaids = {}, valid = false }
        end
    end

    navaidCache.lastUpdate = os.time()
    sasl.logInfo("PA-3: Cache built for " .. legCount .. " legs, " .. totalNavaids .. " total navaids")
    sasl.logDebug("PA-3 Config: VOR hidden")
    sasl.logDebug("PA-3 Config: RSBN shown")
    sasl.logDebug("PA-3 Config: NDB hidden")
    sasl.logDebug("PA-3 Config: APT hidden")
end

-- Return module table for require()
return {
    buildNavaidCache = buildNavaidCache,
    buildAirportChartCache = buildAirportChartCache,
    extractAirportsFromPlan = extractAirportsFromPlan,
    queryAirportNavaids = queryAirportNavaids,
    resolveWaypointCoords = resolveWaypointCoords,
    geoToLegCoords = geoToLegCoords,
    navaidCache = navaidCache,
    airportChartCache = airportChartCache
}
