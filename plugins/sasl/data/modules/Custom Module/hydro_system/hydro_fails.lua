-- hydro fails


-- failures
hs_leak_1 = globalPropertyi("tu154b2/custom/failures/hydro_leak_1") -- leak
hs_leak_2 = globalPropertyi("tu154b2/custom/failures/hydro_leak_2") -- leak
hs_leak_3 = globalPropertyi("tu154b2/custom/failures/hydro_leak_3") -- leak
hs_leak_4 = globalPropertyi("tu154b2/custom/failures/hydro_leak_4") -- leak

hydro_pump_fail_11 = globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_11") -- fail
hydro_pump_fail_12 = globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_12") -- fail
hydro_pump_fail_2 = globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_2") -- fail
hydro_pump_fail_3 = globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_3") -- fail

hydro_elec_fail_2 = globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_2") -- fail
hydro_elec_fail_3 = globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_3") -- fail

system_qty_1 = globalPropertyf("tu154b2/custom/hydro/gs_qty_1") -- остаток масла в системе
system_qty_2 = globalPropertyf("tu154b2/custom/hydro/gs_qty_2") -- остаток масла в системе
system_qty_3 = globalPropertyf("tu154b2/custom/hydro/gs_qty_3") -- остаток масла в системе

eng_fire_1 = globalPropertyi("sim/operation/failures/rel_engfir0")
eng_fire_2 = globalPropertyi("sim/operation/failures/rel_engfir1")
eng_fire_3 = globalPropertyi("sim/operation/failures/rel_engfir2")


-- define sources
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time
failures_enabled = globalPropertyi("tu154b2/custom/failures/failures_enabled")

-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))



local fail_counter = 0
local check_time = math.random(15, 30)
local starter_desint_1 = 0
local starter_desint_2 = 0
local starter_desint_3 = 0


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
			if sys_data_tbl.eng_fire_timer_1> 120 then
				local randnum_1 = math.random(2000) 
				if randnum_1 == 1 then
					set(hs_leak_1, 1)
				end
			end
			if sys_data_tbl.eng_fire_timer_2> 120 then
				local randnum_2 = math.random(2000) 
				if randnum_2 == 1 then
					set(hs_leak_1, 1)
				end
			end
			if sys_data_tbl.eng_fire_timer_2> 120 then
				local randnum_3 = math.random(2000) 
				if randnum_3 == 1 then
					set(hs_leak_2, 1)
				end
			end
			if sys_data_tbl.eng_fire_timer_3> 120 then
				local randnum_4 = math.random(2000) 
				if randnum_4 == 1 then
					set(hs_leak_3, 1)
				end
			end
			-- starter rotor desintegrates, sends metal flyng through the rear compartments, possibly hitting hydraulic lines
			if sys_data_tbl.starter_desint_1 > 0 and starter_desint_1 == 0 then
				if math.random() > 0.5  then
					set(hs_leak_1, 1)
				end
				starter_desint_1 = 1
			end	
			if sys_data_tbl.starter_desint_2 > 0 and starter_desint_2 == 0 then
				if math.random() > 0.5  then
					set(hs_leak_1, 1)
				end
				if math.random() > 0.5  then
					set(hs_leak_2, 1)
				end
				starter_desint_2 = 1
			end	
			if sys_data_tbl.starter_desint_3 > 0 and starter_desint_3 == 0 then
				if math.random() > 0.5  then
					set(hs_leak_3, 1)
				end
				starter_desint_3 = 1
			end	
			
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
