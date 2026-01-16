-- this is engine's gauges logic
--defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))
-- controls
defineProperty("control_ut1", globalPropertyi("sim/custom/gauges/eng/egt_1_test")) -- кнопка контроль УТ
defineProperty("control_ut2", globalPropertyi("sim/custom/gauges/eng/egt_2_test")) -- кнопка контроль УТ
defineProperty("control_ut3", globalPropertyi("sim/custom/gauges/eng/egt_3_test")) -- кнопка контроль УТ
defineProperty("control_vibro_1", globalPropertyi("tu154b2/custom/buttons/eng/control_vibro_1")) -- кнопка контроль вибрации
defineProperty("control_vibro_2", globalPropertyi("tu154b2/custom/buttons/eng/control_vibro_2")) -- кнопка контроль вибрации
defineProperty("control_vibro_3", globalPropertyi("tu154b2/custom/buttons/eng/control_vibro_3")) -- кнопка контроль вибрации
defineProperty("vibro_sel_1", globalPropertyi("tu154b2/custom/switchers/eng/vibro_sel_1")) -- переключатель прибора вибрации
defineProperty("vibro_sel_2", globalPropertyi("tu154b2/custom/switchers/eng/vibro_sel_2")) -- переключатель прибора вибрации
defineProperty("vibro_sel_3", globalPropertyi("tu154b2/custom/switchers/eng/vibro_sel_3")) -- переключатель прибора вибрации

defineProperty("fuel_meter_on", globalPropertyi("tu154b2/custom/switchers/fuel/fuel_meter_mech_on")) -- расходомер

defineProperty("gauges_on_1", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_1")) -- приборы контроля двигателей
defineProperty("gauges_on_2", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_2")) -- приборы контроля двигателей
defineProperty("gauges_on_3", globalPropertyi("tu154b2/custom/switchers/eng/gauges_on_3")) -- приборы контроля двигателей

-- gauges
defineProperty("rpm_low_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_1")) -- обороты турбины низкого давления №1
defineProperty("rpm_low_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_2")) -- обороты турбины низкого давления №2
defineProperty("rpm_low_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_3")) -- обороты турбины низкого давления №3
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("egt_1", globalPropertyf("sim/custom/gauges/eng/egt_1_new")) -- ТВГ двиг 1
defineProperty("egt_2", globalPropertyf("sim/custom/gauges/eng/egt_2_new")) -- ТВГ двиг 2
defineProperty("egt_3", globalPropertyf("sim/custom/gauges/eng/egt_3_new")) -- ТВГ двиг 3

defineProperty("fuel_press_1", globalPropertyf("tu154b2/custom/gauges/eng/fuel_press_1")) -- давление топлива двиг 1
defineProperty("fuel_press_2", globalPropertyf("tu154b2/custom/gauges/eng/fuel_press_2")) -- давление топлива двиг 2
defineProperty("fuel_press_3", globalPropertyf("tu154b2/custom/gauges/eng/fuel_press_3")) -- давление топлива двиг 3

defineProperty("oil_press_1", globalPropertyf("tu154b2/custom/gauges/eng/oil_press_1")) -- давление масла двиг 1
defineProperty("oil_press_2", globalPropertyf("tu154b2/custom/gauges/eng/oil_press_2")) -- давление масла двиг 2
defineProperty("oil_press_3", globalPropertyf("tu154b2/custom/gauges/eng/oil_press_3")) -- давление масла двиг 3

defineProperty("oil_temp_1", globalPropertyf("tu154b2/custom/gauges/eng/oil_temp_1")) -- температура масла двиг 1
defineProperty("oil_temp_2", globalPropertyf("tu154b2/custom/gauges/eng/oil_temp_2")) -- температура масла двиг 2
defineProperty("oil_temp_3", globalPropertyf("tu154b2/custom/gauges/eng/oil_temp_3")) -- температура масла двиг 3

defineProperty("fuel_flow_1", globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_1")) -- расход топлива двиг 1
defineProperty("fuel_flow_2", globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_2")) -- расход топлива двиг 2
defineProperty("fuel_flow_3", globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_3")) -- расход топлива двиг 3

defineProperty("vibra_1", globalPropertyf("tu154b2/custom/gauges/eng/vibra_1")) -- вибрация двиг 1
defineProperty("vibra_2", globalPropertyf("tu154b2/custom/gauges/eng/vibra_2")) -- вибрация двиг 2
defineProperty("vibra_3", globalPropertyf("tu154b2/custom/gauges/eng/vibra_3")) -- вибрация двиг 3


defineProperty("oil_qty_1", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_1")) -- количество масла
defineProperty("oil_qty_2", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_2")) -- количество масла
defineProperty("oil_qty_3", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_3")) -- количество масла

defineProperty("fuel_temp_1", globalPropertyf("tu154b2/custom/gauges/eng/fuel_temp_1")) -- температура топлива
defineProperty("fuel_temp_2", globalPropertyf("tu154b2/custom/gauges/eng/fuel_temp_2")) -- температура топлива


-- sources
defineProperty("sim_egt_1", globalProperty("sim/flightmodel2/engines/EGT_deg_cel[0]")) -- EGT from sim
defineProperty("sim_egt_2", globalProperty("sim/flightmodel2/engines/EGT_deg_cel[1]")) -- EGT from sim
defineProperty("sim_egt_3", globalProperty("sim/flightmodel2/engines/EGT_deg_cel[2]")) -- EGT from sim

defineProperty("ENGN_FF_1", globalPropertyf("tu154b2/custom/engines/FuelFlow_1")) 
defineProperty("ENGN_FF_2", globalPropertyf("tu154b2/custom/engines/FuelFlow_2")) 
defineProperty("ENGN_FF_3", globalPropertyf("tu154b2/custom/engines/FuelFlow_3")) 

defineProperty("fuel_p_1", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[0]"))
defineProperty("fuel_p_2", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[1]"))
defineProperty("fuel_p_3", globalProperty("sim/cockpit2/engine/indicators/fuel_pressure_psi[2]"))

defineProperty("oil_p_1", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[0]"))
defineProperty("oil_p_2", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[1]"))
defineProperty("oil_p_3", globalProperty("sim/cockpit2/engine/indicators/oil_pressure_psi[2]"))

defineProperty("oil_t_1", globalProperty("sim/cockpit2/engine/indicators/oil_temperature_deg_C[0]"))
defineProperty("oil_t_2", globalProperty("sim/cockpit2/engine/indicators/oil_temperature_deg_C[1]"))
defineProperty("oil_t_3", globalProperty("sim/cockpit2/engine/indicators/oil_temperature_deg_C[2]"))

defineProperty("vibr_needle", globalPropertyf("sim/custom/gauges/eng/needle_eng_vibro"))
defineProperty("vibr_eng_sel", globalPropertyi("sim/custom/gauges/eng/eng_sel_vibro"))
defineProperty("vibr_sel", globalPropertyi("sim/custom/gauges/eng/opora_sel_vibro"))
defineProperty("vibr_front_tst", globalPropertyi("sim/custom/gauges/eng/front_opora_push_vibro"))
defineProperty("vibr_back_tst", globalPropertyi("sim/custom/gauges/eng/back_opora_push_vibro"))
defineProperty("vibr_1_pwr", globalPropertyi("sim/custom/gauges/eng/vibro_pwr1"))
defineProperty("vibr_2_pwr", globalPropertyi("sim/custom/gauges/eng/vibro_pwr2"))
defineProperty("vibr_3_pwr", globalPropertyi("sim/custom/gauges/eng/vibro_pwr3"))

defineProperty("vibration_1", globalPropertyf("tu154b2/custom/eng/vibration_1")) -- вибрация двигателя
defineProperty("vibration_2", globalPropertyf("tu154b2/custom/eng/vibration_2")) -- вибрация двигателя
defineProperty("vibration_3", globalPropertyf("tu154b2/custom/eng/vibration_3")) -- вибрация двигателя

defineProperty("engn_oil_qty_1", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_1")) -- остаток масла
defineProperty("engn_oil_qty_2", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_2")) -- остаток масла
defineProperty("engn_oil_qty_3", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_3")) -- остаток масла





-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("eng1_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]")) -- engine 1 rpm
defineProperty("eng2_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]")) -- engine 2 rpm
defineProperty("eng3_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]")) -- engine 3 rpm

defineProperty("comsta0", globalPropertyi("sim/operation/failures/rel_comsta0")) -- compressor stall
defineProperty("comsta1", globalPropertyi("sim/operation/failures/rel_comsta1"))
defineProperty("comsta2", globalPropertyi("sim/operation/failures/rel_comsta2"))


-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("emerg_inv115", globalPropertyi("tu154b2/custom/switchers/eng/emerg_inv115")) -- аварийн. преобраз 115в

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав

defineProperty("thermo", globalPropertyf("sim/weather/temperature_le_c")) -- outside temperature

defineProperty("msl_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))
defineProperty("baro_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

-- failures
defineProperty("fuel_flowmeter_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_1_fail"))
defineProperty("fuel_flowmeter_2_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_2_fail"))
defineProperty("fuel_flowmeter_3_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_3_fail"))

defineProperty("oil_pump_otk_1", globalPropertyi("sim/operation/failures/rel_oilpmp0")) 
defineProperty("oil_pump_otk_2", globalPropertyi("sim/operation/failures/rel_oilpmp1")) 
defineProperty("oil_pump_otk_3", globalPropertyi("sim/operation/failures/rel_oilpmp2"))

defineProperty("nk8_temp1", globalPropertyf("tu154b2/custom/lights/engines/egt_nk8_1"))
defineProperty("nk8_temp2", globalPropertyf("tu154b2/custom/lights/engines/egt_nk8_2"))
defineProperty("nk8_temp3", globalPropertyf("tu154b2/custom/lights/engines/egt_nk8_3"))

defineProperty("tvg1", globalPropertyi("sim/custom/gauges/eng/eng1_temp_ctrl"))
defineProperty("tvg2", globalPropertyi("sim/custom/gauges/eng/eng2_temp_ctrl"))
defineProperty("tvg3", globalPropertyi("sim/custom/gauges/eng/eng3_temp_ctrl"))

defineProperty("vna1", globalProperty("sim/cockpit/switches/anti_ice_inlet_heat_per_enigne[0]"))
defineProperty("vna2", globalProperty("sim/cockpit/switches/anti_ice_inlet_heat_per_enigne[1]"))
defineProperty("vna3", globalProperty("sim/cockpit/switches/anti_ice_inlet_heat_per_enigne[2]"))

defineProperty("rho", globalPropertyf("sim/weather/rho"))
defineProperty("burn1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("burn2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("burn3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))

defineProperty("indicated_airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine

defineProperty("temp_SL", globalPropertyf("sim/weather/temperature_sealevel_c"))
defineProperty("press_SL", globalPropertyf("sim/weather/barometer_sealevel_inhg"))

defineProperty("igv1", globalPropertyi("tu154b2/custom/engines/rna_1"))
defineProperty("igv2", globalPropertyi("tu154b2/custom/engines/rna_2"))
defineProperty("igv3", globalPropertyi("tu154b2/custom/engines/rna_3"))
defineProperty("flt_idle_rpm", globalPropertyf("tu154b2/custom/engines/flight_idle"))

defineProperty("true_airspeed", globalPropertyf("sim/flightmodel2/position/true_airspeed"))
--defineProperty("true_airspeed2", globalPropertyf("sim/cockpit2/gauges/indicators/true_airspeed_kts_copilot"))
defineProperty("sim_time", globalPropertyf("sim/time/total_flight_time_sec"))

defineProperty("max_n2", globalPropertyf("tu154b2/engine/max_KVD"))
defineProperty("kpp_up", globalPropertyf("tu154b2/engine/kpp_up"))
defineProperty("kpp_dn", globalPropertyf("tu154b2/engine/kpp_dn"))

defineProperty("rot_1", globalPropertyf("tu154b2/custom/engines/nk_rotation_1"))
defineProperty("rot_3", globalPropertyf("tu154b2/custom/engines/nk_rotation_3"))

defineProperty("wind_dir", globalPropertyf("sim/cockpit2/gauges/indicators/wind_heading_deg_mag"))
defineProperty("acft_dir", globalPropertyf("sim/flightmodel/position/mag_psi"))

defineProperty("eng2_case_temp", globalPropertyf("tu154b2/custom/engines/engine2_case_temp"))
defineProperty("inv115_fail", globalPropertyf("tu154b2/custom/failures/inv115_fail"))
-- test
--defineProperty("fuel_pump_1", globalPropertyi("sim/operation/failures/rel_fuepmp1")) 
--set(fuel_pump_1, 6)

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("rud_coeff", globalPropertyf("tu154b2/custom/controlls/rudder_coeff"))

defineProperty("kpp1_fail", globalPropertyf("tu154b2/custom/failures/kpp_1_fail"))
defineProperty("kpp2_fail", globalPropertyf("tu154b2/custom/failures/kpp_2_fail"))
defineProperty("kpp3_fail", globalPropertyf("tu154b2/custom/failures/kpp_3_fail"))
defineProperty("kpp1", globalPropertyf("tu154b2/custom/engine/kpp1"))
defineProperty("kpp2", globalPropertyf("tu154b2/custom/engine/kpp2"))
defineProperty("kpp3", globalPropertyf("tu154b2/custom/engine/kpp3"))
defineProperty("torque_1", globalProperty("sim/flightmodel2/engines/starter_is_running[0]"))
defineProperty("torque_2", globalProperty("sim/flightmodel2/engines/starter_is_running[1]"))
defineProperty("torque_3", globalProperty("sim/flightmodel2/engines/starter_is_running[2]"))
defineProperty("isa_temp_d", globalPropertyf("tu154b2/custom/engines/d_isa_temp"))
defineProperty("apd_working_1", globalPropertyf("tu154b2/custom/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154b2/custom/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154b2/custom/start/apd_working_3")) -- работа системы запуска
defineProperty("replay", globalPropertyi("sim/operation/prefs/replay_mode"))

defineProperty("hot_1", globalPropertyf("tu154b2/custom/engine/hotstart_1"))
defineProperty("hot_2", globalPropertyf("tu154b2/custom/engine/hotstart_2"))
defineProperty("hot_3", globalPropertyf("tu154b2/custom/engine/hotstart_3"))

defineProperty("fail_1", globalPropertyf("tu154b2/custom/engine/startfail_1"))
defineProperty("fail_2", globalPropertyf("tu154b2/custom/engine/startfail_2"))
defineProperty("fail_3", globalPropertyf("tu154b2/custom/engine/startfail_3"))

defineProperty("oil_1_p", globalPropertyi("tu154b2/custom/gauges/eng/oil_qty_1_p"))
defineProperty("oil_1_h", globalPropertyi("tu154b2/custom/gauges/eng/oil_qty_1_h"))
defineProperty("oil_2_p", globalPropertyi("tu154b2/custom/gauges/eng/oil_qty_2_p"))
defineProperty("oil_2_h", globalPropertyi("tu154b2/custom/gauges/eng/oil_qty_2_h"))
defineProperty("oil_3_p", globalPropertyi("tu154b2/custom/gauges/eng/oil_qty_3_p"))
defineProperty("oil_3_h", globalPropertyi("tu154b2/custom/gauges/eng/oil_qty_3_h"))
defineProperty("eng1_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[0]"))
defineProperty("eng2_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[1]"))
defineProperty("eng3_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[2]"))
defineProperty("override_egt", globalPropertyf("sim/operation/override/override_itt_egt"))

local MASTER = get(ismaster) ~= 1	

local passed = math.min(get(frame_time),1)
local start_timer=0
local power_27_L = get(bus27_volt_left) > 13
local power_27_R = get(bus27_volt_right) > 13
local power_36_L = get(bus36_volt_left) > 30
local power_36_R = get(bus36_volt_right) > 30
local power_115 = get(bus115_1_volt) > 110
local power_115_prev = get(bus115_1_volt) > 110

local gau_1_on = get(gauges_on_1)
local gau_2_on = get(gauges_on_2)
local gau_3_on = get(gauges_on_3)

local rna1=0
local rna2=0
local rna3=0

local c_turb1=1
local c_turb2=1
local c_turb3=1

local delta_rpm_1=0
local delta_rpm_2=0
local delta_rpm_3=0

local tme=0

-- vibration gauges

local rpm_1_last = 0
local rpm_2_last = 0
local rpm_3_last = 0

local vibr_actual = 0
local vibr_1_actual = 0
local vibr_2_actual = 0
local vibr_3_actual = 0

local c_vibr_1=(math.random()-0.5)/3.5
local c_vibr_2=(math.random()-0.5)/3.5
local c_vibr_3=(math.random()-0.5)/3.5

local t_turb_1=get(thermo)
local t_turb_2=get(thermo)
local t_turb_3=get(thermo)

local tas_LP=0
local T_tas=10 --TAS lowpass constant

local rudder_corr_tbl={
{-10000, 1},
{0, 1},
{12000, 0.5},
{20000, 0.5}}

local function vibra_gau()

	local vibr = 0
	local vibr_1 = 0
	local vibr_2 = 0
	local vibr_3 = 0
	local back_tst=get(vibr_back_tst)
	local frnt_tst=get(vibr_front_tst)
	local vibr_sel=get(vibr_sel)
	
	local vibrat_1_f = (get(vibration_1)+95*frnt_tst)*get(vibr_1_pwr)
	local vibrat_2_f = (get(vibration_2)+95*frnt_tst)*get(vibr_2_pwr)
	local vibrat_3_f = (get(vibration_3)+95*frnt_tst)*get(vibr_3_pwr)
	
	local vibrat_1_b = (get(vibration_1)*(1+c_vibr_1)+95*back_tst)*get(vibr_1_pwr)
	local vibrat_2_b = (get(vibration_2)*(1+c_vibr_2)+95*back_tst)*get(vibr_2_pwr)
	local vibrat_3_b = (get(vibration_3)*(1+c_vibr_3)+95*back_tst)*get(vibr_3_pwr)
	
	if power_27_L then
		if get(vibr_eng_sel) == 1 then
			if vibr_sel==-1 then 
				vibr = vibrat_1_b 
			elseif vibr_sel==1 then 
				vibr = vibrat_1_f
			else
				vibr =  math.max(vibrat_1_f,vibrat_1_b)
			end
		end
	end
	
	if power_27_R then
		if get(vibr_eng_sel) == 2 then
			if vibr_sel==-1 then 
				vibr = vibrat_2_b 
			elseif vibr_sel==1 then 
				vibr = vibrat_2_f
			else
				vibr =  math.max(vibrat_2_f,vibrat_2_b)
			end
		end
		if get(vibr_eng_sel) == 3 then
			if vibr_sel==-1 then 
				vibr = vibrat_3_b 
			elseif vibr_sel==1 then 
				vibr = vibrat_3_f
			else
				vibr =  math.max(vibrat_3_f,vibrat_3_b)
			end
		end
	end
	-- smooth movement
	vibr_actual = vibr_actual + (vibr - vibr_actual) * passed 
	vibr_1_actual = vibr_1_actual + (math.max(vibrat_1_f,vibrat_1_b) - vibr_1_actual) * passed * 10
	vibr_2_actual = vibr_2_actual + (math.max(vibrat_2_f,vibrat_2_b) - vibr_2_actual) * passed * 8
	vibr_3_actual = vibr_3_actual + (math.max(vibrat_3_f,vibrat_3_b) - vibr_3_actual) * passed * 9

	-- -- set results
	set(vibra_1, vibr_1_actual)
	set(vibra_2, vibr_2_actual)
	set(vibra_3, vibr_3_actual)
	set(vibr_needle, math.min(95,vibr_actual))


end







-- 3 needle gauges

local fuelP_1_actual = 0
local fuelP_2_actual = 0
local fuelP_3_actual = 0

local oilP_1_actual = 0
local oilP_2_actual = 0
local oilP_3_actual = 0

local oilT_1_actual = 0
local oilT_2_actual = 0
local oilT_3_actual = 0

local oil_tmp_1= get(thermo)
local case_temp_1=oil_tmp_1
local oil_tmp_2= get(thermo)
local case_temp_2=oil_tmp_2
local case_temp_22=oil_tmp_2
local oil_tmp_3= get(thermo)
local case_temp_3=oil_tmp_3

local fuel_P_table = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- zero pressure
				  {  40, 30 }, --
				  {  50, 40 }, -- 
           	      {  60, 60 }, -- 
				  {  100, 100 },    -- 
          	      {  1000000000, 110 }}    -- bugs walkaround	

local oil_P_table = {{ -100000, 0.0 },    -- bugs walkaround
				  {  15, 1 },
				  {  20, 6 },				  -- 
           	      {  70, 38 }, -- 
				  {  100, 43 },    -- 
          	      {  1000000000, 40 }}    -- bugs walkaround	
				  
local case_t_table = {{ -100000, 0.01 },    -- bugs walkaround
				  {  0, 0.01 },
				  {  35, 1 },
          	      {  1000000000, 1 }}    -- bugs walkaround	

local function emi3()
	if start_timer<60 then
		start_timer=start_timer+passed
	end

	local fuelP_1 = 0
	local fuelP_2 = 0
	local fuelP_3 = 0
	
	local oilP_1 = 0
	local oilP_2 = 0
	local oilP_3 = 0
	
	local oilT_1 = -50
	local oilT_2 = -50
	local oilT_3 = -50
	
	local rep_mode=get(replay)
	if power_36_L then 
		fuelP_1 = interpolate(fuel_P_table, get(fuel_p_1))-- * gau_1_on
		oilP_1 = interpolate(oil_P_table, get(eng1_N2)) * 0.1 * 1/(get(oil_t_1)*0.27/80+0.85)*(1-get(oil_pump_otk_1)/6)-- * gau_1_on 
	end	
	
	if power_36_R then
		fuelP_2 = interpolate(fuel_P_table, get(fuel_p_2))-- * gau_2_on
		fuelP_3 = interpolate(fuel_P_table, get(fuel_p_3))-- * gau_3_on
		
		oilP_2 = interpolate(oil_P_table, get(eng2_N2)) * 0.1* 1/(get(oil_t_1)*0.27/80+0.85)*(1-get(oil_pump_otk_2)/6)-- * gau_2_on
		oilP_3 = interpolate(oil_P_table, get(eng3_N2)) * 0.1* 1/(get(oil_t_1)*0.27/80+0.85)*(1-get(oil_pump_otk_3)/6)-- * gau_3_on
	end
	--Oil and case temperatures
	local fuel_temp=(get(fuel_temp_1)+get(fuel_temp_2))/2
	local flow1=get(ENGN_FF_1)
	if flow1>100 then
		flow1=-4.131e+05*math.pow(flow1,-0.8401)+ 2497
	end
	if rep_mode==0 then
		--engine1
		local case_heat_spd_1= get(nk8_temp1)*2.1
		local case_cool_spd_1=(case_temp_1-get(thermo))*40*1.003*math.exp(-2.922e-05*math.max(0,get(rpm_low_1))) -0.9027*math.exp(-0.1749*math.max(0,get(rpm_low_1)))
		local oil_heat_spd_1 = get(nk8_temp1)*0.5+math.pow(math.max(0,get(rpm_high_1)),1.9)*0.36
		local oil_cool_spd_1 = (oil_tmp_1-fuel_temp)*flow1*(1-0.9*get(oil_pump_otk_1)/6)*bool2int(oil_tmp_1>90)
		case_temp_1= case_temp_1+(case_heat_spd_1-case_cool_spd_1)*passed*0.000125
		oil_tmp_1 = oil_tmp_1 + (oil_heat_spd_1 - oil_cool_spd_1*0.027) * passed*0.00015-(oil_tmp_1-case_temp_1)*passed*0.003
		--engine2
		local flow2=get(ENGN_FF_2)
		if flow2>100 then
			flow2=-4.131e+05*math.pow(flow2,-0.8401)+ 2497
		end
		local case_heat_spd_2= get(nk8_temp2)*2.1
		local case_cool_spd_2=(case_temp_2-get(thermo))*40*1.003*math.exp(-2.922e-05*get(rpm_low_2)) -0.9027*math.exp(-0.1749*get(rpm_low_2))
		-- middle/rear end case temp for APU oil heat
		local case_heat_spd_22= get(nk8_temp2)*7.5
		local case_cool_spd_22=(case_temp_22-get(thermo))*40*1.003*math.exp(-2.922e-05*get(rpm_low_2)) -0.9027*math.exp(-0.1749*get(rpm_low_2))
		
		local oil_heat_spd_2 = get(nk8_temp2)*0.5+math.pow(get(rpm_high_2),1.9)*0.36
		local oil_cool_spd_2 = (oil_tmp_2-fuel_temp)*flow2*(1-0.9*get(oil_pump_otk_2)/6)*bool2int(oil_tmp_2>90)
		case_temp_2= case_temp_2+(case_heat_spd_2-case_cool_spd_2)*passed*0.000125
		case_temp_22= case_temp_22+(case_heat_spd_22-case_cool_spd_22)*passed*0.000125
		oil_tmp_2 = oil_tmp_2 + (oil_heat_spd_2 - oil_cool_spd_2*0.027) * passed*0.00015-(oil_tmp_2-case_temp_2)*passed*0.003
		--set(db1,case_temp_2)
		--engine3
		local flow3=get(ENGN_FF_3)
		if flow3>100 then
			flow3=-4.131e+05*math.pow(flow3,-0.8401)+ 2497
		end
		local case_heat_spd_3= get(nk8_temp3)*2.1
		local case_cool_spd_3=(case_temp_3-get(thermo))*40*1.003*math.exp(-2.922e-05*get(rpm_low_3)) -0.9027*math.exp(-0.1749*get(rpm_low_3))
		local oil_heat_spd_3 = get(nk8_temp3)*0.5+math.pow(get(rpm_high_3),1.9)*0.36
		local oil_cool_spd_3 = (oil_tmp_3-fuel_temp)*flow3*(1-0.9*get(oil_pump_otk_3)/6)*bool2int(oil_tmp_3>90)
		case_temp_3= case_temp_3+(case_heat_spd_3-case_cool_spd_3)*passed*0.000125
		oil_tmp_3 = oil_tmp_3 + (oil_heat_spd_3 - oil_cool_spd_3*0.027) * passed*0.00015-(oil_tmp_3-case_temp_3)*passed*0.003
	end
		if power_27_L then --and gau_1_on == 1 then
			oilT_1 = oil_tmp_1
		end

		if power_27_R then --and gau_2_on == 1 then
			oilT_2 = oil_tmp_2
		end

		if power_27_R then --and gau_3_on == 1 then
			oilT_3 = oil_tmp_3
		end
	set(eng2_case_temp,case_temp_22)
	--oilP_2 = get(oil_p_2) * 0.1
	-- smooth movements
	fuelP_1_actual = fuelP_1_actual + (fuelP_1 - fuelP_1_actual) * passed * 3
	fuelP_2_actual = fuelP_2_actual + (fuelP_2 - fuelP_2_actual) * passed * 3
	fuelP_3_actual = fuelP_3_actual + (fuelP_3 - fuelP_3_actual) * passed * 3
	
	oilP_1_actual = oilP_1_actual + (oilP_1 - oilP_1_actual) * passed * 3
	oilP_2_actual = oilP_2_actual + (oilP_2 - oilP_2_actual) * passed * 3
	oilP_3_actual = oilP_3_actual + (oilP_3 - oilP_3_actual) * passed * 3
	
	oilT_1_actual = oilT_1_actual + (oilT_1 - oilT_1_actual) * passed * 3
	oilT_2_actual = oilT_2_actual + (oilT_2 - oilT_2_actual) * passed * 3
	oilT_3_actual = oilT_3_actual + (oilT_3 - oilT_3_actual) * passed * 3
	if start_timer<60 then
		oilT_1_actual =get(thermo)
	    oilT_2_actual =get(thermo)
	    oilT_3_actual =get(thermo)
	end

	-- set results
	set(fuel_press_1, fuelP_1_actual)
	set(fuel_press_2, fuelP_2_actual)
	set(fuel_press_3, fuelP_3_actual)
	
	set(oil_press_1, oilP_1_actual)
	set(oil_press_2, oilP_2_actual)
	set(oil_press_3, oilP_3_actual)
	
	set(oil_temp_1, oilT_1_actual)
	set(oil_temp_2, oilT_2_actual)
	set(oil_temp_3, oilT_3_actual)


end


--- EGT Model ---
local function egt_from_n2 (rpm,temp,burn,kpp,delta_rpm)
	local acc=math.max(delta_rpm,0)
	local tvg=(1.03755728906152009522e-02 + 1.00010420877229377901e+00*temp + 1.94800724821419137811e+01*rpm -8.51458629305168331568e-06*math.pow(temp,2) + 3.99068120435730894213e-02*temp*rpm -4.04566507886464810095e-01*math.pow(rpm,2) + 1.28411028313892965633e-04*math.pow(temp,2)*rpm -5.39729923454061776347e-04*temp*math.pow(rpm,2) + 2.80693214389386713759e-03*math.pow(rpm,3)+kpp*25+acc*10)*burn --base temp+n2_induced EGT (static+acceleration+bypass valve correction)
	return tvg
end

-- EGT
local egt_1_actual = 0
local egt_2_actual = 0
local egt_3_actual = 0

local EGT_gau_on_L = 0
local EGT_gau_on_R = 0
local egt_correct_table={{ -10, 1 },    
						--{  25, 1 }, 
						--{  40, 0.85 }, 
						--{  55, 0.85 }, 
						{  76, 1 }, 
						{  78, 0.98 }, 
						{  86, 0.98 }, -- 
						{  89, 1.04 },    -- 
						{  97.5, 1.07 },
						{  120, 1.1 }}
local egt_correct_table2={{ -10, 0 },    
						{  55, 0 }, 
						{  62, -40}, 
						{  120, -40 }}    						
						
local egt_c_table={{ -10, 0 },    
					{  60, 0 }, 
					{  62, 0.18 }, -- 
					{  120, 0.18 }}    
local egt1_new=0
local egt2_new=0
local egt3_new=0

local egt_1_sens=0
local egt_2_sens=0
local egt_3_sens=0

local gain1=1
local gain2=1
local gain3=1

local ite_1=0
local ite_2=0
local ite_3=0

-- local rev_corr_table={{-50, 1 }, 
			-- {0, 1 }, 
			-- {78, 1 }, 
			-- {82, 1.2}, 
			-- {  1000,1.2}} 
-- local rev_speed_table={{-50, 1.075 }, 
			-- {0, 1.075 }, 
			-- {95, 1}, 
			-- {  1000,1}}
local rev_rpm_table={{-50, 0 }, 
			{50, 2e-6 }, 
			{90, 3e-5}, 
			{  1000,3e-5}} 				



local function egt_gauges()
	set(override_egt,1)
	-- check power for EGT gauges
	local air_temp = get(thermo)
	local tas=get(true_airspeed)*3.6
	local emerg_sw = get(emerg_inv115) == 1 and get(inv115_fail)==0
	local vys=get(msl_alt)/ 3.28084/1000
	
	local tvg1_on=get(tvg1)==1
	local tvg2_on=get(tvg2)==1
	local tvg3_on=get(tvg3)==1
	
	local power_1 = power_27_L and (power_115 or emerg_sw) and tvg1_on
	local power_2 = power_27_R and (power_115 or emerg_sw) and tvg2_on
	local power_3 = power_27_R and (power_115 or emerg_sw) and tvg3_on
	
	local egt_1_need = 0
	local egt_2_need = 0
	local egt_3_need = 0
	
	local rpm_1 = get(eng1_N2)
	local rpm_2 = get(eng2_N2)
	local rpm_3 = get(eng3_N2)
	
	local stall_1 = 0
	if get(comsta0) == 6 then stall_1 = 1 end
	local stall_2 = 0
	if get(comsta1) == 6 then stall_2 = 1 end
	local stall_3 = 0
	if get(comsta2) == 6 then stall_3 = 1 end
	
	local test_button1 = get(control_ut1) == 1
	local test_button2 = get(control_ut2) == 1
	local test_button3 = get(control_ut3) == 1	
	
	if get(burn1)>0 and get(fail_1)==0 then
		egt1_new=egt_from_n2 (rpm_1,air_temp,get(burn1),get(kpp1),delta_rpm_1)*(1+math.min(1,get(hot_1)))-4*vys
		t_turb_1=egt1_new/2
	else
		t_turb_1=t_turb_1+(air_temp-t_turb_1)*0.004*passed -- residual heat after shutdown
		egt1_new=t_turb_1*(1-0.7*math.min(rpm_1,6)/6)
	end
	if get(burn2)>0 and get(fail_2)==0 then
		egt2_new=egt_from_n2 (rpm_2,air_temp,get(burn2),get(kpp2),delta_rpm_2)*(1+0.5*get(hot_2))-4*vys
		t_turb_2=egt2_new/2
	else
		t_turb_2=t_turb_2+(air_temp-t_turb_2)*0.004*passed -- residual heat after shutdown
		egt2_new=t_turb_2*(1-0.7*math.min(rpm_2,6)/6)
	end
	if get(burn3)>0 and get(fail_3)==0 then
		egt3_new=egt_from_n2 (rpm_3,air_temp,get(burn3),get(kpp3),delta_rpm_3)*(1+0.5*get(hot_3))-4*vys
		t_turb_3=egt3_new/2
	else
		t_turb_3=t_turb_3+(air_temp-t_turb_3)*0.004*passed -- residual heat after shutdown
		egt3_new=t_turb_3*(1-0.7*math.min(rpm_3,6)/6)
	end
	-- reverse corr, increasing EGT with lower speed
	if tas<100 then
		egt1_new=egt1_new*(1+interpolate(rev_rpm_table,rpm_1)*math.pow(100-tas,2)*get(revers_flap_L))
	end
	if tas<100 then
		egt3_new=egt3_new*(1+interpolate(rev_rpm_table,rpm_3)*math.pow(100-tas,2)*get(revers_flap_R))
	end

	egt_1_need = egt1_new * (1 + stall_1 * 1)+get(vna1)*15
	egt_2_need = egt2_new * (1 + stall_2 * 1)+get(vna2)*15
	egt_3_need = egt3_new * (1 + stall_3 * 1)+get(vna3)*15
	-- icing
	local ice1=1+get(eng1_ice)*0.3
	local ice2=1+get(eng2_ice)*0.25
	local ice3=1+get(eng3_ice)*0.3
	set(sim_egt_1,egt_1_need*ice1)
	set(sim_egt_2,egt_2_need*ice2)
	set(sim_egt_3,egt_3_need*ice3)
	
	if power_1 and ite_1<1 then
		ite_1=ite_1+passed
	elseif not power_1 and ite_1>0 then
		ite_1=ite_1-passed
		if ite_1<0 then
			ite_1=0
		end
	end
	
	if power_2 and ite_2<1 then
		ite_2=ite_2+passed
	elseif not power_2 and ite_2>0 then
		ite_2=ite_2-passed
		if ite_2<0 then
			ite_2=0
		end
	end
	
	if power_3 and ite_3<1 then
		ite_3=ite_3+passed
	elseif not power_3 and ite_3>0 then
		ite_3=ite_3-passed
		if ite_3<0 then
			ite_3=0
		end
	end
		
	-- ITE reaction delay
	egt_1_sens = egt_1_sens + (egt_1_need*ice1 - egt_1_sens) * passed/5
	egt_2_sens = egt_2_sens + (egt_2_need*ice2 - egt_2_sens) * passed/5
	egt_3_sens = egt_3_sens + (egt_3_need*ice3 - egt_3_sens) * passed/5

	-- smooth needle movement
	egt_1_actual = egt_1_actual + (egt_1_sens+(148-egt_1_sens)*bool2int(test_button1) - egt_1_actual) * passed * ite_1
	egt_2_actual = egt_2_actual + (egt_2_sens+(152-egt_2_sens)*bool2int(test_button2) - egt_2_actual) * passed * ite_2
	egt_3_actual = egt_3_actual + (egt_3_sens+(140-egt_3_sens)*bool2int(test_button3) - egt_3_actual) * passed * ite_3
	
	set(egt_1, egt_1_actual)
	set(egt_2, egt_2_actual)
	set(egt_3, egt_3_actual)
	
	set(nk8_temp1, egt_1_sens)
	set(nk8_temp2, egt_2_sens)
	set(nk8_temp3, egt_3_sens)

end


-- fuel flow meters
local FF_1 = 200
local FF_2 = 200
local FF_3 = 200

local FF_1_act = 200
local FF_2_act = 200
local FF_3_act = 200	

local function fuel_flow()
	-- check power for gauges
	local power = power_27_R and power_115 and get(fuel_meter_on) == 1
	FF_1 = get(ENGN_FF_1)  * (1 - get(fuel_flowmeter_1_fail))
	FF_2 = get(ENGN_FF_2)  * (1 - get(fuel_flowmeter_2_fail))
	FF_3 = get(ENGN_FF_3)  * (1 - get(fuel_flowmeter_3_fail))
	
	-- set limits
	if FF_1 < 200 then FF_1 = 200 end
	if FF_2 < 200 then FF_2 = 200 end
	if FF_3 < 200 then FF_3 = 200 end
	
	-- set smooth
	FF_1_act = FF_1_act + (FF_1 - FF_1_act) * passed * 3 * bool2int(power)
	FF_2_act = FF_2_act + (FF_2 - FF_2_act) * passed * 3 * bool2int(power)
	FF_3_act = FF_3_act + (FF_3 - FF_3_act) * passed * 3 * bool2int(power)
	
	set(fuel_flow_1, FF_1_act)
	set(fuel_flow_2, FF_2_act)
	set(fuel_flow_3, FF_3_act)
	

end

-- tachometers
local eng1_1_ang_act = 0
local eng2_1_ang_act = 0
local eng3_1_ang_act = 0

local eng1_2_ang_act = 0
local eng2_2_ang_act = 0
local eng3_2_ang_act = 0

local eng1_N2_need_prev = 0
local eng2_N2_need_prev = 0
local eng3_N2_need_prev = 0  
	
rev_tbl = {{0, 0 }, 
			{62, 62 }, 
			{  75.5, 75.5}, 
			{  81,88}, 
			{  82,90 },
			{  98,95 }} 		

	
local n1_start_corr_tbl_1 = {{ -100000, 0.0 },
                  {  0, 0 },
				  {  55, 1 }, 
          	      {  1000000000, 1 }}    -- bugs walkaround		
			  

local eng2_n1_corr_tbl = {{ -100000, 0.0 },    -- bugs walkaround
					{  55, 0.5 },
					{  78, 0.5 },
					{  86, 1 },
					{  92, 0.75 }, 				
					{  1000, 0.5 }} 
					
kpp_fail_table = {{ -100000, 0.0 },
                  {  0, 00 },
				  {  17, 17 }, 
				  {  62, 55 },
				  {  69.5, 74.4 },
				  {  75, 80 },
				  {  85, 85 },
				  {  100, 100 },
          	      {  1000000000, 100 }}   	


local eng1_N2_need_old=0
local eng1_N2_need=0
local eng2_N2_need_old=0
local eng2_N2_need=0
local eng3_N2_need_old=0
local eng3_N2_need=0

local eng1_N1_need=0
local eng2_N1_need=0
local eng3_N1_need=0

local M_rot=0.35 -- rotor mass
local c_aero=0.0035 -- drag coefficient
local a_N1=0
local q=0
local c_q=0.0001 -- windmilling coefficient
local c_f=0.003 -- friction coefficient

local n2_1_runout=0
local n2_2_runout=0
local n2_3_runout=0
local n2_c_aero=0.0003
local n2_c_f=0.01
local n2_c_q=0.00002
local n2_M_rot=0.15

local fan_1=math.random()*360
local fan_3=math.random()*360
local rpm_knd=5900/0.97 --rpm @ 100% N1		 

local function n1_from_n2 (rpm,d_isa,altitude,tas)
	--local knd=2.27883656454638781896e-02 + 1.48521461357922052691e-03*d_isa + 2.85578535694455237781e-01*rpm -9.80969385717822827146e-05*d_isa*rpm + 5.06556388550356579553e-03*math.pow(rpm,2) -1.81250059943665734515e-05*d_isa*math.pow(rpm,2) + 2.76277805413032983845e-05*math.pow(rpm,3)
	local knd=1.35432317320705628561e+01 + 1.05818030992323813821e-01*d_isa -2.41159426273638954896e-01*rpm -2.88293089248683933462e-03*d_isa*rpm + 1.17362636037093952257e-02*math.pow(rpm,2)
	knd=knd+math.max(-2.69166791400897068343e+02 + 2.22049699099214983278e+01*altitude + 1.46945301863934254527e+01*rpm -9.85089687252083234803e-01*altitude*rpm -2.96261417738032106772e-01*math.pow(rpm,2) + 1.41929325403952685813e-02*altitude*math.pow(rpm,2) + 2.61617340318329736140e-03*math.pow(rpm,3) -6.56641350639726608220e-05*altitude*math.pow(rpm,3) -8.54680990421439715666e-06*math.pow(rpm,4),0)*tas/850
	--math.max(2.55665280454449340030e-16 -9.80392156862750505444e-04*tas + 6.66666666666667073748e-01*alt,0)-- altitude correction
	return knd
end



local function tachometers()
	
	--local alt = get(msl_alt) * 3.28083 -- MSL alt in feet
	local alt_baro = get(msl_alt) / 3.28084
	--alt_baro=get(db1)*1000
	if alt_baro>12000 then
		alt_baro=12000
	end
	-- rudder coeff here, doesnt belong to engine gauges but needs baro alt and this defined here
	local rud_cf=interpolate(rudder_corr_tbl,alt_baro)
if MASTER then	
	set(rud_coeff,rud_cf)
	local flame1=get(burn1)
	local flame2=get(burn2)
	local flame3=get(burn3)
	-- high pressure turbine
	-- windmilling
	-- if flame1==0 and get(apd_working_1)<1 then
		-- set(eng1_N2,n2_1_runout)
	-- end
	-- if flame2==0 and get(apd_working_2)<1 then
		-- set(eng2_N2,n2_2_runout)
	-- end
	-- if flame3==0 and get(apd_working_3)<1 then
		-- set(eng3_N2,n2_3_runout)
	-- end
	
	rpm_1 = get(eng1_N2)
	rpm_2 = get(eng2_N2)
	rpm_3 = get(eng3_N2)
	
	local rev_L=get(revers_flap_L)>0.1
	local rev_R=get(revers_flap_R)>0.1
	
	local kpp_thres=get(kpp_up)
	local kpp_thres2=get(kpp_dn)

	local idle_rpm=get(flt_idle_rpm)
	
	local dens=get(rho)
	local temp=get(temp_SL)
	local press=get(press_SL)*25.4
	local rna_thres=temp*(44-36.5)/100+43
	temp=temp+(760-press)/40*14.7
	tme=tme+passed
	tas_LP=passed/(T_tas+passed)*get(true_airspeed)*3.6+tas_LP*T_tas/(T_tas+passed)
	local high_idle=idle_rpm
	local d_isa=get(isa_temp_d)
	q=dens*math.pow((tas_LP/3.6),2)/2
	
	-- N2 windmilling and runout calculations
	if flame1>0 or get(apd_working_1)>0 then
		n2_1_runout=rpm_1
	else
		n2_1_runout=math.max(n2_1_runout+(-n2_c_aero*dens*math.pow(n2_1_runout,2)+n2_c_q*q-n2_c_f)/n2_M_rot*passed,0)
		rpm_1=n2_1_runout
		set(eng1_N2,n2_1_runout)
	end
	if flame2>0 or get(apd_working_2)>0 then
		n2_2_runout=rpm_2
	else
		n2_2_runout=math.max(n2_2_runout+(-n2_c_aero*dens*math.pow(n2_2_runout,2)+n2_c_q*q-n2_c_f)/n2_M_rot*passed,0)
		rpm_2=n2_2_runout
		set(eng2_N2,n2_2_runout)
	end
	if flame3>0 or get(apd_working_3)>0 then
		n2_3_runout=rpm_3
	else
		n2_3_runout=math.max(n2_3_runout+(-n2_c_aero*dens*math.pow(n2_3_runout,2)+n2_c_q*q-n2_c_f)/n2_M_rot*passed,0)
		rpm_3=n2_3_runout
		set(eng3_N2,n2_3_runout)
	end
	
	-- Engine1 N2
	eng1_N1_need=rpm_1
	-- if get(kpp1_fail)>0 then
		-- eng1_N1_need=interpolate(kpp_fail_table, rpm_1)
	-- end
	-- if rpm_1<idle_rpm-0.5 then
		-- eng1_N1_need=math.max(eng1_N1_need*flame1,interpolate(N2_windmill_table,rpm_1))
	-- end
	if ((rpm_1-rpm_1_last)>0 and eng1_N1_need<3.5) or eng1_N1_need<0.3 then
		eng1_1_ang_act = eng1_1_ang_act-eng1_1_ang_act* passed
	elseif (rpm_1-rpm_1_last)>0 and eng1_N1_need>=3.5 and eng1_N1_need<5 then
		eng1_1_ang_act = eng1_1_ang_act+((10* math.exp(-(eng1_N1_need-3.5)*5)*math.sin(10*(eng1_N1_need-3.5))+eng1_N1_need)- eng1_1_ang_act)* passed * 20
	else
		eng1_1_ang_act = eng1_1_ang_act + (eng1_N1_need+(-0.145*math.pow(eng1_N1_need,2)+2.425*eng1_N1_need-8.313 )*0.2*math.sin(20*tme)*bool2int(eng1_N1_need>5 and eng1_N1_need<12) - eng1_1_ang_act) * passed *10 --(10-bool2int(rpm_1<55 and rpm_1>14 and (rpm_1-rpm_1_last)>0)*8.5)
	end
	set(rpm_high_1, eng1_1_ang_act)
	-- Engine2 N2
	eng2_N1_need=rpm_2
	-- if get(kpp2_fail)>0 then
		-- eng2_N1_need=interpolate(kpp_fail_table, rpm_2)
	-- end
	-- if rpm_2<idle_rpm-0.5 then
		-- eng2_N1_need=math.max(eng2_N1_need*flame2,interpolate(N2_windmill_table,rpm_2))
	-- end
	if ((rpm_2-rpm_2_last)>0 and eng2_N1_need<3.5) or eng2_N1_need<0.3 then
		eng2_1_ang_act =eng2_1_ang_act-eng2_1_ang_act* passed
	elseif (rpm_2-rpm_2_last)>0 and eng2_N1_need>=3.5 and eng2_N1_need<5 then
		eng2_1_ang_act = eng2_1_ang_act+((10* math.exp(-(eng2_N1_need-3.5)*5)*math.sin(10*(eng2_N1_need-3.5))+eng2_N1_need)- eng2_1_ang_act)* passed * 20
	else
		eng2_1_ang_act = eng2_1_ang_act + (eng2_N1_need+(-0.145*math.pow(eng2_N1_need,2)+2.425*eng2_N1_need-8.313 )*0.17*math.sin(20*tme+1.5)*bool2int(eng2_N1_need>5 and eng2_N1_need<12) - eng2_1_ang_act) * passed * 10
	end
	set(rpm_high_2, eng2_1_ang_act)
	-- Engine3 N2
	eng3_N1_need=rpm_3
	if get(kpp3_fail)>0 then
		eng3_N1_need=interpolate(kpp_fail_table, rpm_3)
	end
	--eng3_N1_need=math.max(eng3_N1_need,interpolate(N2_table,rpm_3))
		-- use sim rpm for windmilling
	-- if rpm_3<idle_rpm-0.5 then
		-- eng3_N1_need=math.max(eng3_N1_need*flame3,interpolate(N2_windmill_table,rpm_3))
	-- end
	-- if rev_R then
		-- eng3_N1_need=interpolate(rev_tbl,eng3_N1_need)
	-- end
	if ((rpm_3-rpm_3_last)>0 and eng3_N1_need<3.5) or eng3_N1_need<0.3 then
		eng3_1_ang_act =eng3_1_ang_act-eng3_1_ang_act* passed
	elseif (rpm_3-rpm_3_last)>0 and eng3_N1_need>=3.5 and eng3_N1_need<5 then
		eng3_1_ang_act = eng3_1_ang_act+((10* math.exp(-(eng3_N1_need-3.5)*5)*math.sin(10*(eng3_N1_need-3.5))+eng3_N1_need)- eng3_1_ang_act)* passed * 20
	else
		eng3_1_ang_act = eng3_1_ang_act + (eng3_N1_need+(-0.145*math.pow(eng3_N1_need,2)+2.425*eng3_N1_need-8.313 )*0.21*math.sin(19*tme)*bool2int(eng3_N1_need>5 and eng3_N1_need<12) - eng3_1_ang_act) * passed * 10
	end
	set(rpm_high_3, eng3_1_ang_act)
	if passed~=0 then
		delta_rpm_1=(rpm_1-rpm_1_last)/passed
	end
	if passed~=0 then
		delta_rpm_2=(rpm_2-rpm_2_last)/passed
	end
	if passed~=0 then
		delta_rpm_3=(rpm_3-rpm_3_last)/passed
	end
	rpm_1_last = rpm_1
	rpm_2_last = rpm_2
	rpm_3_last = rpm_3

	
	-- low pressure turbine
	
    -- expected N1 at idle N2
	local low_idle1=n1_from_n2 (idle_rpm,d_isa,alt_baro/1000,tas_LP)-rna1
	local low_idle2=n1_from_n2 (idle_rpm,d_isa,alt_baro/1000,tas_LP)-rna2-interpolate(eng2_n1_corr_tbl,idle_rpm)
	local low_idle3=n1_from_n2 (idle_rpm,d_isa,alt_baro/1000,tas_LP)-rna3
	-- correct turbine power coefficient to match idle N1
	c_turb1=c_aero*dens*math.pow(low_idle1,2)/math.pow(high_idle,2)-c_q*q/math.pow(high_idle,2)
	c_turb2=c_aero*dens*math.pow(low_idle2,2)/math.pow(high_idle,2)-c_q*q/math.pow(high_idle,2)
	c_turb3=c_aero*dens*math.pow(low_idle3,2)/math.pow(high_idle,2)-c_q*q/math.pow(high_idle,2)
	local ias=get(indicated_airspeed)*1.852
	local wind_angle=math.min(get(wind_dir)-get(acft_dir),360-get(wind_dir)+get(acft_dir))
	if tas_LP>80 then
		wind_angle=0
	end
	-- if tas_LP>60 then
		-- wind_angle=1
	-- end
	q=q*math.cos(wind_angle/180*3.14)

	--N1 as function of N2
	eng1_N2_need_old=n1_from_n2 (eng1_1_ang_act,d_isa,alt_baro/1000,tas_LP)-rna1
	eng1_N2_need_old=eng1_N2_need_old*interpolate(n1_start_corr_tbl_1,eng1_1_ang_act) -- blend base N1 with start N1
	set(db1,eng1_N2_need_old)
	--IGV
	if eng1_N2_need>rna_thres and rna1>0 then
		rna1=rna1 -rna1*passed*(1-0.8*math.max(math.max(rna1,4)-4,0)/2)/2
		if rna1<0 then
			rna1=0
		end
	elseif eng1_N2_need<rna_thres and rna1<6 then
		rna1=rna1+(6-rna1)*passed*(1-0.8*(1-math.min(math.min(rna1,2),2)/2))/2
		if rna1>6 then
			rna1=6
		end
	end
	-- Startup N1
	a_N1=c_turb1*math.pow(eng1_1_ang_act,2)*(0.2+0.8*flame1)-c_aero*dens*math.pow(eng1_N2_need,2)+c_q*q-c_f*1.1*bool2int(eng1_N2_need>0.01)
	eng1_N2_need = eng1_N2_need+a_N1/M_rot*passed
	--set(db1,eng1_N2_need)
	--set(db2,eng1_N2_need_old)
	eng1_N2_need=math.max(eng1_N2_need_old*flame1,eng1_N2_need)
	if (eng1_N2_need - eng1_N2_need_prev)>0 and eng1_N2_need<2  then
		eng1_2_ang_act=0
	elseif (eng1_N2_need - eng1_N2_need_prev)>0 and eng1_N2_need>=2 and eng1_N2_need<3 then
		eng1_2_ang_act= eng1_2_ang_act+((2* math.exp(-(eng1_N2_need-2)*5)*math.sin(10*(eng1_N2_need-2))+eng1_N2_need)- eng1_2_ang_act)* passed * 20
	else
		eng1_2_ang_act = eng1_2_ang_act + (eng1_N2_need+(-0.04167*math.pow(eng1_N2_need,2)+0.5417*eng1_N2_need-1.5)*0.57*math.sin(20*tme+2)*bool2int(eng1_N2_need>3 and eng1_N2_need<9) - eng1_2_ang_act) * passed * 20
	end
	set(rpm_low_1, eng1_2_ang_act)
	--N1 Engine 2
	eng2_N2_need_old=n1_from_n2 (eng2_1_ang_act,d_isa,alt_baro/1000,tas_LP)-rna2-interpolate(eng2_n1_corr_tbl,eng2_1_ang_act)--small correction for engine without reverse thrust
	eng2_N2_need_old=eng2_N2_need_old*interpolate(n1_start_corr_tbl_1,eng2_1_ang_act)
	--IGV
	if eng2_N2_need>rna_thres+0.5 and rna2>0 then
		rna2=rna2 -rna2*passed*(1-0.8*math.max(math.max(rna2,4)-4,0)/2)/2
		if rna2<0 then
			rna2=0
		end
	elseif eng2_N2_need<rna_thres+0.25 and rna2<6 then
		rna2=rna2+(6-rna2)*passed*(1-0.8*(1-math.min(math.min(rna2,2),2)/2))/2
		if rna2>6 then
			rna2=6
		end
	end
	-- Startup N1
	a_N1=c_turb2*math.pow(eng2_1_ang_act,2)*(0.2+0.8*flame2)-c_aero*get(rho)*math.pow(eng2_N2_need,2)+c_q*q-c_f*1.3*bool2int(eng2_N2_need>0.01)
	eng2_N2_need = eng2_N2_need+a_N1/M_rot*passed
	eng2_N2_need=math.max(eng2_N2_need_old*flame2,eng2_N2_need)
	if (eng2_N2_need - eng2_N2_need_prev)>0 and eng2_N2_need<2  then
		eng2_2_ang_act=0
	elseif (eng2_N2_need - eng2_N2_need_prev)>0 and eng2_N2_need>=2 and eng2_N2_need<3 then
		eng2_2_ang_act= eng2_2_ang_act+((2* math.exp(-(eng2_N2_need-2)*5)*math.sin(10*(eng2_N2_need-2))+eng2_N2_need)- eng2_2_ang_act)* passed * 20
	else
		eng2_2_ang_act = eng2_2_ang_act + (eng2_N2_need+(-0.04167*math.pow(eng2_N2_need,2)+0.5417*eng2_N2_need-1.5)*0.66*math.sin(20*tme+3)*bool2int(eng2_N2_need>3 and eng2_N2_need<9) - eng2_2_ang_act) * passed * 20
	end
	set(rpm_low_2, eng2_2_ang_act)
	--N1 Engine 3
	eng3_N2_need_old=n1_from_n2 (eng3_1_ang_act,d_isa,alt_baro/1000,tas_LP)-rna3
	eng3_N2_need_old=eng3_N2_need_old*interpolate(n1_start_corr_tbl_1,eng3_1_ang_act)
	--IGV
	if eng3_N2_need>rna_thres-0.5 and rna3>0 then
		rna3=rna3 -rna3*passed*(1-0.8*math.max(math.max(rna3,4)-4,0)/2)/2
		if rna3<0 then
			rna3=0
		end
	elseif eng3_N2_need<rna_thres+0.5 and rna3<6 then
		rna3=rna3+(6-rna3)*passed*(1-0.8*(1-math.min(math.min(rna3,2),2)/2))/2
		if rna3>6 then
			rna3=6
		end
	end
	--N1 for low and high N2
	-- Startup N1
	a_N1=c_turb3*math.pow(eng3_1_ang_act,2)*(0.2+0.8*flame3)-c_aero*get(rho)*math.pow(eng3_N2_need,2)+c_q*q-c_f*bool2int(eng3_N2_need>0.01)
	eng3_N2_need = eng3_N2_need+a_N1/M_rot*passed
	eng3_N2_need=math.max(eng3_N2_need_old*flame3,eng3_N2_need)
	if (eng3_N2_need - eng3_N2_need_prev)>0 and eng3_N2_need<2  then
		eng3_2_ang_act=0
	elseif (eng3_N2_need - eng3_N2_need_prev)>0 and eng3_N2_need>=2 and eng3_N2_need<3 then
		eng3_2_ang_act= eng3_2_ang_act+((2* math.exp(-(eng3_N2_need-2)*5)*math.sin(10*(eng3_N2_need-2))+eng3_N2_need)- eng3_2_ang_act)* passed * 20
	else
		eng3_2_ang_act = eng3_2_ang_act + (eng3_N2_need+(-0.04167*math.pow(eng3_N2_need,2)+0.5417*eng3_N2_need-1.5)*0.45*math.sin(20*tme+1)*bool2int(eng3_N2_need>3 and eng3_N2_need<9) - eng3_2_ang_act) * passed * 20
	end
	if eng1_N2_need<20 then
		fan_1=fan_1+eng1_N2_need/100*rpm_knd/60*360*passed
		if fan_1>=360 then
			fan_1=fan_1-360
		end
	end
	if eng3_N2_need<20 then	
		fan_3=fan_3+eng3_N2_need/100*rpm_knd/60*360*passed
		if fan_3>=360 then
			fan_3=fan_3-360
		end
	end
	eng1_N2_need_prev=eng1_N2_need
	eng2_N2_need_prev=eng2_N2_need
	eng3_N2_need_prev=eng3_N2_need
	
	set(rpm_low_3, eng3_2_ang_act)
	set(igv1,bool2int(rna1>5))
	set(igv2,bool2int(rna2>5))
	set(igv3,bool2int(rna3>5))
	set(rot_1,fan_1)
	set(rot_3,fan_3)

end

end











local function oil_qty_gau()
	local oil_now_1 = get(engn_oil_qty_1)
	local oil_now_2 = get(engn_oil_qty_2)
	local oil_now_3 = get(engn_oil_qty_3)
	
	local oil_qty_act_1 = get(oil_qty_1)
	local oil_qty_act_2 = get(oil_qty_2)
	local oil_qty_act_3 = get(oil_qty_3)
	
	
	-- local qty_1 = 4
	-- local qty_2 = 4
	-- local qty_3 = 4
	
	--if power_36_L and power_36_R then
	local qty_1 = oil_now_1 - math.min(15,rpm_1_last) * 0.05
	local qty_2 = oil_now_2 - math.min(15,rpm_2_last) * 0.05
	local qty_3 = oil_now_3 - math.min(15,rpm_3_last) * 0.05
	
	-- if get(gauges_on_1) == 0 then qty_1 = 4 end
	-- if get(gauges_on_2) == 0 then qty_2 = 4 end
	-- if get(gauges_on_3) == 0 then qty_3 = 4 end
	
	if get(oil_1_p)>0 then
		qty_1 = 35
	elseif get(oil_1_h)>0 then
		qty_1 = 5
	end
	
	if get(oil_2_p)>0 then
		qty_2 = 35
	elseif get(oil_2_h)>0 then
		qty_2 = 5
	end
	
	if get(oil_3_p)>0 then
		qty_3 = 35
	elseif get(oil_3_h)>0 then
		qty_3 = 5
	end
	
	
	oil_qty_act_1 = oil_qty_act_1 + (qty_1 - oil_qty_act_1) * passed * bool2int(power_115)
	oil_qty_act_2 = oil_qty_act_2 + (qty_2 - oil_qty_act_2) * passed * bool2int(power_115)
	oil_qty_act_3 = oil_qty_act_3 + (qty_3 - oil_qty_act_3) * passed * bool2int(power_115)
	
	
	if power_115 and not power_115_prev then
		set(oil_qty_1,5)
	    set(oil_qty_2,7)
	    set(oil_qty_3,6)
	else
		set(oil_qty_1, math.max(5, oil_qty_act_1))
		set(oil_qty_2, math.max(5, oil_qty_act_2))
		set(oil_qty_3, math.max(5, oil_qty_act_3))
	end
	power_115_prev=power_115


end


-- local fuel_temp_act_1 = get(thermo)
-- local fuel_temp_act_2 = get(thermo)

-- local function fuel_temp_gau()

	-- local air_temp = get(thermo)
	
	-- fuel_temp_act_1 = fuel_temp_act_1 + (air_temp - fuel_temp_act_1) * passed*0.000027
	-- fuel_temp_act_2 = fuel_temp_act_2 + (air_temp - fuel_temp_act_2) * passed*0.0000271

	-- -- if fuel_temp_act_1 > 65 then fuel_temp_act_1 = 65
	-- -- elseif fuel_temp_act_1 < -65 then fuel_temp_act_1 = -65 end
	
	-- -- if fuel_temp_act_2 > 65 then fuel_temp_act_2 = 65
	-- -- elseif fuel_temp_act_2 < -65 then fuel_temp_act_2 = -65 end

	-- set(fuel_temp_1, fuel_temp_act_1)
	-- set(fuel_temp_2, fuel_temp_act_2)


-- end




function update()
	passed = get(frame_time)
	
	MASTER = get(ismaster) ~= 1	
	
	power_27_L = get(bus27_volt_left) > 13
	power_27_R = get(bus27_volt_right) > 13
	power_115 = get(bus115_1_volt) > 105
	power_36_L = get(bus36_volt_left) > 30
	power_36_R = get(bus36_volt_right) > 30
	
	gau_1_on = get(gauges_on_1)
	gau_2_on = get(gauges_on_2) 
	gau_3_on = get(gauges_on_3)
	
	if MASTER then
		tachometers()
		egt_gauges()
		emi3()	
		fuel_flow()
		vibra_gau()
	end
	oil_qty_gau()
	--fuel_temp_gau()

end
function onModuleDone()
	set(override_egt, 0)
end