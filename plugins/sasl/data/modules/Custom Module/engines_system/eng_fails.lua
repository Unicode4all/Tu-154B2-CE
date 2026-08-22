-- failures
engine_runtime_1 = globalPropertyf("tu154b2/custom/failures/engine_runtime_1") 
engine_runtime_2 = globalPropertyf("tu154b2/custom/failures/engine_runtime_2") 
engine_runtime_3 = globalPropertyf("tu154b2/custom/failures/engine_runtime_3")

engn_oil_qty_1 = globalPropertyf("tu154b2/custom/failures/engn_oil_qty_1") 
engn_oil_qty_2 = globalPropertyf("tu154b2/custom/failures/engn_oil_qty_2") 
engn_oil_qty_3 = globalPropertyf("tu154b2/custom/failures/engn_oil_qty_3")

engn_oil_leak_1 = globalPropertyi("tu154b2/custom/failures/engn_oil_leak_1") 
engn_oil_leak_2 = globalPropertyi("tu154b2/custom/failures/engn_oil_leak_2") 
engn_oil_leak_3 = globalPropertyi("tu154b2/custom/failures/engn_oil_leak_3")

oil_pump_fail_1 = globalPropertyi("sim/operation/failures/rel_oilpmp0") 
oil_pump_fail_2 = globalPropertyi("sim/operation/failures/rel_oilpmp1") 
oil_pump_fail_3 = globalPropertyi("sim/operation/failures/rel_oilpmp2")

fuel_flowmeter_1_fail = globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_1_fail")
fuel_flowmeter_2_fail = globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_2_fail")
fuel_flowmeter_3_fail = globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_3_fail")


eng_fail_1 = globalPropertyi("sim/operation/failures/rel_engfai0")
eng_fail_2 = globalPropertyi("sim/operation/failures/rel_engfai1")
eng_fail_3 = globalPropertyi("sim/operation/failures/rel_engfai2")

eng_fire_1 = globalPropertyi("sim/operation/failures/rel_engfir0")
eng_fire_2 = globalPropertyi("sim/operation/failures/rel_engfir1")
eng_fire_3 = globalPropertyi("sim/operation/failures/rel_engfir2")

eng_flame_1 = globalPropertyi("sim/operation/failures/rel_engfla0")
eng_flame_2 = globalPropertyi("sim/operation/failures/rel_engfla1")
eng_flame_3 = globalPropertyi("sim/operation/failures/rel_engfla2")

eng_stall_1 = globalPropertyi("sim/operation/failures/rel_comsta0")
eng_stall_2 = globalPropertyi("sim/operation/failures/rel_comsta1")
eng_stall_3 = globalPropertyi("sim/operation/failures/rel_comsta2")

eng_fuel_pmp_fail_1 = globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_1")
eng_fuel_pmp_fail_2 = globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_2")
eng_fuel_pmp_fail_3 = globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_3")


eng_filter_1 = globalPropertyi("sim/operation/failures/rel_eng_lo0")
eng_filter_2 = globalPropertyi("sim/operation/failures/rel_eng_lo1")
eng_filter_3 = globalPropertyi("sim/operation/failures/rel_eng_lo2")

eng_start_1 = globalPropertyi("sim/operation/failures/rel_startr0")
eng_start_2 = globalPropertyi("sim/operation/failures/rel_startr1")
eng_start_3 = globalPropertyi("sim/operation/failures/rel_startr2")

eng_ign_1 = globalPropertyi("sim/operation/failures/rel_ignitr0")
eng_ign_2 = globalPropertyi("sim/operation/failures/rel_ignitr1")
eng_ign_3 = globalPropertyi("sim/operation/failures/rel_ignitr2")

eng_revrs_1 = globalPropertyi("sim/operation/failures/rel_revers0")
eng_revrs_3 = globalPropertyi("sim/operation/failures/rel_revers2")

ENGN_oil_q_1 = globalProperty("sim/flightmodel/engine/ENGN_oil_quan[0]")
ENGN_oil_q_2 = globalProperty("sim/flightmodel/engine/ENGN_oil_quan[1]")
ENGN_oil_q_3 = globalProperty("sim/flightmodel/engine/ENGN_oil_quan[2]")


fuel_fluct_1 = globalPropertyi("sim/operation/failures/rel_fuelfl0") -- Fuel Flow Fluctuation
fuel_fluct_2 = globalPropertyi("sim/operation/failures/rel_fuelfl1") -- Fuel Flow Fluctuation
fuel_fluct_3 = globalPropertyi("sim/operation/failures/rel_fuelfl2") -- Fuel Flow Fluctuation

sim_egt_1 = globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[0]") -- EGT from sim
sim_egt_2 = globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[1]") -- EGT from sim
sim_egt_3 = globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[2]") -- EGT from sim

-- engines data
rpm_high_1 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1") -- обороты турбины высокого давления №1
rpm_high_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2") -- обороты турбины высокого давления №2
rpm_high_3 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3") -- обороты турбины высокого давления №3

eng_work_1 = globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]")
eng_work_2 = globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]")
eng_work_3 = globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]")


alpha = globalPropertyf("sim/flightmodel2/misc/AoA_angle_degrees")  -- angle of attack
msl_alt = globalPropertyf("sim/flightmodel/position/elevation")  -- phisical altitude MSL. meters
msl_press = globalPropertyf("sim/weather/barometer_sealevel_inhg")  -- pressire at sea level in.Hg
pressure = globalPropertyf("tu154b2/custom/gauges/alt/vbe_press_left")  -- pressure in hPa

-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

failures_enabled = globalPropertyi("tu154b2/custom/failures/failures_enabled")

eng1_ext = globalPropertyi("tu154b2/custom/fire/eng1_ext_used")
eng2_ext = globalPropertyi("tu154b2/custom/fire/eng2_ext_used")
eng3_ext = globalPropertyi("tu154b2/custom/fire/eng3_ext_used")
eng4_ext = globalPropertyi("tu154b2/custom/fire/apu_ext_used")

sim_rud_1 = globalProperty("sim/flightmodel/engine/ENGN_thro_use[0]")
sim_rud_2 = globalProperty("sim/flightmodel/engine/ENGN_thro_use[1]")
sim_rud_3 = globalProperty("sim/flightmodel/engine/ENGN_thro_use[2]")

kpp1_fail = globalPropertyf("tu154b2/custom/failures/kpp_1_fail")
kpp2_fail = globalPropertyf("tu154b2/custom/failures/kpp_2_fail")
kpp3_fail = globalPropertyf("tu154b2/custom/failures/kpp_3_fail")

bearing_1_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_1")
bearing_2_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_2")
bearing_3_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_3")

stp_1_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_1")
stp_2_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_2")
stp_3_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_3")

fire_vlv_open_1 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_1") -- пожарный кран открыт
fire_vlv_open_2 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_2") -- пожарный кран открыт
fire_vlv_open_3 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_3") -- пожарный кран открыт

starter_disc_fail = globalPropertyi("tu154b2/custom/radio/starter_disconncet_fail")

apd_working_1 = globalPropertyf("tu154b2/custom/start/apd_working_1") -- работа системы запуска
apd_working_2 = globalPropertyf("tu154b2/custom/start/apd_working_2") -- работа системы запуска
apd_working_3 = globalPropertyf("tu154b2/custom/start/apd_working_3") -- работа системы запуска

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master

-- put oil before every flight
set(engn_oil_qty_1, math.random() + 29)
set(engn_oil_qty_2, math.random() + 29)
set(engn_oil_qty_3, math.random() + 29)


set(engine_runtime_1, math.random(280,320) * 3600)
set(engine_runtime_2, math.random(280,320) * 3600)
set(engine_runtime_3, math.random(280,320) * 3600)

sys_data_tbl.eng_fire_timer_1 = 0
sys_data_tbl.eng_fire_timer_2 = 0
sys_data_tbl.eng_fire_timer_3 = 0
sys_data_tbl.eng_fire_timer_4 = 0

sys_data_tbl.starter_ovspd_timer_1 = 0
sys_data_tbl.starter_ovspd_timer_2 = 0
sys_data_tbl.starter_ovspd_timer_3 = 0

sys_data_tbl.starter_fail_1 = 0
sys_data_tbl.starter_fail_2 = 0
sys_data_tbl.starter_fail_3 = 0

sys_data_tbl.starter_desint_1 = 0
sys_data_tbl.starter_desint_2 = 0
sys_data_tbl.starter_desint_3 = 0

sys_data_tbl.starter_rpm_1 = 0
sys_data_tbl.starter_rpm_2 = 0
sys_data_tbl.starter_rpm_3 = 0

local engnRuntimeCoef = {
  {-1000, 0},
  {0, 0.5},
  {30, 1},
  {90, 1},
  {100, 2},
  {1000, 10} 
  }

local oilLeak1 = math.random(20, 100)
local oilLeak2 = math.random(20, 100)
local oilLeak3 = math.random(20, 100)

local minusTimer1 = 0
local minusTimer2 = 0
local minusTimer3 = 0


local fail_counter = 0
local stall_counter = 0
local check_time = math.random(15, 30)
local stall_time = math.random()

local engToCounter1 = 0
local engToCounter2 = 0
local engToCounter3 = 0




function update()
    
    
	local passed = get(frame_time)
 
if get(ismaster) ~= 1 then		
	local fire1_used=get(eng1_ext)
	local fire2_used=get(eng2_ext)
	local fire3_used=get(eng3_ext)
	local fire4_used=get(eng4_ext)
	
	local thro1=get(sim_rud_1)
	local thro2=get(sim_rud_2)
	local thro3=get(sim_rud_3)
	local FAIL = get(failures_enabled)
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	
	local rpm1 = get(rpm_high_1)
	local rpm2 = get(rpm_high_2)
	local rpm3 = get(rpm_high_3)
	
	-- check failures
	if FAIL > 0 then
		-- check engine stall
		stall_counter = stall_counter + passed
		
		if stall_counter > stall_time then
			stall_counter = 0
			stall_time = math.random()
			
			
			local aoa = get(alpha) - 2
			
			local AOA_coef = 0
			
			if aoa > -80 and aoa < 80 then
				
				aoa = math.max(0, (math.abs(aoa) - 10))
				AOA_coef = math.tan(math.rad(aoa)) / 5.671
			
			else AOA_coef = 1 end
			
			
			local msl = get(msl_alt) * 3.28083 -- real alt MSL in feet
			local altitude_ft = msl + (get(pressure) * 0.0295300586467 - get(msl_press)) * 1000  -- calculate barometric altitude in feet
			local alt_mtr = altitude_ft * 0.3048
			local ALT_coef = math.max(0, alt_mtr - 8000) / 10000
			
			local RPM_coef_1 = math.max(0, rpm1 * 0.01 - 0.7) * 3
			local RPM_coef_2 = math.max(0, rpm2 * 0.01 - 0.7) * 3
			local RPM_coef_3 = math.max(0, rpm3 * 0.01 - 0.7) * 3
			
			if get(eng_stall_1) ~= 6 then set(eng_stall_1, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_1) * 6) end
			if get(eng_stall_2) ~= 6 then set(eng_stall_2, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_2) * 6) end
			if get(eng_stall_3) ~= 6 then set(eng_stall_3, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_3) * 6) end
			
			-- reset stall, if engine is not working or aoa/rpm are reduced
			if (get(eng_work_1) == 0 or (rpm1 < 75 and aoa < 1)) and sys_data_tbl.starter_desint_1 == 0 then set(eng_stall_1, 0) end
			if (get(eng_work_2) == 0 or (rpm2 < 75 and aoa < 1)) and sys_data_tbl.starter_desint_2 == 0 then set(eng_stall_2, 0) end
			if (get(eng_work_3) == 0 or (rpm3 < 75 and aoa < 1)) and sys_data_tbl.starter_desint_3 == 0 then set(eng_stall_3, 0) end
			
		
		end
		
		
		
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(engn_oil_leak_1) ~= 1 then set(engn_oil_leak_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(engn_oil_leak_2) ~= 1 then set(engn_oil_leak_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(engn_oil_leak_3) ~= 1 then set(engn_oil_leak_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(oil_pump_fail_1) ~= 6 then set(oil_pump_fail_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(oil_pump_fail_2) ~= 6 then set(oil_pump_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(oil_pump_fail_3) ~= 6 then set(oil_pump_fail_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			if get(fuel_flowmeter_1_fail) ~= 1 then set(fuel_flowmeter_1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_flowmeter_2_fail) ~= 1 then set(fuel_flowmeter_2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_flowmeter_3_fail) ~= 1 then set(fuel_flowmeter_3_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(eng_fail_1) ~= 6 then set(eng_fail_1, bool2int(math.random() < 0.00001 * FAIL * 0.3 + bool2int(engToCounter1 > 300) * 0.0001) * 6) end
			if get(eng_fail_2) ~= 6 then set(eng_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3 + bool2int(engToCounter2 > 300) * 0.0001) * 6) end
			if get(eng_fail_3) ~= 6 then set(eng_fail_3, bool2int(math.random() < 0.00001 * FAIL * 0.3 + bool2int(engToCounter3 > 300) * 0.0001) * 6) end
			
			if get(eng_work_1) == 1 then
				if get(eng_fire_1) ~= 6 then set(eng_fire_1,math.max( bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6, bool2int(math.random(270,350)<get(bearing_1_temp))* 6)) end
				if get(eng_fire_1) ~= 6 and get(sim_egt_1) > 600 then set(eng_fire_1, bool2int(math.random() < 0.001 * FAIL * 0.3) * 6) end
			end
			
			if get(eng_work_2) == 1 then
				if get(eng_fire_2) ~= 6 then set(eng_fire_2, math.max(bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6, bool2int(math.random(270,350)<get(bearing_2_temp))* 6)) end
				if get(eng_fire_2) ~= 6 and get(sim_egt_2) > 600 then set(eng_fire_2, bool2int(math.random() < 0.001 * FAIL * 0.3) * 6) end
			end
			
			if get(eng_work_3) == 1 then
				if get(eng_fire_3) ~= 6 then set(eng_fire_3, math.max(bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6, bool2int(math.random(270,350)<get(bearing_3_temp))* 6)) end
				if get(eng_fire_3) ~= 6 and get(sim_egt_3) > 600 then set(eng_fire_3, bool2int(math.random() < 0.001 * FAIL * 0.3) * 6) end
			end
			

			
			if get(eng_fuel_pmp_fail_1) ~= 1 then set(eng_fuel_pmp_fail_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(eng_fuel_pmp_fail_2) ~= 1 then set(eng_fuel_pmp_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(eng_fuel_pmp_fail_3) ~= 1 then set(eng_fuel_pmp_fail_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(eng_filter_1) ~= 6 then set(eng_filter_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_filter_2) ~= 6 then set(eng_filter_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_filter_3) ~= 6 then set(eng_filter_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			if get(eng_start_1) ~= 6 then set(eng_start_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_start_2) ~= 6 then set(eng_start_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_start_3) ~= 6 then set(eng_start_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			if get(eng_ign_1) ~= 6 then set(eng_ign_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_ign_2) ~= 6 then set(eng_ign_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_ign_3) ~= 6 then set(eng_ign_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			if get(eng_revrs_1) ~= 6 then set(eng_revrs_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(eng_revrs_3) ~= 6 then set(eng_revrs_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			if get(kpp1_fail) ~= 1 then set(kpp1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(kpp2_fail) ~= 1 then set(kpp2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(kpp3_fail) ~= 1 then set(kpp3_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(stp_1_fail) ~= 1 then set(stp_1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(stp_2_fail) ~= 1 then set(stp_2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(stp_3_fail) ~= 1 then set(stp_3_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if sys_data_tbl.starter_fail_1 ~= 1 and get(apd_working_1) > 0 then 
				sys_data_tbl.starter_fail_1 = bool2int(math.random() < 0.0001 * FAIL * 0.3) 
				set(starter_disc_fail,1)
			end
			if sys_data_tbl.starter_fail_2 ~= 1 and get(apd_working_2) > 0 then 
				sys_data_tbl.starter_fail_2 = bool2int(math.random() < 0.0001 * FAIL * 0.3) 
				set(starter_disc_fail,1)
			end
			if sys_data_tbl.starter_fail_3 ~= 1 and get(apd_working_3) > 0 then 
				sys_data_tbl.starter_fail_3 = bool2int(math.random() < 0.0001 * FAIL * 0.3) 
				set(starter_disc_fail,1)
			end
			
		
		end
		-- if get(eng_fail_1) ~= 6 and fire1_used>0 then
			-- set(eng_fail_1,6)
		-- end
		-- if get(eng_fail_2) ~= 6 and fire2_used>0 then
			-- set(eng_fail_2,6)
		-- end
		-- if get(eng_fail_3) ~= 6 and fire3_used>0 then
			-- set(eng_fail_3,6)
		-- end
		
		-- dependent failures
		
		-- OIL
		-- normal usage = 1 litre/h
		set(engn_oil_qty_1, math.max(0, get(engn_oil_qty_1) - get(rpm_high_1) * 0.01 * passed / 3600))
		set(engn_oil_qty_2, math.max(0, get(engn_oil_qty_2) - get(rpm_high_2) * 0.01 * passed / 3600))
		set(engn_oil_qty_3, math.max(0, get(engn_oil_qty_3) - get(rpm_high_3) * 0.01 * passed / 3600))
		
		-- oil leak
		set(engn_oil_qty_1, get(engn_oil_qty_1) - get(engn_oil_leak_1) * passed / 3600 * oilLeak1)
		set(engn_oil_qty_2, get(engn_oil_qty_2) - get(engn_oil_leak_2) * passed / 3600 * oilLeak2)
		set(engn_oil_qty_3, get(engn_oil_qty_3) - get(engn_oil_leak_3) * passed / 3600 * oilLeak3)
		
		-- oil pump fail if engine work
		if get(engn_oil_qty_1) < 4 and get(rpm_high_1) > 20 then set(oil_pump_fail_1, 6) end
		if get(engn_oil_qty_2) < 4 and get(rpm_high_2) > 20 then set(oil_pump_fail_2, 6) end
		if get(engn_oil_qty_3) < 4 and get(rpm_high_3) > 20 then set(oil_pump_fail_3, 6) end		
		
		-- sim oil sync
		set(ENGN_oil_q_1, math.max(0, (get(engn_oil_qty_1) - 4)/23))
		set(ENGN_oil_q_2, math.max(0, (get(engn_oil_qty_2) - 4)/23))
		set(ENGN_oil_q_3, math.max(0, (get(engn_oil_qty_3) - 4)/23))
		
		
		-- engine runtime
		minusTimer1 = minusTimer1 + interpolate(engnRuntimeCoef, get(rpm_high_1)) * passed
		minusTimer2 = minusTimer2 + interpolate(engnRuntimeCoef, get(rpm_high_2)) * passed
		minusTimer3 = minusTimer3 + interpolate(engnRuntimeCoef, get(rpm_high_3)) * passed
		
		if minusTimer1 >= 1 then
			minusTimer1 = 0
			set(engine_runtime_1, math.max(0, get(engine_runtime_1) - 1))
		end
		
		if minusTimer2 >= 1 then
			minusTimer2 = 0
			set(engine_runtime_2, math.max(0, get(engine_runtime_2) - 1))
		end

		if minusTimer3 >= 1 then
			minusTimer3 = 0
			set(engine_runtime_3, math.max(0, get(engine_runtime_3) - 1))
		end
		
		-- TakeOff mode limits
		if get(rpm_high_1) > 98 or get(engn_oil_qty_1) < 4 then engToCounter1 = engToCounter1 + passed
		else engToCounter1 = engToCounter1 - passed end
		if engToCounter1 < 0 then engToCounter1 = 0 end
		
		if get(rpm_high_2) > 98 or get(engn_oil_qty_2) < 4 then engToCounter2 = engToCounter2 + passed
		else engToCounter2 = engToCounter2 - passed end
		if engToCounter2 < 0 then engToCounter2 = 0 end
		
		if get(rpm_high_3) > 98 or get(engn_oil_qty_3) < 4 then engToCounter3 = engToCounter3 + passed
		else engToCounter3 = engToCounter3 - passed end
		if engToCounter3 < 0 then engToCounter3 = 0 end
		
		-- fuel fluctuation
		set(fuel_fluct_1, get(eng_filter_1))
		set(fuel_fluct_2, get(eng_filter_2))
		set(fuel_fluct_3, get(eng_filter_3))
		
		-- engine fire
		-- if get(eng_fire_1) == 6 then set(eng_flame_1, 6) end
		-- if get(eng_fire_2) == 6 then set(eng_flame_2, 6) end
		-- if get(eng_fire_3) == 6 then set(eng_flame_3, 6) end
		
		-- fire spreading
		if get(eng_fire_1)>0 then
			sys_data_tbl.eng_fire_timer_1 = sys_data_tbl.eng_fire_timer_1 + passed / (10 - 9 * get(fire_vlv_open_1) )
		end
		if get(eng_fire_2)>0 then
			sys_data_tbl.eng_fire_timer_2 = sys_data_tbl.eng_fire_timer_2 + passed / (10 - 9 * get(fire_vlv_open_2) )
		end
		if get(eng_fire_3)>0 then
			sys_data_tbl.eng_fire_timer_3 = sys_data_tbl.eng_fire_timer_3 + passed / (10 - 9 * get(fire_vlv_open_3) )
		end
		-- fires spreading to neighboring engine
		if sys_data_tbl.eng_fire_timer_1> 100 then
			local randnum_1 = math.random(4000) 
			if randnum_1 == 1 then
				set(eng_fire_2,6)
			end
		end
		
		if sys_data_tbl.eng_fire_timer_3> 90 then
			local randnum_3 = math.random(4000) 
			if randnum_3 == 1 then
				set(eng_fire_2,6)
			end
		end
		
		if sys_data_tbl.starter_ovspd_timer_1 > 120 then
			if math.random(1000) == 1 and sys_data_tbl.starter_desint_1 == 0 then
				sys_data_tbl.starter_desint_1 = 1
				set(eng_stall_1,6)
				set(eng_fire_1,6)
			end
		end
			
		if sys_data_tbl.starter_ovspd_timer_2 > 120 then
			if math.random(1000) == 1 and sys_data_tbl.starter_desint_2 == 0 then
				sys_data_tbl.starter_desint_2 = 1
				set(eng_stall_2,6)
				set(eng_fire_2,6)
			end
		end
		
		if sys_data_tbl.starter_ovspd_timer_3 > 120 then
			if math.random(1000) == 1 and sys_data_tbl.starter_desint_3 == 0 then
				sys_data_tbl.starter_desint_3 = 1
				set(eng_stall_3,6)
				set(eng_fire_3,6)
			end
		end
		
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(engn_oil_leak_1, 0)
		set(engn_oil_leak_2, 0)
		set(engn_oil_leak_3, 0)
		
		set(oil_pump_fail_1, 0)
		set(oil_pump_fail_2, 0)
		set(oil_pump_fail_3, 0)
		
		set(fuel_flowmeter_1_fail, 0)
		set(fuel_flowmeter_2_fail, 0)
		set(fuel_flowmeter_3_fail, 0)
		
		set(eng_fail_1, 0)
		set(eng_fail_2, 0)
		set(eng_fail_3, 0)
		
		set(eng_fire_1, 0)
		set(eng_fire_2, 0)
		set(eng_fire_3, 0)
		
		set(eng_flame_1, 0)
		set(eng_flame_2, 0)
		set(eng_flame_3, 0)
		
		set(kpp1_fail, 0)
		set(kpp2_fail, 0)
		set(kpp3_fail, 0)
		
		set(stp_1_fail,0)
		set(stp_2_fail,0)
		set(stp_3_fail,0)
		
		-- engine can ALWAYS stall
		stall_counter = stall_counter + passed
		
		if stall_counter > stall_time then
			stall_counter = 0
			stall_time = math.random()
			
			
			local aoa = get(alpha) - 2
			
			local AOA_coef = 0
			
			if aoa > -80 and aoa < 80 then
				
				aoa = math.max(0, (math.abs(aoa) - 10))
				AOA_coef = math.tan(math.rad(aoa)) / 5.671
			
			else AOA_coef = 1 end
			
			
			local msl = get(msl_alt) * 3.28083 -- real alt MSL in feet
			local altitude_ft = msl + (get(pressure) * 0.0295300586467 - get(msl_press)) * 1000  -- calculate barometric altitude in feet
			local alt_mtr = altitude_ft * 0.3048
			local ALT_coef = math.max(0, alt_mtr - 8000) / 10000
			
			local RPM_coef_1 = math.max(0, rpm1 * 0.01 - 0.7) * 3
			local RPM_coef_2 = math.max(0, rpm2 * 0.01 - 0.7) * 3
			local RPM_coef_3 = math.max(0, rpm3 * 0.01 - 0.7) * 3
			
			if get(eng_stall_1) ~= 6 then set(eng_stall_1, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_1) * 6) end
			if get(eng_stall_2) ~= 6 then set(eng_stall_2, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_2) * 6) end
			if get(eng_stall_3) ~= 6 then set(eng_stall_3, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_3) * 6) end
			
			-- reset stall, if engine is not working or aoa/rpm are reduced
			if (get(eng_work_1) == 0 or (rpm1 < 75 and aoa < 1)) then set(eng_stall_1, 0) end
			if (get(eng_work_2) == 0 or (rpm2 < 75 and aoa < 1)) then set(eng_stall_2, 0) end
			if (get(eng_work_3) == 0 or (rpm3 < 75 and aoa < 1)) then set(eng_stall_3, 0) end
			
		
		end
		
		-- set(eng_stall_1, 0) -- no comp stall if failures are disabled
		-- set(eng_stall_2, 0)
		-- set(eng_stall_3, 0)
		
		set(eng_fuel_pmp_fail_1, 0)
		set(eng_fuel_pmp_fail_2, 0)
		set(eng_fuel_pmp_fail_3, 0)
		
		set(eng_filter_1, 0)
		set(eng_filter_2, 0)
		set(eng_filter_3, 0)
		
		set(eng_start_1, 0)
		set(eng_start_2, 0)
		set(eng_start_3, 0)
		
		set(eng_ign_1, 0)
		set(eng_ign_2, 0)
		set(eng_ign_3, 0)
		
		set(eng_revrs_1, 0)
		set(eng_revrs_3, 0)
		
		
		set(engn_oil_qty_1, 29.5)
		set(engn_oil_qty_2, 29.5)
		set(engn_oil_qty_3, 29.5)
		
		set(ENGN_oil_q_1, 0.85)
		set(ENGN_oil_q_2, 0.85)
		set(ENGN_oil_q_3, 0.85)
		
		set(engine_runtime_1, 300*3600)
		set(engine_runtime_2, 300*3600)
		set(engine_runtime_3, 300*3600)
		
		sys_data_tbl.eng_fire_timer_1 = 0
		sys_data_tbl.eng_fire_timer_2 = 0
		sys_data_tbl.eng_fire_timer_3 = 0
		sys_data_tbl.eng_fire_timer_4 = 0

		sys_data_tbl.starter_ovspd_timer_1 = 0
		sys_data_tbl.starter_ovspd_timer_2 = 0
		sys_data_tbl.starter_ovspd_timer_3 = 0
		
		sys_data_tbl.starter_fail_1 = 0
		sys_data_tbl.starter_fail_2 = 0
		sys_data_tbl.starter_fail_3 = 0

	
	end
	
	
	
	

	

    
    
end   
    
    
    
end
