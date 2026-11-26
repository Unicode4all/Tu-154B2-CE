latProp   = globalPropertyf("sim/flightmodel/position/latitude")
lonProp   = globalPropertyf("sim/flightmodel/position/longitude")
altProp   = globalPropertyf("sim/flightmodel/position/elevation")
psiProp   = globalPropertyf("sim/flightmodel/position/psi")
thetaProp = globalPropertyf("sim/flightmodel/position/theta")
tiltProp  = globalPropertyf("sim/cockpit2/EFIS/EFIS_weather_tilt")
map_range = globalProperty("sim/cockpit/switches/EFIS_map_range_selector")
ant_stab = globalPropertyi("sim/cockpit2/EFIS/EFIS_weather_stab")
rls_mode = globalPropertyi("tu154b2/custom/switchers/console/rls_mode")
gain = globalProperty("sim/cockpit2/EFIS/EFIS_weather_gain")

--defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))

sys_data_tbl.groza_reflect_intensity_L = 0
sys_data_tbl.groza_reflect_intensity_R = 0

local gridWidth = 12
local gridHeight = 6
local maxRangeMeters = 125000 -- 125 km total range ahead
local maxHalfWidthMeters = maxRangeMeters -- 125 km lateral span
local beam_width = 1.2
local mode_prev = 0
local gain_prev = 0
local tilt_prev = 0

-- Performance Throttling: Number of frames to wait between each column slice
local frameInterval = 10 
local frameCounter = 0

-- Initialize 5x5 storage matrix
local precipitationGrid = {}
for x = 1, gridWidth do
    precipitationGrid[x] = {}
    for y = 1, gridHeight do
        precipitationGrid[x][y] = 0.0
    end
end

local currentColumn = 1

function update()
    -- 1. Fetch current values using cached property handles
    local acLat          = get(latProp) or 0.0
    local acLon          = get(lonProp) or 0.0
    local acAlt          = get(altProp) or 0.0
    local acHeadingDeg   = get(psiProp) or 0.0
    local acPitchDeg     = get(thetaProp) or 0.0
    local antennaTiltDeg = get(tiltProp) or 0.0

    local headingRad = math.rad(acHeadingDeg)
    local pitchRad   = math.rad(acPitchDeg)
    local tiltRad    = math.rad(antennaTiltDeg)
    
    local effectiveElevationRad = pitchRad * (1 - get(ant_stab)) + tiltRad

    local stepDist = maxRangeMeters / gridHeight
    local stepLateral = (maxHalfWidthMeters * 2) / gridWidth

    local metersPerDegLat = 111320.0
    local metersPerDegLon = 111320.0 * math.cos(math.rad(acLat))
	
    frameCounter = frameCounter + 1
	-- force fast update on mode switch or gain/elevation change
	local mode = get(rls_mode)
	local rad_gain = get(gain)
	if mode ~= mode_prev or tiltRad ~= tilt_prev or rad_gain ~= gain_prev then
		frameInterval = 1
		frameCounter = 0
		currentColumn = 1
	end
	mode_prev = mode
	tilt_prev = tiltRad
	gain_prev = rad_gain
    if frameCounter < frameInterval then
        return
    end
    frameCounter = 0 -- Reset counter
	local map_rng = get(map_range)
	if map_rng == 2 then
		maxRangeMeters = 30000 
		maxHalfWidthMeters = maxRangeMeters 
	elseif map_rng == 3 then
		maxRangeMeters = 50000 
		maxHalfWidthMeters = maxRangeMeters 
	elseif map_rng == 4 then
		maxRangeMeters = 125000 
		maxHalfWidthMeters = maxRangeMeters 
	elseif map_rng == 5 then
		maxRangeMeters = 250000 
		maxHalfWidthMeters = maxRangeMeters 
	end

    -- 2. Process current column incrementally (1 to 5)
    local x = currentColumn
	if mode > 0 then
		for y = 1, gridHeight do
			if mode == 1 then
				effectiveElevationRad = 0
			end
			local groundDistAhead = y * stepDist
			local lateralOffset = (x - (gridWidth / 2 + 0.5)) * stepLateral

			local slantRange = groundDistAhead / math.cos(effectiveElevationRad)
			-- this accounts for the vertical beam width, center +/- beam width
			local sampleAlt = acAlt + (slantRange * math.sin(effectiveElevationRad))
			local sampleAlt2 = acAlt + (slantRange * math.sin(effectiveElevationRad + math.rad(beam_width)))
			local sampleAlt3 = acAlt + (slantRange * math.sin(effectiveElevationRad - math.rad(beam_width)))

			local northOffset = groundDistAhead * math.cos(headingRad) - lateralOffset * math.sin(headingRad)
			local eastOffset  = groundDistAhead * math.sin(headingRad) + lateralOffset * math.cos(headingRad)

			local sampleLat = acLat + (northOffset / metersPerDegLat)
			local sampleLon = acLon + (eastOffset / metersPerDegLon)
			-- radar ground hits
			local rad_x , rad_y , rad_z = sasl.worldToLocal (sampleLat, sampleLon, sampleAlt)
			local rad_x2 , rad_y2 , rad_z2 = sasl.worldToLocal (sampleLat, sampleLon, sampleAlt2)
			local rad_x3 , rad_y3 , rad_z3 = sasl.worldToLocal (sampleLat, sampleLon, sampleAlt3)
			local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(rad_x , rad_y , rad_z)
			local prob2, locationX2, locationY2, locationZ2, normalX2, normalY2, normalZ2, velocityX2, velocityY2, vlocityZ2, isWet2 = sasl.probeTerrain(rad_x2 , rad_y2 , rad_z2)
			local prob3, locationX3, locationY3, locationZ3, normalX3, normalY3, normalZ3, velocityX3, velocityY3, vlocityZ3, isWet3 = sasl.probeTerrain(rad_x3 , rad_y3 , rad_z3)
			local terr_lat, terr_lon, terr_alt = 0, 0, 0
			local terr_lat2, terr_lon2, terr_alt2 = 0, 0, 0
			local terr_lat3, terr_lon3, terr_alt3 = 0, 0, 0
			if locationX and locationY and locationZ then
				terr_lat, terr_lon, terr_alt = localToWorld(locationX, locationY, locationZ)
			end
			if locationX2 and locationY2 and locationZ2 then
				terr_lat2, terr_lon2, terr_alt2 = localToWorld(locationX2, locationY2, locationZ2)
			end
			if locationX3 and locationY3 and locationZ3 then
				terr_lat3, terr_lon3, terr_alt3 = localToWorld(locationX3, locationY3, locationZ3)
			end
			local terr_margin = slantRange * math.sin(math.rad(beam_width/2))
			local terr_hit = 0
			if terr_alt + terr_margin >= sampleAlt and sampleAlt >= terr_alt - terr_margin then
				terr_hit = 1
			end
			local terr_hit2 = 0
			if terr_alt2 + terr_margin >= sampleAlt2 and sampleAlt2 >= terr_alt2 - terr_margin then
				terr_hit2 = 1
			end
			local terr_hit3 = 0
			if terr_alt3 + terr_margin >= sampleAlt3 and sampleAlt3 >= terr_alt3 - terr_margin then
				terr_hit3 = 1
			end

			-- 3. Query weather (table return with precipRate field)
			if mode ~= 1 then
				local weatherData = sasl.weather.getWeatherAtLocation(sampleLat, sampleLon, sampleAlt)
				local weatherData2 = sasl.weather.getWeatherAtLocation(sampleLat, sampleLon, sampleAlt2)
				local weatherData3 = sasl.weather.getWeatherAtLocation(sampleLat, sampleLon, sampleAlt3)
				local return_int = 0
				local kont_thr = 0.5 -- kontur mode high precipitation areas are drawn black
				local c_alt=math.min(1,math.max(0,-0.3333*sampleAlt/1000 + 3))
				if weatherData then
					return_int = weatherData.precipRate * bool2int(weatherData.precipRate < kont_thr or mode ~= 3) * c_alt + terr_hit * 0.5
				else
					return_int = terr_hit
				end
				local return_int2 = 0
				c_alt=math.min(1,math.max(0,-0.3333*sampleAlt2/1000 + 3))
				if weatherData2 then
					return_int2 = weatherData2.precipRate * bool2int(weatherData.precipRate < kont_thr or mode ~= 3) * c_alt + terr_hit2 * 0.5
				else
					return_int2 = terr_hit2
				end
				local return_int3 = 0
				c_alt=math.min(1,math.max(0,-0.3333*sampleAlt3/1000 + 3))
				if weatherData3 then
					return_int3 = weatherData3.precipRate * bool2int(weatherData.precipRate < kont_thr or mode ~= 3) * c_alt + terr_hit3 * 0.5
				else
					return_int3 = terr_hit3 * 0.5
				end
				precipitationGrid[x][y] = math.max(return_int,return_int2,return_int3)
			else
				local water = 0
				if isWet then
					water = isWet
				end
				local return_int = math.min(0.5, 0.3 + terr_alt / 10000) * (rad_gain / 2 + 0.55) * (1 - 0.75 * water)
				precipitationGrid[x][y] = return_int
			end
		end

		-- 4. Advance slice index
		currentColumn = currentColumn + 1
		if currentColumn > gridWidth  then
			currentColumn = 1 -- Reset cycle after scanning all 5 columns
			frameInterval = 10
			local sumL, countL = 0, 0 -- Left   (Cols 1-3, Rows 1-10)
			local sumR, countR = 0, 0 -- Right  (Cols 8-10, Rows 1-10)

			for gx = 1, gridWidth do
				for gy = 1, gridHeight do
					local val = precipitationGrid[gx][gy]
					if gx >= 1 and gx <= 6 then
						sumL = sumL + val; countL = countL + 1
					else
						sumR = sumR + val; countR = countR + 1
					end
				end
			end

			local avgL = countL > 0 and (sumL / countL) or 0.0
			local avgR = countR > 0 and (sumR / countR) or 0.0
			-- 6. Write L/R averages to internal table
			-- if precipIntProp then
				-- set(precipIntProp, globalAvg)
			-- end
			if mode ~= 4 then
				sys_data_tbl.groza_reflect_intensity_L = avgL
				sys_data_tbl.groza_reflect_intensity_R = avgR
			end
				-- if sys_data_tbl.groza_reflect_intensity_L > 0 then
					-- sys_data_tbl.groza_reflect_intensity_L = sys_data_tbl.groza_reflect_intensity_L - passed/5
				-- end
				-- if sys_data_tbl.groza_reflect_intensity_L > 0 then
					-- sys_data_tbl.groza_reflect_intensity_R = sys_data_tbl.groza_reflect_intensity_R - passed/5
				-- end
		end
	end
end