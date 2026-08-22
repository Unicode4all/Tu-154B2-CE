-- this is fire system panel
-- controls
lamp_test = globalPropertyi("tu154b2/custom/buttons/lamp_test_fire_panel") -- кнопка проверки ламп на пожарной панели	0
lamp_test_2 = globalPropertyi("tu154b2/custom/buttons/lamp_test_engines") -- кнопка проверки ламп на пожарной панели	0
smoke_test = globalPropertyi("tu154b2/custom/buttons/eng/smoke_test") -- проверка датчиков дыма
ext_test = globalPropertyi("tu154b2/custom/buttons/eng/ext_test") -- проверка огнетушителей

smoke_test1 = globalPropertyi("sim/custom/buttons/eng/smoke_test_1") -- проверка датчиков дыма
smoke_test2 = globalPropertyi("sim/custom/buttons/eng/smoke_test_2") -- проверка датчиков дыма
smoke_test3 = globalPropertyi("sim/custom/buttons/eng/smoke_test_3") -- проверка датчиков дыма
smoke_test4 = globalPropertyi("sim/custom/buttons/eng/smoke_test_4") -- проверка датчиков дыма
smoke_test5 = globalPropertyi("sim/custom/buttons/eng/smoke_test_5") -- проверка датчиков дыма
smoke_test6 = globalPropertyi("sim/custom/buttons/eng/smoke_test_6") -- проверка датчиков дыма
smoke_test7 = globalPropertyi("sim/custom/buttons/eng/smoke_test_7") -- проверка датчиков дыма
smoke_1btn = globalPropertyi("sim/custom/b2/smoke_1_button") -- проверка датчиков дыма
smoke_2btn = globalPropertyi("sim/custom/b2/smoke_2_button") -- проверка датчиков дыма





lamp_test_front = globalPropertyi("tu154b2/custom/buttons/lamp_test_front") -- кнопка проверки ламп передней панели

fire_ext_1 = globalPropertyi("tu154b2/custom/buttons/eng/fire_ext_1") -- очередь тушения пожара
fire_ext_2 = globalPropertyi("tu154b2/custom/buttons/eng/fire_ext_2") -- очередь тушения пожара
fire_ext_3 = globalPropertyi("tu154b2/custom/buttons/eng/fire_ext_3") -- очередь тушения пожара
cold_eng_1 = globalPropertyi("sim/custom/b2/fire_eng1_button") -- подача хладона
cold_eng_2 = globalPropertyi("sim/custom/b2/fire_eng2_button") -- подача хладона
cold_eng_3 = globalPropertyi("sim/custom/b2/fire_eng3_button") -- подача хладона
cold_apu = globalPropertyi("sim/custom/b2/fire_apu_button") -- подача хладона
neutral_gas = globalPropertyi("tu154b2/custom/buttons/eng/neutral_gas") -- нейтральный газ

fire_sensor_sel = globalPropertyi("tu154b2/custom/switchers/eng/fire_sensor_sel") -- выбор группы датчиков
fire_place_sel = globalPropertyi("tu154b2/custom/switchers/eng/fire_place_sel") -- выбор отсека

fire_main_switch = globalPropertyi("tu154b2/custom/switchers/eng/fire_main_switch") -- выключатель пожарной системы
fire_buzzer = globalPropertyi("tu154b2/custom/switchers/eng/fire_buzzer") -- пожарная сирена
fire_buzzer_cap = globalPropertyi("tu154b2/custom/switchers/eng/fire_buzzer_cap") -- пожарная сирена

-- lamps
smoke_1 = globalPropertyf("tu154b2/custom/lights/fire/smoke_1") -- дым в отсеках
smoke_2 = globalPropertyf("tu154b2/custom/lights/fire/smoke_2") -- дым в отсеках
smoke_zone2_left = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone2_left") -- дым в отсеках
smoke_zone2_right = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone2_right") -- дым в отсеках
smoke_zone3 = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone3") -- дым в отсеках
smoke_zone4 = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone4") -- дым в отсеках
smoke_zone5_left = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone5_left") -- дым в отсеках
smoke_zone5_right = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone5_right") -- дым в отсеках
smoke_zone6 = globalPropertyf("tu154b2/custom/lights/fire/smoke_zone6") -- дым в отсеках

fire_eng_1 = globalPropertyf("tu154b2/custom/lights/fire/fire_eng_1") -- пожар в двигателе
fire_eng_2 = globalPropertyf("tu154b2/custom/lights/fire/fire_eng_2") -- пожар в двигателе
fire_eng_3 = globalPropertyf("tu154b2/custom/lights/fire/fire_eng_3") -- пожар в двигателе

overheat_eng_1 = globalPropertyf("tu154b2/custom/lights/fire/overheat_eng_1") -- перегрев двигателя
overheat_eng_2 = globalPropertyf("tu154b2/custom/lights/fire/overheat_eng_2") -- перегрев двигателя
overheat_eng_3 = globalPropertyf("tu154b2/custom/lights/fire/overheat_eng_3") -- перегрев двигателя

fuel_off_eng_1 = globalPropertyf("tu154b2/custom/lights/fire/fuel_off_eng_1") -- топливо закрыто
fuel_off_eng_2 = globalPropertyf("tu154b2/custom/lights/fire/fuel_off_eng_2") -- топливо закрыто
fuel_off_eng_3 = globalPropertyf("tu154b2/custom/lights/fire/fuel_off_eng_3") -- топливо закрыто

check_overheat = globalPropertyf("tu154b2/custom/lights/fire/check_overheat") -- проверь перегрев и дым
fire_apu = globalPropertyf("tu154b2/custom/lights/fire/fire_apu") -- пожар ВСУ
turn_on_spz = globalPropertyf("tu154b2/custom/lights/fire/turn_on_spz") -- включи СПЗ


button_fire_eng_1 = globalPropertyf("tu154b2/custom/lights/button/fire_eng_1") -- тушение пожара двиг 1
button_fire_eng_2 = globalPropertyf("tu154b2/custom/lights/button/fire_eng_2") -- тушение пожара двиг 2
button_fire_eng_3 = globalPropertyf("tu154b2/custom/lights/button/fire_eng_3") -- тушение пожара двиг 3
button_fire_apu = globalPropertyf("tu154b2/custom/lights/button/fire_apu") -- тушение пожара ВСУ
button_fire_ng = globalPropertyf("tu154b2/custom/lights/button/fire_ng") -- тушение пожара НГ
button_fire_turn_3 = globalPropertyf("tu154b2/custom/lights/button/fire_turn_3") -- тушение пожара двиг 1
button_fire_turn_2 = globalPropertyf("tu154b2/custom/lights/button/fire_turn_2") -- тушение пожара двиг 1
button_fire_turn_1 = globalPropertyf("tu154b2/custom/lights/button/fire_turn_1") -- тушение пожара двиг 1

fire_lamp = globalPropertyf("sim/custom/lights/fire/fire_switch") -- ПОЖАР
fire_lamp_front = globalPropertyf("tu154b2/custom/lights/fire") -- ПОЖАР



eng1_dangerous_vibro = globalPropertyf("tu154b2/custom/lights/engines/eng1_dangerous_vibro") -- опасная вибрация
eng2_dangerous_vibro = globalPropertyf("tu154b2/custom/lights/engines/eng2_dangerous_vibro") -- опасная вибрация
eng3_dangerous_vibro = globalPropertyf("tu154b2/custom/lights/engines/eng3_dangerous_vibro") -- опасная вибрация




day_night_set = globalPropertyf("tu154b2/custom/lights/day_night_set") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

-- power
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")

-- engines
eng1_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
eng2_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[1]") -- engine 2 rpm
eng3_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[2]") -- engine 3 rpm

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

-- other sources


ext_used_1 = globalPropertyi("tu154b2/custom/fire/ext_used_1") -- огнетушитель использован
ext_used_2 = globalPropertyi("tu154b2/custom/fire/ext_used_2") -- огнетушитель использован
ext_used_3 = globalPropertyi("tu154b2/custom/fire/ext_used_3") -- огнетушитель использован

ng_used = globalPropertyi("tu154b2/custom/fire/ng_used") -- НГ использован

valve_open_1 = globalPropertyi("tu154b2/custom/fire/valve_open_1") -- кран тушения двиг 1
valve_open_2 = globalPropertyi("tu154b2/custom/fire/valve_open_2") -- кран тушения двиг 2
valve_open_3 = globalPropertyi("tu154b2/custom/fire/valve_open_3") -- кран тушения двиг 3
valve_open_4 = globalPropertyi("tu154b2/custom/fire/valve_open_4") -- кран тушения ВСУ

engine_fire_state_1 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_1") -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
engine_fire_state_2 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_2") -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
engine_fire_state_3 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_3") -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
engine_fire_state_4 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_4") -- состояние ВСУ. 0 - норм, 1 - перегрев, 2 - пожар

engine_fuel_cut_1 = globalPropertyi("tu154b2/custom/fire/engine_fuel_cut_1") -- топливо перекрыто
engine_fuel_cut_2 = globalPropertyi("tu154b2/custom/fire/engine_fuel_cut_2") -- топливо перекрыто
engine_fuel_cut_3 = globalPropertyi("tu154b2/custom/fire/engine_fuel_cut_3") -- топливо перекрыто

fire_vlv_open_1 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_1") -- пожарный кран открыт
fire_vlv_open_2 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_2") -- пожарный кран открыт
fire_vlv_open_3 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_3") -- пожарный кран открыт

fire_detected = globalPropertyi("tu154b2/custom/fire/fire_detected") -- обнаружен пожар
fire_siren = globalPropertyi("tu154b2/custom/fire/fire_siren") -- работа сирены

azs1 = globalPropertyi("sim/custom/b2/azs_fireext1")
azs2 = globalPropertyi("sim/custom/b2/azs_fireext2")

fire_bag1 = globalPropertyi("tu154b2/custom/fire/fire_bag1")
fire_bag2 = globalPropertyi("tu154b2/custom/fire/fire_bag2")
pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")

-- sounds
local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_L.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_sound_2_L= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_R.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local switcher_sound_2_R= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')
local panel_x=0.727
local panel_z=-21.17
local panel2_x=0.86803097
local panel2_z=-21.902483
local dist_gain=5
local passed = get(frame_time)


local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(fire_main_switch, 0)

	end
	
	notLoaded = false
end

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

local lamp_test_last = get(lamp_test)
local smoke1_test_last = get(smoke_1btn)
local smoke2_test_last = get(smoke_2btn)
local ext_test_last = get(ext_test)
local fire_ext_1_last = get(fire_ext_1)
local fire_ext_2_last = get(fire_ext_2)
local fire_ext_3_last = get(fire_ext_3)
local cold_eng_1_last = get(cold_eng_1)
local cold_eng_2_last = get(cold_eng_2)
local cold_eng_3_last = get(cold_eng_3)
local cold_apu_last = get(cold_apu)
local neutral_gas_last = get(neutral_gas)

local fire_sensor_sel_last = get(fire_sensor_sel)
local fire_place_sel_last = get(fire_place_sel)

local fire_main_switch_last = get(fire_main_switch)
local fire_buzzer_last = get(fire_buzzer)

local fire_buzzer_cap_last = get(fire_buzzer_cap)

local smoke1_test_bt_last=get(smoke_test1)
local smoke2_test_bt_last=get(smoke_test2)
local smoke3_test_bt_last=get(smoke_test3)
local smoke4_test_bt_last=get(smoke_test4)
local smoke5_test_bt_last=get(smoke_test5)
local smoke6_test_bt_last=get(smoke_test6)
local smoke7_test_bt_last=get(smoke_test7)
local azs_last=0

local function swichers_check(gain_L, gain_R,dist)

	local lamp_test_sw = get(lamp_test)
	local smoke1_test_sw = get(smoke_1btn)
	local smoke2_test_sw = get(smoke_2btn)
	local ext_test_sw = get(ext_test)
	local fire_ext_1_sw = get(fire_ext_1)
	local fire_ext_2_sw = get(fire_ext_2)
	local fire_ext_3_sw = get(fire_ext_3)
	local cold_eng_1_sw = get(cold_eng_1)
	local cold_eng_2_sw = get(cold_eng_2)
	local cold_eng_3_sw = get(cold_eng_3)
	local cold_apu_sw = get(cold_apu)
	local neutral_gas_sw = get(neutral_gas)
	local azs=get(azs1)+get(azs2)
	local fire_sensor_sel_sw = get(fire_sensor_sel)
	local fire_place_sel_sw = get(fire_place_sel)

	local fire_main_switch_sw = get(fire_main_switch)
	local fire_buzzer_sw = get(fire_buzzer)

	local fire_buzzer_cap_sw = get(fire_buzzer_cap)
	
	local smoke1_test_bt=get(smoke_test1)
	local smoke2_test_bt=get(smoke_test2)
	local smoke3_test_bt=get(smoke_test3)
	local smoke4_test_bt=get(smoke_test4)
	local smoke5_test_bt=get(smoke_test5)
	local smoke6_test_bt=get(smoke_test6)
	local smoke7_test_bt=get(smoke_test7)
	
	
	local changes_but = lamp_test_sw + smoke1_test_sw + smoke2_test_sw + ext_test_sw + fire_ext_1_sw + fire_ext_2_sw + fire_ext_3_sw
	changes_but=changes_but+smoke1_test_bt+smoke2_test_bt+smoke3_test_bt+smoke4_test_bt+smoke5_test_bt+smoke6_test_bt+smoke7_test_bt
	changes_but = changes_but + cold_eng_1_sw + cold_eng_2_sw + cold_eng_3_sw + cold_apu_sw + neutral_gas_sw
	
	changes_but = changes_but - lamp_test_last - smoke1_test_last - smoke2_test_last - ext_test_last - fire_ext_1_last - fire_ext_2_last - fire_ext_3_last
	changes_but = changes_but - smoke1_test_bt_last - smoke2_test_bt_last - smoke3_test_bt_last - smoke4_test_bt_last - smoke5_test_bt_last- smoke6_test_bt_last - smoke7_test_bt_last
	changes_but = changes_but - cold_eng_1_last - cold_eng_2_last - cold_eng_3_last - cold_apu_last - neutral_gas_last
	
	if changes_but ~= 0 then
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false) 
		playSample(button_sound_R, false) 
	end -- play sound
	
	local changes_rot = fire_sensor_sel_sw + fire_place_sel_sw - fire_sensor_sel_last - fire_place_sel_last
	
	if changes_rot ~= 0 then 
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false) 
		playSample(rotary_sound_R, false) 
	end -- play sound
	
	local changes_sw = fire_main_switch_sw - fire_main_switch_last+fire_buzzer_sw-fire_buzzer_last
	
	if changes_sw ~= 0 then 
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false) 
		playSample(switcher_sound_R, false) 
	end -- play sound
	
	if fire_buzzer_cap_sw ~= fire_buzzer_cap_last then 
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false) 
		playSample(cap_sound_R, false)  
	end -- play sound
	
	
	if azs_last~=azs then 
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain2_L, gain2_R = inn_balance (panel2_x, panel2_z, x_pos, z_pos , plt_hdg)
		gain2_L=gain2_L*1000
		gain2_R=gain2_R*1000
		local dist2=1
		if z_pos-panel2_z~=0 then
			dist2=math.min(1,1/math.sqrt(math.pow(z_pos-panel2_z,2)+math.pow(x_pos-panel2_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain2_L*dist2)
		setSampleGain(switcher_sound_R,gain2_R*dist2)
		playSample(switcher_sound_L, false) 
		playSample(switcher_sound_R, false) 
	end 
	
	
	if fire_buzzer_cap_sw == 0 then 
	set(fire_buzzer, 1) 
	end
	
	
	lamp_test_last = lamp_test_sw
	smoke1_test_last = smoke1_test_sw
	smoke2_test_last = smoke2_test_sw
	ext_test_last = ext_test_sw
	fire_ext_1_last = fire_ext_1_sw
	fire_ext_2_last = fire_ext_2_sw
	fire_ext_3_last = fire_ext_3_sw
	cold_eng_1_last = cold_eng_1_sw
	cold_eng_2_last = cold_eng_2_sw
	cold_eng_3_last = cold_eng_3_sw
	cold_apu_last = cold_apu_sw
	neutral_gas_last = neutral_gas_sw
	azs_last=azs
	
	fire_sensor_sel_last = fire_sensor_sel_sw
	fire_place_sel_last = fire_place_sel_sw

	fire_main_switch_last = fire_main_switch_sw
	fire_buzzer_last = fire_buzzer_sw

	fire_buzzer_cap_last = fire_buzzer_cap_sw

	smoke1_test_bt_last=smoke1_test_bt
	smoke2_test_bt_last=smoke2_test_bt
	smoke3_test_bt_last=smoke3_test_bt
	smoke4_test_bt_last=smoke4_test_bt
	smoke5_test_bt_last=smoke5_test_bt
	smoke6_test_bt_last=smoke6_test_bt
	smoke7_test_bt_last=smoke7_test_bt
	


end

local sheck_smoke_lit = false
local check_smoke_counter = 0

local fire_lit = false
local fire_counter = 0


local function lamps()

	local power_sw = get(fire_main_switch)
	local test_btn = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * power_sw
	local test_btn_2 = get(lamp_test_2) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)-- * power_sw
	
	local test_btn_frnt = get(lamp_test) * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * power_sw
	
	
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local smoke_test_but1 = get(fire_bag1)
	
    local smoke_test_but2 = get(fire_bag2)
	
	local smoke_1_brt = math.max(math.max(smoke_test_but1,get(smoke_1btn)) * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_1, smoke_1_brt)
	
	local smoke_2_brt = math.max(math.max(smoke_test_but2,get(smoke_2btn)) * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_2, smoke_2_brt)	

	local smoke_zone2_left_brt = math.max(smoke_test_but1 * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone2_left, smoke_zone2_left_brt)
	
	local smoke_zone2_right_brt = math.max(smoke_test_but1 * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone2_right, smoke_zone2_right_brt)

	local smoke_zone3_brt = math.max(smoke_test_but1 * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone3, smoke_zone3_brt)
	
	local smoke_zone4_brt = math.max(smoke_test_but1 * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone4, smoke_zone4_brt)
	
	local smoke_zone5_left_brt = math.max(smoke_test_but1 * power_sw * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone5_left, smoke_zone5_left_brt)
	
	local smoke_zone5_right_brt = math.max(smoke_test_but1 * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone5_right, smoke_zone5_right_brt)
	
	local smoke_zone6_brt = math.max(smoke_test_but1 * power_sw * lamps_brt * day_night, test_btn) -- fake for now
	set(smoke_zone6, smoke_zone6_brt)
	
	
	local eng_fire_1 = get(engine_fire_state_1)
	local eng_fire_2 = get(engine_fire_state_2)
	local eng_fire_3 = get(engine_fire_state_3)
	
	
	local fire_eng_1_brt = 0
	if eng_fire_1 == 2 or get(button_fire_eng_1)>0 then fire_eng_1_brt = 1 end
	fire_eng_1_brt = math.max(fire_eng_1_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_eng_1, fire_eng_1_brt)
	
	local fire_eng_2_brt = 0
	if eng_fire_2 == 2 or get(button_fire_eng_2)>0 then fire_eng_2_brt = 1 end
	fire_eng_2_brt = math.max(fire_eng_2_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_eng_2, fire_eng_2_brt)
	
	local fire_eng_3_brt = 0
	if eng_fire_3 == 2 or get(button_fire_eng_3)>0 then fire_eng_3_brt = 1 end
	fire_eng_3_brt = math.max(fire_eng_3_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_eng_3, fire_eng_3_brt)
	
	-- local overheat_eng_1_brt = 0
	-- if eng_fire_1 > 0 then overheat_eng_1_brt = 1 end
	-- overheat_eng_1_brt = math.max(overheat_eng_1_brt * power_sw * lamps_brt * day_night, test_btn)
	-- set(overheat_eng_1, overheat_eng_1_brt)
	
	-- local overheat_eng_2_brt = 0
	-- if eng_fire_2 > 0 then overheat_eng_2_brt = 1 end
	-- overheat_eng_2_brt = math.max(overheat_eng_2_brt * power_sw * lamps_brt * day_night, test_btn)
	-- set(overheat_eng_2, overheat_eng_2_brt)
	
	-- local overheat_eng_3_brt = 0
	-- if eng_fire_3 > 0 then overheat_eng_3_brt = 1 end
	-- overheat_eng_3_brt = math.max(overheat_eng_3_brt * power_sw * lamps_brt * day_night, test_btn)
	-- set(overheat_eng_3, overheat_eng_3_brt)

	-- local fuel_off_eng_1_brt = 0
	-- if get(fire_vlv_open_1) < 0.5 then fuel_off_eng_1_brt = 1 end
	-- fuel_off_eng_1_brt = math.max(fuel_off_eng_1_brt * power_sw * lamps_brt * day_night, test_btn)
	-- set(fuel_off_eng_1, fuel_off_eng_1_brt)
	
	-- local fuel_off_eng_2_brt = 0
	-- if get(fire_vlv_open_2) < 0.5 then fuel_off_eng_2_brt = 1 end
	-- fuel_off_eng_2_brt = math.max(fuel_off_eng_2_brt * power_sw * lamps_brt * day_night, test_btn)
	-- set(fuel_off_eng_2, fuel_off_eng_2_brt)
	
	-- local fuel_off_eng_3_brt = 0
	-- if get(fire_vlv_open_3) < 0.5 then fuel_off_eng_3_brt = 1 end
	-- fuel_off_eng_3_brt = math.max(fuel_off_eng_3_brt * power_sw * lamps_brt * day_night, test_btn)
	-- set(fuel_off_eng_3, fuel_off_eng_3_brt)
	
	local fire_det = get(fire_detected)
	if fire_det == 1 and get(fire_siren) == 0 then 
		sheck_smoke_lit = true
	elseif fire_det == 1 then
		check_smoke_counter = check_smoke_counter + passed
		if check_smoke_counter > 0.4 then
			check_smoke_counter = 0
			sheck_smoke_lit = not sheck_smoke_lit
		end
	else 
		sheck_smoke_lit = false 
	end
		
	local check_overheat_brt = 0
	if sheck_smoke_lit then check_overheat_brt = 1 end
	check_overheat_brt = math.max(check_overheat_brt * lamps_brt * day_night, test_btn)
	set(check_overheat, check_overheat_brt)
	
	local fire_apu_brt = 0
	if get(engine_fire_state_4) > 0 or get(button_fire_apu)>0 then fire_apu_brt = 1 end
	fire_apu_brt = math.max(fire_apu_brt * power_sw * lamps_brt * day_night, test_btn)
	set(fire_apu, fire_apu_brt)
	
	-- local turn_on_spz_brt = math.max((1 - power_sw) * lamps_brt * day_night, test_btn)
	-- set(turn_on_spz, turn_on_spz_brt)
	
	
	
	local button_fire_eng_1_brt = math.max(get(valve_open_1) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_eng_1, button_fire_eng_1_brt)
	
	local button_fire_eng_2_brt = math.max(get(valve_open_2) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_eng_2, button_fire_eng_2_brt)
	
	local button_fire_eng_3_brt = math.max(get(valve_open_3) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_eng_3, button_fire_eng_3_brt)
	
	local button_fire_apu_brt = math.max(get(valve_open_4) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_apu, button_fire_apu_brt)
	
	local button_fire_ng_brt = math.max(get(ng_used) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_ng, button_fire_ng_brt)
	
	--local ext_test_but = get(ext_test)
	
	local button_fire_turn_3_brt = math.max(math.max(get(ext_used_3), bool2int(get(azs2)==0)) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_turn_3, button_fire_turn_3_brt)
	
	local button_fire_turn_2_brt = math.max(math.max(get(ext_used_2), bool2int(get(azs1)==0)) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_turn_2, button_fire_turn_2_brt)

	local button_fire_turn_1_brt = math.max(math.max(get(ext_used_1), bool2int(get(azs1)==0)) * power_sw * lamps_brt * day_night, test_btn)
	set(button_fire_turn_1, button_fire_turn_1_brt)	
	
	
	-- if fire_det == 1 then
		-- fire_counter = fire_counter + passed
		-- if fire_counter > 0.4 then
			-- fire_counter = 0
			-- fire_lit = not fire_lit
		-- end
	-- else 
		-- fire_lit = false 
	-- end
		
	local fire_lamp_brt = 0
	--if fire_lit then fire_lamp_brt = 1 end
	fire_lamp_brt = math.max(fire_det * lamps_brt * day_night, test_btn_frnt)
	set(fire_lamp, fire_lamp_brt)
	set(fire_lamp_front, fire_lamp_brt)



end





local sim_start_timer = 0

function update()
	
	passed = get(frame_time)
	local z_pos=get(pilot_Z)
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_head)
	local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
	gain_L=gain_L*1000
	gain_R=gain_R*1000
	local dist=1
	if z_pos-panel_z~=0 then
		dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
	end
	-- reset switchers
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		swichers_check(gain_L, gain_R,dist) -- make them sound
	end
	
	lamps()
	
	
	
end