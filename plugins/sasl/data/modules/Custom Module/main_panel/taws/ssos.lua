bus115_1_volt = globalPropertyf("tu154b2/custom/elec/bus115_1_volt")
bus36_volt_left = globalPropertyf("tu154b2/custom/elec/bus36_volt_left")
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
press_alt = globalPropertyf("sim/flightmodel2/position/pressure_altitude")
static_fail_R = globalPropertyi("sim/operation/failures/rel_static2")
g_force = globalPropertyf("sim/flightmodel/forces/g_nrml")
frame_time = globalPropertyf("tu154b2/custom/time/frame_time")
rv5_alt = globalPropertyf("tu154b2/custom/misc/rv5_alt_left")
rv_flag = globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_left")
alpha_critical = globalPropertyi("tu154b2/custom/auasp/alpha_critical")
gear1_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[0]")
gear2_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[1]")
gear3_deploy = globalProperty("sim/aircraft/parts/acf_gear_deploy[2]")
rv_on = globalPropertyi("tu154b2/custom/switchers/ovhd/rv5_1_on")

S1_fail = globalPropertyi("tu154b2/custom/failures/ssos_S1")
S2_fail = globalPropertyi("tu154b2/custom/failures/ssos_S2")
S3_fail = globalPropertyi("tu154b2/custom/failures/ssos_S3")

rdy_lamp = globalPropertyi("sim/custom/ssos_test_lit")
test_1 = globalPropertyi("sim/custom/ssos_test_btn1")
test_2 = globalPropertyi("sim/custom/ssos_test_btn2")
test_3 = globalPropertyi("sim/custom/ssos_test_btn3")
taws = globalPropertyi("tu154b2/custom/anim/show_taws")
cpt_t = globalPropertyf("tu154b2/custom/bleed/cockpit_temp")
alarm = globalPropertyf("sim/custom/ssos_alarm")
ismaster = globalPropertyf("scp/api/ismaster")
-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1")
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2")
-- db3 = globalPropertyf("tu154b2/custom/controlls/debug3")
-- db4 = globalPropertyf("tu154b2/custom/controlls/debug4")

local alt = get(press_alt)
local alt_prev = alt
local rv_alt = get(rv5_alt)
local rv_alt_prev = rv_alt
local S1 = 0
local S2 = 0
local S3 = 0
local power_tmr = 0
local test_1_tmr = 0
local test_2_tmr = 0
local test_3_tmr = 0
local vert_lp = 0
local T_lp = 1

function update()
	local passed = get(frame_time)
	local MASTER = get(ismaster) ~= 1
	if get(static_fail_R) ~= 6 then
		alt = get(press_alt)
	end
	local radalt_flag = get(rv_flag)
	if radalt_flag == 0 then
		rv_alt = get(rv5_alt)
	end
	local vert = 0
	local rv_vert = 0
	-- vertical speed
	if passed ~= 0 then
		vert = (alt - alt_prev) / passed * 0.3048
		rv_vert = (rv_alt - rv_alt_prev) / passed
	end
	vert_lp = passed/(T_lp+passed)*vert+vert_lp*T_lp/(T_lp+passed)
	alt_prev = alt
	rv_alt_prev = rv_alt
	-- g
	local g = get(g_force)
	-- gears
	local gears = get(gear1_deploy) > 0.95 and get(gear2_deploy) > 0.95 and get(gear3_deploy) > 0.95
	local radalt=get(rv5_alt)
	-- vs limits
	local level_lim = line(radalt, 50, 5, 400, 25)
	local desc_lim = line(radalt, 50, 7.5, 500, 15)
	--- working conditions ---
	local block = true
	local power = get(rv_on) == 1 and get(bus27_volt_left) > 22 and get(bus36_volt_left) > 33 and get(bus115_1_volt) > 100
	if power then
		if power_tmr < 1 then
			power_tmr = power_tmr + passed / (140 - get(cpt_t))
		end
	else
		if power_tmr > 0 then
			power_tmr = power_tmr - passed / (140 - get(cpt_t)) / 2
		end
	end
	if power_tmr >= 1 and get(alpha_critical) == 0 and get(taws) == 0 then
		block = false
	end
	--- test ---
	if get(test_1) > 0 then
		if test_1_tmr < 1 then
			test_1_tmr = test_1_tmr + passed/(2+5*math.random())
		end
	else
		test_1_tmr = 0
	end
	
	if get(test_2) > 0 then
		if test_2_tmr < 1 then
			test_2_tmr = test_2_tmr + passed/(2+5*math.random())
		end
	else
		test_2_tmr = 0
	end
	
	if get(test_3) > 0 then
		if test_3_tmr < 1 then
			test_3_tmr = test_3_tmr + passed/(2+5*math.random())
		end
	else
		test_3_tmr = 0
	end
	--- S1 ---
	local fail_1 = get(S1_fail)
	local fail_2 = get(S2_fail)
	local fail_3 = get(S3_fail)
	if ((radalt < 250 and radalt > 50 and vert_lp <= -1.5 and not gears) or test_1_tmr >= 1) and fail_1 == 0 and not block then
		if S1 < 1 then
			S1 = S1 + passed
		end
	else
		if S1 > 0 then
			S1 = S1 - passed
		end
	end
	--- S2 ---
	if ((radalt < 600 and radalt > 50 and vert_lp <= -desc_lim) or test_2_tmr >= 1) and fail_2 == 0 and not block then
		if S2 < 1 then
			S2 = S2 + passed
		end
	else
		if S2 > 0 then
			S2 = S2 - passed
		end
	end
	
	if ((radalt < 400 and radalt > 50 and rv_vert <= -level_lim) or (radalt < 250 and not gears and rv_vert < 0) or test_3_tmr >= 1) and fail_3 == 0 and not block then
		if S3 < 1 then
			S3 = S3 + passed
		end
	else
		if S3 > 0 then
			S3 = S3 - passed
		end
	end
	--- work lamp and alarm ---
	if MASTER then
		local work = bool2int(power_tmr >= 1 and fail_1 + fail_2 + fail_3 == 0 and radalt_flag == 0 and get(taws) == 0)
		local lamps_brt = math.max((get(bus27_volt_left)  - 10) / 18.5, 0)
		set(rdy_lamp, work * lamps_brt)
		local signal = bool2int(S1 >= 1 or S2 >= 1 or S3 >= 1)
		set(alarm,signal)
	end
	-- set(db1,vert_lp)
	-- set(db2,rv_vert)
	-- set(db3,desc_lim)
	-- set(db4,level_lim)
end