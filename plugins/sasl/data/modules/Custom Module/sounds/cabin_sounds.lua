-- this is the main cabin sounds logic

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment


-- logic sources

-- RV
defineProperty("dh_set_L", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_left"))  -- DH angle
defineProperty("dh_set_R", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_right"))  -- DH angle
defineProperty("rv_angle_L", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_left"))  -- RV needle
defineProperty("rv_angle_R", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_right"))  -- RV needle

defineProperty("rv5_dh_signal_left", globalPropertyi("tu154b2/custom/misc/rv5_dh_signal_left"))
defineProperty("rv5_dh_signal_right", globalPropertyi("tu154b2/custom/misc/rv5_dh_signal_right"))


-- ABSU
defineProperty("roll_main_mode", globalPropertyi("tu154b2/custom/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154b2/custom/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("absu_power_27", globalPropertyf("tu154b2/custom/absu_power_27"))
defineProperty("stu_mode", globalPropertyi("tu154b2/custom/absu/stu_mode")) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб,

defineProperty("absu_fail_signal", globalPropertyi("tu154b2/custom/absu/absu_fail_signal")) -- сигнал на сирену
defineProperty("at_fail_signal", globalPropertyi("tu154b2/custom/absu/at_fail_signal"))
defineProperty("at_blocked", globalPropertyi("tu154b2/custom/failures/absu_at_blocked"))
-- alarm overall
defineProperty("main_gear_flaps", globalPropertyi("tu154b2/custom/alarm/main_gear_flaps")) -- не взлетное положение закрылков или не выпущенны шасси
defineProperty("main_pressure", globalPropertyi("tu154b2/custom/alarm/main_pressure")) -- разгерметизация или перенаддув кабины
defineProperty("speaker_auasp", globalPropertyi("tu154b2/custom/alarm/speaker_auasp")) -- предельный угол атаки или перегрузки
defineProperty("speaker_fuel", globalPropertyi("tu154b2/custom/alarm/speaker_fuel")) -- остаток топлива 2500 в баке 1
defineProperty("speaker_speed", globalPropertyi("tu154b2/custom/alarm/speaker_speed")) -- предельная скорость
defineProperty("speaker_absu", globalPropertyi("tu154b2/custom/alarm/speaker_absu")) -- отключение режимов или отказы АБСУ

defineProperty("fire_siren", globalPropertyi("tu154b2/custom/fire/fire_siren")) -- работа сирены

-- controls
defineProperty("srd_buzzer", globalPropertyi("tu154b2/custom/switchers/eng/srd_buzzer")) -- сирена СРД
defineProperty("fuel_buzzer", globalPropertyi("tu154b2/custom/switchers/eng/fuel_buzzer")) -- сирена топл

defineProperty("srd_buzzer_cap", globalPropertyi("tu154b2/custom/switchers/eng/srd_buzzer_cap")) -- сирена СРД
defineProperty("fuel_buzzer_cap", globalPropertyi("tu154b2/custom/switchers/eng/fuel_buzzer_cap")) -- сирена СРД

defineProperty("srd_buzzer_test", globalPropertyi("tu154b2/custom/buttons/eng/srd_buzzer_test")) -- кнопка проверки


-- МРП
defineProperty("outer_marker", globalPropertyi("sim/cockpit/misc/outer_marker_lit"))   -- runway markers
defineProperty("middle_marker", globalPropertyi("sim/cockpit/misc/middle_marker_lit"))
defineProperty("inner_marker", globalPropertyi("sim/cockpit/misc/inner_marker_lit"))

-- lights
--defineProperty("light_open_left", globalPropertyf("tu154b2/custom/anim/light_open_left")) -- light open
defineProperty("light_open_right", globalPropertyf("tu154b2/custom/anim/light_open_right")) -- light open

defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- indicated airspeed in KTS

-- power
defineProperty("bus27_volt_L", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_R", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus36_volt_L", globalPropertyf("tu154b2/custom/elec/bus36_volt_left"))
defineProperty("bus36_volt_R", globalPropertyf("tu154b2/custom/elec/bus36_volt_right"))

defineProperty("bus27_source_left", globalPropertyf("tu154b2/custom/elec/bus27_source_left")) -- источник сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 6 - соседняя сеть
defineProperty("bus27_source_right", globalPropertyf("tu154b2/custom/elec/bus27_source_right")) -- источник сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 2 и 4, 6 - соседняя сеть

defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX")) -- Position of pilot's head relative to CG
defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY")) -- Position of pilot's head relative to CG
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG



-- air kond
defineProperty("air_usage_L", globalPropertyf("tu154b2/custom/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154b2/custom/bleed/air_usage_R")) -- расход воздуха прав

-- gears
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 
defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- GS, m/s

-- flaps
defineProperty("flaps_lever", globalPropertyf("tu154b2/custom/controll/flaps_lever")) -- sim flaps ratio control. use for axis and commands


-- loudness
defineProperty("engine_volume_ratio", globalPropertyf("sim/operation/sound/engine_volume_ratio")) -- 
defineProperty("prop_volume_ratio", globalPropertyf("sim/operation/sound/prop_volume_ratio")) -- 
defineProperty("ground_volume_ratio", globalPropertyf("sim/operation/sound/ground_volume_ratio")) -- 
defineProperty("weather_volume_ratio", globalPropertyf("sim/operation/sound/weather_volume_ratio")) -- 
defineProperty("warning_volume_ratio", globalPropertyf("sim/operation/sound/warning_volume_ratio")) -- 
defineProperty("radio_volume_ratio", globalPropertyf("sim/operation/sound/radio_volume_ratio")) -- 
defineProperty("fan_volume_ratio", globalPropertyf("sim/operation/sound/fan_volume_ratio")) -- 


-- yoke
defineProperty("yoke_pitch", globalPropertyf("tu154b2/custom/controlls/yoke_pitch")) -- 
defineProperty("trimm_pitch", globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim"))







-- failures
defineProperty("main_alarm_fail", globalPropertyi("tu154b2/custom/failures/main_alarm_fail")) -- отказ сирены
defineProperty("speaker_alarm_fail", globalPropertyi("tu154b2/custom/failures/speaker_alarm_fail")) -- отказ сирены

-- define sources
defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- at absu


defineProperty("absu_throt_off_1", globalPropertyi("tu154b2/custom/buttons/console/absu_throt_off_1")) -- кнопка откл Г1 на панели АБСУ
defineProperty("absu_throt_off_2", globalPropertyi("tu154b2/custom/buttons/console/absu_throt_off_2")) -- кнопка откл Г2 на панели АБСУ
defineProperty("absu_throt_off_3", globalPropertyi("tu154b2/custom/buttons/console/absu_throt_off_3")) -- кнопка откл Г3 на панели АБСУ

--- bp

defineProperty("vyzov_bp_ready", globalPropertyi("tu154b2/custom/vyzov_bp_ready")) --
defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door")) --
defineProperty("slider_8", globalProperty("sim/cockpit2/switches/custom_slider_on[7]")) -- sim slider on


---arm406


defineProperty("arm406_test", globalPropertyi("sim/custom/arm406_test")) --


--- refuel panel

defineProperty("rp_test_push", globalPropertyi("sim/custom/t154gnd/rp_test_push")) --
defineProperty("rp_cap", globalPropertyi("sim/custom/t154gnd/refuel_panel_cap")) --
defineProperty("rp_lit_sw", globalPropertyi("sim/custom/t154gnd/rp_lit_sw")) --
defineProperty("rp_main_sw", globalPropertyi("sim/custom/t154gnd/rp_main_sw")) --
defineProperty("rp_azs_tank4", globalPropertyi("sim/custom/t154gnd/rp_azs_tank4")) --
defineProperty("rp_azs_tank1", globalPropertyi("sim/custom/t154gnd/rp_azs_tank1")) --
defineProperty("rp_azs_tank2L", globalPropertyi("sim/custom/t154gnd/rp_azs_tank2L")) --
defineProperty("rp_azs_tank3L", globalPropertyi("sim/custom/t154gnd/rp_azs_tank3L")) --
defineProperty("rp_azs_tank2R", globalPropertyi("sim/custom/t154gnd/rp_azs_tank2R")) --
defineProperty("rp_azs_tank3R", globalPropertyi("sim/custom/t154gnd/rp_azs_tank3R")) --
defineProperty("rp_main_mode", globalPropertyi("sim/custom/t154gnd/rp_main_mode")) --
defineProperty("rp_4t_mode", globalPropertyi("sim/custom/t154gnd/rp_4t_mode")) --


defineProperty("ssos_alarm", globalPropertyi("sim/custom/ssos_alarm")) --
defineProperty("lavatory_horn", globalPropertyi("sim/custom/cabin/lavatory_horn")) --

---groza

-- defineProperty("groza1", globalPropertyi("sim/custom/switchers/ovhd/groza_1")) --
-- defineProperty("groza2", globalPropertyi("sim/custom/switchers/ovhd/groza_2")) --

---krs-mp2


defineProperty("nav1_obs", globalPropertyi("sim/cockpit/radios/nav1_obs_degm")) --
defineProperty("nav2_obs", globalPropertyi("sim/cockpit/radios/nav2_obs_degm")) --

-- gens

defineProperty("gen1_work", globalPropertyi("tu154b2/custom/elec/gen1_work")) --
defineProperty("gen2_work", globalPropertyi("tu154b2/custom/elec/gen2_work")) --
defineProperty("gen3_work", globalPropertyi("tu154b2/custom/elec/gen3_work")) --
defineProperty("gen4_work", globalPropertyi("tu154b2/custom/elec/gen4_work")) --
defineProperty("gen5_work", globalPropertyi("tu154b2/custom/elec/gpu_work")) --


defineProperty("vu1_amp", globalPropertyf("tu154b2/custom/elec/vu1_amp")) --
defineProperty("vu2_amp", globalPropertyf("tu154b2/custom/elec/vu2_amp")) --
--defineProperty("disable_def_veh", globalPropertyi("tu154b2/custom/t154cfg/hide_def")) --

defineProperty("bus115_amp_1", globalPropertyf("tu154b2/custom/elec/bus115_1_amp")) --
defineProperty("bus115_amp_2", globalPropertyf("tu154b2/custom/elec/bus115_2_amp")) --
defineProperty("bus115_amp_3", globalPropertyf("tu154b2/custom/elec/bus115_3_amp")) --
defineProperty("bus115_amp_4", globalPropertyf("tu154b2/custom/elec/bus115_em_1_amp")) --
defineProperty("bus115_amp_5", globalPropertyf("tu154b2/custom/elec/bus115_em_2_amp")) --



--defineProperty("freq_115", globalPropertyi("tu154b2/custom/elec/bus115_freq")) --
defineProperty("power_115L", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("power_115R", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("tas_sc", globalPropertyf("tu154b2/custom/SC/true_airspeed"))



defineProperty("cabin_rt1", globalPropertyi("sim/custom/cabin/rt_1")) --
defineProperty("cabin_rt2", globalPropertyi("sim/custom/cabin/rt_2")) --



defineProperty("push_8", globalPropertyi("sim/custom/gauges/eng/apu_oil_test")) --

defineProperty("true_airspeed", globalPropertyf("sim/flightmodel/position/true_airspeed"))
defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))


defineProperty("walk_spd", globalPropertyi("sim/custom/t154_camera/walk_spd")) --
defineProperty("walk_loc", globalPropertyi("sim/custom/t154_camera/walk")) --
defineProperty("walk_enable", globalPropertyi("sim/custom/t154_camera/enable_walk")) --

defineProperty("alt", globalPropertyf("sim/flightmodel/position/y_agl"))
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))


local yoke_x=-0.50882757
local yoke_z=-22.854303
local dist_gain=5


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

-- sound sources
-- local lustra_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/lustra.wav') --
-- local lustra_skrip_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/lustra_skrip.wav') --
local absu_sound = loadSample(moduleDirectory .. '/Custom Sounds/short_speaker.wav') --
local long_speaker = loadSample(moduleDirectory .. '/Custom Sounds/long_speaker.wav')
local inverters = loadSample(moduleDirectory .. '/Custom Sounds/inverters.wav') --
local long_sirena = loadSample(moduleDirectory .. '/Custom Sounds/long_siren.wav')
--local short_sirena = loadSample(moduleDirectory .. '/Custom Sounds/short_siren.wav')
-- local bell = loadSample(moduleDirectory .. '/Custom Sounds/mrp_bell.wav') --
-- local bell2 = loadSample(moduleDirectory .. '/Custom Sounds/mrp_bell2.wav') --
local rv5_tone = loadSample(moduleDirectory .. '/Custom Sounds/rv5_tone.wav') --
local arm406_tone = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ARM406.wav') --
local lights_noise = loadSample(moduleDirectory .. '/Custom Sounds/lights_noise.wav') --
local air_cond_noise = loadSample(moduleDirectory .. '/Custom Sounds/air_noise.wav') --
local taxi_noise = loadSample(moduleDirectory .. '/Custom Sounds/roll_inn.wav') --
local walk_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/WalkSound.wav') --




local lavatory_smoke_sirena = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/smoke_alarm.wav')

local yoke_up_snd_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/yoke_up_L.wav') --
local yoke_dn_snd_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/yoke_down_L.wav') --
local yoke_up_snd_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/yoke_up_R.wav') --
local yoke_dn_snd_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/yoke_down_R.wav') --
local absu_change_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/absu_mode_chg_L.wav') --
local absu_change_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/absu_mode_chg_R.wav') --
local dlt_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/dlt.wav') --
local dlt_sound1 = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/dlt1.wav') --
local door_open = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_open.wav') --
local door_close = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_close.wav') --

local flaps_sound = loadSample(moduleDirectory .. '/Custom Sounds/flaps_hnd.wav') --

local RV_counter = 0
local RV_played = true
local snd_choose = -10


local absu_last = get(roll_main_mode) + get(pitch_main_mode)
local stu_last = get(stu_mode)


local invert_counter = 0
playSample(inverters, true)
setSampleGain(inverters, 0)

local short_siren_timer = 0
local short_speaker_timer = 0
local long_speaker_timer = 0
local tr36 = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/tr_run.wav') --

playSample(air_cond_noise, true)
setSampleGain(air_cond_noise, 0)
playSample(tr36,true)
setSampleGain(tr36, 0)


local switcher_sound = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch.wav')
local button_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')
local cap_sound = loadSample(moduleDirectory .. '/Custom Sounds/cap.wav')
local plastic_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch.wav')
-- local seat_move_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/seat_move.wav')
-- local arm_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/arm.wav')
local wind_sound = loadSample(moduleDirectory .. '/Custom Sounds/wind.wav')
playSample(wind_sound, true)
setSampleGain(wind_sound, 0)
local switchers_last = 0
local plastic_last = 0
local caps_last = 0
local scrip_last = 0
local seat_last = 0
local arm_last = 0
local buttons_last = 0
local door_was_open = 0
local invert_count_last = 0
local invert_count = get(gen1_work) + get(gen2_work)+ get(gen3_work)+ get(gen4_work)+ get(gen5_work)
local invert_changed = 0
local invert_load = 0

local external = get(external_view)

local yoke_ntrl = 0
local yoke_last = 0


local fail_counter = 0
local check_time = math.random(15, 30)

function update()
	local z_pos=get(pilot_Z)
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_head)
	
	local power_27=bool2int(get(bus27_volt_left)>15)
	local passed = get(frame_time)
	
	local run = bool2int(passed ~= 0)
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.4 or get(vr_outside) ==1 then
	   external = 1
    else
	   external = 0
    end
	
	local power = get(bus27_volt_L) > 13 or get(bus27_volt_R) > 13
    
    local power_36 = get(bus36_volt_L) > 15 or get(bus36_volt_R) > 15 
	
	local warn_vl = get(warning_volume_ratio)
    
    
    
    
    --- door+bort provodnik
    
    local door_butt = get(slider_8)
    local door_anim = get(cockpit_door)
	
	
    if get(vyzov_bp_ready) == 1 and external == 0 and door_was_open == 0 and get(groundspeed) > 160 then
        set(slider_8,1)
        local snd_chs = math.random(0,10)
        if snd_chs > 5 then
            snd_choose = dlt_sound
        else
            snd_choose = dlt_sound1
        end
        if door_was_open == 0 and not isSamplePlaying(snd_choose) then
            playSample(snd_choose, false)
        end
        door_was_open = 1
    end
    
    if door_was_open == 1 and not isSamplePlaying(snd_choose) then
       set(slider_8,0)
       door_was_open = 0
       snd_choose = -10
    end
    
    -- if door_anim >= 0.01 and door_anim <= 0.3 and external == 0 then
        -- if door_butt == 1 then
            -- if not isSamplePlaying(door_open) then
              -- playSample(door_open, false)
            -- end
        -- else
            -- if not isSamplePlaying(door_close) then
              -- playSample(door_close, false)
            -- end
        -- end
    -- end
    
    
    
	
	-----------------------------
	-- misc controls --
	-----------------------------
	
	local switchers = get(rp_lit_sw)+get(rp_main_sw)+get(rp_azs_tank4)+get(rp_azs_tank1)+get(rp_azs_tank2L)+get(rp_azs_tank3L)+get(rp_azs_tank2R)+get(rp_azs_tank3R)
    
    
	if switchers ~= switchers_last then playSample(switcher_sound, false) end
	
	switchers_last = switchers
    
    
	
    
	local plastic = get(cabin_rt1)+get(cabin_rt2)+get(rp_main_mode)+get(rp_4t_mode)
    
	
	if plastic ~= plastic_last then playSample(plastic_sound, false) end
	
	plastic_last = plastic
    
    
	
	-- local caps = get(fuel_buzzer_cap) + get(rt12_1_dis_cap) + get(rt12_2_dis_cap) + get(rt12_3_dis_cap) + get(elev_trimm_1_pk_cap) + get(elev_trimm_2_pk_cap)
	
	-- if caps ~= caps_last then playSample(cap_sound, false) end
	
	-- caps_last = caps
	
	
	local buttons = get(rp_test_push)
	
	if buttons ~= buttons_last then playSample(button_sound, false) end
	
	buttons_last = buttons	
	
	
    --local scrip = get(lustra_rotate)  + get(sard_pribor_cap1) + get(sard_pribor_cap2) + get(rp_cap)
	
	--if scrip ~= scrip_last and external == 0 then playSample(lustra_skrip_sound, false) end
	
	--scrip_last = scrip
	
	-- local table_moving = get(table_move) + get(seat3) + get(seat4) + get(seat5) + get(seat1_0) + get(seat2_0)
    
    -- if math.abs(table_moving - table_move_last) > 0.2 and external == 0 then 
        -- if not isSamplePlaying(table_sound) then playSample(table_sound, false) end
    -- end
        
    -- table_move_last = table_moving
    
	
    -- local seat = get(seat1) + get(seat2)
	
	-- if seat ~= seat_last and external == 0 then 
        -- if not isSamplePlaying(seat_move_sound) then playSample(seat_move_sound, false) end
    -- end
	
	-- seat_last = seat
	
	
    -- local arm = get(arm1) + get(arm2) + get(arm3)
	
	-- if math.abs(arm-arm_last) > 0.2 and external == 0 then playSample(arm_sound, false) end
	
	-- arm_last = arm
	
	
	----------------------
	-- RadioAltimeter --
	----------------------
	
	local RV_must_play = get(rv5_dh_signal_left) == 1 or get(rv5_dh_signal_right) == 1 and power
	
	if RV_must_play and not RV_played and external == 0 then 
		RV_counter = 7 -- seconds to play tone
		RV_played = true
	end
	
	if not RV_must_play then 
		RV_played = false 
		RV_counter = 0
	end
	
	RV_counter = RV_counter - passed
	if not isSamplePlaying(rv5_tone) and RV_counter > 0 then playSample(rv5_tone, true) end
	if RV_counter <= 0 then stopSample(rv5_tone) end
	
	setSampleGain(rv5_tone, 1000 * warn_vl)	
	setSampleGain(arm406_tone, 1000 * warn_vl)
	--setSamplePitch(arm406_tone, 600)
    
    if get(arm406_test) > 0 then
        if not isSamplePlaying(arm406_tone) then playSample(arm406_tone, false) end
    -- else
        -- stopSample(arm406_tone)
    end
    
    
    
    -- if get(lustra_btn) > 0 then
        -- if not isSamplePlaying(lustra_sound) then playSample(lustra_sound, false) end
    -- else
        -- stopSample(lustra_sound)
    -- end
    

    if get(walk_spd) > 0 and get(walk_loc) > 0 and get(walk_enable) then 
        if not isSamplePlaying(walk_sound) then playSample(walk_sound, false) end
    else
        stopSample(walk_sound)
    end
	
	-------------------
	-- main alarm --
	-------------------
	
	if (get(main_gear_flaps) == 1 or get(fire_siren) == 1) and power and get(srd_buzzer) == 1 and external == 0 and get(main_alarm_fail) == 0 then -- continous buzz
		if not isSamplePlaying(long_sirena) then playSample(long_sirena, true) end
		--stopSample(short_sirena)
	elseif get(srd_buzzer) == 1 and get(main_pressure) == 1 and power or get(ssos_alarm) == 1 and get(srd_buzzer) == 1 and power and external == 0 and get(main_alarm_fail) == 0 then
		short_siren_timer = short_siren_timer + passed
		
		if not isSamplePlaying(long_sirena) and short_siren_timer > 0.2 then playSample(long_sirena, true) end
		
		if short_siren_timer > 0.4 then 
			short_siren_timer = 0 
			stopSample(long_sirena)
		end
		
		--stopSample(long_sirena)
	else
		stopSample(long_sirena)
		--stopSample(short_sirena)
	end

	if passed == 0 or external == 1 then
		stopSample(long_sirena)		
	end
	
	if short_siren_timer > 0.4 then short_siren_timer = 0 end
	
	
	setSampleGain(long_sirena, 1000 * warn_vl*power_27)
    
    if get(lavatory_horn)*power_27 > 0 then
        if not isSamplePlaying(lavatory_smoke_sirena) then playSample(lavatory_smoke_sirena, true) end
    else
        stopSample(lavatory_smoke_sirena)
    end
    
	
	------------------
	-- speaker alarm --
	------------------
	
	local absu_now = get(roll_main_mode) + get(pitch_main_mode)
	local stu_now = get(stu_mode)
	local power_absu=get(absu_power_27)>0
	if power_absu and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 and (get(absu_fail_signal) == 1 or get(at_fail_signal)==1 or get(at_blocked)==1) then -- ABSU fails
		if not isSamplePlaying(absu_sound) then playSample(absu_sound, false) end
		stopSample(long_speaker)
	elseif get(speaker_auasp) == 1 and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then -- long buzzer
		if not isSamplePlaying(long_speaker) then playSample(long_speaker, true) end
		stopSample(absu_sound)
		
	elseif (get(speaker_fuel) == 1 or get(speaker_speed) == 1)  and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 and power_absu then
		
		short_speaker_timer = short_speaker_timer + passed
		
		if not isSamplePlaying(long_speaker) and short_speaker_timer > 0.3 then playSample(long_speaker, true) end
		
		if short_speaker_timer > 0.6 then 
			short_speaker_timer = 0 
			stopSample(long_speaker)
		end
		stopSample(absu_sound)
		
	elseif ( (stu_last >= 3 and stu_now <= 2 and (get(absu_throt_off_1)+get(absu_throt_off_2)+get(absu_throt_off_3) < 2))) and power_absu and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then -- ABSU signals
		playSample(absu_sound, false) 
		stopSample(long_speaker)
	else
		stopSample(long_speaker)
		--stopSample(absu_sound)
	end
    
    if absu_now-absu_last>0 and isSamplePlaying(absu_sound) then
		stopSample(absu_sound)
	end
	
	 if absu_now-absu_last<0 and not isSamplePlaying(absu_sound) and get(absu_fail_signal) == 0 and get(at_fail_signal)==0 and power_absu and external == 0 and get(fuel_buzzer) == 1 and get(speaker_alarm_fail) == 0 then
		playSample(absu_sound)
	end
	
    if absu_now ~= absu_last and absu_now >= 3 and external == 0 then
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (-0.09365284, -22.834698, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000* warn_vl
		gain_R=gain_R*1000* warn_vl
		local dist=1
		if z_pos+22.834698~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos+22.834698,2)+math.pow(x_pos+0.09365284,2))/dist_gain)
		end
		setSampleGain(absu_change_sound_L,gain_L*dist)
		setSampleGain(absu_change_sound_R,gain_R*dist)
		playSample(absu_change_sound_L, false)
		playSample(absu_change_sound_R, false)
    else
		stopSample(absu_change_sound_L)
		stopSample(absu_change_sound_R)
    end
    if (not power_absu and not (get(speaker_fuel) == 1 or get(speaker_speed) == 1)) or get(speaker_alarm_fail) == 1 or get(fuel_buzzer) == 0 then
		stopSample(absu_sound)
	end
	
    
	--setSampleGain(absu_change_sound, 1000 * warn_vl)
	
	absu_last = absu_now
	stu_last = stu_now
	
	setSampleGain(long_speaker, 1000 * warn_vl*power_27)
    
    setSampleGain(walk_sound, 1000 * warn_vl)
	

	----------------------
	-- markers sound --
	----------------------
	
	-- local inner = get(inner_marker) == 1
	-- local middle = get(middle_marker) == 1
	-- local outer = get(outer_marker) == 1
	
	-- local mrp_power = power -- need to extend this logic for MRP
	
	-- if outer and mrp_power and external == 0 and get(alt)>10 then 
		-- if not isSamplePlaying(bell) then playSample(bell, false) end
	-- end
	-- if (inner or middle) and mrp_power and external == 0 and get(alt)>10 then 
		-- if not isSamplePlaying(bell2) then playSample(bell2, false) end
	-- end

	-- setSampleGain(bell, 1000 * warn_vl*power_27)
	-- setSampleGain(bell2, 1000 * warn_vl*power_27)
	------------------
	-- power noise --
	-----------------
	local fan_vl = get(fan_volume_ratio)
	
	
	-- local vu_L = get(bus27_source_left)
	-- local vu_R = get(bus27_source_right)
	
	-- if power then invert_counter = invert_counter + passed
	-- else invert_counter = invert_counter - passed * 0.3 end
	
	-- if invert_counter > 1 then invert_counter = 1
	-- elseif invert_counter < 0 then invert_counter = 0 end
	
	local dist = -get(pilot_Z) + 7 +1.42
	local dist2 = math.min(1,-0.1667*get(pilot_Z)  -2.5)
	local door=1
	local door2=1	
	if get(pilot_Z) +1.42>-19 then
		door=0.05+0.95*get(cockpit_door)
		door2=0.2+0.8*get(cockpit_door)
	end
    if get(power_115L)>100 or get(power_115R)>100 then
		setSampleGain(tr36,1000* (1 - external) * math.max(dist - 25, 0)*run*door)
	else
		setSampleGain(tr36,0)
	end
		
	--------------------
	-- wind noise --
	--------------------
	local MASTER = get(ismaster) ~= 1
	local tas=get(true_airspeed)*3.6
	if not MASTER then
		tas=get(tas_sc)*3.6
	end
	-- if tas<80 then
		-- tas=0
	-- end
	setSampleGain(wind_sound, (tas-80)/0.82*run*(1 - external)*0.5* math.max(dist2*door,0.5))
	setSamplePitch(wind_sound, 600+tas*2/3)
	--set(db1,math.max(dist - 25, 0)*door)
    
    if switchers ~= switchers_last then playSample(switcher_sound, false) end
	
	switchers_last = switchers
    
    -- local invert_count = get(gen1_work) + get(gen2_work)+ get(gen3_work)+ get(gen4_work)+ get(gen5_work)
    
    
    -- if invert_count-invert_count_last > 0.2 then
        -- if invert_changed > 0.98  then
            -- invert_changed = invert_changed -passed*0.5
        -- end
        -- invert_count_last = invert_count_last + passed*1.3
    -- elseif invert_count-invert_count_last < -0.2 then
        -- if invert_changed > 0.97  then
            -- invert_changed = invert_changed -passed*0.5
        -- end
        -- invert_count_last = invert_count_last - passed*1.3
    -- else
        -- if invert_changed < 1  then
            -- invert_changed = invert_changed +passed*0.5
        -- end
    -- end
    
    -- invert_load = 1-math.abs(get(freq_115)*0.0023)
    
    
    setSampleGain(lavatory_smoke_sirena, 500+(200*math.max(4-math.abs(8.5-math.abs(get(pilot_Z) +1.42), 0))))
    setSamplePosition(lavatory_smoke_sirena, -0.59268, -0.56553, -8.85027)
    
    -- setSampleGain(lustra_sound, 4*math.max(dist*3 - 25, 0))
    -- setSamplePosition(lustra_sound, 0.66229, -0.92123, -19.5925)
    -- setSampleGain(table_sound, 4*math.max(dist*3 - 25, 0))
    -- setSamplePosition(table_sound, 0.83868, -1.7191, -19.4548)
    -- setSampleGain(lustra_skrip_sound, 4*math.max(dist*3 - 25, 0))
    -- setSamplePosition(lustra_skrip_sound, 0.66229, -0.92123, -19.5925)
    
    -- setSampleGain(arm_sound, 4*math.max(dist*3 - 25, 0))
    -- setSampleGain(seat_move_sound, 4*math.max(dist*3 - 25, 0))
	
	-- setSampleGain(inverters, fan_vl * invert_counter * 220 * (bool2int(vu_L == 1 or vu_L == 2) + bool2int(vu_R == 1 or vu_R == 2)) * (1 - external) * math.max(dist - 25, 0) * 0.2 * run)
	-- setSamplePitch(inverters, invert_counter * invert_changed *invert_load * 800 + 200)
	
	-- if passed == 0 or external == 1 then
		-- setSampleGain(inverters, 0)
	-- end	
	
    
    -- yoke


    
    
    -- if get(yoke_pitch)-yoke_last > 0.0001 then
      -- yoke_last = yoke_last + math.abs(get(yoke_pitch)-yoke_last) * passed*13
    -- elseif get(yoke_pitch)-yoke_last < 0 then
      -- yoke_last = yoke_last - math.abs(get(yoke_pitch)-yoke_last) * passed *13
    -- end
	local yoke_spd=0
	if passed~=0 then
		yoke_spd=(get(yoke_pitch)-yoke_last)/passed
	end
	if math.abs(get(yoke_pitch)-get(trimm_pitch)) < 0.1 then-- and get(yoke_pitch)-get(trimm_pitch)<0.2) or (yoke_spd<0 and get(yoke_pitch)-get(trimm_pitch) < -0.1 and get(yoke_pitch)-get(trimm_pitch) > -0.2) then
        yoke_ntrl = 1
    else
        yoke_ntrl = 0
    end
    
    if external == 0 and math.abs(yoke_spd) > 3.5 then
        if yoke_ntrl == 1 and yoke_spd>0 and not isSamplePlaying(yoke_up_snd_L) then
			stopSample(yoke_dn_snd_L, false)
			stopSample(yoke_dn_snd_R, false)
			local gain1_L, gain1_R = inn_balance (yoke_x, yoke_z, x_pos, z_pos , plt_hdg)
			gain1_L=gain1_L*math.abs(yoke_spd)*40
			gain1_R=gain1_R*math.abs(yoke_spd)*40
			local dist1=1
			if z_pos-yoke_z~=0 then
				dist1=math.min(1,1/math.sqrt(math.pow(z_pos-yoke_z,2)+math.pow(x_pos-yoke_x,2))/dist_gain)
			end
			local gain2_L, gain2_R = inn_balance (-1*yoke_x, yoke_z, x_pos, z_pos , plt_hdg)
			gain2_L=gain2_L*math.abs(yoke_spd)*40
			gain2_R=gain2_R*math.abs(yoke_spd)*40
			local dist2=1
			if z_pos-yoke_z~=0 then
				dist2=math.min(1,1/math.sqrt(math.pow(z_pos-yoke_z,2)+math.pow(x_pos+yoke_x,2))/dist_gain)
			end
			gain_L=math.max(gain1_L*dist1,gain2_L*dist2)
			gain_R=math.max(gain1_R*dist1,gain2_R*dist2)
			setSampleGain(yoke_up_snd_L,gain_L)
			setSampleGain(yoke_up_snd_R,gain_R)
			playSample(yoke_up_snd_L, false)
			playSample(yoke_up_snd_R, false)
        elseif yoke_ntrl == 1 and yoke_spd<0 and not isSamplePlaying(yoke_dn_snd_L) then
			stopSample(yoke_up_snd_L, false)
			stopSample(yoke_up_snd_R, false)
            local gain1_L, gain1_R = inn_balance (yoke_x, yoke_z, x_pos, z_pos , plt_hdg)
			gain1_L=gain1_L*math.abs(yoke_spd)*40
			gain1_R=gain1_R*math.abs(yoke_spd)*40
			local dist1=1
			if z_pos-yoke_z~=0 then
				dist1=math.min(1,1/math.sqrt(math.pow(z_pos-yoke_z,2)+math.pow(x_pos-yoke_x,2))/dist_gain)
			end
			local gain2_L, gain2_R = inn_balance (-1*yoke_x, yoke_z, x_pos, z_pos , plt_hdg)
			gain2_L=gain2_L*math.abs(yoke_spd)*40
			gain2_R=gain2_R*math.abs(yoke_spd)*40
			local dist2=1
			if z_pos-yoke_z~=0 then
				dist2=math.min(1,1/math.sqrt(math.pow(z_pos-yoke_z,2)+math.pow(x_pos+yoke_x,2))/dist_gain)
			end
			gain_L=math.max(gain1_L*dist1,gain2_L*dist2)
			gain_R=math.max(gain1_R*dist1,gain2_R*dist2)
			setSampleGain(yoke_dn_snd_L,gain_L)
			setSampleGain(yoke_dn_snd_R,gain_R)
			playSample(yoke_dn_snd_L, false)
			playSample(yoke_dn_snd_R, false)
        end
    end    
	yoke_last=get(yoke_pitch)

    
	-----------------------
	-- air cond noise --
	-----------------------
	local air_usage = get(air_usage_L) + get(air_usage_R)
	setSampleGain(air_cond_noise, math.min(1500, air_usage/3) * 1.8 * (1 - external) * run)
	setSamplePitch(air_cond_noise, 1000)

	
	-----------------------
	-- taxi noise --
	-----------------------
	local taxi_gain = bool2int(math.max(get(deflection_mtr_2), get(deflection_mtr_3)) > 0.001) * math.max(get(groundspeed) - 50, 0) * (1 - external) 
	local taxi_pitch = 1000 + (get(groundspeed) - 80) * 3
	
	-- 80 m/s
	
	if taxi_gain > 0 then
		if not isSamplePlaying(taxi_noise) then playSample(taxi_noise, true) end
	else
		stopSample(taxi_noise)
	end
	
	setSampleGain(taxi_noise, taxi_gain * 10 * get(ground_volume_ratio))
	setSamplePitch(taxi_noise, taxi_pitch)
	
	
	
	
	--------------------
	-- lights noise --
	--------------------
	
	-- local light_L = get(light_open_left)
	local light_R = get(light_open_right)
	local IAS = get(airspeed)*1.6
	
	if  light_R > 0.1 then
		if not isSamplePlaying(lights_noise) then playSample(lights_noise, true) end
		
		local gain =  math.max(IAS - 150, 0) * (light_R) * (1 - external) * run
		
		setSampleGain(lights_noise, gain)
		
		setSamplePitch(lights_noise, 250 + IAS)
		
	else
		stopSample(lights_noise)
		
	end
	

if MASTER then	
	
	local FAIL = get(failures_enabled)
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	-- check failures
	if FAIL > 0 then
		
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(main_alarm_fail) ~= 1 then set(main_alarm_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(speaker_alarm_fail) ~= 1 then set(speaker_alarm_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
		
		end
		
		-- dependent failures

	else
		-- no failures enabled
		fail_counter = 0
		
		set(main_alarm_fail, 0)
		set(speaker_alarm_fail, 0)
	
	end

end	
	
	

end
