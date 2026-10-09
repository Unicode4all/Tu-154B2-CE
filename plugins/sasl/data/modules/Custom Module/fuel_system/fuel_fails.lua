-- fuel system fails

-- failures
defineProperty("fuel_porc_fail", globalPropertyi("tu154b2/custom/failures/fuel_porc_fail"))
defineProperty("fuel_auto_fail", globalPropertyi("tu154b2/custom/failures/fuel_auto_fail"))
defineProperty("fuel_level_fail", globalPropertyi("tu154b2/custom/failures/fuel_level_fail"))

defineProperty("fuel_pump_2l_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_2l_fail")) -- number of failed pumps
defineProperty("fuel_pump_2r_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_2r_fail"))
defineProperty("fuel_pump_3l_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_3l_fail"))
defineProperty("fuel_pump_3r_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_3r_fail"))
defineProperty("fuel_pump_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_1_fail"))
defineProperty("fuel_pump_4_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_4_fail"))


defineProperty("fuel_meter_2l_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_2l_fail"))
defineProperty("fuel_meter_2r_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_2r_fail"))
defineProperty("fuel_meter_3l_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_3l_fail"))
defineProperty("fuel_meter_3r_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_3r_fail"))
defineProperty("fuel_meter_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_1_fail"))
defineProperty("fuel_meter_4_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_4_fail"))
defineProperty("fuel_meter_summ_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_summ"))
defineProperty("res_pump_fail", globalPropertyi("tu154b2/custom/failures/res_pump_fail"))




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
			if get(fuel_porc_fail) ~= 1 then set(fuel_porc_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_auto_fail) ~= 1 then set(fuel_auto_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_level_fail) ~= 1 then set(fuel_level_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			local pump2L_1 = bool2int(get(fuel_pump_2l_fail) >= 1)
			local pump2L_2 = bool2int(get(fuel_pump_2l_fail) >= 2)
			
			if pump2L_1 ~= 1 then pump2L_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
			elseif pump2L_2 ~= 1 then pump2L_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) end
			
			set(fuel_pump_2l_fail, pump2L_1 + pump2L_2)

			local pump2R_1 = bool2int(get(fuel_pump_2r_fail) >= 1)
			local pump2R_2 = bool2int(get(fuel_pump_2r_fail) >= 2)
			
			if pump2R_1 ~= 1 then pump2R_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
			elseif pump2R_2 ~= 1 then pump2R_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) end
			
			set(fuel_pump_2r_fail, pump2R_1 + pump2R_2)

			local pump3L_1 = bool2int(get(fuel_pump_3l_fail) >= 1)
			local pump3L_2 = bool2int(get(fuel_pump_3l_fail) >= 2)
			local pump3L_3 = bool2int(get(fuel_pump_3l_fail) >= 3)
			
			if pump3L_1 ~= 1 then pump3L_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
			elseif pump3L_2 ~= 1 then pump3L_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			elseif pump3L_3 ~= 1 then pump3L_3 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			end
			
			set(fuel_pump_3l_fail, pump3L_1 + pump3L_2 + pump3L_3)
			

			local pump3R_1 = bool2int(get(fuel_pump_3r_fail) >= 1)
			local pump3R_2 = bool2int(get(fuel_pump_3r_fail) >= 2)
			local pump3R_3 = bool2int(get(fuel_pump_3r_fail) >= 3)
			
			if pump3R_1 ~= 1 then pump3R_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
			elseif pump3R_2 ~= 1 then pump3R_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			elseif pump3R_3 ~= 1 then pump3R_3 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			end
			
			set(fuel_pump_3r_fail, pump3R_1 + pump3R_2 + pump3R_3)

			local pump1_1 = bool2int(get(fuel_pump_1_fail) >= 1)
			local pump1_2 = bool2int(get(fuel_pump_1_fail) >= 2)
			local pump1_3 = bool2int(get(fuel_pump_1_fail) >= 3)
			local pump1_4 = bool2int(get(fuel_pump_1_fail) >= 4)
			
			if pump1_1 ~= 1 then pump1_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
			elseif pump1_2 ~= 1 then pump1_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			elseif pump1_3 ~= 1 then pump1_3 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			elseif pump1_4 ~= 1 then pump1_4 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
			end
			
			set(fuel_pump_1_fail, pump1_1 + pump1_2 + pump1_3 + pump1_4)

			local pump4_1 = bool2int(get(fuel_pump_4_fail) >= 1)
			local pump4_2 = bool2int(get(fuel_pump_4_fail) >= 2)
			
			if pump4_1 ~= 1 then pump4_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
			elseif pump4_2 ~= 1 then pump4_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) end
			
			set(fuel_pump_4_fail, pump4_1 + pump4_2)
			
			
			if get(fuel_meter_2l_fail) ~= 1 then set(fuel_meter_2l_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_meter_2r_fail) ~= 1 then set(fuel_meter_2r_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_meter_3l_fail) ~= 1 then set(fuel_meter_3l_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_meter_3r_fail) ~= 1 then set(fuel_meter_3r_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_meter_1_fail) ~= 1 then set(fuel_meter_1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_meter_4_fail) ~= 1 then set(fuel_meter_4_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fuel_meter_summ_fail) ~= 1 then set(fuel_meter_summ_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(res_pump_fail) ~= 1 then set(res_pump_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
		
		end
		
		-- dependent failures
		

		
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(fuel_porc_fail, 0)
		set(fuel_auto_fail, 0)
		set(fuel_level_fail, 0)
		
		set(fuel_pump_2l_fail, 0)
		set(fuel_pump_2r_fail, 0)
		set(fuel_pump_3l_fail, 0)
		set(fuel_pump_3r_fail, 0)
		set(fuel_pump_1_fail, 0)
		set(fuel_pump_4_fail, 0)
		
		set(fuel_meter_2l_fail, 0)
		set(fuel_meter_2r_fail, 0)
		set(fuel_meter_3l_fail, 0)
		set(fuel_meter_3r_fail, 0)
		set(fuel_meter_1_fail, 0)
		set(fuel_meter_4_fail, 0)
		set(fuel_meter_summ_fail, 0)
		set(res_pump_fail, 0)
	
	end
	
	
	
end

end



