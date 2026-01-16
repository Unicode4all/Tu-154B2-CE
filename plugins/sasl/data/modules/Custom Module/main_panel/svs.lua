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
defineProperty("uvo_press", globalPropertyf("sim/custom/uvo15_press_knob"))
defineProperty("svs_alt_rel", globalPropertyf("tu154b2/custom/svs/svs_alt_rel"))
-- caps
defineProperty("sensors_caps", globalPropertyi("tu154b2/custom/anim/sensors_caps"))  -- чехлы и крышки
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1"))
defineProperty("temp_t", globalPropertyf("sim/cockpit2/temperature/outside_air_LE_temp_degc"))
defineProperty("true_mach", globalPropertyf("sim/flightmodel/misc/machno"))
defineProperty("p_smoothed", globalPropertyf("tu154b2/custom/svs/p_s_smoothed"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local p_err_tbl = {{ -1000, -41 }, -- this emulates the SVS's piecewise-linear pressure signal transfer function
					{ 13047, -41 },
					{ 14101, 0 },
					{ 15276, -47 },
					{ 16510, 0 },
					{ 17885, -56 },
					{ 19330, 0 },
					{ 20939, -65 },
					{ 22632, 0 },
					{ 24490, -60 },
					{ 26436, 0 },
					{ 28541, -66 },
					{ 30742, 0 },
					{ 33118, -72 },
					{ 35600, 0 },
					{ 38273, -79 },
					{ 41061, 0 },
					{ 44059, -86 },
					{ 47181, 0 },
					{ 50527, -94 },
					{ 54020, 0 },
					{ 57751, -102 },
					{ 61640, 0 },
					{ 65789, -110 },
					{ 70109, 0 },
					{ 73768, -76 },
					{ 77541, 0 },
					{ 81509, -81 },
					{ 85599, 0 },
					{ 89896, -86 },
					{ 94322, 0 },
					{ 97784, -51 },
					{ 101325, -10 },
					{ 200000, 0 }}

-- local alt_tbl = {{  1000, 15000 },    
				-- { 12045, 15000 },
				-- { 14102, 14000 },
				-- { 16510, 13000 }, 
				-- { 19330, 12000 },
				-- { 22632, 11000 },
				-- { 26436, 10000 },
				-- { 30742, 9000 },
				-- { 35600, 8000 },
				-- { 41061, 7000 },
				-- { 47181, 6000 },
				-- { 54020, 5000 },
				-- { 61640, 4000 },
				-- { 70109, 3000 },
				-- { 77541, 2200 },
				-- { 85599, 1400 },
				-- { 94322, 600 },
				-- { 101325, 0 },
				-- { 103750, -200 }, 
				-- { 113929, -1000 },
				-- { 500000, -1000}}



local mach_act = 0
local tas_act = 0
local alt_act = 0
local alt_rel_act = 0
local mach = 0
local tas = 0
local altitude = 0
local altitude_rel = 0
local T_m=3 -- low pass constants
local T_stat=2
local T_term=3
local p_q=0
local p_d=0
local p_q_ind=0
local p_static=101300
local T_le=288
local pwr_timer=0
local start_timer=0
local t_sens=get(temp)
local heat = 0
local pwr_th=0.3
local static_pressure_LP=101300
function update()
	local passed = get(frame_time)
	local T_amb=get(temp)
	--T_term=get(db2)
	T_le=passed/(T_term+passed)*get(temp_t)+T_le*T_term/(T_term+passed)
	-- smooth pressure with low-pass
	--T_stat=get(db1)
	static_pressure_LP=passed/(T_stat+passed)*get(p_stat)+static_pressure_LP*T_stat/(T_stat+passed)
	set(p_smoothed,static_pressure_LP)
	-- power
	local power = get(svs_on) == 1 and get(bus27_volt) > 13 and get(bus36_volt) > 30 and get(bus115_volt) > 100 
	t_sens=t_sens+(-(t_sens-T_amb)*0.005+2.8*heat)*0.035*passed -- sensors temp
	if power and get(svs_heat) == 1 and t_sens<45 then
		heat=1
	elseif not power or get(svs_heat) == 0 or t_sens>50 then
		heat=0
	end
	--(-15*math.min(T_amb,30)+1350)/(1+bool2int(heat))
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
	--set(db1,t_sens)
	
	--local blocked = get(sensors_caps) == 1
	
	-- current consumption
	local cc_27 = bool2int(power) * 150/27 
	local cc_36 = bool2int(power) * 180/36
	local cc_115 = bool2int(power) * 150/115 + heat * 200/115
	
	set(svs27_cc, cc_27)
	set(svs36_cc, cc_36)
	set(svs115_cc, cc_115)
	
	-- mach number
	local pitot_fail = get(rel_pitot) == 6
	local static_fail = get(static_fail_L) == 6 or get(stat_ice)>0.6
	--if not pitot_fail and power and not static_fail then mach_act = get(mach_sim) end

	
	
	-- altitude
	--local alt_QNE = get(msl_alt) * 3.28083 + (29.92 - get(msl_press)) * 1000  -- calculate altitude in feet above standart pressure
	local alt_QNE = get(press_alt)
	--local static_pressure=get(p_smoothed
	if not static_fail and get(sensors_caps) < 1 then 
		p_static=static_pressure_LP-interpolate(p_err_tbl,static_pressure_LP)*(-0.02727*math.min(t_sens,30)+ 1.682)
		--p_static=p_static-- -interpolate(p_err_tbl,p_static)*(-0.02727*math.min(t_sens,25)+ 1.682)
		-- if pwr then
			-- altitude = alt_QNE * 0.3048
		-- end
	end
	if get(sensors_caps) < 1 and not pitot_fail then
		p_q=(static_pressure_LP*math.pow(1+(1.4-1)/2*math.pow(get(true_mach),2),1.4/(1.4-1))-static_pressure_LP)*(1-math.pow(get(ppd_ice),2))
		--p_q=get(q)
	end
	-- low pass for Q
	p_q_ind=passed/(T_m+passed)*p_q + p_q_ind*T_m/(T_m+passed)
	p_d=math.max(0,p_q_ind)
	if test then -- svs check
		p_static=21000
		p_d=11100
		--altitude=12000
	end 
	
		--set(db1,altitude-alt_QNE*0.3048)
	-- compute values
	if power then
		if pwr and get(svs_fail) == 0 then
			mach=math.sqrt(2/(1.4-1)*(math.pow(p_d/p_static+1,(1.4-1)/1.4)-1))
			local T_stat=(273+T_le*(1-bool2int(test)))/(1 + math.pow(mach,2) * (1.4-1)/2)
			local t_avg=(288.15-T_stat)/2*11000/math.max(11000,altitude)+T_stat
			altitude=28.96*t_avg*math.log(101325/p_static)
			altitude_rel=28.96*t_avg*math.log(get(uvo_press)*133.322/p_static)
			--tas=23.9624*math.sqrt(p_d/p_static*(273.15+T_amb))* 3.6
			--mach=tas/3.6/math.sqrt(1.4*287.1*(273.15+T_amb))
			
			tas=math.sqrt(9.81*1.4*28.96)*mach/math.sqrt(1+math.pow(mach,2)/5)*math.sqrt(273.15+T_le*(1-bool2int(test)))*3.6

		end
		altitude=math.max(altitude,-1000)
		altitude_rel=math.max(altitude_rel,-1000)
		
		if tas < 120 then tas = 0 end
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
		
		local alt_rel_delta=(altitude_rel-alt_rel_act)*passed*10		
		if alt_rel_delta>1/40*passed*12000 then
			alt_rel_delta=1/40*passed*12000 
		elseif alt_rel_delta<-1/40*passed*12000  then
			alt_rel_delta=-1/40*passed*12000 
		end	
		alt_rel_act=alt_rel_act+alt_rel_delta
	end
	local true_AS=get(true_airspeed)
	-- set(db1,tas/3.6-true_AS)
	-- set(db2,tas)
	-- set(db3,mach)
	-- set(db4,p_q_ind)
	if start_timer<10 then
		if get(rpm_high_1)>10 then
			t_sens=45
		end
		start_timer=start_timer+passed
	end
	local MASTER = get(ismaster) ~= 1	
	

	if MASTER then	
		
		
		-- results
		set(mach_svs, mach_act)
		set(alt_svs, alt_act)	
		set(svs_alt_rel,alt_rel_act)
		set(tas_svs, tas_act)
		set(tas_sc,true_AS)
		set(svs_ready,bool2int(pwr))

	end



end


