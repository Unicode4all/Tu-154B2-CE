-- this is NVU main script
---@diagnostic disable: missing-fields
---@diagnostic disable: lowercase-global

editor_size = { 1000, 350 }
-- Navplan for NVU. Used for PA-3 tablet for now
-- PA-3's enroute map is constructed from it

avia_font = sasl.gl.loadFont("AVIA.ttf")

pa3_path = sasl.getAircraftPath() .. "/pa3"

pa3_item = sasl.appendMenuItem(AIRCRAFT_MENU_ID, "NVU")
-- create menu
pa3_menu = sasl.createMenu("NVU", AIRCRAFT_MENU_ID, pa3_item)
local save_scroll_cmd = sasl.createCommand("tu154b2/custom/nvu/pa3/open_editor", "Open Flight Plan editor")
pa3_save_scroll = sasl.appendMenuItemWithCommand(pa3_menu, "Toggle Flight Plan Editor", save_scroll_cmd)
sasl.registerCommandHandler(save_scroll_cmd, 0, function(phase)
    if phase == SASL_COMMAND_END then
        fpln_editor_window:setIsVisible(not fpln_editor_window:isVisible())
    end
end)

defineProperty("nvu_navplan_changed", 1)
nvu_navplan = {
    Name = "",
    ShortDesc = "",
    LongDesc = "",
    Legs = {
        [1] = {
            NAME = "",
            S = 400, -- leg length
            Z = 0,   -- initial lateral offset
            DTK = 12 -- designated track to next leg
        },
        [2] = {
            NAME = "",
            S = 320,
            Z = 0,
            DTK = 350
        },
        [3] = {
            NAME = "",
            S = 532,
            Z = 0,
            DTK = 23
        }
    }
}

addSearchPath(sasl.getXPlanePath() .. "/Resources/bitmaps/interface")
addSearchPath(sasl.getXPlanePath() .. "/Resources/bitmaps/interface11")



popout_img = sasl.gl.loadImage("floating_window@1.5x.png", 27, 0, 28, 28)
close_img = sasl.gl.loadImage("floating_window@1.5x.png", 0, 28, 26, 26)
fpln_editor_window = contextWindow {
    position     = { 200, 200, editor_size[1], editor_size[2] },
    noBackground = true,
    visible      = false,
    name         = "NVU Flight Plan Editor",
    minimumSize  = { editor_size[1], editor_size[2] },
    maximumSize  = { editor_size[1], editor_size[2] },
    noDecore     = false,
    customDecore = true,
    proportional = true,
    --gravity = { 0.5, 0.5 },
    decoration   = {
        headerHeight = 0,
        main = {
            draw = function(w, h) -- draw  window  header...
                sasl.gl.drawTexture(popout_img, w - 20, h - 24, 20, 20, { 1, 1, 1, 1 })
                sasl.gl.drawTexture(close_img, 5, h - 24, 20, 20, { 1, 1, 1, 1 })
                sasl.gl.drawText(avia_font, w / 2, h - 16, "PA-3 Flight Plan Editor", 16, false, false, TEXT_ALIGN_CENTER,
                    { 1, 1, 1, 1 })
            end,
            onMouseMove = function(x, y, w, h)
                if y > h - 20 and y < h and fpln_editor_window:isPoppedOut() == false then
                    hide_window_controls_ctr = false
                else
                    hide_window_controls_ctr = true
                end
            end,
            onMouseDown = function(x, y, w, h, button)
                if fpln_editor_window:isPoppedOut() == false and button == MB_LEFT then
                    if y > h - 20 then
                        if x > w - 20 then
                            fpln_editor_window:setMode(SASL_CW_MODE_POPOUT)
                        elseif x < 20 then
                            fpln_editor_window:setIsVisible(false)
                        end
                    end
                end
            end,
        }
    },
    components   = {
        fpln_editor {
            position = { 0, 0, editor_size[1], editor_size[2] }
        },
        --editor_button {
        --	position = { 50, 50, 100, 50 },
        --	text = "Button",
        --	hover = 0,
        --	color = {0.8, 0.8, 0.8, 1},
        --};
    }
}




components = {

    nvu_panel {},
    nvu_logic {},
    moving_map {
        --position = { 2242, 1144, 793, 900 }
        fbo = true,
        position = { 2050, 834, 2048, 2048 }
    }
}
