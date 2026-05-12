local KLN90_RENDER = {}

local function inside_bounds(x, y, size)
    return x - 0.5 > size[1]
        and x + 0.5 < size[1] + size[3]
        and y - 0.5 > size[2]
        and y + 0.5 < size[2] + size[4]
end

local function get_map_icon_size(idx, width, height)
    if idx == "0" then
        return 5, 5
    elseif idx == "1" then
        return 3, 3
    elseif idx == "2" then
        return 5, 4
    elseif idx == "3" then
        return 5, 5
    elseif idx == "4" then
        return 5, 5
    elseif idx == "5" then
        return 5, 5
    elseif idx == "6" then
        return 4, 4
    elseif idx == "7" then
        return 3, 3
    end

    return width, height
end

function KLN90_RENDER.for_each_line_pixel(x1, y1, x2, y2, size, emit)
    if math.abs(x1 - x2) > math.abs(y1 - y2) then
        local x3 = x1
        local x4 = x2
        local y3 = y1
        local y4 = y2

        if x1 > x2 then
            x3 = x2
            x4 = x1
            y3 = y2
            y4 = y1
        end

        local climb = (y2 - y1) / (x2 - x1)
        y3 = y3 + climb
        x3 = x3 + 1

        while x3 < x4 do
            if inside_bounds(x3, y3, size) then
                emit(x3, y3)
            end
            y3 = y3 + climb
            x3 = x3 + 1
        end
    else
        local y3 = y1
        local y4 = y2
        local x3 = x1
        local x4 = x2

        if y1 > y2 then
            y3 = y2
            y4 = y1
            x3 = x2
            x4 = x1
        end

        local climb = (x2 - x1) / (y2 - y1)
        x3 = x3 + climb
        y3 = y3 + 1

        while y3 < y4 do
            if inside_bounds(x3, y3, size) then
                emit(x3, y3)
            end
            x3 = x3 + climb
            y3 = y3 + 1
        end
    end
end

function KLN90_RENDER.draw_text_screen(args)
    local text_state = args.text_state
    local font = args.font
    local fontb = args.fontb
    local fontl = args.fontl
    local color = args.color
    local cage = args.cage

    sasl.gl.drawBitmapText(font, 1, 69, text_state.gline[1], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(font, 1, 58, text_state.gline[2], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(font, 1, 47, text_state.gline[3], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(font, 1, 36, text_state.gline[4], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(font, 1, 25, text_state.gline[5], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(font, 1, 14, text_state.gline[6], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(font, 1, 0, text_state.gline[7], TEXT_ALIGN_LEFT, color[1], color[2], color[3])

    sasl.gl.drawBitmapText(fontb, 1, 69, text_state.bline[1], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(fontb, 1, 58, text_state.bline[2], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(fontb, 1, 47, text_state.bline[3], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(fontb, 1, 36, text_state.bline[4], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(fontb, 1, 25, text_state.bline[5], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(fontb, 1, 14, text_state.bline[6], TEXT_ALIGN_LEFT, color[1], color[2], color[3])
    sasl.gl.drawBitmapText(fontb, 1, 0, text_state.bline[7], TEXT_ALIGN_LEFT, color[1], color[2], color[3])

    sasl.gl.drawBitmapText(fontl, 5.5, 58, text_state.scaleline or "", TEXT_ALIGN_LEFT, color[1], color[2], color[3])

    if cage then
        sasl.gl.drawTexture(get(cage), 0, 27, 208, 1, {
            color[1] * (text_state.cagevisible or 0),
            color[2] * (text_state.cagevisible or 0),
            color[3] * (text_state.cagevisible or 0),
        })
    end
end

function KLN90_RENDER.draw_map_tables(nav5_comp, apt3_comp)
    drawAll(nav5_comp)
    drawAll(apt3_comp)
end

function KLN90_RENDER.draw_map_line_texture(args)
    local pixel_image = args.pixel_image
    local x1 = args.x1
    local y1 = args.y1
    local x2 = args.x2
    local y2 = args.y2
    local size = args.size or {0, 0, 208, 80}
    local brightness = args.brightness or 1

    if not pixel_image then
        return
    end

    KLN90_RENDER.for_each_line_pixel(x1, y1, x2, y2, size, function(px, py)
        sasl.gl.drawTexture(pixel_image, math.floor(px), math.floor(py), 1, 1, {brightness, brightness, brightness, 1})
    end)
end

function KLN90_RENDER.draw_parsed_map(args)
    local items = args.items or {}
    local font = args.font
    local color = args.color
    local pixel_image = args.pixel_image
    local image_resolver = args.image_resolver
    local label_renderer = args.label_renderer
    local size = args.size or {0, 0, 208, 80}

    for _, parts in ipairs(items) do
        if parts[1] == "L" and #parts >= 5 then
            local line_size = size
            if #parts >= 9 then
                line_size = {
                    tonumber(parts[6]) or size[1],
                    tonumber(parts[7]) or size[2],
                    tonumber(parts[8]) or size[3],
                    tonumber(parts[9]) or size[4],
                }
            end
            KLN90_RENDER.draw_map_line_texture({
                x1 = tonumber(parts[2]) or 0,
                y1 = tonumber(parts[3]) or 0,
                x2 = tonumber(parts[4]) or 0,
                y2 = tonumber(parts[5]) or 0,
                pixel_image = pixel_image,
                brightness = color[1],
                size = line_size,
            })
        elseif parts[1] == "S" and #parts >= 4 then
            local label_size = size
            if #parts >= 8 then
                label_size = {
                    tonumber(parts[5]) or size[1],
                    tonumber(parts[6]) or size[2],
                    tonumber(parts[7]) or size[3],
                    tonumber(parts[8]) or size[4],
                }
            end
            if label_renderer then
                label_renderer(
                    parts[2] or "",
                    tonumber(parts[3]) or 0,
                    tonumber(parts[4]) or 0,
                    label_size
                )
            else
                sasl.gl.drawBitmapText(
                    font,
                    tonumber(parts[3]) or 0,
                    tonumber(parts[4]) or 0,
                    parts[2] or "",
                    TEXT_ALIGN_LEFT,
                    color[1],
                    color[2],
                    color[3]
                )
            end
        elseif parts[1] == "I" and #parts >= 6 and image_resolver then
            local image = image_resolver(parts[2])
            if image then
                local icon_width, icon_height = get_map_icon_size(
                    parts[2],
                    tonumber(parts[5]) or 0,
                    tonumber(parts[6]) or 0
                )
                sasl.gl.drawTexture(
                    image,
                    tonumber(parts[3]) or 0,
                    tonumber(parts[4]) or 0,
                    icon_width,
                    icon_height,
                    {color[1], color[2], color[3], 1}
                )
            end
        end
    end
end

function KLN90_RENDER.draw_screen(args)
    local screen_state = args.screen_state or {}
    local text_state = screen_state.text_state or args.text_state
    local nav5_comp = screen_state.nav5_comp or args.nav5_comp
    local apt3_comp = screen_state.apt3_comp or args.apt3_comp
    local parsed_map_items = screen_state.parsed_map_items or args.parsed_map_items

    if args.background_color then
        local bg = args.background_color
        local size = args.size or {0, 0, 208, 80}
        sasl.gl.drawRectangle(0, 0, size[1], size[2], bg)
    end

    if parsed_map_items then
        KLN90_RENDER.draw_parsed_map({
            items = parsed_map_items,
            font = args.font,
            color = args.color,
            pixel_image = args.pixel_image,
            image_resolver = args.image_resolver,
            label_renderer = args.label_renderer,
            size = args.map_size or args.size,
        })
    elseif nav5_comp or apt3_comp then
        KLN90_RENDER.draw_map_tables(nav5_comp or {}, apt3_comp or {})
    end

    KLN90_RENDER.draw_text_screen({
        text_state = text_state,
        font = args.font,
        fontb = args.fontb,
        fontl = args.fontl,
        color = args.color,
        cage = args.cage,
    })
end

return KLN90_RENDER
