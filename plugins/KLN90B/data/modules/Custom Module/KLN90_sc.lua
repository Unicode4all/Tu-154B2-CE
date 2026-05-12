local KLN90_SC = {}
local KLN90_RENDER = dofile(sasl.getAircraftPath() .. "/plugins/KLN90B/data/modules/Custom Module/KLN90_render.lua")

-- This module is intentionally a pass-through scaffold for now.
-- The goal is to keep KLN90_panel.lua close to upstream and move
-- multicrew/slave-specific behavior behind a few explicit hook points.

local function copy_lines(src)
    local dst = {}
    for i = 1, 8 do
        dst[i] = src[i]
    end
    return dst
end

local function sc_round(value)
    return math.floor((value or 0) + 0.5)
end

local function sc_pack_string(str)
    str = str or ""
    return string.format("%02d|%s", string.len(str), str)
end

local function sc_unpack_string(str)
    str = str or ""
    if string.len(str) >= 3 and string.sub(str, 3, 3) == "|" then
        local payload_len = tonumber(string.sub(str, 1, 2))
        if payload_len ~= nil then
            return string.sub(str, 4, 3 + payload_len)
        end
    end
    return str
end

local state = {
    is_slave = false,
    text = nil,
    map = nil,
    slave_snapshot = nil,
    preview_snapshot = nil,
    slave_text_snapshot = nil,
}

local debug_preview = createGlobalPropertyi("tu154b2/custom/KLN90/sc_debug_preview", 0)
local sc_scale_line = createGlobalPropertys("tu154b2/custom/KLN90/sc_scale_line", "")
local sc_graph_nav5 = globalPropertys("tu154b2/custom/graphNAV5Comp")
local sc_graph_apt3 = globalPropertys("tu154b2/custom/graphAPT3Comp")
local sc_map_mode = createGlobalPropertyi("tu154b2/custom/KLN90/sc_map_mode", 0)
local sc_mode_lpage = createGlobalPropertyi("tu154b2/custom/KLN90/sc_mode_lpage", -5)
local sc_mode_lsub = createGlobalPropertyi("tu154b2/custom/KLN90/sc_mode_lsub", 0)
local sc_mode_rpage = createGlobalPropertyi("tu154b2/custom/KLN90/sc_mode_rpage", -5)
local sc_mode_rsub = createGlobalPropertyi("tu154b2/custom/KLN90/sc_mode_rsub", 0)
local sc_gline = {
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_1", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_2", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_3", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_4", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_5", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_6", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_7", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_gline_8", ""),
}
local sc_bline = {
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_1", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_2", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_3", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_4", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_5", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_6", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_7", ""),
    createGlobalPropertys("tu154b2/custom/KLN90/sc_bline_8", ""),
}
local sc_cage = createGlobalPropertyi("tu154b2/custom/KLN90/sc_cage", 0)
local preview_surface = nil
local preview_size = nil
local active_map_capture = nil
local should_render_transport_map
local parse_map_payload
local replicated_text_state
local build_transport_screen_state
local map_capture = {
    nav5 = {},
    apt3 = {},
}

local function encode_map_entry(parts)
    return table.concat(parts, ";")
end

local function append_map_entry(target, parts)
    if not map_capture[target] then
        return
    end

    map_capture[target][#map_capture[target] + 1] = encode_map_entry(parts)
end

local function reset_map_capture(target)
    map_capture[target] = {}
end

local function flush_map_capture(target)
    local payload = table.concat(map_capture[target], "|")

    if target == "nav5" then
        set(sc_graph_nav5, payload)
    elseif target == "apt3" then
        set(sc_graph_apt3, payload)
    end
end

function KLN90_SC.begin_frame(is_slave)
    state.is_slave = is_slave

    state.preview_snapshot = build_transport_screen_state()
    if is_slave then
        local preview_text = state.preview_snapshot and state.preview_snapshot.text_state or nil
        if preview_text then
            state.slave_text_snapshot = {
                gline = copy_lines(preview_text.gline or {}),
                bline = copy_lines(preview_text.bline or {}),
                scaleline = preview_text.scaleline,
                cagevisible = preview_text.cagevisible,
            }
        else
            state.slave_text_snapshot = nil
        end

        state.slave_snapshot = state.preview_snapshot
        if state.slave_snapshot and state.slave_text_snapshot then
            state.slave_snapshot = {
                text_state = state.slave_text_snapshot,
                nav5_comp = state.slave_snapshot.nav5_comp or {},
                apt3_comp = state.slave_snapshot.apt3_comp or {},
                parsed_map_items = state.slave_snapshot.parsed_map_items,
            }
        end
    else
        state.slave_snapshot = nil
        state.slave_text_snapshot = nil
    end
end

function KLN90_SC.publish_text(gline, bline, scaleline, cagevisible)
    if state.is_slave then
        return
    end

    state.text = {
        gline = copy_lines(gline),
        bline = copy_lines(bline),
        scaleline = scaleline,
        cagevisible = cagevisible,
    }

    for i = 1, 8 do
        set(sc_gline[i], sc_pack_string(gline[i]))
        set(sc_bline[i], sc_pack_string(bline[i]))
    end
    set(sc_scale_line, sc_pack_string(scaleline))
    set(sc_cage, cagevisible or 0)
end

function KLN90_SC.publish_mode(lpage, lsub, rpage, rsub)
    if state.is_slave then
        return
    end

    set(sc_mode_lpage, lpage or -5)
    set(sc_mode_lsub, lsub or 0)
    set(sc_mode_rpage, rpage or -5)
    set(sc_mode_rsub, rsub or 0)
end

function KLN90_SC.publish_map(nav5_comp, apt3_comp, context)
    if state.is_slave then
        active_map_capture = nil
        return
    end

    state.map = {
        Nav5Comp = nav5_comp,
        APT3Comp = apt3_comp,
        context = context,
    }

    if active_map_capture == "nav5" then
        flush_map_capture("nav5")
        set(sc_map_mode, (#map_capture.nav5 > 0) and 1 or 0)
    elseif active_map_capture == "apt3" then
        flush_map_capture("apt3")
    end

    active_map_capture = nil
end

function KLN90_SC.begin_map_capture(target)
    if state.is_slave then
        active_map_capture = nil
        return
    end

    active_map_capture = target
    reset_map_capture(target)
end

function KLN90_SC.capture_line(x1, y1, x2, y2, size)
    if state.is_slave or not active_map_capture then
        return
    end

    append_map_entry(active_map_capture, {
        "L",
        sc_round(x1),
        sc_round(y1),
        sc_round(x2),
        sc_round(y2),
        sc_round((size or {})[1] or 0),
        sc_round((size or {})[2] or 0),
        sc_round((size or {})[3] or 208),
        sc_round((size or {})[4] or 80),
    })
end

function KLN90_SC.capture_string(strings, x, y, size)
    if state.is_slave or not active_map_capture then
        return
    end

    append_map_entry(active_map_capture, {
        "S",
        strings or "",
        sc_round(x),
        sc_round(y),
        sc_round((size or {})[1] or 0),
        sc_round((size or {})[2] or 0),
        sc_round((size or {})[3] or 208),
        sc_round((size or {})[4] or 80),
    })
end

function KLN90_SC.capture_icon(idx, x, y, w, h)
    if state.is_slave or not active_map_capture then
        return
    end

    append_map_entry(active_map_capture, {
        "I",
        idx or "",
        sc_round(x),
        sc_round(y),
        sc_round(w),
        sc_round(h),
    })
end

replicated_text_state = function()
    local gline = {}
    local bline = {}

    for i = 1, 8 do
        gline[i] = sc_unpack_string(get(sc_gline[i]))
        bline[i] = sc_unpack_string(get(sc_bline[i]))
    end

    return {
        gline = gline,
        bline = bline,
        scaleline = sc_unpack_string(get(sc_scale_line)),
        cagevisible = get(sc_cage),
    }
end

build_transport_screen_state = function()
    local slave_state = {
        text_state = replicated_text_state(),
        nav5_comp = {},
        apt3_comp = {},
        parsed_map_items = nil,
    }

    if get(sc_map_mode) ~= 0 and should_render_transport_map() then
        slave_state.parsed_map_items = parse_map_payload(get(sc_graph_nav5))
    end

    return slave_state
end

function KLN90_SC.get_slave_screen_state(local_state)
    if state.is_slave and state.slave_snapshot then
        return state.slave_snapshot
    end

    return build_transport_screen_state()
end

function KLN90_SC.get_preview_state(local_state)
    return state.preview_snapshot or build_transport_screen_state()
end

parse_map_payload = function(payload)
    local items = {}

    if not payload or payload == "" then
        return items
    end

    for entry in string.gmatch(payload, "([^|]+)") do
        local parts = {}
        for field in string.gmatch(entry, "([^;]+)") do
            parts[#parts + 1] = field
        end
        items[#items + 1] = parts
    end

    return items
end

should_render_transport_map = function()
    local lpage = get(sc_mode_lpage)
    local lsub = get(sc_mode_lsub)
    local rpage = get(sc_mode_rpage)
    local rsub = get(sc_mode_rsub)

    if lpage == 4 and lsub == 50 and rpage == 5 and rsub == 50 then
        return true
    end

    if lpage == 4 and lsub == 50 then
        return true
    end

    if rpage == 5 and rsub == 50 then
        return true
    end

    return false
end

function KLN90_SC.draw_debug_preview(args)
    if get(debug_preview) == 0 then
        return
    end

    local screen_state = args.screen_state
    local size = args.size
    local frame_color = args.frame_color
    local screen_color = args.screen_color
    local pixel_image = args.pixel_image

    if not preview_surface or not preview_size or preview_size[1] ~= size[1] or preview_size[2] ~= size[2] then
        preview_surface = sasl.gl.createTexture(size[1], size[2])
        preview_size = { size[1], size[2] }
    end

    sasl.gl.setRenderTarget(preview_surface, true)
    sasl.gl.drawRectangle(0, 0, size[1], size[2], {0, 0, 0, 1})
    sasl.gl.drawRectangle(0, size[2] - 1, size[1], 1, frame_color)
    sasl.gl.drawRectangle(0, 0, size[1], 1, frame_color)
    sasl.gl.drawRectangle(0, 0, 1, size[2], frame_color)
    sasl.gl.drawRectangle(size[1] - 1, 0, 1, size[2], frame_color)

    KLN90_RENDER.draw_screen({
        screen_state = screen_state,
        font = args.font,
        fontb = args.fontb,
        fontl = args.fontl,
        color = screen_color,
        cage = args.cage,
        pixel_image = pixel_image,
        image_resolver = args.image_resolver,
        label_renderer = args.label_renderer,
    })
    sasl.gl.restoreRenderTarget()
    sasl.gl.drawTexture(preview_surface, 0, 0, size[1], size[2])
end

function KLN90_SC.get_debug_state()
    return state
end

return KLN90_SC
