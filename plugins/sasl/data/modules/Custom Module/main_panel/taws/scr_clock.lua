-- this is the clock screen of TAWS
size = {1000, 770}

defineProperty("mode_set", globalPropertyi("tu154b2/custom/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения
defineProperty("brt_handle", globalPropertyf("tu154b2/custom/rotary/srpbz/brightness")) -- ручка яркости


defineProperty("course_fly", globalPropertyf("sim/flightmodel/position/hpath")) -- course, where aircraft actually flies

defineProperty("latitude", globalPropertyf("sim/flightmodel/position/latitude")) -- degrees	The latitude of the aircraft
defineProperty("longitude", globalPropertyf("sim/flightmodel/position/longitude")) -- degrees The longitude of the aircraft
defineProperty("speed", globalPropertyf("sim/flightmodel/position/groundspeed"))



defineProperty("sim_time", globalPropertyf("sim/time/zulu_time_sec"))  -- zulu time



-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- images
defineProperty("screen_img_img", loadImage(moduleDirectory .. "/Custom Module/main_panel/taws/taws_clock.png", 0, 0, 1000, 770))
local text_font = loadFont(moduleDirectory.."/Custom Module/Verdana.ttf")


local screen_work = get(mode_set) == 3
local brightness = 0.8


local course_text = ""
local course = get(course_fly)

local latitude_show = ""
local longtitude_show = ""

local time_show = "00:00"
local seconds = 0

local speed_text = ""
local speed_scale = 0

local time_counter = 0 -- use frames to fill table row by row

function update()

	screen_work = get(mode_set) == 3
	local passed = get(frame_time)
	
	
	if not screen_work then 
		brightness = 0 
		time_counter = 0	
	
	else
		brightness = get(brt_handle)
		

		
		if time_counter > 0.2 then
			-------------------------
			-- course text --
			-------------------------
			course = get(course_fly)
			
			local spd = get(speed) * 3.6
			
			if math.abs(spd) < 10 then course = 0 end
			
			course_text = math.floor(course)
			if course_text < 10 then course_text = "  "..course_text
			elseif course_text < 100 then course_text = " "..course_text end
			
			
			
			---------------------------
			-- latitude text
			---------------------------
			local acf_lat = get(latitude)
			
			local lat_sign = sign(acf_lat)
			if lat_sign >= 0 then lat_sign = "N"
			else lat_sign = "S" end
			
			acf_lat = math.abs(acf_lat)
			local lat_deg = math.floor(acf_lat)
			
			local lat_minsec = (acf_lat - lat_deg) * 3600
			
			local lat_min = math.floor(lat_minsec / 60)
			
			local lat_sec = math.floor((lat_minsec / 60 - lat_min) * 60)


			-- format variables
			if lat_deg < 10 then lat_deg = "    "..lat_deg
			else lat_deg = "  "..lat_deg end
			
			if lat_min < 10 then lat_min = "0"..lat_min end
			
			if lat_sec < 10 then lat_sec = "0"..lat_sec end
			
			latitude_show = lat_deg.."°"..lat_min.."\'"..lat_sec.."\" "..lat_sign
			
			---------------------------
			-- longtitude text
			---------------------------
			local acf_lon = get(longitude)
			
			local lon_sign = sign(acf_lon)
			if lon_sign >= 0 then lon_sign = "E"
			else lon_sign = "W" end
			
			acf_lon = math.abs(acf_lon)
			local lon_deg = math.floor(acf_lon)
			
			local lon_minsec = (acf_lon - lon_deg) * 3600
			
			local lon_min = math.floor(lon_minsec / 60)
			
			local lon_sec = math.floor((lon_minsec / 60 - lon_min) * 60)


			-- format variables
			if lon_deg < 10 then lon_deg = "    "..lon_deg
			elseif lon_deg < 100 then lon_deg = "  "..lon_deg
			else lon_deg = ""..lon_deg end
			
			if lon_min < 10 then lon_min = "0"..lon_min end
			
			if lon_sec < 10 then lon_sec = "0"..lon_sec end
			
			longtitude_show = lon_deg.."°"..lon_min.."\'"..lon_sec.."\" "..lon_sign	
			
			-----------------------------
			-- speed text --
			--------------------------
			
			
			
			speed_text = math.floor(math.abs(spd))
			
			speed_scale = spd
			
			
			time_counter = 0
		end
			----------------------
			-- time show --
			----------------------

			local utc = math.floor(get(sim_time)) -- in seconds
	
			local hours = math.floor(utc / 3600)
			
			local minutes = math.floor((utc - hours * 3600) / 60)
			
			local sec = utc - hours * 3600 - minutes * 60
			
			seconds = sec
			
			if hours < 10 then hours = "0"..hours end
			if minutes < 10 then minutes = "0"..minutes end
			
			
			time_show = hours..":"..minutes --..":"..sec		
		
	end
	
	
	
	time_counter = time_counter + passed
	
	

end



components = {
	
	-- rectangle {
		-- position = {0, 0, size[1], size[2]},
		-- color = {0.1, 0.1, 0.1, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },
	
	
	-- -- course text
	-- text_draw {
		-- position = {420, 680, 180, 150},
		-- text = function()
			-- return course_text
		-- end,
		-- font = text_font,
		-- color = {1,1,1,1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },
	
	-- -- latitude text
	-- text_draw {
		-- position = {240, 130, 190, 140},
		-- text = function()
			-- return latitude_show
		-- end,
		-- font = text_font,
		-- color = {1,1,1,1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	

	-- -- longtitude text
	-- text_draw {
		-- position = {240, 70, 190, 140},
		-- text = function()
			-- return longtitude_show
		-- end,
		-- font = text_font,
		-- color = {1,1,1,1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },
	
	-- -- time text
	-- text_draw {
		-- position = {525, 342, 190, 140},
		-- text = function()
			-- return time_show
		-- end,
		-- font = text_font,
		-- color = {1,1,1,1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },

	-- -- speed text
	-- text_draw {
		-- position = {250, 342, 190, 140},
		-- text = function()
			-- return speed_text
		-- end,
		-- font = text_font,
		-- color = {1,1,1,1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },


	
	
	-- scr_clock_spd {
		-- position = {46, 222, 180, 287},
		-- speed = function()
			-- return speed_scale
		-- end,
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
	
	
	
	-- scr_clock_sec {
		-- position = {742, 222, 180, 287},
		-- seconds = function()
			-- return seconds
		-- end,
		-- visible = function()
			-- return screen_work
		-- end,
	-- },		
	
	
	-- scr_clock_crs {
		-- position = {245, 580, 480, 94},
		-- course = function()
			-- return course
		-- end,
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
	
	-- -- screen background (mask)
	-- textureLit {
		-- position = {0, 0, size[1], size[2]},
		-- image = get(screen_img_img),
		-- visible = function()
			-- return screen_work
		-- end,
	-- },


	
	
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