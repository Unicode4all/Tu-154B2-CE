-- this is engines sounds

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

external_view = globalPropertyi("sim/graphics/view/view_is_external") -- enviroment


-- engines
eng1_N1_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_1") -- engine 1 rpm
eng2_N1_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_2") -- engine 2 rpm
eng3_N1_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_3") -- engine 3 rpm

eng1_N2_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1") -- engine 1 rpm
eng2_N2_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2") -- engine 2 rpm
eng3_N2_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3") -- engine 3 rpm
-- pilot head
-- defineProperty("pilot_hdg", globalPropertyf("sim/graphics/view/pilots_head_psi")) -- CW from forward in cockpit
-- defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX")) -- Position of pilot's head relative to CG
-- defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY")) -- Position of pilot's head relative to CG
-- defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG

cam_HDG = globalPropertyf("sim/graphics/view/view_heading") -- CW from true north
acf_hdg = globalPropertyf("sim/flightmodel/position/psi") -- degrees	The true heading of the aircraft in degrees from the Z axis - OpenGL coordinates

eng_main_vol = globalPropertyf("sim/operation/sound/engine_volume_ratio") -- регулятор громкости для двигателей
main_sound_on = globalPropertyi("sim/operation/sound/sound_on") -- выключатель звука

cockpit_door = globalPropertyf("tu154b2/custom/anim/cockpit_door") 
cockpit_window_left = globalPropertyf("tu154b2/custom/anim/cockpit_window_left") -- открытие форточки
cockpit_window_right = globalPropertyf("tu154b2/custom/anim/cockpit_window_right") -- открытие форточки

pax_door_1 = globalPropertyf("tu154b2/custom/anim/pax_door_1") -- положение передних пасс дверей
pax_door_2 = globalPropertyf("tu154b2/custom/anim/pax_door_2") -- положение средних пасс дверей
pax_door_3 = globalPropertyf("tu154b2/custom/anim/pax_door_3") -- положение правых аварийных дверей

cam_HDG = globalPropertyf("sim/graphics/view/view_heading") -- CW from true north
cam_X = globalPropertyf("sim/graphics/view/view_x") -- The location of the camera, X coordinate (OpenGL)
cam_Y = globalPropertyf("sim/graphics/view/view_y") -- The location of the camera, Y coordinate (OpenGL)
cam_Z = globalPropertyf("sim/graphics/view/view_z") -- The location of the camera, Z coordinate (OpenGL)


-- pilot head
pilot_hdg = globalPropertyf("sim/graphics/view/pilots_head_psi") -- CW from forward in cockpit
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX") -- Position of pilot's head relative to CG
pilot_Y = globalPropertyf("sim/aircraft/view/acf_peY") -- Position of pilot's head relative to CG
pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ") -- Position of pilot's head relative to CG


-- acf position
--defineProperty("acf_hdg", globalPropertyf("sim/flightmodel/position/psi")) -- degrees	The true heading of the aircraft in degrees from the Z axis - OpenGL coordinates
acf_X = globalPropertyf("sim/flightmodel/position/local_x") -- The location of the plane in OpenGL coordinates
acf_Y = globalPropertyf("sim/flightmodel/position/local_y") -- The location of the plane in OpenGL coordinates
acf_Z = globalPropertyf("sim/flightmodel/position/local_z") -- The location of the plane in OpenGL coordinates

apd_working_1 = globalPropertyf("tu154b2/custom/start/apd_working_1") -- работа системы запуска
apd_working_2 = globalPropertyf("tu154b2/custom/start/apd_working_2") -- работа системы запуска
apd_working_3 = globalPropertyf("tu154b2/custom/start/apd_working_3") -- работа системы запуска

burn1 = globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]")
burn2 = globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]")
burn3 = globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]")
vr_outside = globalPropertyi("sim/graphics/VR/teleport_on_ground")

R_1 = globalPropertyf("tu154b2/custom/SC/thrust_1")
R_2 = globalPropertyf("tu154b2/custom/SC/thrust_2")
R_3 = globalPropertyf("tu154b2/custom/SC/thrust_3")
dens = globalPropertyf("sim/weather/rho")

knd_1 = globalPropertyf("tu154b2/custom/engines/knd_1")
knd_3 = globalPropertyf("tu154b2/custom/engines/knd_3")

vr_outside = globalPropertyi("sim/graphics/VR/teleport_on_ground")

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))

local whine_L_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/whine_left.wav')
local whine_R_1= loadSample(moduleDirectory .. '/Custom Sounds/engines/whine_right.wav')
local whine_L_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/whine_left.wav')
local whine_R_2= loadSample(moduleDirectory .. '/Custom Sounds/engines/whine_right.wav')
local whine_L_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/whine_left.wav')
local whine_R_3= loadSample(moduleDirectory .. '/Custom Sounds/engines/whine_right.wav')

local out_starter_left_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_L.wav')
local out_starter_right_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_R.wav')
local out_starter_left_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_L.wav')
local out_starter_right_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_R.wav')
local out_starter_left_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_L.wav')
local out_starter_right_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/kvd_start_R.wav')
local howl_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/engine_howl.wav')
local howl_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/engine_howl.wav')
local blast_full_1_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_full_L.wav')
local blast_full_1_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_full_R.wav')
local blast_low_1_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_low_L.wav')
local blast_low_1_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_low_R.wav')
local blast_far_1_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_far_L_new.wav')
local blast_far_1_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_far_R_new.wav')

local blast_full_2_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_full_L.wav')
local blast_full_2_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_full_R.wav')
local blast_low_2_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_low_L.wav')
local blast_low_2_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_low_R.wav')
local blast_far_2_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_far_L.wav')
local blast_far_2_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_far_R.wav')

local blast_full_3_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_full_L.wav')
local blast_full_3_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_full_R.wav')
local blast_low_3_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_low_L.wav')
local blast_low_3_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_low_R.wav')
local blast_far_3_L = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_far_L.wav')
local blast_far_3_R = loadSample(moduleDirectory .. '/Custom Sounds/engines/blast_far_R.wav')

local out_high_L_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_high_left.wav')
local out_high_R_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_high_right.wav')
local out_high_L_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_high_left.wav')
local out_high_R_2 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_high_right.wav')
local out_high_L_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_high_left.wav')
local out_high_R_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/out_high_right.wav')

local rattle_L_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/fan_rattle_L.wav')
local rattle_R_1 = loadSample(moduleDirectory .. '/Custom Sounds/engines/fan_rattle_R.wav')
local rattle_L_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/fan_rattle_L.wav')
local rattle_R_3 = loadSample(moduleDirectory .. '/Custom Sounds/engines/fan_rattle_R.wav')


playSample(whine_L_1, true)
playSample(whine_R_1, true)
playSample(whine_L_2, true)
playSample(whine_R_2, true)
playSample(whine_L_3, true)
playSample(whine_R_3, true)
playSample(out_starter_left_1, true)
playSample(out_starter_right_1, true)
playSample(out_starter_left_2, true)
playSample(out_starter_right_2, true)
playSample(out_starter_left_3, true)
playSample(out_starter_right_3, true)
playSample(out_starter_left_3, true)
playSample(howl_L, true)
playSample(howl_R, true)

playSample(blast_low_1_L, true)
playSample(blast_low_1_R, true)
playSample(blast_far_1_L, true)
playSample(blast_far_1_R, true)
playSample(blast_full_1_L, true)
playSample(blast_full_1_R, true)

playSample(blast_low_2_L, true)
playSample(blast_low_2_R, true)
playSample(blast_far_2_L, true)
playSample(blast_far_2_R, true)
playSample(blast_full_2_L, true)
playSample(blast_full_2_R, true)

playSample(blast_low_3_L, true)
playSample(blast_low_3_R, true)
playSample(blast_far_3_L, true)
playSample(blast_far_3_R, true)
playSample(blast_full_3_L, true)
playSample(blast_full_3_R, true)

playSample(out_high_L_1, true)
playSample(out_high_R_1, true)
playSample(out_high_L_2, true)
playSample(out_high_R_2, true)
playSample(out_high_L_3, true)
playSample(out_high_R_3, true)

playSample(rattle_L_1, true)
playSample(rattle_L_3, true)
playSample(rattle_R_1, true)
playSample(rattle_R_3, true)

setSampleGain(whine_L_1, 0)
setSampleGain(whine_R_1, 0)

setSampleGain(whine_L_2, 0)
setSampleGain(whine_R_2, 0)

setSampleGain(whine_L_3, 0)
setSampleGain(whine_R_3, 0)

setSampleGain(out_starter_left_1, 0)
setSampleGain(out_starter_right_1, 0)

setSampleGain(out_starter_left_2, 0)
setSampleGain(out_starter_right_2, 0)

setSampleGain(out_starter_left_3, 0)
setSampleGain(out_starter_right_3, 0)

setSampleGain(howl_L, 0)
setSampleGain(howl_R, 0)

setSampleGain(blast_low_1_L, 0)
setSampleGain(blast_low_1_R, 0)
setSampleGain(blast_far_1_L, 0)
setSampleGain(blast_far_1_R, 0)
setSampleGain(blast_full_1_L, 0)
setSampleGain(blast_full_1_R, 0)

setSampleGain(blast_low_2_L, 0)
setSampleGain(blast_low_2_R, 0)
setSampleGain(blast_far_2_L, 0)
setSampleGain(blast_far_2_R, 0)
setSampleGain(blast_full_2_L, 0)
setSampleGain(blast_full_2_R, 0)

setSampleGain(blast_low_3_L, 0)
setSampleGain(blast_low_3_R, 0)
setSampleGain(blast_far_3_L, 0)
setSampleGain(blast_far_3_R, 0)
setSampleGain(blast_full_3_L, 0)
setSampleGain(blast_full_3_R, 0)

setSampleGain(out_high_L_1, 0)
setSampleGain(out_high_R_1, 0)
setSampleGain(out_high_L_2, 0)
setSampleGain(out_high_R_2, 0)
setSampleGain(out_high_L_3, 0)
setSampleGain(out_high_R_3, 0)

setSampleGain(rattle_L_1,0)
setSampleGain(rattle_R_1,0)
setSampleGain(rattle_L_3,0)
setSampleGain(rattle_R_3,0)



local howl_gain_tbl = 
{{-1000, 0},
{50000, 000},
{90000, 200},
{200000, 200}
}

local far_gain_tbl = 
{{-1000, 0},
{15000, 0},
{80000, 1},
{200000, 1}
}

local full_gain_tbl = 
{{-1000, 0},
{20000, 0},
{80000, 1},
{200000, 1}
}
local low_gain_tbl = 
{{-1000, 0},
{5000, 0},
{60000, 1},
{100000, 0.5},
{200000, 0.5}
}
local low_pitch_tbl = 
{{-1000, 0},
{5000, 1},
--{60000, 1},
{100000, 2},
{200000, 0.5}
}
local cam_hd = get(cam_HDG)
local acf_hd = get(acf_hdg)

local cam_x = get(cam_X)
local cam_y = get(cam_Y)
local cam_z = get(cam_Z)
	
local acf_x = get(acf_X)
local acf_y = get(acf_Y)
local acf_z = get(acf_Z)

local cam_dist_last=0

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




function update()
	local out_gain_tbl = {
	{-100, 0},
	--{10, 0.2},
	--{0, 0},
	{70, 0},
	{98, 1000},
	{10000, 1000}
	}
	local out_pitch_tbl2 = {
	{-100, 850},
	--{10, 0.2},
	--{0, 0},
	{70, 850},
	{98, 1000},
	{10000, 1}
	}
	
	local rpmgain_tbl = {
	{0, 0},
	{5, 0.0035},
	--{75, 0.2},
	{35, 0.035},
	{50, 0.00},
	{10000, 0}
	}

	local rpm2gain_tbl = {
	{0, 0},
	{40, 0.02},
	--{75, 0.2},
	{95, 1.1},
	{10000, 1.1}
	}


	local out_pitch_tbl = 
	{{-1000, 0},
	{0, 0},
	--{5, 200},
	--{71, 500},
	{95, 1000},
	{10000, 1000}
	}

	local starter_pitch_tbl = 
	{{-1000, 0},
	{5, 500},
	{45, 1100},
	{10000, 1100}
	}
	
	local fan_rattle_gain_tbl = 
	{{-1000, 0},
	{0.025, 0},
	{0.3, 0.2},
	{1, 0},
	{1000, 0}
	}
	local fan_rattle_pitch_tbl = 
	{{-1000, 0.75},
	{0.05, 0.7},
	--{0.5, 1},
	{0.8, 1.2},
	{1000, 1.2}
	}
	
	
	-- define localtions
	cam_hd = get(cam_HDG)
	acf_hd = get(acf_hdg)
	
	cam_x = get(cam_X)
	cam_y = get(cam_Y)
	cam_z = get(cam_Z)
	
	acf_x = get(acf_X)
	acf_y = get(acf_Y)
	acf_z = get(acf_Z)
	local passed = get(frame_time)
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
	
	
	
	

	-- local cam_hd = get(cam_HDG)
	-- local acf_hd = get(acf_hdg)

    local external = 0
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.4 or get(vr_outside)==1 then
	   external = 1
    end
    
	
	local main_vol = get(eng_main_vol)
	
	
	local rpm_1_2 = get(eng1_N1_2)
	local rpm_2_2 = get(eng2_N1_2)
	local rpm_3_2 = get(eng3_N1_2)
	
	local rpm_1 = get(eng1_N2_2)
	local rpm_2 = get(eng2_N2_2)
	local rpm_3 = get(eng3_N2_2)
	
	local start_1=get(apd_working_1)+get(burn1)
	local start_2=get(apd_working_2)+get(burn2)
	local start_3=get(apd_working_3)+get(burn3)
	
        


	local out_ptch_1 = interpolate(out_pitch_tbl, rpm_1_2)
	local out_ptch_2 = interpolate(out_pitch_tbl, rpm_2_2)
	local out_ptch_3 = interpolate(out_pitch_tbl, rpm_3_2)
	
	setSamplePitch(whine_L_1, out_ptch_1)
	setSamplePitch(whine_R_1, out_ptch_1)
	
	setSamplePitch(whine_L_2, out_ptch_3)
	setSamplePitch(whine_R_2, out_ptch_3)
	
	setSamplePitch(whine_L_3, out_ptch_3)
	setSamplePitch(whine_R_3, out_ptch_3)
	
		
	-- set RPM gain
	local rpm_gain_1_2 = interpolate(rpm2gain_tbl, rpm_1_2)
	local rpm_gain_2_2 = interpolate(rpm2gain_tbl, rpm_2_2)
	local rpm_gain_3_2 = interpolate(rpm2gain_tbl, rpm_3_2)
	local rho = get(dens)
	local R1_in=get(R_1)
    local R2_in=get(R_2)
    local R3_in=get(R_3)
    local R1=R1_in*1.225/rho
    local R2=R2_in*1.225/rho
    local R3=R3_in*1.225/rho
	local eng_1_L, eng_1_R = out_balance (-3.34, 5, 0, 60, 120, 1000)
	local eng_2_L, eng_2_R = out_balance (0, 12, 0, 50, 120, 1000)
	local eng_3_L, eng_3_R = out_balance (3.34, 5, 0, 60, 120, 1000)
	local ratl_1_L, ratl_1_R = out_balance (-3.34, 5, 0, 30, 120, 10)
	local ratl_3_L, ratl_3_R = out_balance (3.34, 5, 0, 30, 120, 10)
	local out_high_gn_1=interpolate(out_gain_tbl,rpm_1)
	local out_high_gn_2=interpolate(out_gain_tbl,rpm_2)
	local out_high_gn_3=interpolate(out_gain_tbl,rpm_3)
	
	local n1_1=math.abs(get(knd_1))
	local rattle_gn_1=1000*0.2*math.exp(-math.pow((n1_1-0.5)/  0.2543, 2))*2*math.min(n1_1/0.05,1)
	local rattle_pitch_1=1000*(0.9747*n1_1+0.381)
	local n1_3=math.abs(get(knd_3))
	local rattle_gn_3=1000*0.2*math.exp(-math.pow((n1_3-0.5)/  0.2543, 2))*2*math.min(n1_3/0.05,1)
	local rattle_pitch_3=1000*(0.9747*n1_3+0.381)

	local out_high_pitch_1=interpolate(out_pitch_tbl2,rpm_1)+dopp
	local out_high_pitch_2=interpolate(out_pitch_tbl2,rpm_2)+dopp
	local out_high_pitch_3=interpolate(out_pitch_tbl2,rpm_3)+dopp
	setSamplePitch(out_high_L_1,out_high_pitch_1)
	setSamplePitch(out_high_R_1,out_high_pitch_1)
	setSamplePitch(out_high_L_2,out_high_pitch_2)
	setSamplePitch(out_high_R_2,out_high_pitch_2)
	setSamplePitch(out_high_L_3,out_high_pitch_3)
	setSamplePitch(out_high_R_3,out_high_pitch_3)
	if external == 0 then -- internal
	
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

		local whine = 0.6*math.max(0.02535*get(pilot_Z)+0.872, 0)
		local cockpit_dr=math.max(bool2int(get(pilot_Z)+1.42>-19.1),get(cockpit_door))
		local holes = 400 
		-- calculate balance
		
		local view_head = acf_hd - cam_hd
		while view_head > 180 do view_head = view_head - 360 end
		while view_head < -180 do view_head = view_head + 360 end
		
		local dist = -get(pilot_Z)-1.42 + 9 
		
		local bal_L, bal_R = inn_balance (view_head, dist)
		
		
		setSampleGain(whine_L_1, 700 * bal_L * rpm_gain_1_2 * main_vol*whine*(0.75+0.75*cockpit_dr))
		setSampleGain(whine_R_1, 700 * bal_R * rpm_gain_1_2 * main_vol*whine*(0.75+0.75*cockpit_dr))
		
		setSampleGain(whine_L_2, 700 * bal_L * rpm_gain_2_2 * main_vol*whine*0.25*(0.75+0.75*cockpit_dr))
		setSampleGain(whine_R_2, 700 * bal_R * rpm_gain_2_2 * main_vol*whine*0.25*(0.75+0.75*cockpit_dr))
		
		setSampleGain(whine_L_3, 700 * bal_L * rpm_gain_3_2 * main_vol*whine*(0.75+0.75*cockpit_dr))
		setSampleGain(whine_R_3, 700 * bal_R * rpm_gain_3_2 * main_vol*whine*(0.75+0.75*cockpit_dr))
		if rpm_1>5 and rpm_1<49 and start_1>0 then
			setSampleGain(out_starter_left_1, holes * main_vol*chan_left2*interpolate(rpmgain_tbl,rpm_1))
			setSampleGain(out_starter_right_1, holes * main_vol*chan_right2*interpolate(rpmgain_tbl,rpm_1))
			setSamplePitch(out_starter_left_1, interpolate(starter_pitch_tbl,rpm_1))
			setSamplePitch(out_starter_right_1, interpolate(starter_pitch_tbl,rpm_1))
		else
			setSampleGain(out_starter_left_1,0)
			setSampleGain(out_starter_right_1,0)
		end
		
		if rpm_2>5 and rpm_2<49 and start_2>0 then
			setSampleGain(out_starter_left_2, holes * main_vol*chan_left2*interpolate(rpmgain_tbl,rpm_2))
			setSampleGain(out_starter_right_2, holes * main_vol*chan_right2*interpolate(rpmgain_tbl,rpm_2))
			setSamplePitch(out_starter_left_2, interpolate(starter_pitch_tbl,rpm_2))
			setSamplePitch(out_starter_right_2, interpolate(starter_pitch_tbl,rpm_2))
		else
			setSampleGain(out_starter_left_2,0)
			setSampleGain(out_starter_right_2,0)
		end
		
		if rpm_3>5 and rpm_3<49 and start_3>0 then
			setSampleGain(out_starter_left_3, holes * main_vol*chan_left2*interpolate(rpmgain_tbl,rpm_3))
			setSampleGain(out_starter_right_3, holes * main_vol*chan_right2*interpolate(rpmgain_tbl,rpm_3))
			setSamplePitch(out_starter_left_3, interpolate(starter_pitch_tbl,rpm_3))
			setSamplePitch(out_starter_right_3, interpolate(starter_pitch_tbl,rpm_3))
		else
			setSampleGain(out_starter_left_3,0)
			setSampleGain(out_starter_right_3,0)
		end
		local howl_gain1=interpolate(howl_gain_tbl,R1_in)
		local howl_gain2=interpolate(howl_gain_tbl,R2_in)
		local howl_gain3=interpolate(howl_gain_tbl,R3_in)
		local howl_dist= 0.1053*(get(pilot_Z)+1.42)+4.158
		setSampleGain(howl_L, (howl_gain1+howl_gain2+howl_gain3)/10*howl_dist)
		setSampleGain(howl_R, (howl_gain1+howl_gain2+howl_gain3)/10*howl_dist)
		setSampleGain(blast_full_1_L,0)
		setSampleGain(blast_full_1_R,0)
		setSampleGain(blast_low_1_L,0)
		setSampleGain(blast_low_1_R,0)
		setSampleGain(blast_far_1_L,0)
		setSampleGain(blast_far_1_R,0)
		setSampleGain(blast_full_2_L,0)
		setSampleGain(blast_full_2_R,0)
		setSampleGain(blast_low_2_L,0)
		setSampleGain(blast_low_2_R,0)
		setSampleGain(blast_far_2_L,0)
		setSampleGain(blast_far_2_R,0)
		setSampleGain(blast_full_3_L,0)
		setSampleGain(blast_full_3_R,0)
		setSampleGain(blast_low_3_L,0)
		setSampleGain(blast_low_3_R,0)
		setSampleGain(blast_far_3_L,0)
		setSampleGain(blast_far_3_R,0)
		-- setSampleGain(rattle_L_1,0)
		-- setSampleGain(rattle_R_1,0)
		-- setSampleGain(rattle_L_3,0)
		-- setSampleGain(rattle_R_3,0)
		setSampleGain(out_high_L_1, out_high_gn_1 * main_vol * chan_left2)
		setSampleGain(out_high_R_1, out_high_gn_1 * main_vol * chan_right2)
		setSampleGain(out_high_L_2, out_high_gn_2 * main_vol * chan_left2)
		setSampleGain(out_high_R_2, out_high_gn_2 * main_vol * chan_right2)
		setSampleGain(out_high_L_3, out_high_gn_3 * main_vol * chan_left2)
		setSampleGain(out_high_R_3, out_high_gn_3 * main_vol * chan_right2)
				---------- Fan rattle sounds --------------
		setSampleGain(rattle_L_1, rattle_gn_1*chan_left2*0.025  * main_vol)
		setSampleGain(rattle_R_1, rattle_gn_1*chan_right2*0.025  * main_vol)
		setSamplePitch(rattle_L_1,rattle_pitch_1)
		setSamplePitch(rattle_R_1,rattle_pitch_1)
		setSampleGain(rattle_L_3, rattle_gn_3*chan_left2*0.025  * main_vol)
		setSampleGain(rattle_R_3, rattle_gn_3*chan_right2*0.025  * main_vol)
		setSamplePitch(rattle_L_3,rattle_pitch_3)
		setSamplePitch(rattle_R_3,rattle_pitch_3)
	
	else
	
		local starter_L, starter_R = out_balance (-3.24, 9.18, 0, 90, 120, 700)

		if rpm_1>5 and rpm_1<49 and start_1>0 then
			setSampleGain(out_starter_left_1, 1000 * starter_L * main_vol*interpolate(rpmgain_tbl,rpm_1))
			setSampleGain(out_starter_right_1, 1000 * starter_R * main_vol*interpolate(rpmgain_tbl,rpm_1))
			setSamplePitch(out_starter_left_1, interpolate(starter_pitch_tbl,rpm_1))
			setSamplePitch(out_starter_right_1, interpolate(starter_pitch_tbl,rpm_1))
		
		else
			setSampleGain(out_starter_left_1,0)
			setSampleGain(out_starter_right_1,0)
		end
		
		if rpm_2>5 and rpm_2<49 and start_2>0 then
			setSampleGain(out_starter_left_2, 1000 * starter_L * main_vol*interpolate(rpmgain_tbl,rpm_2))
			setSampleGain(out_starter_right_2, 1000 * starter_R * main_vol*interpolate(rpmgain_tbl,rpm_2))
			setSamplePitch(out_starter_left_2, interpolate(starter_pitch_tbl,rpm_2))
			setSamplePitch(out_starter_right_2, interpolate(starter_pitch_tbl,rpm_2))
		else
			setSampleGain(out_starter_left_2,0)
			setSampleGain(out_starter_right_2,0)
		end
		
		if rpm_3>5 and rpm_3<49 and start_3>0 then
			setSampleGain(out_starter_left_3, 1000 * starter_L * main_vol*interpolate(rpmgain_tbl,rpm_3))
			setSampleGain(out_starter_right_3, 1000 * starter_R * main_vol*interpolate(rpmgain_tbl,rpm_3))
			setSamplePitch(out_starter_left_3, interpolate(starter_pitch_tbl,rpm_3))
			setSamplePitch(out_starter_right_3, interpolate(starter_pitch_tbl,rpm_3))
		else
			setSampleGain(out_starter_left_3,0)
			setSampleGain(out_starter_right_3,0)
		end
		setSampleGain(howl_L, 0)
		setSampleGain(howl_R, 0)
		
		--------rearside engine sounds-----------
		local full_L, full_R = out_balance (0, 10, 180, 60 , 160, 1000)
		local far_L, far_R = out_balance (0, 10, 180, 60 , 160 , 2000)
		local low_L, low_R = out_balance (0, 10, 180, 30 , 80 , 400)
		local full_gain_1=interpolate(full_gain_tbl,R1)*1000
		local full_gain_2=interpolate(full_gain_tbl,R2)*1000
		local full_gain_3=interpolate(full_gain_tbl,R3)*1000
		local far_pitch=1000+dopp
		local far_gain_1=interpolate(far_gain_tbl,R1)*1000*math.min( 0.001*cam_dist,1)
		local far_gain_2=interpolate(far_gain_tbl,R2)*1000*math.min( 0.001*cam_dist,1)
		local far_gain_3=interpolate(far_gain_tbl,R3)*1000*math.min( 0.001*cam_dist,1)
		--local low_gain=1000*get(db3)
		--local low_fade=math.max(0,-0.002*cam_dist+1)
		local low_gain_1=interpolate(low_gain_tbl,R1)*1000
		local low_gain_2=interpolate(low_gain_tbl,R2)*1000
		local low_gain_3=interpolate(low_gain_tbl,R3)*1000
		local full_pitch_1=1000+dopp
		local full_pitch_2=1000+dopp
		local full_pitch_3=1000+dopp
		--local low_pitch=1000*get(db5)
		local low_pitch_1=interpolate(low_pitch_tbl,R1)*1000+dopp
		local low_pitch_2=interpolate(low_pitch_tbl,R2)*1000+dopp
		local low_pitch_3=interpolate(low_pitch_tbl,R3)*1000+dopp
		setSampleGain(blast_full_1_L,full_gain_1*full_L)
		setSampleGain(blast_full_1_R,full_gain_1*full_R)
		setSampleGain(blast_low_1_L,low_gain_1*low_L)
		setSampleGain(blast_low_1_R,low_gain_1*low_R)
		setSamplePitch(blast_full_1_L,full_pitch_1)
		setSamplePitch(blast_full_1_R,full_pitch_1)
		setSamplePitch(blast_low_1_L,low_pitch_1)
		setSamplePitch(blast_low_1_R,low_pitch_1)
		setSampleGain(blast_full_2_L,full_gain_2*full_L)
		setSampleGain(blast_full_2_R,full_gain_2*full_R)
		setSampleGain(blast_low_2_L,low_gain_2*low_L)
		setSampleGain(blast_low_2_R,low_gain_2*low_R)
		setSamplePitch(blast_full_2_L,full_pitch_2)
		setSamplePitch(blast_full_2_R,full_pitch_2)
		setSamplePitch(blast_low_2_L,low_pitch_2)
		setSamplePitch(blast_low_2_R,low_pitch_2)
		setSampleGain(blast_full_3_L,full_gain_3*full_L)
		setSampleGain(blast_full_3_R,full_gain_3*full_R)
		setSampleGain(blast_low_3_L,low_gain_3*low_L)
		setSampleGain(blast_low_3_R,low_gain_3*low_R)
		setSamplePitch(blast_full_3_L,full_pitch_3)
		setSamplePitch(blast_full_3_R,full_pitch_3)
		setSamplePitch(blast_low_3_L,low_pitch_3)
		setSamplePitch(blast_low_3_R,low_pitch_3)
		
		setSampleGain(blast_far_1_L,far_gain_1*far_L)
		setSampleGain(blast_far_1_R,far_gain_1*far_R)
		setSampleGain(blast_far_2_L,far_gain_2*far_L)
		setSampleGain(blast_far_2_R,far_gain_2*far_R)
		setSampleGain(blast_far_3_L,far_gain_3*far_L)
		setSampleGain(blast_far_3_R,far_gain_3*far_R)
		
		setSamplePitch(blast_far_1_L,far_pitch)
		setSamplePitch(blast_far_1_R,far_pitch)
		setSamplePitch(blast_far_2_L,far_pitch)
		setSamplePitch(blast_far_2_R,far_pitch)
		setSamplePitch(blast_far_3_L,far_pitch)
		setSamplePitch(blast_far_3_R,far_pitch)
		---------- front side engine sounds --------

		setSampleGain(out_high_L_1, eng_1_L*out_high_gn_1)
		setSampleGain(out_high_R_1, eng_1_R*out_high_gn_1)
		setSampleGain(out_high_L_2, eng_2_L*out_high_gn_2)
		setSampleGain(out_high_R_2, eng_2_R*out_high_gn_2)
		setSampleGain(out_high_L_3, eng_3_L*out_high_gn_3)
		setSampleGain(out_high_R_3, eng_3_R*out_high_gn_3)
		---------- Fan rattle sounds --------------
		setSampleGain(rattle_L_1, ratl_1_L*rattle_gn_1)
		setSampleGain(rattle_R_1, ratl_1_R*rattle_gn_1)
		setSamplePitch(rattle_L_1,rattle_pitch_1)
		setSamplePitch(rattle_R_1,rattle_pitch_1)
		setSampleGain(rattle_L_3, ratl_3_L*rattle_gn_3)
		setSampleGain(rattle_R_3, ratl_3_R*rattle_gn_3)
		setSamplePitch(rattle_L_3,rattle_pitch_3)
		setSamplePitch(rattle_R_3,rattle_pitch_3)

		
		setSampleGain(whine_L_1,0)
		setSampleGain(whine_R_1,0)
		
		setSampleGain(whine_L_2,0)
		setSampleGain(whine_R_2,0)
								
		setSampleGain(whine_L_3,0)
		setSampleGain(whine_R_3,0)
		
	end
	

	
	
	-- mute all sounds
	if passed == 0 or get(main_sound_on) == 0 then
		setSampleGain(whine_L_1, 0)
		setSampleGain(whine_R_1, 0)
		
		setSampleGain(whine_L_2, 0)
		setSampleGain(whine_R_2, 0)
		
		setSampleGain(whine_L_3, 0)
		setSampleGain(whine_R_3, 0)
		
		setSampleGain(out_starter_left_1, 0)
		setSampleGain(out_starter_right_1, 0)
		
		setSampleGain(out_starter_left_2, 0)
		setSampleGain(out_starter_right_2, 0)
		
		setSampleGain(out_starter_left_3, 0)
		setSampleGain(out_starter_right_3, 0)
	
		setSampleGain(howl_L, 0)
		setSampleGain(howl_R, 0)
		
		setSampleGain(blast_low_1_L, 0)
		setSampleGain(blast_low_1_R, 0)
		setSampleGain(blast_far_1_L, 0)
		setSampleGain(blast_far_1_R, 0)
		setSampleGain(blast_full_1_L, 0)
		setSampleGain(blast_full_1_R, 0)

		setSampleGain(blast_low_2_L, 0)
		setSampleGain(blast_low_2_R, 0)
		setSampleGain(blast_far_2_L, 0)
		setSampleGain(blast_far_2_R, 0)
		setSampleGain(blast_full_2_L, 0)
		setSampleGain(blast_full_2_R, 0)

		setSampleGain(blast_low_3_L, 0)
		setSampleGain(blast_low_3_R, 0)
		setSampleGain(blast_far_3_L, 0)
		setSampleGain(blast_far_3_R, 0)
		setSampleGain(blast_full_3_L, 0)
		setSampleGain(blast_full_3_R, 0)
		setSampleGain(out_high_L_1, 0)
		setSampleGain(out_high_R_1, 0)
		setSampleGain(out_high_L_2, 0)
		setSampleGain(out_high_R_2, 0)
		setSampleGain(out_high_L_3, 0)
		setSampleGain(out_high_R_3, 0)
		setSampleGain(rattle_L_1,0)
		setSampleGain(rattle_R_1,0)
		setSampleGain(rattle_L_3,0)
		setSampleGain(rattle_R_3,0)
	end

end
