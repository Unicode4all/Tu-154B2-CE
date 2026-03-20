-- this AOA and G-force indicator
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
-- define property table
defineProperty("tas", globalPropertyf("sim/flightmodel2/position/true_airspeed")) -- tas variable
defineProperty("mach", globalPropertyf("tu154b2/custom/gauges/speed/mach_right")) -- Mach number
defineProperty("gforce", globalPropertyf("sim/flightmodel2/misc/gforce_normal")) -- G overload
defineProperty("alpha", globalPropertyf("sim/flightmodel2/misc/AoA_angle_degrees"))  -- angle of attack
defineProperty("alpha_fail", globalPropertyi("sim/operation/failures/rel_AOA"))  -- angle of attack fail

defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too
defineProperty("rel_pitot", globalPropertyi("sim/operation/failures/rel_pitot")) -- Pitot 1 - Blockage
defineProperty("deflection_mtr_1", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")) -- 


-- controls
defineProperty("lamp_test", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка теста ламп

defineProperty("auasp_on", globalPropertyi("tu154b2/custom/switchers/ovhd/auasp_on")) -- АУАСП
defineProperty("auasp_contr", globalPropertyi("tu154b2/custom/switchers/ovhd/auasp_contr")) -- АУАСП контроль

defineProperty("gforce_reset", globalPropertyi("tu154b2/custom/buttons/misc/gforce_reset")) -- кнопка сброса стрелок максимальных перегрузок

defineProperty("lamp_test", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0
defineProperty("day_night_set", globalPropertyf("tu154b2/custom/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

-- power
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))


defineProperty("auasp_pow27_cc", globalPropertyf("tu154b2/custom/elec/auasp_pow27_cc"))
defineProperty("auasp_pow115_cc", globalPropertyf("tu154b2/custom/elec/auasp_pow115_cc"))

-- failures
defineProperty("uap_fail", globalPropertyi("sim/operation/failures/rel_AOA")) -- fail
defineProperty("warn_fail", globalPropertyi("sim/operation/failures/rel_stall_warn")) -- fail





-- results
defineProperty("aoa_ind", globalPropertyf("tu154b2/custom/gauges/misc/aoa_ind")) -- индикатор угла атаки
defineProperty("aoa_sector", globalPropertyf("tu154b2/custom/gauges/misc/aoa_sector")) -- сектор индикатора угла атаки
defineProperty("gforce_ind", globalPropertyf("tu154b2/custom/gauges/misc/gforce_ind")) -- индикатор макс перегрузки
defineProperty("gforce_max", globalPropertyf("tu154b2/custom/gauges/misc/gforce_max")) -- индикатор макс перегрузки
defineProperty("gforce_min", globalPropertyf("tu154b2/custom/gauges/misc/gforce_min")) -- индикатор мин перегрузки

defineProperty("auasp_lamp", globalPropertyf("tu154b2/custom/lights/auasp_lamp")) -- лампа на АУАСП
defineProperty("alpha_high", globalPropertyf("tu154b2/custom/lights/alpha_high")) -- предельный УА
defineProperty("g_force_high", globalPropertyf("tu154b2/custom/lights/g_force_high")) -- передельная перегрузка

defineProperty("alpha_critical", globalPropertyi("tu154b2/custom/auasp/alpha_critical")) -- сигнал от АУАСП по критическом УА
defineProperty("gforce_critical", globalPropertyi("tu154b2/custom/auasp/gforce_critical")) -- сигнал от АУАСП по критическом УА

defineProperty("speaker_auasp", globalPropertyi("tu154b2/custom/alarm/speaker_auasp")) -- предельный угол атаки или перегрузки
p_s = globalPropertyf("tu154b2/custom/svs/p_s_smoothed")
p_q = globalPropertyf("tu154b2/custom/svs/p_q_smoothed")
ppd_ice = globalPropertyf("sim/flightmodel/failures/pitot_ice_stby")
stat_ice = globalPropertyf("sim/flightmodel/failures/stat_ice_stby") 

rel_stat = globalPropertyi("sim/operation/failures/rel_static_stby") -- static- Blockage
rel_pitot2 = globalPropertyi("sim/operation/failures/rel_pitot_stby") -- Pitot 2 - Blockage
defineProperty("sensors_caps", globalPropertyi("tu154b2/custom/anim/sensors_caps"))  -- чехлы и крышки
--defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local rand_tbl = {
{-1000, 0},
{100, 0},
{250, 4},
{350, 0},
{100000, 0},
}


local sector_ang = 12
local aoa_ang_act = 0
local aoa_ang_need = 0
local lamp_lit = false
local lamp_counter = 0
local mach_act = 0
local mach_ind = 0

local gf_act = 1
local gf_max = 0
local gf_min = 0

local p_stat=get(p_s)
local p_d=get(p_q)

function update()
	
	local MASTER = get(ismaster) ~= 1	
	
	local power = bool2int(get(bus27_volt_right) > 13 and get(bus115_3_volt) > 110 and get(auasp_on) == 1 and get(uap_fail) < 6)
	local passed = get(frame_time)
	local mode_sw = get(auasp_contr)
	
	set(auasp_pow27_cc, power * (15+20*bool2int(mode_sw==1))/27)
	set(auasp_pow115_cc, power * 30/115)
	
	-- critical AOA sector logic
	
	local sector_ang_need = 12
	
	local flaps = get(flap_inn_L)
	local slat = get(slats)
	mach_act = get(mach)
	local caps = get(sensors_caps) >0
	if get(rel_pitot2) < 6 and not caps then
		p_d=get(p_q)*(1-get(ppd_ice))
	end
	if get(stat_ice)<0.5 and get(rel_stat)~=6 and not caps then
		p_stat=get(p_s)
	end
	if p_stat>1000 and p_d>p_stat  then
		mach_ind=(-0.1367*(p_d-p_stat)/p_stat+1.179)*math.sqrt((p_d-p_stat)/p_stat)
	end
	
	if mode_sw == 1 then 
		sector_ang_need = 10
	elseif slat > 0.9 and flaps < 25 then 
		sector_ang_need = 14
	elseif flaps >= 25 then 
		sector_ang_need = 12 
	else
		--sector_ang_need = interpolate(m_tbl, mach_act)
		if mach_ind <= 0.6 then 
			sector_ang_need = 12
		else 
			sector_ang_need = -1.46855719910012794571e+02*math.pow(mach_ind,3) + 3.81861007292695319393e+02*math.pow(mach_ind,2) -3.36622029397769836123e+02*mach_ind + 1.08214588360798586564e+02
		end
		sector_ang_need=math.floor(sector_ang_need*10)/10
	end
	
	-- if sector_ang > sector_ang_need + 0.03 then sector_ang = sector_ang - passed * power*5 
	-- elseif sector_ang < sector_ang_need - 0.03 then sector_ang = sector_ang + passed * power*5  end
	sector_ang = sector_ang - (sector_ang - sector_ang_need) * passed * power*5 
	
	
	-- AOA indicator
	if mode_sw == 1 and get(alpha_fail) < 6 then 
		aoa_ang_need = 10
		--sector_ang_need = 9.8
	elseif mode_sw == -1 then 
		--sector_ang_need = 12
		aoa_ang_need = 0
	else
		if get(tas) > 25 and get(alpha_fail) < 6 then
			aoa_ang_need = get(alpha) + 3
		--elseif get(alpha_fail) < 6 then aoa_ang_need = 9
		--else aoa_ang_need = 6 
		end
	end
	-- Random error
	aoa_ang_need=aoa_ang_need+(math.random()-0.5)*interpolate(rand_tbl,get(tas)*3.6)
	-- Mach error
	local mach_corr=1.82314698443728701704e+02*math.pow(mach_act,3) -4.07919440177500860045e+02*math.pow(mach_act,2) + 2.91787692594142015423e+02*mach_act -6.76015919564302976141e+01
	if mach_act<0.6 then
		mach_corr=0
	end
	aoa_ang_act = aoa_ang_act + (aoa_ang_need+mach_corr - aoa_ang_act) * passed * power * 2

	if aoa_ang_act > 15 then aoa_ang_act = 15
	elseif aoa_ang_act < 0 then aoa_ang_act = 0 end
	if power>0 and MASTER then
		set(aoa_sector, sector_ang)
		set(aoa_ind, aoa_ang_act)
	end

	-- G force indicator
	local gf_need = 0
	
	if mode_sw == 1 then gf_need = 2.0
	else
		gf_need = get(gforce)
	end	
	
	gf_act = gf_act + (gf_need - gf_act) * passed * 2 * power

	if gf_act > 3 then gf_act = 3
	elseif gf_act < -1 then gf_act = -1 end		

	
	
	-- max and min needles
	local button = get(gforce_reset)
	if gf_max < gf_act then gf_max = gf_act 
	elseif gf_max > gf_act + 0.01 then gf_max = gf_max - passed * button * 2
	end
	
	if gf_min > gf_act then gf_min = gf_act 
	elseif gf_min < gf_act - 0.01 then gf_min = gf_min + passed * button * 2
	end


	

if MASTER then	

	set(gforce_ind, gf_act)
	set(gforce_max, gf_max)
	set(gforce_min, gf_min)
	
	
	-- signals and lamp logic
	local aoa_crit = bool2int(aoa_ang_act >= sector_ang - 0.5) * power
	local gf_crit = bool2int(gf_act >= 1.8 or gf_act <= -0.8) * power                                                                                                                                                   
	
	if aoa_crit + gf_crit > 0 then 
		lamp_counter = lamp_counter + passed
		if lamp_counter > 0.3 then
			lamp_counter = 0
			lamp_lit = not lamp_lit
		end
	else
		lamp_lit = false
	end
		
	
	
	set(alpha_critical, aoa_crit)
	set(gforce_critical, gf_crit)
	
	set(auasp_lamp, bool2int(lamp_lit))
	
	set(speaker_auasp, math.max(aoa_crit, gf_crit) * bool2int(get(warn_fail) < 6))
	
	-- lamps
	local test_btn = get(lamp_test) * math.max(get(bus27_volt_right) - 10 / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	
	set(alpha_high, math.max(aoa_crit * lamps_brt, test_btn))
	set(g_force_high, math.max(gf_crit * lamps_brt, test_btn))

end



end








--[[
по ПТ
закрылки между 2 - 28 - сектор на 13
при закрылках 28+ - сектор на 12


при убраных - 12
на скорости М 0.6 сектор начинает движение
0.63 = 11
0.67 = 10
0.69 = 9
0.77 = 8
0.87 = 7
0.96 = 6
1 = 4.5
1.5 = 0

при проверке сектор на 11, стрелка на 11. лампа мигает
лампа не реагирует на кнопку проверки ламп

--]]