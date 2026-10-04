
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- time of frame

absu_power_27 = globalPropertyi("tu154b2/custom/absu_power_27")
absu_power = globalPropertyi("tu154b2/custom/absu_power_cc")
eng1_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
--absu_damp_pitch_fail = globalPropertyi("tu154b2/custom/failures/absu_damp_pitch_fail")
roll_rate = globalPropertyf("sim/flightmodel/position/P") -- deg/sec	The roll rotation rates (relative to the flight)
pitch_rate = globalPropertyf("sim/flightmodel/position/Q") -- deg/sec	The pitch rotation rates (relative to the flight)
yaw_rate = globalPropertyf("sim/flightmodel/position/R") -- deg/sec	The yaw rotation rates (relative to the flight)
bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_left")
-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1")
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2")
-- db3 = globalPropertyf("tu154b2/custom/controlls/debug3")
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master


absu_svk_tbl.bdg_tet_rate_1 = 0
absu_svk_tbl.bdg_tet_rate_2 = 0
absu_svk_tbl.bdg_tet_rate_3 = 0
absu_svk_tbl.bdg_gam_rate_1 = 0
absu_svk_tbl.bdg_gam_rate_2 = 0
absu_svk_tbl.bdg_gam_rate_3 = 0
absu_svk_tbl.bdg_psi_rate_1 = 0
absu_svk_tbl.bdg_psi_rate_2 = 0
absu_svk_tbl.bdg_psi_rate_3 = 0

absu_svk_tbl.bkvg_tet_fail = 0
absu_svk_tbl.bkvg_gam_fail = 0
absu_svk_tbl.bkvg_psi_fail = 0


local bdg_tbl = {
{-1, 0},
{0, 0},
{0.5, 0.8},
{0.95, 1}, 
{2, 1}}

function bdg_26(pwr,fail,ang,spd_prev,passed)
	local spd = spd_prev
	if pwr > 0 and fail == 0 then
		spd = spd_prev + pwr * passed / 50  -- gyro speed, spinning up or down depending on power
		if spd_prev > 0.95 then
			spd = spd_prev + (1 - spd_prev) * passed 
		end
	else
		spd = spd_prev - spd_prev * passed / 200
	end
	local w = interpolate(bdg_tbl, spd) * ang
	if w>6 then
		w = 6
	elseif w <-6 then
		w = -6
	end
	return spd,w
end

function bkvg_otkaz(chan_1,chan_2,chan_3,pwr1,pwr2,pwr3,thres)
	local bkvg_fail = bool2int(pwr1+pwr2+pwr3 < 3)
	if math.abs(chan_1-chan_2)>thres or math.abs(chan_1-chan_3)>thres or math.abs(chan_2-chan_3)>thres then
		bkvg_fail = 1
	end
	return bkvg_fail
end

local init_timer = 0
local spd_tet_1_prev = 0
local spd_tet_2_prev = 0
local spd_tet_3_prev = 0
local spd_gam_1_prev = 0
local spd_gam_2_prev = 0
local spd_gam_3_prev = 0
local spd_psi_1_prev = 0
local spd_psi_2_prev = 0
local spd_psi_3_prev = 0

function update()
	local MASTER = get(ismaster) ~= 1
	local passed = get(frame_time)
	if init_timer < 3 then
		init_timer = init_timer + passed
		if init_timer >= 3 and get(eng1_N1) > 20 then
			spd_tet_1_prev = 1
			spd_tet_2_prev = 1
			spd_tet_3_prev = 1
			spd_gam_1_prev = 1
			spd_gam_2_prev = 1
			spd_gam_3_prev = 1
			spd_psi_1_prev = 1
			spd_psi_2_prev = 1
			spd_psi_3_prev = 1
		end
	end
	if MASTER then
		local power = bool2int(get(absu_power) > 0 and get(bus36_volt) > 30)
		local tet_rate = get(pitch_rate)
		local gam_rate = get(roll_rate)
		local psi_rate = get(yaw_rate)
		
		local spd_tet_1, w_tet_1 = bdg_26(power*1.02,absu_svk_tbl.bdg_tet_1_drive_fail,tet_rate,spd_tet_1_prev,passed)
		local spd_tet_2, w_tet_2 = bdg_26(power*0.97,absu_svk_tbl.bdg_tet_2_drive_fail,tet_rate,spd_tet_2_prev,passed)
		local spd_tet_3, w_tet_3 = bdg_26(power*1.05,absu_svk_tbl.bdg_tet_3_drive_fail,tet_rate,spd_tet_3_prev,passed)
		absu_svk_tbl.bdg_tet_rate_1 = w_tet_1
		absu_svk_tbl.bdg_tet_rate_2 = w_tet_2
		absu_svk_tbl.bdg_tet_rate_3 = w_tet_3
		spd_tet_1_prev = spd_tet_1
		spd_tet_2_prev = spd_tet_2
		spd_tet_3_prev = spd_tet_3
		
		absu_svk_tbl.bkvg_tet_fail = bkvg_otkaz(spd_tet_1,spd_tet_2,spd_tet_3,power * bool2int(absu_svk_tbl.bdg_tet_1_drive_fail == 0),power * bool2int(absu_svk_tbl.bdg_tet_2_drive_fail == 0),power * bool2int(absu_svk_tbl.bdg_tet_3_drive_fail == 0),0.03)
		
		local spd_gam_1, w_gam_1 = bdg_26(power*1.02,absu_svk_tbl.bdg_gam_1_drive_fail,gam_rate,spd_gam_1_prev,passed)
		local spd_gam_2, w_gam_2 = bdg_26(power*1.1,absu_svk_tbl.bdg_gam_2_drive_fail,gam_rate,spd_gam_2_prev,passed)
		local spd_gam_3, w_gam_3 = bdg_26(power*1.05,absu_svk_tbl.bdg_gam_3_drive_fail,gam_rate,spd_gam_3_prev,passed)
		absu_svk_tbl.bdg_gam_rate_1 = w_gam_1
		absu_svk_tbl.bdg_gam_rate_2 = w_gam_2
		absu_svk_tbl.bdg_gam_rate_3 = w_gam_3
		spd_gam_1_prev = spd_gam_1
		spd_gam_2_prev = spd_gam_2
		spd_gam_3_prev = spd_gam_3
		
		absu_svk_tbl.bkvg_gam_fail = bkvg_otkaz(spd_gam_1,spd_gam_2,spd_gam_3,power * bool2int(absu_svk_tbl.bdg_gam_1_drive_fail == 0),power * bool2int(absu_svk_tbl.bdg_gam_2_drive_fail == 0),power * bool2int(absu_svk_tbl.bdg_gam_3_drive_fail == 0),0.03)
		
		local spd_psi_1, w_psi_1 = bdg_26(power*1.02,absu_svk_tbl.bdg_psi_1_drive_fail,psi_rate,spd_psi_1_prev,passed)
		local spd_psi_2, w_psi_2 = bdg_26(power*0.99,absu_svk_tbl.bdg_psi_2_drive_fail,psi_rate,spd_psi_2_prev,passed)
		local spd_psi_3, w_psi_3 = bdg_26(power*1.02,absu_svk_tbl.bdg_psi_3_drive_fail,psi_rate,spd_psi_3_prev,passed)
		absu_svk_tbl.bdg_psi_rate_1 = w_psi_1
		absu_svk_tbl.bdg_psi_rate_2 = w_psi_2
		absu_svk_tbl.bdg_psi_rate_3 = w_psi_3
		spd_psi_1_prev = spd_psi_1
		spd_psi_2_prev = spd_psi_2
		spd_psi_3_prev = spd_psi_3
		
		absu_svk_tbl.bkvg_psi_fail = bkvg_otkaz(spd_psi_1,spd_psi_2,spd_psi_3,power * bool2int(absu_svk_tbl.bdg_psi_1_drive_fail == 0),power * bool2int(absu_svk_tbl.bdg_psi_2_drive_fail == 0),power * bool2int(absu_svk_tbl.bdg_psi_3_drive_fail == 0),0.03)
	end
end