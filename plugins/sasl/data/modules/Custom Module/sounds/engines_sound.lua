-- this is engines sounds

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment


-- engines
defineProperty("eng1_N1_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- engine 1 rpm
defineProperty("eng2_N1_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- engine 2 rpm
defineProperty("eng3_N1_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- engine 3 rpm

defineProperty("eng1_N1", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd1"))
defineProperty("eng2_N1", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd2"))
defineProperty("eng3_N1", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd3"))


defineProperty("apd_working_1", globalPropertyf("tu154b2/custom/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154b2/custom/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154b2/custom/start/apd_working_3")) -- работа системы запуска


defineProperty("eng_working_1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("eng_working_2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("eng_working_3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))


defineProperty("apu_n1", globalPropertyf("tu154b2/custom/eng/apu_n1")) -- обороты ВСУ

-- camera position
defineProperty("cam_HDG", globalPropertyf("sim/graphics/view/view_heading")) -- CW from true north
defineProperty("cam_X", globalPropertyf("sim/graphics/view/view_x")) -- The location of the camera, X coordinate (OpenGL)
defineProperty("cam_Y", globalPropertyf("sim/graphics/view/view_y")) -- The location of the camera, Y coordinate (OpenGL)
defineProperty("cam_Z", globalPropertyf("sim/graphics/view/view_z")) -- The location of the camera, Z coordinate (OpenGL)


-- pilot head
defineProperty("pilot_hdg", globalPropertyf("sim/graphics/view/pilots_head_psi")) -- CW from forward in cockpit
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX")) -- Position of pilot's head relative to CG
defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY")) -- Position of pilot's head relative to CG
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG


-- acf position
defineProperty("acf_hdg", globalPropertyf("sim/flightmodel/position/psi")) -- degrees	The true heading of the aircraft in degrees from the Z axis - OpenGL coordinates
defineProperty("acf_X", globalPropertyf("sim/flightmodel/position/local_x")) -- The location of the plane in OpenGL coordinates
defineProperty("acf_Y", globalPropertyf("sim/flightmodel/position/local_y")) -- The location of the plane in OpenGL coordinates
defineProperty("acf_Z", globalPropertyf("sim/flightmodel/position/local_z")) -- The location of the plane in OpenGL coordinates

defineProperty("cockpit_window_left", globalPropertyf("tu154b2/custom/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154b2/custom/anim/cockpit_window_right")) -- открытие форточки

defineProperty("pax_door_1", globalPropertyf("tu154b2/custom/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154b2/custom/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154b2/custom/anim/pax_door_3")) -- положение правых аварийных дверей

defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door")) -- положение правых аварийных дверей


defineProperty("eng_main_vol", globalPropertyf("sim/operation/sound/engine_volume_ratio")) -- регулятор громкости для двигателей
defineProperty("main_sound_on", globalPropertyi("sim/operation/sound/sound_on")) -- выключатель звука

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine
thrust_L = globalPropertyf("tu154b2/custom/SC/thrust_1")
thrust_M = globalPropertyf("tu154b2/custom/SC/thrust_2")
thrust_R = globalPropertyf("tu154b2/custom/SC/thrust_3")
-- deice


defineProperty("deice_started", globalPropertyi("tu154b2/custom/anim/deice2")) 
defineProperty("mil_tech", globalPropertyi("sim/custom/t154cfg/hide_mil")) 
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))


local deice_out_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/deice_out_L.wav')
local deice_out_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/deice_out_R.wav')


-- sounds files
local inn_middle_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_middle_left.wav')
local inn_middle_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_middle_right.wav')
local inn_starter_left_new_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_left_new.wav')
local inn_starter_right_new_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_right_new.wav')
local out_behind_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_behind_left.wav')
local out_behind_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_behind_right.wav')
local out_idle_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_idle_left.wav')
local out_idle_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_idle_right.wav')
local out_starter_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_left_new.wav')
local out_starter_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_right_new.wav')

local inn_middle_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_middle_left.wav')
local inn_middle_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_middle_right.wav')
local inn_starter_left_new_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_left_new.wav')
local inn_starter_right_new_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_right_new.wav')
local out_behind_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_behind_left.wav')
local out_behind_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_behind_right.wav')
local out_idle_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_idle_left.wav')
local out_idle_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_idle_right.wav')
local out_starter_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_left_new.wav')
local out_starter_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_right_new.wav')

local inn_middle_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_middle_left.wav')
local inn_middle_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_middle_right.wav')
local inn_starter_left_new_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_left_new.wav')
local inn_starter_right_new_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_right_new.wav')
local out_behind_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_behind_left.wav')
local out_behind_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_behind_right.wav')
local out_idle_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_idle_left.wav')
local out_idle_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_idle_right.wav')
local out_starter_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_left_new.wav')
local out_starter_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_right_new.wav')

local inn_apu_left = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_apu_left.wav')
local inn_apu_right = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_apu_right.wav')
local out_apu_left = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_apu_left.wav')
local out_apu_right = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_apu_right.wav')

local out_reverse_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_reverse_left.wav')
local out_reverse_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_reverse_right.wav')
local inn_reverse = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_reverse.wav')

-- play all sounds
playSample(inn_middle_left_1, true)
playSample(inn_middle_right_1, true)
playSample(out_behind_left_1, true)
playSample(out_behind_right_1, true)
playSample(out_idle_left_1, true)
playSample(out_idle_right_1, true)

playSample(inn_middle_left_2, true)
playSample(inn_middle_right_2, true)
playSample(out_behind_left_2, true)
playSample(out_behind_right_2, true)
playSample(out_idle_left_2, true)
playSample(out_idle_right_2, true)

playSample(inn_middle_left_3, true)
playSample(inn_middle_right_3, true)
playSample(out_behind_left_3, true)
playSample(out_behind_right_3, true)
playSample(out_idle_left_3, true)
playSample(out_idle_right_3, true)

playSample(inn_apu_left, true)
playSample(inn_apu_right, true)
playSample(out_apu_left, true)
playSample(out_apu_right, true)


playSample(inn_reverse, true)
playSample(out_reverse_L, true)
playSample(out_reverse_R, true)
		
setSampleGain(out_behind_left_1, 0)
setSampleGain(out_behind_right_1, 0)
setSampleGain(out_idle_left_1, 0)
setSampleGain(out_idle_right_1, 0)
setSampleGain(out_starter_left_1, 0)
setSampleGain(out_starter_right_1, 0)
		
setSampleGain(out_behind_left_2, 0)
setSampleGain(out_behind_right_2, 0)
setSampleGain(out_idle_left_2, 0)
setSampleGain(out_idle_right_2, 0)
setSampleGain(out_starter_left_2, 0)
setSampleGain(out_starter_right_2, 0)
		
setSampleGain(out_behind_left_3, 0)
setSampleGain(out_behind_right_3, 0)
setSampleGain(out_idle_left_3, 0)
setSampleGain(out_idle_right_3, 0)
setSampleGain(out_starter_left_3, 0)
setSampleGain(out_starter_right_3, 0)
		
setSampleGain(inn_middle_left_1, 0)
setSampleGain(inn_middle_right_1, 0)
setSampleGain(inn_starter_left_new_1, 0)
setSampleGain(inn_starter_right_new_1, 0)
	
setSampleGain(inn_middle_left_2, 0)
setSampleGain(inn_middle_right_2, 0)
setSampleGain(inn_starter_left_new_2, 0)
setSampleGain(inn_starter_right_new_2, 0)
		
setSampleGain(inn_middle_left_3, 0)
setSampleGain(inn_middle_right_3, 0)
setSampleGain(inn_starter_left_new_3, 0)
setSampleGain(inn_starter_right_new_3, 0)		
		
setSampleGain(inn_apu_left, 0)
setSampleGain(inn_apu_right, 0)
setSampleGain(out_apu_left, 0)
setSampleGain(out_apu_right, 0)

setSampleGain(inn_reverse, 0)
setSampleGain(out_reverse_L, 0)
setSampleGain(out_reverse_R, 0)


local rpm2gain_tbl = {
{0, 0},
--{10, 0.2},
{50, 0.7},
{100, 1},
{10000, 1}
}
local rpm2gain_tbl2 = {
{0, 0},
--{10, 0.2},
{50, 0.7},
{70, 0.8},
{95, 0},
{10000, 0.25}
}

local out_pitch_tbl = 
{
{0, 200},
{5, 400},
{55.5, 860},
{71, 1000},
{100, 1500},
{10000, 1}
}

local inn_pitch_tbl = 
{
{0, 200},
{5, 400},
{70, 1000},
{100, 2300},
{10000, 1}
}

local rpm_corr_tbl=
{
{0, 0},
{55, 73},
{97, 100},
{10000, 100}
}

local cam_hd = get(cam_HDG)
local acf_hd = get(acf_hdg)

local cam_x = get(cam_X)
local cam_y = get(cam_Y)
local cam_z = get(cam_Z)
	
local acf_x = get(acf_X)
local acf_y = get(acf_Y)
local acf_z = get(acf_Z)


local function out_balance (src_x, src_z, src_hdg, src_cone, fade_deg, fade_dist)


	-- need to calculate the world location of the sound source
	local hdg_rad = math.rad(acf_hd)
	local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	
	
	local angle2source = cam_hd + math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) -- angle from camera to the source
	
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	
	local angle2cam = math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) + acf_hd + src_hdg - 180 -- angle from source to camera
	
	while angle2cam > 180 do angle2cam = angle2cam - 360 end
	while angle2cam < -180 do angle2cam = angle2cam + 360 end
	
	local dist = math.sqrt(math.pow(x_s - cam_x, 2) + math.pow(z_s - cam_z, 2) + math.pow(cam_y - acf_y, 2))
	
	if dist < 1 then dist = 1 end
	
	local dist_coef = fade_dist / dist ^ 1.6
	if dist_coef > 1.5 then dist_coef = 1.5 end
	
	local cone_angle = math.abs(angle2cam)
	
	while cone_angle > 180 do cone_angle = cone_angle - 360 end
	--while cone_angle < 0 do cone_angle = cone_angle + 180 end
	
	local cone_coef = 1
	
	if cone_angle > src_cone then
		cone_coef = math.max(1 - (cone_angle - src_cone) / (fade_deg), 0)
	end
	
	--print(cone_angle)
	
	
	
	if cone_coef > 1 then cone_coef = 1 end
	
	
	

	local ch_L = (0.05 + (1 + math.sin(math.rad(angle2source))) * 0.7) * dist_coef * cone_coef
	local ch_R = (0.05 + (1 + math.sin(math.rad(-angle2source))) * 0.7) * dist_coef * cone_coef
	
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end
	
	
	
	
	return ch_L, ch_R
end


local function inn_balance (cam_hdg, dist)

	
	local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end

local function inn_balance2 (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.8/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) ) 
	local ch_R = (0.8/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end

	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end


local starter_1_last = get(apd_working_1)
local starter_2_last = get(apd_working_2)
local starter_3_last = get(apd_working_3)



local cam_dist_last = 0
local deice_coef = 0
--local refuel_coef = 0



function update()

    local external = 0
    if get(deice_started) > 0 and get(deice_started) < 1.1 then
        deice_coef = get(deice_started)
    end
    
    
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.55 or get(vr_outside)==1 then
	   external = 1
    end
    
	local passed = get(frame_time)
	
	local main_vol = get(eng_main_vol)
	
	local rpm_1 = get(eng1_N1_2)
	local rpm_2 = get(eng2_N1_2)
	local rpm_3 = get(eng3_N1_2)
	
	local rpm_1_2 = get(eng1_N1_2)
	local rpm_2_2 = get(eng2_N1_2)
	local rpm_3_2 = get(eng3_N1_2)
	rpm_1_2 = interpolate(rpm_corr_tbl,rpm_1_2)
	rpm_2_2 = interpolate(rpm_corr_tbl,rpm_2_2)
	rpm_3_2 = interpolate(rpm_corr_tbl,rpm_3_2)
	
	local work_1 = get(eng_working_1)
	local work_2 = get(eng_working_2)
	local work_3 = get(eng_working_3)
	
	local apu_rpm = get(apu_n1)
	
	local cpt_door2 = get(cockpit_door)
	
	-- define localtions
	cam_hd = get(cam_HDG)
	acf_hd = get(acf_hdg)
	
	cam_x = get(cam_X)
	cam_y = get(cam_Y)
	cam_z = get(cam_Z)
	
	acf_x = get(acf_X)
	acf_y = get(acf_Y)
	acf_z = get(acf_Z)
	
	
	
	-- set pitch for engines sounds
	local inn_ptch_1 = interpolate(inn_pitch_tbl, rpm_1)
	local inn_ptch_2 = interpolate(inn_pitch_tbl, rpm_2)
	local inn_ptch_3 = interpolate(inn_pitch_tbl, rpm_3)
	
	local apu_snd_pitch = 1100 * math.abs(apu_rpm * 0.01) ^ 0.2
	
	-- doppler coef
	local cam_dist = math.sqrt(math.pow(acf_x - cam_x, 2) + math.pow(acf_z - cam_z, 2) + math.pow(cam_y - acf_y, 2))
	
	local cam_spd = 0
	if passed > 0 then
		cam_spd = -(cam_dist - cam_dist_last) / passed -- m/s
	end
	
	cam_dist_last = cam_dist
	
	local dopp = cam_spd * 0.8
	if dopp > 300 then dopp = 300
	elseif dopp < -200 then dopp = -200 end
	
        
        
	setSamplePitch(inn_middle_left_1, inn_ptch_1)
	setSamplePitch(inn_middle_right_1, inn_ptch_1)
	
	setSamplePitch(inn_middle_left_2, inn_ptch_2)
	setSamplePitch(inn_middle_right_2, inn_ptch_2)
	
	setSamplePitch(inn_middle_left_3, inn_ptch_3)
	setSamplePitch(inn_middle_right_3, inn_ptch_3)
	local out_pitch_tbl2 = 
	{
	{0, 200},
	{5, 400},
	{71, 1000},
	{100, 2000},
	{10000, 1}
	}

	local out_ptch_idle_1 = interpolate(out_pitch_tbl, rpm_1_2)
	local out_ptch_idle_2 = interpolate(out_pitch_tbl, rpm_2_2)
	local out_ptch_idle_3 = interpolate(out_pitch_tbl, rpm_3_2)

	local out_ptch_1 = interpolate(out_pitch_tbl, rpm_1_2)
	local out_ptch_2 = interpolate(out_pitch_tbl, rpm_2_2)
	local out_ptch_3 = interpolate(out_pitch_tbl, rpm_3_2)
	
	setSamplePitch(out_idle_left_1, out_ptch_idle_1 + dopp)
	setSamplePitch(out_idle_right_1, out_ptch_idle_1 + dopp)
	
	setSamplePitch(out_idle_left_2, out_ptch_idle_2 + dopp)
	setSamplePitch(out_idle_right_2, out_ptch_idle_2 + dopp)
	
	setSamplePitch(out_idle_left_3, out_ptch_idle_3 + dopp)
	setSamplePitch(out_idle_right_3, out_ptch_idle_3 + dopp)
	
	setSamplePitch(out_behind_left_1, 1000 + (out_ptch_1 - 1000) * 0.4)
	setSamplePitch(out_behind_right_1, 1000 + (out_ptch_1 - 1000) * 0.4)
	
	setSamplePitch(out_behind_left_2, 1000 + (out_ptch_2 - 1000) * 0.4)
	setSamplePitch(out_behind_right_2, 1000 + (out_ptch_2 - 1000) * 0.4)
	
	setSamplePitch(out_behind_left_3, 1000 + (out_ptch_3 - 1000) * 0.4)
	setSamplePitch(out_behind_right_3, 1000 + (out_ptch_3 - 1000) * 0.4)

	

	setSamplePitch(inn_apu_left, apu_snd_pitch)
	setSamplePitch(inn_apu_right, apu_snd_pitch)
	setSamplePitch(out_apu_left, apu_snd_pitch + dopp)
	setSamplePitch(out_apu_right, apu_snd_pitch + dopp)
	
		
	-- set RPM gain
	local rpm_gain_1 = interpolate(rpm2gain_tbl, rpm_1)
	local rpm_gain_2 = interpolate(rpm2gain_tbl, rpm_2)
	local rpm_gain_3 = interpolate(rpm2gain_tbl, rpm_3)
	local rpm_gain_1_idle = interpolate(rpm2gain_tbl2, rpm_1)
	local rpm_gain_2_idle = interpolate(rpm2gain_tbl2, rpm_2)
	local rpm_gain_3_idle = interpolate(rpm2gain_tbl2, rpm_3)
	-- local rpm_gain_1_2 = interpolate(rpm2gain_tbl, rpm_1_2)
	-- local rpm_gain_2_2 = interpolate(rpm2gain_tbl, rpm_2_2)
	-- local rpm_gain_3_2 = interpolate(rpm2gain_tbl, rpm_3_2)
	local rpm_gain_apu = interpolate(rpm2gain_tbl, apu_rpm)
	
	-- starters logic
	local starter_1 = get(apd_working_1)
	local starter_2 = get(apd_working_2)
	local starter_3 = get(apd_working_3)
	
	if starter_1 ~= starter_1_last and starter_1 == 1 and rpm_1 < 20 then
		playSample(inn_starter_left_new_1, false)
		playSample(inn_starter_right_new_1, false)
		playSample(out_starter_left_1, false)
		playSample(out_starter_right_1, false)
	
	elseif starter_1 ~= starter_1_last and starter_1 == 0 then
		stopSample(inn_starter_left_new_1)
		stopSample(inn_starter_right_new_1)
		stopSample(out_starter_left_1)
		stopSample(out_starter_right_1)
	end
	
	if starter_2 ~= starter_2_last and starter_2 == 1 and rpm_2 < 20 then
		playSample(inn_starter_left_new_2, false)
		playSample(inn_starter_right_new_2, false)
		playSample(out_starter_left_2, false)
		playSample(out_starter_right_2, false)
	
	elseif starter_2 ~= starter_2_last and starter_2 == 0 then
		stopSample(inn_starter_left_new_2)
		stopSample(inn_starter_right_new_2)
		stopSample(out_starter_left_2)
		stopSample(out_starter_right_2)
	end

	if starter_3 ~= starter_3_last and starter_3 == 1 and rpm_3 < 20 then
		playSample(inn_starter_left_new_3, false)
		playSample(inn_starter_right_new_3, false)
		playSample(out_starter_left_3, false)
		playSample(out_starter_right_3, false)
	
	elseif starter_3 ~= starter_3_last and starter_3 == 0 then
		stopSample(inn_starter_left_new_3)
		stopSample(inn_starter_right_new_3)
		stopSample(out_starter_left_3)
		stopSample(out_starter_right_3)
	end	
	
	
	starter_1_last = starter_1
	starter_2_last = starter_2
	starter_3_last = starter_3
	
	
	-- reverse sounds
	local rev_L = get(revers_flap_L)
	local rev_R = get(revers_flap_R)
	
	local R_1=math.max(0,(get(thrust_L))/70000)
	local R_1_in=math.max(0,(get(thrust_L)-15000)/55000)
	-- if R_1<0.05 then
		-- R_1=0
	-- end
	local R_3=math.max(0,(get(thrust_R))/70000)
	local R_3_in=math.max(0,(get(thrust_R)-15000)/55000)
	-- if R_3<0.05 then
		-- R_3=0
	-- end
	-- if rev_flaps > 1 and (rpm_1+rpm_3)/2 > 30 then
		-- if not isSamplePlaying(inn_reverse) then playSample(inn_reverse, true) end
		-- if not isSamplePlaying(out_reverse_L) then playSample(out_reverse_L, true) end
		-- if not isSamplePlaying(out_reverse_R) then playSample(out_reverse_R, true) end
	-- else
		-- stopSample(inn_reverse)
		-- stopSample(out_reverse_L)
		-- stopSample(out_reverse_R)
	-- end
    
    if get(mil_tech) > 0 then
        if get(deice_started) > 0.1 and not isSamplePlaying(deice_out_L) then
            playSample(deice_out_L,false)
			playSample(deice_out_R,false)
        elseif get(deice_started) == 0 then
            stopSample(deice_out_L)
			stopSample(deice_out_R)
        end
    else
        stopSample(deice_out_L)
		stopSample(deice_out_R)
    end

        
    
    
	
	if external == 0 then -- internal
	-- -21 -17.5 -8 -6.6
		local z_pos=get(pilot_Z)+1.42
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local dist_windows=math.max(-1*0.4/10*math.abs(z_pos+21.2)+1,0)
		local dist_door1=math.max(-1*0.4/10*math.abs(z_pos+17.62)+1,0)
		local dist_door2=math.max(-1*0.4/10*math.abs(z_pos+8.12)+1,0)
		local dist_door3=math.max(-1*0.4/10*math.abs(z_pos+6.57)+1,0)
		local cockpit_L,cockpit_R=inn_balance2 (0, -21.2, x_pos, z_pos , plt_hdg)
		local win1_L, win1_R=inn_balance2 (-0.7, -21.2, x_pos, z_pos , plt_hdg)
		local win2_L, win2_R=inn_balance2 (0.7, -21.2, x_pos, z_pos , plt_hdg)
		local door1_L, door1_R=inn_balance2 (-1.87, -17.62, x_pos, z_pos , plt_hdg)
		local door2_L, door2_R=inn_balance2 (-1.98, -6.57, x_pos, z_pos , plt_hdg)
		local door3_L, door3_R=inn_balance2 (1.95, -8.12, x_pos, z_pos , plt_hdg)
		local door_1=math.max(0,get(pax_door_1)*2-0.4)
		door_1=math.min(1,door_1)
		local door_2=math.max(0,get(pax_door_2)*2-0.4)
		door_2=math.min(1,door_2)
		local door_3=math.max(0,get(pax_door_3)*2-0.4)
		door_3=math.min(1,door_3)
		local cpt_door = get(cockpit_door)
		local cpt_door = math.min(cpt_door,0.94)+0.06
		local chan_left2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_L, get(cockpit_window_right)*dist_windows*0.7*win2_L, door_1 * cpt_door*0.8*dist_door1*door1_L, door_2 * cpt_door*1.1*dist_door2*door2_L, door_3 * cpt_door*1*dist_door3*door3_L)
		if z_pos>-19 then
			chan_left2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_L, door_1 * 0.8*dist_door1*door1_L, door_2 * 1.1*dist_door2*door2_L, door_3 * 1*dist_door3*door3_L)
		end
		local chan_right2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_R, get(cockpit_window_right)*dist_windows*0.7*win2_R, door_1 * cpt_door*0.8*dist_door1*door1_R, door_2 * cpt_door*1.1*dist_door2*door2_R, door_3 * cpt_door*1*dist_door3*door3_R)
		if z_pos>-19 then
			chan_right2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_R, door_1 * 0.8*dist_door1*door1_R, door_2 * 1.1*dist_door2*door2_R, door_3 * 1*dist_door3*door3_R)
		end
		local dist = -get(pilot_Z)-1.42 + 9 
		local cockpit_dr=math.max(bool2int(get(pilot_Z)+1.42>-19.1),cpt_door2)
		-- mute external sounds
		local inn_gain=400
		setSampleGain(deice_out_L, chan_left2 * main_vol*0.5*deice_coef)
        setSampleGain(deice_out_R, chan_right2 * main_vol*0.5*deice_coef)
		
		setSampleGain(out_behind_left_1, 0)
		setSampleGain(out_behind_right_1, 0)
		setSampleGain(out_idle_left_1, chan_left2 * inn_gain * main_vol * rpm_gain_1_idle)
		setSampleGain(out_idle_right_1, chan_right2 * inn_gain * main_vol * rpm_gain_1_idle)
		setSampleGain(out_starter_left_1, chan_left2 * inn_gain * main_vol*3/4)
		setSampleGain(out_starter_right_1, chan_right2 * inn_gain * main_vol*3/4)
		
		setSampleGain(out_behind_left_2, 0)
		setSampleGain(out_behind_right_2, 0)
		setSampleGain(out_idle_left_2, chan_left2 * inn_gain * main_vol * rpm_gain_2_idle)
		setSampleGain(out_idle_right_2, chan_right2 * inn_gain * main_vol * rpm_gain_2_idle)
		setSampleGain(out_starter_left_2, chan_left2 * inn_gain * main_vol*3/4)
		setSampleGain(out_starter_right_2, chan_right2 * inn_gain * main_vol*3/4)
		
		setSampleGain(out_behind_left_3, 0)
		setSampleGain(out_behind_right_3, 0)
		setSampleGain(out_idle_left_3, chan_left2 * inn_gain * main_vol * rpm_gain_3_idle)
		setSampleGain(out_idle_right_3, chan_right2 * inn_gain * main_vol * rpm_gain_3_idle)
		setSampleGain(out_starter_left_3, chan_left2 * inn_gain * main_vol*3/4)
		setSampleGain(out_starter_right_3, chan_right2 * inn_gain * main_vol*3/4)
		
		setSampleGain(out_apu_left, chan_left2 * inn_gain * main_vol * rpm_gain_apu/2)
		setSampleGain(out_apu_right, chan_right2 * inn_gain * main_vol * rpm_gain_apu/2)
		
		
		
		-- calculate balance
		
		local view_head = acf_hd - cam_hd
		while view_head > 180 do view_head = view_head - 360 end
		while view_head < -180 do view_head = view_head + 360 end
		
		
		
		local bal_L, bal_R = inn_balance (view_head, dist)
		
		
		setSampleGain(inn_middle_left_1, 700 * bal_L * rpm_gain_1 * main_vol*(0.75+0.75*cockpit_dr))
		setSampleGain(inn_middle_right_1, 700 * bal_R * rpm_gain_1 * main_vol*(0.75+0.75*cockpit_dr))
		
		setSampleGain(inn_middle_left_2, 700 * bal_L * rpm_gain_2 * main_vol*(0.75+0.75*cockpit_dr))
		setSampleGain(inn_middle_right_2, 700 * bal_R * rpm_gain_2 * main_vol*(0.75+0.75*cockpit_dr))
		
		setSampleGain(inn_middle_left_3, 700 * bal_L * rpm_gain_3 * main_vol*(0.75+0.75*cockpit_dr))
		setSampleGain(inn_middle_right_3, 700 * bal_R * rpm_gain_3 * main_vol*(0.75+0.75*cockpit_dr))	
		
		setSampleGain(inn_starter_left_new_1, 100 * bal_L * main_vol*(0.5+0.75*cockpit_dr))
		setSampleGain(inn_starter_left_new_2, 100 * bal_L * main_vol*(0.5+0.75*cockpit_dr))
		setSampleGain(inn_starter_left_new_3, 100 * bal_L * main_vol*(0.5+0.75*cockpit_dr))
		
		setSampleGain(inn_starter_right_new_1, 100 * bal_R * main_vol*(0.5+0.75*cockpit_dr))
		setSampleGain(inn_starter_right_new_2, 100 * bal_R * main_vol*(0.5+0.75*cockpit_dr))
		setSampleGain(inn_starter_right_new_3, 100 * bal_R * main_vol*(0.5+0.75*cockpit_dr))
		
		setSampleGain(inn_apu_left, 200 * bal_L * rpm_gain_apu * main_vol*(0.75+0.75*cockpit_dr))
		setSampleGain(inn_apu_right, 200 * bal_R * rpm_gain_apu * main_vol*(0.75+0.75*cockpit_dr))
		
		local rev_snd =  math.min(R_1_in*rev_L*0.5+R_3_in*rev_R*0.5,1)*1000* main_vol
		local rev_snd_out =  math.min(R_1*rev_L*0.5+R_3*rev_R*0.5,1)*500* main_vol
		--set(db1,rev_snd)
		local rev_snd_L = chan_left2*rev_snd_out * 3 * main_vol 
		local rev_snd_R = chan_right2*rev_snd_out * 3 * main_vol 
		local rev_ptch = 1000 + (math.max(rpm_1, rpm_3) - 78) * 10
		setSampleGain(inn_reverse, rev_snd)
		setSamplePitch(inn_reverse, rev_ptch)
		local rev_ptch = 1000 + (math.max(rpm_1, rpm_3) - 78) * 10
		--set(db2,rev_snd_L)
		setSampleGain(out_reverse_L, rev_snd_L)
		setSampleGain(out_reverse_R, rev_snd_R)
		setSamplePitch(out_reverse_L, rev_ptch)
		setSamplePitch(out_reverse_R, rev_ptch)
	else -- external view
	
        
		local camera_distance = math.sqrt(((get(cam_x)-get(acf_X))^2)+((get(cam_y)-get(acf_Y))^2)+((get(cam_z)-get(acf_Z))^2)) -- in meters
		if camera_distance < 1 then camera_distance = 1 end -- limit minimum distance
        
		local dist_coef = 300 / camera_distance ^ 1.7
		if dist_coef > 1 then dist_coef = 1 end
        
        
		-- mute internal sounds

		setSampleGain(inn_middle_left_1, 0)
		setSampleGain(inn_middle_right_1, 0)
		setSampleGain(inn_starter_left_new_1, 0)
		setSampleGain(inn_starter_right_new_1, 0)
	
		setSampleGain(inn_middle_left_2, 0)
		setSampleGain(inn_middle_right_2, 0)
		setSampleGain(inn_starter_left_new_2, 0)
		setSampleGain(inn_starter_right_new_2, 0)
		
		setSampleGain(inn_middle_left_3, 0)
		setSampleGain(inn_middle_right_3, 0)
		setSampleGain(inn_starter_left_new_3, 0)
		setSampleGain(inn_starter_right_new_3, 0)

		setSampleGain(inn_apu_left, 0)
		setSampleGain(inn_apu_right, 0)
	
	
		-- local eng_1_L, eng_1_R = out_balance (-3.24, 9.18, 0, 90, 120, 700)
		-- local eng_2_L, eng_2_R = out_balance (0, 15, 0, 90, 120, 700)
		-- local eng_3_L, eng_3_R = out_balance (3.24, 9.18, 0, 90, 120, 700)
		local eng_1_L, eng_1_R = out_balance (-3.24, 9.18, 0, 60, 120, 900)
		local eng_2_L, eng_2_R = out_balance (0, 15, 0, 50, 120, 900)
		local eng_3_L, eng_3_R = out_balance (3.24, 9.18, 0, 60, 120, 900)
		
		local starter_L, starter_R = out_balance (0, 12, 0, 180, 100, 700)
		
		local rev_out_L, rev_out_R = out_balance (0, 12, 0, 180, 100, 1200)
		
		local noise_L, noise_R = out_balance (0, 10, 180, 30 , 80 , 1500)
		
		local apu_L, apu_R = out_balance (0, 15, 180, 120, 100, 100)
		
		local rear_gain_1=math.min(1,-1.333e-05*get(thrust_L)+1.533)
		local rear_gain_2=math.min(1,-1.333e-05*get(thrust_M)+1.533)
		local rear_gain_3=math.min(1,-1.333e-05*get(thrust_R)+1.533)
		
		--local test=get(db3)
		setSampleGain(out_behind_left_1, 1200 * noise_L * rear_gain_1 * rpm_gain_1 ^ 3 * main_vol * (0.5 + 0.5 * work_1)) 
		setSampleGain(out_behind_right_1, 1200 * noise_R * rear_gain_1 * rpm_gain_1 ^ 3 * main_vol * (0.5 + 0.5 * work_1))
		setSampleGain(out_idle_left_1, 1200 * eng_1_L * rpm_gain_1_idle * main_vol)
		setSampleGain(out_idle_right_1, 1200 * eng_1_R * rpm_gain_1_idle * main_vol)
		setSampleGain(out_starter_left_1, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_right_1, 1000 * starter_R * main_vol)
        
		local rev_snd =  math.min(R_1*rev_L*0.5+R_3*rev_R*0.5,1)*2000 * main_vol
		local rev_ptch = 1000 + (math.max(rpm_1, rpm_3) - 78) * 10
		--set(db3, rev_out_L*rev_snd)
		setSampleGain(out_reverse_L, rev_out_L * rev_snd * main_vol)
		setSamplePitch(out_reverse_L, rev_ptch)
		setSampleGain(out_reverse_R, rev_out_R * rev_snd * main_vol)
		setSamplePitch(out_reverse_R, rev_ptch)
        
        

		setSampleGain(out_behind_left_2, 1200 * noise_L * rear_gain_2 * rpm_gain_2 ^ 3 * main_vol * (0.5 + 0.5 * work_2))
		setSampleGain(out_behind_right_2, 1200 * noise_R * rear_gain_2 * rpm_gain_2 ^ 3 * main_vol * (0.5 + 0.5 * work_2))
		setSampleGain(out_idle_left_2, 1200 * eng_2_L * rpm_gain_2_idle * main_vol)
		setSampleGain(out_idle_right_2, 1200 * eng_2_R * rpm_gain_2_idle * main_vol)
		setSampleGain(out_starter_left_2, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_right_2, 1000 * starter_R * main_vol)	

		setSampleGain(out_behind_left_3, 1200 * noise_L * rear_gain_3 * rpm_gain_3 ^ 3 * main_vol * (0.5 + 0.5 * work_3))
		setSampleGain(out_behind_right_3, 1200 * noise_R * rear_gain_3 * rpm_gain_3 ^ 3 * main_vol * (0.5 + 0.5 * work_3))
		setSampleGain(out_idle_left_3, 1200 * eng_3_L * rpm_gain_3_idle * main_vol)
		setSampleGain(out_idle_right_3, 1200 * eng_3_R * rpm_gain_3_idle * main_vol)
		setSampleGain(out_starter_left_3, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_right_3, 1000 * starter_R * main_vol)	
		
		setSampleGain(out_apu_left, 1000 * apu_L * rpm_gain_apu * main_vol)
		setSampleGain(out_apu_right, 1000 * apu_R * rpm_gain_apu * main_vol)
		setSampleGain(deice_out_L, 200 * main_vol*dist_coef*deice_coef)
		setSampleGain(deice_out_R, 200 * main_vol*dist_coef*deice_coef)
		setSampleGain(inn_reverse,0)
	
	
	end

	
	
	
	
	-- mute all sounds
	if passed == 0 or get(main_sound_on) == 0 then
		setSampleGain(inn_middle_left_1, 0)
		setSampleGain(inn_middle_right_1, 0)
		setSampleGain(inn_starter_left_new_1, 0)
		setSampleGain(inn_starter_right_new_1, 0)
	
		setSampleGain(inn_middle_left_2, 0)
		setSampleGain(inn_middle_right_2, 0)
		setSampleGain(inn_starter_left_new_2, 0)
		setSampleGain(inn_starter_right_new_2, 0)
		
		setSampleGain(inn_middle_left_3, 0)
		setSampleGain(inn_middle_right_3, 0)
		setSampleGain(inn_starter_left_new_3, 0)
		setSampleGain(inn_starter_right_new_3, 0)
		setSampleGain(deice_out_L, 0)
		setSampleGain(deice_out_R, 0)

		setSampleGain(inn_apu_left, 0)
		setSampleGain(inn_apu_right, 0)
		
		setSampleGain(out_behind_left_1, 0)
		setSampleGain(out_behind_right_1, 0)
		setSampleGain(out_idle_left_1, 0)
		setSampleGain(out_idle_right_1, 0)
		setSampleGain(out_starter_left_1, 0)
		setSampleGain(out_starter_right_1, 0)
		
		setSampleGain(out_behind_left_2, 0)
		setSampleGain(out_behind_right_2, 0)
		setSampleGain(out_idle_left_2, 0)
		setSampleGain(out_idle_right_2, 0)
		setSampleGain(out_starter_left_2, 0)
		setSampleGain(out_starter_right_2, 0)
		
		setSampleGain(out_behind_left_3, 0)
		setSampleGain(out_behind_right_3, 0)
		setSampleGain(out_idle_left_3, 0)
		setSampleGain(out_idle_right_3, 0)
		setSampleGain(out_starter_left_3, 0)
		setSampleGain(out_starter_right_3, 0)
		
		setSampleGain(out_apu_left, 0)
		setSampleGain(out_apu_right, 0)
		setSampleGain(inn_reverse, 0)
		setSampleGain(out_reverse_L, 0)
		setSampleGain(out_reverse_R, 0)
	end

end
