-- this is SVS logic

-- sources
defineProperty("mach_sim", globalPropertyf("sim/flightmodel/misc/machno")) -- Mach number

defineProperty("press_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))

--defineProperty("airspeed", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")) -- indicated airspeed in KTS
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel/position/true_airspeed")) -- true airspeed in mps

-- controls
defineProperty("svs_contr", globalPropertyi("tu154b2/custom/buttons/ovhd/svs_contr")) -- кнопка контроля СВС
defineProperty("svs_on", globalPropertyi("tu154b2/custom/switchers/ovhd/svs_on")) -- выключатель СВС
defineProperty("svs_heat", globalPropertyi("tu154b2/custom/switchers/ovhd/svs_heat")) -- обогрев СВС

-- failures
defineProperty("rel_pitot", globalPropertyi("sim/operation/failures/rel_pitot_stby")) -- Pitot 1 - Blockage
defineProperty("static_fail_L", globalPropertyi("sim/operation/failures/rel_static_stby"))  -- static fail
--defineProperty("static_fail_R", globalPropertyi("sim/operation/failures/rel_static2"))  -- static fail
defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail
defineProperty("ppd_ice", globalPropertyf("sim/flightmodel/failures/pitot_ice_stby"))  
defineProperty("stat_ice", globalPropertyf("sim/flightmodel/failures/stat_ice_stby"))  
-- results
defineProperty("mach_svs", globalPropertyf("tu154b2/custom/svs/machno")) -- Mach number
defineProperty("alt_svs", globalPropertyf("tu154b2/custom/svs/altitude")) -- Altitude by 1013 hpa
defineProperty("tas_svs", globalPropertyf("tu154b2/custom/svs/true_airspeed")) -- TAS

-- power
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36
defineProperty("bus115_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в

defineProperty("svs27_cc", globalPropertyf("tu154b2/custom/svs/power_27cc")) -- потребление тока
defineProperty("svs36_cc", globalPropertyf("tu154b2/custom/svs/power_36cc")) -- потребление тока
defineProperty("svs115_cc", globalPropertyf("tu154b2/custom/svs/power_115cc")) -- потребление тока
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("tas_sc", globalPropertyf("tu154b2/custom/SC/true_airspeed"))
defineProperty("p_stat", globalPropertyf("sim/weather/aircraft/barometer_current_pas"))
defineProperty("q", globalPropertyf("sim/flightmodel/misc/Qstatic"))
defineProperty("temp", globalPropertyf("sim/weather/aircraft/temperature_ambient_deg_c"))
defineProperty("svs_ready", globalPropertyi("tu154b2/custom/svs/svs_ready"))
-- caps
defineProperty("sensors_caps", globalPropertyi("tu154b2/custom/anim/sensors_caps"))  -- чехлы и крышки
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




--[[

local alt_kus_tbl = {{ -50000000, 0.5},    -- bugs workaround
				  { 0, 1 },    -- on standard pressure zero level
          		  {  2000, 1.0288 },
				  {  4000, 1.0571 },
				  {  6000, 1.0879 },
				  {  8000, 1.1205 },
				  {  10000, 1.1549 },
				  {  12000, 1.1901 },
				  {  14000, 1.2223 },
				  {  16000, 1.2558 },  
          		  {  18000, 1.2924 },   
          		  {  20000, 1.3341 },
				  {  22000, 1.3708 },
				  {  24000, 1.4154 },
				  {  26000, 1.4558 },
				  {  28000, 1.5005 },
				  {  30000, 1.5500 },
				  {  32000, 1.6039 },
				  {  34000, 1.6597 },
				  {  36000, 1.7164 },
				  {  38000, 1.7920 },
				  {  40000, 1.8762 },
				  {  42000, 1.9653 },
          		  {  10000000, 10 }}   -- linear above
				  
--]]
local mach_act = 0
local tas_act = 0
local alt_act = 0
local mach = 0
local tas = 0
local altitude = 0
local T_m=3
local p_q=0
local p_d=0
local p_q_ind=0
local p_static=101300
local pwr_timer=0
local start_timer=0
function update()
	local passed = get(frame_time)
	local T_amb=get(temp)
	-- power
	local power = get(svs_on) == 1 and get(bus27_volt) > 13 and get(bus36_volt) > 30 and get(bus115_volt) > 100 
	local heat = power and get(svs_heat) == 1
	local pwr_th=(-15*math.min(T_amb,30)+1350)/(1+bool2int(heat))
	if power then
		if pwr_timer<pwr_th*2 then
			pwr_timer=pwr_timer+passed
		end
	else
		if pwr_timer>0 then
			pwr_timer=pwr_timer+passed
		end
	end
	local pwr=pwr_timer>pwr_th and power
	local test = pwr and get(svs_contr) == 1
	
	
	--local blocked = get(sensors_caps) == 1
	
	-- current consumption
	local cc_27 = bool2int(power) * 150/27 + bool2int(test) * 2 
	local cc_36 = bool2int(power) * 180/36
	local cc_115 = bool2int(power) * 150/115 + bool2int(heat) * 200/115
	
	set(svs27_cc, cc_27)
	set(svs36_cc, cc_36)
	set(svs115_cc, cc_115)
	
	
	-- if test then -- svs mach check
		-- tst2=tst2+passed/20
		-- if tst2>1 then
			-- tst2=1
		-- end
	-- elseif not test and tst2>0 then
		-- tst2=tst2-passed/20
		-- if tst2<0 then
			-- tst2=0
		-- end
	-- end 
	-- if test then -- svs speed check
		-- tst3=tst3+passed/10
		-- if tst3>1 then
			-- tst3=1
		-- end
	-- elseif not test and tst3>0 then
		-- tst3=tst3-passed/10
		-- if tst3<0 then
			-- tst3=0
		-- end
	-- end 
		
	-- mach number
	local pitot_fail = get(rel_pitot) == 6
	local static_fail = get(static_fail_L) == 6 or get(stat_ice)>0.6
	--if not pitot_fail and power and not static_fail then mach_act = get(mach_sim) end

	
	
	-- altitude
	--local alt_QNE = get(msl_alt) * 3.28083 + (29.92 - get(msl_press)) * 1000  -- calculate altitude in feet above standart pressure
	local alt_QNE = get(press_alt)
	
	if not static_fail and get(sensors_caps) < 1 then 
		p_static=get(p_stat)
		if pwr then
			altitude = alt_QNE * 0.3048
		end
	end
	if get(sensors_caps) < 1 and not pitot_fail then
		p_q=get(q)*(1-math.pow(get(ppd_ice),2))
	end
	-- low pass for Q
	p_q_ind=passed/(T_m+passed)*p_q + p_q_ind*T_m/(T_m+passed)
	p_d=p_q_ind
	if test then -- svs alt check
		p_static=19400
		p_d=8700
		T_amb=-30
		altitude=12000
	end 
	
	
	if power then
		if pwr and get(svs_fail) == 0 then
			tas=23.9624*math.sqrt(p_d/p_static*(273.15+T_amb))* 3.6
			mach=tas/3.6/math.sqrt(1.4*287.1*(273.15+T_amb))
		end
		if tas < 180 then tas = 0 end
		local mach_delta=(mach-mach_act)*passed
		if mach_delta>1/20*passed*0.8 then -- limit needle speed
			mach_delta=1/20*passed*0.8 
		elseif mach_delta<-1/20*passed*0.8  then
			mach_delta=-1/20*passed*0.8 
		end
		mach_act=mach_act+mach_delta
		local tas_delta=(tas-tas_act)*passed*10		
		if tas_delta>1/10*passed*900 then
			tas_delta=1/10*passed*900 
		elseif tas_delta<-1/10*passed*900  then
			tas_delta=-1/10*passed*900 
		end		
		tas_act=tas_act+tas_delta
		local alt_delta=(altitude-alt_act)*passed*10		
		if alt_delta>1/40*passed*12000 then
			alt_delta=1/40*passed*12000 
		elseif alt_delta<-1/40*passed*12000  then
			alt_delta=-1/40*passed*12000 
		end	
		alt_act=alt_act+alt_delta
	end
	local true_AS=get(true_airspeed)
	-- set(db1,tas/3.6-true_AS)
	-- set(db2,tas)
	-- set(db3,mach)
	-- set(db4,p_q_ind)
	if start_timer<10 then
		if get(rpm_high_1)>10 then
			pwr_timer=pwr_th*2
		end
	else
		start_timer=start_timer+passed
	end
	local MASTER = get(ismaster) ~= 1	
	

	if MASTER then	
		
		
		-- results
		set(mach_svs, mach_act)
		set(alt_svs, alt_act)	
		set(tas_svs, tas_act)
		set(tas_sc,true_AS)
		set(svs_ready,bool2int(pwr))

	end



end


