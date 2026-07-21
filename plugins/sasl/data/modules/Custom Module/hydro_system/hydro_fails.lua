-- hydro fails


-- failures
defineProperty("hs_leak_1", globalPropertyi("tu154b2/custom/failures/hydro_leak_1")) -- leak
defineProperty("hs_leak_2", globalPropertyi("tu154b2/custom/failures/hydro_leak_2")) -- leak
defineProperty("hs_leak_3", globalPropertyi("tu154b2/custom/failures/hydro_leak_3")) -- leak
defineProperty("hs_leak_4", globalPropertyi("tu154b2/custom/failures/hydro_leak_4")) -- leak

defineProperty("hydro_pump_fail_11", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_11")) -- fail
defineProperty("hydro_pump_fail_12", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_12")) -- fail
defineProperty("hydro_pump_fail_2", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_2")) -- fail
defineProperty("hydro_pump_fail_3", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_3")) -- fail

defineProperty("hydro_elec_fail_2", globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_2")) -- fail
defineProperty("hydro_elec_fail_3", globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_3")) -- fail

defineProperty("system_qty_1", globalPropertyf("tu154b2/custom/hydro/gs_qty_1")) -- остаток масла в системе
defineProperty("system_qty_2", globalPropertyf("tu154b2/custom/hydro/gs_qty_2")) -- остаток масла в системе
defineProperty("system_qty_3", globalPropertyf("tu154b2/custom/hydro/gs_qty_3")) -- остаток масла в системе


-- define sources
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control





local fail_counter = 0
local check_time = math.random(15, 30)


function update()
	local passed = get(frame_time)
	
local MASTER = get(ismaster) ~= 1	
	

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
			if get(hs_leak_1) ~= 1 then set(hs_leak_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hs_leak_2) ~= 1 then set(hs_leak_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hs_leak_3) ~= 1 then set(hs_leak_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hs_leak_4) ~= 1 then set(hs_leak_4, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(hydro_pump_fail_11) ~= 1 then set(hydro_pump_fail_11, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hydro_pump_fail_12) ~= 1 then set(hydro_pump_fail_12, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hydro_pump_fail_2) ~= 1 then set(hydro_pump_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hydro_pump_fail_3) ~= 1 then set(hydro_pump_fail_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(hydro_elec_fail_2) ~= 1 then set(hydro_elec_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(hydro_elec_fail_3) ~= 1 then set(hydro_elec_fail_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			
		
		end
		
		-- dependent failures
		

		
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(hs_leak_1, 0)
		set(hs_leak_2, 0)
		set(hs_leak_3, 0)
		set(hs_leak_4, 0)
		
		set(hydro_pump_fail_11, 0)
		set(hydro_pump_fail_12, 0)
		set(hydro_pump_fail_2, 0)
		set(hydro_pump_fail_3, 0)
		
		set(hydro_elec_fail_2, 0)
		set(hydro_elec_fail_3, 0)
		
		-- set(system_qty_1, 103)
		-- set(system_qty_2, 103)
		-- set(system_qty_3, 45)
		
		
	end
	
	
	
end

end
