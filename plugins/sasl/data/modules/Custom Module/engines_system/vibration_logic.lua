-- this is vibration logic for engines

-- sources
-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


defineProperty("eng1_fail", globalPropertyf("sim/operation/failures/rel_engfai0")) -- engine fail
defineProperty("eng2_fail", globalPropertyf("sim/operation/failures/rel_engfai1"))
defineProperty("eng3_fail", globalPropertyf("sim/operation/failures/rel_engfai2"))

defineProperty("eng1_fire", globalPropertyf("sim/operation/failures/rel_engfir0")) -- engine fire
defineProperty("eng2_fire", globalPropertyf("sim/operation/failures/rel_engfir1"))
defineProperty("eng3_fire", globalPropertyf("sim/operation/failures/rel_engfir2"))

defineProperty("eng1_oil_p", globalProperty("sim/flightmodel/engine/ENGN_oil_press_psi[0]"))  -- oil pressure
defineProperty("eng2_oil_p", globalProperty("sim/flightmodel/engine/ENGN_oil_press_psi[1]"))
defineProperty("eng3_oil_p", globalProperty("sim/flightmodel/engine/ENGN_oil_press_psi[2]"))

defineProperty("chip_detect1", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[0]")) -- chip in engine
defineProperty("chip_detect2", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[1]")) -- chip in engine
defineProperty("chip_detect3", globalProperty("sim/cockpit/warnings/annunciators/chip_detected[2]")) -- chip in engine

defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]")) -- engine rpm in % of N2  
defineProperty("eng_rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng_rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("comsta0", globalPropertyi("sim/operation/failures/rel_comsta0")) -- compressor stall
defineProperty("comsta1", globalPropertyi("sim/operation/failures/rel_comsta1"))
defineProperty("comsta2", globalPropertyi("sim/operation/failures/rel_comsta2"))

defineProperty("sim_rud_1", globalProperty("sim/flightmodel/engine/ENGN_thro_use[0]"))
defineProperty("sim_rud_2", globalProperty("sim/flightmodel/engine/ENGN_thro_use[1]"))
defineProperty("sim_rud_3", globalProperty("sim/flightmodel/engine/ENGN_thro_use[2]"))

-- resilts
defineProperty("vibration_1", globalPropertyf("tu154b2/custom/eng/vibration_1")) -- вибрация двигателя
defineProperty("vibration_2", globalPropertyf("tu154b2/custom/eng/vibration_2")) -- вибрация двигателя
defineProperty("vibration_3", globalPropertyf("tu154b2/custom/eng/vibration_3")) -- вибрация двигателя

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local vibr_RPM_tbl = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 
				  {  30, 15 }, --
           	      {  70, 18 }, -- 
				  {  100, 25 },    -- 
				  {  110, 45 },    -- 
          	      {  1000000, 100 }}    -- bugs walkaround	

local fire_counter1 = 0
local fire_counter2 = 0
local fire_counter3 = 0

local chip_counter1 = 0
local chip_counter2 = 0
local chip_counter3 = 0

local oil_counter1 = 0
local oil_counter2 = 0
local oil_counter3 = 0

local stall_counter1 = 0
local stall_counter2 = 0
local stall_counter3 = 0

local stall_next_1 = 1
local stall_next_2 = 1
local stall_next_3 = 1

local stall_set_1 = false
local stall_set_2 = false
local stall_set_3 = false

local stall_vibr_1 = 0
local stall_vibr_2 = 0
local stall_vibr_3 = 0
function update()
	local passed = get(frame_time)
	
	
	local vibro1 = 0
	local vibro2 = 0
	local vibro3 = 0
	
	local rpm1 = get(eng_rpm1)
	local rpm2 = get(eng_rpm2)
	local rpm3 = get(eng_rpm3)
	
	local rud1 = get(sim_rud_1)
	local rud2 = get(sim_rud_2)
	local rud3 = get(sim_rud_3)

	local fail1 = 0
	local fail2 = 0
	local fail3 = 0
	if get(eng1_fail) == 6 then fail1 = 1 end
	if get(eng2_fail) == 6 then fail2 = 1 end
	if get(eng3_fail) == 6 then fail3 = 1 end
	
	-- calculate vibration --
	
	-- RPM to vibration
	vibro1 = interpolate(vibr_RPM_tbl, rpm1)
	vibro2 = interpolate(vibr_RPM_tbl, rpm2)
	vibro3 = interpolate(vibr_RPM_tbl, rpm3)
	
	-- vibration for failed engines
	vibro1 = vibro1 + fail1 * rpm1 / 5
	vibro2 = vibro2 + fail2 * rpm2 / 5
	vibro3 = vibro3 + fail3 * rpm3 / 5
	
	-- vibration may slowly increase on engine fire
	if get(eng1_fire) == 6 and fire_counter1 <= 100 then fire_counter1 = fire_counter1 + passed * 0.8 * rpm1 * (rud1 + 0.5) / 100 
	elseif get(eng1_fire) < 6 and fire_counter1 >= 0 then fire_counter1 = fire_counter1 - passed * 2 end
	if get(eng2_fire) == 6 and fire_counter2 <= 100 then fire_counter2 = fire_counter2 + passed * 0.8 * rpm2 * (rud2 + 0.5) / 100 
	elseif get(eng2_fire) < 6 and fire_counter2 >= 0 then fire_counter2 = fire_counter2 - passed * 2 end
	if get(eng3_fire) == 6 and fire_counter3 <= 100 then fire_counter3 = fire_counter3 + passed * 0.8 * rpm3 * (rud3 + 0.5) / 100
	elseif get(eng3_fire) < 6 and fire_counter3 >= 0 then fire_counter3 = fire_counter3 - passed * 2 end
	
	-- vibration may increase if engine destroying
	if get(chip_detect1) == 1 and chip_counter1 <= 100 then chip_counter1 = chip_counter1 + 1 * passed * rpm1 * (rud1 + 0.5) / 100 end
	if get(chip_detect2) == 1 and chip_counter2 <= 100 then	chip_counter2 = chip_counter2 + 1 * passed * rpm2 * (rud2 + 0.5) / 100 end
	if get(chip_detect3) == 1 and chip_counter3 <= 100 then chip_counter3 = chip_counter3 + 1 * passed * rpm3 * (rud3 + 0.5) / 100 end	
	
	-- vibration may increase if oil pressure is low and then engine may heat and destroy
	if get(eng1_oil_p) < 10 and oil_counter1 <= 100 and rpm1 > 30 then oil_counter1 = oil_counter1 + passed * 1.5 * rpm1 * rud1 / 100
	elseif get(eng1_oil_p) >= 10 and oil_counter1 >= 0 then oil_counter1 = oil_counter1 - passed * 4 end
	if get(eng2_oil_p) < 10 and oil_counter2 <= 100 and rpm2 > 30 then oil_counter2 = oil_counter2 + passed * 1.5 * rpm2 * rud2 / 100
	elseif get(eng2_oil_p) >= 10 and oil_counter2 >= 0 then oil_counter2 = oil_counter2 - passed * 4 end
	if get(eng3_oil_p) < 10 and oil_counter3 <= 100 and rpm3 > 30 then oil_counter3 = oil_counter3 + passed * 1.5 * rpm3 * rud3 / 100
	elseif get(eng3_oil_p) >= 10 and oil_counter3 >= 0 then oil_counter3 = oil_counter3 - passed * 4 end
	
	-- vibration may increase if engine stall

	
	stall_counter1 = stall_counter1 + passed
	stall_counter2 = stall_counter2 + passed
	stall_counter3 = stall_counter3 + passed
	
	if get(comsta0) == 6 and stall_counter1 > stall_next_1 and rpm1 > 10 then
		if not stall_set_1 then 
			stall_vibr_1 = math.random() * 70
			stall_set_1 = true
		end
		if stall_counter1 > stall_next_1 + 0.3 then 
			stall_counter1 = 0 
			stall_next_1 = math.random() * 1
			stall_set_1 = false
		end
	elseif get(comsta0) == 6 and stall_counter1 <= stall_next_1 then
		stall_vibr_1 = 0
	elseif get(comsta0) < 6 then 
		stall_vibr_1 = 0 
		stall_counter1 = 0
		stall_set_1 = false
	end

	if get(comsta1) == 6 and stall_counter2 > stall_next_2 and rpm2 > 10 then
		if not stall_set_2 then 
			stall_vibr_2 = math.random() * 70
			stall_set_2 = true
		end
		if stall_counter2 > stall_next_2 + 0.3 then 
			stall_counter2 = 0 
			stall_next_2 = math.random() * 1
			stall_set_2 = false
		end
	elseif get(comsta1) == 6 and stall_counter2 <= stall_next_2 then
		stall_vibr_2 = 0
	elseif get(comsta1) < 6 then 
		stall_vibr_2 = 0 
		stall_counter2 = 0
		stall_set_2 = false
	end

	if get(comsta2) == 6 and stall_counter3 > stall_next_3 and rpm3 > 10 then
		if not stall_set_3 then 
			stall_vibr_3 = math.random() * 70
			stall_set_3 = true
		end
		if stall_counter3 > stall_next_3 + 0.3 then 
			stall_counter3 = 0 
			stall_next_3 = math.random() * 1
			stall_set_3 = false
		end
	elseif get(comsta2) == 6 and stall_counter3 <= stall_next_3 then
		stall_vibr_3 = 0
	elseif get(comsta2) < 6 then 
		stall_vibr_3 = 0 
		stall_counter3 = 0
		stall_set_3 = false
	end
	
	-- result vibration and engine faulre
	vibro1 = vibro1 + (fire_counter1 + chip_counter1 + oil_counter1  + stall_vibr_1) * rpm1 / 100
	if vibro1 > 100 then vibro1 = 100 end
	--if vibro1 > 70 then set(chip_detect1, 1) end -- not working. may set a custom failue here
	if vibro1 > 90 then set(eng1_fail, 6) end
	
	vibro2 = vibro2 + (fire_counter2 + chip_counter2 + oil_counter2 + stall_vibr_2) * rpm2 / 100
	if vibro2 > 100 then vibro2 = 100 end	
	--if vibro2 > 70 then set(chip_detect2, 1) end
	if vibro2 > 90 then set(eng2_fail, 6) end

	vibro3 = vibro3 + (fire_counter3 + chip_counter3 + oil_counter3 + stall_vibr_3) * rpm3 / 100
	if vibro3 > 100 then vibro3 = 100 end	
	--if vibro3 > 70 then set(chip_detect3, 1) end
	if vibro3 > 90 then set(eng3_fail, 6) end	

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	-- set results
	set(vibration_1, vibro1)
	set(vibration_2, vibro2)
	set(vibration_3, vibro3)
end

end

