defineProperty("sfc_full_lo", globalPropertyf("sim/aircraft/overflow/jet_SFC_locrz"))
defineProperty("sfc_full_hi", globalPropertyf("sim/aircraft/overflow/jet_SFC_hicrz"))
-- defineProperty("sfc_full_lo", globalPropertyf("sim/aircraft/overflow/SFC_full_lo_JET"))
-- defineProperty("sfc_half_hi", globalPropertyf("sim/aircraft/overflow/SFC_half_hi_JET"))

--defineProperty("idle_FF", globalPropertyf("sim/aircraft/overflow/ff_rat_idle_JET"))

defineProperty("temp_SL", globalPropertyf("sim/weather/temperature_sealevel_c"))
defineProperty("press_SL", globalPropertyf("sim/weather/barometer_sealevel_inhg"))

defineProperty("msl_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))  -- pressure altitude (finally!)
--defineProperty("baro_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg
defineProperty("indicated_airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

defineProperty("fuel_q_1", globalProperty("sim/flightmodel/weight/m_fuel[0]"))
defineProperty("flt_idle", globalPropertyf("tu154b2/custom/engines/flight_idle"))

defineProperty("ENGN_FF_1", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[0]")) -- FF from sim kg/second
defineProperty("ENGN_FF_2", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[1]")) -- FF from sim kg/second
defineProperty("ENGN_FF_3", globalProperty("sim/cockpit2/engine/indicators/fuel_flow_kg_sec[2]")) -- FF from sim kg/second

defineProperty("Flow_1", globalPropertyf("tu154b2/custom/engines/FuelFlow_1")) 
defineProperty("Flow_2", globalPropertyf("tu154b2/custom/engines/FuelFlow_2")) 
defineProperty("Flow_3", globalPropertyf("tu154b2/custom/engines/FuelFlow_3")) 

defineProperty("eng1_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]")) -- engine 1 rpm
defineProperty("eng2_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]")) -- engine 2 rpm
defineProperty("eng3_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]")) -- engine 3 rpm

defineProperty("kpp1", globalPropertyf("tu154b2/custom/engine/kpp1"))
defineProperty("kpp2", globalPropertyf("tu154b2/custom/engine/kpp2"))
defineProperty("kpp3", globalPropertyf("tu154b2/custom/engine/kpp3"))

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel2/position/true_airspeed"))
defineProperty("machno", globalPropertyf("sim/cockpit2/gauges/indicators/mach_pilot"))
defineProperty("isa_temp_d", globalPropertyf("tu154b2/custom/engines/d_isa_temp"))

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time"))
defineProperty("oat", globalPropertyf("sim/weather/temperature_ambient_c"))
defineProperty("max_n2", globalPropertyf("tu154b2/engine/max_KVD"))
defineProperty("nom_n2", globalPropertyf("tu154b2/engine/nom_KVD"))
defineProperty("to_sfc", globalPropertyf("sim/aircraft/overflow/jet_SFC_takeoff"))
defineProperty("sfc_to_rpm", globalPropertyf("sim/aircraft/overflow/jet_N1_takeoff"))
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("idle_FF", globalPropertyf("sim/aircraft/overflow/ff_rat_idle_JET"))
defineProperty("fill_1", globalPropertyf("tu154b2/custom/fuel/line_1_filled"))
defineProperty("fill_2", globalPropertyf("tu154b2/custom/fuel/line_2_filled"))
defineProperty("fill_3", globalPropertyf("tu154b2/custom/fuel/line_3_filled"))
defineProperty("eng1_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[0]"))
defineProperty("eng2_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[1]"))
defineProperty("eng3_ice", globalProperty("sim/flightmodel/failures/inlet_ice_per_engine[2]"))

local sfc_half=0
local sfc_full=0
local idle_fuel=0
local idle_corr=0

local FF_1 =0
local FF_2 =0
local FF_3 =0

local rpm_1_lst=0
local rpm_2_lst=0
local rpm_3_lst=0
local filling_1_prev=0
local filling_2_prev=0
local filling_3_prev=0
local idle_ff_blend_tbl= {{-300, 0.25 },
			{  0, 0.25}, 
			{  500,1},
		  {  100000, 1 }} 
local nom_ff_shift_x_tbl= {{-300, 0 },
			{  5, 0}, 
			{  40,1200},
			{  100, 1200}} 
local nom_ff_shift_y_tbl= {{-300, 1.04 },
			{-15, 1.04 },
			{-5, 1.01 },
			{  5, 1}, 
			{  15, 0.97}, 
			{  30, 0.86}, 
			{  40,0.84},
			{  100, 0.84}} 
local isa_corr_alt_fade_tbl= {{-300, 0.5 },
			{  0, 0.5}, 
			{  4,1},
			{  30, 1}} 
		  
-- local KPP_corr_tbl= {{-300, 150 },
			-- {  0, 150}, 
			-- {  4,1},
			-- {  30, 1}}   
local idle_ff_tbl = {{ -10000, 0.1 },
                  {  3, 0.1 },	
           	      {  8, 0.15 },
          	      {  100, 0.15 }} 		
local idle_corr_stop = {{ -1, 69 },
                  {  0, 69 },	
           	      {  1.5, 69 },
				  {  11, 85 }, 	
          	      {  100, 85 }} 
local idle_ias_tbl={{ -100, 0 },
				  { 0, 0 },
                  {  500, 1 },	
          	      {  5000, 1 }} 				  

			
local rev_corr_tbl = {{ -100000, 1 },    -- bugs walkaround
					{  0, 0 },
					{  65, 0.39 },			
					{  1000, 0.39 }} 
local SFC_hi_base=0.00002494769
local SFC_lo_base=0.000025316236

function idle_ff_blend(alt_baro,rpm,stop)
	local alt=math.max(1500,alt_baro)/1000
	local corr_ff=-3.20103781965262783160e+02 + 1.07860764257422943047e+03*alt + 4.83681185827491155749e+00*rpm -2.14898206701942115160e+02*math.pow(alt,2) -1.63128469219936178547e+01*alt*rpm + 6.80945518505900615480e+00*math.pow(alt,3) + 3.63300071705185345650e+00*math.pow(alt,2)*rpm + 3.28924192801159143151e-01*math.pow(alt,4) -1.94042758759379180278e-01*math.pow(alt,3)*rpm
	if rpm>stop then
		corr_ff=0
	end
	return corr_ff
end
function update()
	-- Environmental Variables
	local rpm1=get(eng1_N2)
	local rpm2=get(eng2_N2)
	local rpm3=get(eng3_N2)
	local rpm_nom=get(nom_n2)
	local rpm_max=get(max_n2)
	local temp_out=get(oat)
	local d_isa=get(isa_temp_d)
	local passed=get(frame_time)
	local ias=get(indicated_airspeed)*1.852
	local alt_baro = get(msl_alt) / 3.28084
	local min_idle=get(flt_idle)
	local filling_1=get(fill_1) -- fuel lines filling at pump start.
	local filling_2=get(fill_2)
	local filling_3=get(fill_3)
	local corr_stop=interpolate(idle_corr_stop,alt_baro/1000)
	local corr_spd=interpolate(idle_ias_tbl,ias)
	-- FM Fuel Flow
	FF_1 = get(ENGN_FF_1) * 3600
	FF_2 = get(ENGN_FF_2) * 3600
	FF_3 = get(ENGN_FF_3) * 3600
	-- calculate nom RPM FF corr
	local corr_shift_x=interpolate(nom_ff_shift_x_tbl,temp_out)
	local corr_peak=1-interpolate(nom_ff_shift_y_tbl,temp_out)
	-- Engine 1 --
	--nominal power corr
	local corr_1=0
	if FF_1>(5800-corr_shift_x-1000) and FF_1<(5800-corr_shift_x) then
		corr_1=corr_peak/1000*(FF_1-5800+corr_shift_x+1000)
	elseif FF_1>=(5800-corr_shift_x) and FF_1<(5800-corr_shift_x+200) then
		corr_1=corr_peak-corr_peak/200*(FF_1-5800+corr_shift_x)
	end
	-- ISA difference corr
	local FF_d_isa_corr=1
	if d_isa>0 then
		FF_d_isa_corr=2.50083192258074888824e-06*math.pow(d_isa,3) -7.63080093350348358065e-05*math.pow(d_isa,2) + 4.75516247194095274115e-03*d_isa + 1.00000000000000000000e+00
	else
		FF_d_isa_corr=0.006265*d_isa+1
	end	
	FF_d_isa_corr=1-math.max(0.8,FF_d_isa_corr)
	-- fadeout isa difference corr above nom RPM
	local FF_isa_corr_1_fade=1
	if rpm1>rpm_nom then
		FF_isa_corr_1_fade=1-1/(rpm_max-rpm_nom)*(rpm1-rpm_nom)
	elseif rpm1>=rpm_max then
		FF_isa_corr_1_fade=0
	end
	-- KPP (anti surg bleed valves) FF correction
	local KPP_corr_1=1+0.1*get(kpp1)
	-- idle FF correction
	-- local corr_idle=math.min(16.84*min_idle-1120,120)*interpolate(idle_ff_blend_tbl,ias)
	-- local corr_idle_1=0
	-- local idle_corr_fade=interpolate(idle_corr_fade_tbl,alt_baro/1000)
	-- if rpm1<min_idle+idle_corr_fade then
		-- corr_idle_1=corr_idle-corr_idle/idle_corr_fade*(rpm1-min_idle)
	-- end
	local corr_idle_1=idle_ff_blend(alt_baro,rpm1,corr_stop)*corr_spd
	if rpm1<min_idle-0.5 then
		corr_idle_1=0
	end
	--set(db1,corr_idle_1)
	-- total correction
	FF_1_corr=FF_1*(1-FF_d_isa_corr*FF_isa_corr_1_fade*interpolate(isa_corr_alt_fade_tbl,alt_baro/1000))*(1-corr_1)*KPP_corr_1+corr_idle_1+1500*bool2int(filling_1~=filling_1_prev)
	-- Engine 2 --
	--nominal power corr
	local corr_2=0
	if FF_2>(5800-corr_shift_x-1000) and FF_2<(5800-corr_shift_x) then
		corr_2=corr_peak/1000*(FF_2-5800+corr_shift_x+1000)
	elseif FF_2>=(5800-corr_shift_x) and FF_2<(5800-corr_shift_x+200) then
		corr_2=corr_peak-corr_peak/200*(FF_2-5800+corr_shift_x)
	end
	-- fadeout isa difference corr above nom RPM
	local FF_isa_corr_2_fade=1
	if rpm2>rpm_nom then
		FF_isa_corr_2_fade=1-1/(rpm_max-rpm_nom)*(rpm2-rpm_nom)
	elseif rpm2>=rpm_max then
		FF_isa_corr_2_fade=0
	end
	-- KPP (anti surg bleed valves) FF correction
	local KPP_corr_2=1+0.1*get(kpp2)
	-- idle FF correction
	--local corr_idle=math.min(16.84*min_idle-1120,120)*interpolate(idle_ff_blend_tbl,ias)
	local corr_idle_2=idle_ff_blend(alt_baro,rpm2,corr_stop)*corr_spd
	-- if rpm2<min_idle+idle_corr_fade then
		-- corr_idle_2=corr_idle-corr_idle/idle_corr_fade*(rpm2-min_idle)
	-- end
	if rpm2<min_idle-0.5 then
		corr_idle_2=0
	end
	-- total correction
	FF_2_corr=FF_2*(1-FF_d_isa_corr*FF_isa_corr_2_fade*interpolate(isa_corr_alt_fade_tbl,alt_baro/1000))*(1-corr_2)*KPP_corr_2+corr_idle_2+1500*bool2int(filling_2~=filling_2_prev)

	-- Engine 2 --
	--nominal power corr
	local corr_3=0
	if FF_3>(5800-corr_shift_x-1000) and FF_3<(5800-corr_shift_x) then
		corr_3=corr_peak/1000*(FF_3-5800+corr_shift_x+1000)
	elseif FF_3>=(5800-corr_shift_x) and FF_3<(5800-corr_shift_x+200) then
		corr_3=corr_peak-corr_peak/200*(FF_3-5800+corr_shift_x)
	end
	-- fadeout isa difference corr above nom RPM
	local FF_isa_corr_3_fade=1
	if rpm3>rpm_nom then
		FF_isa_corr_3_fade=1-1/(rpm_max-rpm_nom)*(rpm3-rpm_nom)
	elseif rpm3>=rpm_max then
		FF_isa_corr_3_fade=0
	end
	-- KPP (anti surg bleed valves) FF correction
	local KPP_corr_3=1+0.1*get(kpp3)
	-- idle FF correction
	--local corr_idle=math.min(16.84*min_idle-1120,120)*interpolate(idle_ff_blend_tbl,ias)
	local corr_idle_3=idle_ff_blend(alt_baro,rpm3,corr_stop)*corr_spd
	-- if rpm3<min_idle+idle_corr_fade then
		-- corr_idle_3=corr_idle-corr_idle/idle_corr_fade*(rpm3-min_idle)
	-- end
	if rpm3<min_idle-0.5 then
		corr_idle_3=0
	end
	-- icing correction
	local ice1=1+get(eng1_ice)*0.4 
	local ice2=1+get(eng2_ice)*0.3
	local ice3=1+get(eng3_ice)*0.4
	-- total correction
	FF_3_corr=FF_3*(1-FF_d_isa_corr*FF_isa_corr_3_fade*interpolate(isa_corr_alt_fade_tbl,alt_baro/1000))*(1-corr_3)*KPP_corr_3+corr_idle_3+1500*bool2int(filling_3~=filling_3_prev)
	-- check for NaN
	if FF_1_corr~=FF_1_corr then
		FF_1_corr=FF_1
	end
	if FF_2_corr~=FF_2_corr then
		FF_2_corr=FF_2
	end
	if FF_3_corr~=FF_3_corr then
		FF_3_corr=FF_2
	end
	filling_1_prev=filling_1
	filling_2_prev=filling_2
	filling_3_prev=filling_3
	-- Limit
	FF_1_corr=math.max(0,math.min(FF_1_corr*ice1,6100))
	FF_2_corr=math.max(0,math.min(FF_2_corr*ice2,6100))
	FF_3_corr=math.max(0,math.min(FF_3_corr*ice3,6100))
	-- Correct tank one quantity
	local delta_FF=(FF_1_corr-FF_1+FF_2_corr-FF_2+FF_3_corr-FF_3)/3600*passed
	
	-- rpm_1_lst=rpm_1
	-- rpm_2_lst=rpm_2
	-- rpm_3_lst=rpm_3

	local tank1=get(fuel_q_1)
	if tank1-delta_FF<0 then
		delta_FF=0
	end

	
	--SFC correction --
	if alt_baro>12000 then
		alt_baro=12000
	end
	local SFC_high_corr=-3.5654285714e-07*math.pow(alt_baro/1000-0.4,2) + 6.3865600000e-06*(alt_baro/1000-0.4) -2.8599554857e-05
	local SFC_low_corr=4.01217052476160817406e-09*math.pow(alt_baro/1000,4) -1.06437700349348019075e-07*math.pow(alt_baro/1000,3) + 8.35986580814638958231e-07*math.pow(alt_baro/1000,2) -1.72616341620276840832e-06*alt_baro/1000 + 6.15940530316897536774e-07
	SFC_low_corr=(SFC_low_corr+4.37511e-07)*1.25
	if alt_baro-400<9000 then
		SFC_high_corr=0
	end
	if alt_baro<1300 then
		SFC_low_corr=0
	end
	local idle_fuel=interpolate(idle_ff_tbl,alt_baro/1000)
	-- local temp=get(temp_SL)
	-- local press=get(press_SL)*25.4
	-- temp=temp+(760-press)/40*14.7
	local TO_sfc_corr=0.001621*(d_isa+15)+0.9725
	local MASTER = get(ismaster) ~= 1	
	-- reverse corr
	--local tas=get(true_airspeed)
	--local rev_L_corr=1--+interpolate(rev_corr_tbl,tas)*get(revers_flap_L)*math.max(0,(rpm1-55.5)/(89-55.5))
	--local rev_R_corr=1--+interpolate(rev_corr_tbl,tas)*get(revers_flap_R)*math.max(0,(rpm3-55.5)/(89-55.5))
	if MASTER then
		set(Flow_1,FF_1_corr)
		set(Flow_2,FF_2_corr)
		set(Flow_3,FF_3_corr)
		set(sfc_to_rpm,rpm_max)
		set(idle_FF,idle_fuel)
		set(fuel_q_1,math.max(0,tank1-delta_FF))
		-- set(sfc_half_lo,sfc_half*corr_half)
		set(sfc_full_lo,SFC_lo_base-SFC_low_corr)
		set(sfc_full_hi,SFC_hi_base-SFC_high_corr)
		set(to_sfc,0.000017066488*TO_sfc_corr)
		-- set(sfc_full_hi,sfc_full)
		-- set(idle_FF,idle_fuel*idle_corr)
	end
	
end