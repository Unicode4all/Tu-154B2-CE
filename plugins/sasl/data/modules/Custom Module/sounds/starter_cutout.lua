defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment


defineProperty("apd_working_1", globalPropertyf("tu154b2/custom/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154b2/custom/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154b2/custom/start/apd_working_3")) -- работа системы запуска

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
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))

defineProperty("eng_main_vol", globalPropertyf("sim/operation/sound/engine_volume_ratio")) -- регулятор громкости для двигателей
defineProperty("main_sound_on", globalPropertyi("sim/operation/sound/sound_on")) -- выключатель звука

defineProperty("eng1_N2_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- engine 1 rpm
defineProperty("eng2_N2_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- engine 2 rpm
defineProperty("eng3_N2_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- engine 3 rpm

defineProperty("burn1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("burn2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("burn3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

local inn_starter_cut_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_cutout_L_new.wav')
local inn_starter_cut_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_cutout_R_new.wav')
local out_starter_cut_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_cutout_L_new.wav')
local out_starter_cut_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_cutout_R_new.wav')

local inn_starter_cut_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_cutout_L_new.wav')
local inn_starter_cut_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_cutout_R_new.wav')
local out_starter_cut_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_cutout_L_new.wav')
local out_starter_cut_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_cutout_R_new.wav')


local inn_starter_cut_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_cutout_L_new.wav')
local inn_starter_cut_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/inn_starter_cutout_R_new.wav')
local out_starter_cut_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_cutout_L_new.wav')
local out_starter_cut_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_starter_cutout_R_new.wav')

local out_starter_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_inn_L.wav')
local out_starter_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_inn_R.wav')
local out_starter_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_inn_L.wav')
local out_starter_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_inn_R.wav')
local out_starter_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_inn_L.wav')
local out_starter_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_inn_R.wav')

setSampleGain(inn_starter_cut_left_1,0)
setSampleGain(inn_starter_cut_left_2,0)
setSampleGain(inn_starter_cut_left_3,0)

setSampleGain(inn_starter_cut_right_1,0)
setSampleGain(inn_starter_cut_right_2,0)
setSampleGain(inn_starter_cut_right_3,0)

setSampleGain(out_starter_cut_left_1,0)
setSampleGain(out_starter_cut_left_2,0)
setSampleGain(out_starter_cut_left_3,0)

setSampleGain(out_starter_cut_right_1,0)
setSampleGain(out_starter_cut_right_2,0)
setSampleGain(out_starter_cut_right_3,0)

playSample(out_starter_left_1, true)
playSample(out_starter_right_1, true)
playSample(out_starter_left_2, true)
playSample(out_starter_right_2, true)
playSample(out_starter_left_3, true)
playSample(out_starter_right_3, true)
playSample(out_starter_left_3, true)

setSampleGain(out_starter_left_1, 0)
setSampleGain(out_starter_right_1, 0)

setSampleGain(out_starter_left_2, 0)
setSampleGain(out_starter_right_2, 0)

setSampleGain(out_starter_left_3, 0)
setSampleGain(out_starter_right_3, 0)

local cam_hd = get(cam_HDG)
local acf_hd = get(acf_hdg)

local cam_x = get(cam_X)
local cam_y = get(cam_Y)
local cam_z = get(cam_Z)
	
local acf_x = get(acf_X)
local acf_y = get(acf_Y)
local acf_z = get(acf_Z)

local rpmgain_tbl = {
{0, 0},
{20, 0.04},
--{75, 0.2},
{35, 0.035},
{50, 0.00},
{10000, 0}
}

local starter_pitch_tbl = 
{{-1000, 0},
{5, 500},
{45, 1100},
{10000, 1100}
}

local function out_balance (src_x, src_z, src_hdg, src_cone, fade_deg, fade_dist)


	-- need to calculate the world location of the sound source
	local hdg_rad = math.rad(acf_hd)
	local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	local z_s = acf_z - src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	
	
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



function update ()
	local external = 0
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.41 or get(pilot_Y) < -0.4 or get(vr_outside)==1 then
	   external = 1
    end
    
	local passed = get(frame_time)
	
	local main_vol = get(eng_main_vol)
	
	local cpt_door = get(cockpit_door)
	
	-- define localtions
	cam_hd = get(cam_HDG)
	acf_hd = get(acf_hdg)
	
	cam_x = get(cam_X)
	cam_y = get(cam_Y)
	cam_z = get(cam_Z)
	
	acf_x = get(acf_X)
	acf_y = get(acf_Y)
	acf_z = get(acf_Z)
		
	local rpm_1 = get(eng1_N2_2)
	local rpm_2 = get(eng2_N2_2)
	local rpm_3 = get(eng3_N2_2)
	
	
	local z_pos=get(pilot_Z)+1.42
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_hdg)
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

	
	local starter_1 = get(apd_working_1)
	local starter_2 = get(apd_working_2)
	local starter_3 = get(apd_working_3)
	
	if starter_1 ~= starter_1_last and starter_1 == 0 then
		playSample(inn_starter_cut_left_1, false)
		playSample(inn_starter_cut_right_1, false)
		playSample(out_starter_cut_left_1, false)
		playSample(out_starter_cut_right_1, false)
	end
	
	if starter_2 ~= starter_2_last and starter_2 == 0 then
		playSample(inn_starter_cut_left_2, false)
		playSample(inn_starter_cut_right_2, false)
		playSample(out_starter_cut_left_2, false)
		playSample(out_starter_cut_right_2, false)
	end
	
	if starter_3 ~= starter_3_last and starter_3 == 0 then
		playSample(inn_starter_cut_left_3, false)
		playSample(inn_starter_cut_right_3, false)
		playSample(out_starter_cut_left_3, false)
		playSample(out_starter_cut_right_3, false)
	end
	starter_1_last = starter_1
	starter_2_last = starter_2
	starter_3_last = starter_3

	if external == 0 then
	
		local holes = 300 
		
		local dist = -get(pilot_Z)-1.42 + 9 
		
		setSampleGain(out_starter_cut_left_1, holes * chan_left2 * main_vol)
		setSampleGain(out_starter_cut_right_1, holes * chan_right2 * main_vol)
		
		setSampleGain(out_starter_cut_left_2, holes * chan_left2 * main_vol)
		setSampleGain(out_starter_cut_right_2, holes * chan_right2 * main_vol)
		
		setSampleGain(out_starter_cut_left_3, holes * chan_left2 * main_vol)
		setSampleGain(out_starter_cut_right_3, holes * chan_right2 * main_vol)

		-- calculate balance
		
		local view_head = acf_hd - cam_hd
		while view_head > 180 do view_head = view_head - 360 end
		while view_head < -180 do view_head = view_head + 360 end
		
		
		
		local bal_L, bal_R = inn_balance (view_head, dist)
		local cockpit_dr=math.max(bool2int(get(pilot_Z)+1.42>-19.1),get(cockpit_door))
		bal_L=bal_L*(0.5+0.75*cockpit_dr)
		bal_R=bal_R*(0.5+0.75*cockpit_dr)
		setSampleGain(inn_starter_cut_left_1, 70 * bal_L * main_vol)
		setSampleGain(inn_starter_cut_left_2, 70 * bal_L * main_vol)
		setSampleGain(inn_starter_cut_left_3, 70 * bal_L * main_vol)
		
		setSampleGain(inn_starter_cut_right_1, 70 * bal_R * main_vol)
		setSampleGain(inn_starter_cut_right_2, 70 * bal_R * main_vol)
		setSampleGain(inn_starter_cut_right_3, 70 * bal_R * main_vol)
		
		if rpm_1<49 and starter_1+get(burn1)>0 then
			setSampleGain(out_starter_left_1, 100 * bal_L * main_vol*interpolate(rpmgain_tbl,rpm_1)*70)
			setSampleGain(out_starter_right_1, 100 * bal_R * main_vol*interpolate(rpmgain_tbl,rpm_1)*70)
			setSamplePitch(out_starter_left_1, interpolate(starter_pitch_tbl,rpm_1))
			setSamplePitch(out_starter_right_1, interpolate(starter_pitch_tbl,rpm_1))
		else
			setSampleGain(out_starter_left_1,0)
			setSampleGain(out_starter_right_1,0)
		end
		if rpm_2<49 and starter_2+get(burn2)>0 then
			setSampleGain(out_starter_left_2, 100 * bal_L * main_vol*interpolate(rpmgain_tbl,rpm_2)*70)
			setSampleGain(out_starter_right_2, 100 * bal_R * main_vol*interpolate(rpmgain_tbl,rpm_2)*70)
			setSamplePitch(out_starter_left_2, interpolate(starter_pitch_tbl,rpm_2))
			setSamplePitch(out_starter_right_2, interpolate(starter_pitch_tbl,rpm_2))
		else
			setSampleGain(out_starter_left_2,0)
			setSampleGain(out_starter_right_2,0)
		end
		
		if rpm_3<49 and starter_3+get(burn3)>0 then
			setSampleGain(out_starter_left_3, 100 * bal_L * main_vol*interpolate(rpmgain_tbl,rpm_3)*70)
			setSampleGain(out_starter_right_3, 100 * bal_R * main_vol*interpolate(rpmgain_tbl,rpm_3)*70)
			setSamplePitch(out_starter_left_3, interpolate(starter_pitch_tbl,rpm_3))
			setSamplePitch(out_starter_right_3, interpolate(starter_pitch_tbl,rpm_3))
		else
			setSampleGain(out_starter_left_3,0)
			setSampleGain(out_starter_right_3,0)
		end
	else
		setSampleGain(inn_starter_cut_left_1,0)
		setSampleGain(inn_starter_cut_left_2,0)
		setSampleGain(inn_starter_cut_left_3,0)
		
		setSampleGain(inn_starter_cut_right_1,0)
		setSampleGain(inn_starter_cut_right_2,0)
		setSampleGain(inn_starter_cut_right_3,0)
		
		local starter_L, starter_R = out_balance (0, 12, 0, 180, 100, 700)
		
		setSampleGain(out_starter_cut_left_1, 1000 * starter_L * main_vol)
		setSampleGain(out_starter_cut_right_1, 1000 * starter_R * main_vol)	
		
		setSampleGain(out_starter_cut_left_2, 1000  * starter_L * main_vol)
		setSampleGain(out_starter_cut_right_2, 1000 * starter_R * main_vol)	
		
		setSampleGain(out_starter_cut_left_1, 1000  * starter_L * main_vol)
		setSampleGain(out_starter_cut_right_1, 1000 * starter_R * main_vol)	
		
	end
	
	if passed == 0 or get(main_sound_on) == 0 then
		setSampleGain(inn_starter_cut_left_1,0)
		setSampleGain(inn_starter_cut_left_2,0)
		setSampleGain(inn_starter_cut_left_3,0)
		
		setSampleGain(inn_starter_cut_right_1,0)
		setSampleGain(inn_starter_cut_right_2,0)
		setSampleGain(inn_starter_cut_right_3,0)
		
		setSampleGain(out_starter_cut_left_1,0)
		setSampleGain(out_starter_cut_left_2,0)
		setSampleGain(out_starter_cut_left_3,0)

		setSampleGain(out_starter_cut_right_1,0)
		setSampleGain(out_starter_cut_right_2,0)
		setSampleGain(out_starter_cut_right_3,0)
		
		setSampleGain(out_starter_left_1, 0)
		setSampleGain(out_starter_right_1, 0)
		
		setSampleGain(out_starter_left_2, 0)
		setSampleGain(out_starter_right_2, 0)
		
		setSampleGain(out_starter_left_3, 0)
		setSampleGain(out_starter_right_3, 0)
		
	end
end
