-- this is panel logic for lights system


-- define controls datarefs
defineProperty("mid_left_panel_int_set", globalPropertyf("tu154b2/custom/lights/mid_left_panel_int_set")) -- регулятор встроенного освещения передней панели КВС
defineProperty("left_panel_int_set", globalPropertyf("tu154b2/custom/lights/left_panel_int_set")) --  регулятор встроенного освещения левой панели
defineProperty("left_panel_fld_set", globalPropertyf("tu154b2/custom/lights/left_panel_flood_set")) --  регулятор встроенного освещения левой панели
defineProperty("right_panel_fld_set", globalPropertyf("tu154b2/custom/lights/right_panel_flood_set")) --  регулятор встроенного освещения левой панели
defineProperty("pkp_left", globalPropertyf("tu154b2/custom/lights/left_pkp_set"))
defineProperty("front_flood", globalPropertyf("tu154b2/custom/lights/front_panel_flood_set"))
defineProperty("ovhd_back_flood", globalPropertyf("tu154b2/custom/lights/ovhd_back_panel_flood_set"))
defineProperty("ovhd_front_flood", globalPropertyf("tu154b2/custom/lights/ovhd_front_panel_flood_set"))
defineProperty("mid_flood", globalPropertyf("tu154b2/custom/lights/mid_panel_flood_set"))
defineProperty("ovhd_panel", globalPropertyi("tu154b2/custom/lights/ovhd_panel_int_set")) -- 
defineProperty("nvu_panel", globalPropertyi("tu154b2/custom/lights/mid_left_panel_int_set")) -- 
defineProperty("pkp_right", globalPropertyi("tu154b2/custom/lights/right_pkp_set")) -- 

defineProperty("right_panel_int_set", globalPropertyf("tu154b2/custom/lights/right_panel_int_set")) -- регулятор встроенного освещения правой панели
defineProperty("mid_right_panel_int_set", globalPropertyf("tu154b2/custom/lights/mid_right_panel_int_set")) -- регулятор встроенного освещения передней панели 2П
defineProperty("ovhd_panel_int_set", globalPropertyf("tu154b2/custom/lights/ovhd_panel_int_set")) -- регулятор встроенного освещения верхней панели

defineProperty("cabinl_flood_set", globalPropertyf("tu154b2/custom/lights/cabinl_flood_set")) -- выключатель освещения кабины
defineProperty("azs_panel_flood_set", globalPropertyf("tu154b2/custom/lights/azs_panel_flood_set")) -- выключатель освещения панели АЗС


defineProperty("cargo_light_1_set", globalPropertyf("tu154b2/custom/lights/cargo_light_1_set")) -- выключатель освещения грузового отсека
defineProperty("cargo_light_2_set", globalPropertyf("tu154b2/custom/lights/cargo_light_2_set")) -- выключатель освещения грузового отсека
defineProperty("tech_light_set", globalPropertyf("sim/custom/lights/tech_light_set_new")) -- выключатель освещения технического отсека
defineProperty("gear_nacelle_light_set", globalPropertyf("tu154b2/custom/lights/gear_nacelle_light_set")) -- выключатель освещения гондол шасси

defineProperty("nav_lights_set", globalPropertyi("tu154b2/custom/lights/nav_lights_set")) -- выключатель нав огней
defineProperty("strobe_set", globalPropertyi("tu154b2/custom/lights/strobe_set")) -- выключатель красных маяков
defineProperty("wing_light_left_set", globalPropertyi("tu154b2/custom/lights/wing_light_left_set")) -- выключатель подсвета порогов и крыла
defineProperty("wing_light_right_set", globalPropertyi("tu154b2/custom/lights/wing_light_right_set")) -- выключатель подсвета порогов и крыла
defineProperty("tail_light_set", globalPropertyi("tu154b2/custom/lights/tail_light_set")) -- выключатель подсвета хвоста
defineProperty("day_night_set", globalPropertyi("tu154b2/custom/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


defineProperty("landing_ext_set_L", globalPropertyi("tu154b2/custom/lights/landing_ext_set_L")) -- выпуск фар лев
defineProperty("landing_ext_set_R", globalPropertyi("tu154b2/custom/lights/landing_ext_set_R")) -- выпуск фар прав
defineProperty("landing_mode_set_L", globalPropertyi("tu154b2/custom/lights/landing_mode_set_L")) -- режим фар лев. -1 - рулежный, 0 - выкл, +1 - посадочный
defineProperty("landing_mode_set_R", globalPropertyi("tu154b2/custom/lights/landing_mode_set_R")) -- режим фар прав
defineProperty("light_signal_set", globalPropertyi("tu154b2/custom/lights/light_signal_set")) -- сигнал в полете


defineProperty("sign_belts", globalPropertyi("tu154b2/custom/switchers/ovhd/sign_belts")) -- транспарант пристегните ремни
defineProperty("sign_nosmoke", globalPropertyi("tu154b2/custom/switchers/ovhd/sign_nosmoke")) -- транспарант пристегните ремни
defineProperty("sign_exit", globalPropertyi("tu154b2/custom/switchers/ovhd/sign_exit")) -- транспарант пристегните ремни

defineProperty("landing_light_off", globalPropertyi("tu154b2/custom/lights/landing_light_off")) -- выключатель фар
defineProperty("landing_light_off_cap", globalPropertyi("tu154b2/custom/lights/landing_light_off_cap")) -- выключатель фар
defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door"))
---cabin sw

defineProperty("cabin_sw1", globalPropertyi("sim/custom/cabin/sw_1")) --
defineProperty("cabin_sw2", globalPropertyi("sim/custom/cabin/sw_2")) --
defineProperty("cabin_sw3", globalPropertyi("sim/custom/cabin/sw_3")) --
defineProperty("cabin_sw4", globalPropertyi("sim/custom/cabin/sw_4")) --
defineProperty("cabin_sw5", globalPropertyi("sim/custom/cabin/sw_5")) --
defineProperty("cabin_sw6", globalPropertyi("sim/custom/cabin/sw_6")) --
defineProperty("cabin_sw7", globalPropertyi("sim/custom/cabin/sw_7")) --
defineProperty("cabin_sw8", globalPropertyi("sim/custom/cabin/sw_8")) --
defineProperty("cabin_sw9", globalPropertyi("sim/custom/cabin/sw_9")) --
defineProperty("cabin_sw10", globalPropertyi("sim/custom/cabin/sw_10")) --
defineProperty("cabin_sw11", globalPropertyi("sim/custom/cabin/sw_11")) --
defineProperty("cabin_sw12", globalPropertyi("sim/custom/cabin/sw_12")) --
defineProperty("cabin_sw13", globalPropertyi("sim/custom/cabin/sw_13")) --
defineProperty("cabin_sw14", globalPropertyi("sim/custom/cabin/sw_14")) --
defineProperty("cabin_sw15", globalPropertyi("sim/custom/cabin/sw_15")) --

defineProperty("cabin_sw16", globalPropertyi("sim/custom/cabin/sw_16")) --
defineProperty("cabin_sw17", globalPropertyi("sim/custom/cabin/sw_17")) --
defineProperty("cabin_sw18", globalPropertyi("sim/custom/cabin/sw_18")) --
defineProperty("cabin_sw19", globalPropertyi("sim/custom/cabin/sw_19")) --
defineProperty("cabin_sw20", globalPropertyi("sim/custom/cabin/sw_20")) --
defineProperty("cabin_sw21", globalPropertyi("sim/custom/cabin/sw_21")) --
defineProperty("cabin_sw22", globalPropertyi("sim/custom/cabin/sw_22")) --
defineProperty("cabin_sw23", globalPropertyi("sim/custom/cabin/sw_23")) --
defineProperty("cabin_sw24", globalPropertyi("sim/custom/cabin/sw_24")) --
defineProperty("cabin_sw25", globalPropertyi("sim/custom/cabin/sw_25")) --
defineProperty("cabin_sw26", globalPropertyi("sim/custom/cabin/sw_26")) --
defineProperty("cabin_sw27", globalPropertyi("sim/custom/cabin/sw_27")) --
defineProperty("cabin_sw28", globalPropertyi("sim/custom/cabin/sw_28")) --
defineProperty("cabin_sw29", globalPropertyi("sim/custom/cabin/sw_29")) --
defineProperty("cabin_sw30", globalPropertyi("sim/custom/cabin/sw_30")) --
defineProperty("cabin_sw31", globalPropertyi("sim/custom/cabin/sw_31")) --
defineProperty("cabin_sw32", globalPropertyi("sim/custom/cabin/sw_32")) --
defineProperty("cabin_sw33", globalPropertyi("sim/custom/cabin/sw_33")) --
defineProperty("cabin_sw34", globalPropertyi("sim/custom/cabin/sw_34")) --
defineProperty("cabin_sw35", globalPropertyi("sim/custom/cabin/sw_35")) --

defineProperty("cabin_sw36", globalPropertyi("sim/custom/cabin/sw_36")) --
defineProperty("cabin_sw37", globalPropertyi("sim/custom/cabin/sw_37")) --
defineProperty("cabin_sw38", globalPropertyi("sim/custom/cabin/sw_38")) --
defineProperty("cabin_sw39", globalPropertyi("sim/custom/cabin/sw_39")) --
defineProperty("cabin_sw40", globalPropertyi("sim/custom/cabin/sw_40")) --
defineProperty("cabin_sw41", globalPropertyi("sim/custom/cabin/sw_41")) --
defineProperty("cabin_sw42", globalPropertyi("sim/custom/cabin/sw_42")) --
defineProperty("cabin_sw43", globalPropertyi("sim/custom/cabin/sw_43")) --
defineProperty("cabin_sw44", globalPropertyi("sim/custom/cabin/sw_44")) --
defineProperty("push_1", globalPropertyi("sim/custom/cabin/push_1")) --
defineProperty("push_2", globalPropertyi("sim/custom/cabin/push_2")) --
defineProperty("push_3", globalPropertyi("sim/custom/cabin/push_3")) --
defineProperty("push_4", globalPropertyi("sim/custom/cabin/push_4")) --
defineProperty("push_5", globalPropertyi("sim/custom/cabin/push_5")) --
defineProperty("push_6", globalPropertyi("sim/custom/cabin/push_6")) --
defineProperty("push_7", globalPropertyi("sim/custom/cabin/push_7")) --

defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
defineProperty("vent_1", globalPropertyi("tu154b2/custom/switchers/ovhd/vent_1"))
-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- last variables

local cabinl_flood_last = get(cabinl_flood_set)
local azs_panel_flood_last = get(azs_panel_flood_set)

local cargo_1_last = get(cargo_light_1_set)
local cargo_2_last = get(cargo_light_2_set)
local tech_light_last = get(tech_light_set)
local gear_nacelle_last = get(gear_nacelle_light_set)
local day_night_last = get(day_night_set)

local nav_lights_last = get(nav_lights_set)
local strobe_last = get(strobe_set)
local wing_light_left_last = get(wing_light_left_set)
local wing_light_right_last = get(wing_light_right_set)
local tail_light_last = get(tail_light_set)


local sign_belts_last = get(sign_belts)
local sign_nosmoke_last = get(sign_nosmoke)
local sign_exit_last = get(sign_exit)

local lights_off_last = get(landing_light_off)
local lights_cap_last = get(landing_light_off_cap)

local cabin_front_last=get(cabin_sw1)+get(cabin_sw2)+get(cabin_sw3)+get(cabin_sw4)+get(cabin_sw5)+get(cabin_sw6)+get(cabin_sw7)+get(cabin_sw8)+get(cabin_sw9)+get(cabin_sw10)+get(cabin_sw11)+get(cabin_sw12)+get(cabin_sw13)+get(cabin_sw14)+get(cabin_sw15)+get(cabin_sw16)+get(cabin_sw17)+get(cabin_sw18)+get(cabin_sw19)+get(cabin_sw20)+get(cabin_sw21)+get(cabin_sw22)+get(cabin_sw23)+get(cabin_sw24)+get(cabin_sw25)+get(cabin_sw26)+get(cabin_sw27)+get(cabin_sw28)+get(cabin_sw29)+get(cabin_sw30)+get(cabin_sw31)+get(cabin_sw32)+get(cabin_sw33)+get(cabin_sw34)+get(cabin_sw35)
local cabin_front_but_last=get(push_1)+get(push_2)+get(push_3)+get(push_4)+get(push_5)
local cabin_mid_last=get(cabin_sw36)+get(cabin_sw37)+get(cabin_sw38)+get(cabin_sw39)+get(cabin_sw40)+get(cabin_sw41)+get(cabin_sw42)+get(cabin_sw43)+get(cabin_sw44)
local cabin_mid_but_last=get(push_6)+get(push_7)
local switchers_center_last=0
local switchers_land_last=0
local switchers_ovhd_last=0
local switchers_fe_last = 0
local rotary_left_prev=0
local rotary_left2_prev=0
local rotary_mid_prev=0
local rotary_nvu_prev=0
local rotary_right_prev=0
local rotary_right2_prev=0

-- local 0.13=-0.13 
-- local -20.15= -20.15
-- local 0.42=0.42
-- local -9.4= -9.4
local panel_center_x=0.14164315
local panel_center_z=-23.044563
local panel_land_x=-0.14501986
local panel_land_z=-22.858711
local panel_ovhd_x=-0.3192692
local panel_ovhd_z=-22.545645
local panel_eng_x=0.67819875
local panel_eng_z=-20.67312
local panel_left_x=-0.92722106 
local panel_left_z=-22.691181
local panel_right_x=0.92722106 
local panel_right_z=-22.691181
local panel_nvu_x=0.0021380093
local panel_nvu_z=-22.4477
local dist_gain=5
-- sound files
local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/rot_click_big_L.wav')
local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/rot_click_big_R.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')


local function inn_balance (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) ) 
	local ch_R = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end

	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end

local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(nav_lights_set, 0)
		set(strobe_set, 0)
		set(wing_light_left_set, 0)
		set(wing_light_right_set, 0)
		set(tail_light_set, 0)
		set(sign_belts, 0)
		set(sign_nosmoke, 0)
		set(sign_exit, 0)
	end
	--print("works")
	notLoaded = false
end

local sim_start_timer = 0

function update()
	passed = get(frame_time)
	
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	end
	
	-- current state

	local cabinl_flood = get(cabinl_flood_set)
	local azs_panel_flood = get(azs_panel_flood_set)
	
	local cargo_1 = get(cargo_light_1_set)
	local cargo_2 = get(cargo_light_2_set)
	local tech_light = get(tech_light_set)
	local gear_nacelle = get(gear_nacelle_light_set)	
	local day_night = get(day_night_set)
	
	local nav_lights = get(nav_lights_set)
	local strobe = get(strobe_set)
	local wing_light_left = get(wing_light_left_set)
	local wing_light_right = get(wing_light_right_set)
	local tail_light = get(tail_light_set)

	local light_signal = get(light_signal_set)
	
	local sign_belts_sw = get(sign_belts)
	local sign_nosmoke_sw = get(sign_nosmoke)
	local sign_exit_sw = get(sign_exit)
	
	local lights_off = get(landing_light_off)
	local lights_cap = get(landing_light_off_cap)
	
	local cabin_front_sw=get(cabin_sw1)+get(cabin_sw2)+get(cabin_sw3)+get(cabin_sw4)+get(cabin_sw5)+get(cabin_sw6)+get(cabin_sw7)+get(cabin_sw8)+get(cabin_sw9)+get(cabin_sw10)+get(cabin_sw11)+get(cabin_sw12)+get(cabin_sw13)+get(cabin_sw14)+get(cabin_sw15)+get(cabin_sw16)+get(cabin_sw17)+get(cabin_sw18)+get(cabin_sw19)+get(cabin_sw20)+get(cabin_sw21)+get(cabin_sw22)+get(cabin_sw23)+get(cabin_sw24)+get(cabin_sw25)+get(cabin_sw26)+get(cabin_sw27)+get(cabin_sw28)+get(cabin_sw29)+get(cabin_sw30)+get(cabin_sw31)+get(cabin_sw32)+get(cabin_sw33)+get(cabin_sw34)+get(cabin_sw35)
	local cabin_mid_sw=get(cabin_sw36)+get(cabin_sw37)+get(cabin_sw38)+get(cabin_sw39)+get(cabin_sw40)+get(cabin_sw41)+get(cabin_sw42)+get(cabin_sw43)+get(cabin_sw44)
	local cabin_front_but=get(push_1)+get(push_2)+get(push_3)+get(push_4)+get(push_5)
	local cabin_mid_but=get(push_6)+get(push_7)
	-- check changes and play sounds
	local switchers_center=nav_lights + strobe + wing_light_left + wing_light_right + tail_light + day_night
	local switchers_land=get(landing_ext_set_L) +  get(landing_ext_set_R) + get(landing_mode_set_L) + get(landing_mode_set_R)
	local switchers_ovhd=sign_belts_sw + sign_nosmoke_sw + sign_exit_sw + get(vent_1)
	local switchers_fe = cabinl_flood + azs_panel_flood + cargo_1 + cargo_2 + tech_light + gear_nacelle
	local z_pos=get(pilot_Z)
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_head)
	local cockpit_dr=math.max(bool2int(z_pos>-20.73),get(cockpit_door),0.05)
	
	if lights_cap ~= lights_cap_last then
		local gain_L, gain_R = inn_balance (panel_right_x, panel_right_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_right_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_right_z,2)+math.pow(x_pos-panel_right_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if lights_off ~= lights_off_last then
		local gain_L, gain_R = inn_balance (panel_right_x, panel_right_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_right_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_right_z,2)+math.pow(x_pos-panel_right_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	if lights_cap ~= lights_cap_last then
		local gain_L, gain_R = inn_balance (panel_left_x, panel_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_left_z,2)+math.pow(x_pos-panel_left_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist*cockpit_dr)
		setSampleGain(cap_sound_R,gain_R*dist*cockpit_dr)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if lights_cap == 0 then set(landing_light_off, 0) end
	
	if cabin_front_sw~=cabin_front_last then
		local gain_L, gain_R = inn_balance (0.13, -20.15, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos+20.15~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos+20.15,2)+math.pow(x_pos-0.13,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist*cockpit_dr)
		setSampleGain(switcher_sound_R,gain_R*dist*cockpit_dr)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if cabin_front_but~=cabin_front_but_last then
		local gain_L, gain_R = inn_balance (0.13, -20.15, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos+20.15~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos+20.15,2)+math.pow(x_pos-0.13,2))/dist_gain)
		end
		setSampleGain(button_sound_L,gain_L*dist*cockpit_dr)
		setSampleGain(button_sound_R,gain_R*dist*cockpit_dr)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	if cabin_mid_sw~=cabin_mid_last then
		local gain_mid_L, gain_mid_R = inn_balance (0.42, -9.4, x_pos, z_pos , plt_hdg)
		gain_mid_L=gain_mid_L*1000
		gain_mid_R=gain_mid_R*1000
		local dist_mid=1
		if z_pos+9.4~=0 then
			dist_mid=math.min(1,1/math.sqrt(math.pow(z_pos+9.4,2)+math.pow(x_pos-0.42,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_mid_L*dist_mid*cockpit_dr)
		setSampleGain(switcher_sound_R,gain_mid_R*dist_mid*cockpit_dr)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if cabin_mid_but~=cabin_mid_but_last then
		local gain_mid_L, gain_mid_R = inn_balance (0.42, -9.4, x_pos, z_pos , plt_hdg)
		gain_mid_L=gain_mid_L*1000
		gain_mid_R=gain_mid_R*1000
		local dist_mid=1
		if z_pos+9.4~=0 then
			dist_mid=math.min(1,1/math.sqrt(math.pow(z_pos+9.4,2)+math.pow(x_pos-0.42,2))/dist_gain)
		end
		setSampleGain(button_sound_L,gain_mid_L*dist_mid*cockpit_dr)
		setSampleGain(button_sound_R,gain_mid_R*dist_mid*cockpit_dr)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	if switchers_center_last~=switchers_center then
		local gaincent_L, gaincent_R = inn_balance (panel_center_x, panel_center_z, x_pos, z_pos , plt_hdg)
		gaincent_L=gaincent_L*1000
		gaincent_R=gaincent_R*1000
		local dist_center=1
		if z_pos-panel_center_z~=0 then
			dist_center=math.min(1,1/math.sqrt(math.pow(z_pos-panel_center_z,2)+math.pow(x_pos-panel_center_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gaincent_L*dist_center)
		setSampleGain(switcher_sound_R,gaincent_R*dist_center)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if switchers_land_last~=switchers_land then
		local gainland_L, gainland_R = inn_balance (panel_land_x, panel_land_z, x_pos, z_pos , plt_hdg)
		gainland_L=gainland_L*1000
		gainland_R=gainland_R*1000
		local dist_land=1
		if z_pos-panel_land_z~=0 then
			dist_land=math.min(1,1/math.sqrt(math.pow(z_pos-panel_land_z,2)+math.pow(x_pos-panel_land_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gainland_L*dist_land)
		setSampleGain(switcher_sound_R,gainland_R*dist_land)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if switchers_ovhd_last~=switchers_ovhd then
		local gainovh_L, gainovh_R = inn_balance (panel_ovhd_x, panel_ovhd_z, x_pos, z_pos , plt_hdg)
		gainovh_L=gainovh_L*1000
		gainovh_R=gainovh_R*1000
		local dist_ovhd=1
		if z_pos-panel_ovhd_z~=0 then
			dist_ovhd=math.min(1,1/math.sqrt(math.pow(z_pos-panel_ovhd_z,2)+math.pow(x_pos-panel_ovhd_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gainovh_L*dist_ovhd)
		setSampleGain(switcher_sound_R,gainovh_R*dist_ovhd)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if switchers_fe_last ~= switchers_fe then
		local gaineng_L, gaineng_R = inn_balance (panel_eng_x, panel_eng_z, x_pos, z_pos , plt_hdg)
		gaineng_L=gaineng_L*1000
		gaineng_R=gaineng_R*1000
		local dist_eng=1
		if z_pos-panel_eng_z~=0 then
			dist_eng=math.min(1,1/math.sqrt(math.pow(z_pos-panel_eng_z,2)+math.pow(x_pos-panel_eng_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gaineng_L*dist_eng)
		setSampleGain(switcher_sound_R,gaineng_R*dist_eng)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	switchers_center_last=switchers_center
	switchers_land_last=switchers_land
	switchers_ovhd_last=switchers_ovhd
	switchers_fe_last = switchers_fe
	
	rotary_left=get(left_panel_fld_set)+get(left_panel_int_set)+get(mid_right_panel_int_set)
	rotary_left2=get(pkp_left)
	rotary_mid=get(front_flood)+get(ovhd_back_flood)+get(ovhd_front_flood)+get(mid_flood)
	rotary_nvu=get(ovhd_panel)+get(nvu_panel)
	rotary_right=get(right_panel_fld_set)+get(right_panel_int_set)
	rotary_right2=get(pkp_right)
	
	if rotary_left_prev~=rotary_left then
		local gain_L, gain_R = inn_balance (panel_left_x, panel_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_left_z,2)+math.pow(x_pos-panel_left_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	if rotary_left2_prev~=rotary_left2 then
		local gain_L, gain_R = inn_balance (panel_left_x, panel_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_left_z,2)+math.pow(x_pos-panel_left_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if rotary_mid_prev~=rotary_mid then
		local gain_L, gain_R = inn_balance (panel_center_x, panel_center_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_center_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_center_z,2)+math.pow(x_pos-panel_center_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	if rotary_nvu_prev~=rotary_nvu then
		local gain_L, gain_R = inn_balance (panel_nvu_x, panel_nvu_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_nvu_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_nvu_z,2)+math.pow(x_pos-panel_nvu_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if rotary_right_prev~=rotary_right then
		local gain_L, gain_R = inn_balance (panel_right_x, panel_right_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_right_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_right_z,2)+math.pow(x_pos-panel_right_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	if rotary_right2_prev~=rotary_right2 then
		local gain_L, gain_R = inn_balance (panel_right_x, panel_right_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_right_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_right_z,2)+math.pow(x_pos-panel_right_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	rotary_left_prev=rotary_left
    rotary_left2_prev= rotary_left2
    rotary_mid_prev=rotary_mid
    rotary_nvu_prev=rotary_nvu
    rotary_right_prev=rotary_right
    rotary_right2_prev=rotary_right2

	-- save current state

	cabinl_flood_last = cabinl_flood
	azs_panel_flood_last = azs_panel_flood
	
	cargo_1_last = cargo_1
	cargo_2_last = cargo_2
	tech_light_last = tech_light
	gear_nacelle_last = gear_nacelle
	day_night_last = day_night

	nav_lights_last = nav_lights
	strobe_last = strobe
	wing_light_left_last = wing_light_left
	wing_light_right_last = wing_light_right
	tail_light_last = tail_light

	light_signal_last = light_signal
	
	sign_belts_last = sign_belts_sw
	sign_nosmoke_last = sign_nosmoke_sw
	sign_exit_last = sign_exit_sw
	
	lights_off_last = lights_off
	lights_cap_last = lights_cap
	cabin_front_last=cabin_front_sw
	cabin_mid_last=cabin_mid_sw
	cabin_front_but_last=cabin_front_but
	cabin_mid_but_last=cabin_mid_but
end