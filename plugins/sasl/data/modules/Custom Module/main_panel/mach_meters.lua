-- this is mach meters logic

-- source
p_s = globalPropertyf("tu154b2/custom/svs/p_s_smoothed")
p_q = globalPropertyf("tu154b2/custom/svs/p_q_smoothed")

defineProperty("mach_svs", globalPropertyf("tu154b2/custom/svs/machno")) -- Mach number
ppd_ice = globalPropertyf("sim/flightmodel/failures/pitot_ice2")
stat_ice = globalPropertyf("sim/flightmodel/failures/stat_ice2") 

rel_stat = globalPropertyi("sim/operation/failures/rel_static2") -- static- Blockage
rel_pitot2 = globalPropertyi("sim/operation/failures/rel_pitot2") -- Pitot 2 - Blockage

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- results
defineProperty("mach_ind_left", globalPropertyf("tu154b2/custom/gauges/speed/mach_left")) -- скорость маха КВС
defineProperty("mach_ind_right", globalPropertyf("tu154b2/custom/gauges/speed/mach_right")) -- скорость маха 2П
defineProperty("sensors_caps", globalPropertyi("tu154b2/custom/anim/sensors_caps"))  -- чехлы и крышки
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

--defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))

local mach_ind_L = 0
local mach_ind_R = 0

local mach_L_act = 0
local mach_R_act = 0
local mach_sim = 0
local T_m=3
local p_stat=get(p_s)
local p_d=get(p_q)

function update()

	local passed = get(frame_time)
	
	-----------------
	mach_ind_L = get(mach_svs)
	
	if mach_ind_L > 0.89 then mach_ind_L = 0.89
	elseif mach_ind_L < 0 then mach_ind_L = 0 end
	
	mach_L_act = mach_L_act + (mach_ind_L - mach_L_act) * passed * 10
	
	local caps = get(sensors_caps) >0
	if get(rel_pitot2) < 6 and not caps then
		p_d=get(p_q)*(1-get(ppd_ice))
	end
	if get(stat_ice)<0.5 and get(rel_stat)~=6 and not caps then
		p_stat=get(p_s)
	end
	if p_stat>1000 and p_d>p_stat then
		mach_ind_R=(-0.1367*(p_d-p_stat)/p_stat+1.179)*math.sqrt((p_d-p_stat)/p_stat)
	end

	if mach_ind_R > 1.03 then mach_ind_R = 1.03 
	elseif mach_ind_R < 0 then mach_ind_R = 0 end

	mach_R_act = mach_R_act + (mach_ind_R - mach_R_act) * passed * 10
	local MASTER = get(ismaster) ~= 1	
	if MASTER then 
		set(mach_ind_left, mach_L_act)
		set(mach_ind_right, mach_R_act)
	end



end