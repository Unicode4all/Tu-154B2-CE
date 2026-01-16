-- this is simple RUD logic

-- sim/version/xplane_internal_version
--defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))
-- controls
--defineProperty("tro_comm_1", globalPropertyf("sim/flightmodel/engine/ENGN_thro[0]"))
--defineProperty("tro_comm_2", globalPropertyf("sim/flightmodel/engine/ENGN_thro[1]"))
--defineProperty("tro_comm_3", globalPropertyf("sim/flightmodel/engine/ENGN_thro[2]"))

defineProperty("tro_comm_1", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_0")) 
defineProperty("tro_comm_2", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_1")) 
defineProperty("tro_comm_3", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_2"))


defineProperty("sim_rud_1", globalProperty("sim/flightmodel/engine/ENGN_thro_use[0]"))
defineProperty("sim_rud_2", globalProperty("sim/flightmodel/engine/ENGN_thro_use[1]"))
defineProperty("sim_rud_3", globalProperty("sim/flightmodel/engine/ENGN_thro_use[2]"))

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine

defineProperty("eng_modL", globalProperty("sim/flightmodel/engine/ENGN_propmode[0]")) -- reverse on left engine feather=0,normal=1,beta=2,reverse=3
defineProperty("eng_modR", globalProperty("sim/flightmodel/engine/ENGN_propmode[2]")) -- reverse on right engine feather=0,normal=1,beta=2,reverse=3



defineProperty("anim_rud1", globalPropertyf("tu154b2/custom/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154b2/custom/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154b2/custom/controlls/throttle_3")) -- РУД 3

defineProperty("anim_rud1_ENG", globalPropertyf("tu154b2/custom/controlls/throttle_1_ENG")) -- РУД 1 БИ
defineProperty("anim_rud2_ENG", globalPropertyf("tu154b2/custom/controlls/throttle_2_ENG")) -- РУД 2 БИ
defineProperty("anim_rud3_ENG", globalPropertyf("tu154b2/custom/controlls/throttle_3_ENG")) -- РУД 3 БИ

defineProperty("revers_L", globalPropertyf("tu154b2/custom/controlls/revers_L")) -- рычаг реверса лев
defineProperty("revers_R", globalPropertyf("tu154b2/custom/controlls/revers_R")) -- рычаг реверса прав




defineProperty("throttle_lock", globalPropertyf("tu154b2/custom/controlls/throttle_lock")) -- рычаг фиксации РУД

defineProperty("msl_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))  -- barometric alt in feet
--defineProperty("baro_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

defineProperty("rud_1_spd", globalPropertyf("tu154b2/custom/absu/rud_1_spd")) -- скорость изменения положения рычага
defineProperty("rud_2_spd", globalPropertyf("tu154b2/custom/absu/rud_2_spd")) -- скорость изменения положения рычага
defineProperty("rud_3_spd", globalPropertyf("tu154b2/custom/absu/rud_3_spd")) -- скорость изменения положения рычага

-- failures
defineProperty("comsta0", globalPropertyi("sim/operation/failures/rel_comsta0")) -- compressor stall
defineProperty("comsta1", globalPropertyi("sim/operation/failures/rel_comsta1"))
defineProperty("comsta2", globalPropertyi("sim/operation/failures/rel_comsta2"))


-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("outside_air_temp", globalPropertyf("sim/weather/temperature_ambient_c")) -- 

defineProperty("rev_fail", globalPropertyi("sim/operation/failures/rel_revloc1")) -- reverse fail for logic
defineProperty("rev_fail_2", globalPropertyi("sim/operation/failures/rel_revers1")) -- reverse fail for logic
defineProperty("override", globalPropertyi("sim/operation/override/override_throttles"))
defineProperty("override2", globalPropertyi("sim/operation/override/override_FADEC"))


-- engine result power
defineProperty("acf_tmax_1", globalProperty("sim/aircraft/engine/acf_tmax_per_engine[0]")) -- engines power
defineProperty("acf_tmax_2", globalProperty("sim/aircraft/engine/acf_tmax_per_engine[1]"))
defineProperty("acf_tmax_3", globalProperty("sim/aircraft/engine/acf_tmax_per_engine[2]"))

defineProperty("throttle_ratio_all", globalPropertyf("sim/cockpit2/engine/actuators/throttle_ratio_all")) -- all throttles


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control
--defineProperty("kontur_on", globalPropertyf("tu154b2/custom/b2/kontur_on")) -- 

defineProperty("rt1_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red1"))
defineProperty("rt2_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red2"))
defineProperty("rt3_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red3"))

defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
defineProperty("rho", globalPropertyf("sim/weather/rho"))

defineProperty("rpm1", globalProperty("sim/flightmodel2/engines/N2_percent[0]"))
defineProperty("rpm2", globalProperty("sim/flightmodel2/engines/N2_percent[1]"))
defineProperty("rpm3", globalProperty("sim/flightmodel2/engines/N2_percent[2]"))

defineProperty("machno", globalPropertyf("sim/cockpit2/gauges/indicators/mach_pilot"))
defineProperty("idle_rat", globalPropertyf("sim/aircraft2/engine/high_idle_ratio"))

defineProperty("tgt_1", globalPropertyf("tu154b2/custom/controlls/target_n2_1"))
defineProperty("tgt_2", globalPropertyf("tu154b2/custom/controlls/target_n2_2"))
defineProperty("tgt_3", globalPropertyf("tu154b2/custom/controlls/target_n2_3"))

defineProperty("temp_SL", globalPropertyf("sim/weather/temperature_sealevel_c"))
defineProperty("press_SL", globalPropertyf("sim/weather/barometer_sealevel_inhg"))

defineProperty("flt_idle", globalPropertyf("tu154b2/custom/engines/flight_idle"))
--defineProperty("flt_idle_rpm", globalPropertyf("tu154b2/custom/engines/flight_idle_rpm"))

defineProperty("max_n2", globalPropertyf("tu154b2/engine/max_KVD"))
defineProperty("nom_n2", globalPropertyf("tu154b2/engine/nom_KVD"))

defineProperty("kpp_up", globalPropertyf("tu154b2/engine/kpp_up"))
defineProperty("kpp_dn", globalPropertyf("tu154b2/engine/kpp_dn"))
defineProperty("isa_temp_d", globalPropertyf("tu154b2/custom/engines/d_isa_temp"))
defineProperty("sc_kvd1", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd1"))
defineProperty("sc_kvd2", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd2"))
defineProperty("sc_kvd3", globalPropertyf("tu154b2/custom/SC/engine/nk8_kvd3"))

defineProperty("kpp1_fail", globalPropertyf("tu154b2/custom/failures/kpp_1_fail"))
defineProperty("kpp2_fail", globalPropertyf("tu154b2/custom/failures/kpp_2_fail"))
defineProperty("kpp3_fail", globalPropertyf("tu154b2/custom/failures/kpp_3_fail"))
defineProperty("n2_tgt1", globalProperty("sim/flightmodel2/engines/N1_FADEC[1]"))

defineProperty("idle_rat2", globalPropertyf("sim/aircraft2/engine/low_idle_ratio"))
defineProperty("kpp1", globalPropertyf("tu154b2/custom/engine/kpp1"))
defineProperty("kpp2", globalPropertyf("tu154b2/custom/engine/kpp2"))
defineProperty("kpp3", globalPropertyf("tu154b2/custom/engine/kpp3"))

defineProperty("FF_1", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")) -- FF from sim kg/second
defineProperty("FF_2", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")) -- FF from sim kg/second
defineProperty("FF_3", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")) -- FF from sim kg/second
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel2/position/true_airspeed"))
defineProperty("spread", globalPropertyf("tu154b2/custom/engines/thro_spread"))
defineProperty("pushback", globalPropertyi("bp/connected"))

defineProperty("bleed_1", globalPropertyf("tu154b2/custom/bleedair/eng_1_bleed"))
defineProperty("bleed_2", globalPropertyf("tu154b2/custom/bleedair/eng_2_bleed"))
defineProperty("bleed_3", globalPropertyf("tu154b2/custom/bleedair/eng_3_bleed"))

defineProperty("eng1_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[0]"))
defineProperty("eng2_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[1]"))
defineProperty("eng3_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[2]"))

defineProperty("rpm_low_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_1")) -- обороты турбины низкого давления №1
defineProperty("rpm_low_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_2")) -- обороты турбины низкого давления №2
defineProperty("rpm_low_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_low_3")) -- обороты турбины низкого давления №3

local t1_corr=0
local t2_corr=0
local t3_corr=0
local corr_temp=-3
local alt_coeff=1
local vzl_rpm1=0
local vzl_rpm2=0
local vzl_rpm3=0
local mach_corr=1
local kpp_1=get(kpp1)
local kpp_2=get(kpp2)
local kpp_3=get(kpp3)
local kvd1_prev=0
local kvd2_prev=0
local kvd3_prev=0


local rud_nom1=0.9
local idle_rpm=55
local n_kpp=0.265

local min_idle=0
				  
local contr_1=0
local contr_2=0
local contr_3=0
local i_kvd_1=0
local i_kvd_2=0
local i_kvd_3=0

local n2_tgt1=55
local n2_tgt2=55
local n2_tgt3=55
local kpp_table={{-1, 0 }, 
					{  0, 0}, 
					{  50, 0.0}, 
					{  55.5,0.0}, 
					{  74.5,-0.1 },
					{  200,-0.1 }} 	
local kpp_idle_corr_table={{-1000, 1.5 }, 
					{  0, 1.5}, 
					{  4, 0.0}, 
					{  100,0.0 }} 	
					
local eng2_n1_corr_tbl = {{ -100000, 0.0 },    -- bugs walkaround
					{  55, 0.5 },
					{  78, 0.5 },
					{  86, 1 },
					{  92, 0.75 }, 				
					{  1000, 0.5 }} 
					
local ISA_table = {	{-2,15},
					{0,15},
					{0.5,11.8},
					{1,8.5},
					{1.5,5.3},
					{2,2},
					{2.5,-1.2},
					{3,-4.5},
					{3.5,-7.7},
					{4,-11},
					{4.5,-14.2},
					{5,-17.5},
					{5.5,-20.7},
					{6,-24},
					{6.5,-27.2},
					{7,-30.5},
					{7.5,-33.7},
					{8,-37},
					{8.5,-40.2},
					{9,-43.5},
					{9.5,-46.7},
					{10,-50},
					{10.5,-53.2},
					{11,-56.5},
					{11.5,-56.5},
					{12,-56.5},
					{15,-56.5}}
					
local rev_corr_tbl = {{ -100000, 1 },    -- bugs walkaround
					{  0, 0 },
					{  65, 0.467 },			
					{  1000, 0.5 }} 

local thro_1 = 0
local thro_2 = 0
local thro_3 = 0

local thro_1_anim = 0
local thro_2_anim = 0
local thro_3_anim = 0

local thro_1_pos_ENG = 0
local thro_3_pos_ENG = 0

local rev_L_pos = 0
local rev_R_pos = 0

local thr_nom1=0
local thr_nom2=0
local thr_nom3=0

local joy_pos_last_1 = get(tro_comm_1)
local joy_pos_last_2 = get(tro_comm_2)
local joy_pos_last_3 = get(tro_comm_3)

-- these throttles goes to engine control
local virtual_rud_1 = 0.02
local virtual_rud_2 = 0.02
local virtual_rud_3 = 0.02

local virtual_rud_1_act = 0.02
local virtual_rud_2_act = 0.02
local virtual_rud_3_act = 0.02

local joy_rud_pos_1 = get(tro_comm_1)
local joy_rud_pos_2 = get(tro_comm_2)
local joy_rud_pos_3 = get(tro_comm_3)

local rud_lim=1/5
-- local rud_lim_2=1/5
-- local rud_lim_3=1/5
local n2_1=55
local n2_2=55
local n2_3=55

rev_comm = findCommand("sim/engines/thrust_reverse_toggle")
mag1_comm = findCommand("sim/magnetos/magnetos_down_1")
mag2_comm = findCommand("sim/magnetos/magnetos_down_2")
mag3_comm = findCommand("sim/magnetos/magnetos_down_3")

function rev_comm_hnd(phase)
	if 0 == phase then -- hold
		set(throttle_ratio_all, 0)
		
	end
	
	return 0
end
-- target N2 from throttle position
local function n2_from_uprt (virtual_rud_1_act,corr_temp)
	local n2=5.55591102513438954702e+01 + 7.99028629407774815263e+01*virtual_rud_1_act + 2.09369633330851222588e-03*(corr_temp+5) -6.63522155383856784283e+01*math.pow(virtual_rud_1_act,2) + 3.53168063572906976155e-01*virtual_rud_1_act*(corr_temp+5) -1.97333333333351659843e-05*math.pow((corr_temp+5),2) + 2.52813221631643436638e+01*math.pow(virtual_rud_1_act,3) -2.39783522205208154965e-01*math.pow(virtual_rud_1_act,2)*(corr_temp+5) -2.96799999999976260329e-04*virtual_rud_1_act*math.pow((corr_temp+5),2)
	return n2	
end
--N2 from N1
local function n2_from_n1 (rpm_in,d_isa,alt,tas)
	rpm=rpm_in-math.max(2.55665280454449340030e-16 -9.80392156862750505444e-04*tas + 6.66666666666667073748e-01*alt,0)-- altitude correction
	local kvd=-2.67651312865999080337e-02 -1.91526137915553175753e-03*d_isa + 2.14395604443107856696e+00*rpm + 1.92748975065086406225e-03*d_isa*rpm -1.99529688919489120447e-02*math.pow(rpm,2) -1.17765004481492249316e-05*d_isa*math.pow(rpm,2) + 8.25826424232779484399e-05*math.pow(rpm,3)
	return kvd
end

-- registerCommandHandler(rev_comm, 0, rev_comm_hnd)

-- function mag1_comm_hnd(phase)
	-- if 0 == phase then -- hold
		-- t_contr=1
		
	-- end
	
	-- return 0
-- end

-- registerCommandHandler(mag1_comm, 0, mag1_comm_hnd)

-- function mag2_comm_hnd(phase)
	-- if 0 == phase then -- hold
		-- t_contr=2
		
	-- end
	
	-- return 0
-- end

-- registerCommandHandler(mag2_comm, 0, mag2_comm_hnd)

-- function mag3_comm_hnd(phase)
	-- if 0 == phase then -- hold
		-- t_contr=3
		
	-- end
	
	-- return 0
-- end

-- registerCommandHandler(mag3_comm, 0, mag3_comm_hnd)

local idle_rat_tbl = {{ -10000, 0.3 },
                  {  3, 0.3 },	
           	      {  8, 0.86 },
          	      {  100, 0.86 }} 
				  

function onModuleInit()
	set(override,1)
	set(override2,1)
end

function update()
	
local reverse_table = {{ -10000, 0.04 }, -- BUGS workaround
                  {  0.0, 0.49 },	-- IDLE
           	      {  1.0, 0.85 }, -- reverse
          	      {  100000, 0.85 }} -- BUGS workaround
	
	
	local eng1_rt=get(rt1_red)
	local eng2_rt=get(rt2_red)
	local eng3_rt=get(rt3_red)
	local passed = get(frame_time)
	local stop_lever = get(throttle_lock) -- temp for stopor lever
	local kp1_fail=get(kpp1_fail)>0
	local kp2_fail=get(kpp2_fail)>0
	local kp3_fail=get(kpp3_fail)>0
	
	local rev_L = get(eng_modL) == 3
	local rev_R = get(eng_modR) == 3
	
	local alt_baro = get(msl_alt) / 3.28084 -- pressure altitude in m
	if alt_baro>12000 then
		alt_baro=12000
	end
	local d_isa=get(outside_air_temp)-interpolate(ISA_table,alt_baro/1000)
	local tas=get(true_airspeed)*3.6
	-- add ABSU speeds
	local rud_spd_1 = get(rud_1_spd)
	local rud_spd_2 = get(rud_2_spd)
	local rud_spd_3 = get(rud_3_spd)
	
	-- joy throttles position. 
	local joy_pos_1 = get(tro_comm_1)
	local joy_pos_2 = get(tro_comm_2)*(1-bool2int(rev_L))*(1-bool2int(rev_R))
	local joy_pos_3 = get(tro_comm_3)
	-- if t_contr==2 then
		-- joy_pos_1 = get(tro_comm_1)
		-- joy_pos_2 = get(tro_comm_2)
		-- joy_pos_3 = joy_rud_pos_3
	-- elseif t_contr==3 then
		-- joy_pos_1 = joy_rud_pos_1
		-- joy_pos_2 = get(tro_comm_2)
		-- joy_pos_3 = get(tro_comm_1)
	-- end
	
	-- take controls of RUDs
	if stop_lever < 0.2 then
		if rud_spd_1 ~= 0 then
			joy_rud_pos_1 = joy_rud_pos_1 + rud_spd_1 * passed
		elseif math.abs(joy_pos_1 - joy_pos_last_1) > 0.001 then
			joy_rud_pos_1 = joy_pos_1
		end
		
		if rud_spd_2 ~= 0 then
			joy_rud_pos_2 = joy_rud_pos_2 + rud_spd_2 * passed
		elseif math.abs(joy_pos_2 - joy_pos_last_2) > 0.001 then
			joy_rud_pos_2 = joy_pos_2
		end
		
		if rud_spd_3 ~= 0 then
			joy_rud_pos_3 = joy_rud_pos_3 + rud_spd_3 * passed
		elseif math.abs(joy_pos_3 - joy_pos_last_3) > 0.001 then
			joy_rud_pos_3 = joy_pos_3
		end
	end
	
	-- try to fix noisy joysticks. need to work here more
	if math.abs(joy_pos_last_1 - joy_pos_1) > 0.001 then joy_pos_last_1 = joy_pos_1 end
	if math.abs(joy_pos_last_2 - joy_pos_2) > 0.001 then joy_pos_last_2 = joy_pos_2 end
	if math.abs(joy_pos_last_3 - joy_pos_3) > 0.001 then joy_pos_last_3 = joy_pos_3 end

	
	-- limit RUD
	if joy_rud_pos_1 > 1 then joy_rud_pos_1 = 1
	elseif joy_rud_pos_1 < 0 then joy_rud_pos_1 = 0 end
	
	if joy_rud_pos_2 > 1 then joy_rud_pos_2 = 1
	elseif joy_rud_pos_2 < 0 then joy_rud_pos_2 = 0 end
	
	if joy_rud_pos_3 > 1 then joy_rud_pos_3 = 1
	elseif joy_rud_pos_3 < 0 then joy_rud_pos_3 = 0 end
	
		
	local kvd1=get(rpm1)
	local kvd2=get(rpm2)
	local kvd3=get(rpm3)
	-- temparture correction
	local temp=get(outside_air_temp)
	local press=get(rho)*287*(temp+273)/133.3
	temp=temp+(760-press)/40*6.5-4.5
	if temp>0 or alt_baro>4000 then 
		corr_temp=0
	else
		corr_temp=temp
	end

	--min_idle=math.max(55.5,-1.6402629234e-01*math.pow(alt_baro/1000,2) + 4.6498254605e+00*alt_baro/1000 + 4.4995506536e+01) --- This is the old model
	local mid_idle_isa_corr=0.12*d_isa
	min_idle=math.max(55.5,-2.2412587413e-01*math.pow(alt_baro/1000,2) + 5.3544289044e+00*alt_baro/1000 + 4.4647086247e+01+mid_idle_isa_corr)
	local kpp_idle_corr=interpolate(kpp_idle_corr_table,71-min_idle)
	--math.max(55.5,1.945*alt_baro/1000+53.61)+get(db1)
	-- max N2
	local thr_max=math.min(97.5,97.5-bool2int(alt_baro<4000)*(30-temp-4.5)*0.1411)
	-- max N1
	--local n2_at_max_n1=n2_from_n1 (100,d_isa,alt_baro/1000,tas)
	--set(db1,n2_at_max_n1)
	--local n2_at_max_n1_norev=n2_from_n1 (100,d_isa,alt_baro/1000,tas)+0.5
	-- max N2 limited by max N1
	-- local thr_max1=math.min(n2_at_max_n1,thr_max)
	-- local thr_max2=math.min(n2_at_max_n1_norev,thr_max)

	-- Anti Surge Bypass Valves
	if kvd1>74.6 and kpp_1>0 and not kp1_fail then
		kpp_1=kpp_1-passed
		if kpp_1<0 then
			kpp_1=0
		end
	elseif kvd1<71 and kpp_1<1 then
		kpp_1=kpp_1+passed
		if kpp_1>1 then
			kpp_1=1
		end
	end
	if kvd2>74.1 and kpp_2>0 and not kp2_fail then
		kpp_2=kpp_2-passed
		if kpp_2<0 then
			kpp_2=0
		end
	elseif kvd2<71.1 and kpp_2<1 then
		kpp_2=kpp_2+passed
		if kpp_2>1 then
			kpp_2=1
		end
	end
	if kvd3>74.55 and kpp_3>0 and not kp3_fail then
		kpp_3=kpp_3-passed
		if kpp_3<0 then
			kpp_3=0
		end
	elseif kvd3<71.05 and kpp_3<1 then
		kpp_3=kpp_3+passed
		if kpp_3>1 then
			kpp_3=1
		end
	end
	-- Bypass valve thrust loss
	local kpp1_corr=1+interpolate(kpp_table,kvd1)*kpp_1
	local kpp2_corr=1+interpolate(kpp_table,kvd2)*kpp_2
	local kpp3_corr=1+interpolate(kpp_table,kvd3)*kpp_3
	-- low RPM corr
	local low_corr_1=-4.63359148458209409746e-05*math.pow(kvd1,3) + 1.02922062449861389383e-02*math.pow(kvd1,2) -7.49400726146798312755e-01*kvd1 + 1.87922209831368292043e+01
	local low_corr_2=-4.63359148458209409746e-05*math.pow(kvd2,3) + 1.02922062449861389383e-02*math.pow(kvd2,2) -7.49400726146798312755e-01*kvd2 + 1.87922209831368292043e+01
	local low_corr_3=-4.63359148458209409746e-05*math.pow(kvd3,3) + 1.02922062449861389383e-02*math.pow(kvd3,2) -7.49400726146798312755e-01*kvd3 + 1.87922209831368292043e+01
	if kvd1<=55 or kvd1>=83 then
		low_corr_1=1
	end
	if kvd2<=55 or kvd2>=83 then
		low_corr_2=1
	end
	if kvd3<=55 or kvd3>=83 then
		low_corr_3=1
	end	
	-- PID Coefficients
	local k_p=0.5*0.45
	local k_d=10*0.03
	local k_i=0.01*0.001
	-- N2 target value as function of throttle position and OAT/pressure
	local nom_rpm=n2_from_uprt (0.89,corr_temp)
	-- Throttle spread
	local shift_2=-2.06867257022685768764e-01*math.pow(virtual_rud_2_act,3) + 3.94331203513414607631e-01*math.pow(virtual_rud_2_act,2) -1.87463946490728866623e-01*virtual_rud_2_act + 1.57562652318455550893e-16
	local shift_3=-2.06867257022685768764e-01*math.pow(virtual_rud_3_act,3) + 3.94331203513414607631e-01*math.pow(virtual_rud_3_act,2) -1.87463946490728866623e-01*virtual_rud_3_act + 1.57562652318455550893e-16
	--local shift_3=5.68751354100704709094e-02*math.pow(virtual_rud_3_act,3) -5.51775696763268791445e-02*math.pow(virtual_rud_3_act,2) -1.69756573374358525966e-03*virtual_rud_3_act -1.10646822261948117306e-17
	if get(spread)>1 then
		set(spread,1)
	elseif get(spread)<0 then
		set(spread,0)
	end
	local spread_coeff=get(spread)*3
	shift_2=shift_2*spread_coeff
	shift_3=shift_3*spread_coeff/2
	if virtual_rud_1_act<=0.89 then
		n2_tgt1=n2_from_uprt (virtual_rud_1_act,corr_temp)
		n2_1=n2_tgt1
	else
		n2_1=nom_rpm+(thr_max-nom_rpm)*(virtual_rud_1_act-0.89)/0.11-- seperate logic between nominal and max power
	end
	if virtual_rud_2_act+shift_2<=0.89 then
		n2_tgt2=n2_from_uprt (virtual_rud_2_act+shift_2,corr_temp)
		n2_2=n2_tgt2
	else
		n2_2=nom_rpm+(thr_max-nom_rpm)*(virtual_rud_2_act+shift_2-0.89)/0.11
	end
	if virtual_rud_3_act+shift_3<=0.89 then
		n2_tgt3=n2_from_uprt (virtual_rud_3_act+shift_3,corr_temp)
		n2_3=n2_tgt3
	else
		n2_3=nom_rpm+(thr_max-nom_rpm)*(virtual_rud_3_act+shift_3-0.89)/0.11
	end
	-- increase idle at altitude
	n2_1=math.max(min_idle+kpp_idle_corr*kpp_1,n2_1)
	n2_2=math.max(min_idle+kpp_idle_corr*kpp_2,n2_2)
	n2_3=math.max(min_idle+kpp_idle_corr*kpp_3,n2_3)
	n2_1=n2_1-eng1_rt*60
	n2_2=n2_2-eng2_rt*60
	n2_3=n2_3-eng3_rt*60
	-- Engine PID controller
	local p_kvd_1=n2_1-kvd1
	local d_kvd_1=0
	local p_kvd_2=n2_2-kvd2
	local d_kvd_2=0
	local p_kvd_3=n2_3-kvd3
	local d_kvd_3=0
	i_kvd_1=i_kvd_1+p_kvd_1*passed
	i_kvd_2=i_kvd_2+p_kvd_2*passed
	i_kvd_3=i_kvd_3+p_kvd_3*passed
	if i_kvd_1>1 then
		i_kvd_1=1
	elseif i_kvd_1<-1 then
		i_kvd_1=-1
	end
	if i_kvd_2>1 then
		i_kvd_2=1
	elseif i_kvd_2<-1 then
		i_kvd_2=-1
	end
	if i_kvd_3>1 then
		i_kvd_3=1
	elseif i_kvd_3<-1 then
		i_kvd_3=-1
	end
	if passed~=0 then
		d_kvd_1=(kvd1-kvd1_prev)/passed
		d_kvd_2=(kvd2-kvd2_prev)/passed
		d_kvd_3=(kvd3-kvd3_prev)/passed
	end
	local contr_1_spd=p_kvd_1*k_p-k_d*d_kvd_1+i_kvd_1*k_i-math.max(0,get(rpm_low_1)-101.5)
	local contr_2_spd=p_kvd_2*k_p-k_d*d_kvd_2+i_kvd_2*k_i-math.max(0,get(rpm_low_2)-101.25)
	local contr_3_spd=p_kvd_3*k_p-k_d*d_kvd_3+i_kvd_3*k_i-math.max(0,get(rpm_low_3)-101.4)
	-- if contr_1_spd>0 and get(rpm_low_1)>98.5 then
		-- contr_1_spd=-1*get(db1)
	-- end
	-- if get(FF_1)<850/3600 then
		-- contr_1_spd=0
		-- set(db1,1)
	-- else
		-- set(db1,0)
	-- end
	-- idle stop
	-- rud_lim_1=interpolate(rud_lim_tbl,kvd1)*get(db1)
	-- rud_lim_2=interpolate(rud_lim_tbl,kvd2)*get(db1)
	-- rud_lim_3=interpolate(rud_lim_tbl,kvd3)*get(db1)
	-- set(db2,rud_lim_2)
	rud_lim=0.25
	local idle_lim_1=2*bool2int(kvd1>55.5-1.3)
	if kvd1<55.5-idle_lim_1 then
		contr_1_spd=-rud_lim
	end
	local idle_lim_2=2*bool2int(kvd2>55.5-1.3)
	if kvd2<55.5-idle_lim_2 then
		contr_2_spd=-rud_lim
	end
	local idle_lim_3=2*bool2int(kvd3>55.5-1.3)
	if kvd3<55.5-idle_lim_3 then
		contr_3_spd=-rud_lim
	end
	
	--limit thorttle speed
	if kvd1<min_idle then
		contr_1_spd=math.min(contr_1_spd,rud_lim/(1+alt_baro/2000))
	end	
	if kvd2<min_idle then
		contr_2_spd=math.min(contr_2_spd,rud_lim/(1+alt_baro/2000))
	end	
	if kvd3<min_idle then
		contr_3_spd=math.min(contr_3_spd,rud_lim/(1+alt_baro/2000))
	end	
	if contr_1_spd>rud_lim then
		contr_1_spd=rud_lim
	-- elseif contr_1_spd<-rud_lim then
		-- contr_1_spd=-rud_lim
	end	
	if contr_2_spd>rud_lim then
		contr_2_spd=rud_lim
	-- elseif contr_2_spd<-rud_lim_2 then
		-- contr_2_spd=-rud_lim_2
	end
	if contr_3_spd>rud_lim then
		contr_3_spd=rud_lim
	-- elseif contr_3_spd<-rud_lim_3 then
		-- contr_3_spd=-rud_lim_3
	end
	kvd1_prev=kvd1
	kvd2_prev=kvd2
	kvd3_prev=kvd3
	
	if stop_lever < 0.2 then
		-- set left lever
	-- thro_1_pos = joy_rud_pos_1
	-- thro_2_pos = virtual_rud_2_act
	-- thro_3_pos = virtual_rud_3_act
	thro_1_anim=joy_rud_pos_1
	thro_2_anim=joy_rud_pos_2
	thro_3_anim=joy_rud_pos_3
		if rev_L then
			thro_1_pos_ENG = -interpolate(reverse_table, joy_rud_pos_1) * 0.4
			rev_L_pos = -thro_1_pos_ENG * 2.5
			--virtual_rud_1 = math.min(thro_1,0.61)
		else
			thro_1_pos_ENG = joy_rud_pos_1
			rev_L_pos = 0
			--virtual_rud_1 = thro_1
		end
		if rev_R then
			thro_3_pos_ENG = -interpolate(reverse_table, joy_rud_pos_3) * 0.4
			rev_R_pos = -thro_3_pos_ENG * 2.5
			--virtual_rud_1 = math.min(thro_1,0.61)
		else
			thro_3_pos_ENG = joy_rud_pos_3
			rev_R_pos = 0
			--virtual_rud_1 = thro_1
		end	
	end

	if virtual_rud_1_act < joy_rud_pos_1 then -- spool-up, throt delay*altitude corrector (4-7km)
			-- no delay below flight idle
		if n2_from_uprt (joy_rud_pos_1,corr_temp)<min_idle-0.05 then
			virtual_rud_1_act =joy_rud_pos_1
		else
			virtual_rud_1_act = virtual_rud_1_act - math.max((virtual_rud_1_act - joy_rud_pos_1*(1-0.25*bool2int(rev_L))),-0.14*(1-math.max(math.min(alt_baro/1000-4,3),0)*0.5/3+0.2*bool2int(rev_L)))  * passed
		end
	else -- spool-down
		virtual_rud_1_act = virtual_rud_1_act - math.min((virtual_rud_1_act - joy_rud_pos_1*(1-0.25*bool2int(rev_L))),0.16*(1-math.max(math.min(alt_baro/1000-4,3),0)*0.5/3+0.1*bool2int(rev_L)))  * passed * 1.5
	end
	
	if virtual_rud_2_act < joy_rud_pos_2 then -- spool-up
		if n2_from_uprt (joy_rud_pos_2,corr_temp)<min_idle-0.05 then
			virtual_rud_2_act =joy_rud_pos_2
		else
			virtual_rud_2_act = virtual_rud_2_act - math.max((virtual_rud_2_act - joy_rud_pos_2),-0.14*(1-math.max(math.min(alt_baro/1000-4,3),0)*0.5/3))  * passed--*(1-bool2int(rev_L))
		end
	else -- spool-down
		virtual_rud_2_act = virtual_rud_2_act - math.min((virtual_rud_2_act - joy_rud_pos_2),0.16*(1-math.max(math.min(alt_baro/1000-4,3),0)*0.5/3))  * passed * 1.5--*(1-bool2int(rev_L))
	end
	
	if virtual_rud_3_act < joy_rud_pos_3 then -- spool-up, throt delay*altitude corrector (4-7km) 
			--no delay below flight idle
		if n2_from_uprt (joy_rud_pos_3,corr_temp)<min_idle-0.05 then
			virtual_rud_3_act =joy_rud_pos_3
		else
			virtual_rud_3_act = virtual_rud_3_act - math.max((virtual_rud_3_act - joy_rud_pos_3*(1-0.25*bool2int(rev_R))),-0.14*(1-math.max(math.min(alt_baro/1000-4,3),0)*0.5/3+0.2*bool2int(rev_R)))  * passed
		end
	else -- spool-down
		virtual_rud_3_act = virtual_rud_3_act - math.min((virtual_rud_3_act - joy_rud_pos_3*(1-0.25*bool2int(rev_R))),0.16*(1-math.max(math.min(alt_baro/1000-4,3),0)*0.5/3+0.1*bool2int(rev_R))) * 1.5  * passed
	end
	-- update throttle position
	contr_1=contr_1+contr_1_spd*passed
	if contr_1<0 then
		contr_1=0
	elseif contr_1>1 then
		contr_1=1
	end
	contr_2=contr_2+contr_2_spd*passed
	if contr_2<0 then
		contr_2=0
	elseif contr_2>1 then
		contr_2=1
	end
	contr_3=contr_3+contr_3_spd*passed
	if contr_3<0 then
		contr_3=0
	elseif contr_3>1 then
		contr_3=1
	end
	local MASTER = get(ismaster) ~= 1	
		

	if MASTER then	
		-- set results
		-- set animation
		set(sc_kvd1,kvd1)
		set(sc_kvd2,kvd2)
		set(sc_kvd3,kvd3)
		set(anim_rud1, thro_1_anim*(1-bool2int(rev_L)))
		set(anim_rud2, thro_2_anim)
		set(anim_rud3, thro_3_anim*(1-bool2int(rev_R)))

		set(anim_rud1_ENG, thro_1_pos_ENG)
		set(anim_rud2_ENG, thro_2_anim)
		set(anim_rud3_ENG, thro_3_pos_ENG)
		
		set(throttle_lock, stop_lever)
		
		set(revers_L, rev_L_pos)
		set(revers_R, rev_R_pos)
		set(kpp1,kpp_1)
		set(kpp2,kpp_2)
		set(kpp3,kpp_3)

		if kvd1<54.2-idle_lim_1 then -- engine controller takes over above 54.2% N2
			set(sim_rud_1,0)
		else
			set(sim_rud_1,contr_1)
		end
		
		if kvd2<54.2-idle_lim_2 then
			set(sim_rud_2,0)
		else
			set(sim_rud_2,contr_2)
		end
		if kvd3<54.2-idle_lim_3 then
			set(sim_rud_3,0)
		else
			set(sim_rud_3,contr_3)
		end

		set(flt_idle,min_idle)
		set(max_n2,thr_max)
		set(nom_n2,nom_rpm)


		set(rev_fail, 6) -- set failure for eng 2 reverse
		set(rev_fail_2, 6)
		
		-- Thrust correction

		local dens=get(rho)
		local mach=get(machno)
		-- correction for ISA deviation
		local isa_corr=2.3983880284e-05*math.pow(d_isa,2) -6.0735439748e-03*d_isa + 9.9799650000e-01

		if mach>0.8 then
			mach_corr=math.min(-16.37*math.pow(mach,2)+ 31.55*mach-13.76,1.26)
		end
		local alt_corr=1.00943185601002083374e+00 + 2.17077353169746432859e-02*alt_baro/1000 + 1.60251757334447381131e-02*mach + 6.38370262726087930177e-03*math.pow(alt_baro/1000,2) + 3.38232763963872695712e-02*alt_baro/1000*mach -1.85057468238811667627e-01*math.pow(mach,2) -8.65832042503102681553e-04*math.pow(alt_baro/1000,3) + 3.02859551021578696575e-03*math.pow(alt_baro/1000,2)*mach -1.40241084927201324628e-02*alt_baro/1000*math.pow(mach,2) + 2.70879760642303218997e-05*math.pow(alt_baro/1000,4) -5.91704912403564348145e-05*math.pow(alt_baro/1000,3)*mach -6.33359617173550443724e-04*math.pow(alt_baro/1000,2)*math.pow(mach,2)
		-- bleed air losses
		local bleed_loss_coef=0.015-- actually a gain when turnin bleed off
		local eng_1_bleed_loss=bleed_loss_coef*(1-get(bleed_1)/440)
		local eng_2_bleed_loss=bleed_loss_coef*(1-get(bleed_2)/440)
		local eng_3_bleed_loss=bleed_loss_coef*(1-get(bleed_3)/440)
		-- set engine power
		local climb_corr=2.08333333333329782933e-02*math.pow(alt_baro/1000,3) -3.12499999999991784350e-01*math.pow(alt_baro/1000,2) + 1.54166666666660612250e+00*alt_baro/1000 + 1.00000000000014321877e+00
		climb_corr=math.max(1-climb_corr/100,0.94)
		if alt_baro/1000<5 then
			climb_corr=0.97
		end
		--set(db2,climb_corr)
		local idle_rt=interpolate(idle_rat_tbl,alt_baro/1000)
		-- reduce thrust during pushback
		local pbConnect = get(pushback) == 1
		local push=1
		if pbConnect then
			push=1-0.7
		end
		-- Reverse thrust correction
		local rev_L_corr=1--+interpolate(rev_corr_tbl,tas/3.6)*get(revers_flap_L)
		local rev_R_corr=1--+interpolate(rev_corr_tbl,tas/3.6)*get(revers_flap_R)
		local ice1=1-get(eng1_ice)*0.4
		local ice2=1-get(eng2_ice)*0.3
		local ice3=1-get(eng3_ice)*0.4
		set(idle_rat,idle_rt)
		set(idle_rat2,idle_rt)
		set(acf_tmax_1, 102779*alt_corr*kpp1_corr*(climb_corr+eng_1_bleed_loss)*isa_corr*low_corr_1*push*rev_L_corr*ice1)
		set(acf_tmax_2, 102779*alt_corr*kpp2_corr*(climb_corr+eng_2_bleed_loss)*isa_corr*low_corr_2*push*ice2)
		set(acf_tmax_3, 102779*alt_corr*kpp3_corr*(climb_corr+eng_3_bleed_loss)*isa_corr*low_corr_3*push*rev_R_corr*ice3)
		set(isa_temp_d,d_isa)
	--print(height_coef,"   ", alt_baro)
	end
	
end













function onModuleDone()
	set(override, 0)
	set(override2,0)
	print("throttles released")
end