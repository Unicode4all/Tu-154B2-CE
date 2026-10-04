-- controls fails


-- failures logic


defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

-- failures
defineProperty("flap_fail_left", globalPropertyi("tu154b2/custom/failures/flap_fail_left")) -- 
defineProperty("flap_fail_right", globalPropertyi("tu154b2/custom/failures/flap_fail_right")) -- 

defineProperty("stab_eng_fail", globalPropertyi("tu154b2/custom/failures/stab_eng_fail")) -- 
defineProperty("stab_automatic_fail", globalPropertyi("tu154b2/custom/failures/stab_automatic_fail")) -- 
defineProperty("slats_fail", globalPropertyi("tu154b2/custom/failures/slats_fail")) -- 

defineProperty("ail_fail_left", globalPropertyi("tu154b2/custom/failures/ail_fail_left")) -- 
defineProperty("ail_fail_right", globalPropertyi("tu154b2/custom/failures/ail_fail_right")) -- 

defineProperty("fail_spoil_inn_left", globalPropertyi("tu154b2/custom/failures/fail_spoil_inn_left")) -- 
defineProperty("fail_spoil_inn_right", globalPropertyi("tu154b2/custom/failures/fail_spoil_inn_right")) -- 
defineProperty("fail_spoil_mid_left", globalPropertyi("tu154b2/custom/failures/fail_spoil_mid_left")) -- 
defineProperty("fail_spoil_mid_right", globalPropertyi("tu154b2/custom/failures/fail_spoil_mid_right")) -- 
defineProperty("fail_spoil_out_left", globalPropertyi("tu154b2/custom/failures/fail_spoil_out_left")) -- 
defineProperty("fail_spoil_out_right", globalPropertyi("tu154b2/custom/failures/fail_spoil_out_right")) -- 

defineProperty("rudder_fail", globalPropertyi("tu154b2/custom/failures/rudder_fail")) -- 
defineProperty("elev_fail_left", globalPropertyi("tu154b2/custom/failures/elev_fail_left")) -- 
defineProperty("elev_fail_right", globalPropertyi("tu154b2/custom/failures/elev_fail_right")) -- 

defineProperty("retract1_fail", globalPropertyi("sim/operation/failures/rel_lagear1")) -- fail of retract gear
defineProperty("retract2_fail", globalPropertyi("sim/operation/failures/rel_lagear2")) -- fail of retract gear
defineProperty("retract3_fail", globalPropertyi("sim/operation/failures/rel_lagear3")) -- fail of retract gear
defineProperty("actuator_fail", globalPropertyi("sim/operation/failures/rel_gear_act")) -- actuator fail. bugs workaround

defineProperty("rel_collapse1", globalPropertyi("sim/operation/failures/rel_collapse1"))
defineProperty("rel_collapse2", globalPropertyi("sim/operation/failures/rel_collapse2"))
defineProperty("rel_collapse3", globalPropertyi("sim/operation/failures/rel_collapse3"))

defineProperty("rel_trim_rud", globalPropertyi("sim/operation/failures/rel_trim_rud")) -- 
defineProperty("rel_trim_ail", globalPropertyi("sim/operation/failures/rel_trim_ail")) -- 
defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv")) -- 
-- defineProperty("ute1_fail", globalPropertyi("tu154b2/custom/failures/ute_1_fail"))
-- defineProperty("ute2_fail", globalPropertyi("tu154b2/custom/failures/ute_2_fail"))
defineProperty("trim_emerg_elv_fail", globalPropertyi("tu154b2/custom/failures/trim_emerg_elv_fail")) --

defineProperty("rel_tire1", globalPropertyi("sim/operation/failures/rel_tire1")) -- Landing gear tire blowout
defineProperty("rel_tire2", globalPropertyi("sim/operation/failures/rel_tire2")) -- Landing gear tire blowout
defineProperty("rel_tire3", globalPropertyi("sim/operation/failures/rel_tire3")) -- Landing gear tire blowout
defineProperty("rel_tire4", globalPropertyi("sim/operation/failures/rel_tire4")) -- Landing gear tire blowout
defineProperty("rel_tire5", globalPropertyi("sim/operation/failures/rel_tire5")) -- Landing gear tire blowout

--[[
sim/operation/failures/rel_tire1	int	y	failure_enum	Landing gear 1 tire blowout
sim/operation/failures/rel_tire2	int	y	failure_enum	Landing gear 2 tire blowout
sim/operation/failures/rel_tire3	int	y	failure_enum	Landing gear 3 tire blowout
sim/operation/failures/rel_tire4	int	y	failure_enum	Landing gear 4 tire blowout
sim/operation/failures/rel_tire5	int	y	failure_enum	Landing gear 5 tire blowout
--]]


-- source
--defineProperty("gear1_deflect", globalPropertyf("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))  -- vertical deflection of front gear
--defineProperty("gear2_deflect", globalPropertyf("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
--defineProperty("gear3_deflect", globalPropertyf("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear

defineProperty("ias", globalPropertyf("sim/flightmodel/position/indicated_airspeed"))  -- IAS

defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too
defineProperty("stab_ratio", globalPropertyf("sim/cockpit2/controls/elevator_trim")) -- sim pitch trimmer

defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

local fail_counter = 0
local check_time = math.random(15, 30)


local stabEng1 = bool2int(get(stab_eng_fail) >= 1)
local stabEng2 = bool2int(get(stab_eng_fail) == 2)

local slat1 = bool2int(get(slats_fail) >= 1)
local slat2 = bool2int(get(slats_fail) == 2)


local flap_lim_tbl = {
{-100, 1000000},
{0, 1000000},
{1, 600},
{15, 420},
{28, 360},
{36, 330},
{45, 300},
{100, 300}}

local slat_counter = 1
local slat_last = get(slats)

local stab_counter = 1
local stab_last = get(stab_ratio)

local gear_last_1 = get(gear1_deploy)
local gear_last_2 = get(gear2_deploy)
local gear_last_3 = get(gear3_deploy)



function update()
	
	local passed = get(frame_time)
	
	
if get(ismaster) ~= 1 then		
	
	
	
	local FAIL = get(failures_enabled)
	
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	
	-- check failures
	if FAIL > 0 then
		
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(flap_fail_left) ~= 1 then set(flap_fail_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(flap_fail_right) ~= 1 then set(flap_fail_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			-- stab engines
			stabEng1 = bool2int(get(stab_eng_fail) >= 1)
			stabEng2 = bool2int(get(stab_eng_fail) == 2)
			
			if stabEng1 ~= 1 then stabEng1 = bool2int(math.random() < 0.00001 * FAIL * 0.3 * stab_counter)
			elseif stabEng2 ~= 1 then stabEng2 = bool2int(math.random() < 0.00001 * FAIL * 0.3 * stab_counter) end
			
			set(stab_eng_fail, stabEng1 + stabEng2)
			--if get(stab_eng_fail) ~= 1 then set(stab_eng_fail, bool2int(math.random() < 0.00001) * 1) end
			
			if get(stab_automatic_fail) ~= 1 then set(stab_automatic_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			-- slats
			slat1 = bool2int(get(slats_fail) >= 1)
			slat2 = bool2int(get(slats_fail) == 2)
			
			if slat1 ~= 1 then slat1 = bool2int(math.random() < 0.00001 * FAIL * 0.3 * slat_counter)
			elseif slat2 ~= 1 then slat2 = bool2int(math.random() < 0.00001 * FAIL * 0.3 * slat_counter) end
			
			set(slats_fail, slat1 + slat2)
			--if get(slats_fail) ~= 1 then set(slats_fail, bool2int(math.random() < 0.00001) * 1) end
			
			if get(ail_fail_left) ~= 1 then set(ail_fail_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(ail_fail_right) ~= 1 then set(ail_fail_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(fail_spoil_inn_left) ~= 1 then set(fail_spoil_inn_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fail_spoil_inn_right) ~= 1 then set(fail_spoil_inn_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fail_spoil_mid_left) ~= 1 then set(fail_spoil_mid_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fail_spoil_mid_right) ~= 1 then set(fail_spoil_mid_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fail_spoil_out_left) ~= 1 then set(fail_spoil_out_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(fail_spoil_out_right) ~= 1 then set(fail_spoil_out_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(rudder_fail) ~= 1 then set(rudder_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(elev_fail_left) ~= 1 then set(elev_fail_left, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			if get(elev_fail_right) ~= 1 then set(elev_fail_right, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			if get(retract1_fail) ~= 6 then set(retract1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(retract2_fail) ~= 6 then set(retract2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(retract3_fail) ~= 6 then set(retract3_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(actuator_fail) ~= 6 then set(actuator_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			--if get(rel_collapse1) ~= 1 then set(rel_collapse1, bool2int(math.random() < 0.00001) * 1) end
			--if get(rel_collapse2) ~= 1 then set(rel_collapse2, bool2int(math.random() < 0.00001) * 1) end
			--if get(rel_collapse3) ~= 1 then set(rel_collapse3, bool2int(math.random() < 0.00001) * 1) end
			
			if get(rel_trim_rud) ~= 6 then set(rel_trim_rud, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_trim_ail) ~= 6 then set(rel_trim_ail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			--if get(rel_trim_elv) ~= 6 then set(rel_trim_elv, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if absu_svk_tbl.ute1_fail ~= 1 then absu_svk_tbl.ute1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) end
			if absu_svk_tbl.ute2_fail ~= 1 then absu_svk_tbl.ute2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) end
			
			if get(trim_emerg_elv_fail) ~= 1 then set(trim_emerg_elv_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
			
			
		
		end
		
		-- dependent failures
		local airspeed = get(ias) * 1.852
		
		-- flaps
		if airspeed > interpolate(flap_lim_tbl, get(flap_inn_L)) + (3 - FAIL) * 20 and get(flap_fail_left) ~= 1 then set(flap_fail_left, bool2int(math.random() < 0.1 * FAIL * 0.3) * 1) end 
		if airspeed > interpolate(flap_lim_tbl, get(flap_inn_R)) + (3 - FAIL) * 20 and get(flap_fail_right) ~= 1 then set(flap_fail_right, bool2int(math.random() < 0.1 * FAIL * 0.3) * 1) end 
		-- slats
		if airspeed > 430 + (3 - FAIL) * 20 and get(slats) > 0.5 and slat1 ~= 1 then slat1 = bool2int(math.random() < 0.1 * FAIL * 0.3) end  
		if airspeed > 430 + (3 - FAIL) * 20 and get(slats) > 0.5 and slat2 ~= 1 then slat2 = bool2int(math.random() < 0.1 * FAIL * 0.3) end 
		
		slat_counter = slat_counter + (bool2int(slat_last ~= get(slats)) * FAIL * 0.5 - 0.7) * passed * 0.2
		slat_last = get(slats)
		
		if slat_counter < 1 then slat_counter = 1 end
		
		-- stab
		stab_counter = stab_counter + (bool2int(stab_last ~= get(stab_ratio)) * FAIL * 0.5 - 0.7) * passed * 0.2
		stab_last = get(stab_ratio)
		
		if stab_counter < 1 then stab_counter = 1 end
		
		-- gears
		if airspeed > 450 + (3 - FAIL) * 20 and get(gear1_deploy) < gear_last_1 and get(retract1_fail) ~= 6 then set(retract1_fail, bool2int(math.random() < 0.1 * FAIL * 0.3) * 6) end
		if airspeed > 460 + (3 - FAIL) * 20 and get(gear2_deploy) < gear_last_2 and get(retract2_fail) ~= 6 then set(retract2_fail, bool2int(math.random() < 0.1 * FAIL * 0.3) * 6) end
		if airspeed > 460 + (3 - FAIL) * 20 and get(gear3_deploy) < gear_last_3 and get(retract3_fail) ~= 6 then set(retract3_fail, bool2int(math.random() < 0.1 * FAIL * 0.3) * 6) end
		
		gear_last_1 = get(gear1_deploy)
		gear_last_2 = get(gear2_deploy)
		gear_last_3 = get(gear3_deploy)
		
		
		--if get(gear1_deflect) > 0.7 then set(rel_collapse1, 6) end
		--if get(gear2_deflect) > 0.6 then set(rel_collapse2, 6) end
		--if get(gear3_deflect) > 0.6 then set(rel_collapse3, 6) end
		
	
	
	else
		-- no failures enabled
		fail_counter = 0
		
		set(flap_fail_left, 0)
		set(flap_fail_right, 0)
		
		set(stab_eng_fail, 0)
		set(stab_automatic_fail, 0)
		set(slats_fail, 0)
		slat_counter = 1
		stab_counter = 1
		
		set(ail_fail_left, 0)
		set(ail_fail_right, 0)
		
		set(fail_spoil_inn_left, 0)
		set(fail_spoil_inn_right, 0)
		set(fail_spoil_mid_left, 0)
		set(fail_spoil_mid_right, 0)
		set(fail_spoil_out_left, 0)
		set(fail_spoil_out_right, 0)
		
		set(rudder_fail, 0)
		set(elev_fail_left, 0)
		set(elev_fail_right, 0)
		
		set(retract1_fail, 0)
		set(retract2_fail, 0)
		set(retract3_fail, 0)
		set(actuator_fail, 0)
		
		set(rel_collapse1, 0)
		set(rel_collapse2, 0)
		set(rel_collapse3, 0)
		
		set(rel_trim_rud, 0)
		set(rel_trim_ail, 0)
		absu_svk_tbl.ute1_fail = 0
		absu_svk_tbl.ute2_fail = 0
		set(trim_emerg_elv_fail, 0)
	
	end
	-- if absu_svk_tbl.ute1_fail+absu_svk_tbl.ute2_fail>1 then
		-- set(rel_trim_elv,6)
	-- else
		-- set(rel_trim_elv,0)
	-- end

end

	set(rel_tire1, 0)
	set(rel_tire2, 0)
	set(rel_tire3, 0)
	set(rel_tire4, 0)
	set(rel_tire5, 0)

end