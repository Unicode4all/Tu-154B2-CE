-- this is KSKV logic's air bleed part

-- engines
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3
defineProperty("apu_n1", globalPropertyf("tu154b2/custom/eng/apu_n1")) -- обороты ВСУ

-- current altitude
defineProperty("msl_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))  -- pressure altitude in feet
--defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg


-- controls
defineProperty("psvp_left_on", globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_left_on")) -- ПСВП лев
defineProperty("psvp_right_on", globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_right_on")) -- ПСВП прав
defineProperty("psvp_left_on_cap", globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_left_on_cap")) -- ПСВП лев
defineProperty("psvp_right_on_cap", globalPropertyi("tu154b2/custom/switchers/airbleed/psvp_right_on_cap")) -- ПСВП прав
defineProperty("air_valve_left", globalPropertyi("tu154b2/custom/switchers/airbleed/air_valve_left")) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
defineProperty("air_valve_right", globalPropertyi("tu154b2/custom/switchers/airbleed/air_valve_right")) -- краны наддува. -1 закр, 0 - нейтр, +1 откр
defineProperty("emerg_decompress", globalPropertyi("tu154b2/custom/switchers/airbleed/emerg_decompress")) -- сброс давления
defineProperty("emerg_decompress_cap", globalPropertyi("tu154b2/custom/switchers/airbleed/emerg_decompress_cap")) -- сброс давления
defineProperty("eng_valve_1", globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_1")) -- отбор воздуха от двигателей
defineProperty("eng_valve_2", globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_2")) -- отбор воздуха от двигателей
defineProperty("eng_valve_3", globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_3")) -- отбор воздуха от двигателей

-- failures
defineProperty("airbleed_1", globalPropertyi("tu154b2/custom/failures/airbleed_1")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_2", globalPropertyi("tu154b2/custom/failures/airbleed_2")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_3", globalPropertyi("tu154b2/custom/failures/airbleed_3")) -- отказ отбора воздуха от двигателя

defineProperty("psvp_fail_left", globalPropertyi("tu154b2/custom/failures/psvp_fail_left")) -- отказ ПСВП
defineProperty("psvp_fail_right", globalPropertyi("tu154b2/custom/failures/psvp_fail_right")) -- отказ ПСВП



-- sources
defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- проседание стойки шасси

-- internal datarefs
defineProperty("air_usage_L", globalPropertyf("tu154b2/custom/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154b2/custom/bleed/air_usage_R")) -- расход воздуха прав

defineProperty("eng_airvalve_1", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_1")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_2", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_3", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_3")) -- открытие отбора воздуха от двигателя

defineProperty("apu_air_doors", globalPropertyf("tu154b2/custom/eng/apu_air_doors")) -- положение створок для накачки воздуха

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("start_sys_work", globalPropertyf("tu154b2/custom/start/start_sys_work")) -- работа системы запуска



defineProperty("engine_bleed_sov_1", globalProperty("sim/cockpit2/bleedair/actuators/engine_bleed_sov[0]")) -- открытие отбора воздуха от двигателя
defineProperty("engine_bleed_sov_2", globalProperty("sim/cockpit2/bleedair/actuators/engine_bleed_sov[1]")) -- открытие отбора воздуха от двигателя
defineProperty("engine_bleed_sov_3", globalProperty("sim/cockpit2/bleedair/actuators/engine_bleed_sov[2]")) -- открытие отбора воздуха от двигателя
defineProperty("bleed_air", globalPropertyi("tu154b2/custom/kskv/bleed_avail"))
defineProperty("temp", globalPropertyf("sim/weather/aircraft/temperature_leadingedge_deg_c"))
defineProperty("rho", globalPropertyf("sim/weather/rho"))
defineProperty("cabin_altitude_ft", globalPropertyf("sim/cockpit/pressure/cabin_altitude_actual_ft"))
--defineProperty("tropo_alt", globalPropertyf("sim/weather/region/tropo_alt_m"))
defineProperty("valve_left", globalPropertyf("tu154b2/custom/bleedair/valve_left"))
defineProperty("valve_right", globalPropertyf("tu154b2/custom/bleedair/valve_right"))
defineProperty("bleed_1", globalPropertyf("tu154b2/custom/bleedair/eng_1_bleed"))
defineProperty("bleed_2", globalPropertyf("tu154b2/custom/bleedair/eng_2_bleed"))
defineProperty("bleed_3", globalPropertyf("tu154b2/custom/bleedair/eng_3_bleed"))
-- sim/cockpit2/bleedair/actuators/engine_bleed_sov

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control
defineProperty("real_psvp", globalPropertyi("sim/custom/t154cfg/apu_heat_start"))
true_AS = globalPropertyf("sim/flightmodel2/position/true_airspeed")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))



local air_usage_tbl = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 55, 250 },   --
				  {  65, 380 }, -- 
				  {  70, 600 }, -- 
				  {  80, 1010 }, -- 
				  {  85, 1100 }, -- 
				  {  90, 1190 }, --
				  {  95, 1270 }, --
				  {  100, 1320 }, -- 
          	      {  10000000, 1500 }}    -- bugs walkaround

local passed = get(frame_time)

local main_valve_L = 1
local main_valve_R = 1

local psvp_L = 1
local psvp_R = 1

local flow_left = 0
local flow_right = 0

local flow_left_psvp = 0
local flow_right_psvp = 0

local flow_left_prev = 0
local flow_right_prev = 0

local psvp_L_choke=0
local psvp_R_choke=0
local air_L=0
local air_R=0
local counter = 0
local start_timer=0
local notLoaded = true
local c_alt=0.00012
local vlv_psvp_L=1
local vlv_psvp_R=1
local c_psvp=0.01*0.6
local d_max=0.1
local MF_psvp_L=0
local MF_psvp_R=0
local function reset_vars()
	if get(rpm_high_1) < 10 and get(rpm_high_2) < 10 and get(rpm_high_3) < 10 then
		main_valve_L = 0
		main_valve_R = 0

		psvp_L = 0
		psvp_R = 0
		vlv_psvp_L=0
		vlv_psvp_R=0
		flow_left = 0
		flow_right = 0
	
	end
	
	notLoaded = false
end

function engine_airflow(altitude,cab_altitude,kvd,temperature,density,tas)
	local scale=-2.727*altitude/1000 +330-- flow meter scale
	local flow_low=3.8*math.pow(kvd,1.388)--flow over rpm at SL
	local flow_high=0.01289*math.pow(kvd,2.656)--flow over rpm at 11km
	local flow=flow_low*(1-math.min(altitude,11000)/11000)+flow_high*(math.min(altitude,11000)/11000) -- blend flow curves
	local temp_correction=-0.02*temperature+ 1.3 -- this accounts for increasing compressor pressure ratio at lower temps
	local q_add=density/2*math.pow(tas,2)*0.0003
	flow=flow/scale*density/1.225*(1+cab_altitude*0.00015)*temp_correction+q_add/3
	if flow<0 then
		flow=0
	end
	if flow~=flow then
		flow=0
	end
	return flow
end

function apu_airflow(altitude,cab_altitude,kvd,temperature,density,tas)
	local scale=-2.727*altitude/1000 +330
	local flow=4400*kvd/100--base flow at SL
	local temp_correction=-0.02*temperature+ 1.3
	local q_add=density/2*math.pow(tas,2)*0.0003
	flow=flow/scale*density/1.225*(1+cab_altitude*0.00015)*temp_correction+q_add/3
	if flow<0 then
		flow=0
	end
	if flow~=flow then
		flow=0
	end
	return flow
end

function update()
	passed = get(frame_time)
	counter = counter + passed
	if counter > 0.3 and notLoaded then reset_vars() end

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	

	if start_timer<30 then
		start_timer=start_timer+passed
	end
	
	local power_L = get(bus27_volt_left) > 13
	local power_R = get(bus27_volt_right) > 13
	
	-- calculate engines valves position
	local valve_1 = get(eng_airvalve_1)
	local valve_2 = get(eng_airvalve_2)
	local valve_3 = get(eng_airvalve_3)
	
	local valve_fail_1 = get(airbleed_1) == 1
	local valve_fail_2 = get(airbleed_2) == 1
	local valve_fail_3 = get(airbleed_3) == 1
	
	
	if power_L then
		if not valve_fail_1 then valve_1 = valve_1 + (get(eng_valve_1) * 2 - 1) * passed * 0.2
		else valve_1 = valve_1 - passed * 0.2 end

		if valve_1 > 1 then valve_1 = 1
		elseif valve_1 < 0 then valve_1 = 0 end
	end
	
	if power_R then
		if not valve_fail_2 then valve_2 = valve_2 + (get(eng_valve_2) * 2 - 1) * passed * 0.2
		else valve_2 = valve_2 - passed * 0.2 end
		
		if valve_2 > 1 then valve_2 = 1
		elseif valve_2 < 0 then valve_2 = 0 end	 
		
		if not valve_fail_3 then valve_3 = valve_3 + (get(eng_valve_3) * 2 - 1) * passed * 0.2
		else valve_3 = valve_3 - passed * 0.2 end
		
		if valve_3 > 1 then valve_3 = 1
		elseif valve_3 < 0 then valve_3 = 0 end	
	end
	
	-- calculate engines airbleed as a function of density and alititude (altitude compensates density drop through temperature drop)
	local acf_alt = get(msl_alt) * 0.3048  -- pressure altitude in meters
	local cab_alt=get(cabin_altitude_ft) * 0.3048
	local temp_le=get(temp)
	local dens=get(rho)
	local tas=get(true_AS)
	local eng_airflow_1 = valve_1 * engine_airflow(acf_alt,cab_alt,get(rpm_high_1),temp_le,dens,tas)*100--( 24.46 * math.exp(get(rpm_high_1)*0.03974)- 24.46) * alt_coef * temp_coef
	local eng_airflow_2 = valve_2 * engine_airflow(acf_alt,cab_alt,get(rpm_high_2),temp_le,dens,tas)*100--( 24.46 * math.exp(get(rpm_high_2)*0.03974)- 24.46) * alt_coef * temp_coef
	local eng_airflow_3 = valve_3 * engine_airflow(acf_alt,cab_alt,get(rpm_high_3),temp_le,dens,tas)*100--( 24.46 * math.exp(get(rpm_high_3)*0.03974)- 24.46) * alt_coef * temp_coef
	local eng_airflow_4 = get(apu_air_doors) * apu_airflow(acf_alt,cab_alt,get(apu_n1),temp_le,dens,tas)*100-- * alt_coef * temp_coef
	local bleed_air_available=bool2int(eng_airflow_1+eng_airflow_2+eng_airflow_3+eng_airflow_4>50)
	
	-- calculate main tubes valves
	local main_vlv_power_L = bool2int(power_L)
	local main_vlv_power_R = bool2int(power_R)
	local start_sys = get(start_sys_work) == 1
	if not start_sys then
		main_valve_L = main_valve_L + get(air_valve_left) * passed * 0.1 * main_vlv_power_L 
		main_valve_R = main_valve_R + get(air_valve_right) * passed * 0.1 * main_vlv_power_R 
	else
		main_valve_L = main_valve_L - passed * 0.1 * main_vlv_power_L 
		main_valve_R = main_valve_R - passed * 0.1 * main_vlv_power_R 		
	end
	
	if main_valve_L > 1 then main_valve_L = 1
	elseif main_valve_L < 0 then main_valve_L = 0 end
	
	if main_valve_R > 1 then main_valve_R = 1
	elseif main_valve_R < 0 then main_valve_R = 0 end
	flow_left = (eng_airflow_1 + eng_airflow_2 * 0.5 + eng_airflow_4 * 0.5) * main_valve_L
	flow_right = (eng_airflow_3 + eng_airflow_2 * 0.5 + eng_airflow_4 * 0.5) * main_valve_R
	
	-- calculate the PSVP position
	local psvp_power_L = get(psvp_left_on) == 1 and power_L and get(psvp_fail_left) == 0 and start_timer>20
	local psvp_power_R = get(psvp_right_on) == 1 and power_R and get(psvp_fail_right) == 0 and start_timer>20
	local psvp_mode=get(real_psvp)
	if psvp_mode==0 then
		-- good PSVP
		if not psvp_power_L then 
			psvp_L = psvp_L + passed
		else
			if flow_left < 590 then psvp_L = psvp_L + passed * 0.05
			elseif flow_left > 620 then psvp_L = psvp_L - passed * (flow_left - 620) * 0.1
			end
		end

		if not psvp_power_R then 
			psvp_R = psvp_R + passed
		else
			if flow_right < 590 then psvp_R = psvp_R + passed * 0.05
			elseif flow_right > 620 then psvp_R = psvp_R - passed * (flow_right - 620) * 0.1
			end
		end
		
		-- limits
		if psvp_L > 1 then psvp_L = 1
		elseif psvp_L < 0 then psvp_L = 0 end
		
		if psvp_R > 1 then psvp_R = 1
		elseif psvp_R < 0 then psvp_R = 0 end	
		
		flow_left = (eng_airflow_1 + eng_airflow_2 * 0.5 + eng_airflow_4 * 0.5) * main_valve_L
		flow_right = (eng_airflow_3 + eng_airflow_2 * 0.5 + eng_airflow_4 * 0.5) * main_valve_R
		-- PSVP
		if psvp_power_L and flow_left>flow_left_psvp then
			flow_left_psvp=20/(20+passed)*flow_left_psvp+passed/(20+passed)*flow_left-- low pass
		else
			flow_left_psvp=flow_left
		end
		-- Max Flow Limiter
		if flow_left_prev>flow_left_psvp then
			psvp_L_choke=psvp_L_choke+(flow_left_psvp-psvp_L_choke-625)*passed*0.9
		else
			psvp_L_choke=psvp_L_choke+(flow_left_psvp-psvp_L_choke-625)*passed*0.5
		end
		psvp_L_choke=math.max(psvp_L_choke,0)*bool2int(psvp_power_L)
		
		if psvp_power_R and flow_right>flow_right_psvp then
			flow_right_psvp=20/(20+passed)*flow_right_psvp+passed/(20+passed)*flow_right-- low pass smooth
		else
			flow_right_psvp=flow_right
		end
		if flow_right_prev>flow_right_psvp then
			psvp_R_choke=psvp_R_choke+(flow_right_psvp-psvp_R_choke-625)*passed*0.9
		else
			psvp_R_choke=psvp_R_choke+(flow_right_psvp-psvp_R_choke-625)*passed*0.5
		end
		psvp_R_choke=math.max(psvp_R_choke,0)*bool2int(psvp_power_R)
		flow_left_prev=flow_left_psvp
		flow_right_prev=flow_right_psvp	
		air_L=flow_left_psvp-psvp_L_choke
		air_R=flow_right_psvp-psvp_R_choke
		
		-- Flow Rate Limiter
		if air_L-get(air_usage_L)>25*passed and psvp_power_L then
			air_L=get(air_usage_L)+25*passed
		end
		if air_R-get(air_usage_R)>25*passed and psvp_power_R then
			air_R=get(air_usage_R)+25*passed
		end
	else
		-- Realistic PSVP
		-- a simple P-controller
		local psvp_tgt_L=0
		if psvp_power_L and flow_left>25 then
			psvp_tgt_L=650
		elseif psvp_power_L and flow_left<=25 then
			vlv_psvp_L=vlv_psvp_L-d_max*passed
		elseif not psvp_power_L then
			vlv_psvp_L=vlv_psvp_L+d_max*passed
		end
		d_tgt_L=(MF_psvp_L-psvp_tgt_L)/100
		vlv_psvp_L=vlv_psvp_L-c_psvp*d_tgt_L*passed
		if vlv_psvp_L>1 then
			vlv_psvp_L=1
		elseif vlv_psvp_L<0 then
			vlv_psvp_L=0
		end
		if psvp_power_L then
			MF_psvp_L=flow_left*vlv_psvp_L
		else
			MF_psvp_L=flow_left
		end
		local psvp_tgt_R=0
		if psvp_power_R and flow_right>25 then
			psvp_tgt_R=650
		elseif psvp_power_R and flow_right<=25 then
			vlv_psvp_R=vlv_psvp_R-d_max*passed
		elseif not psvp_power_R then
			vlv_psvp_R=vlv_psvp_R+d_max*passed
		end
		d_tgt_R=(MF_psvp_R-psvp_tgt_R)/100
		vlv_psvp_R=vlv_psvp_R-c_psvp*d_tgt_R*passed
		if vlv_psvp_R>1 then
			vlv_psvp_R=1
		elseif vlv_psvp_R<0 then
			vlv_psvp_R=0
		end
		if psvp_power_R then
			MF_psvp_R=flow_right*vlv_psvp_R
		else
			MF_psvp_R=flow_right
		end
		-- set(db1,vlv_psvp_L)
		-- set(db2,psvp_tgt_L)
		air_L=MF_psvp_L
		air_R=MF_psvp_R
	end
	-- set results
	set(eng_airvalve_1, valve_1)
	set(eng_airvalve_2, valve_2)
	set(eng_airvalve_3, valve_3)
	--set(db2,psvp_L_choke)
	-- set sim air bleed valves
	set(engine_bleed_sov_1, bool2int(valve_1 > 0.5))
	set(engine_bleed_sov_2, bool2int(valve_2 > 0.5))
	set(engine_bleed_sov_3, bool2int(valve_3 > 0.5))
	if eng_airflow_1==eng_airflow_1 and eng_airflow_2==eng_airflow_2 and eng_airflow_3==eng_airflow_3 and eng_airflow_4==eng_airflow_4 then
		set(air_usage_L, air_L)
		set(air_usage_R, air_R)
		set(bleed_air,bleed_air_available)
		set(valve_left,main_valve_L)
		set(valve_right,main_valve_R)
		set(bleed_1,eng_airflow_1*main_valve_L)
		set(bleed_2,eng_airflow_2*(main_valve_L+main_valve_R)/2)
		set(bleed_3,eng_airflow_3*main_valve_R)
	end


end	


end