-- fuel system panel

-- gauges
fuel_meter_summ = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_summ") -- сумарная масса топлива
fuel_meter_tank1 = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_tank1") -- масса топлива в баке 1
fuel_meter_tank2_left = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_tank2_left") -- масса топлива в баке 2
fuel_meter_tank2_right = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_tank2_right") -- масса топлива в баке 2
fuel_meter_tank3_left = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_tank3_left") -- масса топлива в баке 3
fuel_meter_tank3_right = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_tank3_right") -- масса топлива в баке 3
fuel_meter_tank4 = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_tank4") -- масса топлива в баке 4
fuel_meter_mech = globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_mech") -- расходомер
fuel_front_ind = globalPropertyf("tu154b2/custom/gauges/misc/fuel_front_ind") -- индикатор топлива на передней панели


-- controls on gauges
fuel_meter_summ_zero = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_summ_zero") -- сумарная масса топлива. кнопка нуля
fuel_meter_summ_max = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_summ_max") -- сумарная масса топлива. кнопка P
fuel_meter_tank2_zero = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_tank2_zero") -- топливомер бака 2. кнопка нуля
fuel_meter_tank2_max = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_tank2_max") -- стопливомер бака 2. кнопка P
fuel_meter_tank3_zero = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_tank3_zero") -- топливомер бака 3. кнопка нуля
fuel_meter_tank3_max = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_tank3_max") -- топливомер бака 3. кнопка P
fuel_meter_tank4_zero = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_tank4_zero") -- топливомер бака 4. кнопка нуля
fuel_meter_tank4_max = globalPropertyf("tu154b2/custom/buttons/fuel/fuel_meter_tank4_max") -- топливомер бака 4. кнопка P
fuel_front_zero = globalPropertyf("tu154b2/custom/buttons/misc/fuel_front_zero") -- индикатор топлива на передней панели.кнопка нуля
fuel_front_max = globalPropertyf("tu154b2/custom/buttons/misc/fuel_front_max") -- индикатор топлива на передней панели.кнопка макс


-- controls
pump_tank2_left = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank2_left") -- насосы бака 2
pump_tank2_right = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank2_right") -- насосы бака 2
pump_tank3_left = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank3_left") -- насосы бака 3
pump_tank3_right = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank3_right") -- насосы бака 3
pump_tank4 = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank4") -- насосы бака 4
pump_tank1_1 = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_1") -- насосы бака 1
pump_tank1_2 = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_2") -- насосы бака 1
pump_tank1_3 = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_3") -- насосы бака 1
pump_tank1_4 = globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_4") -- насосы бака 1

fuel_trans = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_trans") -- краны резервой перекачки
fuel_trans_cap = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_trans_cap") -- краны резервой перекачки
fuel_porc = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_porc") -- принуд порц
fuel_porc_cap = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_porc_cap") -- принуд порц
fuel_level = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_level") -- автомат выравнивания
fuel_flow_mode = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_flow_mode") -- режим топлвиной системы. ручное - автомат
fuel_flow_on = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_flow_on") -- автомат расхода
fuel_flow_on_cap = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_flow_on_cap") -- автомат расхода

fuel_meter_on = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_meter_on") -- топливомер
fuel_meter_mech_on = globalPropertyi("tu154b2/custom/switchers/fuel/fuel_meter_mech_on") -- расходомер
fire_valve_1 = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_1") -- пожарный кран
fire_valve_2 = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_2") -- пожарный кран
fire_valve_3 = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_3") -- пожарный кран
fire_valve_1_cap = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_1_cap") -- пожарный кран
fire_valve_2_cap = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_2_cap") -- пожарный кран
fire_valve_3_cap = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_3_cap") -- пожарный кран

reserv_pump_test = globalPropertyi("tu154b2/custom/buttons/eng/reserv_pump_test") -- кнопка проверки резерв насоса


-- lamps
fuel_2500 = globalPropertyf("tu154b2/custom/lights/small/fuel_2500") -- остаток топлива 2500
fuel_tank1_used = globalPropertyf("tu154b2/custom/lights/small/fuel_tank1_used") -- расход из бака 1
fuel_tank3_left_fail = globalPropertyf("tu154b2/custom/lights/small/fuel_tank3_left_fail") -- красная лампа бака 3 лев
fuel_tank2_left_fail = globalPropertyf("tu154b2/custom/lights/small/fuel_tank2_left_fail") -- красная лампа бака 2 лев
fuel_tank2_right_fail = globalPropertyf("tu154b2/custom/lights/small/fuel_tank2_right_fail") -- красная лампа бака 2 прав
fuel_tank3_right_fail = globalPropertyf("tu154b2/custom/lights/small/fuel_tank3_right_fail") -- красная лампа бака 3 прав

fuel_pump_left_5 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_left_5") -- насос бака 5 лев
fuel_pump_left_6 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_left_6") -- насос бака 6 лев
fuel_pump_left_7 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_left_7") -- насос бака 7 лев
fuel_pump_left_8 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_left_8") -- насос бака 8 лев
fuel_pump_left_9 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_left_9") -- насос бака 9 лев

fuel_pump_right_5 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_right_5") -- насос бака 5 прав
fuel_pump_right_6 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_right_6") -- насос бака 6 прав
fuel_pump_right_7 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_right_7") -- насос бака 7 прав
fuel_pump_right_8 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_right_8") -- насос бака 8 прав
fuel_pump_right_9 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_right_9") -- насос бака 9 прав

fuel_pump_10 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_10") -- насос бака 10 прав
fuel_pump_11 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_11") -- насос бака 11 прав
fuel_pump_1 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_1") -- насос бака 1 прав
fuel_pump_2 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_2") -- насос бака 2 прав
fuel_pump_3 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_3") -- насос бака 3 прав
fuel_pump_4 = globalPropertyf("tu154b2/custom/lights/small/fuel_pump_4") -- насос бака 4 прав


fuel_cut_off_1 = globalPropertyf("tu154b2/custom/lights/small/fuel_cut_off_1") -- перекрывные краны
fuel_cut_off_2 = globalPropertyf("tu154b2/custom/lights/small/fuel_cut_off_2") -- перекрывные краны
fuel_cut_off_3 = globalPropertyf("tu154b2/custom/lights/small/fuel_cut_off_3") -- перекрывные краны
fuel_flow_from_2 = globalPropertyf("tu154b2/custom/lights/small/fuel_flow_from_2") -- порядок расхода
fuel_flow_from_3 = globalPropertyf("tu154b2/custom/lights/small/fuel_flow_from_3") -- порядок расхода
fuel_flow_from_4 = globalPropertyf("tu154b2/custom/lights/small/fuel_flow_from_4") -- порядок расхода

fuel_flow_auto_fail = globalPropertyf("tu154b2/custom/lights/small/fuel_flow_auto_fail") -- автомат расхода не работает
fuel_reserv_trans_left = globalPropertyf("tu154b2/custom/lights/small/fuel_reserv_trans_left") -- резервная перекачка в бак 1 
fuel_reserv_trans_right = globalPropertyf("tu154b2/custom/lights/small/fuel_reserv_trans_right") -- резервная перекачка в бак 1 
fuel_porc_reserv = globalPropertyf("tu154b2/custom/lights/small/fuel_porc_reserv") -- порцевание
fuel_level_automat = globalPropertyf("tu154b2/custom/lights/small/fuel_level_automat") -- автомат выравнивания


-- sources -- 

-- engines
eng1_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
eng2_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[1]") -- engine 2 rpm
eng3_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[2]") -- engine 3 rpm

ENGN_FF_1 = globalProperty("tu154b2/custom/gauges/eng/fuel_flow_1") -- FF kg/h
ENGN_FF_2 = globalProperty("tu154b2/custom/gauges/eng/fuel_flow_2") -- FF kg/h
ENGN_FF_3 = globalProperty("tu154b2/custom/gauges/eng/fuel_flow_3") -- FF kg/h

-- fuel tanks
total_w = globalPropertyf("sim/flightmodel/weight/m_fuel_total") -- fuel weight

tank1_w = globalProperty("sim/flightmodel/weight/m_fuel[0]") -- fuel weight
tank4_w = globalProperty("sim/flightmodel/weight/m_fuel[1]") -- fuel weight
tank2R_w = globalProperty("sim/flightmodel/weight/m_fuel[2]") -- fuel weight
tank2L_w = globalProperty("sim/flightmodel/weight/m_fuel[3]") -- fuel weight
tank3R_w = globalProperty("sim/flightmodel/weight/m_fuel[4]") -- fuel weight
tank3L_w = globalProperty("sim/flightmodel/weight/m_fuel[5]") -- fuel weight

reserv_trans = globalPropertyi("tu154b2/custom/fuel/reserv_trans")

total_ft = globalPropertyf("sim/time/total_flight_time_sec") -- 

-- other sources
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27
-- bus parameters
bus115_1_volt = globalPropertyf("tu154b2/custom/elec/bus115_1_volt")
bus115_2_volt = globalPropertyf("tu154b2/custom/elec/bus115_2_volt")
bus115_3_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt")

-- lamps sources

pump_tank2_left1_work = globalPropertyi("tu154b2/custom/fuel/pump_tank2_left_work1")
pump_tank2_left2_work = globalPropertyi("tu154b2/custom/fuel/pump_tank2_left_work2")
pump_tank2_right1_work = globalPropertyi("tu154b2/custom/fuel/pump_tank2_right_work1")
pump_tank2_right2_work = globalPropertyi("tu154b2/custom/fuel/pump_tank2_right_work2")
pump_tank3_left1_work = globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work1")
pump_tank3_left2_work = globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work2")
pump_tank3_left3_work = globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work3")
pump_tank3_right1_work = globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work1")
pump_tank3_right2_work = globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work2")
pump_tank3_right3_work = globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work3")
pump_tank41_work = globalPropertyi("tu154b2/custom/fuel/pump_tank4_work1")
pump_tank42_work = globalPropertyi("tu154b2/custom/fuel/pump_tank4_work2")
pump_tank1_1_work = globalPropertyi("tu154b2/custom/fuel/pump_tank1_1_work")
pump_tank1_2_work = globalPropertyi("tu154b2/custom/fuel/pump_tank1_2_work")
pump_tank1_3_work = globalPropertyi("tu154b2/custom/fuel/pump_tank1_3_work")
pump_tank1_4_work = globalPropertyi("tu154b2/custom/fuel/pump_tank1_4_work")

auto_tanks_turn = globalPropertyi("tu154b2/custom/fuel/auto_tanks_turn") -- рабочие очередные баки. 0, 1 - не работает, 2, 3, 4	0
--auto_tank_level = globalPropertyi("tu154b2/custom/fuel/auto_tank_level") -- выравнивание в баках. -2 - 2L, -3 - 3L, +3 - 3R, +2 - 2R	0

auto_tank_level_2 = globalPropertyi("tu154b2/custom/fuel/auto_tank_level_2") -- выравнивание в баках 2. -1 = L, 0 = none, +1 = R	0
auto_tank_level_3 = globalPropertyi("tu154b2/custom/fuel/auto_tank_level_3") -- выравнивание в баках 3. -1 = L, 0 = none, +1 = R	0


tank1_w = globalProperty("sim/flightmodel/weight/m_fuel[0]") -- fuel weight

fire_vlv_open_1 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_1") -- пожарный кран открыт
fire_vlv_open_2 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_2") -- пожарный кран открыт
fire_vlv_open_3 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_3") -- пожарный кран открыт

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time


-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- failures
fuel_auto_fail = globalPropertyi("tu154b2/custom/failures/fuel_auto_fail")
fuel_level_fail = globalPropertyi("tu154b2/custom/failures/fuel_level_fail")
fuel_porc_fail = globalPropertyi("tu154b2/custom/failures/fuel_porc_fail")

-- fuel_pump_2l_fail = globalPropertyi("tu154b2/custom/failures/fuel_pump_2l_fail")) -- number of failed pumps
-- fuel_pump_2r_fail = globalPropertyi("tu154b2/custom/failures/fuel_pump_2r_fail"))
-- fuel_pump_3l_fail = globalPropertyi("tu154b2/custom/failures/fuel_pump_3l_fail"))
-- fuel_pump_3r_fail = globalPropertyi("tu154b2/custom/failures/fuel_pump_3r_fail"))
-- --fuel_pump_1_fail = globalPropertyi("tu154b2/custom/failures/fuel_pump_1_fail"))
-- fuel_pump_4_fail = globalPropertyi("tu154b2/custom/failures/fuel_pump_4_fail"))

fuel_meter_2l_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_2l_fail")
fuel_meter_2r_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_2r_fail")
fuel_meter_3l_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_3l_fail")
fuel_meter_3r_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_3r_fail")
fuel_meter_1_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_1_fail")
fuel_meter_4_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_4_fail")
fuel_meter_summ_fail = globalPropertyi("tu154b2/custom/failures/fuel_meter_summ")

fuel_flowmeter_1_fail = globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_1_fail")
fuel_flowmeter_2_fail = globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_2_fail")
fuel_flowmeter_3_fail = globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_3_fail")

fuel_flow_1 = globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_1") -- расход топлива двиг 1
fuel_flow_2 = globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_2") -- расход топлива двиг 2
fuel_flow_3 = globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_3") -- расход топлива двиг 3

pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_Y = globalPropertyf("sim/aircraft/view/acf_peY")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")
external_view = globalPropertyi("sim/graphics/view/view_is_external") 
vr_outside = globalPropertyi("sim/graphics/VR/teleport_on_ground")

lamp_1 = globalPropertyi("tu154b2/custom/failures/lamp_18")
lamp_2 = globalPropertyi("tu154b2/custom/failures/lamp_19")
-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1"))
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2"))

local panel_x=0.727
local panel_z=-21.171
local dist_gain=2
local click_timer=0

-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1"))
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2"))
-- db3 = globalPropertyf("tu154b2/custom/controlls/debug3"))
-- db4 = globalPropertyf("tu154b2/custom/controlls/debug4"))

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


-- sounds
local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_L.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_R.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')
local click_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/fuel_click_L.wav')
local click_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/fuel_click_R.wav')
-- needle parameters
local k_spr3l=2500
local k_dmp3l=0.15*0.9
local k_v3l=0.01
local k_spr3r=2500
local k_dmp3r=0.15
local k_v3r=0.01*0.9
local k_spr2l=2500
local k_dmp2l=0.15*0.96
local k_v2l=0.01*1.05
local k_spr2r=2500
local k_dmp2r=0.15
local k_v2r=0.01*0.95
local k_spr4=2500
local k_dmp4=0.12
local k_v4=0.01*1.1
local k_spr1=2500
local k_dmp1=0.085
local k_v1=0.01
local k_sprs=2500
local k_dmps=0.155
local k_vs=0.01

local passed = get(frame_time)

local function lamps()
	
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local pump_2L1 = get(pump_tank2_left1_work)
	local pump_2L2 = get(pump_tank2_left2_work)
	local pump_2R1 = get(pump_tank2_right1_work)
	local pump_2R2 = get(pump_tank2_right2_work)
	local pump_3L1 = get(pump_tank3_left1_work)
	local pump_3L2 = get(pump_tank3_left2_work) * (1 - get(lamp_1))
	local pump_3L3 = get(pump_tank3_left3_work)
	local pump_3R1 = get(pump_tank3_right1_work)
	local pump_3R2 = get(pump_tank3_right2_work)
	local pump_3R3 = get(pump_tank3_right3_work)
	local pump41 = get(pump_tank41_work)
	local pump42 = get(pump_tank42_work)
	local pump_1_1 = get(pump_tank1_1_work)
	local pump_1_2 = get(pump_tank1_2_work) * (1 - get(lamp_2))
	local pump_1_3 = get(pump_tank1_3_work)
	local pump_1_4 = get(pump_tank1_4_work)

	local tank_level_2 = get(auto_tank_level_2)
	local tank_level_3 = get(auto_tank_level_3)
	
	local fuel_tank3_left_brt = 0
	if tank_level_3 == -1 then fuel_tank3_left_brt = 1 end
	fuel_tank3_left_brt = fuel_tank3_left_brt * lamps_brt
	set(fuel_tank3_left_fail, fuel_tank3_left_brt)
	
	local fuel_tank2_left_brt = 0
	if tank_level_2 == -1 then fuel_tank2_left_brt = 1 end
	fuel_tank2_left_brt = fuel_tank2_left_brt * lamps_brt
	set(fuel_tank2_left_fail, fuel_tank2_left_brt)
	
	local fuel_tank3_right_brt = 0
	if tank_level_3 == 1 then fuel_tank3_right_brt = 1 end
	fuel_tank3_right_brt = fuel_tank3_right_brt * lamps_brt
	set(fuel_tank3_right_fail, fuel_tank3_right_brt)
	
	local fuel_tank2_right_brt = 0
	if tank_level_2 == 1 then fuel_tank2_right_brt = 1 end
	fuel_tank2_right_brt = fuel_tank2_right_brt * lamps_brt
	set(fuel_tank2_right_fail, fuel_tank2_right_brt)	
	
	
	local fuel_pump_left_5_brt = bool2int(pump_2L1 > 0) * lamps_brt
	set(fuel_pump_left_5, fuel_pump_left_5_brt)	
	
	local fuel_pump_left_6_brt = bool2int(pump_2L2 > 0) * lamps_brt
	set(fuel_pump_left_6, fuel_pump_left_6_brt)	
	
	local fuel_pump_left_7_brt = bool2int(pump_3L1 > 0) * lamps_brt
	set(fuel_pump_left_7, fuel_pump_left_7_brt)	
	
	local fuel_pump_left_8_brt = bool2int(pump_3L2 > 0) * lamps_brt
	set(fuel_pump_left_8, fuel_pump_left_8_brt)	
	
	local fuel_pump_left_9_brt = bool2int(pump_3L3 > 0) * lamps_brt
	set(fuel_pump_left_9, fuel_pump_left_9_brt)	
	
	
	local fuel_pump_right_5_brt = bool2int(pump_2R1 > 0) * lamps_brt
	set(fuel_pump_right_5, fuel_pump_right_5_brt)	
	
	local fuel_pump_right_6_brt = bool2int(pump_2R2 > 0) * lamps_brt
	set(fuel_pump_right_6, fuel_pump_right_6_brt)	
	
	local fuel_pump_right_7_brt = bool2int(pump_3R1 > 0) * lamps_brt
	set(fuel_pump_right_7, fuel_pump_right_7_brt)	
	
	local fuel_pump_right_8_brt = bool2int(pump_3R2 > 0) * lamps_brt
	set(fuel_pump_right_8, fuel_pump_right_8_brt)	
	
	local fuel_pump_right_9_brt = bool2int(pump_3R3 > 0) * lamps_brt
	set(fuel_pump_right_9, fuel_pump_right_9_brt)	
	
	
	local fuel_pump_10_brt = bool2int(pump41 > 0) * lamps_brt
	set(fuel_pump_10, fuel_pump_10_brt)	
	
	local fuel_pump_11_brt = bool2int(pump42 > 0) * lamps_brt
	set(fuel_pump_11, fuel_pump_11_brt)	
	
	local fuel_pump_1_brt = pump_1_1 * lamps_brt
	set(fuel_pump_1, fuel_pump_1_brt)	
	
	local fuel_pump_2_brt = pump_1_2 * lamps_brt
	set(fuel_pump_2, fuel_pump_2_brt)	
	
	local fuel_pump_3_brt = pump_1_3 * lamps_brt
	set(fuel_pump_3, fuel_pump_3_brt)	
	
	local fuel_pump_4_brt = pump_1_4 * lamps_brt
	set(fuel_pump_4, fuel_pump_4_brt)
	
	
	
	local fuel_cut_off_1_brt = 0
	if get(fire_vlv_open_1) > 0.7 then fuel_cut_off_1_brt = 1 end
	fuel_cut_off_1_brt = fuel_cut_off_1_brt * lamps_brt
	set(fuel_cut_off_1, fuel_cut_off_1_brt)
	
	local fuel_cut_off_2_brt = 0
	if get(fire_vlv_open_2) > 0.7 then fuel_cut_off_2_brt = 1 end
	fuel_cut_off_2_brt = fuel_cut_off_2_brt * lamps_brt
	set(fuel_cut_off_2, fuel_cut_off_2_brt)
	
	local fuel_cut_off_3_brt = 0
	if get(fire_vlv_open_3) > 0.7 then fuel_cut_off_3_brt = 1 end
	fuel_cut_off_3_brt = fuel_cut_off_3_brt * lamps_brt 
	set(fuel_cut_off_3, fuel_cut_off_3_brt)	
	
	
	local fuel_flow_from_2_brt = 0
	local tank_turn = get(auto_tanks_turn)
	if tank_turn == 1 or tank_turn == 2 then fuel_flow_from_2_brt = 1 end
	fuel_flow_from_2_brt = fuel_flow_from_2_brt * lamps_brt 
	set(fuel_flow_from_2, fuel_flow_from_2_brt)

	local fuel_flow_from_3_brt = 0
	if tank_turn == 2 or tank_turn == 3 then fuel_flow_from_3_brt = 1 end
	fuel_flow_from_3_brt = fuel_flow_from_3_brt * lamps_brt
	set(fuel_flow_from_3, fuel_flow_from_3_brt)
	
	local fuel_flow_from_4_brt = 0
	if tank_turn == 4 then fuel_flow_from_4_brt = 1 end
	fuel_flow_from_4_brt = fuel_flow_from_4_brt * lamps_brt
	set(fuel_flow_from_4, fuel_flow_from_4_brt)

	local fuel_flow_auto_fail_brt = 0
	if tank_turn == 0 then fuel_flow_auto_fail_brt = 1 end
	fuel_flow_auto_fail_brt = fuel_flow_auto_fail_brt * lamps_brt
	set(fuel_flow_auto_fail, fuel_flow_auto_fail_brt)
	
	local fuel_reserv_trans_left_brt = get(reserv_trans) * lamps_brt 
	set(fuel_reserv_trans_left, fuel_reserv_trans_left_brt)
	
	local fuel_reserv_trans_right_brt = get(reserv_trans) * lamps_brt
	set(fuel_reserv_trans_right, fuel_reserv_trans_right_brt)
	
	local fuel_porc_reserv_brt = get(reserv_pump_test) * lamps_brt 
	set(fuel_porc_reserv, fuel_porc_reserv_brt)
	
	--local fuel_level_automat_brt = math.max(get(fuel_level) * get(fuel_flow_mode) * get(fuel_flow_on) * lamps_brt, test_btn)
	local fuel_level_automat_brt = get(fuel_level) * (1-get(fuel_level_fail)) * lamps_brt
	set(fuel_level_automat, fuel_level_automat_brt)
	
end



local function needle_pos (ang_actual_prev,ang_need,dt,v_prev,k_spr,k_dmp,k_v,c_v)
	local v_needle_max=5000*c_v
	local e_c=(ang_need-ang_actual_prev)*k_spr
    local v=v_prev+e_c*k_v*dt-v_prev*k_dmp
	if v>v_needle_max then
		v=v_needle_max
	elseif v<-v_needle_max then
		v=-v_needle_max
	end
    local ang_actual=ang_actual_prev+v*dt
	if ang_actual<-100 then
		ang_actual=-100
		v=0
	end
	return v,ang_actual
end


-- reset swittchers for cold & dark
local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(pump_tank2_left, 0)
		set(pump_tank2_right, 0)
		set(pump_tank3_left, 0)
		set(pump_tank3_right, 0)
		set(pump_tank4, 0)
		set(pump_tank1_1, 0)
		set(pump_tank1_2, 0)
		set(pump_tank1_3, 0)
		set(pump_tank1_4, 0)
		set(fuel_level, 0)
		set(fuel_flow_mode, 0)
		set(fuel_flow_on, 0)
		set(fuel_meter_on, 0)
		set(fuel_meter_mech_on, 0)
		set(fire_valve_1, 0)
		set(fire_valve_2, 0)
		set(fire_valve_3, 0)
	end
	
	notLoaded = false
end

-- make switchers sound -- 

local pump_tank2_left_last = get(pump_tank2_left)
local pump_tank2_right_last = get(pump_tank2_right)
local pump_tank3_left_last = get(pump_tank3_left)
local pump_tank3_right_last = get(pump_tank3_right)
local pump_tank4_last = get(pump_tank4)
local pump_tank1_1_last = get(pump_tank1_1)
local pump_tank1_2_last = get(pump_tank1_2)
local pump_tank1_3_last = get(pump_tank1_3)
local pump_tank1_4_last = get(pump_tank1_4)

local fuel_trans_last = get(fuel_trans)
local fuel_porc_last = get(fuel_porc)
local fuel_level_last = get(fuel_level)
local fuel_flow_mode_last = get(fuel_flow_mode)
local fuel_flow_on_last = get(fuel_flow_on)

local fuel_meter_on_last = get(fuel_meter_on)
local fuel_meter_mech_on_last = get(fuel_meter_mech_on)
local fire_valve_1_last = get(fire_valve_1)
local fire_valve_2_last = get(fire_valve_2)
local fire_valve_3_last = get(fire_valve_3)


local function check_switchers(gain_L, gain_R,dist)

	local pump_tank2_left_sw = get(pump_tank2_left)
	local pump_tank2_right_sw = get(pump_tank2_right)
	local pump_tank3_left_sw = get(pump_tank3_left)
	local pump_tank3_right_sw = get(pump_tank3_right)
	local pump_tank4_sw = get(pump_tank4)
	local pump_tank1_1_sw = get(pump_tank1_1)
	local pump_tank1_2_sw = get(pump_tank1_2)
	local pump_tank1_3_sw = get(pump_tank1_3)
	local pump_tank1_4_sw = get(pump_tank1_4)
	
	local fuel_trans_sw = get(fuel_trans)
	local fuel_porc_sw = get(fuel_porc)
	local fuel_level_sw = get(fuel_level)
	local fuel_flow_mode_sw = get(fuel_flow_mode)
	local fuel_flow_on_sw = get(fuel_flow_on)
	
	local fuel_meter_on_sw = get(fuel_meter_on)
	local fuel_meter_mech_on_sw = get(fuel_meter_mech_on)
	local fire_valve_1_sw = get(fire_valve_1)
	local fire_valve_2_sw = get(fire_valve_2)
	local fire_valve_3_sw = get(fire_valve_3)
	
	-- compare switchers state
	local sw_change = pump_tank2_left_sw + pump_tank2_right_sw + pump_tank3_left_sw + pump_tank3_right_sw + pump_tank4_sw
	sw_change = sw_change + pump_tank1_1_sw + pump_tank1_2_sw + pump_tank1_3_sw + pump_tank1_4_sw
	sw_change = sw_change + fuel_trans_sw + fuel_porc_sw + fuel_level_sw + fuel_flow_mode_sw + fuel_flow_on_sw
	sw_change = sw_change + fuel_meter_on_sw + fuel_meter_mech_on_sw + fire_valve_1_sw + fire_valve_2_sw + fire_valve_3_sw
	
	sw_change = sw_change - pump_tank2_left_last - pump_tank2_right_last - pump_tank3_left_last - pump_tank3_right_last - pump_tank4_last
	sw_change = sw_change - pump_tank1_1_last - pump_tank1_2_last - pump_tank1_3_last - pump_tank1_4_last
	sw_change = sw_change - fuel_trans_last - fuel_porc_last - fuel_level_last - fuel_flow_mode_last - fuel_flow_on_last
	sw_change = sw_change - fuel_meter_on_last - fuel_meter_mech_on_last - fire_valve_1_last - fire_valve_2_last - fire_valve_3_last
	
	
	if sw_change ~= 0 then 
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false) 
		playSample(switcher_sound_R, false) 
	end -- play sound

	pump_tank2_left_last = pump_tank2_left_sw
	pump_tank2_right_last = pump_tank2_right_sw
	pump_tank3_left_last = pump_tank3_left_sw
	pump_tank3_right_last = pump_tank3_right_sw
	pump_tank4_last = pump_tank4_sw
	pump_tank1_1_last = pump_tank1_1_sw
	pump_tank1_2_last = pump_tank1_2_sw
	pump_tank1_3_last = pump_tank1_3_sw
	pump_tank1_4_last = pump_tank1_4_sw
	
	fuel_trans_last = fuel_trans_sw
	fuel_porc_last = fuel_porc_sw
	fuel_level_last = fuel_level_sw
	fuel_flow_mode_last = fuel_flow_mode_sw
	fuel_flow_on_last = fuel_flow_on_sw
	
	fuel_meter_on_last = fuel_meter_on_sw
	fuel_meter_mech_on_last = fuel_meter_mech_on_sw
	fire_valve_1_last = fire_valve_1_sw
	fire_valve_2_last = fire_valve_2_sw
	fire_valve_3_last = fire_valve_3_sw
	
	
	
end

-- make caps sound --

local fuel_trans_cap_last = get(fuel_trans_cap)
local fuel_porc_cap_last = get(fuel_porc_cap)
local fuel_flow_on_cap_last = get(fuel_flow_on_cap)
local fire_valve_1_cap_last = get(fire_valve_1_cap)
local fire_valve_2_cap_last = get(fire_valve_2_cap)
local fire_valve_3_cap_last = get(fire_valve_3_cap)

local function caps_check(gain_L, gain_R,dist)
	local fuel_trans_cap_sw = get(fuel_trans_cap)
	local fuel_porc_cap_sw = get(fuel_porc_cap)
	local fuel_flow_on_cap_sw = get(fuel_flow_on_cap)
	local fire_valve_1_cap_sw = get(fire_valve_1_cap)
	local fire_valve_2_cap_sw = get(fire_valve_2_cap)
	local fire_valve_3_cap_sw = get(fire_valve_3_cap)

	local cap_change = fuel_trans_cap_sw + fuel_porc_cap_sw + fuel_flow_on_cap_sw + fire_valve_1_cap_sw + fire_valve_2_cap_sw + fire_valve_3_cap_sw
	
	
	cap_change = cap_change - fuel_trans_cap_last - fuel_porc_cap_last - fuel_flow_on_cap_last - fire_valve_1_cap_last - fire_valve_2_cap_last - fire_valve_3_cap_last
		
	
	
	if cap_change ~= 0 then 
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false) 
		playSample(cap_sound_R, false) 
	end
	
	fuel_trans_cap_last = fuel_trans_cap_sw
	fuel_porc_cap_last = fuel_porc_cap_sw
	fuel_flow_on_cap_last = fuel_flow_on_cap_sw
	fire_valve_1_cap_last = fire_valve_1_cap_sw
	fire_valve_2_cap_last = fire_valve_2_cap_sw
	fire_valve_3_cap_last = fire_valve_3_cap_sw
	
	-- fix position of switcher under caps
	if fuel_porc_cap_sw == 0 then set(fuel_porc, 0) end
	

end

-- mechanic fuel meters
 
local mech_counter = 0
 
local function mech_fuel_meter(gain_L,gain_R,dist)
	local internal = 1
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.4 or get(vr_outside)==1 then
	   internal = 0
    end
	local power = get(fuel_meter_mech_on) == 1 and get(bus27_volt_right) and get(bus115_1_volt) > 110 -- need to check it out
	
	local fuel_summ_calc = get(fuel_meter_mech)
	
	mech_counter = mech_counter + passed
	local FF1=get(ENGN_FF_1)
	local FF2=get(ENGN_FF_2)
	local FF3=get(ENGN_FF_3)
	FF1=FF1*bool2int(FF1>200)/ 3600
	FF2=FF2*bool2int(FF2>200)/ 3600
	FF3=FF3*bool2int(FF3>200)/ 3600
	if fuel_summ_calc > 0 and power and mech_counter > 10 then 
		fuel_summ_calc = fuel_summ_calc - (FF1 * (1 - get(fuel_flowmeter_1_fail)) + FF2 * (1 - get(fuel_flowmeter_2_fail)) + FF3 * (1 - get(fuel_flowmeter_3_fail))) * mech_counter 		
		-- if click_timer>45 then
			-- setSampleGain(click_sound_L,gain_L*dist)
			-- setSampleGain(click_sound_R,gain_R*dist)
			-- playSample(click_sound_L, false) 
			-- playSample(click_sound_R, false) 
			-- click_timer=0
		-- end
		mech_counter = 0
	end
	if fuel_summ_calc > 0 and power then
		click_timer=click_timer + (FF1 * (1 - get(fuel_flowmeter_1_fail)) + FF2 * (1 - get(fuel_flowmeter_2_fail)) + FF3 * (1 - get(fuel_flowmeter_3_fail))) * passed
	end
	if click_timer>2.7 then
		setSampleGain(click_sound_L,gain_L*dist*internal)
		setSampleGain(click_sound_R,gain_R*dist*internal)
		playSample(click_sound_L, false) 
		playSample(click_sound_R, false) 
		click_timer=0
	end
	set(fuel_meter_mech, fuel_summ_calc)

end

-- fuel meters --
local summ_act = 0
local tank1_act = 0
local tank2L_act = 0
local tank2R_act = 0
local tank3L_act = 0
local tank3R_act = 0
local tank4_act = 0
local summ_front_act = 0

local v_tank1 = 0
local v_tank2L = 0
local v_tank2R = 0
local v_tank3L = 0
local v_tank3R = 0
local v_tank4 = 0
local v_sum = 0
local v_sum_f = 0

local function electric_meters()
	local power = get(total_ft) < 10 or (get(fuel_meter_on) == 1 and (get(bus27_volt_left) > 13 or get(bus27_volt_right) > 13) and (get(bus115_1_volt) > 110 or get(bus115_3_volt) > 110))
	
	
	local tank1_need = get(fuel_meter_tank1)
	local tank2L_need = get(fuel_meter_tank2_left)
	local tank2R_need = get(fuel_meter_tank2_right)
	local tank3L_need = get(fuel_meter_tank3_left)
	local tank3R_need = get(fuel_meter_tank3_right)
	local tank4_need = get(fuel_meter_tank4)
	local summ_front_need = get(fuel_front_ind)
	local summ_need = get(fuel_meter_summ)
	
	if power then 
		tank1_need = get(tank1_w)
		tank2L_need = get(tank2L_w)
		tank2R_need = get(tank2R_w)
		tank3L_need = get(tank3L_w)
		tank3R_need = get(tank3R_w)
		tank4_need = get(tank4_w)
		-- set test buttons

		
		if get(fuel_meter_tank2_zero) == 1 then
			tank2L_need = -100
			tank2R_need = -100
		elseif get(fuel_meter_tank2_max) == 1 then
			tank2L_need = get(tank2L_w)+(11400-get(tank2L_w))/4
			tank2R_need = get(tank2R_w)+(11400-get(tank2R_w))/4
		end
		
		if get(fuel_meter_tank3_zero) == 1 then
			tank3L_need = -100
			tank3R_need = -100
		elseif get(fuel_meter_tank3_max) == 1 then
			tank3L_need = get(tank3L_w)+(6400-get(tank3L_w))/2
			tank3R_need = get(tank3R_w)+(6400-get(tank3R_w))/2
		end
		
		if get(fuel_meter_tank4_zero) == 1 then
			tank4_need = -100
		elseif get(fuel_meter_tank4_max) == 1 then
			tank4_need = get(tank4_w)+(8000-get(tank4_w))/4
		end
		
		-- summ depends on other meters
		summ_need = tank2L_act + tank2R_act + tank3L_act + tank3R_act + tank4_act + tank1_act
		summ_front_need = summ_need
		
		
		-- if get(fuel_front_zero) == 1 then
			-- summ_front_need = 0
		-- elseif get(fuel_front_max) == 1 then
			-- summ_front_need = 47000
		-- end
		
		
		if get(fuel_meter_summ_zero) == 1 or get(fuel_front_zero) == 1 then
			tank3L_need = -100
			tank3R_need = -100
			tank2L_need = -100
			tank2R_need = -100
			tank4_need = -100
			tank1_need = get(tank1_w)/2
		elseif get(fuel_meter_summ_max) == 1 or get(fuel_front_max) == 1 then
			tank3L_need = get(tank3L_w)+(6400-get(tank3L_w))/2
			tank3R_need = get(tank3R_w)+(6400-get(tank3R_w))/2
			tank2L_need = get(tank2L_w)+(11400-get(tank2L_w))/4
			tank2R_need = get(tank2R_w)+(11400-get(tank2R_w))/4
			tank4_need = get(tank4_w)+(8000-get(tank4_w))/4
			tank1_need = get(tank1_w)+(5000-get(tank1_w))/2
		end
		
		
	end

	-- set smooth movenents
	
	
	if get(fuel_meter_summ_fail) == 0 then
		if summ_act < summ_need - 1000 then summ_act = summ_act + passed * 10000 * 1.5
		elseif summ_act > summ_need + 1000 then summ_act = summ_act - passed * 10000 * 1.5
		else summ_act = summ_act + (summ_need - summ_act) * passed * 10
		end
	end
	
	if get(fuel_meter_1_fail) == 0 then
		local v_tank1_set,tank1_set = needle_pos (tank1_act,tank1_need,passed,v_tank1,k_spr1,k_dmp1,k_v1,1)
		tank1_act=tank1_set
		v_tank1=v_tank1_set
	end
	
	if get(fuel_meter_2l_fail) == 0 then
		local v_tank2L_set,tank2L_set = needle_pos (tank2L_act,tank2L_need,passed,v_tank2L,k_spr2l,k_dmp2l,k_v2l,2)
		tank2L_act=tank2L_set
		v_tank2L=v_tank2L_set
	end
	
	if get(fuel_meter_2r_fail) == 0 then
		local v_tank2R_set,tank2R_set = needle_pos (tank2R_act,tank2R_need,passed,v_tank2R,k_spr2r,k_dmp2r,k_v2r,2)
		tank2R_act=tank2R_set
		v_tank2R=v_tank2R_set
	end
	
	if get(fuel_meter_3l_fail) == 0 then
		local v_tank3L_set,tank3L_set = needle_pos (tank3L_act,tank3L_need,passed,v_tank3L,k_spr3l,k_dmp3l,k_v3l,1)
		tank3L_act=tank3L_set
		v_tank3L=v_tank3L_set
		-- if tank3L_act < tank3L_need - 100 then tank3L_act = tank3L_act + passed * 1000 * 2
		-- elseif tank3L_act > tank3L_need + 100 then tank3L_act = tank3L_act - passed * 1000 * 2
		-- else tank3L_act = tank3L_act + (tank3L_need - tank3L_act) * passed * 15
		-- end
	end
	
	if get(fuel_meter_3r_fail) == 0 then
		local v_tank3R_set,tank3R_set = needle_pos (tank3R_act,tank3R_need,passed,v_tank3R,k_spr3r,k_dmp3r,k_v3r,1)
		tank3R_act=tank3R_set
		v_tank3R=v_tank3R_set
	end
	
	if get(fuel_meter_4_fail) == 0 then
		local v_tank4_set,tank4_set = needle_pos (tank4_act,tank4_need,passed,v_tank4,k_spr4,k_dmp4,k_v4,1)
		tank4_act=tank4_set
		v_tank4=v_tank4_set
	end
	
	if get(fuel_meter_summ_fail) == 0 then
		local v_sum_set,sum_set = needle_pos (summ_act,summ_need,passed,v_sum,k_sprs,k_dmps,k_vs,2)
		summ_act=sum_set
		v_sum=v_sum_set
		-- local v_sum_f_set,sum_f_set = needle_pos (summ_front_act,summ_front_need,passed,v_sum_f,k_sprs,k_dmps,k_vs,2)
		-- summ_front_act=sum_f_set
		-- v_sum_f=v_sum_f_set
	end
	
	
	-- set results
	set(fuel_meter_summ, summ_act)
	set(fuel_meter_tank1, tank1_act)
	set(fuel_meter_tank2_left, tank2L_act)
	set(fuel_meter_tank2_right, tank2R_act)
	set(fuel_meter_tank3_left, tank3L_act)
	set(fuel_meter_tank3_right, tank3R_act)
	set(fuel_meter_tank4, tank4_act)
	
	set(fuel_front_ind, summ_act)

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
	-- set(db1,gain_L*dist)
	-- set(db2,gain_R*dist)
	-- reset switchers
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	
		check_switchers(gain_L, gain_R,dist)
		caps_check(gain_L, gain_R,dist)
	end
local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	mech_fuel_meter(gain_L,gain_R,dist)
end
	electric_meters()
	lamps()
	
end