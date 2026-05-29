-- this is map screen
--include("corr_tbl.lua")


size = {1000, 770}

defineProperty("mode_set", globalPropertyi("tu154b2/custom/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения
defineProperty("distance_set", globalPropertyi("tu154b2/custom/taws/distance_set")) -- дистанция для рисования карты, км. 0 = 10, 1 = 20, 2 = 40, 3 = 80, 4 = 160, 5 = 320, 6 = 640

defineProperty("brt_handle", globalPropertyf("tu154b2/custom/rotary/srpbz/brightness")) -- ручка яркости

-- load images
defineProperty("scale_top_img", loadImage("taws_scale_1.png", 0, 0, 1000, 770))



-- map parameters
defineProperty("pos_x", globalPropertyf("sim/flightmodel/position/local_x")) -- longtitude. positive from W to E
defineProperty("pos_y", globalPropertyf("sim/flightmodel/position/local_y")) -- altitude. positive UP
defineProperty("pos_z", globalPropertyf("sim/flightmodel/position/local_z")) -- latitude. positive from N to S

defineProperty("speed", globalPropertyf("sim/flightmodel/position/groundspeed"))
defineProperty("course", globalPropertyf("sim/flightmodel/position/psi")) -- angle between -Z axis and airplane's nose
defineProperty("course_fly", globalPropertyf("sim/flightmodel/position/hpath")) -- course, where aircraft actually flies


defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

defineProperty("kont", globalPropertyi("tu154b2/custom/b2/kontur_on"))
defineProperty("kont_left", globalPropertyi("sim/custom/kontur/left_taws"))
defineProperty("kont_right", globalPropertyi("sim/custom/kontur/right_taws"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))



local rows = 60
local cols = 80

local low_qlty = false
local alt_prev=0
if low_qlty then
	rows = 30
	cols = 40
end



-- colors of heights: 1 - black, 2 - dark green, 3 - green, 4 - yellow, 5 - orange, 6 - red, 7 - blue, 8 - magenta
--local colorTable = {[1]={0.1, 0.1, 0.1}, [2]={0.2, 0.5, 0.2}, [3]={0.3, 1, 0.3}, [4]={1, 1, 0.3}, [5]={1, 0.6, 0.2}, [6]={1,0.3,0.3}, [7]={0.1,0.1,1}, [8] = {1,0.1,1}}

-- colors of heights: 1 - black, 2 - dark green, 3 - green, 4 - yellow, 5 - dark yellow, 6 - orange, 7 - red, 8 - blue, 9 - magenta
local colorTable = {[1]={0.1, 0.1, 0.1}, [2]={0.2, 0.5, 0.2}, [3]={0.3, 1, 0.3}, [4]={1, 1, 0.3}, [5]={1, 0.8, 0.2}, [6]={1, 0.6, 0.2}, [7]={1,0.3,0.3}, [8]={0.1,0.1,1}, [9] = {1,0.1,1}}

-- declare and fill drawed table of heights coded in color
local heightTable = {}

for i = 1, cols, 1 do
	table.insert(heightTable, {})
	for j = 1, rows, 1 do
		table.insert(heightTable[i], 1)
	end
end

-- declare and fill temporal table of heights
local tempHeightTable = {}

for i = 1, cols, 1 do
	table.insert(tempHeightTable, {})
	for j = 1, rows, 1 do
		table.insert(tempHeightTable[i], 1)
	end
end


function giveColor(acf_alt, terr_alt, wet, gears)
	local colorID = 8
	
	-- check alt
	if not terr_alt then return 8 end -- error reading terrain
	local alt = (terr_alt - acf_alt) -- meters
	
	--if wet then return 8 end
	
	if alt >= 600 then colorID = 7 -- red
	elseif alt >= 300 then colorID = 6 -- orange
	elseif alt >= 0 then colorID = 5 -- dark yellow
	elseif alt >= -150 then colorID = 4 -- yellow
	elseif alt >=- 300 then colorID = 3 -- green
	elseif alt >=- 600 then colorID = 2 -- dark green
	elseif alt < -600 then colorID = 1 -- black
	end
	
	return colorID


end

--[[
function giveColor(acf_alt, terr_alt, wet, gears)
	local colorID = 8
	
	-- check alt
	if not terr_alt then return 8 end -- error reading terrain
	local alt = (terr_alt - acf_alt) * 3.2808399 -- transform to feet
	
	--if wet then return 7 end
	
	if alt >= 2000 then colorID = 6 -- red
	elseif alt >= 1000 and alt < 2000 then colorID = 5 -- orange
	elseif ((alt >= -250 and gears) or (alt >= -500 and not gears)) and alt < 1000 then colorID = 4 -- yellow
	elseif alt >= -1000 and ((alt < -250 and gears) or (alt < -500 and not gears)) then colorID = 3 -- green
	elseif alt >=-2000 and alt < -1000 then colorID = 2 -- dark green
	elseif alt < -2000 then colorID = 1 -- black
	end
	
	return colorID


end
--]]

local frame_counter = 1 -- use frames to fill table row by row
		
local dir = math.rad(get(course))
local dir_x = math.sin(dir); -- direct vector
local dir_z = -math.cos(dir);
local right_x = -dir_z; -- vector to the right
local right_z = dir_x;
local height, width = 20000, 25000 -- dimensions of scanned area in meters
local plane_x = get(pos_x)
local plane_y = get(pos_y)
local plane_z = get(pos_z)


local LG = false

local text_font = loadBitmapFont('taws_scr.fnt')

local range_text = " 20"

local brightness = 0.8


local screen_work = get(mode_set) == 1 and (get(kont_left)==1 or get(kont_right)==1) and get(kont)==1


function update()
	
	screen_work = get(mode_set) == 1 and (get(kont_left)==1 or get(kont_right)==1) and get(kont)==1
	
	if not screen_work then 
		brightness = 0 
		frame_counter = 1
	else brightness = get(brt_handle)
	end
	
	local dist = get(distance_set)

	local distance = 20
	range_text = " 20"
	
	if dist == 0 then distance = 10 range_text = " 10"
	elseif dist == 2 then distance = 40 range_text = " 40"
	elseif dist == 3 then distance = 80 range_text = " 80"
	elseif dist == 4 then distance = 160 range_text = "160"
	elseif dist == 5 then distance = 320 range_text = "320"
	elseif dist == 6 then distance = 640 range_text = "640"
	end
	
	-- moving map calculations
	if frame_counter > rows/2 then frame_counter = 1 end
	if frame_counter == 1 and screen_work then
		dir = math.rad(get(course))
		
		if get(speed) > 11 then dir = math.rad(get(course_fly)) end
		
		dir_x = math.sin(dir); -- direct vector
		dir_z = -math.cos(dir);
		right_x = -dir_z; -- vector to the right
		right_z = dir_x;
		plane_x = get(pos_x)
		plane_y = get(pos_y)
		plane_z = get(pos_z)
		LG = get(gear1_deploy) > 0.99 and get(gear2_deploy) > 0.99 and get(gear2_deploy) > 0.99
		
		height = distance * 1000
		width = distance * 1250
		
		-- copy temp table to draw table and reset temp one
		for i = 1, cols, 1 do
			for j = 1, rows, 1 do
				heightTable[i][j] = tempHeightTable[i][j]
				tempHeightTable[i][j] = 1
			end
		end		
		
		
	end	
	
	-- scan terrain and fill temp table
	if screen_work then
		
		local acf_lat, acf_lon, acf_alt = sasl.localToWorld(plane_x, plane_y, plane_z)
		for row = frame_counter * 2 - 1, frame_counter * 2, 1 do
			for col = 1, cols, 1 do
				local p_x = plane_x + dir_x * height * row/rows - right_x * width / 2 + right_x * width * col/cols;
				local p_z = plane_z + dir_z * height * row/rows - right_z * width / 2 + right_z * width * col/cols;
				local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(p_x, plane_y, p_z)
				isWet=isWet==1				
				--local probe_dist = math.sqrt((p_x)^2 + (p_z)^2) / 1000
				--local correct = interpolate(correct_tbl, probe_dist) - 130
				
				if locationX and  locationY and locationZ then
					local lat, lon, alt = sasl.localToWorld(locationX, locationY, locationZ)
					tempHeightTable[col][row] = giveColor(acf_alt, alt, isWet, LG)
					alt_prev=alt
				else
					--local temp=get(db1)
					--set(db1,temp+1)
					tempHeightTable[col][row] = giveColor(acf_alt, alt_prev, isWet, LG)
				end
				
				--if row == 1 and col == 50 then print(probe_dist, correct, locationY + correct, locationY) end
				--if row == 80 and col == 1 then print(probe_dist, correct, locationY + correct, locationY) end
			end	
		end
	else
		-- reset tables
		for i = 1, cols, 1 do
			for j = 1, rows, 1 do
				heightTable[i][j] = 1
				tempHeightTable[i][j] = 1
			end
		end	
		frame_counter = 0
		
	end
	
	frame_counter = frame_counter + 1	
	
end





components = {
	
	-- draw_map {
		-- position = {0, 0, size[1], size[2]},
		-- size_x = cols,
		-- size_y = rows,
		
		-- image_table = function()
			-- return heightTable
		-- end,
		
		-- colors = function()
			-- return colorTable
		-- end,
		
		-- visible = function()
			-- return screen_work
		-- end,
		
		
		
	-- },
	
	-- scale for top view
	texture {
		position = {0, 0, size[1], size[2]},
		image = get(scale_top_img),
		visible = function()
			return screen_work
		end,
	},

	
	
	--[[
	-- brightness controll
	rectangle_ctr {
		R = 0,
		G = 0,
		B = 0,
		A = function()
			return 1 - brightness
		end, -- controll via alpha
		position_x = 0,
		position_y = 0,
		width = size[1],
		height = size[2],
		visible = function()
			return screen_work
		end,
	},
	--]]
	
	
}