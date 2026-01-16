-- this is flight controls panel


-- controls
defineProperty("stab_man_cap", globalPropertyi("tu154b2/custom/controll/stab_man_cap")) -- крышка управления стабилизатором
defineProperty("stab_manual", globalPropertyi("tu154b2/custom/controll/stab_manual")) -- уплавение стабилизатором. 0 - нейтр, +1 - кабрирование
defineProperty("stab_setting", globalPropertyi("tu154b2/custom/controll/stab_setting")) -- положение центровки для стаба. 0 - З, 1 - С, 2 - П	1
defineProperty("ail_trimm_sw", globalPropertyi("tu154b2/custom/controll/ail_trimm_sw")) -- переключатель триммера элеронов
defineProperty("rudd_trimm_sw", globalPropertyi("tu154b2/custom/controll/rudd_trimm_sw")) -- переключатель триммера РН
defineProperty("contr_force_cap", globalPropertyi("tu154b2/custom/controll/contr_force_cap")) -- крышка переключателя загружателя РВ РН
defineProperty("contr_force_set", globalPropertyi("tu154b2/custom/controll/contr_force_set")) -- переключатель загружателя РВ РН. -1 - полет, 0 авто, +1 - взлет-посадка

defineProperty("nosewheel_turn_enable", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_enable")) -- выключатель поворота передней стойки на штурвале
defineProperty("nosewheel_turn_sel", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_sel")) -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63
defineProperty("nosewheel_turn_cap", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_cap")) -- вкрышка переключателя угла поворота
defineProperty("slat_man", globalPropertyi("tu154b2/custom/switchers/slat_man")) -- ручное управление предкрылками. -1 - уборка, 0 выкл, +1 - выпуск
defineProperty("slat_man_cap", globalPropertyi("tu154b2/custom/switchers/slat_man_cap")) -- крышка ручного урпавления предкрылками
defineProperty("flaps_sel", globalPropertyi("tu154b2/custom/switchers/flaps_sel")) -- выбор режимов работы закрылков. -1 - выкл, 0 - авт, +1 - ручное
defineProperty("flaps_sel_cap", globalPropertyi("tu154b2/custom/switchers/flaps_sel_cap")) -- крышка выбора работы закрылков
defineProperty("gears_retr_lock", globalPropertyi("tu154b2/custom/switchers/gears_retr_lock")) -- блокировка уборки шасси
defineProperty("gears_retr_lock_cap", globalPropertyi("tu154b2/custom/switchers/gears_retr_lock_cap")) -- крышка блокировки уборки шасси
defineProperty("gears_ext_3GS", globalPropertyi("tu154b2/custom/switchers/gears_ext_3GS")) -- выпуск шасси от 3ГС	
defineProperty("gears_ext_3GS_cap", globalPropertyi("tu154b2/custom/switchers/gears_ext_3GS_cap")) -- крышка выпуска шасси от 3ГС

defineProperty("buster_on_1", globalPropertyi("tu154b2/custom/switchers/console/buster_on_1")) -- выключатель бустера
defineProperty("buster_on_2", globalPropertyi("tu154b2/custom/switchers/console/buster_on_2")) -- выключатель бустера
defineProperty("buster_on_3", globalPropertyi("tu154b2/custom/switchers/console/buster_on_3")) -- выключатель бустера
defineProperty("busters_cap", globalPropertyi("tu154b2/custom/switchers/console/busters_cap")) -- крышка выключателей бустеров

defineProperty("elev_trimm_switcher", globalPropertyi("tu154b2/custom/controll/elev_trimm_switcher")) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование

defineProperty("emerg_elev_trimm", globalPropertyi("tu154b2/custom/switchers/console/emerg_elev_trimm")) -- аварийное управление триммером
defineProperty("emerg_elev_trimm_cap", globalPropertyi("tu154b2/custom/switchers/console/emerg_elev_trimm_cap")) -- аварийное управление триммером

defineProperty("lamp_test", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка теста ламп
defineProperty("lamp_test_eng", globalPropertyi("tu154b2/custom/buttons/lamp_test_upper_gear")) -- кнопка теста ламп


defineProperty("flaps_lever", globalPropertyf("tu154b2/custom/controll/flaps_lever")) -- sim flaps ratio control. use for axis and commands
defineProperty("gear_lever", globalPropertyi("tu154b2/custom/controll/gear_lever")) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск

defineProperty("anim_rud1", globalPropertyf("tu154b2/custom/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154b2/custom/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154b2/custom/controlls/throttle_3")) -- РУД 3

-- gauges
defineProperty("stab_ind", globalPropertyf("tu154b2/custom/gauges/misc/stab_ind")) -- индикатор положения стаб
defineProperty("elevator_ind", globalPropertyf("tu154b2/custom/gauges/misc/elevator_ind")) -- индикатор положения стаб
defineProperty("flap_left_ind", globalPropertyf("tu154b2/custom/gauges/misc/flap_left_ind")) -- индикатор положения стаб
defineProperty("flap_right_ind", globalPropertyf("tu154b2/custom/gauges/misc/flap_right_ind")) -- индикатор положения стаб

-- lamps
defineProperty("stab_work", globalPropertyf("tu154b2/custom/lights/stab_work")) -- стабилиз включен
defineProperty("flaps_1_valve", globalPropertyf("tu154b2/custom/lights/flaps_1_valve")) -- закрылки 1 ПК
defineProperty("flaps_2_valve", globalPropertyf("tu154b2/custom/lights/flaps_2_valve")) -- закрылки 2 ПК
defineProperty("spoilers_mid_left", globalPropertyf("tu154b2/custom/lights/spoilers_mid_left")) -- интерцепторы средн лев
defineProperty("spoilers_mid_right", globalPropertyf("tu154b2/custom/lights/spoilers_mid_right")) -- интерцепторы средн прав
defineProperty("spoilers_inn_left", globalPropertyf("tu154b2/custom/lights/spoilers_inn_left")) -- интерцепторы внутр лев
defineProperty("spoilers_inn_right", globalPropertyf("tu154b2/custom/lights/spoilers_inn_right")) -- интерцепторы внутр прав

defineProperty("flaps_unsync", globalPropertyf("tu154b2/custom/lights/flaps_unsync")) -- рассинхр закрылки
defineProperty("slats_unsync", globalPropertyf("tu154b2/custom/lights/slats_unsync")) -- рассинхр предкр
defineProperty("slats_extended", globalPropertyf("tu154b2/custom/lights/slats_extended")) -- предкрылки выпущены

defineProperty("to_rudder", globalPropertyf("tu154b2/custom/lights/to_rudder")) -- взлет-посадка РН
defineProperty("to_elevator", globalPropertyf("tu154b2/custom/lights/to_elevator")) -- взлет-посадка РВ
defineProperty("trimm_zero_course", globalPropertyf("tu154b2/custom/lights/trimm_zero_course")) -- нетрально курс
defineProperty("trimm_zero_roll", globalPropertyf("tu154b2/custom/lights/trimm_zero_roll")) -- нетрально крен
defineProperty("trimm_zero_pitch", globalPropertyf("tu154b2/custom/lights/trimm_zero_pitch")) -- нетрально тангаж

defineProperty("gears_not_ext", globalPropertyf("tu154b2/custom/lights/gears_not_ext")) -- шасси не выпущенны
defineProperty("gears_red_left", globalPropertyf("tu154b2/custom/lights/gears_red_left")) -- шасси 
defineProperty("gears_red_front", globalPropertyf("tu154b2/custom/lights/gears_red_front")) -- шасси 
defineProperty("gears_red_right", globalPropertyf("tu154b2/custom/lights/gears_red_right")) -- шасси 
defineProperty("gears_green_left", globalPropertyf("tu154b2/custom/lights/gears_green_left")) -- шасси 
defineProperty("gears_green_front", globalPropertyf("tu154b2/custom/lights/gears_green_front")) -- шасси 
defineProperty("gears_green_right", globalPropertyf("tu154b2/custom/lights/gears_green_right")) -- шасси 

defineProperty("gears_red_left_eng", globalPropertyf("tu154b2/custom/lights/gears_red_left_eng")) -- шасси 
defineProperty("gears_red_front_eng", globalPropertyf("tu154b2/custom/lights/gears_red_front_eng")) -- шасси 
defineProperty("gears_red_right_eng", globalPropertyf("tu154b2/custom/lights/gears_red_right_eng")) -- шасси 
defineProperty("gears_green_left_eng", globalPropertyf("tu154b2/custom/lights/gears_green_left_eng")) -- шасси 
defineProperty("gears_green_front_eng", globalPropertyf("tu154b2/custom/lights/gears_green_front_eng")) -- шасси 
defineProperty("gears_green_right_eng", globalPropertyf("tu154b2/custom/lights/gears_green_right_eng")) -- шасси 


-- sources
defineProperty("elevator_L", globalPropertyf("tu154b2/custom/controlls/elev_L_phys")) -- Degrees, positive is trailing-edge down.
--defineProperty("elevator_R", globalPropertyf("sim/flightmodel/controls/hstab2_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("stab_pos", globalPropertyf("sim/flightmodel2/controls/elevator_trim")) -- sim pitch trimmer
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too

defineProperty("spd_brk_inn_L", globalProperty("sim/flightmodel2/wing/speedbrake1_deg[0]")) -- inner speedbrake left Degrees
defineProperty("spd_brk_inn_R", globalProperty("sim/flightmodel2/wing/speedbrake1_deg[1]")) -- inner speedbrake right Degrees

defineProperty("spd_brk_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_spo2def")) -- middle speedbrake left Degrees
defineProperty("spd_brk_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_spo2def")) -- middle speedbrake right Degrees

defineProperty("int_pitch_trim", globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("int_roll_trim", globalPropertyf("tu154b2/custom/trimmers/int_roll_trim")) -- положение триммера элеронов
defineProperty("int_yaw_trim", globalPropertyf("tu154b2/custom/trimmers/int_yaw_trim")) -- положение триммера руля направления

defineProperty("control_force_pos", globalPropertyf("tu154b2/custom/controls/control_force_pos")) -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
defineProperty("control_force_pos_rud", globalPropertyf("tu154b2/custom/controls/control_force_pos_rud")) -- положение загружателя РН. 0 - выклчюен, 1 - подключен

defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 


defineProperty("indicated_airspeed", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot")) -- приборная скорость
defineProperty("machno", globalPropertyf("sim/flightmodel/misc/machno")) -- скорость Маха

defineProperty("anim_rud1", globalPropertyf("tu154b2/custom/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154b2/custom/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154b2/custom/controlls/throttle_3")) -- РУД 3

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2
defineProperty("flaps_power_cap", globalPropertyf("sim/custom/b2/flaps_power_cap"))
defineProperty("flaps_power", globalPropertyf("sim/custom/b2/flaps_power"))

-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

-- other datarefs
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- control surfaces

--defineProperty("slats", globalPropertyf("sim/flightmodel/controls/slatrat")) -- slats position. this one works
--defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too

defineProperty("rv5_alt_L", globalPropertyf("tu154b2/custom/misc/rv5_alt_left"))  -- высота на левом высотомере
defineProperty("rv5_alt_R", globalPropertyf("tu154b2/custom/misc/rv5_alt_right"))  -- высота на левом высотомере
defineProperty("trimm_azs", globalPropertyi("sim/custom/switchers/emerg_trimm_azs"))

-- alarm
defineProperty("main_gear_flaps", globalPropertyi("tu154b2/custom/alarm/main_gear_flaps")) -- не взлетное положение закрылков или не выпущенны шасси

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("elev_coeff", globalPropertyf("tu154b2/custom/controlls/elev_coeff"))

defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

cockpit_80s = globalPropertyi("sim/custom/b2/kontur_70th")
flaps_lever = globalPropertyf("tu154b2/custom/controll/flaps_lever")

local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_L.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_sound_2_L= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')
local trimm_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/trimm_up_L.wav')

local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_R.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local switcher_sound_2_R= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')
local trimm_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/trimm_up_R.wav')

local panel_glare_x=0
local panel_glare_z=-22.931004
local panel_ovhd_left_x=-0.21616736
local panel_ovhd_left_z=-22.862213
local panel_ovhd_x=0.07941604
local panel_ovhd_z=-22.850542
local panel_bust_x=-0.09960743
local panel_bust_z=-22.998503
local panel_trimm_x=-0.09647793
local panel_trimm_z=-22.479979
local panel_azs_x=-0.9031849
local panel_azs_z=-21.92727
local yoke_x=-0.6186783
local yoke_z=-22.8614
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


local passed = get(frame_time)

local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(buster_on_1, 0)
		set(buster_on_2, 0)
		set(buster_on_3, 0)
		
		set(busters_cap, 1)
		
		set(nosewheel_turn_sel, 1)
		set(nosewheel_turn_cap, 1)
		
	end
	
	notLoaded = false
end


local stab_work_lit = false
local stab_work_timer = 0
local stab_pos_last = get(stab_pos)

local forcer_lit = false
local forcer_timer = 0

local forcer_rud_lit = false
local forcer_timer_rud = 0

local flap_L_pos_last = 0
local flap_R_pos_last = 0

local slats_lit = false
local slats_timer = 0
local slats_last = 0

local gear_timer = 0

local ind_tbl = {
{-20, -20},
{-15, -15},
{-10, -10},
{-5, -5},
{0, 0},
{5, 5},
{10, 10},
{15, 14}, -- fail
{20, 16},
{25, 17.8}, 
{30, 20},
{100, 20}}

local function lamps()
	local test_btn = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local test_btn_eng = get(lamp_test_eng) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local stab_work_brt = 0
	local stab_pos_now = get(stab_pos)
	
	--print(stab_pos_now, stab_pos_now - stab_pos_last)
	if math.abs(stab_pos_now - stab_pos_last) > 0.01 * passed then 
		stab_work_timer = stab_work_timer + passed
		if stab_work_timer > 0.5 then
			stab_work_timer = 0
			stab_work_lit = not stab_work_lit
		end
	else
		stab_work_timer = 0
		stab_work_lit = false
	end
	if stab_work_lit then stab_work_brt = 1 end
	stab_work_brt = math.max(stab_work_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(stab_work, stab_work_brt) end

	stab_pos_last = stab_pos_now
	
	--  - get(flap_inn_R)
	local flap_pos_now_L = get(flap_inn_L)
	local flap_pos_now_R = get(flap_inn_R)
	
	local flaps_1_valve_brt = 0--math.min(1, get(flap_inn_L))
	if flap_L_pos_last ~= flap_pos_now_L then flaps_1_valve_brt = 1 end
	flaps_1_valve_brt = math.max(flaps_1_valve_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(flaps_1_valve, flaps_1_valve_brt) end
	
	local flaps_2_valve_brt = 0--math.min(1, get(flap_inn_R))
	if flap_R_pos_last ~= flap_pos_now_R then flaps_2_valve_brt = 1 end
	flaps_2_valve_brt = math.max(flaps_2_valve_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(flaps_2_valve, flaps_2_valve_brt) end
	
	flap_L_pos_last = flap_pos_now_L
	flap_R_pos_last = flap_pos_now_R
		
	local spoilers_mid_left_brt = math.min(1, get(spd_brk_mid_L))
	spoilers_mid_left_brt = math.max(spoilers_mid_left_brt * lamps_brt, test_btn)
	set(spoilers_mid_left, spoilers_mid_left_brt)	

	local spoilers_mid_right_brt = math.min(1, get(spd_brk_mid_R))
	spoilers_mid_right_brt = math.max(spoilers_mid_right_brt * lamps_brt, test_btn) 
	set(spoilers_mid_right, spoilers_mid_right_brt)	

	local spoilers_inn_left_brt = math.min(1, get(spd_brk_inn_L))
	spoilers_inn_left_brt = math.max(spoilers_inn_left_brt * lamps_brt, test_btn) 
	set(spoilers_inn_left, spoilers_inn_left_brt)	

	local spoilers_inn_right_brt = math.min(1, get(spd_brk_inn_R))
	spoilers_inn_right_brt = math.max(spoilers_inn_right_brt * lamps_brt, test_btn)
	set(spoilers_inn_right, spoilers_inn_right_brt)		
	
	
	
	local flaps_unsync_brt = 0
	if math.abs(flap_pos_now_L - flap_pos_now_R) >= 3 then flaps_unsync_brt = 1 end
	flaps_unsync_brt = math.max(flaps_unsync_brt * lamps_brt, test_btn)
	set(flaps_unsync, flaps_unsync_brt)	

	local slats_unsync_brt = 0
	slats_unsync_brt = math.max(slats_unsync_brt * lamps_brt, test_btn)
	set(slats_unsync, slats_unsync_brt)	

	local slats_extended_brt = 0
	local slats_now = get(slats)
	if math.abs(slats_now - slats_last) ~= 0 then 
		slats_timer = slats_timer + passed
		if slats_timer > 0.5 then
			slats_timer = 0
			slats_lit = not slats_lit
		end
	elseif slats_now > 0.1 then
			slats_timer = 0
			slats_lit = true	
	else
		stab_work_timer = 0
		slats_lit = false
	end
	if slats_lit then slats_extended_brt = 1 end

	slats_last = slats_now
	slats_extended_brt = math.max(slats_extended_brt * lamps_brt, test_btn)
	if get(ismaster) ~= 1 then set(slats_extended, slats_extended_brt) end	
	

	
	local to_rudder_brt = 0
	local to_elevator_brt = 0
	
	-- elevator forcer
	local forcer_pos = get(control_force_pos)	
	if forcer_pos < 1 and forcer_pos > 0 then 
		forcer_timer = forcer_timer + passed 
		if forcer_timer > 0.5 then
			forcer_timer = 0
			forcer_lit = not forcer_lit
		end
	elseif forcer_pos == 0 then
		forcer_lit = true
	else 
		forcer_lit = false
	end
	
	if forcer_lit then 
		--to_rudder_brt = 1 
		to_elevator_brt = 1
	end	
	
	-- rudder forcer
	local forcer_rud_pos = get(control_force_pos_rud)
	if forcer_rud_pos < 1 and forcer_rud_pos > 0 then 
		forcer_timer_rud = forcer_timer_rud + passed 
		if forcer_timer_rud > 0.5 then
			forcer_timer_rud = 0
			forcer_rud_lit = not forcer_rud_lit
		end
	elseif forcer_rud_pos == 0 then
		forcer_rud_lit = true
	else 
		forcer_rud_lit = false
	end
	
	if forcer_rud_lit then 
		to_rudder_brt = 1 
		--to_elevator_brt = 1
	end		
	
	
	to_rudder_brt = math.max(to_rudder_brt * lamps_brt, test_btn)
	set(to_rudder, to_rudder_brt)	
	
	to_elevator_brt = math.max(to_elevator_brt * lamps_brt, test_btn)
	set(to_elevator, to_elevator_brt)	

	local trimm_zero_course_brt = 0
	if math.abs(get(int_yaw_trim)) < 0.002 then trimm_zero_course_brt = 1 end
	trimm_zero_course_brt = math.max(trimm_zero_course_brt * lamps_brt, test_btn)
	set(trimm_zero_course, trimm_zero_course_brt)	

	local trimm_zero_roll_brt = 0
	if math.abs(get(int_roll_trim)) < 0.002 then trimm_zero_roll_brt = 1 end
	trimm_zero_roll_brt = math.max(trimm_zero_roll_brt * lamps_brt, test_btn)
	set(trimm_zero_roll, trimm_zero_roll_brt)	

	local trimm_zero_pitch_brt = 0
	if math.abs(get(int_pitch_trim)) < 0.004 then trimm_zero_pitch_brt = 1 end
	trimm_zero_pitch_brt = math.max(trimm_zero_pitch_brt * lamps_brt, test_btn)
	set(trimm_zero_pitch, trimm_zero_pitch_brt)		

	local gear_F_pos = get(gear1_deploy)
	local gear_L_pos = get(gear2_deploy)
	local gear_R_pos = get(gear3_deploy)
	
	local gear_not_ext =(gear_F_pos < 0.99 or gear_L_pos < 0.99 or gear_R_pos < 0.99) and (get(anim_rud1) < 0.77 and get(anim_rud2)  < 0.77 and get(anim_rud3) < 0.77 ) and get(rv5_alt_L)<250 --(gear_F_pos < 0.99 or gear_L_pos < 0.99 or gear_R_pos < 0.99) and (get(indicated_airspeed) * 1.852 < 325 and math.min(get(rv5_alt_L), get(rv5_alt_R)) < 250)
	if get(cockpit_80s)==0 then
	--gear_not_ext = gear_not_ext and (get(anim_rud1) < 0.77 and get(anim_rud2)  < 0.77 and get(anim_rud3) < 0.77 and get(gear_lever) <= 0) 
		gear_not_ext =(gear_F_pos < 0.99 or gear_L_pos < 0.99 or gear_R_pos < 0.99) and (get(anim_rud1) < 0.77 and get(anim_rud2)  < 0.77 and get(anim_rud3) < 0.77 ) and (get(indicated_airspeed) * 1.852 < 325 or get(flaps_lever)>2)
	end
	-- any gear not on lock, speed less than 325 and throttles set les than 90%
	
	
	if gear_not_ext then
		gear_timer = gear_timer + passed
	else
		gear_timer = 0
	end
	
	if gear_timer > 0.6 then gear_timer = 0 end
	
	
	local gears_not_ext_brt = math.max(bool2int(gear_timer > 0.3) * lamps_brt, test_btn) 
	
	
	
	set(gears_not_ext, gears_not_ext_brt)	
	
	local gears_red_left_brt = bool2int(gear_L_pos < 0.99 and gear_L_pos > 0.01)
	gears_red_left_brt = math.max(gears_red_left_brt * lamps_brt, test_btn)
	set(gears_red_left, gears_red_left_brt)
	
	local gears_red_front_brt = bool2int(gear_F_pos < 0.99 and gear_F_pos > 0.01)
	gears_red_front_brt = math.max(gears_red_front_brt * lamps_brt, test_btn)
	set(gears_red_front, gears_red_front_brt)
	
	local gears_red_right_brt = bool2int(gear_R_pos < 0.99 and gear_R_pos > 0.01)
	gears_red_right_brt = math.max(gears_red_right_brt * lamps_brt, test_btn)
	set(gears_red_right, gears_red_right_brt)
	
	local gears_green_left_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_left_brt = math.max(gears_green_left_brt * lamps_brt, test_btn)
	set(gears_green_left, gears_green_left_brt)
	
	local gears_green_front_brt = bool2int(gear_F_pos >= 0.99)
	gears_green_front_brt = math.max(gears_green_front_brt * lamps_brt, test_btn)
	set(gears_green_front, gears_green_front_brt)
	
	local gears_green_right_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_right_brt = math.max(gears_green_right_brt * lamps_brt, test_btn)
	set(gears_green_right, gears_green_right_brt)
	
	
	
	local gears_red_left_eng_brt = bool2int(gear_L_pos < 0.99 and gear_L_pos > 0.01)
	gears_red_left_eng_brt = math.max(gears_red_left_eng_brt * lamps_brt, test_btn_eng)
	set(gears_red_left_eng, gears_red_left_eng_brt)
	
	local gears_red_front_eng_brt = bool2int(gear_F_pos < 0.99 and gear_F_pos > 0.01)
	gears_red_front_eng_brt = math.max(gears_red_front_eng_brt * lamps_brt, test_btn_eng)
	set(gears_red_front_eng, gears_red_front_eng_brt)
	
	local gears_red_right_eng_brt = bool2int(gear_R_pos < 0.99 and gear_R_pos > 0.01)
	gears_red_right_eng_brt = math.max(gears_red_right_eng_brt * lamps_brt, test_btn_eng)
	set(gears_red_right_eng, gears_red_right_eng_brt)
	
	local gears_green_left_eng_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_left_eng_brt = math.max(gears_green_left_eng_brt * lamps_brt, test_btn_eng)
	set(gears_green_left_eng, gears_green_left_eng_brt)
	
	local gears_green_front_eng_brt = bool2int(gear_F_pos >= 0.99)
	gears_green_front_eng_brt = math.max(gears_green_front_eng_brt * lamps_brt, test_btn_eng)
	set(gears_green_front_eng, gears_green_front_eng_brt)
	
	local gears_green_right_eng_brt = bool2int(gear_L_pos >= 0.99)
	gears_green_right_eng_brt = math.max(gears_green_right_eng_brt * lamps_brt, test_btn_eng)
	set(gears_green_right_eng, gears_green_right_eng_brt)	
	
	
	
	
	
	
	
	
	-- alarm
	local sound_alarm = gear_not_ext or ((flap_pos_now_L < 14 or flap_pos_now_R < 14 or slats_now < 0.5) and (get(anim_rud1) > 0.63 or get(anim_rud2) > 0.63 or get(anim_rud3) > 0.63) and math.max(get(deflection_mtr_2), get(deflection_mtr_3)) > 0.05)
	
	set(main_gear_flaps, bool2int(sound_alarm))
	
	

end



local stab_ind_act = 0
local elev_ind_act = 0
local flap_ind_L_act = 0
local flap_ind_R_act = 0

-- local mach_tbl = {
-- {-10, 1},
-- {0, 1},
-- {0.1, 1},
-- {0.25, 0.5},
-- {0.34, 0.28},
-- {0.38, 0.22},
-- {0.5, 0.21},
-- {0.6, 0.21}, -- fail
-- {0.7, 0.2},
-- {0.8, 0.19}, 
-- {0.9, 0.13},
-- {1, 0.1},
-- {10, 0.1}}


local function gauges()
	-- add power here
	local stabil_ind = 0
	local elev_ind = 0
	local flap_ind_L = 0
	local flap_ind_R = 0
	
	--print(get(stab_pos))
	
	if get(bus36_volt_left) > 30 then
		stabil_ind = get(stab_pos) * 5.5
		elev_ind = -get(elevator_L)
		flap_ind_L = get(flap_inn_L)
		flap_ind_R = get(flap_inn_R)
	end
	
	-- calculate correction for elevator
	local ias = get(indicated_airspeed) * 1.852
	local mach = get(machno)
	
	-- if mach < 1 then elev_coef = 1 / interpolate(mach_tbl, mach)
	-- else elev_coef = 1/0.1 end
	
	
	
	
	
	stab_ind_act = stab_ind_act + (stabil_ind - stab_ind_act) * passed * 10
	elev_ind_act = elev_ind_act + (elev_ind - elev_ind_act) * passed * 10
	flap_ind_L_act = flap_ind_L_act + (flap_ind_L - flap_ind_L_act) * passed * 10
	flap_ind_R_act = flap_ind_R_act + (flap_ind_R - flap_ind_R_act) * passed * 10
	
	if get(ismaster) ~= 1 then
		set(stab_ind, stab_ind_act)
		set(elevator_ind, interpolate(ind_tbl, elev_ind_act))
		set(flap_left_ind, flap_ind_L_act)
		set(flap_right_ind, flap_ind_R_act)
	end
	
end

local changes_glare_prev=0
local changes_ovhd_prev=0
local changes_ovhd_left_prev=0
local changes_bust_prev=0
local emer_elev_prev=0
local changes_glare_prev_sw=0
local changes_glare_prev_sw2=0
local changes_ovhd_prev_sw=0
local changes_ovhd_left_prev_sw=0
local changes_bust_prev_sw=0
local emer_elev_prev_sw=0
local nosewheel_turn_enable_prev=0
local azs_prev=0
local trimm_prev=0


local function caps_check()

	local stab_man_cap_sw = get(stab_man_cap)
	local contr_force_cap_sw = get(contr_force_cap)
	local nosewheel_turn_cap_sw = get(nosewheel_turn_cap)
	local slat_man_cap_sw = get(slat_man_cap)
	local gears_retr_lock_cap_sw = get(gears_retr_lock_cap)
	local gears_ext_3GS_cap_sw = get(gears_ext_3GS_cap)
	local busters_cap_sw = get(busters_cap)
	local flaps_sel_cap_sw = get(flaps_sel_cap)
	local emerg_elev_trimm_cap_sw = get(emerg_elev_trimm_cap)
	local trimm=get(elev_trimm_switcher)
	
	if busters_cap_sw == 0 and get(buster_on_1) * get(buster_on_2) * get(buster_on_3) == 0 then 
		set(busters_cap, 1) 
		busters_cap_sw = 1
	end
	local changes_glare=stab_man_cap_sw + contr_force_cap_sw
	local changes_ovhd=gears_retr_lock_cap_sw + gears_ext_3GS_cap_sw + flaps_sel_cap_sw + get(flaps_power_cap)
	local changes_ovhd_left=nosewheel_turn_cap_sw + slat_man_cap_sw
	local changes_bust = busters_cap_sw 
	local emerg_elev_trimm_cap_sw=get(emerg_elev_trimm_cap)
	
	if changes_glare_prev~=changes_glare then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_glare_x, panel_glare_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_glare_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_glare_z,2)+math.pow(x_pos-panel_glare_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if changes_ovhd_prev~=changes_ovhd then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_ovhd_x, panel_ovhd_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_ovhd_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_ovhd_z,2)+math.pow(x_pos-panel_ovhd_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if changes_ovhd_left_prev~=changes_ovhd_left then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_ovhd_left_x, panel_ovhd_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_ovhd_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_ovhd_left_z,2)+math.pow(x_pos-panel_ovhd_left_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if changes_bust_prev~=changes_bust then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_bust_x, panel_bust_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_bust_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_bust_z,2)+math.pow(x_pos-panel_bust_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if emer_elev_prev~=emerg_elev_trimm_cap_sw then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_trimm_x, panel_trimm_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_trimm_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_trimm_z,2)+math.pow(x_pos-panel_trimm_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	
	if trimm_prev~=trimm then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (yoke_x, yoke_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-yoke_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-yoke_z,2)+math.pow(x_pos-yoke_x,2))/dist_gain)
		end
		setSampleGain(trimm_sound_L,gain_L*dist)
		setSampleGain(trimm_sound_R,gain_R*dist)
		playSample(trimm_sound_L, false)
		playSample(trimm_sound_R, false)
	end
	
	changes_glare_prev=changes_glare
	changes_ovhd_prev=changes_ovhd
    changes_ovhd_left_prev=changes_ovhd_left
    changes_bust_prev=changes_bust
	emer_elev_prev=emerg_elev_trimm_cap_sw
	trimm_prev=trimm
	
	-- set switchers under caps
	if nosewheel_turn_cap_sw == 0 then set(nosewheel_turn_sel, 0) end
	if contr_force_cap_sw == 0 then set(contr_force_set, 0) end
	if gears_retr_lock_cap_sw == 0 then set(gears_retr_lock, 0) end
	if flaps_sel_cap_sw == 0 then set(flaps_sel, 0) end
	if gears_ext_3GS_cap_sw == 0 then set(gears_ext_3GS, 0) end
end


local function swichers_check()


	
	local changes_glare=get(stab_setting)+get(contr_force_set)
	local changes_glare2=get(ail_trimm_sw)+get(rudd_trimm_sw)+get(stab_manual)
	local changes_ovhd_left=get(nosewheel_turn_sel)+get(slat_man)
	local changes_ovhd=get(gears_ext_3GS)+get(flaps_sel)+get(gears_retr_lock)+get(flaps_power)
	local changes_bust=get(buster_on_1)+get(buster_on_2)+get(buster_on_3)
	local emer_elev_sw = get(emerg_elev_trimm)
	local nosewheel_turn_enable_sw = get(nosewheel_turn_enable)
	local azs=get(trimm_azs)
	
	
	if changes_glare_prev_sw~=changes_glare then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_glare_x, panel_glare_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_glare_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_glare_z,2)+math.pow(x_pos-panel_glare_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	
	if changes_glare_prev_sw2~=changes_glare2 then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_glare_x, panel_glare_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_glare_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_glare_z,2)+math.pow(x_pos-panel_glare_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_2_L,gain_L*dist)
		setSampleGain(switcher_sound_2_R,gain_R*dist)
		playSample(switcher_sound_2_L, false)
		playSample(switcher_sound_2_R, false)
	end
	
	
	if changes_ovhd_prev_sw~=changes_ovhd then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_ovhd_x, panel_ovhd_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_ovhd_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_ovhd_z,2)+math.pow(x_pos-panel_ovhd_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	if changes_ovhd_left_prev_sw~=changes_ovhd_left then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_ovhd_left_x, panel_ovhd_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_ovhd_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_ovhd_left_z,2)+math.pow(x_pos-panel_ovhd_left_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	if changes_bust_prev_sw~=changes_bust then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_bust_x, panel_bust_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_bust_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_bust_z,2)+math.pow(x_pos-panel_bust_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	if nosewheel_turn_enable_prev~=nosewheel_turn_enable_sw then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (yoke_x, yoke_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-yoke_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-yoke_z,2)+math.pow(x_pos-yoke_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	if emer_elev_prev_sw~=emer_elev_sw then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_trimm_x, panel_trimm_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_trimm_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_trimm_z,2)+math.pow(x_pos-panel_trimm_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_2_L,gain_L*dist)
		setSampleGain(switcher_sound_2_R,gain_R*dist)
		playSample(switcher_sound_2_L, false)
		playSample(switcher_sound_2_R, false)
	end
	
	if azs_prev~=azs then	
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_azs_x, panel_azs_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_azs_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_azs_z,2)+math.pow(x_pos-panel_azs_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end

	changes_glare_prev_sw=changes_glare
	changes_glare_prev_sw2=changes_glare2
	changes_ovhd_prev_sw=changes_ovhd
    changes_ovhd_left_prev_sw=changes_ovhd_left
    changes_bust_prev_sw=changes_bust
	emer_elev_prev_sw=emer_elev_sw
	nosewheel_turn_enable_prev=nosewheel_turn_enable_sw
	azs_prev=azs


end




local sim_start_timer = 0

function update()
	passed = get(frame_time)
	sim_start_timer = sim_start_timer + passed
	
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		swichers_check() -- make them sound
		caps_check() -- make them sound
	end	
	
	gauges()
	lamps()

end






