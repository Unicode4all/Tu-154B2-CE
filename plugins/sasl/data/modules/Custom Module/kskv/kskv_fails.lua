-- air bleed fails




defineProperty("airbleed_1", globalPropertyi("tu154b2/custom/failures/airbleed_1")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_2", globalPropertyi("tu154b2/custom/failures/airbleed_2")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_3", globalPropertyi("tu154b2/custom/failures/airbleed_3")) -- отказ отбора воздуха от двигателя

defineProperty("psvp_fail_left", globalPropertyi("tu154b2/custom/failures/psvp_fail_left")) -- отказ ПСВП
defineProperty("psvp_fail_right", globalPropertyi("tu154b2/custom/failures/psvp_fail_right")) -- отказ ПСВП

defineProperty("tth_left_fail", globalPropertyi("tu154b2/custom/failures/tth_left_fail")) -- отказ турбохолодильника
defineProperty("tth_right_fail", globalPropertyi("tu154b2/custom/failures/tth_right_fail")) -- отказ турбохолодильника

--defineProperty("sard_valve_fail", globalPropertyi("tu154b2/custom/failures/sard_valve_fail")) -- отказ выпускного клапана
sard_valve_fail_1 = globalPropertyi("tu154b2/custom/failures/valve_1")
sard_valve_fail_2 = globalPropertyi("tu154b2/custom/failures/valve_2")
sard_valve_fail_3 = globalPropertyi("tu154b2/custom/failures/valve_3")
sard_valve_fail_4 = globalPropertyi("tu154b2/custom/failures/valve_4")
sard_reg_fail_1 = globalPropertyi("tu154b2/custom/failures/srd_regulator_1")
sard_reg_fail_2 = globalPropertyi("tu154b2/custom/failures/srd_regulator_2")

vvr_leak = globalPropertyi("tu154b2/custom/failures/vvr_leak")



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
			if get(airbleed_1) ~= 1 then set(airbleed_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(airbleed_2) ~= 1 then set(airbleed_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(airbleed_3) ~= 1 then set(airbleed_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(psvp_fail_left) ~= 1 then set(psvp_fail_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(psvp_fail_right) ~= 1 then set(psvp_fail_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(tth_left_fail) ~= 1 then set(tth_left_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(tth_right_fail) ~= 1 then set(tth_right_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(sard_valve_fail_1) ~= 1 then set(sard_valve_fail_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(sard_valve_fail_2) ~= 1 then set(sard_valve_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(sard_valve_fail_3) ~= 1 then set(sard_valve_fail_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(sard_valve_fail_4) ~= 1 then set(sard_valve_fail_4, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(sard_reg_fail_1) ~= 1 then set(sard_reg_fail_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(sard_reg_fail_2) ~= 1 then set(sard_reg_fail_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(vvr_leak) ~= 1 then set(vvr_leak, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
		
		end
		
		-- dependent failures
		

		
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(airbleed_1, 0)
		set(airbleed_2, 0)
		set(airbleed_3, 0)
		
		set(psvp_fail_left, 0)
		set(psvp_fail_right, 0)
		
		set(tth_left_fail, 0)
		set(tth_right_fail, 0)
		
		set(sard_valve_fail_1, 0)
		set(sard_valve_fail_2, 0)
		set(sard_valve_fail_3, 0)
		set(sard_valve_fail_4, 0)
		set(sard_reg_fail_1, 0)
        set(sard_reg_fail_2, 0)
		set(vvr_leak, 0)
	
	end
	
	
	
end

end
