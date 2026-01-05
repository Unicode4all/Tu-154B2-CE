-- NVU Flight Plan Editor (contextWindow)

size = { 1000, 350 } -- TODO: Adjust to actual desired size

-- Properties for editor state
editorVisible = true -- set true to show, false to hide
font = sasl.gl.loadFont("Verdana.ttf", 24)
filename = ""
status = ""

json = require("json")

local function redrawMap()
    local cmd = sasl.findCommand("tu154b2/custom/nvu/pa3/redraw")
    if cmd then
        sasl.commandOnce(cmd)
    end
end

function addLeg()
    if #nvu_navplan.Legs < 10 then
        table.insert(nvu_navplan.Legs, {
            NAME = "",
            S = 100,
            Z = 0,
            DTK = 0
        })
        redrawMap()
    end
end

function removeLeg()
    table.remove(nvu_navplan.Legs)
    redrawMap()
end

--function onModuleInit()
--    --update flightplanview from nvu plan
--    for i, v in ipairs(FlightPlanView) do
--        if NVUNavplan[i] then
--            v.Name = NVUNavplan[i].NAME
--            v.S = NVUNavplan[i].S
--            v.Z = NVUNavplan[i].Z
--            v.DTK = NVUNavplan[i].DTK
--            v.Active = 1
--            currentLeg = i
--        else
--            v.Active = 0
--        end
--    end
--end

function saveFPLN()
    sasl.logDebug("Saving flight plan to file")
    local j = json.encode(nvu_navplan)
    local path = sasl.getAircraftPath() .. "/pa3/gen_plans/"
    local fname = filename ~= "" and filename .. ".json" or "fpln.json"
    local fullpath = path .. fname
    local f = io.open(fullpath, "w")
    if f then
        f:write(j)
        f:close()
    else
        sasl.logWarning("saveFPLN: Cannot open file for writing: " .. fullpath)
    end
end

local function loadFPLN()
    sasl.logDebug("PA-3: Loading flight plan from file")
    local path = sasl.getAircraftPath() .. "/pa3/gen_plans/"
    local fname = filename ~= "" and filename .. ".json" or "fpln.json"
    local fullpath = path .. fname
    local f = io.open(fullpath, "r")
    if f then
        -- reconstructs the main flightplan table from data,
        -- if we do just nvu_flightplan = json, then for some reason it doesn't work
        local loaded = json.decode(f:read("*all"))
        if type(loaded) == "table" then
            for k, v in pairs(nvu_navplan) do
                nvu_navplan[k] = nil
            end
            for k, v in pairs(loaded) do
                if type(v) == "table" and type(nvu_navplan[k]) == "table" then
                    for kk, vv in pairs(nvu_navplan[k]) do
                        nvu_navplan[k][kk] = nil
                    end
                    for kk, vv in pairs(v) do
                        nvu_navplan[k][kk] = vv
                    end
                else
                    nvu_navplan[k] = v
                end
            end
        end
        f:close()
        set(nvu_navplan_changed, 1)
        redrawMap()
    else
        sasl.logWarning("PA-3: loadFPLN: Cannot open file for reading: " .. fullpath)
    end
end


addSearchPath(moduleDirectory .. "/Custom Module/main_panel/nvu/editor")
components = {
    editor_background {
        position = { 0, 0, size[1], size[2] },
    },
    editor_button {
        position = { 5, 5, 50, 25 },
        text = "Add Leg",
        hover = 0,
        color = { 0, 0.6, 0, 1 },
        onMouseClick = function()
            addLeg()
        end
    },
    editor_button {
        position = { 60, 5, 70, 25 },
        text = "Remove Leg",
        hover = 0,
        color = { 0.8, 0, 0, 1 },
        onMouseClick = function()
            removeLeg()
        end
    },
    editor_button {
        position = { 135, 5, 70, 25 },
        text = "Save",
        hover = 0,
        color = { 0.2, 0.6, 0.8, 1 },
        onMouseClick = function()
            saveFPLN()
        end
    },
    editor_button {
        position = { 210, 5, 70, 25 },
        text = "Load",
        hover = 0,
        color = { 0.2, 0.6, 0.8, 1 },
        onMouseClick = function()
            loadFPLN()
        end
    },
    -- add a text field for file name
    editor_textfield {
        position = { 285, 5, 300, 25 },
        data = function() return filename end,
        setData = function(v) filename = v end,
        label = "NAME",
        type = "string",
        max_length = 32,
        color = { 0.4, 0.4, 0.2, 1 },
    },
    editor_label {
        position = { size[1] / 1.5 + 10, size[2] - 150 - 5, 300, 25 },
        text = function() return status end,
        font_size = 16,
        font = avia_font,
        color = { 1, 1, 1, 1 },
    },
    editor_textfield {
        position = { size[1] / 1.5 + 10, size[2] - 60 - 5, 300, 25 },
        data = function() return nvu_navplan.Name end,
        setData = function(v) nvu_navplan.Name = v end,
        label = "FPLN Name",
        type = "string",
        max_length = 32,
        color = { 0.4, 0.4, 0.2, 1 },
    },
    editor_textfield {
        position = { size[1] / 1.5 + 10, size[2] - 90 - 5, 300, 25 },
        data = function() return nvu_navplan.ShortDesc end,
        setData = function(v) nvu_navplan.ShortDesc = v end,
        label = "Short Desc",
        type = "string",
        max_length = 32,
        color = { 0.4, 0.4, 0.2, 1 },
    },
    editor_textfield {
        position = { size[1] / 1.5 + 10, size[2] - 120 - 5, 300, 25 },
        data = function() return nvu_navplan.LongDesc end,
        setData = function(v) nvu_navplan.LongDesc = v end,
        label = "Desc",
        type = "string",
        max_length = 32,
        color = { 0.4, 0.4, 0.2, 1 },
    },
    editor_label {
        position = { size[1] / 1.5 + 10, size[2] - 150 - 5, 300, 25 },
        text = [[
Note: you can't enter cyrillic characters,
it's a sim's limitation.
You can edit the flightplan file directly though.
They are in pa3/gen_plans
The default flightplan name is fpln.json
        ]],
        font_size = 16,
        font = avia_font,
        color = { 1, 1, 1, 1 },
    },
    editor_leg {
        position = { 5, 290, size[1], 32 },
        legData = function() return nvu_navplan.Legs[1] or nil end,
        visible = nvu_navplan.Legs[1] ~= nil,
    },
    editor_leg {
        position = { 5, 262, size[1], 32 },
        legData = function() return nvu_navplan.Legs[2] or nil end,
        visible = nvu_navplan.Legs[2] ~= nil,
    },
    editor_leg {
        position = { 5, 234, size[1], 32 },
        legData = function() return nvu_navplan.Legs[3] or nil end,
        visible = nvu_navplan.Legs[3] ~= nil,
    },
    editor_leg {
        position = { 5, 206, size[1], 32 },
        legData = function() return nvu_navplan.Legs[4] or nil end,
        visible = nvu_navplan.Legs[4] ~= nil,
    },
    editor_leg {
        position = { 5, 178, size[1], 32 },
        legData = function() return nvu_navplan.Legs[5] or nil end,
        visible = nvu_navplan.Legs[5] ~= nil,
    },
    editor_leg {
        position = { 5, 150, size[1], 32 },
        legData = function() return nvu_navplan.Legs[6] or nil end,
        visible = nvu_navplan.Legs[6] ~= nil,
    },
    editor_leg {
        position = { 5, 122, size[1], 32 },
        legData = function() return nvu_navplan.Legs[7] or nil end,
        visible = nvu_navplan.Legs[7] ~= nil,
    },
    editor_leg {
        position = { 5, 94, size[1], 32 },
        legData = function() return nvu_navplan.Legs[8] or nil end,
        visible = nvu_navplan.Legs[8] ~= nil,
    },
    editor_leg {
        position = { 5, 66, size[1], 32 },
        legData = function() return nvu_navplan.Legs[9] or nil end,
        visible = nvu_navplan.Legs[9] ~= nil,
    },
    editor_leg {
        position = { 5, 38, size[1], 32 },
        legData = function() return nvu_navplan.Legs[10] or nil end,
        visible = nvu_navplan.Legs[10] ~= nil,
    },
}

function onModuleInit()
    -- load default flightplan
    loadFPLN()
end
