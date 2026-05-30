-- this is TAWS warning logic

-- sources
-- defineProperty("vvi_L", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")) -- vertical speed in ft/min
-- defineProperty("vvi_R", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_copilot"))

defineProperty("rv5_alt", globalPropertyf("tu154b2/custom/misc/rv5_alt_right"))  -- высота на левом высотомере

defineProperty("mach_svs", globalPropertyf("tu154b2/custom/svs/machno")) -- Mach number
defineProperty("alt_svs", globalPropertyf("tu154b2/custom/gauges/alt/vbe_msl")) -- Altitude by 1013 hpa

defineProperty("vbe_alt_left", globalPropertyf("tu154b2/custom/gauges/alt/vbe_alt_left"))  -- indicated altitude in meters
defineProperty("vbe_alt_right", globalPropertyf("tu154b2/custom/gauges/alt/vbe_alt_right"))  -- indicated altitude in meters

defineProperty("speed", globalPropertyf("tu154b2/custom/nvu/diss_groundspeed"))
defineProperty("course", globalPropertyf("tu154b2/custom/tks/kln_psi")) -- angle between -Z axis and airplane's nose
--defineProperty("course_fly", globalPropertyf("sim/flightmodel/position/hpath")) -- course, where aircraft actually flies
elevation = globalPropertyf("sim/flightmodel/position/elevation")
defineProperty("pos_x", globalPropertyf("sim/flightmodel/position/local_x")) -- longtitude. positive from W to E
defineProperty("pos_y", globalPropertyf("sim/flightmodel/position/local_y")) -- altitude. positive UP
defineProperty("pos_z", globalPropertyf("sim/flightmodel/position/local_z")) -- latitude. positive from N to S


gear1_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[0]")  -- deploy of front gear
gear2_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[1]")  -- deploy of right gear
gear3_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[2]")  -- deploy of left gear

defineProperty("deflection_mtr_1", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")) -- 
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 

flap_inn_L = globalPropertyf("sim/flightmodel/controls/wing1l_fla1def") -- inner flaps left
flap_inn_R = globalPropertyf("sim/flightmodel/controls/wing1r_fla1def") -- inner flaps right

anim_rud1 = globalPropertyf("tu154b2/custom/controlls/throttle_1") -- РУД 1
anim_rud2 = globalPropertyf("tu154b2/custom/controlls/throttle_2") -- РУД 2
anim_rud3 = globalPropertyf("tu154b2/custom/controlls/throttle_3") -- РУД 3

defineProperty("nav_cs", globalPropertyf("tu154b2/custom/radio/nav1_cs"))
defineProperty("nav_gs", globalPropertyf("tu154b2/custom/radio/nav1_gs"))

defineProperty("nav_cs_flag", globalPropertyi("tu154b2/custom/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag", globalPropertyi("tu154b2/custom/radio/nav1_gs_flag"))

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- controls
defineProperty("taws_english", globalPropertyi("tu154b2/custom/taws/taws_english")) -- язык системы. 0 - русский, 1 - английский	0
defineProperty("mode_set", globalPropertyi("tu154b2/custom/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения, 5 - тест

defineProperty("egpws_alarm_1", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_alarm_1")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_alarm_2")) -- сигнализация СРПБЗ закрылки
defineProperty("egpws_relief", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_relief")) -- рельеф
defineProperty("egpws_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_mode")) -- QNH - QFE

defineProperty("egpws_control", globalPropertyi("tu154b2/custom/buttons/ovhd/egpws_control")) -- кнопка контроля СРПБЗ
defineProperty("egpws_contr_gs", globalPropertyi("tu154b2/custom/buttons/ovhd/egpws_contr_gs")) -- контроль СРПБЗ глиссада

-- results
defineProperty("taws_message", globalPropertyi("tu154b2/custom/taws/taws_message")) -- 
-- 0 - none, 1 - Pull UP, 2 - alt callout, 3 - Pull Up, 4 - Terrain, 5 - Terrain Ahead, 6 - Too low, Terrain, 
-- 7 - Alt collout, 8 - Too low, Gear, 9 - Too low, Flaps, 10 - Check altitude, 11 - Sink Rate, 12 - Don't sink, 13 - Glideslope

defineProperty("taws_eng_phrase", globalPropertyi("tu154b2/custom/sounds/taws_eng_phrase")) -- номер фразы СРПБЗ на английском
defineProperty("taws_rus_phrase", globalPropertyi("tu154b2/custom/sounds/taws_rus_phrase")) -- номер фразы СРПБЗ на русском

defineProperty("taws_alt_left", globalPropertyi("tu154b2/custom/taws/taws_alt_left")) -- сравни высоту на левом высотомере
defineProperty("taws_alt_right", globalPropertyi("tu154b2/custom/taws/taws_alt_right")) -- сравни высоту на правом высотомере



defineProperty("gs_msg_int", globalPropertyf("tu154b2/custom/taws/gs_msg_int")) -- интервал сигнала ГЛИССАДА
defineProperty("gs_msg_vol", globalPropertyf("tu154b2/custom/taws/gs_msg_vol")) -- громкость сигнала ГЛИССАДА


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


dis_gear = globalPropertyi("tu154b2/custom/egpws/dis_gear")
dis_flaps = globalPropertyi("tu154b2/custom/egpws/dis_flaps")
dis_rppz = globalPropertyi("tu154b2/custom/egpws/dis_rppz") 
dis_gs = globalPropertyi("tu154b2/custom/egpws/dis_gs") 
sp_fail = globalPropertyi("tu154b2/custom/taws/sppz_fail")
rp_fail = globalPropertyi("tu154b2/custom/taws/rppz_fail")
show_taws= globalPropertyi("tu154b2/custom/anim/show_taws")
slip = globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")
elev_l_1000 = globalPropertyf("tu154b2/custom/taws/elev_1000_l")
elev_l = globalPropertyf("tu154b2/custom/taws/elev_100_l")
elev_r_1000 = globalPropertyf("tu154b2/custom/taws/elev_1000_r")
elev_r = globalPropertyf("tu154b2/custom/taws/elev_100_r")
taws_alt1_l = globalProperty("sim/cockpit2/EFIS/EFIS_terrain_altitudes[1]")
taws_alt2_l = globalProperty("sim/cockpit2/EFIS/EFIS_terrain_altitudes[0]")
taws_alt1_r = globalProperty("sim/cockpit2/EFIS/EFIS_terrain_altitudes[3]")
taws_alt2_r = globalProperty("sim/cockpit2/EFIS/EFIS_terrain_altitudes[2]")


max_l_m = globalPropertyf("tu154b2/custom/taws/max_l")
min_l_m = globalPropertyf("tu154b2/custom/taws/min_l")
max_r_m = globalPropertyf("tu154b2/custom/taws/max_r")
min_r_m = globalPropertyf("tu154b2/custom/taws/min_r")
max_l_m_1000 = globalPropertyf("tu154b2/custom/taws/max_l_1000")
min_l_m_1000 = globalPropertyf("tu154b2/custom/taws/min_l_1000")
max_r_m_1000 = globalPropertyf("tu154b2/custom/taws/max_r_1000")
min_r_m_1000 = globalPropertyf("tu154b2/custom/taws/min_r_1000")
kont_dist_mode_l = globalPropertyi("sim/custom/kontur/dist_mode_l")
kont_dist_mode_r = globalPropertyi("sim/custom/kontur/dist_mode_r")
kont_left = globalPropertyi("sim/custom/kontur/left_taws")
kont_right = globalPropertyi("sim/custom/kontur/right_taws")
phase = globalPropertyi("tu154b2/custom/taws/phase")

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

local rv_last = get(rv5_alt)
local sm_rv_vvi = 0 -- smoothed

local too_low_flaps_timer = 0

local alt_high_to = get(alt_svs)

local elev_last = get(elevation)

local mode7_counter = 0
local mode7_left_done = false
local mode7_center_done = false
local mode7_right_done = false

local res_left = 0
local res_ctr = 0
local res_right = 0

local sound_counter = 2

local flight_phase = 0
local last_flight_phase = 0

local gs_msg_counter = 7

local mode_1_2_active = false
local mode_3_active = false
local mode_4_active = false

local mode_5_active = true

local mode_7_active = false

local test_counter = 0
local alt_prev=0
local sm_vbe_vvi=0
local elev_now = 0
function update()
	local mode = get(mode_set)
	local sppz_fail=get(sp_fail)
	local rppz_fail=get(rp_fail)
	local MASTER = true --get(ismaster) ~= 1	
	if mode>0 then
		-- TAWS display altitudes
		local elev_taws=get(elevation)*(1+2.28084*bool2int(get(kont_dist_mode_l) == 1))
		local elev_max=get(taws_alt1_l)*(1-0.6952*bool2int(get(kont_dist_mode_l) == 0))
		local elev_min=get(taws_alt2_l)*(1-0.6952*bool2int(get(kont_dist_mode_l) == 0))
		local altitude_1000 = math.floor(elev_taws * 0.001)
		local altitude_100 = math.floor((elev_taws - altitude_1000 * 1000) * 0.2) * 5	
		
		local altitude_l_max_1000 = math.floor(elev_max * 0.001)
		local altitude_l_max_100 = math.floor((elev_max - altitude_l_max_1000 * 1000) * 0.2) * 5	
		
		local altitude_l_min_1000 = math.floor(elev_min * 0.001)
		local altitude_l_min_100 = math.floor((elev_min - altitude_l_min_1000 * 1000) * 0.2) * 5	
		set(elev_l_1000,altitude_1000)
		set(elev_l,altitude_100)
		if get(kont_left) == 1 then			
			set(max_l_m_1000,altitude_l_max_1000)
			set(max_l_m,altitude_l_max_100)
			set(min_l_m_1000,altitude_l_min_1000)
			set(min_l_m,altitude_l_min_100)	
		end	
		
		elev_taws=get(elevation)*(1+2.28084*bool2int(get(kont_dist_mode_r) == 1))
		elev_max=get(taws_alt1_r)*(1-0.6952*bool2int(get(kont_dist_mode_r) == 0))
		elev_min=get(taws_alt2_r)*(1-0.6952*bool2int(get(kont_dist_mode_r) == 0))
		
		altitude_1000 = math.floor(elev_taws * 0.001)
		altitude_100 = math.floor((elev_taws - altitude_1000 * 1000) * 0.2) * 5
					
		altitude_l_max_1000 = math.floor(elev_max * 0.001)
		altitude_l_max_100 = math.floor((elev_max - altitude_l_max_1000 * 1000) * 0.2) * 5	
		
		altitude_l_min_1000 = math.floor(elev_min * 0.001)
		altitude_l_min_100 = math.floor((elev_min - altitude_l_min_1000 * 1000) * 0.2) * 5	
		set(elev_r_1000,altitude_1000)
		set(elev_r,altitude_100)
		if get(kont_right) == 1 then	
			set(max_r_m_1000,altitude_l_max_1000)
			set(max_r_m,altitude_l_max_100)
			set(min_r_m_1000,altitude_l_min_1000)
			set(min_r_m,altitude_l_min_100)	
		end
	end
	
	if mode > 0 and mode < 4 and get(show_taws)==1 then
		elev_now = get(elevation)
		local passed = get(frame_time)

		-- define sources
		local baro_alt = get(alt_svs)
		
		local rv_alt = get(rv5_alt)
		
		local vvi_rv = 0
		local baro_vvi = 0
		if passed ~= 0 then 
			vvi_rv = (rv_alt - rv_last) / passed 
			baro_vvi = (baro_alt- alt_prev) / passed
		end
		
		rv_last = rv_alt
		alt_prev = baro_alt
		sm_rv_vvi = sm_rv_vvi + (vvi_rv - sm_rv_vvi) * passed * 0.5	
		sm_vbe_vvi = sm_vbe_vvi + (baro_vvi - sm_vbe_vvi) * passed * 0.5			
		
		local mach = get(mach_svs)
		
		local gears = get(gear1_deploy) > 0.98 and get(gear2_deploy) > 0.98 and get(gear3_deploy) > 0.98
		
		local flaps = (get(flap_inn_L) > 35 and get(flap_inn_R) > 35)
		
		local flaps_warn = get(egpws_alarm_2) == 1
		
		local takeoff = false -- temp
		
		local GSlope = get(nav_gs)
		local GSflag = get(nav_gs_flag)
		
		
		--print(sm_rv_vvi)
		
		-- calculate flight phase
		local gear_touch = get(deflection_mtr_2) > 0.05 or get(deflection_mtr_3) > 0.05
		local eng_TO = (bool2int(get(anim_rud1) > 0.77) + bool2int(get(anim_rud2)  > 0.77) + bool2int(get(anim_rud3) > 0.77)) >1
		
		
		if gear_touch then 
			flight_phase = 0  -- on ground
		elseif gears and eng_TO and not gear_touch and rv_alt < 500 and last_flight_phase == 0 then 
			flight_phase = 1 -- take off
		elseif not gears and rv_alt >= 500 then 
			flight_phase = 2  -- cruise flight
		elseif (gears or flaps) and rv_alt > 500 then 
			flight_phase = 3  -- flight near airport
		elseif gears and flaps and rv_alt <= 500 then 
			flight_phase = 4  -- approach
		elseif last_flight_phase == 4 and eng_TO then 
			flight_phase = 5 -- go around
		end
		set(phase,flight_phase)
		last_flight_phase = flight_phase
		
		
		-- activate and deactivate some modes
		if not gear_touch and rv_alt > 30 then mode_1_2_active = true
		elseif gear_touch then mode_1_2_active = false end
		
		mode_3_active = (flight_phase == 1 and rv_alt >= 30 and rv_alt <= 350) or (flight_phase == 5 and rv_alt >= 15 and rv_alt <= 350)

		mode_4_active = flight_phase ~= 0 and flight_phase ~= 1 and flight_phase ~= 5
		
		if get(egpws_contr_gs) == 1 then mode_5_active = false end
		if not gears or gear_touch then mode_5_active = true end
		
		
		if rv_alt > 130 then mode_7_active = true end
		if (gears and flaps and rv_alt < 130) or get(egpws_relief) == 0 or gear_touch or (math.abs(GSlope) < 0.7 and GSflag == 0) then mode_7_active = false end
		
		
		
		-- mode 1 - sink rate
		local mode_1_res = 0
		

		if rv_alt <= 750 and rv_alt >= 15 and mode_1_2_active and sppz_fail==0 then
			if -sm_rv_vvi > line(rv_alt, 15, 6.3, 750, 36) then mode_1_res = 2 -- pull up
			elseif -sm_rv_vvi > line(rv_alt, 15, 5.1, 750, 25) then mode_1_res = 1 -- sink rate
			end
		end
		
		
		-- mode 2A - sink rate with flaps not fully extend
		local mode_2A_res = 0
		
		local mode_2A_high_edge = 500
		
		if mach >= 0.45 then mode_2A_high_edge = 750
		elseif mach > 0.35 then mode_2A_high_edge = line(mach, 0.35, 500, 0.45, 750)
		end
		
		if rv_alt <= mode_2A_high_edge and rv_alt >= 15 and not flaps and mode_1_2_active then
			if -sm_rv_vvi > line(rv_alt, 15, 10.4, 750, 26) then too_low_flaps_timer = too_low_flaps_timer + passed 
			else too_low_flaps_timer = 0
			end 
			
		else
			too_low_flaps_timer = 0		
		end
		
		if too_low_flaps_timer > 2 and sppz_fail==0 then mode_2A_res = 2
		elseif too_low_flaps_timer > 0.1 then mode_2A_res = 1
		end
		

		
		
		-- mode 2B - sink rate with flaps full
		local mode_2B_res = 0
		
		local mode_2B_edge = 60
		if -baro_vvi >= 5 then mode_2B_edge = 180
		elseif -baro_vvi > 2 then mode_2B_edge = line(-baro_vvi, 2, 60, 5, 180)
		end
		
		
		
		if rv_alt <= 250 and rv_alt >= mode_2B_edge and flaps and mode_1_2_active and sppz_fail==0 then
			if -sm_rv_vvi > line(rv_alt, 60, 11.4, 250, 15.4) then 
				if gears then mode_2B_res = 1 -- pull up
				else mode_2B_res = 2 end
			end
		end
		

		
		
		-- mode 3A - sink rate after take off
		local mode_3A_res = 0
		
		if mode_3_active and sppz_fail==0 then
			if -baro_vvi > line(rv_alt, 15, 0.5, 350, 4) then mode_3A_res = 1 end
		end
		

		
		
		-- mode 3B - altitude loss after take off
		local mode_3B_res = 0
		
		-- if baro_alt > alt_high_to and mode_3_active then 
			-- alt_high_to = baro_alt 
		-- else 
			-- alt_high_to = 0
		-- end
		
		-- if mode_3_active then
			-- if alt_high_to - baro_alt > line(rv_alt, 15, 3, 350, 32.2) then 
				-- mode_3B_res = 1 
			-- end
		-- end
		

		
		
		-- mode 4A - to low with not landing config
		local mode_4A_res = 0
		
		if not gears and mode_4_active and sppz_fail==0 then
			if mach <= 0.35 and rv_alt <= 150 and rv_alt >= 15 then mode_4A_res = 1
			elseif mach >= 0.45 and rv_alt <= 300 and rv_alt >=15 then mode_4A_res = 2
			elseif mach > 0.35 and mach < 0.45 and rv_alt >= 15 and rv_alt < line(mach, 0.35, 150, 0.45, 300) then mode_4A_res = 2
			end
		end
		

		
		
		-- mode 4B - too low with not landing config
		local mode_4B_res = 0
		
		if gears and not flaps and mode_4_active and sppz_fail==0 then
			if mach <= 0.317 and rv_alt <= 60 and rv_alt >= 15 then mode_4B_res = 1
			elseif mach >= 0.45 and rv_alt <= 300 and rv_alt >=15 then mode_4B_res = 2
			elseif mach > 0.317 and mach < 0.45 and rv_alt >= 15 and rv_alt < line(mach, 0.317, 60, 0.45, 300) then mode_4B_res = 2
			end
		end
		

		
		-- mode 4C - too low with not full flaps
		
		
		
		
		
		
		
		
		
		
		
		-- mode 5 - too low from glideslope
		local mode_5_res = 0
		
		local gs_interval = 7
		local gs_vol = 1
		
		if rv_alt <= 300 and rv_alt > 150 and GSlope < -120/250 and gears and mode_5_active and sppz_fail==0 and flight_phase ~= 5 then 
			mode_5_res = 1 
			gs_vol = 0.5 
			gs_interval = 1.875 * rv_alt / (GSlope * 250)
		elseif rv_alt <= 150 and rv_alt >= 60 and GSlope < -120/250 and gears and mode_5_active and sppz_fail==0 and flight_phase ~= 5 then 
			mode_5_res = 1 
			gs_vol = 1
			gs_interval = 1.875 * rv_alt / (GSlope * 250)
		elseif rv_alt >= 30 and rv_alt < 60 and GSlope < line(rv_alt, 30, -200/250, 60, -120/250) and gears and mode_5_active and sppz_fail==0 and flight_phase ~= 5 then 
			mode_5_res = 1 
			gs_vol = 1
			gs_interval = 112.5 / (GSlope * 250)
		end
		
		gs_interval = math.max(gs_interval, 0.8)
		--set(gs_msg_int, math.max(gs_interval, 0.8))
		set(gs_msg_vol, gs_vol)
		

		
	
	
		-- mode 6 - altitude diference
		local mode_6_res = 0
		local qfe = get(egpws_mode) == 1
		
		local alt_L = get(vbe_alt_left)
		local alt_R = get(vbe_alt_right)
	
		if rv_alt >= 15 and rv_alt <= 250 and alt_L > line(rv_alt, 15, 70, 250, 595) and qfe and gears and sppz_fail==0 then 
			mode_6_res = 1 
			set(taws_alt_left, 1)
		else set(taws_alt_left, 0)
		end
	
		if rv_alt >= 15 and rv_alt <= 250 and alt_R > line(rv_alt, 15, 70, 250, 595) and qfe and gears and sppz_fail==0 then 
			mode_6_res = 1 
			set(taws_alt_right, 1)
		else set(taws_alt_right, 0)
		end
		

		
		
		
		
		
		
		-- mode 7 - terrain ahead
		local mode_7_res = 0
		local rows = 30 -- amount of probes
	
		local gps_vvi = 0
		if passed ~= 0 then gps_vvi = (elev_now - elev_last) / passed end
		elev_last = elev_now
		
		local height_lim = 30 
		if flight_phase == 2 and gps_vvi >= -2 then height_lim = 215
		elseif flight_phase == 2 and gps_vvi < -2 then height_lim = 150
		elseif flight_phase == 3 and gps_vvi >= -2 then height_lim = 105
		elseif flight_phase == 3 and gps_vvi < -2 then height_lim = 90
		elseif flight_phase == 4 and gps_vvi >= -2 then height_lim = 50
		elseif flight_phase == 4 and gps_vvi < -2 then height_lim = 30
		end
		
		mode7_counter = mode7_counter + passed

		local dir = math.rad(get(course)+get(slip))
		local GS = get(speed)/3.6
		
		--if GS > 11 then dir = math.rad(get(course_fly)) end
		if GS < 1 then GS = 0 end
		
		local plane_x = get(pos_x)
		local plane_y = get(pos_y)
		local plane_z = get(pos_z)
			
		local acf_lat, acf_lon, acf_alt = localToWorld(plane_x, plane_y, plane_z)
		
		local max_dist = GS * 60 -- distance of forecast
		
		-- calculate zones points
		local y_0 = -height_lim 
		local y_1 = y_0 + gps_vvi * 15 * 1.1
		local y_2 = y_1 + gps_vvi * 15
		local y_3 = gps_vvi * 30
		local y_4 = y_3 + GS * 20 * math.sin(math.rad(6))
		
		local y_5 = y_0 + gps_vvi * 35 * 1.1
		local y_6 = gps_vvi * 45
		local y_7 = y_6 + GS * 15 * math.sin(math.rad(6))
		
		local x_1 = GS * 15
		local x_3 = GS * 30
		local x_4 = GS * 50
		local x_5 = GS * 35
		local x_6 = GS * 45
		local x_7 = GS * 60
		
	--	test_counter = test_counter + 1
	--	print(mode7_counter, "  ", mode7_left_done, "  ", mode7_center_done, "  ", mode7_right_done)
			
		if mode7_counter < 0.3 and mode7_counter > 0.25 and not mode7_left_done and mode_7_active then -- left vector
			
			--mode7_left_done = false
			mode7_center_done = false
			mode7_right_done = false
			
			
			
			dir = math.rad(get(course)+get(slip) - 3)
			
			--if GS > 11 then dir = math.rad(get(course_fly) - 3) end
			
			
			
			local dir_x = math.sin(dir); -- direct vector
			local dir_z = -math.cos(dir);
			
			local right_x = -dir_z; -- vector to the right
			local right_z = dir_x;
			
			
			for row = 1, rows, 1 do

				
				
				
				local dist = max_dist * row/rows
				

				
				local p_x = plane_x + dir_x * dist - right_x * 250
				local p_z = plane_z + dir_z * dist - right_z * 250
				
				local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(p_x, plane_y, p_z)		
				local gnd_alt = -acf_alt
				if locationX and  locationY and locationZ then
					local lat, lon, alt = sasl.localToWorld(locationX, locationY, locationZ)
					gnd_alt = alt - acf_alt
				end
				

				-- calculate threat zone 2
				if dist < x_1 then
					if gnd_alt > line(dist, 0, y_0, x_1, y_1) then res_left = 2 break end
				elseif dist < x_3 then
					if gnd_alt > line(dist, x_1, y_1, x_3, y_2) then res_left = 2 break end
				elseif dist < x_4 then
					if gnd_alt > line(dist, x_3, y_3, x_4, y_4) then res_left = 2 break end
				end

				if dist < x_5 then
					if gnd_alt > line(dist, 0, y_0, x_5, y_5) then res_left = 1 break end
				elseif dist < x_6 then
					if gnd_alt > y_5 then res_left = 1 break end
				elseif dist < x_7 then
					if gnd_alt > line(dist, x_6, y_6, x_7, y_7) then res_left = 1 break end
				else res_left = 0 
				
				end

			end	
			

			
			mode7_left_done = true
			
		elseif mode7_counter < 0.6 and mode7_counter > 0.55 and not mode7_center_done and mode_7_active then

			
			mode7_left_done = false
			--mode7_center_done = false
			mode7_right_done = false
			
			dir = math.rad(get(course)+get(slip))
			
			--if GS > 11 then dir = math.rad(get(course_fly)) end
			
			
			
			local dir_x = math.sin(dir); -- direct vector
			local dir_z = -math.cos(dir);
			
			local right_x = -dir_z; -- vector to the right
			local right_z = dir_x;
			
			
			for row = 1, rows, 1 do

				
				
				
				local dist = max_dist * row/rows
				

				
				local p_x = plane_x + dir_x * dist
				local p_z = plane_z + dir_z * dist
				
				local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(p_x, plane_y, p_z)				
				local gnd_alt = -acf_alt
				if locationX and  locationY and locationZ then
					local lat, lon, alt = sasl.localToWorld(locationX, locationY, locationZ)
					gnd_alt = alt - acf_alt
				end

				-- calculate threat zone 2
				if dist < x_1 then
					if gnd_alt > line(dist, 0, y_0, x_1, y_1) then res_ctr = 2 break end
					
				elseif dist < x_3 then
					if gnd_alt > line(dist, x_1, y_1, x_3, y_2) then res_ctr = 2 break end
					
				elseif dist < x_4 then
					if gnd_alt > line(dist, x_3, y_3, x_4, y_4) then res_ctr = 2 break end
					
				end

				if dist < x_5 then
					if gnd_alt > line(dist, 0, y_0, x_5, y_5) then res_ctr = 1 break end
				elseif dist < x_6 then
					if gnd_alt > y_5 then res_ctr = 1 break end
				elseif dist < x_7 then
					if gnd_alt > line(dist, x_6, y_6, x_7, y_7) then res_ctr = 1 break end
				else res_ctr = 0 
				
				end
				--print("mode 7  ", res_ctr, "  ")
				
				
				
			end				
			
			mode7_center_done = true
			
		elseif mode7_counter < 0.9 and mode7_counter > 0.85 and not mode7_right_done and mode_7_active then

			
			mode7_left_done = false
			mode7_center_done = false
			--mode7_right_done = false
			
			dir = math.rad(get(course)+get(slip) + 3)
			
			--if GS > 11 then dir = math.rad(get(course_fly) + 3) end
			
			
			
			local dir_x = math.sin(dir); -- direct vector
			local dir_z = -math.cos(dir);
			
			local right_x = -dir_z; -- vector to the right
			local right_z = dir_x;
			
			
			for row = 1, rows, 1 do

				
				
				
				local dist = max_dist * row/rows
				

				
				local p_x = plane_x + dir_x * dist + right_x * 250
				local p_z = plane_z + dir_z * dist + right_z * 250
				
				local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(p_x, plane_y, p_z)
				local gnd_alt =-acf_alt
				if locationX and  locationY and locationZ then
					local lat, lon, alt = sasl.localToWorld(locationX, locationY, locationZ)
					gnd_alt = alt - acf_alt
				end
				
				

				-- calculate threat zone 2
				if dist < x_1 then
					if gnd_alt > line(dist, 0, y_0, x_1, y_1) then res_right = 2 break end
				elseif dist < x_3 then
					if gnd_alt > line(dist, x_1, y_1, x_3, y_2) then res_right = 2 break end
				elseif dist < x_4 then
					if gnd_alt > line(dist, x_3, y_3, x_4, y_4) then res_right = 2 break end
				end

				if dist < x_5 then
					if gnd_alt > line(dist, 0, y_0, x_5, y_5) then res_right = 1 break end
				elseif dist < x_6 then
					if gnd_alt > y_5 then res_right = 1 break end
				elseif dist < x_7 then
					if gnd_alt > line(dist, x_6, y_6, x_7, y_7) then res_right = 1 break end
				else res_right = 0 
				
				end

			end				
			
			
			mode7_right_done = true
			mode7_counter = 0
		end
		
		if not mode_7_active then
			res_left = 0
			res_ctr = 0
			res_right = 0
		end
		
		if mode7_counter > 1 then mode7_counter = 0 end
		if rppz_fail==0 then
			mode_7_res = math.max(res_left, res_ctr, res_right)
		end
		
		

		
		--set(taws_english, 0)
		
		
		-- set final message according to priorities
		local eng = get(taws_english)
		local alarm = get(egpws_alarm_1)
		--set(db4,mode_7_res)
		
		if (mode_1_res == 2 or mode_2A_res == 2 or mode_2B_res == 2 or mode_7_res == 2) and sound_counter < 0 and MASTER and get(dis_rppz) < 1 then -- pull up
			set(taws_message, 1)
			set(taws_rus_phrase, 14 * (1 - eng) * alarm)
			set(taws_eng_phrase, 14 * eng * alarm)
			sound_counter = 1.5
		elseif baro_vvi < 0 and rv_alt > 4.8 and rv_alt < 5.2 and sound_counter < 0 and MASTER then -- altitude callout 5m
			set(taws_rus_phrase, 1 * (1 - eng))
			--set(taws_eng_phrase, 1 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 9.8 and rv_alt < 10.2 and sound_counter < 0 and MASTER then -- altitude callout 10m
			set(taws_rus_phrase, 2 * (1 - eng))
			--set(taws_eng_phrase, 2 * eng)	
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 14.8 and rv_alt < 15.2 and sound_counter < 0 and eng == 0 and MASTER then -- altitude callout 15m
			set(taws_rus_phrase, 3 * (1 - eng))
			--set(taws_eng_phrase, 3 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 19.8 and rv_alt < 20.2 and sound_counter < 0 and MASTER then -- altitude callout 20m
			set(taws_rus_phrase, 4 * (1 - eng))
			--set(taws_eng_phrase, 4 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 24.8 and rv_alt < 25.2 and sound_counter < 0 and sound_counter < 0 and MASTER then -- altitude callout 25m
			set(taws_rus_phrase, 5 * (1 - eng))
			--set(taws_eng_phrase, 5 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 29.8 and rv_alt < 30.2 and sound_counter < 0 and MASTER then -- altitude callout 30m
			set(taws_rus_phrase, 6 * (1 - eng))
			--set(taws_eng_phrase, 6 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 39.8 and rv_alt < 40.2 and sound_counter < 0 and MASTER then -- altitude callout 40m
			set(taws_rus_phrase, 7 * (1 - eng))
			--set(taws_eng_phrase, 7 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 49.8 and rv_alt < 50.2 and sound_counter < 0 and MASTER then -- altitude callout 50m
			set(taws_rus_phrase, 8 * (1 - eng))
			--set(taws_eng_phrase, 8 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 59.8 and rv_alt < 60.2 and eng == 0 and sound_counter < 0 and MASTER then -- altitude callout 60m
			set(taws_rus_phrase, 9 * (1 - eng))
			--set(taws_eng_phrase, 9 * eng)
			sound_counter = 1
			
		elseif baro_vvi < 0 and rv_alt > 15 and rv_alt < 15.45 and sound_counter < 0 and MASTER then -- altitude callout 50ft
			--set(taws_rus_phrase, 9 * (1 - eng))
			set(taws_eng_phrase, 1 * eng)
			sound_counter = 1	
					
		elseif (mode_2A_res == 1 or mode_2B_res == 1) and sound_counter <= 0 and MASTER and get(dis_rppz) < 1 then -- terrain
			set(taws_message, 4)
			set(taws_rus_phrase, 16 * (1 - eng) * alarm)
			set(taws_eng_phrase, 16 * eng * alarm)
			sound_counter = 2
		elseif mode_7_res == 1 and sound_counter <= 0 and MASTER and get(dis_rppz) < 1 then -- terrain ahead
			set(taws_message, 5)
			set(taws_rus_phrase, 17 * (1 - eng) * alarm)
			set(taws_eng_phrase, 17 * eng * alarm)
			sound_counter = 2
		elseif (mode_4A_res == 2 or mode_4B_res == 2) and sound_counter <= 0 and MASTER and get(dis_rppz) < 1 then -- too low terrain
			set(taws_message, 6)
			set(taws_rus_phrase, 20 * (1 - eng) * alarm)
			set(taws_eng_phrase, 20 * eng * alarm)
			sound_counter = 2
		elseif baro_vvi < 0 and rv_alt > 149.8 and rv_alt < 150.2 and eng == 0 and sound_counter <= 0 and MASTER then -- altitude callout 150m
			set(taws_rus_phrase, 10 * (1 - eng))
			--set(taws_eng_phrase, 10 * eng)
			sound_counter = 2
		elseif baro_vvi < 0 and rv_alt > 60.7 and rv_alt < 61.1 and sound_counter <= 0 and MASTER then -- altitude callout 200ft
			--set(taws_rus_phrase, 10 * (1 - eng))
			set(taws_eng_phrase, 2 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 152 and rv_alt < 153 and sound_counter <= 0 and MASTER then -- altitude callout 500ft
			--set(taws_rus_phrase, 10 * (1 - eng))
			set(taws_eng_phrase, 3 * eng)
			sound_counter = 1
		elseif baro_vvi < 0 and rv_alt > 304 and rv_alt < 306 and sound_counter <= 0 and MASTER then -- altitude callout 1000ft
			--set(taws_rus_phrase, 10 * (1 - eng))
			set(taws_eng_phrase, 4 * eng)
			sound_counter = 2
		elseif mode_4A_res == 1 and sound_counter <= 0 and MASTER and get(dis_gear) < 1 then -- too low gear
			set(taws_message, 8)
			set(taws_rus_phrase, 19 * (1 - eng) * alarm)
			set(taws_eng_phrase, 19 * eng * alarm)
			sound_counter = 3
		elseif mode_4B_res == 1 and sound_counter <= 0 and flaps_warn and MASTER and get(dis_flaps) < 1 then -- too low flaps
			set(taws_message, 9)
			set(taws_rus_phrase, 18 * (1 - eng) * alarm)
			set(taws_eng_phrase, 18 * eng * alarm)
			sound_counter = 3
		elseif mode_6_res == 1 and sound_counter <= 0 and MASTER then -- check alt
			set(taws_message, 10)
			set(taws_rus_phrase, 11 * (1 - eng) * alarm)
			set(taws_eng_phrase, 11 * eng * alarm)
			sound_counter = 2
		elseif mode_1_res == 1 and sound_counter <= 0 and MASTER and get(dis_rppz) < 1 then -- sink rate
			set(taws_message, 11)
			set(taws_rus_phrase, 15 * (1 - eng) * alarm)
			set(taws_eng_phrase, 15 * eng * alarm)
			sound_counter = 2
		elseif (mode_3A_res == 1 or mode_3B_res == 1) and sound_counter <= 0 and MASTER and get(dis_rppz) < 1 then -- don't sink
			set(taws_message, 12)
			set(taws_rus_phrase, 12 * (1 - eng) * alarm)
			set(taws_eng_phrase, 12 * eng * alarm)
			sound_counter = 2.5
		elseif mode_5_res == 1 and get(dis_gs) < 1 and sound_counter <= 0 and MASTER then -- glideslope
			set(taws_message, 13)
			set(taws_rus_phrase, 13 * (1 - eng) * alarm)
			set(taws_eng_phrase, 13 * eng * alarm)
			sound_counter = 2
		elseif sound_counter <= 0 and MASTER then
			set(taws_message, 0)
			set(taws_rus_phrase, 0)
			set(taws_eng_phrase, 0)
		end
		
		sound_counter = sound_counter - passed
	elseif mode == 0 or mode == 4 and MASTER then
		set(taws_message, 0)
		set(taws_rus_phrase, 0)
		set(taws_eng_phrase, 0)
		set(taws_alt_left, 0)
		set(taws_alt_right, 0)
		
	end		
end