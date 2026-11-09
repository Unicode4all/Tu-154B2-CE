
defineProperty("color", {1,1,1,1})
defineProperty("freq", "")
defineProperty("trunc", 0)
font = loadFont("digital7.ttf")
chrs = {} 

function table.pack(...)
    t = {...}
    t.n = select("#", ...)

    return t
end
local function split(str)
    if #str>0 then return str:sub(1,1),split(str:sub(2)) end
  end


function draw()
    local chars = {split(get(freq))}
    drawText(font, 0, 0, chars[1], 65, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 62, 0, chars[2], 65, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 124, 0, chars[3], 65, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 165, 0, chars[4], 66, true, true, TEXT_ALIGN_LEFT, get(color))
    drawText(font, 188, 0, chars[5], 65, true, true, TEXT_ALIGN_LEFT, get(color))
	if get(trunc) == 0 then
		drawText(font, 246, 0, chars[6], 65, true, true, TEXT_ALIGN_LEFT, get(color))
		drawText(font, 304, 0, chars[7], 65, true, true, TEXT_ALIGN_LEFT, get(color))
	end
end
function update()
    sasl.logError("asd")
end