-- no image by default
defineProperty("image")

-- image to display over digits (for 3d effect)
defineProperty("overlayImage")

-- default value
defineProperty("value", 0)

-- maximum digits
defineProperty("digits", 1)

-- maximum digits
defineProperty("fractional", 0)

-- allow non-round values
defineProperty("allowNonRound", false)

-- enable of disable value display
defineProperty("valueEnabler", true)

-- show leading zeros
defineProperty("showLeadingZeros", false)

-- show sign instead of first digit
defineProperty("showSign", false)

defineProperty("lit",0)

function draw(self)
    local img = get(image)
    local overlayImg = get(overlayImage)
    local sign = get(showSign)
    local leading = get(showLeadingZeros)
    local digitsNum = get(digits)
    local frac = get(fractional)
    local symbolsNum = digitsNum
	local light = get(lit)
	local clr = {1 - 0.5 * light, 1 - 0.5 * light , 1 - 0.5 * light , 1.0 }
    if 0 < frac then
        symbolsNum = symbolsNum + 1
    end
    local imgWidth, imgHeight = getTextureSize(img)

    local digitTileWidth = imgWidth

    local v = math.abs(get(value)) * (10 ^ frac)
    if get(allowNonRound) then
        v = math.floor(v + 0.5)
    end
    --local pos = 100 - digitTileWidth
    local posX = get(position)[3] - digitTileWidth + 15
    --local digitTileHeight = 0.0714285714286
    local digitTileHeight = imgHeight / 14

    local digitWidth = (digitTileWidth + (get(position)[4]) )*0.35 - 4
    local digitHeight = (digitTileHeight + (get(position)[4]))*0.35


    --drawTexturePart(img, posX, 0, digitTileWidth, digitTileHeight, 0, 1*14, digitTileWidth, digitTileHeight)

    --if true then return end

    if 0 < frac then
        local y = (12 + 1) * digitTileHeight
        -- TODO: fix frac drawing
        drawTexturePart(img, posX - digitTileWidth * frac, 0, digitTileWidth, 100, 0, y, 1, digitTileHeight) 
    end

    if get(valueEnabler) then
        local prevDigit = 0
        if sign then
            digitsNum = digitsNum - 1
        end
        for i = 1, digitsNum do
            local digit = v % 10
            if 9.5 < prevDigit then
                digit = digit + 1
            end
            prevDigit = digit
            v = math.floor(v / 10)
            local y = (10 - digit + 2) * digitTileHeight
            y = imgHeight - y - 10 -- reverse y position because 0 is bottom left image point
--            print("digit: "..tostring(digit).." y= "..tostring(y))
            drawTexturePart(img, posX, 0, digitWidth, digitHeight, 0, y, digitTileWidth, digitTileHeight, clr)
            posX = posX - digitWidth
            if frac == i then
                posX = posX - digitWidth
            end
            if (i > frac) and (not leading) and (0 == v) then
                break;
            end
        end
        if sign and (0 > get(value)) then
            -- TODO: fix sign drawing
            local y = (13 + 1) * digitTileHeight
            y = imgHeight - y - 14
            drawTexturePart(img, posX, 0, digitWidth, digitHeight, 0, y, digitTileWidth, digitTileHeight, clr) 
        end
    end
        
    if overlayImg then
        local w, h = getTextureSize(overlayImg)
        drawTexture(overlayImg, 0, 0, w, h)
    end
end

