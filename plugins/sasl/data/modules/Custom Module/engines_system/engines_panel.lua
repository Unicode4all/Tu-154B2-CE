-- this is engines panel
-- controls
-- createGlobalPropertyf("tu154b2/custom/controlls/eng_debug1", 1)
-- createGlobalPropertyf("tu154b2/custom/controlls/eng_debug2", 0)

-- defineProperty("eng_debug1", globalPropertyf("tu154b2/custom/controlls/eng_debug1")) 
-- defineProperty("eng_debug2", globalPropertyf("tu154b2/custom/controlls/eng_debug2")) 

defineProperty("control_ut1", globalPropertyi("sim/custom/gauges/eng/egt_1_test")) -- кнопка контроль УТ
defineProperty("control_ut2", globalPropertyi("sim/custom/gauges/eng/egt_2_test")) -- кнопка контроль УТ
defineProperty("control_ut3", globalPropertyi("sim/custom/gauges/eng/egt_3_test")) -- кнопка контроль УТ
defineProperty("control_vibro_1", globalPropertyi("tu154b2/custom/buttons/eng/control_vibro_1")) -- кнопка контроль вибрации
defineProperty("control_vibro_2", globalPropertyi("tu154b2/custom/buttons/eng/control_vibro_2")) -- кнопка контроль вибрации
defineProperty("control_vibro_3", globalPropertyi("tu154b2/custom/buttons/eng/control_vibro_3")) -- кнопка контроль вибрации
--defineProperty("vibro_sel_1", globalPropertyi("tu154b2/custom/switchers/eng/vibro_sel_1")) -- переключатель прибора вибрации
--defineProperty("vibro_sel_2", globalPropertyi("tu154b2/custom/switchers/eng/vibro_sel_2")) -- переключатель прибора вибрации
--defineProperty("vibro_sel_3", globalPropertyi("tu154b2/custom/switchers/eng/vibro_sel_3")) -- переключатель прибора вибрации
defineProperty("vibro_sel", globalPropertyi("sim/custom/gauges/eng/eng_sel_vibro"))
defineProperty("test_lamps", globalPropertyi("tu154b2/custom/buttons/lamp_test_engines")) -- кнопка проверки ламп панели двигателей
defineProperty("lamp_test_fwd", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0

defineProperty("day_night_set", globalPropertyf("tu154b2/custom/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

defineProperty("gauges_on_1", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_1")) -- приборы контроля двигателей
defineProperty("gauges_on_2", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_2")) -- приборы контроля двигателей
defineProperty("gauges_on_3", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_3")) -- приборы контроля двигателей

defineProperty("gauges_on_1_cap", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_1_cap")) -- приборы контроля двигателей
defineProperty("gauges_on_2_cap", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_2_cap")) -- приборы контроля двигателей
defineProperty("gauges_on_3_cap", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_3_cap")) -- приборы контроля двигателей

-- lamps
defineProperty("eng1_dangerous_vibro", globalPropertyf("tu154b2/custom/lights/engines/eng1_dangerous_vibro")) -- опасная вибрация
defineProperty("eng1_oil_level", globalPropertyf("tu154b2/custom/lights/engines/eng1_oil_level")) -- уровень масла
defineProperty("eng1_oil_p", globalPropertyf("tu154b2/custom/lights/engines/eng1_oil_p")) -- давление масла
defineProperty("eng1_bypass_valve", globalPropertyf("tu154b2/custom/lights/engines/eng1_bypass_valve")) -- клапаны перепуска
defineProperty("eng1_vna33", globalPropertyf("tu154b2/custom/lights/engines/eng1_vna33")) -- ВНА 33
defineProperty("eng1_reverse_lock", globalPropertyf("tu154b2/custom/lights/engines/eng1_reverse_lock")) -- замок реверса
defineProperty("eng1_high_vibro", globalPropertyf("tu154b2/custom/lights/engines/eng1_high_vibro")) -- вибрация велика
defineProperty("eng1_chips", globalPropertyf("tu154b2/custom/lights/engines/eng1_chips")) -- стружка в масле
defineProperty("eng1_fuel_p", globalPropertyf("tu154b2/custom/lights/engines/eng1_fuel_p")) -- давление топлива
defineProperty("eng1_filter_fail", globalPropertyf("tu154b2/custom/lights/engines/eng1_filter_fail")) -- фильтр засорен
defineProperty("eng1_vna0", globalPropertyf("tu154b2/custom/lights/engines/eng1_vna0")) -- ВНА 0
defineProperty("eng1_reverse_doors", globalPropertyf("tu154b2/custom/lights/engines/eng1_reverse_doors")) -- створки реверса

defineProperty("eng2_dangerous_vibro", globalPropertyf("tu154b2/custom/lights/engines/eng2_dangerous_vibro")) -- опасная вибрация
defineProperty("eng2_oil_level", globalPropertyf("tu154b2/custom/lights/engines/eng2_oil_level")) -- уровень масла
defineProperty("eng2_oil_p", globalPropertyf("tu154b2/custom/lights/engines/eng2_oil_p")) -- давление масла
defineProperty("eng2_bypass_valve", globalPropertyf("tu154b2/custom/lights/engines/eng2_bypass_valve")) -- клапаны перепуска
defineProperty("eng2_vna33", globalPropertyf("tu154b2/custom/lights/engines/eng2_vna33")) -- ВНА 33
defineProperty("eng_at_on", globalPropertyf("tu154b2/custom/lights/engines/eng_at_on")) -- АТ включен
defineProperty("eng2_high_vibro", globalPropertyf("tu154b2/custom/lights/engines/eng2_high_vibro")) -- вибрация велика
defineProperty("eng2_chips", globalPropertyf("tu154b2/custom/lights/engines/eng2_chips")) -- стружка в масле
defineProperty("eng2_fuel_p", globalPropertyf("tu154b2/custom/lights/engines/eng2_fuel_p")) -- давление топлива
defineProperty("eng2_filter_fail", globalPropertyf("tu154b2/custom/lights/engines/eng2_filter_fail")) -- фильтр засорен
defineProperty("eng2_vna0", globalPropertyf("tu154b2/custom/lights/engines/eng2_vna0")) -- ВНА 0
defineProperty("eng_block", globalPropertyf("tu154b2/custom/lights/engines/eng_block")) -- расстоп сектора

defineProperty("eng3_dangerous_vibro", globalPropertyf("tu154b2/custom/lights/engines/eng3_dangerous_vibro")) -- опасная вибрация
defineProperty("eng3_oil_level", globalPropertyf("tu154b2/custom/lights/engines/eng3_oil_level")) -- уровень масла
defineProperty("eng3_oil_p", globalPropertyf("tu154b2/custom/lights/engines/eng3_oil_p")) -- давление масла
defineProperty("eng3_bypass_valve", globalPropertyf("tu154b2/custom/lights/engines/eng3_bypass_valve")) -- клапаны перепуска
defineProperty("eng3_vna33", globalPropertyf("tu154b2/custom/lights/engines/eng3_vna33")) -- ВНА 33
defineProperty("eng3_reverse_lock", globalPropertyf("tu154b2/custom/lights/engines/eng3_reverse_lock")) -- замок реверса
defineProperty("eng3_high_vibro", globalPropertyf("tu154b2/custom/lights/engines/eng3_high_vibro")) -- вибрация велика
defineProperty("eng3_chips", globalPropertyf("tu154b2/custom/lights/engines/eng3_chips")) -- стружка в масле
defineProperty("eng3_fuel_p", globalPropertyf("tu154b2/custom/lights/engines/eng3_fuel_p")) -- давление топлива
defineProperty("eng3_filter_fail", globalPropertyf("tu154b2/custom/lights/engines/eng3_filter_fail")) -- фильтр засорен
defineProperty("eng3_vna0", globalPropertyf("tu154b2/custom/lights/engines/eng3_vna0")) -- ВНА 0
defineProperty("eng3_reverse_doors", globalPropertyf("tu154b2/custom/lights/engines/eng3_reverse_doors")) -- створки реверса


defineProperty("starter_high_rpm_1", globalPropertyf("tu154b2/custom/lights/small/starter_high_rpm_1")) -- опасные обороты стартера
defineProperty("starter_high_rpm_2", globalPropertyf("tu154b2/custom/lights/small/starter_high_rpm_2")) -- опасные обороты стартера
defineProperty("starter_high_rpm_3", globalPropertyf("tu154b2/custom/lights/small/starter_high_rpm_3")) -- опасные обороты стартера
defineProperty("fuel_2500", globalPropertyf("tu154b2/custom/lights/small/fuel_2500")) -- остаток топлива 2500
defineProperty("fuel_tank1_used", globalPropertyf("tu154b2/custom/lights/small/fuel_tank1_used")) -- расход из бака 1


defineProperty("fp_eng_fail_1", globalPropertyf("tu154b2/custom/lights/fp_eng_fail_1")) -- двиг. неиспр 1 на передней панели
defineProperty("fp_eng_fail_2", globalPropertyf("tu154b2/custom/lights/fp_eng_fail_2")) -- двиг. неиспр 2 на передней панели
defineProperty("fp_eng_fail_3", globalPropertyf("tu154b2/custom/lights/fp_eng_fail_3")) -- двиг. неиспр 3 на передней панели

defineProperty("fp_reverse_1", globalPropertyf("tu154b2/custom/lights/fp_reverse_1")) -- створки реверса 1 на передней панели
defineProperty("fp_reverse_3", globalPropertyf("tu154b2/custom/lights/fp_reverse_3")) -- створки реверса 3 на передней панели

defineProperty("oil_meter_qty_1", globalPropertyf("tu154b2/custom/lights/small/oil_meter_1")) -- лампа на масломере
defineProperty("oil_meter_qty_2", globalPropertyf("tu154b2/custom/lights/small/oil_meter_2")) -- лампа на масломере
defineProperty("oil_meter_qty_3", globalPropertyf("tu154b2/custom/lights/small/oil_meter_3")) -- лампа на масломере


-- sources
defineProperty("vibra_1", globalPropertyf("tu154b2/custom/gauges/eng/vibra_1")) -- вибрация двиг 1
defineProperty("vibra_2", globalPropertyf("tu154b2/custom/gauges/eng/vibra_2")) -- вибрация двиг 2
defineProperty("vibra_3", globalPropertyf("tu154b2/custom/gauges/eng/vibra_3")) -- вибрация двиг 3

defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("rpm_low_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_low_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_low_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_3")) -- обороты турбины высокого давления №3

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine

defineProperty("chip_detect1", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[0]")) -- chip in engine1
defineProperty("chip_detect2", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[1]")) -- chip in engine1
defineProperty("chip_detect3", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[2]")) -- chip in engine1

defineProperty("fuel_p_1", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[0]"))
defineProperty("fuel_p_2", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[1]"))
defineProperty("fuel_p_3", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[2]"))

defineProperty("oil_p_1", globalPropertyf("tu154b2/custom/gauges/eng/oil_press_1")) -- давление масла двиг 1
defineProperty("oil_p_2", globalPropertyf("tu154b2/custom/gauges/eng/oil_press_2")) -- давление масла двиг 2
defineProperty("oil_p_3", globalPropertyf("tu154b2/custom/gauges/eng/oil_press_3")) -- давление масла двиг 3

defineProperty("eng_fuel_press_1", globalPropertyi("tu154b2/custom/fuel/eng_fuel_press_1")) -- топливо может быть подано в двигатель. без учета стоп-кранов
defineProperty("eng_fuel_press_2", globalPropertyi("tu154b2/custom/fuel/eng_fuel_press_2")) -- топливо может быть подано в двигатель. без учета стоп-кранов
defineProperty("eng_fuel_press_3", globalPropertyi("tu154b2/custom/fuel/eng_fuel_press_3")) -- топливо может быть подано в двигатель. без учета стоп-кранов

defineProperty("throttle_lock", globalPropertyf("tu154b2/custom/controlls/throttle_lock")) -- рычаг фиксации РУД

defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight
defineProperty("pump_tank2_left1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_left_work1"))
defineProperty("pump_tank2_left2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_left_work2"))
defineProperty("pump_tank2_right1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_right_work1"))
defineProperty("pump_tank2_right2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_right_work2"))
defineProperty("pump_tank3_left1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work1"))
defineProperty("pump_tank3_left2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work2"))
defineProperty("pump_tank3_left3_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work3"))
defineProperty("pump_tank3_right1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work1"))
defineProperty("pump_tank3_right2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work2"))
defineProperty("pump_tank3_right3_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work3"))
defineProperty("pump_tank41_work", globalPropertyi("tu154b2/custom/fuel/pump_tank4_work1"))
defineProperty("pump_tank42_work", globalPropertyi("tu154b2/custom/fuel/pump_tank4_work2"))
defineProperty("pump_tank1_1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_4_work"))

defineProperty("stu_mode", globalPropertyi("tu154b2/custom/absu/stu_mode")) -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	

-- defineProperty("engn_oil_qty_1", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_1")) 
-- defineProperty("engn_oil_qty_2", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_2")) 
-- defineProperty("engn_oil_qty_3", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_3"))

defineProperty("oil_qty_1", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_1")) -- количество масла
defineProperty("oil_qty_2", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_2")) -- количество масла
defineProperty("oil_qty_3", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_3")) -- количество масла



defineProperty("eng_filter_1", globalPropertyi("sim/operation/failures/rel_eng_lo0"))
defineProperty("eng_filter_2", globalPropertyi("sim/operation/failures/rel_eng_lo1"))
defineProperty("eng_filter_3", globalPropertyi("sim/operation/failures/rel_eng_lo2"))

defineProperty("vibro_pwr_1", globalPropertyi("sim/custom/gauges/eng/vibro_pwr1"))
defineProperty("vibro_pwr_2", globalPropertyi("sim/custom/gauges/eng/vibro_pwr2"))
defineProperty("vibro_pwr_3", globalPropertyi("sim/custom/gauges/eng/vibro_pwr3"))
defineProperty("vibro_opor", globalPropertyi("sim/custom/gauges/eng/opora_sel_vibro"))
defineProperty("vibr_test_1", globalPropertyi("sim/custom/gauges/eng/back_opora_push_vibro"))
defineProperty("vibr_test_2", globalPropertyi("sim/custom/gauges/eng/front_opora_push_vibro"))
defineProperty("egt_1", globalPropertyi("sim/custom/gauges/eng/eng1_temp_ctrl"))
defineProperty("egt_2", globalPropertyi("sim/custom/gauges/eng/eng2_temp_ctrl"))
defineProperty("egt_3", globalPropertyi("sim/custom/gauges/eng/eng3_temp_ctrl"))

-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- engines
defineProperty("eng1_N2", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd1")) -- engine 1 rpm
defineProperty("eng2_N2", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd2")) -- engine 2 rpm
defineProperty("eng3_N2", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd3")) -- engine 3 rpm

defineProperty("fire_main_switch", globalPropertyi("tu154b2/custom/switchers/eng/fire_main_switch")) -- выключатель пожарной системы

defineProperty("sim_engine_on_fire1", globalPropertyi("sim/operation/failures/rel_engfir0"))  -- left engine on fire
defineProperty("sim_engine_on_fire2", globalPropertyi("sim/operation/failures/rel_engfir1"))  -- mid engine on fire
defineProperty("sim_engine_on_fire3", globalPropertyi("sim/operation/failures/rel_engfir2"))  -- right engine on fire

defineProperty("egt_1", globalPropertyf("sim/custom/gauges/eng/egt_1_new")) -- ТВГ двиг 1
defineProperty("egt_2", globalPropertyf("sim/custom/gauges/eng/egt_2_new")) -- ТВГ двиг 2
defineProperty("egt_3", globalPropertyf("sim/custom/gauges/eng/egt_3_new")) -- ТВГ двиг 3

defineProperty("speaker_fuel", globalPropertyi("tu154b2/custom/alarm/speaker_fuel")) -- остаток топлива 2500 в баке 1

defineProperty("eng1_high_temp", globalPropertyf("tu154b2/custom/lights/engines/eng1_t_high"))
defineProperty("eng2_high_temp", globalPropertyf("tu154b2/custom/lights/engines/eng2_t_high"))
defineProperty("eng3_high_temp", globalPropertyf("tu154b2/custom/lights/engines/eng3_t_high"))

defineProperty("eng1_stop", globalPropertyf("sim/custom/lights/engines/eng1_stop_gas"))
defineProperty("eng2_stop", globalPropertyf("sim/custom/lights/engines/eng2_stop_gas"))
defineProperty("eng3_stop", globalPropertyf("sim/custom/lights/engines/eng3_stop_gas"))

defineProperty("rt1_stop", globalPropertyi("tu154b2/custom/SC/engine/rt_stop1"))
defineProperty("rt2_stop", globalPropertyi("tu154b2/custom/SC/engine/rt_stop2"))
defineProperty("rt3_stop", globalPropertyi("tu154b2/custom/SC/engine/rt_stop3"))

defineProperty("igv1", globalPropertyi("tu154b2/custom/engines/rna_1"))
defineProperty("igv2", globalPropertyi("tu154b2/custom/engines/rna_2"))
defineProperty("igv3", globalPropertyi("tu154b2/custom/engines/rna_3"))

defineProperty("man_at", globalPropertyi("tu154b2/custom/failures/absu_at_blocked"))

defineProperty("kpp1", globalPropertyf("tu154b2/custom/engine/kpp1"))
defineProperty("kpp2", globalPropertyf("tu154b2/custom/engine/kpp2"))
defineProperty("kpp3", globalPropertyf("tu154b2/custom/engine/kpp3"))

defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

bearing_1_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_1")
bearing_2_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_2")
bearing_3_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_3")

stp_1 = globalPropertyf("tu154b2/custom/lights/engines/eng1_stp")
stp_2 = globalPropertyf("tu154b2/custom/lights/engines/eng2_stp")
stp_3 = globalPropertyf("tu154b2/custom/lights/engines/eng3_stp")

stp_1_test = globalPropertyi("sim/custom/b2/stp_test_4")
stp_2_test = globalPropertyi("sim/custom/b2/stp_test_5")
stp_3_test = globalPropertyi("sim/custom/b2/stp_test_6")

stp_1_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_1")
stp_2_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_2")
stp_3_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_3")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))

local panel_x=0.727
local panel_z=-21.342
local dist_gain=2


local passed = get(frame_time)
local notLoaded = true

local eng_1_fail_src = 0
local eng_2_fail_src = 0
local eng_3_fail_src = 0

local rev_L=0
local rev_R=0

local eng_block_brt = 0
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

local function reset_switchers()
	if get(eng1_N2) < 5 and get(eng2_N2) < 5 and get(eng3_N2) < 5 then
		set(gauges_on_1, 0)
		set(gauges_on_2, 0)
		set(gauges_on_3, 0)
		set(gauges_on_1_cap, 1)
		set(gauges_on_2_cap, 1)
		set(gauges_on_3_cap, 1)
	end
	
	notLoaded = false
end

local function small_lamps()
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	
	local starter_high_rpm_1_brt = math.max(0, test_btn) -- fake for now
	set(starter_high_rpm_1, starter_high_rpm_1_brt)
	
	local starter_high_rpm_2_brt = math.max(0, test_btn) -- fake for now
	set(starter_high_rpm_2, starter_high_rpm_2_brt)
	
	local starter_high_rpm_3_brt = math.max(0, test_btn) -- fake for now
	set(starter_high_rpm_3, starter_high_rpm_3_brt)
	
	local fuel_2500_brt = 0
	if get(tank1_w) < 2500 then fuel_2500_brt = 1 end
	
	set(speaker_fuel, fuel_2500_brt)
	
	fuel_2500_brt = math.max(fuel_2500_brt * lamps_brt, test_btn)
	set(fuel_2500, fuel_2500_brt)
	
	local fuel_tank1_used_brt = 0
	if get(pump_tank2_left1_work) + get(pump_tank2_left2_work) + get(pump_tank2_right1_work) + get(pump_tank2_right2_work) + get(pump_tank3_left1_work) + get(pump_tank3_left2_work) + get(pump_tank3_left3_work) + get(pump_tank3_right1_work) + get(pump_tank3_right2_work) + get(pump_tank3_right3_work) + get(pump_tank41_work) + get(pump_tank42_work) == 0 and 
		get(pump_tank1_1_work) + get(pump_tank1_2_work) + get(pump_tank1_3_work) + get(pump_tank1_4_work) > 0
	then fuel_tank1_used_brt = 1 end
	fuel_tank1_used_brt = math.max(fuel_tank1_used_brt * lamps_brt, test_btn) 
	set(fuel_tank1_used, fuel_tank1_used_brt)
	
	local oil_meter_qty_1_brt = math.max(get(gauges_on_1) * lamps_brt, test_btn) 
	set(oil_meter_qty_1, oil_meter_qty_1_brt)
	
	local oil_meter_qty_2_brt = math.max(get(gauges_on_2) * lamps_brt, test_btn) 
	set(oil_meter_qty_2, oil_meter_qty_2_brt)
	
	local oil_meter_qty_3_brt = math.max(get(gauges_on_3) * lamps_brt, test_btn) 
	set(oil_meter_qty_3, oil_meter_qty_3_brt)
	

end

local revers_flap_L_last = get(revers_flap_L)

local function lamps_eng1()
	local day_night = 1 - get(day_night_set) * 0.25
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	local lamps_brt = math.max((get(bus27_volt_left) - 10) / 18.5, 0) * day_night
	local RPM = get(eng1_N2)
	--local RPM2 = get(rpm_high_1)
	local eng1_dangerous_vibro_brt = 0
	local vibr = get(vibra_1)
	if vibr > 65 then eng1_dangerous_vibro_brt = 1 end
	eng1_dangerous_vibro_brt = math.max(eng1_dangerous_vibro_brt * lamps_brt, test_btn)
	set(eng1_dangerous_vibro, eng1_dangerous_vibro_brt)
	
	local eng1_oil_level_brt = math.max(bool2int(get(oil_qty_1) < 10) * get(gauges_on_1) * lamps_brt, test_btn) 
	set(eng1_oil_level, eng1_oil_level_brt)
	
	local eng1_oil_p_brt = 0
	local oil_p = get(oil_p_1)
	if oil_p < 2.3 then eng1_oil_p_brt = lamps_brt end
	eng1_oil_p_brt = math.max(eng1_oil_p_brt, test_btn)
	set(eng1_oil_p, eng1_oil_p_brt)
	
	local eng1_bypass_valve_brt = 0
	if get(kpp1)>0 then eng1_bypass_valve_brt = 1 end
	eng1_bypass_valve_brt = math.max(eng1_bypass_valve_brt * lamps_brt, test_btn)
	set(eng1_bypass_valve, eng1_bypass_valve_brt)

	local eng1_vna33_brt = 0
	eng1_vna33_brt = get(igv1)
	eng1_vna33_brt = math.max(eng1_vna33_brt * lamps_brt, test_btn)
	set(eng1_vna33, eng1_vna33_brt)
	
	if RPM>30 then
		rev_L = get(revers_flap_L)
	end
	local eng1_reverse_lock_brt = 0 
	if rev_L ~= revers_flap_L_last and rev_L > 0.05 and rev_L < 0.95 then 
		eng1_reverse_lock_brt = 1 
	end
	eng1_reverse_lock_brt = math.max(eng1_reverse_lock_brt, test_btn) -- fake for now
	set(eng1_reverse_lock, eng1_reverse_lock_brt)
	
	local eng1_high_vibro_brt = 0
	if vibr > 55 then eng1_high_vibro_brt = 1 end
	eng1_high_vibro_brt = math.max(eng1_high_vibro_brt * lamps_brt, test_btn)
	set(eng1_high_vibro, eng1_high_vibro_brt)
	
	local chip_det = get(chip_detect1)
	local eng1_chips_brt = chip_det
	eng1_chips_brt = math.max(eng1_chips_brt * lamps_brt, test_btn)
	set(eng1_chips, eng1_chips_brt)
	
	local eng1_t = bool2int(get(egt_1)>710)
	eng1_t_brt = math.max(eng1_t * lamps_brt, test_btn)
	set(eng1_high_temp, eng1_t_brt)
	
	local eng1_rt = get(rt1_stop)
	eng1_rt_brt = math.max(eng1_rt * lamps_brt, test_btn)
	set(eng1_stop, eng1_rt_brt)
	
	local fuel_p = get(eng_fuel_press_1)
	local eng1_fuel_p_brt = (1 - fuel_p) * lamps_brt -- * get(gauges_on_1)
	eng1_fuel_p_brt = math.max(eng1_fuel_p_brt, test_btn)
	set(eng1_fuel_p, eng1_fuel_p_brt)
	
	local eng1_filter_fail_brt = math.max(bool2int(get(eng_filter_1) == 6), test_btn)
	set(eng1_filter_fail, eng1_filter_fail_brt)
	
	local eng1_vna0_brt = 0
	if RPM < 91 then eng1_vna0_brt = 1 end
	eng1_vna0_brt = math.max(eng1_vna0_brt * lamps_brt, test_btn)
	set(eng1_vna0, eng1_vna0_brt)
	
	local eng1_reverse_doors_brt = 0
	if rev_L > 0.7 then eng1_reverse_doors_brt = 1 end
	eng1_reverse_doors_brt = math.max(eng1_reverse_doors_brt * lamps_brt, test_btn) 
	set(eng1_reverse_doors, eng1_reverse_doors_brt)
	
	local eng1_stp_brt = 0
	if (get(bearing_1_temp)>190 or get(stp_1_test)~=0) and get(stp_1_fail)==0 then
		eng1_stp_brt = 1
	end
	eng1_stp_brt = math.max(eng1_stp_brt * lamps_brt, test_btn) 
	set(stp_1,eng1_stp_brt)
	
	eng_1_fail_src = bool2int(oil_p < 2.3 or (rev_L ~= revers_flap_L_last and rev_L > 0.05 and rev_L < 0.95) or vibr > 55 or chip_det == 1 or fuel_p == 0 or (get(fire_main_switch) * get(sim_engine_on_fire1) == 6) or get(egt_1) > 710)
	--set(eng_debug1,eng_1_fail_src)
	
	revers_flap_L_last = rev_L
	
	
	
end

local function lamps_eng2()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	local RPM = get(eng2_N2)
	--local RPM2 = get(rpm_high_2)
	local eng2_dangerous_vibro_brt = 0
	local vibr = get(vibra_2)
	if vibr > 65 then eng2_dangerous_vibro_brt = 1 end
	eng2_dangerous_vibro_brt = math.max(eng2_dangerous_vibro_brt * lamps_brt, test_btn)
	set(eng2_dangerous_vibro, eng2_dangerous_vibro_brt)
	
	local eng2_oil_level_brt = math.max(bool2int(get(oil_qty_2) < 10) * get(gauges_on_2) * lamps_brt, test_btn) 
	set(eng2_oil_level, eng2_oil_level_brt)
	
	local eng2_oil_p_brt = 0
	local oil_p = get(oil_p_2)
	if oil_p < 2.3 then eng2_oil_p_brt = 1 end
	eng2_oil_p_brt = math.max(eng2_oil_p_brt * lamps_brt, test_btn)
	set(eng2_oil_p, eng2_oil_p_brt)
	
	local eng2_bypass_valve_brt = 0
	if get(kpp2)>0 then eng2_bypass_valve_brt = 1 end
	eng2_bypass_valve_brt = math.max(eng2_bypass_valve_brt * lamps_brt, test_btn)
	set(eng2_bypass_valve, eng2_bypass_valve_brt)

	local eng2_vna33_brt = 0
	eng2_vna33_brt = get(igv2)
	eng2_vna33_brt = math.max(eng2_vna33_brt * lamps_brt, test_btn)
	set(eng2_vna33, eng2_vna33_brt)
	
	local eng_at_on_brt = math.max(bool2int(get(stu_mode) > 2), test_btn) * lamps_brt
	set(eng_at_on, eng_at_on_brt)
	
	local eng2_high_vibro_brt = 0
	if vibr > 55 then eng2_high_vibro_brt = 1 end
	eng2_high_vibro_brt = math.max(eng2_high_vibro_brt * lamps_brt, test_btn)
	set(eng2_high_vibro, eng2_high_vibro_brt)
	
	local chip_det = get(chip_detect2)
	local eng2_chips_brt = math.max(chip_det * lamps_brt, test_btn)
	set(eng2_chips, eng2_chips_brt)
	
	local eng2_t = bool2int(get(egt_2)>710)
	eng2_t_brt = math.max(eng2_t * lamps_brt, test_btn)
	set(eng2_high_temp, eng2_t_brt)
	
	local eng2_rt = get(rt2_stop)
	eng2_rt_brt = math.max(eng2_rt * lamps_brt, test_btn)
	set(eng2_stop, eng2_rt_brt)
	
	local fuel_p = get(eng_fuel_press_2)
	local eng2_fuel_p_brt = (1 - fuel_p) * lamps_brt-- * get(gauges_on_2)
	eng2_fuel_p_brt = math.max(eng2_fuel_p_brt, test_btn)
	set(eng2_fuel_p, eng2_fuel_p_brt)
	
	local eng2_filter_fail_brt = math.max(bool2int(get(eng_filter_2) == 6), test_btn) 
	set(eng2_filter_fail, eng2_filter_fail_brt)
	
	local eng2_vna0_brt = 0
	if RPM < 91 then eng2_vna0_brt = 1 end
	eng2_vna0_brt = math.max(eng2_vna0_brt * lamps_brt, test_btn)
	set(eng2_vna0, eng2_vna0_brt)
	
	if get(man_at)>0 then 
		eng_block_brt = 1 
	elseif get(man_at)==0 and get(throttle_lock)==0 and eng_block_brt == 1 then
		eng_block_brt = 0
	end
	eng_block_brt = math.max(eng_block_brt * lamps_brt, test_btn)
	set(eng_block, eng_block_brt)
		
	local eng2_stp_brt = 0
	if (get(bearing_2_temp)>190 or get(stp_2_test)~=0) and get(stp_2_fail)==0 then
		eng2_stp_brt = 1
	end
	eng2_stp_brt = math.max(eng2_stp_brt * lamps_brt, test_btn) 
	set(stp_2,eng2_stp_brt)

	eng_2_fail_src = bool2int(oil_p < 2.3 or vibr > 55 or chip_det == 1 or fuel_p == 0 or (get(fire_main_switch) * get(sim_engine_on_fire2) == 6) or get(egt_2) > 710)
		
end


local revers_flap_R_last = get(revers_flap_R)
local function lamps_eng3()

	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	local RPM = get(eng3_N2)
	--local RPM2 = get(rpm_high_3)
	local eng3_dangerous_vibro_brt = 0
	local vibr = get(vibra_3)
	if vibr > 65 then eng3_dangerous_vibro_brt = 1 end
	eng3_dangerous_vibro_brt = math.max(eng3_dangerous_vibro_brt * lamps_brt, test_btn)
	set(eng3_dangerous_vibro, eng3_dangerous_vibro_brt)
	
	local eng3_oil_level_brt = math.max(bool2int(get(oil_qty_3) < 10) * get(gauges_on_3) * lamps_brt, test_btn) 
	set(eng3_oil_level, eng3_oil_level_brt)
	
	local eng3_oil_p_brt = 0
	local oil_p = get(oil_p_3)
	if oil_p < 2.3 then eng3_oil_p_brt = 1 end
	eng3_oil_p_brt = math.max(eng3_oil_p_brt * lamps_brt, test_btn) 
	set(eng3_oil_p, eng3_oil_p_brt)
	
	local eng3_bypass_valve_brt = 0
	if get(kpp3)>0 then eng3_bypass_valve_brt = 1 end
	eng3_bypass_valve_brt = math.max(eng3_bypass_valve_brt * lamps_brt, test_btn)
	set(eng3_bypass_valve, eng3_bypass_valve_brt)

	local eng3_vna33_brt = 0
	eng3_vna33_brt = get(igv3)
	eng3_vna33_brt = math.max(eng3_vna33_brt * lamps_brt , test_btn)
	set(eng3_vna33, eng3_vna33_brt)
	
	if RPM>30 then
		rev_R = get(revers_flap_R)
	end
	local eng3_reverse_lock_brt = 0 
	if rev_R ~= revers_flap_R_last and rev_R > 0.05 and rev_R < 0.9 then
		eng3_reverse_lock_brt = 1 
	end
	eng3_reverse_lock_brt = math.max(eng3_reverse_lock_brt * lamps_brt, test_btn) 
	set(eng3_reverse_lock, eng3_reverse_lock_brt)
	
	local eng3_high_vibro_brt = 0
	if vibr > 55 then eng3_high_vibro_brt = 1 end
	eng3_high_vibro_brt = math.max(eng3_high_vibro_brt * lamps_brt , test_btn)
	set(eng3_high_vibro, eng3_high_vibro_brt)
	
	local chip_det = get(chip_detect3)
	local eng3_chips_brt = chip_det
	eng3_chips_brt = math.max(eng3_chips_brt * lamps_brt, test_btn)
	set(eng3_chips, eng3_chips_brt)
	
	local eng3_t = bool2int(get(egt_3)>710)
	eng3_t_brt = math.max(eng3_t * lamps_brt, test_btn)
	set(eng3_high_temp, eng3_t_brt)
	
	local eng3_rt = get(rt3_stop)
	eng3_rt_brt = math.max(eng3_rt * lamps_brt, test_btn)
	set(eng3_stop, eng3_rt_brt)
	
	local fuel_p = get(eng_fuel_press_3)
	local eng3_fuel_p_brt = (1 - fuel_p) * lamps_brt
	eng3_fuel_p_brt = math.max(eng3_fuel_p_brt, test_btn) 
	set(eng3_fuel_p, eng3_fuel_p_brt)
	
	local eng3_filter_fail_brt = math.max(bool2int(get(eng_filter_3) == 6), test_btn)
	set(eng3_filter_fail, eng3_filter_fail_brt)
	
	local eng3_vna0_brt = 0
	if RPM < 91 then eng3_vna0_brt = 1 end
	eng3_vna0_brt = math.max(eng3_vna0_brt * lamps_brt, test_btn)
	set(eng3_vna0, eng3_vna0_brt)
	
	local eng3_reverse_doors_brt = 0
	if rev_R > 0.7 then eng3_reverse_doors_brt = 1 end
	eng3_reverse_doors_brt = math.max(eng3_reverse_doors_brt * lamps_brt, test_btn)
	set(eng3_reverse_doors, eng3_reverse_doors_brt)
	
	local eng3_stp_brt = 0
	if (get(bearing_3_temp)>185 or get(stp_3_test)~=0) and get(stp_3_fail)==0 then
		eng3_stp_brt = 1
	end
	eng3_stp_brt = math.max(eng3_stp_brt * lamps_brt, test_btn) 
	set(stp_3,eng3_stp_brt)
		
	eng_3_fail_src = bool2int(oil_p < 2.3 or (rev_R ~= revers_flap_R_last and rev_R > 0.05 and rev_R < 0.95) or vibr > 55 or chip_det == 1 or fuel_p == 0 or (get(fire_main_switch) * get(sim_engine_on_fire3) == 6) or get(egt_3) > 710)	
	
	revers_flap_R_last = rev_R
end

local function lamps_fwd()

	local day_night = 1 - get(day_night_set) * 0.25
	local test_btn = get(lamp_test_fwd) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	local lamps_brt_L = math.max((get(bus27_volt_left) - 10) / 18.5, 0) * day_night
	local lamps_brt_R = math.max((get(bus27_volt_right) - 10) / 18.5, 0) * day_night
	
	if get(eng1_N2)>30 then
		rev_L = get(revers_flap_L)
	end
	if get(eng3_N2)>30 then
		rev_R = get(revers_flap_R)
	end
	
	local eng1_reverse_doors_brt = 0
	if rev_L > 0.7 then eng1_reverse_doors_brt = 1 end
	eng1_reverse_doors_brt = math.max(eng1_reverse_doors_brt * lamps_brt_L, test_btn) 
	set(fp_reverse_1, eng1_reverse_doors_brt)
	
	local eng3_reverse_doors_brt = 0
	if rev_R > 0.7 then eng3_reverse_doors_brt = 1 end
	eng3_reverse_doors_brt = math.max(eng3_reverse_doors_brt * lamps_brt_R, test_btn) 
	set(fp_reverse_3, eng3_reverse_doors_brt)
	
	local fp_eng_fail_1_brt = math.max(eng_1_fail_src * lamps_brt_L, test_btn) 
	set(fp_eng_fail_1, fp_eng_fail_1_brt)
	--set(eng_debug2,fp_eng_fail_1_brt)
	
	local fp_eng_fail_2_brt = math.max(eng_2_fail_src * lamps_brt_R, test_btn) 
	set(fp_eng_fail_2, fp_eng_fail_2_brt)
	
	local fp_eng_fail_3_brt = math.max(eng_3_fail_src * lamps_brt_R, test_btn) 
	set(fp_eng_fail_3, fp_eng_fail_3_brt)

end





-- sounds
local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local rotary_sound2_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local rotary_sound2_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')

local control_ut1_last = get(control_ut1)
local control_ut2_last = get(control_ut2)
local control_ut3_last = get(control_ut3)
local control_vibro_1_last = get(control_vibro_1)
local control_vibro_2_last = get(control_vibro_2)
local control_vibro_3_last = get(control_vibro_3)
-- local vibro_sel_1_last = get(vibro_sel_1)
-- local vibro_sel_2_last = get(vibro_sel_2)
-- local vibro_sel_3_last = get(vibro_sel_3)
local test_lamps_last = get(test_lamps)

local gauges_on_1_last = get(gauges_on_1)
local gauges_on_2_last = get(gauges_on_2)
local gauges_on_3_last = get(gauges_on_3)

local gauges_on_1_cap_last = get(gauges_on_1_cap)
local gauges_on_2_cap_last = get(gauges_on_2_cap)
local gauges_on_3_cap_last = get(gauges_on_3_cap)

local vibro_pow_1_last=get(vibro_pwr_1)
local vibro_pow_2_last=get(vibro_pwr_2)
local vibro_pow_3_last=get(vibro_pwr_3)
local vibro_select_last=get(vibro_sel)
local vibr_bear_last=get(vibro_opor)
local vibr_test_front_last=get(vibr_test_1)
local vibr_test_back_last=get(vibr_test_2)
local egt_1_last=get(egt_1)
local egt_2_last=get(egt_2)
local egt_3_last=get(egt_3)

local function check_controls(gain_L, gain_R,dist)
	
	local control_ut1_sw = get(control_ut1)
	local control_ut2_sw = get(control_ut2)
	local control_ut3_sw = get(control_ut3)
	local control_vibro_1_sw = get(control_vibro_1)
	local control_vibro_2_sw = get(control_vibro_2)
	local control_vibro_3_sw = get(control_vibro_3)
	-- local vibro_sel_1_sw = get(vibro_sel_1)
	-- local vibro_sel_2_sw = get(vibro_sel_2)
	-- local vibro_sel_3_sw = get(vibro_sel_3)
	local test_lamps_swt = get(test_lamps)
	local gauges_on_1_sw = get(gauges_on_1)
	local gauges_on_2_sw = get(gauges_on_2)
	local gauges_on_3_sw = get(gauges_on_3)
	
	local gauges_on_1_cap_sw = get(gauges_on_1_cap)
	local gauges_on_2_cap_sw = get(gauges_on_2_cap)
	local gauges_on_3_cap_sw = get(gauges_on_3_cap)
	
	local vibro_pow_1_sw=get(vibro_pwr_1)
	local vibro_pow_2_sw=get(vibro_pwr_2)
	local vibro_pow_3_sw=get(vibro_pwr_3)
	local vibro_select_sw=get(vibro_sel)
	local vibr_bear_sw=get(vibro_opor)
	local vibr_test_front_sw=get(vibr_test_1)
	local vibr_test_back_sw=get(vibr_test_2)
	local egt_1_sw=get(egt_1)
	local egt_2_sw=get(egt_2)
	local egt_3_sw=get(egt_3)
	-- play sounds on change position
	local change_but = control_ut1_sw + control_ut2_sw +control_ut3_sw +control_vibro_1_sw + control_vibro_2_sw + control_vibro_3_sw + test_lamps_swt + vibr_test_front_sw + vibr_test_back_sw - vibr_test_front_last - vibr_test_back_last
	change_but = change_but - control_ut1_last- control_ut2_last- control_ut3_last - control_vibro_1_last - control_vibro_2_last - control_vibro_3_last - test_lamps_last
	
	local change_sw = vibro_pow_1_sw+vibro_pow_2_sw+vibro_pow_3_sw-vibro_pow_1_last-vibro_pow_2_last-vibro_pow_3_last+vibro_select_sw-vibro_select_last+egt_1_sw+egt_2_sw+egt_3_sw-egt_1_last-egt_2_last-egt_3_last
	--change_sw =change_sw + gauges_on_1_sw + gauges_on_2_sw + gauges_on_3_sw - gauges_on_1_last - gauges_on_2_last - gauges_on_3_last
	
	local change_sw2=vibr_bear_sw-vibr_bear_last
	
	local caps_change = gauges_on_1_cap_sw + gauges_on_2_cap_sw + gauges_on_3_cap_sw - gauges_on_1_cap_last - gauges_on_2_cap_last - gauges_on_3_cap_last
	setSampleGain(rotary_sound_L,gain_L*dist)
	setSampleGain(rotary_sound_R,gain_R*dist)
	setSampleGain(rotary_sound2_L,gain_L*dist)
	setSampleGain(rotary_sound2_R,gain_R*dist)
	setSampleGain(button_sound_L,gain_L*dist)
	setSampleGain(button_sound_R,gain_R*dist)
	setSampleGain(cap_sound_L,gain_L*dist)
	setSampleGain(cap_sound_R,gain_R*dist)
	
	if change_but ~= 0 then
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	if change_sw ~= 0 then
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	if change_sw2 ~= 0 then
		playSample(rotary_sound2_L, false)
		playSample(rotary_sound2_R, false)
	end
	if caps_change ~= 0 then 
		playSample(cap_sound_L, false) 
		playSample(cap_sound_R, false) 
	end 
	-- check caps
	if gauges_on_1_cap_sw == 0 then set(gauges_on_1, 1) end
	if gauges_on_2_cap_sw == 0 then set(gauges_on_2, 1) end
	if gauges_on_3_cap_sw == 0 then set(gauges_on_3, 1) end
	
	
	control_ut1_last = get(control_ut1)
	control_ut2_last = get(control_ut2)
	control_ut3_last = get(control_ut3)
	control_vibro_1_last = get(control_vibro_1)
	control_vibro_2_last = get(control_vibro_2)
	control_vibro_3_last = get(control_vibro_3)
	test_lamps_last = get(test_lamps)
	gauges_on_1_last = gauges_on_1_sw
	gauges_on_2_last = gauges_on_2_sw
	gauges_on_3_last = gauges_on_3_sw
	gauges_on_1_cap_last = gauges_on_1_cap_sw
	gauges_on_2_cap_last = gauges_on_2_cap_sw
	gauges_on_3_cap_last = gauges_on_3_cap_sw
	vibro_pow_1_last=vibro_pow_1_sw
	vibro_pow_2_last=vibro_pow_2_sw
	vibro_pow_3_last=vibro_pow_3_sw
	vibro_select_last=vibro_select_sw
	vibr_bear_last=vibr_bear_sw
	vibr_test_front_last=vibr_test_front_sw
	vibr_test_back_last=vibr_test_back_sw
	egt_1_last=egt_1_sw
	egt_2_last=egt_2_sw
	egt_3_last=egt_3_sw
	
end

local sim_start_timer = 0

function update()
	
	passed = get(frame_time)
	sim_start_timer = sim_start_timer + passed
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
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
		check_controls(gain_L, gain_R,dist)
		lamps_eng1()
		lamps_eng2()
		lamps_eng3()
		lamps_fwd()
		small_lamps()
	end
	

	
	

end


