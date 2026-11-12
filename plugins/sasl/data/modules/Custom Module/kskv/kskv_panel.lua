-- control panel for KSKV system

-- controls on panel
cabin_sel = globalPropertyi("tu154b2/custom/switchers/airbleed/cabin_sel") -- выбор салона
cockpit_temp_set = globalPropertyi("tu154b2/custom/switchers/airbleed/cockpit_temp_set") -- установка температуры кабины
cabin1_temp_set = globalPropertyi("tu154b2/custom/switchers/airbleed/cabin1_temp_set") -- установка температуры салона
cabin2_temp_set = globalPropertyi("tu154b2/custom/switchers/airbleed/cabin2_temp_set") -- установка температуры салона
cockpit_mode_set = globalPropertyi("tu154b2/custom/switchers/airbleed/cockpit_mode_set") -- становка режима обогрева. 0 - нейтр. 1 - авто, 2 - хол, 3 - гор
cabin1_mode_set = globalPropertyi("tu154b2/custom/switchers/airbleed/cabin1_mode_set") -- установка режима обогрева
cabin2_mode_set = globalPropertyi("tu154b2/custom/switchers/airbleed/cabin2_mode_set") -- установка режима обогрева
heat_close = globalPropertyi("tu154b2/custom/switchers/airbleed/heat_close") -- прекращение обогрева
heat_close_cap = globalPropertyi("tu154b2/custom/switchers/airbleed/heat_close_cap") -- прекращение обогрева

left_sys_temp_set = globalPropertyi("tu154b2/custom/switchers/airbleed/left_sys_temp_set") -- установка температуры левой магистрали
right_sys_temp_set = globalPropertyi("tu154b2/custom/switchers/airbleed/right_sys_temp_set") -- установка температуры правой магистрали
left_sys_mode_set = globalPropertyi("tu154b2/custom/switchers/airbleed/left_sys_mode_set") -- установка режима левой магистрали
right_sys_mode_set = globalPropertyi("tu154b2/custom/switchers/airbleed/right_sys_mode_set") -- установка режима правой магистрали



sys_temp_select = globalPropertyi("tu154b2/custom/switchers/airbleed/sys_temp_select") -- переключение источников термометра. 0 - обогрев дверей, 1 - экип, 2 - салон 1, 3 - салон 2, 4 - маг лев, 5 - маг прав

psvp_left_on = globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_left_on") -- ПСВП лев
psvp_right_on = globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_right_on") -- ПСВП прав
psvp_left_on_cap = globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_left_on_cap") -- ПСВП лев
psvp_right_on_cap = globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_right_on_cap") -- ПСВП прав
air_valve_left = globalPropertyi("tu154b2/custom/switchers/airbleed/air_valve_left") -- краны наддува. -1 закр, 0 - нейтр, +1 откр
air_valve_right = globalPropertyi("tu154b2/custom/switchers/airbleed/air_valve_right") -- краны наддува. -1 закр, 0 - нейтр, +1 откр
air_valve_both = globalPropertyi("tu154b2/custom/switchers/airbleed/air_valve_both") -- краны наддува. -1 закр, 0 - нейтр, +1 откр
emerg_decompress = globalPropertyi("tu154b2/custom/switchers/airbleed/emerg_decompress") -- сброс давления
emerg_decompress_cap = globalPropertyi("tu154b2/custom/switchers/airbleed/emerg_decompress_cap") -- сброс давления
eng_valve_1 = globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_1") -- отбор воздуха от двигателей
eng_valve_2 = globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_2") -- отбор воздуха от двигателей
eng_valve_3 = globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_3") -- отбор воздуха от двигателей
dubler_on = globalPropertyi("tu154b2/custom/switchers/airbleed/dubler_on") -- дублер
dubler_on_cap = globalPropertyi("tu154b2/custom/switchers/airbleed/dubler_on_cap") -- дублер


sard_disable = globalPropertyi("tu154b2/custom/switchers/eng/sard_disable") -- перекрытие клапана сброса воздуха
sard_disable_cap = globalPropertyi("tu154b2/custom/switchers/eng/sard_disable_cap") -- перекрытие клапана сброса воздуха

door_heat = globalPropertyi("tu154b2/custom/switchers/eng/door_heat") -- обогрев дверей


-- buttons
lamp_test_srd = globalPropertyi("tu154b2/custom/buttons/lamp_test_srd") -- тест ламп
lamp_test_front = globalPropertyi("tu154b2/custom/buttons/lamp_test_front") -- кнопка проверки ламп на передней панели	0
day_night_set = globalPropertyf("tu154b2/custom/lights/day_night_set") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

srd_buzzer_test = globalPropertyf("tu154b2/custom/buttons/eng/srd_buzzer_test") -- проверка сирены СРД


-- lamps
skv_overheat = globalPropertyf("tu154b2/custom/lights/small/skv_overheat") -- перегрев СКВ
skv_overpress_left = globalPropertyf("tu154b2/custom/lights/small/skv_overpress_left") -- превышение давления
skv_overpress_right = globalPropertyf("tu154b2/custom/lights/small/skv_overpress_right") -- превышение давления
skv_tail_temp = globalPropertyf("tu154b2/custom/lights/small/skv_tail_temp") -- температура хв отсека велика

skv_bleed_fail_1 = globalPropertyf("tu154b2/custom/lights/small/skv_bleed_fail_1") -- отказ отбора
skv_bleed_fail_2 = globalPropertyf("tu154b2/custom/lights/small/skv_bleed_fail_2") -- отказ отбора
skv_bleed_fail_3 = globalPropertyf("tu154b2/custom/lights/small/skv_bleed_fail_3") -- отказ отбора

skv_bleed_closed_1 = globalPropertyf("tu154b2/custom/lights/small/skv_bleed_closed_1") -- отбор закрыт
skv_bleed_closed_2 = globalPropertyf("tu154b2/custom/lights/small/skv_bleed_closed_2") -- отбор закрыт
skv_bleed_closed_3 = globalPropertyf("tu154b2/custom/lights/small/skv_bleed_closed_3") -- отбор закрыт


srd_low_press = globalPropertyf("tu154b2/custom/lights/small/srd_low_press") -- давление кабины мало
srd_overpress = globalPropertyf("tu154b2/custom/lights/small/srd_overpress") -- перенаддув кабины
cockpit_p_low = globalPropertyf("tu154b2/custom/lights/cockpit_p_low") -- Р каб мало




-- gauges
cockpit_temp_gau = globalPropertyf("tu154b2/custom/gauges/airbleed/cockpit_temp") -- температура в кабине
cabin_temp_gau = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_temp") -- температура в салонах
system_temp = globalPropertyf("tu154b2/custom/gauges/airbleed/system_temp") -- температура в трубопроводе
air_flow_1 = globalPropertyf("tu154b2/custom/gauges/airbleed/air_flow_1") -- расход воздуха. угол
air_flow_2 = globalPropertyf("tu154b2/custom/gauges/airbleed/air_flow_2") -- расход воздуха. угол


-- sources
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")

eng_airvalve_1 = globalPropertyf("tu154b2/custom/bleed/eng_airvalve_1") -- открытие отбора воздуха от двигателя
eng_airvalve_2 = globalPropertyf("tu154b2/custom/bleed/eng_airvalve_2") -- открытие отбора воздуха от двигателя
eng_airvalve_3 = globalPropertyf("tu154b2/custom/bleed/eng_airvalve_3") -- открытие отбора воздуха от двигателя

air_usage_L = globalPropertyf("tu154b2/custom/bleed/air_usage_L") -- расход воздуха лев
air_usage_R = globalPropertyf("tu154b2/custom/bleed/air_usage_R") -- расход воздуха прав

door_heat_tube_t = globalPropertyf("tu154b2/custom/bleed/door_heat_tube_t") -- температура в трубопроводе обогрева дверей
cockpit_tube_t = globalPropertyf("tu154b2/custom/bleed/cockpit_tube_t") -- температура в трубопроводе в кабину
cabin1_tube_t = globalPropertyf("tu154b2/custom/bleed/cabin1_tube_t") -- температура в трубопроводе в салон 1
cabin2_tube_t = globalPropertyf("tu154b2/custom/bleed/cabin2_tube_t") -- температура в трубопроводе в салон 2
cold_tube1_t = globalPropertyf("tu154b2/custom/bleed/cold_tube1_t") -- температура в трубопроводе 1
cold_tube2_t = globalPropertyf("tu154b2/custom/bleed/cold_tube2_t") -- температура в трубопроводе 2

cockpit_temp = globalPropertyf("tu154b2/custom/bleed/cockpit_temp") -- температура в кабине
cabin_1_temp = globalPropertyf("tu154b2/custom/bleed/cabin_1_temp") -- температура в салоне 1
cabin_2_temp = globalPropertyf("tu154b2/custom/bleed/cabin_2_temp") -- температура в салоне 2

hot_tube_t = globalPropertyf("tu154b2/custom/bleed/hot_tube_t") -- температура горячего воздуха в трубопроводе

actual_cabin_alt = globalPropertyf("sim/cockpit2/pressurization/indicators/cabin_altitude_ft")
cabin_press_diff = globalPropertyf("sim/cockpit2/pressurization/indicators/pressure_diffential_psi")


cab_alt_new = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_alt_new")
cab_diff_new = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_diff_new")

-- failures
airbleed_1 = globalPropertyf("tu154b2/custom/failures/airbleed_1") -- отказ отбора воздуха от двигателя
airbleed_2 = globalPropertyi("tu154b2/custom/failures/airbleed_2") -- отказ отбора воздуха от двигателя
airbleed_3 = globalPropertyi("tu154b2/custom/failures/airbleed_3") -- отказ отбора воздуха от двигателя

left_vvr_mode_set = globalPropertyi("sim/custom/b2/vvr_1")
right_vvr_mode_set = globalPropertyi("sim/custom/b2/vvr_2")
ejectir = globalPropertyi("sim/custom/b2/airflow_eject")
ejectir_cap = globalPropertyi("sim/custom/b2/airflow_eject_cap")
art = globalPropertyi("sim/custom/b2/art")
tail_temp_signal = globalPropertyi("tu154b2/custom/switchers/eng/tail_temp_signal") -- сигнал температуры хвостового отсека

-- engines
eng1_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
eng2_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[1]") -- engine 2 rpm
eng3_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[2]") -- engine 3 rpm
pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")
spu_fe = globalPropertyi("tu154b2/custom/switchers/spu_4_source")

-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1")
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2")
-- db3 = globalPropertyf("tu154b2/custom/controlls/debug3")


main_pressure = globalPropertyi("tu154b2/custom/alarm/main_pressure") -- разгерметизация или перенаддув кабины
--kontur_on = globalPropertyf("tu154b2/custom/b2/kontur_on")

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
local panel_z=-20.836
local dist_gain=5

-- time
local passed = get(frame_time)
local tme=0
local tme_cp=0
local tme_cab1=0
local tme_lk=0
local tme_lk_cp=0
local tme_lk_cab=0
local tme_dir=0
-- local tme_dir_cp=0
-- local tme_dir_cab=0
local power27_L_prev=0
local system_t_prev=0

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
		set(cockpit_mode_set, 0)
		set(cabin1_mode_set, 0)
		set(cabin2_mode_set, 0)
		set(left_sys_mode_set, 0)
		set(right_sys_mode_set, 0)
		set(psvp_left_on, 0)
		set(psvp_right_on, 0)
		set(eng_valve_1, 0)
		set(eng_valve_2, 0)
		set(eng_valve_3, 0)
		
	end
	
	notLoaded = false
end


local lamp_test_srd_last = get(lamp_test_srd)

local cab_P_counter = 0
local cab_P_lit = 0

local cab_high_counter = 0
local cab_high_lit = 0

local function lamps(gain_L, gain_R,dist)
	-- make sound for button
	local test_btn = get(lamp_test_srd)
	if test_btn ~= lamp_test_srd_last then
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
    end
	lamp_test_srd_last = test_btn
	
	local day_night = 1 - get(day_night_set) * 0.95
	
	test_btn = test_btn * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	local test_btn_frnt = get(lamp_test_front)
	test_btn_frnt = test_btn_frnt * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	local power27_L = get(bus27_volt_left)
	local power27_R = get(bus27_volt_right)
	
	local lamps_brt = math.max((math.max(power27_L, power27_R) - 10) / 18.5, 0)
	
	local skv_overheat_brt = 0
	if get(cold_tube1_t) > 55 or get(cold_tube2_t) > 55 or get(cabin1_tube_t) > 55 or get(cabin2_tube_t) > 55 or get(cockpit_tube_t) > 55 then skv_overheat_brt = 1 end
	skv_overheat_brt = math.max(skv_overheat_brt * lamps_brt, test_btn)
	set(skv_overheat, skv_overheat_brt)
	
	local skv_overpress_left_brt = math.max(0, test_btn) -- fake for now
	set(skv_overpress_left, skv_overpress_left_brt)	
	
	local skv_overpress_right_brt = math.max(0, test_btn) -- fake for now
	set(skv_overpress_right, skv_overpress_right_brt)	
	
	local skv_tail_temp_brt = math.max(0, test_btn) -- fake for now
	set(skv_tail_temp, skv_tail_temp_brt)	

	
	
	local skv_bleed_fail_1_brt = 0
	if get(eng_valve_1) == 1 and get(airbleed_1) == 1 and power27_L > 10 then skv_bleed_fail_1_brt = 1 end
	skv_bleed_fail_1_brt = math.max(skv_bleed_fail_1_brt * lamps_brt , test_btn)
	set(skv_bleed_fail_1, skv_bleed_fail_1_brt)	
	
	
	local skv_bleed_fail_2_brt = 0
	if get(eng_valve_2) == 1 and get(airbleed_2) == 1 and power27_R > 10 then skv_bleed_fail_2_brt = 1 end
	skv_bleed_fail_2_brt = math.max(skv_bleed_fail_2_brt * lamps_brt, test_btn) 
	set(skv_bleed_fail_2, skv_bleed_fail_2_brt)	

	local skv_bleed_fail_3_brt = 0
	if get(eng_valve_3) == 1 and get(airbleed_3) == 1 and power27_R > 10 then skv_bleed_fail_3_brt = 1 end
	skv_bleed_fail_3_brt = math.max(skv_bleed_fail_3_brt * lamps_brt, test_btn)
	set(skv_bleed_fail_3, skv_bleed_fail_3_brt)		

	
	
	local skv_bleed_closed_1_brt = 0
	if get(eng_airvalve_1) < 0.5 and power27_L > 10 then skv_bleed_closed_1_brt = 1 end
	skv_bleed_closed_1_brt = math.max(skv_bleed_closed_1_brt * lamps_brt, test_btn) 
	set(skv_bleed_closed_1, skv_bleed_closed_1_brt)	

	local skv_bleed_closed_2_brt = 0
	if get(eng_airvalve_2) < 0.5 and power27_R > 10 then skv_bleed_closed_2_brt = 1 end
	skv_bleed_closed_2_brt = math.max(skv_bleed_closed_2_brt * lamps_brt, test_btn) 
	set(skv_bleed_closed_2, skv_bleed_closed_2_brt)	
	
	local skv_bleed_closed_3_brt = 0
	if get(eng_airvalve_3) < 0.5 and power27_R > 10 then skv_bleed_closed_3_brt = 1 end
	skv_bleed_closed_3_brt = math.max(skv_bleed_closed_3_brt * lamps_brt, test_btn) 
	set(skv_bleed_closed_3, skv_bleed_closed_3_brt)	
	
	
	-- other lamps
	local buzz_test = get(srd_buzzer_test)
	local low_cab_P = get(cab_alt_new) * 1000 > 3300 or buzz_test == 1
	
	if low_cab_P then cab_P_counter = cab_P_counter + passed
	else 
		cab_P_counter = 0 
		cab_P_lit = 0	
	end
	
	if low_cab_P and cab_P_counter > 0.3 then
		cab_P_lit = math.abs(1 - cab_P_lit)
		cab_P_counter = 0
	end
	
	
	local high_cab_P = get(cab_diff_new) > 0.72 or buzz_test == 1

	if high_cab_P then cab_high_counter = cab_high_counter + passed
	else 
		cab_high_counter = 0 
		cab_high_lit = 0	
	end
	
	if high_cab_P and cab_high_counter > 0.3 then
		cab_high_lit = math.abs(1 - cab_high_lit)
		cab_high_counter = 0
	end	
	
	set(main_pressure, bool2int(low_cab_P or high_cab_P))
	
	
	
	local srd_low_press_brt = math.max(cab_P_lit * lamps_brt, 0)
	set(srd_low_press, srd_low_press_brt)
	
	local srd_overpress_brt = math.max(cab_high_lit * lamps_brt, 0)
	set(srd_overpress, srd_overpress_brt)
	
	local cockpit_p_low_brt = math.max(cab_P_lit * lamps_brt * day_night, test_btn_frnt)
	set(cockpit_p_low, cockpit_p_low_brt)
	
	
	
end


local cockpit_temp_set_last = get(cockpit_temp_set)
local cabin1_temp_set_last = get(cabin1_temp_set)
local cabin2_temp_set_last = get(cabin2_temp_set)
local left_sys_temp_set_last = get(left_sys_temp_set)
local right_sys_temp_set_last = get(right_sys_temp_set)
local sys_temp_select_last = get(sys_temp_select)
local vvr_left_last=get(left_vvr_mode_set)
local vvr_right_last=get(right_vvr_mode_set)
local eject_last=get(ejectir)
local eject_cap_last=get(ejectir_cap)
local art_last=get(art)
local temp_tail_last=get(tail_temp_signal)
local spu_sw_last = 0

local function rotary_sw(gain_L, gain_R,dist)

	local cockpit_temp_set_sw = get(cockpit_temp_set)
	local cabin1_temp_set_sw = get(cabin1_temp_set)
	local cabin2_temp_set_sw = get(cabin2_temp_set)
	local left_sys_temp_set_sw = get(left_sys_temp_set)
	local right_sys_temp_set_sw = get(right_sys_temp_set)
	local sys_temp_select_sw = get(sys_temp_select)
	local spu_sw = get(spu_fe) 
	
	local change = sys_temp_select_sw + spu_sw --cockpit_temp_set_sw + cabin1_temp_set_sw + cabin2_temp_set_sw + left_sys_temp_set_sw + right_sys_temp_set_sw + sys_temp_select_sw
	change = change - sys_temp_select_last - spu_sw_last -- - cockpit_temp_set_last - cabin1_temp_set_last - cabin2_temp_set_last - left_sys_temp_set_last - right_sys_temp_set_last - sys_temp_select_last
	
	if change ~= 0 then
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
    end
	
	cockpit_temp_set_last = cockpit_temp_set_sw
	cabin1_temp_set_last = cabin1_temp_set_sw
	cabin2_temp_set_last = cabin2_temp_set_sw
	left_sys_temp_set_last = left_sys_temp_set_sw
	right_sys_temp_set_last = right_sys_temp_set_sw
	if sys_temp_select_sw~=sys_temp_select_last and get(bus27_volt_left)>12 then -- for needle jitter
		tme=0
		tme_lk=0
	end
	sys_temp_select_last = sys_temp_select_sw
	spu_sw_last = spu_sw


end

local air_gau_tbl = {{ -100000, -160 },    -- bugs walkaround
                  {  0, -160 }, -- 0.0
				  { 300, -145 },   --
				  { 400, -136 }, -- 
				  { 600, -107 }, -- 
				  { 700, -90 }, -- 
				  { 900, -45 }, -- 
				  { 1200, 48 }, --
				  { 1300, 86 }, --
				  { 1500, 160 }, -- 
				  { 1600, 190 }, -- 
          	      { 10000000, 190 }}    -- bugs walkaround

local air_gau_tbl_new = {{ -100000, -160 },    -- bugs walkaround
                  {  0, -160 }, -- 0.0
				  { 150, -145 },   --
				  { 200, -136 }, -- 
				  { 300, -107 }, -- 
				  { 350, -90 }, -- 
				  { 450, -45 }, -- 
				  { 600, 48 }, --
				  { 650, 86 }, --
				  { 750, 160 }, -- 
				  { 800, 190 }, -- 
          	      { 10000000, 190 }}    -- bugs walkaround

local air_temp_tbl = {{ -100000, -105 },    -- bugs walkaround
                  {  -65, -105 }, -- 0.0
				  {  -60, -100 }, -- 0.0
				  { -30, -48 },   --
				  { 0, 0 }, -- 
				  { 30, 48 }, -- 
				  { 60, 82 }, -- 
				  { 70, 92 }, -- 
				  { 100, 100 }, -- 
          	      { 10000000, 100 }}    -- bugs walkaround
				  
local flow_angle_L_act = -160
local flow_angle_R_act = -160

local cocpit_t_ang_act = -105
local cabin_t_ang_act = -105

local sys_t_act = -70

local function gauges()

	if get(bus27_volt_left)-power27_L_prev>12 then -- jitter from power switch
		tme=0
		tme_cp=0
		tme_cab1=0
		tme_lk=0
		tme_lk_cp=0
		tme_lk_cab=0
	end
	power27_L_prev=get(bus27_volt_left)
	-- air flow
		-- local angle_L = interpolate(air_gau_tbl_new, get(air_usage_L))
		-- local angle_R = interpolate(air_gau_tbl_new, get(air_usage_R))
	-- if get(kontur_on)>0 then
		angle_L = interpolate(air_gau_tbl, get(air_usage_L))
		angle_R = interpolate(air_gau_tbl, get(air_usage_R))
	--end
	
	if angle_L - flow_angle_L_act < 0 then
		flow_angle_L_act = flow_angle_L_act + sign(angle_L - flow_angle_L_act) * math.min(math.abs(angle_L - flow_angle_L_act), 20) * passed * 4
	else
		flow_angle_L_act = flow_angle_L_act + sign(angle_L - flow_angle_L_act) * math.min(math.abs(angle_L - flow_angle_L_act), 10) * passed * 2
	end
	
	if angle_R - flow_angle_R_act < 0 then
		flow_angle_R_act = flow_angle_R_act + sign(angle_R - flow_angle_R_act) * math.min(math.abs(angle_R - flow_angle_R_act), 20) * passed * 4
	else
		flow_angle_R_act = flow_angle_R_act + sign(angle_R - flow_angle_R_act) * math.min(math.abs(angle_R - flow_angle_R_act), 10) * passed * 2
	end
	
	set(air_flow_1, flow_angle_L_act)
	set(air_flow_2, flow_angle_R_act)

	-----------------
	-- cabins temp
	local cockpit_t_ang = -105
	local cabin_t_ang = -105

	
	if get(bus27_volt_right) > 13 then
		cockpit_t_ang = interpolate(air_temp_tbl, get(cockpit_temp))
	
		if get(cabin_sel) == 1 then
			cabin_t_ang = interpolate(air_temp_tbl, get(cabin_1_temp))
		else
			cabin_t_ang = interpolate(air_temp_tbl, get(cabin_2_temp))
		end
	end
	
	--- Needle jitter
	if tme_cp<4 then
		tme_cp=tme_cp+passed*tme_lk_cp
	end
	if tme_cab1<4 then
		tme_cab1=tme_cp+passed*tme_lk_cab
	end
	if math.abs(cockpit_t_ang - cocpit_t_ang_act)<5 then
		tme_lk_cp=1
	end
	if math.abs(cabin_t_ang - cabin_t_ang_act)<5 then
		tme_lk_cab=1
	end
	local needle_jit_cp=math.cos(10*tme_cp)*math.exp(-5*tme_cp)
	local needle_jit_cab1=math.cos(11*tme_cab1)*math.exp(-5*tme_cab1)
	
	cockpit_t_ang=cockpit_t_ang+10*needle_jit_cp
	cabin_t_ang=cabin_t_ang+10*needle_jit_cab1
	cocpit_t_ang_act = cocpit_t_ang_act + (cockpit_t_ang - cocpit_t_ang_act) * passed * 10
	cabin_t_ang_act = cabin_t_ang_act + (cabin_t_ang - cabin_t_ang_act) * passed * 10
	
	
	set(cockpit_temp_gau, cocpit_t_ang_act)
	set(cabin_temp_gau, cabin_t_ang_act)
	
	-- tubes temp
	
	local system_t = -75
	local system_gau_sel = get(sys_temp_select)
	if get(bus27_volt_right) > 13 then
		if system_gau_sel == 0 then
			system_t = get(door_heat_tube_t)
		elseif system_gau_sel == 1 then
			system_t = get(cockpit_tube_t)
		elseif system_gau_sel == 2 then
			system_t = get(cabin1_tube_t)
		elseif system_gau_sel == 3 then
			system_t = get(cabin2_tube_t)
		elseif system_gau_sel == 4 then
			system_t = get(cold_tube1_t)
		else
			system_t = get(cold_tube2_t)
		end
	end
	if system_t < -75 then system_t = -75
	elseif system_t > 155 then system_t = 155 end
	
	if system_t<system_t_prev-5 then
		tme_dir=-1
	elseif system_t>system_t_prev+5 then
		tme_dir=1
	end	
	system_t_prev=system_t
	if tme<4 then
		tme=tme+passed*tme_lk
	end
	if math.abs(system_t - sys_t_act)<25 then
		tme_lk=1
	end
	local needle_jit=math.cos(15*tme)*math.exp(-5*tme)
	
	system_t=system_t+20*needle_jit*tme_dir
	
	-- if tme<4 then
		-- tme=tme+passed
	-- end
	-- local needle_jit=math.cos(15*tme)*math.exp(-5*tme)
	-- system_t=system_t-system_t*needle_jit
	sys_t_act = sys_t_act + (system_t - sys_t_act) * passed * 15
	
	set(system_temp, sys_t_act)

	
end

local cabin_sel_last = get(cabin_sel)
local heat_close_last = get(heat_close)
local psvp_left_on_last = get(psvp_left_on)
local psvp_right_on_last = get(psvp_right_on)
local air_valve_left_last = get(air_valve_left)
local air_valve_right_last = get(air_valve_right)
local emerg_decompress_last = get(emerg_decompress)
local eng_valve_1_last = get(eng_valve_1)
local eng_valve_2_last = get(eng_valve_2)
local eng_valve_3_last = get(eng_valve_3)
local dubler_on_last = get(dubler_on)

local cockpit_mode_set_last = get(cockpit_mode_set)
local cabin1_mode_set_last = get(cabin1_mode_set)
local cabin2_mode_set_last = get(cabin2_mode_set)
local left_sys_mode_set_last = get(left_sys_mode_set)
local right_sys_mode_set_last = get(right_sys_mode_set)

local sard_disable_last = get(sard_disable)
local door_heat_last = get(door_heat)

local air_valve_both_last = get(air_valve_both)

local function check_switchers(gain_L, gain_R,dist)

	local cabin_sel_sw = get(cabin_sel)
	local heat_close_sw = get(heat_close)
	local psvp_left_on_sw = get(psvp_left_on)
	local psvp_right_on_sw = get(psvp_right_on)
	local air_valve_left_sw = get(air_valve_left)
	local air_valve_right_sw = get(air_valve_right)
	local emerg_decompress_sw = get(emerg_decompress)
	local eng_valve_1_sw = get(eng_valve_1)
	local eng_valve_2_sw = get(eng_valve_2)
	local eng_valve_3_sw = get(eng_valve_3)
	local dubler_on_sw = get(dubler_on)

	local cockpit_mode_set_sw = get(cockpit_mode_set)
	local cabin1_mode_set_sw = get(cabin1_mode_set)
	local cabin2_mode_set_sw = get(cabin2_mode_set)
	local left_sys_mode_set_sw = get(left_sys_mode_set)
	local right_sys_mode_set_sw = get(right_sys_mode_set)
	
	local sard_disable_sw = get(sard_disable)
	local door_heat_sw = get(door_heat)
	local vvr_left_sw=get(left_vvr_mode_set)
	local vvr_right_sw=get(right_vvr_mode_set)
	local eject_sw=get(ejectir)
	local art_sw=get(art)
	local temp_tail_sw=get(tail_temp_signal)
	
	local change = cabin_sel_sw + heat_close_sw + psvp_left_on_sw + psvp_right_on_sw
	change = change  + emerg_decompress_sw + eng_valve_1_sw + eng_valve_2_sw + eng_valve_3_sw + dubler_on_sw
	change = change + sard_disable_sw + door_heat_sw + eject_sw + art_sw + temp_tail_sw
	
	change = change - cabin_sel_last - heat_close_last - psvp_left_on_last - psvp_right_on_last
	change = change  - emerg_decompress_last - eng_valve_1_last - eng_valve_2_last - eng_valve_3_last - dubler_on_last
	change = change - sard_disable_last - door_heat_last -eject_last -art_last - temp_tail_last
	
	local change_2 = air_valve_left_sw + air_valve_right_sw
	change_2 = change_2 - air_valve_left_last - air_valve_right_last
	local change_3 = cockpit_mode_set_sw + cabin1_mode_set_sw + cabin2_mode_set_sw + left_sys_mode_set_sw + right_sys_mode_set_sw + vvr_left_sw + vvr_right_sw
	change_3 = change_3- cockpit_mode_set_last - cabin1_mode_set_last - cabin2_mode_set_last - left_sys_mode_set_last - right_sys_mode_set_last - vvr_left_last - vvr_right_last
	
	if change ~= 0 then
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
    end
	if change_2 ~= 0 then
		setSampleGain(switcher_sound_2_L,gain_L*dist)
		setSampleGain(switcher_sound_2_R,gain_R*dist)
		playSample(switcher_sound_2_L, false)
		playSample(switcher_sound_2_R, false)
    end
	if change_3 ~= 0 then
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		setSampleGain(switcher_sound_2_L,gain_L*dist)
		setSampleGain(switcher_sound_2_R,gain_R*dist)
		if (cockpit_mode_set_sw==1 and cockpit_mode_set_sw~=cockpit_mode_set_last) or (cabin1_mode_set_sw ==1 and cabin1_mode_set_sw~=cabin1_mode_set_last) or (cabin2_mode_set_sw==1 and cabin2_mode_set_sw~=cabin2_mode_set_last) or (left_sys_mode_set_sw==1 and left_sys_mode_set_sw~=left_sys_mode_set_last) or (right_sys_mode_set_sw==1 and right_sys_mode_set_sw~=right_sys_mode_set_last) or (vvr_left_sw==1 and vvr_left_sw~=vvr_left_last) or (vvr_right_sw==1 and vvr_right_sw~=vvr_right_last) or (cockpit_mode_set_sw==0 and cockpit_mode_set_last==1) or (cabin1_mode_set_sw ==0 and cabin1_mode_set_last==1) or (cabin2_mode_set_sw==0 and cabin2_mode_set_last==1) or (left_sys_mode_set_sw==0 and left_sys_mode_set_last==1) or (right_sys_mode_set_sw==0 and right_sys_mode_set_last==1) or (vvr_left_sw==0 and vvr_left_last==1) or (vvr_right_sw==0 and vvr_right_last==1) then
			playSample(switcher_sound_L, false)
			playSample(switcher_sound_R, false)			
		else
			playSample(switcher_sound_2_L, false)
			playSample(switcher_sound_2_R, false)
		end	
	end
	
	cabin_sel_last = cabin_sel_sw
	heat_close_last = heat_close_sw
	psvp_left_on_last = psvp_left_on_sw
	psvp_right_on_last = psvp_right_on_sw
	air_valve_left_last = air_valve_left_sw
	air_valve_right_last = air_valve_right_sw
	emerg_decompress_last = emerg_decompress_sw
	eng_valve_1_last = eng_valve_1_sw
	eng_valve_2_last = eng_valve_2_sw
	eng_valve_3_last = eng_valve_3_sw
	dubler_on_last = dubler_on_sw
	
	cockpit_mode_set_last = cockpit_mode_set_sw
	cabin1_mode_set_last = cabin1_mode_set_sw
	cabin2_mode_set_last = cabin2_mode_set_sw
	left_sys_mode_set_last = left_sys_mode_set_sw
	right_sys_mode_set_last = right_sys_mode_set_sw
	
	sard_disable_last = sard_disable_sw
	door_heat_last = door_heat_sw
	vvr_left_last=get(left_vvr_mode_set)
	vvr_right_last=get(right_vvr_mode_set)
	eject_last=eject_sw
	art_last=art_sw
	temp_tail_last=temp_tail_sw
	
	local air_valve_both_sw = get(air_valve_both)
	
	if air_valve_both_sw == 1 then 
		set(air_valve_left, 1)
		set(air_valve_right, 1)
	elseif air_valve_both_sw == -1 then
		set(air_valve_left, -1)
		set(air_valve_right, -1)
	elseif air_valve_both_last ~= air_valve_both_sw and air_valve_both_sw == 0 then
		set(air_valve_left, 0)
		set(air_valve_right, 0)	
	end
	
	air_valve_both_last = air_valve_both_sw
	
	
end


local heat_close_cap_last = get(heat_close_cap)
local psvp_left_on_cap_last = get(psvp_left_on_cap)
local psvp_right_on_cap_last = get(psvp_right_on_cap)
local emerg_decompress_cap_last = get(emerg_decompress_cap)
local dubler_on_cap_last = get(dubler_on_cap)
local sard_disable_cap_last = get(sard_disable_cap)


local function caps_check(gain_L, gain_R,dist)

	local heat_close_cap_sw = get(heat_close_cap)
	local psvp_left_on_cap_sw = get(psvp_left_on_cap)
	local psvp_right_on_cap_sw = get(psvp_right_on_cap)
	local emerg_decompress_cap_sw = get(emerg_decompress_cap)
	local dubler_on_cap_sw = get(dubler_on_cap)
	local sard_disable_cap_sw = get(sard_disable_cap)
	local eject_cap_sw=get(ejectir_cap)
	
	
	local change = heat_close_cap_sw  + psvp_left_on_cap_sw + psvp_right_on_cap_sw 
	change = change + emerg_decompress_cap_sw + dubler_on_cap_sw + sard_disable_cap_sw + eject_cap_sw
	
	change = change - heat_close_cap_last - psvp_left_on_cap_last - psvp_right_on_cap_last
	change = change - emerg_decompress_cap_last - dubler_on_cap_last - sard_disable_cap_last - eject_cap_last

	if change ~= 0 then
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
    end

	heat_close_cap_last = heat_close_cap_sw
	psvp_left_on_cap_last = psvp_left_on_cap_sw
	psvp_right_on_cap_last = psvp_right_on_cap_sw
	emerg_decompress_cap_last = emerg_decompress_cap_sw
	dubler_on_cap_last = dubler_on_cap_sw
	sard_disable_cap_last = sard_disable_cap_sw
	eject_cap_last=eject_cap_sw
	
	-- check switchers position under their caps
	--if skv_faster_work_cap_sw == 0 then set(skv_faster_work, 0) end
	if dubler_on_cap_sw == 0 then set(dubler_on, 0) end
	if emerg_decompress_cap_sw == 0 then set(emerg_decompress,0) end
	
	if sard_disable_cap_sw == 0 then set(sard_disable, 0) end
	
	

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
		
		rotary_sw(gain_L, gain_R,dist)
		check_switchers(gain_L, gain_R,dist) -- make them sound
		caps_check(gain_L, gain_R,dist) -- make them sound
		lamps(gain_L, gain_R,dist)
		
	end
	
	gauges()


end