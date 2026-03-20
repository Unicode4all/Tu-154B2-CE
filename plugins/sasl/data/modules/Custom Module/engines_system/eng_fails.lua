-- failures
defineProperty("engine_runtime_1", globalPropertyf("tu154b2/custom/failures/engine_runtime_1")) 
defineProperty("engine_runtime_2", globalPropertyf("tu154b2/custom/failures/engine_runtime_2")) 
defineProperty("engine_runtime_3", globalPropertyf("tu154b2/custom/failures/engine_runtime_3"))

defineProperty("engn_oil_qty_1", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_1")) 
defineProperty("engn_oil_qty_2", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_2")) 
defineProperty("engn_oil_qty_3", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_3"))

defineProperty("engn_oil_leak_1", globalPropertyi("tu154b2/custom/failures/engn_oil_leak_1")) 
defineProperty("engn_oil_leak_2", globalPropertyi("tu154b2/custom/failures/engn_oil_leak_2")) 
defineProperty("engn_oil_leak_3", globalPropertyi("tu154b2/custom/failures/engn_oil_leak_3"))

defineProperty("oil_pump_fail_1", globalPropertyi("sim/operation/failures/rel_oilpmp0")) 
defineProperty("oil_pump_fail_2", globalPropertyi("sim/operation/failures/rel_oilpmp1")) 
defineProperty("oil_pump_fail_3", globalPropertyi("sim/operation/failures/rel_oilpmp2"))

defineProperty("fuel_flowmeter_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_1_fail"))
defineProperty("fuel_flowmeter_2_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_2_fail"))
defineProperty("fuel_flowmeter_3_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_3_fail"))


defineProperty("eng_fail_1", globalPropertyi("sim/operation/failures/rel_engfai0"))
defineProperty("eng_fail_2", globalPropertyi("sim/operation/failures/rel_engfai1"))
defineProperty("eng_fail_3", globalPropertyi("sim/operation/failures/rel_engfai2"))

defineProperty("eng_fire_1", globalPropertyi("sim/operation/failures/rel_engfir0"))
defineProperty("eng_fire_2", globalPropertyi("sim/operation/failures/rel_engfir1"))
defineProperty("eng_fire_3", globalPropertyi("sim/operation/failures/rel_engfir2"))

defineProperty("eng_flame_1", globalPropertyi("sim/operation/failures/rel_engfla0"))
defineProperty("eng_flame_2", globalPropertyi("sim/operation/failures/rel_engfla1"))
defineProperty("eng_flame_3", globalPropertyi("sim/operation/failures/rel_engfla2"))

defineProperty("eng_stall_1", globalPropertyi("sim/operation/failures/rel_comsta0"))
defineProperty("eng_stall_2", globalPropertyi("sim/operation/failures/rel_comsta1"))
defineProperty("eng_stall_3", globalPropertyi("sim/operation/failures/rel_comsta2"))

defineProperty("eng_fuel_pmp_fail_1", globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_1"))
defineProperty("eng_fuel_pmp_fail_2", globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_2"))
defineProperty("eng_fuel_pmp_fail_3", globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_3"))


defineProperty("eng_filter_1", globalPropertyi("sim/operation/failures/rel_eng_lo0"))
defineProperty("eng_filter_2", globalPropertyi("sim/operation/failures/rel_eng_lo1"))
defineProperty("eng_filter_3", globalPropertyi("sim/operation/failures/rel_eng_lo2"))

defineProperty("eng_start_1", globalPropertyi("sim/operation/failures/rel_startr0"))
defineProperty("eng_start_2", globalPropertyi("sim/operation/failures/rel_startr1"))
defineProperty("eng_start_3", globalPropertyi("sim/operation/failures/rel_startr2"))

defineProperty("eng_ign_1", globalPropertyi("sim/operation/failures/rel_ignitr0"))
defineProperty("eng_ign_2", globalPropertyi("sim/operation/failures/rel_ignitr1"))
defineProperty("eng_ign_3", globalPropertyi("sim/operation/failures/rel_ignitr2"))

defineProperty("eng_revrs_1", globalPropertyi("sim/operation/failures/rel_revers0"))
defineProperty("eng_revrs_3", globalPropertyi("sim/operation/failures/rel_revers2"))

defineProperty("ENGN_oil_q_1", globalProperty("sim/flightmodel/engine/ENGN_oil_quan[0]"))
defineProperty("ENGN_oil_q_2", globalProperty("sim/flightmodel/engine/ENGN_oil_quan[1]"))
defineProperty("ENGN_oil_q_3", globalProperty("sim/flightmodel/engine/ENGN_oil_quan[2]"))


defineProperty("fuel_fluct_1", globalPropertyi("sim/operation/failures/rel_fuelfl0")) -- Fuel Flow Fluctuation
defineProperty("fuel_fluct_2", globalPropertyi("sim/operation/failures/rel_fuelfl1")) -- Fuel Flow Fluctuation
defineProperty("fuel_fluct_3", globalPropertyi("sim/operation/failures/rel_fuelfl2")) -- Fuel Flow Fluctuation

defineProperty("sim_egt_1", globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[0]")) -- EGT from sim
defineProperty("sim_egt_2", globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[1]")) -- EGT from sim
defineProperty("sim_egt_3", globalProperty("sim/cockpit2/engine/indicators/EGT_deg_C[2]")) -- EGT from sim



-- engines data
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("eng_work_1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("eng_work_2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("eng_work_3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))


defineProperty("alpha", globalPropertyf("sim/flightmodel2/misc/AoA_angle_degrees"))  -- angle of attack
defineProperty("msl_alt", globalPropertyf("sim/flightmodel/position/elevation"))  -- phisical altitude MSL. meters
defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg
defineProperty("pressure", globalPropertyf("tu154b2/custom/gauges/alt/vbe_press_left"))  -- pressure in hPa

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled"))

defineProperty("eng1_ext", globalPropertyi("tu154b2/custom/fire/eng1_ext_used"))
defineProperty("eng2_ext", globalPropertyi("tu154b2/custom/fire/eng2_ext_used"))
defineProperty("eng3_ext", globalPropertyi("tu154b2/custom/fire/eng3_ext_used"))
defineProperty("eng4_ext", globalPropertyi("tu154b2/custom/fire/apu_ext_used"))

defineProperty("sim_rud_1", globalProperty("sim/flightmodel/engine/ENGN_thro_use[0]"))
defineProperty("sim_rud_2", globalProperty("sim/flightmodel/engine/ENGN_thro_use[1]"))
defineProperty("sim_rud_3", globalProperty("sim/flightmodel/engine/ENGN_thro_use[2]"))

defineProperty("kpp1_fail", globalPropertyf("tu154b2/custom/failures/kpp_1_fail"))
defineProperty("kpp2_fail", globalPropertyf("tu154b2/custom/failures/kpp_2_fail"))
defineProperty("kpp3_fail", globalPropertyf("tu154b2/custom/failures/kpp_3_fail"))

bearing_1_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_1")
bearing_2_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_2")
bearing_3_temp = globalPropertyf("tu154b2/custom/gauges/eng/brg_temp_3")

stp_1_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_1")
stp_2_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_2")
stp_3_fail = globalPropertyi("tu154b2/custom/failures/stp_fail_3")

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

-- put oil before every flight
set(engn_oil_qty_1, math.random() + 29)
set(engn_oil_qty_2, math.random() + 29)
set(engn_oil_qty_3, math.random() + 29)


set(engine_runtime_1, math.random(280,320) * 3600)
set(engine_runtime_2, math.random(280,320) * 3600)
set(engine_runtime_3, math.random(280,320) * 3600)



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
			
			local RPM_coef_1 = math.max(0, get(rpm_high_1) * 0.01 - 0.7) * 3
			local RPM_coef_2 = math.max(0, get(rpm_high_2) * 0.01 - 0.7) * 3
			local RPM_coef_3 = math.max(0, get(rpm_high_3) * 0.01 - 0.7) * 3
			
			if get(eng_stall_1) ~= 6 then set(eng_stall_1, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_1) * 6) end
			if get(eng_stall_2) ~= 6 then set(eng_stall_2, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_2) * 6) end
			if get(eng_stall_3) ~= 6 then set(eng_stall_3, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_3) * 6) end
			
			-- reset stall, if engine is not working
			if get(eng_work_1) == 0 then set(eng_stall_1, 0) end
			if get(eng_work_2) == 0 then set(eng_stall_2, 0) end
			if get(eng_work_3) == 0 then set(eng_stall_3, 0) end
			
		
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
			
		
		end
		if get(eng_fail_1) ~= 6 and fire1_used>0 then
			set(eng_fail_1,6)
		end
		if get(eng_fail_2) ~= 6 and fire2_used>0 then
			set(eng_fail_2,6)
		end
		if get(eng_fail_3) ~= 6 and fire3_used>0 then
			set(eng_fail_3,6)
		end
		
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
		if get(rpm_high_1) > 95 or get(engn_oil_qty_1) < 4 then engToCounter1 = engToCounter1 + passed
		else engToCounter1 = engToCounter1 - passed end
		if engToCounter1 < 0 then engToCounter1 = 0 end
		
		if get(rpm_high_2) > 95 or get(engn_oil_qty_2) < 4 then engToCounter2 = engToCounter2 + passed
		else engToCounter2 = engToCounter2 - passed end
		if engToCounter2 < 0 then engToCounter2 = 0 end
		
		if get(rpm_high_3) > 95 or get(engn_oil_qty_3) < 4 then engToCounter3 = engToCounter3 + passed
		else engToCounter3 = engToCounter3 - passed end
		if engToCounter3 < 0 then engToCounter3 = 0 end
		
		-- fuel fluctuation
		set(fuel_fluct_1, get(eng_filter_1))
		set(fuel_fluct_2, get(eng_filter_2))
		set(fuel_fluct_3, get(eng_filter_3))
		
		-- engine fire
		if get(eng_fire_1) == 6 then set(eng_flame_1, 6) end
		if get(eng_fire_2) == 6 then set(eng_flame_2, 6) end
		if get(eng_fire_3) == 6 then set(eng_flame_3, 6) end
		
		
		
	
	
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
		
		set(eng_fail_1, fire1_used*6)
		set(eng_fail_2, fire2_used*6)
		set(eng_fail_3, fire3_used*6)
		
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
			
			local RPM_coef_1 = math.max(0, get(rpm_high_1) * 0.01 - 0.7) * 3
			local RPM_coef_2 = math.max(0, get(rpm_high_2) * 0.01 - 0.7) * 3
			local RPM_coef_3 = math.max(0, get(rpm_high_3) * 0.01 - 0.7) * 3
			
			if get(eng_stall_1) ~= 6 then set(eng_stall_1, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_1) * 6) end
			if get(eng_stall_2) ~= 6 then set(eng_stall_2, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_2) * 6) end
			if get(eng_stall_3) ~= 6 then set(eng_stall_3, bool2int(math.random() < 1 * AOA_coef * ALT_coef * RPM_coef_3) * 6) end
			
			-- reset stall, if engine is not working
			if get(eng_work_1) == 0 then set(eng_stall_1, 0) end
			if get(eng_work_2) == 0 then set(eng_stall_2, 0) end
			if get(eng_work_3) == 0 then set(eng_stall_3, 0) end
			
		
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

	
	end
	
	
	
	

	

    
    
end   
    
    
    
end
