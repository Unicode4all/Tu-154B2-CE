-- this is side view map
--include("corr_tbl.lua")
size = {1000, 770}
defineProperty("capt")
defineProperty("mode_set", globalPropertyi("tu154b2/custom/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения

--defineProperty("distance_set", globalPropertyi("tu154b2/custom/taws/distance_set")) -- дистанция для рисования карты, км. 0 = 10, 1 = 20, 2 = 40, 3 = 80, 4 = 160, 5 = 320, 6 = 640

brt_handle = globalPropertyf("sim/custom/kontur/kntr_1_brt_sw")
brt_handle_fo = globalPropertyf("sim/custom/kontur/kntr_2_brt_sw")


-- map parameters
pos_x = globalPropertyf("sim/flightmodel/position/local_x") -- longtitude. positive from W to E
pos_y = globalPropertyf("sim/flightmodel/position/local_y") -- altitude. positive UP
pos_z = globalPropertyf("sim/flightmodel/position/local_z") -- latitude. positive from N to S

defineProperty("speed", globalPropertyf("tu154b2/custom/nvu/diss_groundspeed"))
defineProperty("course", globalPropertyf("tu154b2/custom/tks/kln_psi")) -- angle between -Z axis and airplane's nose
--defineProperty("course_fly", globalPropertyf("sim/flightmodel/position/hpath")) -- course, where aircraft actually flies
defineProperty("elevation", globalPropertyf("sim/flightmodel/position/elevation"))



-- gear1_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[0]")  -- deploy of front gear
-- gear2_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[1]")  -- deploy of right gear
-- gear3_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[2]")  -- deploy of left gear

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("arc_array", globalPropertyfa("tu154b2/custom/rls/arc"))

-- images
-- scale_side_img_0 = loadImage("taws_scale_2_0.png", 0, 255, 1000, 770)
-- scale_side_img_1 = loadImage("taws_scale_2_1.png", 0, 255, 1000, 770)
-- scale_side_img_2 = loadImage("taws_scale_2_2.png", 0, 255, 1000, 770)
-- scale_side_img_3 = loadImage("taws_scale_2_3.png", 0, 255, 1000, 770)
-- scale_side_img_4 = loadImage("taws_scale_2_4.png", 0, 255, 1000, 770)
-- scale_side_img_5 = loadImage("taws_scale_2_5.png", 0, 255, 1000, 770)
-- scale_side_img_6 = loadImage("taws_scale_2_6.png", 0, 255, 1000, 770)
-- scale_side_img_7 = loadImage("taws_scale_2_7.png", 0, 255, 1000, 770)
scale_side_img = loadImage("taws_scale.png", 0, 255, 1000, 770)
kont = globalPropertyi("tu154b2/custom/b2/kontur_on")
kont_left = globalPropertyi("sim/custom/kontur/left_taws")
kont_right = globalPropertyi("sim/custom/kontur/right_taws")
rng_left = globalPropertyi("sim/cockpit2/EFIS/map_range")
rng_right = globalPropertyi("sim/cockpit2/EFIS/map_range_copilot")
slip = globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")
rp_fail = globalPropertyi("tu154b2/custom/taws/rppz_fail")
rdy = globalPropertyi("tu154b2/custom/taws/disp_rdy")
phase = globalPropertyi("tu154b2/custom/taws/phase")
defineProperty("max_m", globalPropertyf("tu154b2/custom/taws/max_l"))
defineProperty("min_m", globalPropertyf("tu154b2/custom/taws/min_l"))
defineProperty("max_m_1000", globalPropertyf("tu154b2/custom/taws/max_l_1000"))
defineProperty("min_m_1000", globalPropertyf("tu154b2/custom/taws/min_l_1000"))
kont_dist_mode = globalPropertyi("sim/custom/kontur/dist_mode_l")
local rows = 60
local rows_zone = 20 -- number of points for envelope lines
local flight_phase = 0
local last_flight_phase = 0
local low_qlty = false
local gnd_alt_zne = 0
local prof_max = 0
local prof_min = 0

if low_qlty then
	rows = 30
end



-- colors of heights: 1 - black, 2 - dark green, 3 - light green, 4 - yellow, 5 - orange, 6 - red, 7 - blue, 8 - magenta
--local colorTable = {[1]={0.1,0.1,0.1}, [2]={0,0.5,0}, [3]={0,1,0}, [4]={1,1,0}, [5]={1,0.5,0}, [6]={1,0,0}, [7]={0,0,1}, [8] = {1,0,1}}

-- declare and fill drawed table of heights coded in color
local heightTable = {}

for i = 1, rows, 1 do
	heightTable[i] = -5000
end

local zoneTable = {}

for i = 1, rows_zone*2, 1 do
	zoneTable[i] = 0
end

local zoneTable2 = {}

for i = 1, rows_zone*2, 1 do
	zoneTable2[i] = 0
end

local zoneTable3 = {}
for i = 1, rows_zone*2, 1 do
	zoneTable3[i] = 0
end
-- declare and fill temporal table of heights
local tempHeightTable = {}

for i = 1, rows, 1 do
	tempHeightTable[i] = -5000
end

for i = 1, 10, 1 do
	tempHeightTable[i] = -5000
end

local time_counter = 0 -- use frames to fill table row by row
		
local dir = math.rad(get(course))
local dir_x = math.sin(dir); -- direct vector
local dir_z = -math.cos(dir);
local right_x = -dir_z; -- vector to the right
local right_z = dir_x;
local height = 20000 -- dimensions of scanned area in meters
local plane_x = get(pos_x)
local plane_y = get(pos_y)
local plane_z = get(pos_z)
local p_x_zne = get(pos_x)
local p_z_zne = get(pos_z)


local LG = false

local text_font = loadBitmapFont("taws_scr.fnt")

local range_text = " 20"

local brightness = 0.8
 

local screen_work = ((get(kont_left)==2 and get(capt)==1) or (get(kont_right)==2 and get(capt)==0)) and get(rdy)==1 and get(mode_set)~=5
local env_work = screen_work and get(rp_fail) == 0

local distance = 10

local vvi = 0
local elev_last = get(elevation)
local elev_last2 = get(elevation)
local GS = get(speed)

function update()
	
	local passed = get(frame_time)
	local capt_side=get(capt)
	screen_work = ((get(kont_left)==2 and capt_side==1) or (get(kont_right)==2 and capt_side==0)) and get(rdy)==1 and get(mode_set)~=5
	env_work = screen_work and get(rp_fail) == 0
	if not screen_work then 
		brightness = 0 
		time_counter = 0	
		for i = 1, rows, 1 do
			heightTable[i] = -5000
		end	
	else 
		brightness = get(brt_handle)
		if capt_side==0 then
		   brightness = get(brt_handle_fo)
		end
	end
	
	local dist = get(rng_left)
	if capt_side==0 then
	   dist = get(rng_right)
	end

	
	--range_text = "20км"
	
	if dist == 1 then distance = 8 range_text = "4"
	elseif dist == 2 then distance = 20 range_text = "10"
	elseif dist == 3 then distance = 40 range_text = "20"
	elseif dist == 4 then distance = 100 range_text = "50"
	elseif dist == 5 then distance = 200 range_text = "100"
	elseif dist == 6 then distance = 320 range_text = "160"
	elseif dist == 7 then distance = 640 range_text = "320"
	end
	if get(kont_dist_mode) == 1 then
		distance = distance * (1-0.073)
		if dist == 1 then range_text = "2"
		elseif dist == 2 then range_text = "5"
		elseif dist == 3 then range_text = "10"
		elseif dist == 4 then range_text = "25"
		elseif dist == 5 then range_text = "50"
		elseif dist == 6 then range_text = "80"
		elseif dist == 7 then range_text = "160"
		end
	end
		--[[
		-- copy temp table to draw table and reset temp one
		for i = 1, rows, 1 do
			heightTable[i] = tempHeightTable[i]
			tempHeightTable[i] = -660 + i * 1320 / 80
		end		
		--]]
	local elev_now = get(elevation)	
	local gps_vvi = 0
	if passed ~= 0 then 
		gps_vvi = (elev_now - elev_last) / passed 
	end
	-- if gps_vvi>0 then
		-- gps_vvi=0
	-- end
	elev_last = elev_now
	-- scan terrain and fill height table
	if screen_work and time_counter > 1 then
		
		dir = math.rad(get(course)+get(slip))
		GS = get(speed)/3.6
		
		--if GS > 11 then dir = math.rad(get(course_fly)) end
		
		if GS < 1 then GS = 0 end
		
		dir_x = math.sin(dir) -- direct vector
		dir_z = -math.cos(dir)
		plane_x = get(pos_x)
		plane_y = get(pos_y)
		plane_z = get(pos_z)
		--LG = get(gear1_deploy) > 0.99 and get(gear2_deploy) > 0.99 and get(gear2_deploy) > 0.99
		
		local acf_lat, acf_lon, acf_alt = localToWorld(plane_x, plane_y, plane_z)
		
		height = distance * 1000
		
		prof_max = 0
		prof_min = 9999
		
		for row = 1, rows, 1 do
			local p_x = plane_x + dir_x * height * row/rows
			local p_z = plane_z + dir_z * height * row/rows
			local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(p_x, plane_y, p_z)
			if not locationX or not locationY or not locationZ then
				goto error
			end				
			--local probe_dist = math.sqrt((p_x)^2 + (p_z)^2) / 1000
			--local correct = interpolate(correct_tbl, probe_dist) - 130
			
			--heightTable[row] = locationY + correct - plane_y
			local lat, lon, alt = localToWorld(locationX, locationY, locationZ)
			if alt < prof_min then
				prof_min = alt
			end
			if alt > prof_max then
				prof_max = alt
			end
			if row == rows and prof_min == 9999 then
				prof_min = prof_max
			end
			heightTable[row] = alt - acf_alt
		end	
		::error::	
		--elev_last = elev_now
		vvi = (elev_now - elev_last2)
		elev_last2 = elev_now
		--Warning envelope
		local flight_phase = get(phase)
		-- if capt_side==1 then
			-- set(db1,prof_min)
			-- set(db2,prof_max)
		-- elseif capt_side==0 then
			-- set(db3,prof_min)
			-- set(db4,prof_max)
		-- end
		dir = math.rad(get(course)+get(slip))
		local GS_env=math.max(GS,50)
		-- GS=get(db1)
		-- gps_vvi=get(db2)
				
		local height_lim = 30 
		if flight_phase == 2 and gps_vvi >= -2 then height_lim = 215
		elseif flight_phase == 2 and gps_vvi < -2 then height_lim = 150
		elseif flight_phase == 3 and gps_vvi >= -2 then height_lim = 105
		elseif flight_phase == 3 and gps_vvi < -2 then height_lim = 90
		elseif flight_phase == 4 and gps_vvi >= -2 then height_lim = 50
		elseif flight_phase == 4 and gps_vvi < -2 then height_lim = 30
		end
		--if GS > 11 then dir = math.rad(get(course_fly)) end
			-- calculate zones points
		local y_0 = -height_lim
		local y_1 = y_0 + gps_vvi * 15 * 1.1
		local y_2 = y_1 + gps_vvi * 15
		local y_3 = gps_vvi * 30
		local y_4 = y_3 + GS_env * 20 * math.sin(math.rad(6))
		
		local y_5 = y_0 + gps_vvi * 35 * 1.1
		local y_6 = gps_vvi * 45
		local y_7 = y_6 + GS_env * 15 * math.sin(math.rad(6))
		local x_1 = GS_env * 15
		local x_3 = GS_env * 30
		local x_4 = GS_env * 50
		local x_5 = GS_env * 35
		local x_6 = GS_env * 45
		local x_7 = GS_env * 60
		
		
		local dir_x = math.sin(dir); -- direct vector
		local dir_z = -math.cos(dir);
		
		local right_x = -dir_z; -- vector to the right
		local right_z = dir_x;
		local zone_x=plane_x
		local zone_z=plane_z
		for j = 1, rows_zone, 1 do
			zoneTable[2*(j-1)+1] = 800 * (j-1)/rows_zone
			zoneTable[2*(j-1)+2] = 0
			zoneTable2[2*(j-1)+1] = 800 * (j-1)/rows_zone
			zoneTable2[2*(j-1)+2] = 0
			zoneTable3[2*(j-1)+1] = distance * 1000 * (j-1)/rows_zone
			zoneTable3[2*(j-1)+2] = 0
			zone_x=plane_x+ dir_x * distance * 1000 * (j-1)/rows_zone
			zone_z=plane_z+ dir_z * distance * 1000 * (j-1)/rows_zone
			-- local prob_zne, locationX_zne, locationY_zne, locationZ_zne, normalX_zne, normalY_zne, normalZ_zne, velocityX_zne, velocityY_zne, vlocityZ_zne, isWet_zne = sasl.probeTerrain(zone_x, plane_y,zone_z)				
			-- if locationX_zne and  locationY_zne and locationZ_zne then
				-- local lat_zne, lon_zne, alt_zne = sasl.localToWorld(locationX_zne, locationY_zne, locationZ_zne)
				-- gnd_alt_zne = alt_zne
			-- else
				-- goto continue
			-- end
			for row = 0, rows, 1 do
				local dist_zne = GS_env * 60 * row/rows
				--- Center ---
				p_x_zne = zone_x + dir_x * dist_zne
				p_z_zne = zone_z + dir_z * dist_zne
				local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(p_x_zne, plane_y, p_z_zne)				
				local gnd_alt = -acf_alt
				if locationX and  locationY and locationZ then
					local lat, lon, alt = sasl.localToWorld(locationX, locationY, locationZ)
					gnd_alt = alt
				end
				
				-- calculate pull-up zone
				local zone_alt = - gnd_alt
				if dist_zne < x_1 then
					zone_alt =  line(dist_zne, 0, y_0, x_1, y_1) - gnd_alt
				elseif dist_zne < x_3 then		
					zone_alt = line(dist_zne, x_1, y_1, x_3, y_2) - gnd_alt
				elseif dist_zne < x_4 then					
					zone_alt = line(dist_zne, x_3, y_3, x_4, y_4) - gnd_alt
				end
				
				if zoneTable[2*(j-1)+2] < (-zone_alt)/1000*600 then
					zoneTable[2*(j-1)+2] = (- zone_alt)/1000*600 -- in pixels for side draw
				end
				-- calculate terrain-ahead zone
				zone_alt = - gnd_alt
				if dist_zne < x_5 then
					zone_alt = line(dist_zne, 0, y_0, x_5, y_5) - gnd_alt
				elseif dist_zne < x_6 then
					zone_alt = y_5 - gnd_alt
				elseif dist_zne < x_7 then					
					zone_alt = line(dist_zne, x_6, y_6, x_7, y_7) - gnd_alt
				end
				if zoneTable2[2*(j-1)+2] < (-zone_alt)/1000*600 then
					zoneTable2[2*(j-1)+2] = (-zone_alt)/1000*600 -- in pixels for side draw
					--zoneTable3[2*(j-1)+2] =  -zone_alt
				end
			end
			zoneTable[2*(j-1)+2]  = zoneTable[2*(j-1)+2] - elev_now/1000*600 + 300
			if zoneTable[2*(j-1)+2]<-10 then
				zoneTable[2*(j-1)+2] = -10
			elseif zoneTable[2*(j-1)+2] >610 then
				zoneTable[2*(j-1)+2] = 610
			end
			zoneTable2[2*(j-1)+2] = zoneTable2[2*(j-1)+2] - elev_now/1000*600 + 300
			if zoneTable2[2*(j-1)+2]<-10 then
				zoneTable2[2*(j-1)+2] = -10
			elseif zoneTable2[2*(j-1)+2] >610 then
				zoneTable2[2*(j-1)+2] = 610
			end
			--zoneTable3[2*(j-1)+2] = zoneTable3[2*(j-1)+2] - elev_now
			::continue::
		end	
		--set(arc_array,zoneTable2)
		time_counter = 0
		-- TAWS display altitudes
		local elev_max=prof_max*(1+2.28084*bool2int(get(kont_dist_mode) == 1))
		local elev_min=math.max(0,prof_min*(1+2.28084*bool2int(get(kont_dist_mode) == 1)))
		local altitude_l_max_1000 = math.floor(elev_max * 0.001)
		local altitude_l_max_100 = math.floor((elev_max - altitude_l_max_1000 * 1000) * 0.2) * 5	
		
		local altitude_l_min_1000 = math.floor(elev_min * 0.001)
		local altitude_l_min_100 = math.floor((elev_min - altitude_l_min_1000 * 1000) * 0.2) * 5		
		
		set(max_m_1000,altitude_l_max_1000)
		set(max_m,altitude_l_max_100)
		set(min_m_1000,altitude_l_min_1000)
		set(min_m,altitude_l_min_100)
	end
	time_counter = time_counter + passed
end


components = {

	-- brightness controll
	-- rectangle_ctr {
		-- R = 0.1,
		-- G = 0.1,
		-- B = 0.1,
		-- A = 1,
		-- position_x = 0,
		-- position_y = 0,
		-- width = size[1],
		-- height = size[2],
		-- visible = function()
			-- return screen_work
		-- end,
	-- },

	
	side_draw {
		position = {197, 167, 800, 600},
		columns = rows,
		image_table = function()
			return heightTable
		end,
		visible = function()
			return screen_work
		end,
		range = function()
			return distance
		end,
		bright = function()
			return brightness
		end,
		v_spd = function()
			return vvi
		end,
		g_spd = function()
			return GS
		end,
		range_txt = function()
			return range_text
		end,
	},
	
	-- warning zone envelopes
	envelope_draw {
		position = {197, 167, 800, 600},
		points_line	= function ()
			return zoneTable
		end,
		points_line2 = function ()
			return zoneTable2
		end,
		bright = function()
			return brightness
		end,
		visible = function()
			return env_work
		end,
	},	
		
	
	-- scales for side view
	textureLit_alpha {
		position = {0, 0, size[1], size[2]},
		image = get(scale_side_img),
		visible = function()
			return screen_work
		end,
		alpha = function()
			return brightness
		end,
	},

}


