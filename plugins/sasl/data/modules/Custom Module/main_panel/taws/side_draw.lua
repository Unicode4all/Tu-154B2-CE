-- this is side drawing logic


size = {800, 600}


defineProperty("image_table") -- table of heights
defineProperty("columns") -- table of colors

defineProperty("range", 10)
defineProperty("v_spd", 0)
defineProperty("g_spd", 0)
defineProperty("bright")
defineProperty("range_txt")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
local font = loadFont(moduleDirectory.."/Custom Module/Verdana.ttf")

function draw()
	
	-- draw heights
	local drawTable = get(image_table)
	local x_size = get(columns)
	local x_coef = size[1] / x_size
	local brt = get(bright)
	for x = 1, x_size, 1 do
			
		local height = drawTable[x]		
		
		if height > 900 then height = 900 end
		
		if height > 300 then
			local y = math.min((height - 300) * 120/200, 120)
			drawRectangle((x-1) * x_coef, 480, x_coef, y, 1, 0.3, 0.3, brt) -- red
			drawRectangle((x-1) * x_coef, 390, x_coef, 90, 0.87, 0.91, 0.35,   brt) -- orange
			drawRectangle((x-1) * x_coef, 300, x_coef, 90, 0.58, 0.65, 0.30, brt) -- dark yellow
			drawRectangle((x-1) * x_coef, 210, x_coef, 90, 0.25, 0.36, 0.19, brt) -- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 210, 0.20, 0.60, 0.34,  brt) -- green
		elseif height > 150 then
			local y = math.min((height - 150) * 90/150, 90)
			drawRectangle((x-1) * x_coef, 390, x_coef, y, 0.87, 0.91, 0.35,  brt) -- orange
			drawRectangle((x-1) * x_coef, 300, x_coef, 90, 0.58, 0.65, 0.30, brt) -- dark yellow
			drawRectangle((x-1) * x_coef, 210, x_coef, 90, 0.25, 0.36, 0.19,  brt) -- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 210, 0.20, 0.60, 0.34,  brt) -- green
		elseif height > 0 then
			local y = height * 90/150
			drawRectangle((x-1) * x_coef, 300, x_coef, y, 0.58, 0.65, 0.30, brt) -- dark yellow
			drawRectangle((x-1) * x_coef, 210, x_coef, 90,0.25, 0.36, 0.19,  brt) -- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 210, 0.20, 0.60, 0.34,  brt) -- green
		elseif height > -150 then
			local y = -(-150 - height) * 90/150
			drawRectangle((x-1) * x_coef, 210, x_coef, y, 0.25, 0.36, 0.19,  brt)	-- yellow
			drawRectangle((x-1) * x_coef, 0, x_coef, 210, 0.20, 0.60, 0.34,  brt) -- green
		elseif height > -500 then
			local y = - (-500 - height) * 210/350
			drawRectangle((x-1) * x_coef, 0, x_coef, y, 0.20, 0.60, 0.34,  brt) -- green
		end
			
			
	end
	drawText(font, 400, -40 , get(range_txt), 30, false, false, TEXT_ALIGN_CENTER, {0.1607, 0.647, 0.647, brt})
	-- track line
	-- local vvi = get(v_spd)
	-- local speed = get(g_spd) -- m/s
	-- local step = get(range) * 1000 / 80 -- length of one pixel in meters
	-- local line_length = math.min(80, speed * 60 / step)
	-- local step_time = step / speed
	-- local y_step = vvi * step_time * 0.39
	-- local y_last = 260
	
	
	
	-- if speed > 0 then
		
		-- for i = 0, line_length, 1 do
			-- local current_y = y_last + y_step
			
			-- if current_y + y_step > 620 or current_y < -20 then break end
			
			-- if y_step > 0 then drawRectangle(i * 10, current_y - 5, 10, y_step + 5, 1, 0, 1, 1)
			-- else drawRectangle(i * 10, current_y - 5, 10, -y_step + 5, 1, 0, 1, 1)
			-- end
		
			-- y_last = current_y
		-- end
		
		
	-- end
	

end
