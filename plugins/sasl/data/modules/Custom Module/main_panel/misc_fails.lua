-- all other systems fails

-- custom fails
defineProperty("diss_fail", globalPropertyi("tu154b2/custom/failures/diss_fail"))
defineProperty("nvu_fail", globalPropertyi("tu154b2/custom/failures/nvu_fail"))
defineProperty("radar_fail", globalPropertyi("tu154b2/custom/failures/radar_fail"))
defineProperty("rsbn_fail", globalPropertyi("tu154b2/custom/failures/rsbn_fail"))
defineProperty("taws_fail", globalPropertyi("tu154b2/custom/failures/taws_fail"))

defineProperty("acs1_fail", globalPropertyi("tu154b2/custom/failures/acs1_fail"))
defineProperty("acs2_fail", globalPropertyi("tu154b2/custom/failures/acs2_fail"))
defineProperty("acs3_fail", globalPropertyi("tu154b2/custom/failures/acs3_fail"))

defineProperty("agr_fail", globalPropertyi("tu154b2/custom/failures/agr_fail"))
defineProperty("bkk_fail", globalPropertyi("tu154b2/custom/failures/bkk_fail"))
defineProperty("bkk_fail2", globalPropertyi("tu154b2/custom/failures/bkk_fail_2"))

defineProperty("pitot1", globalPropertyi("tu154b2/custom/failures/pitot1"))
defineProperty("pitot2", globalPropertyi("tu154b2/custom/failures/pitot2"))
defineProperty("static1", globalPropertyi("tu154b2/custom/failures/static1"))
defineProperty("static2", globalPropertyi("tu154b2/custom/failures/static2"))

defineProperty("mgv_fail", globalPropertyi("tu154b2/custom/failures/mgv_fail"))
defineProperty("rv1_fail", globalPropertyi("tu154b2/custom/failures/rv1_fail"))
defineProperty("rv2_fail", globalPropertyi("tu154b2/custom/failures/rv2_fail"))
defineProperty("AOA", globalPropertyi("tu154b2/custom/failures/AOA"))
defineProperty("uvid15_fail", globalPropertyi("tu154b2/custom/failures/uvid15_fail"))



-- sim fails

defineProperty("rel_ss_alt", globalPropertyi("sim/operation/failures/rel_ss_alt"))
defineProperty("rel_cop_alt", globalPropertyi("sim/operation/failures/rel_cop_alt"))
defineProperty("rel_ss_tsi", globalPropertyi("sim/operation/failures/rel_ss_tsi"))

defineProperty("rel_adc_comp", globalPropertyi("sim/operation/failures/rel_adc_comp"))
defineProperty("rel_ss_ahz", globalPropertyi("sim/operation/failures/rel_ss_ahz"))
defineProperty("rel_cop_ahz", globalPropertyi("sim/operation/failures/rel_cop_ahz"))
defineProperty("rel_stall_warn", globalPropertyi("sim/operation/failures/rel_stall_warn"))
defineProperty("rel_ss_vvi", globalPropertyi("sim/operation/failures/rel_ss_vvi"))
defineProperty("rel_cop_vvi", globalPropertyi("sim/operation/failures/rel_cop_vvi"))
so72_fail = globalPropertyi("tu154b2/custom/failures/so72_fail")

--defineProperty("rel_bird_strike", globalPropertyi("sim/operation/failures/rel_bird_strike"))



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
			if get(diss_fail) ~= 1 then set(diss_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(nvu_fail) ~= 1 then set(nvu_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(radar_fail) ~= 1 then set(radar_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(rsbn_fail) ~= 1 then set(rsbn_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(taws_fail) ~= 1 then set(taws_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(acs1_fail) ~= 1 then set(acs1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(acs2_fail) ~= 1 then set(acs2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(acs3_fail) ~= 1 then set(acs3_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(agr_fail) ~= 1 then set(agr_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(bkk_fail) ~= 1 then set(bkk_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(bkk_fail2) ~= 1 then set(bkk_fail2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(pitot1) ~= 1 then set(pitot1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(pitot2) ~= 1 then set(pitot2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(static1) ~= 1 then set(static1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(static2) ~= 1 then set(static2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(mgv_fail) ~= 1 then set(mgv_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(rv1_fail) ~= 1 then set(rv1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(rv2_fail) ~= 1 then set(rv2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(AOA) ~= 1 then set(AOA, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(uvid15_fail) ~= 1 then set(uvid15_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			
			
			
			if get(rel_ss_alt) ~= 6 then set(rel_ss_alt, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_cop_alt) ~= 6 then set(rel_cop_alt, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_ss_tsi) ~= 6 then set(rel_ss_tsi, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			if get(rel_adc_comp) ~= 6 then set(rel_adc_comp, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_ss_ahz) ~= 6 then set(rel_ss_ahz, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_cop_ahz) ~= 6 then set(rel_cop_ahz, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_stall_warn) ~= 6 then set(rel_stall_warn, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_ss_vvi) ~= 6 then set(rel_ss_vvi, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_cop_vvi) ~= 6 then set(rel_cop_vvi, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(so72_fail) ~= 1 then set(so72_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
	
		end
		
		-- dependent failures
		

		
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(diss_fail, 0)
		set(nvu_fail, 0)
		set(radar_fail, 0)
		set(rsbn_fail, 0)
		set(taws_fail, 0)
		
		set(acs1_fail, 0)
		set(acs2_fail, 0)
		set(acs3_fail, 0)
		
		set(agr_fail, 0)
		set(bkk_fail, 0)
		set(bkk_fail2, 0)
		
		set(pitot1, 0)
		set(pitot2, 0)
		set(static1, 0)
		set(static2, 0)
		
		set(mgv_fail, 0)
		set(rv1_fail, 0)
		set(rv2_fail, 0)
		set(AOA, 0)
		set(uvid15_fail, 0)

		set(rel_ss_alt, 0)
		set(rel_cop_alt, 0)
		set(rel_ss_tsi, 0)
		
		set(rel_adc_comp, 0)
		set(rel_ss_ahz, 0)
		set(rel_cop_ahz, 0)
		set(rel_stall_warn, 0)
		set(rel_ss_vvi, 0)
		set(rel_cop_vvi, 0)
		set(so72_fail,0)

	
	end
	
	
	
end

end