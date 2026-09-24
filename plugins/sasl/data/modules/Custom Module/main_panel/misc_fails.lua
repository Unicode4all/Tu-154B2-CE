-- all other systems fails

-- custom fails
diss_fail = globalPropertyi("tu154b2/custom/failures/diss_fail")
nvu_fail = globalPropertyi("tu154b2/custom/failures/nvu_fail")
radar_fail = globalPropertyi("tu154b2/custom/failures/radar_fail")
rsbn_fail = globalPropertyi("tu154b2/custom/failures/rsbn_fail")
taws_fail = globalPropertyi("tu154b2/custom/failures/taws_fail")

acs1_fail = globalPropertyi("tu154b2/custom/failures/acs1_fail")
acs2_fail = globalPropertyi("tu154b2/custom/failures/acs2_fail")
acs3_fail = globalPropertyi("tu154b2/custom/failures/acs3_fail")

agr_fail = globalPropertyi("tu154b2/custom/failures/agr_fail")
bkk_fail = globalPropertyi("tu154b2/custom/failures/bkk_fail")
bkk_fail2 = globalPropertyi("tu154b2/custom/failures/bkk_fail_2")

pitot1 = globalPropertyi("tu154b2/custom/failures/pitot1")
pitot2 = globalPropertyi("tu154b2/custom/failures/pitot2")
static1 = globalPropertyi("tu154b2/custom/failures/static1")
static2 = globalPropertyi("tu154b2/custom/failures/static2")

mgv_fail = globalPropertyi("tu154b2/custom/failures/mgv_fail")
rv1_fail = globalPropertyi("tu154b2/custom/failures/rv1_fail")
rv2_fail = globalPropertyi("tu154b2/custom/failures/rv2_fail")
AOA = globalPropertyi("tu154b2/custom/failures/AOA")
uvid15_fail = globalPropertyi("tu154b2/custom/failures/uvid15_fail")



-- sim fails

rel_ss_alt = globalPropertyi("sim/operation/failures/rel_ss_alt")
rel_cop_alt = globalPropertyi("sim/operation/failures/rel_cop_alt")
rel_ss_tsi = globalPropertyi("sim/operation/failures/rel_ss_tsi")

rel_adc_comp = globalPropertyi("sim/operation/failures/rel_adc_comp")
rel_ss_ahz = globalPropertyi("sim/operation/failures/rel_ss_ahz")
rel_cop_ahz = globalPropertyi("sim/operation/failures/rel_cop_ahz")
rel_stall_warn = globalPropertyi("sim/operation/failures/rel_stall_warn")
rel_ss_vvi = globalPropertyi("sim/operation/failures/rel_ss_vvi")
rel_cop_vvi = globalPropertyi("sim/operation/failures/rel_cop_vvi")
so72_fail = globalPropertyi("tu154b2/custom/failures/so72_fail")

lamp_1 = globalPropertyi("tu154b2/custom/failures/lamp_1")
lamp_2 = globalPropertyi("tu154b2/custom/failures/lamp_2")
lamp_3 = globalPropertyi("tu154b2/custom/failures/lamp_3")
lamp_4 = globalPropertyi("tu154b2/custom/failures/lamp_4")
lamp_5 = globalPropertyi("tu154b2/custom/failures/lamp_5")
lamp_6 = globalPropertyi("tu154b2/custom/failures/lamp_6")
lamp_7 = globalPropertyi("tu154b2/custom/failures/lamp_7")
lamp_8 = globalPropertyi("tu154b2/custom/failures/lamp_8")
lamp_9 = globalPropertyi("tu154b2/custom/failures/lamp_9")
lamp_10 = globalPropertyi("tu154b2/custom/failures/lamp_10")
lamp_11 = globalPropertyi("tu154b2/custom/failures/lamp_11")
lamp_12 = globalPropertyi("tu154b2/custom/failures/lamp_12")
lamp_13 = globalPropertyi("tu154b2/custom/failures/lamp_13")
lamp_14 = globalPropertyi("tu154b2/custom/failures/lamp_14")
lamp_15 = globalPropertyi("tu154b2/custom/failures/lamp_15")
lamp_16 = globalPropertyi("tu154b2/custom/failures/lamp_16")
lamp_17 = globalPropertyi("tu154b2/custom/failures/lamp_17")
lamp_18 = globalPropertyi("tu154b2/custom/failures/lamp_18")
lamp_19 = globalPropertyi("tu154b2/custom/failures/lamp_19")
lamp_20 = globalPropertyi("tu154b2/custom/failures/lamp_20")

--rel_bird_strike = globalPropertyi("sim/operation/failures/rel_bird_strike"))



-- define sources
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time
failures_enabled = globalPropertyi("tu154b2/custom/failures/failures_enabled")

-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control





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
			
			if get(lamp_1) ~= 1 then set(lamp_1, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_2) ~= 1 then set(lamp_2, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_3) ~= 1 then set(lamp_3, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_4) ~= 1 then set(lamp_4, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_5) ~= 1 then set(lamp_5, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_6) ~= 1 then set(lamp_6, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_7) ~= 1 then set(lamp_7, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_8) ~= 1 then set(lamp_8, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_9) ~= 1 then set(lamp_9, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_10) ~= 1 then set(lamp_10, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_11) ~= 1 then set(lamp_11, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_12) ~= 1 then set(lamp_12, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_13) ~= 1 then set(lamp_13, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_14) ~= 1 then set(lamp_14, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_15) ~= 1 then set(lamp_15, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_16) ~= 1 then set(lamp_16, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_17) ~= 1 then set(lamp_17, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_18) ~= 1 then set(lamp_18, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_19) ~= 1 then set(lamp_19, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(lamp_20) ~= 1 then set(lamp_20, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
	
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
		
		 set(lamp_1,0) 
		 set(lamp_2,0) 
		 set(lamp_3,0) 
		 set(lamp_4,0) 
		 set(lamp_5,0) 
		 set(lamp_6,0) 
		 set(lamp_7,0) 
		 set(lamp_8,0) 
		 set(lamp_9,0) 
		 set(lamp_10,0)
		 set(lamp_11,0)
		 set(lamp_12,0)
		 set(lamp_13,0)
		 set(lamp_14,0)
		 set(lamp_15,0)
		 set(lamp_16,0)
		 set(lamp_17,0)
		 set(lamp_18,0)
		 set(lamp_19,0)
		 set(lamp_20,0)
		
	
	end
	
	
	
end

end