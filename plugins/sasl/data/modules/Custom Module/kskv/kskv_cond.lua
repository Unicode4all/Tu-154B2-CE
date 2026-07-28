-- this is air conditioning part of KSKV logic
-- createGlobalPropertyf("tu154b2/custom/bleed/ksvk_debug1", 0)
-- createGlobalPropertyf("tu154b2/custom/bleed/ksvk_debug2", 0)


-- defineProperty("ksvk_debug1", globalPropertyf("tu154b2/custom/bleedksvk_debug1")) -- температура горячего воздуха в трубопроводе
-- defineProperty("ksvk_debug2", globalPropertyf("tu154b2/custom/bleed/ksvk_debug2")) -- температура в трубопроводе обогрева дверей

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- internal
defineProperty("air_usage_L", globalPropertyf("tu154b2/custom/bleed/air_usage_L")) -- расход воздуха лев
defineProperty("air_usage_R", globalPropertyf("tu154b2/custom/bleed/air_usage_R")) -- расход воздуха прав

defineProperty("hot_tube_t", globalPropertyf("tu154b2/custom/bleed/hot_tube_t")) -- температура горячего воздуха в трубопроводе
defineProperty("door_heat_tube_t", globalPropertyf("tu154b2/custom/bleed/door_heat_tube_t")) -- температура в трубопроводе обогрева дверей
defineProperty("cockpit_tube_t", globalPropertyf("tu154b2/custom/bleed/cockpit_tube_t")) -- температура в трубопроводе в кабину
defineProperty("cabin1_tube_t", globalPropertyf("tu154b2/custom/bleed/cabin1_tube_t")) -- температура в трубопроводе в салон 1
defineProperty("cabin2_tube_t", globalPropertyf("tu154b2/custom/bleed/cabin2_tube_t")) -- температура в трубопроводе в салон 2
defineProperty("cold_tube1_t", globalPropertyf("tu154b2/custom/bleed/cold_tube1_t")) -- температура в трубопроводе 1
defineProperty("cold_tube2_t", globalPropertyf("tu154b2/custom/bleed/cold_tube2_t")) -- температура в трубопроводе 2

defineProperty("cockpit_temp", globalPropertyf("tu154b2/custom/bleed/cockpit_temp")) -- температура в кабине
defineProperty("cabin_1_temp", globalPropertyf("tu154b2/custom/bleed/cabin_1_temp")) -- температура в салоне 1
defineProperty("cabin_2_temp", globalPropertyf("tu154b2/custom/bleed/cabin_2_temp")) -- температура в салоне 2

-- controls
defineProperty("cockpit_temp_set", globalPropertyi("tu154b2/custom/switchers/airbleed/cockpit_temp_set")) -- установка температуры кабины
defineProperty("cabin1_temp_set", globalPropertyi("tu154b2/custom/switchers/airbleed/cabin1_temp_set")) -- установка температуры салона
defineProperty("cabin2_temp_set", globalPropertyi("tu154b2/custom/switchers/airbleed/cabin2_temp_set")) -- установка температуры салона
defineProperty("cockpit_mode_set", globalPropertyi("tu154b2/custom/switchers/airbleed/cockpit_mode_set")) -- становка режима обогрева. 0 - нейтр. 1 - авто, 2 - хол, 3 - гор
defineProperty("cabin1_mode_set", globalPropertyi("tu154b2/custom/switchers/airbleed/cabin1_mode_set")) -- установка режима обогрева
defineProperty("cabin2_mode_set", globalPropertyi("tu154b2/custom/switchers/airbleed/cabin2_mode_set")) -- установка режима обогрева

defineProperty("left_sys_temp_set", globalPropertyi("tu154b2/custom/switchers/airbleed/left_sys_temp_set")) -- установка температуры левой магистрали
defineProperty("right_sys_temp_set", globalPropertyi("tu154b2/custom/switchers/airbleed/right_sys_temp_set")) -- установка температуры правой магистрали
defineProperty("left_sys_mode_set", globalPropertyi("tu154b2/custom/switchers/airbleed/left_sys_mode_set")) -- установка режима левой магистрали
defineProperty("right_sys_mode_set", globalPropertyi("tu154b2/custom/switchers/airbleed/right_sys_mode_set")) -- установка режима правой магистрали
defineProperty("left_vvr_mode_set", globalPropertyi("sim/custom/b2/vvr_1"))
defineProperty("right_vvr_mode_set", globalPropertyi("sim/custom/b2/vvr_2"))
defineProperty("art_on", globalPropertyi("sim/custom/b2/art"))

defineProperty("door_heat", globalPropertyi("tu154b2/custom/switchers/eng/door_heat")) -- обогрев дверей

defineProperty("skv_faster_work", globalPropertyi("tu154b2/custom/switchers/airbleed/skv_faster_work")) -- -1 - охлаждение ГК, 0 - выкл, +1 - ускоренноые режимы обогрева

-- sources
defineProperty("termo", globalPropertyf("sim/weather/temperature_ambient_c")) -- тепература воздуха
defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- скорость полета



defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3
defineProperty("apu_n1", globalPropertyf("tu154b2/custom/eng/apu_n1")) -- обороты ВСУ

defineProperty("eng_valve_1", globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_1")) -- отбор воздуха от двигателей
defineProperty("eng_valve_2", globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_2")) -- отбор воздуха от двигателей
defineProperty("eng_valve_3", globalPropertyi("tu154b2/custom/switchers/airbleed/eng_valve_3")) -- отбор воздуха от двигателей
defineProperty("apu_air_doors", globalPropertyf("tu154b2/custom/eng/apu_air_doors")) -- положение створок для накачки воздуха

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

-- failures
defineProperty("tth_left_fail", globalPropertyi("tu154b2/custom/failures/tth_left_fail")) -- отказ турбохолодильника
defineProperty("tth_right_fail", globalPropertyi("tu154b2/custom/failures/tth_right_fail")) -- отказ турбохолодильника

cockpit_door = globalPropertyi("tu154b2/custom/anim/cockpit_door")
px_door1 = globalPropertyi("tu154b2/custom/anim/pax_door_1")
px_door2 = globalPropertyi("tu154b2/custom/anim/pax_door_2")
px_door3 = globalPropertyi("tu154b2/custom/anim/pax_door_3")
window_left = globalPropertyi("tu154b2/custom/anim/cockpit_window_left")
window_right = globalPropertyi("tu154b2/custom/anim/cockpit_window_right")
srd_eject = globalPropertyi("sim/custom/b2/airflow_eject")
gear_defl = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")
pax1 = globalPropertyi("tu154b2/custom/payload/zone_1")
pax2 = globalPropertyi("tu154b2/custom/payload/zone_2")
pax3 = globalPropertyi("tu154b2/custom/payload/zone_4")
pax4 = globalPropertyi("tu154b2/custom/payload/zone_5")
pax5 = globalPropertyi("tu154b2/custom/payload/zone_6")
ard_temp = globalPropertyf("tu154b2/custom/kskv/ard_temp")
ard_obogr = globalPropertyf("tu154b2/custom/switchers/eng/tail_temp_heat")
press_diff = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_diff")
sbros_davl = globalPropertyf("tu154b2/custom/switchers/airbleed/emerg_decompress")
total_temp = globalPropertyf("sim/weather/aircraft/temperature_leadingedge_deg_c")
tas = globalPropertyf("sim/flightmodel2/position/true_airspeed")
bleed_avail = globalPropertyi("tu154b2/custom/kskv/bleed_avail")
rear_tech_compartment_T = globalPropertyf("tu154b2/custom/bleed/rear_tech_temp")
vvr_leak = globalPropertyi("tu154b2/custom/failures/vvr_leak")

-- bleed_air_1 = globalPropertyf("tu154b2/custom/bleedair/eng_1_bleed")
-- bleed_air_2 = globalPropertyf("tu154b2/custom/bleedair/eng_2_bleed")
-- bleed_air_3 = globalPropertyf("tu154b2/custom/bleedair/eng_3_bleed")
-- bleed_air_4 = globalPropertyf("tu154b2/custom/bleedair/apu_bleed")

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))

-- defineProperty("srd_set", globalPropertyf("tu154b2/custom/switchers/sard/sard_set"))
-- defineProperty("srd", globalPropertyf("sim/custom/switchers/sard/sard_cabin_press_set_osn"))
vr = globalPropertyi("sim/graphics/VR/enabled")
cover = globalPropertyi("tu154b2/custom/anim/sensors_caps")
gear_blocks = globalPropertyf("tu154b2/custom/anim/gear_blocks") -- Chocks. I know this shouldn't be here but since there's an initialization function at the end of this script I might just use it for the chocks
-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local eng_temp_tbl = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- 0.0
				  { 55, 240 },   --
				  { 95, 350 }, -- 
          	      {  10000000, 320 }}    -- bugs walkaround
				  
local vvr_coef_t = {{ -100000, 80.0 },    -- bugs walkaround
                  {  0, 50 }, -- 0.0
				  { 100, 100 },   --
          	      {  10000000, 120 }}    -- bugs walkaround
				  
local function vvr(Units,c_cool,t_cool,t_in)
	local L=0.4 -- VVR length
	local r=0.1 -- VVR tube radius
	local nTS=10 --how many timesteps in the modelling loop
	local t_out=t_in
	-- Flow-through time
	if Units > 0.05 then
		local F=330/3600*Units/1.225 -- Volumetric flow rate at N units
		local v=F/(math.pi*math.pow(r,2)) -- flow velocity
		local T_end=L/v
		local dt=T_end/nTS
		for i = 2, nTS do
		   t_out=t_out+(t_cool-t_out)*c_cool*dt
		end
		if t_out < t_cool then
			t_out = t_cool
		end
	else
		t_out=t_cool
	end
	return t_out
end

local termo_out = get(termo)
local hot_air_T_L = termo_out
local hot_air_T_R = termo_out
local hot_air_T = termo_out
local cold_air_T = termo_out
local t_ex = termo_out

local engines_air_T_L = termo_out
local engines_air_T_R = termo_out	
	
local cold_tube_T_L = termo_out
local cold_tube_T_R = termo_out

--local cold_tube_reg_L = 0.1 -- regulator
--local cold_tube_reg_R = 0.1 -- regulator
local cold_tube_vvr_reg_L = math.random()/2 -- regulator
local cold_tube_vvr_reg_R = cold_tube_vvr_reg_L -- regulator
local cold_tube_th_reg_L = math.random()/2 -- regulator
local cold_tube_th_reg_R = cold_tube_th_reg_L -- regulator

local cold_tube_act_L = termo_out
local cold_tube_act_R = termo_out

local t_tech = termo_out 

local door_heat_T = termo_out
local door_heat_reg = 0.0

local cockpit_T = termo_out
local cockpit_tube_temp = termo_out
local cockpit_reg = math.random(0.3, 0.6)

local cabin_1_T = termo_out
local cabin_1_tube_temp = termo_out
local cabin_1_reg = math.random(0.3, 0.6)

local cabin_2_T = termo_out
local cabin_2_tube_temp = termo_out
local cabin_2_reg = math.random(0.3, 0.6)

local art_vvr_L_pulse=0
local art_th_L_pulse=0
local art_vvr_R_pulse=0
local art_th_R_pulse=0
local art1_pause=12 -- dwell time for pipe temp regulation
local art2_pause=40 -- dwell time for cabin temp regulation
local art_cab_1_pulse=0
local art_cab_2_pulse=0
local art_cab_3_pulse=0
-- vvr heat exchanger cooling coefficient
local c_ex=0.02
-- cabin temp model coefficients
local c_amb=0.000075
local c_tube=2.5000e-07
local c_tube_cpt=4.0000e-07
local c_cab=0.0005
local c_cpt_door=0.001
local c_pen=0.4
local c_door=1
local c_ejt=0.01
local c_win=10
local c_pax=0.00002
local c_ard_heat=0.0003
local temp_ard=termo_out
local c_vvr=0.35
local c_dt=0.05
local start_timer=0
local vvr_hold_timer=0
local cabin_hold_timer=0
local c_psd=1.5
function update()
	local passed = get(frame_time)
	if start_timer<30 then
		start_timer=start_timer+passed
	end
	local power_L = get(bus27_volt_left) > 13
	local power_R = get(bus27_volt_right) > 13
	local power_AC = get(bus115_3_volt) > 105
	
	
	local airflow_L = get(air_usage_L)
	local airflow_R = get(air_usage_R)
	
	local termo_torm=get(total_temp)
	termo_out = get(termo)*2/3 + termo_torm/3
	--local IAS = get(airspeed) * 1.852
	local IAS = math.max(get(airspeed) * 1.852, 0)
	-- calculate hot air temperature
	local eng_vlv_1 = get(eng_valve_1)
	local eng_vlv_2 = get(eng_valve_2)
	local eng_vlv_3 = get(eng_valve_3)
	local eng_vlv_4 = get(apu_air_doors)
	local eng_T_1 = interpolate(eng_temp_tbl, get(rpm_high_1))
	local eng_T_2 = interpolate(eng_temp_tbl, get(rpm_high_2))
	local eng_T_3 = interpolate(eng_temp_tbl, get(rpm_high_3))


	local door1=get(px_door1)
	local door2=get(px_door2)
	local door3=get(px_door3)
	local door_cpt=get(cockpit_door)
	local win1=get(window_left)
	local win2=get(window_right)
	local pax_cab1=get(pax1)+get(pax2)
	local pax_cab2=get(pax3)+get(pax4)+get(pax5)
	local compressed=door1+door2+door3+win1+win2+get(sbros_davl)==0
	local ard_heat=termo_out
	if hot_air_T_R > 90 and get(ard_obogr)>0 then --ard heat, either through heater or ejected air
		ard_heat=100
	elseif compressed and (airflow_L+airflow_L>100) then
		ard_heat=(cabin_1_T+cabin_2_T)*(airflow_L+airflow_R)/1200
	end
	temp_ard=temp_ard+(termo_out-temp_ard+ard_heat-temp_ard)*passed*c_ard_heat
	if eng_vlv_1 + eng_vlv_2 + eng_vlv_4 > 0 then
		--engines_air_T = termo_out * 0.3 + (eng_T_1 + eng_T_2 + eng_T_3 + get(apu_n1) * eng_vlv_4 * 1.5) / (eng_vlv_1 + eng_vlv_2 + eng_vlv_3 + eng_vlv_4)*get(db1)	
		engines_air_T_L = termo_torm  + (eng_T_1 * eng_vlv_1 + eng_T_2 * eng_vlv_2 / 2 + get(apu_n1) * 2.3 * eng_vlv_4 / 2) / (eng_vlv_1 + eng_vlv_2 / 2 + eng_vlv_4 / 2)
	else
		engines_air_T_L = engines_air_T_L + (termo_torm - engines_air_T_L) * passed / 50
	end
	
	if eng_vlv_3 + eng_vlv_2 + eng_vlv_4 > 0 then
		engines_air_T_R = termo_torm  + (eng_T_3 * eng_vlv_3 + eng_T_2 * eng_vlv_2 / 2 + get(apu_n1) * 2.3 * eng_vlv_4 / 2) / (eng_vlv_3 + eng_vlv_2 / 2 + eng_vlv_4 / 2)
	else
		engines_air_T_R = engines_air_T_R + (termo_torm - engines_air_T_R) * passed / 50
	end
	if win1>0 and win1<1 then
		win1=0.05
	end
	if win2>0 and win2<1 then
		win2=0.05
	end
	-- first air-air heat exchanger (VVR)
	local vvr_coef = interpolate(vvr_coef_t,get(tas)) -- cooling efficiency rises with speed
	local service_air = get(bleed_avail) -- bleed air is needed for the forced-flow ejector which increases VVR effectivity on the ground
	if get(tas)< 10 and service_air == 0 then
		vvr_coef = 1
	end
	hot_air_T_L = vvr(airflow_L/100,vvr_coef,t_ex,engines_air_T_L)
	hot_air_T_R = vvr(airflow_R/100,vvr_coef,t_ex,engines_air_T_R)
	local c_ex2=c_ex * 0.75 * vvr_coef / 100
	-- heat exchanger temperature
	if (airflow_L+airflow_L>10) then
		t_ex=t_ex + ((engines_air_T_L-hot_air_T_L) / 2 + (engines_air_T_R-hot_air_T_R) / 2 - t_ex) * c_ex * passed + (termo_torm - t_ex) * c_ex2 * passed
	else
		t_ex = t_ex + (t_tech - t_ex * (1 - service_air) - termo_torm * service_air) * passed / (50-40*service_air)
	end
	-- c_vvr1=0.007353*engines_air_T -0.1471
    --hot_air_T= hot_air_T + (termo_torm - hot_air_T) * passed * (1.5 + IAS * 0.001 - (airflow_L + airflow_R) * 4.1665e-04)*0.23*c_vvr1
	-- set(db1,t_ex)
	-- set(db2,hot_air_T_L)
	-- set(db3,hot_air_T_R)
	-- set(db4,engines_air_T_L)
	-- set(db5,engines_air_T_R)
	-- rear tech compartment temperature
	local t_pipe = (engines_air_T_L + engines_air_T_R + hot_air_T_L  + hot_air_T_R) / 4
	t_tech = t_tech + (termo_torm - t_tech) * 0.0025 * passed + (t_pipe - t_tech) * 5.0000e-04 * passed * (1 + 9 * get(vvr_leak)) + (cabin_2_T - t_tech) * 5.0000e-04 * passed
	--hot_air_T = hot_air_T + (termo_out - hot_air_T) * passed * (1 + IAS * 0.001 * (airflow_L + airflow_R) * 0.0001) * 0.02
	
	---------------------------------------------------
	-- calculate cold tubes temperature
	-- put hot air into cold tubes
	-- = cold_tube_T_L + (hot_air_T - cold_tube_T_L) * ((airflow_L * 0.0001 + 1)) * passed * 0.5
	--cold_tube_T_R = cold_tube_T_R + (hot_air_T - cold_tube_T_R) * ((airflow_R * 0.0001 + 1)) * passed * 0.5
		
	-- initial cool by air radiators
	--cold_tube_T_L = cold_tube_T_L + (termo_out - cold_tube_T_L) * passed * (1 + IAS * 0.01) * 0.4
	--cold_tube_T_R = cold_tube_T_R + (termo_out - cold_tube_T_R) * passed * (1 + IAS * 0.01) * 0.4
	
	-- turbo-coolers
	local tth_L_mode = get(left_sys_mode_set)
	local tth_R_mode = get(right_sys_mode_set)
	
	local vvr_L_mode = get(left_vvr_mode_set)
	local vvr_R_mode = get(right_vvr_mode_set)
	local art_mode = get(art_on)*bool2int(power_AC)
	
	local tth_L_temp_set = get(left_sys_temp_set)
	local tth_R_temp_set = get(right_sys_temp_set)
	
	-- local tth_L_temp = cold_tube_T_L * math.max(1 - airflow_L * 0.002, 0) - 10 * math.min(airflow_L * 0.002, 1)
	-- if cold_tube_T_L < tth_L_temp then tth_L_temp = cold_tube_T_L end
	if art_th_L_pulse>=-1.25 and art_th_L_pulse<art1_pause then
		art_th_L_pulse=art_th_L_pulse+passed
	else
		art_th_L_pulse=-2.5
	end
	if art_vvr_L_pulse>=-1.1 and art_vvr_L_pulse<art1_pause then
		art_vvr_L_pulse=art_vvr_L_pulse+passed
	else
		art_vvr_L_pulse=-2.5
	end
	
	if power_L then
		if tth_L_mode == 1 and art_mode==1 and art_th_L_pulse<0 then -- auto mode
			if art_th_L_pulse==-2.5 then
				art_th_L_pulse=-1.25
			end
			if cold_tube_act_L > tth_L_temp_set + 1 and cold_tube_vvr_reg_L<0.01  then 
				cold_tube_th_reg_L = cold_tube_th_reg_L - passed * 0.02
			elseif cold_tube_act_L < tth_L_temp_set - 1 then 
				cold_tube_th_reg_L = cold_tube_th_reg_L + passed * 0.02 * bool2int(get(cold_tube1_t)<57)
			end
		elseif tth_L_mode == 2 then
			cold_tube_th_reg_L = cold_tube_th_reg_L - passed * 0.02
		elseif tth_L_mode == 3 then
			cold_tube_th_reg_L = cold_tube_th_reg_L + passed * 0.02
		end
		
		if vvr_L_mode == 1 and art_mode==1 and art_vvr_L_pulse<0  then -- auto mode
			if art_vvr_L_pulse==-2.5 then
				art_vvr_L_pulse=-1.1
			end
			if cold_tube_act_L < tth_L_temp_set - 1 and cold_tube_th_reg_L>0.99 then 
				cold_tube_vvr_reg_L = cold_tube_vvr_reg_L + passed * 0.02* bool2int(get(cold_tube1_t)<56)
			elseif cold_tube_act_L > tth_L_temp_set +1 then
				cold_tube_vvr_reg_L = cold_tube_vvr_reg_L - passed * 0.02
			end
		elseif vvr_L_mode == 2 then
			cold_tube_vvr_reg_L = cold_tube_vvr_reg_L - passed * 0.02
		elseif vvr_L_mode == 3 then
			cold_tube_vvr_reg_L = cold_tube_vvr_reg_L + passed * 0.02
		end
		if vvr_L_mode == 2 then
			vvr_hold_timer=vvr_hold_timer+passed
		else
			if vvr_hold_timer>5 and vvr_L_mode~=2 then 
				set(left_sys_mode_set,0)
				set(right_sys_mode_set,0)
				set(right_vvr_mode_set,0)
				if get(vr)==0 then
					set(cockpit_mode_set,0)
					set(cabin1_mode_set,0)
					set(cabin2_mode_set,0)
				end
			end
			vvr_hold_timer=0
		end
		
	end
	-- limits
	if cold_tube_th_reg_L < 0 then
		cold_tube_th_reg_L = 0
	elseif cold_tube_th_reg_L > 1 then
		cold_tube_th_reg_L = 1
	end
	
	if cold_tube_vvr_reg_L < 0 then
		cold_tube_vvr_reg_L = 0
	elseif cold_tube_vvr_reg_L > 1 then
		cold_tube_vvr_reg_L = 1
	end
	-- right tube temp
	c_vvr=0.35*math.min((-1.636e-06*math.pow(airflow_L,2)+0.001973*airflow_L+0.4055), 1)
	local tx_left_fail=get(tth_left_fail)
	local vent=math.max(math.min((cold_tube_th_reg_L+cold_tube_vvr_reg_L-cold_tube_th_reg_L*cold_tube_vvr_reg_L)+1-0.001667*airflow_L+tx_left_fail,1)-IAS/250,0,get(cover))
	local c_vvr2=  1.5*math.pow(vent,2) + 1	
    local cold_tube_L_vvr=hot_air_T_L*c_vvr*c_vvr2*(1-cold_tube_vvr_reg_L)+hot_air_T_L*cold_tube_vvr_reg_L
    local c_tx=(-0.00333*termo_torm+1)*(1-cold_tube_vvr_reg_L)*math.min(airflow_L/50,1)*(1-tx_left_fail)
    local cold_tube_L_tx=(cold_tube_L_vvr-50*c_tx)*(1-cold_tube_th_reg_L)+cold_tube_L_vvr*cold_tube_th_reg_L
    if airflow_L>20 then
       cold_tube_act_L=cold_tube_act_L-(cold_tube_act_L-cold_tube_L_tx)*passed*c_dt*10*math.max(airflow_L/600,0.1);
    else
        cold_tube_act_L=cold_tube_act_L-(cold_tube_act_L-termo_torm)*passed*0.01
    end
	
	-- art pulse
	if art_th_R_pulse>=-1.3 and art_th_R_pulse<art1_pause then
		art_th_R_pulse=art_th_R_pulse+passed
	else
		art_th_R_pulse=-2.5
	end
	if art_vvr_R_pulse>=-1.35 and art_vvr_R_pulse<art1_pause then
		art_vvr_R_pulse=art_vvr_R_pulse+passed
	else
		art_vvr_R_pulse=-2.5
	end
	
	if power_R then
		if tth_R_mode == 1 and art_mode==1 and art_th_R_pulse<0 then -- auto mode
			if art_th_R_pulse==-2.5 then
				art_th_R_pulse=-1.3
			end
			if cold_tube_act_R > tth_R_temp_set + 1 and cold_tube_vvr_reg_R<0.01 then 
				cold_tube_th_reg_R = cold_tube_th_reg_R - passed * 0.02
			elseif cold_tube_act_R < tth_R_temp_set - 1 then 
				cold_tube_th_reg_R = cold_tube_th_reg_R + passed * 0.02 * bool2int(get(cold_tube2_t)<57)
			end
		elseif tth_R_mode == 2 then
			cold_tube_th_reg_R = cold_tube_th_reg_R - passed * 0.02
		elseif tth_R_mode == 3 then
			cold_tube_th_reg_R = cold_tube_th_reg_R + passed * 0.02
		end
		
		if vvr_R_mode == 1 and art_mode==1 and art_vvr_R_pulse<0 then -- auto mode
			if art_vvr_R_pulse==-2.5 then
				art_vvr_R_pulse=-1.35
			end
			if cold_tube_act_R < tth_R_temp_set - 1 and cold_tube_th_reg_R>0.99 then 
				cold_tube_vvr_reg_R = cold_tube_vvr_reg_R + passed * 0.02* bool2int(get(cold_tube1_t)<56)
			elseif cold_tube_act_R > tth_R_temp_set + 1 then 
				cold_tube_vvr_reg_R = cold_tube_vvr_reg_R - passed * 0.02
			end
		elseif vvr_R_mode == 2 then
			cold_tube_vvr_reg_R = cold_tube_vvr_reg_R - passed * 0.02
		elseif vvr_R_mode == 3 then
			cold_tube_vvr_reg_R = cold_tube_vvr_reg_R + passed * 0.02
		end
		if vvr_hold_timer>5 then
			set(left_sys_mode_set,2)
			set(right_sys_mode_set,2)
			set(right_vvr_mode_set,2)
			if get(vr)==0 then
				set(cockpit_mode_set,2)
				set(cabin1_mode_set,2)
				set(cabin2_mode_set,2)
			end
		end
		if cabin_hold_timer>5 then
			set(cabin2_mode_set,2)
		end
			
			
	end
	-- limits
	if cold_tube_th_reg_R < 0 then
		cold_tube_th_reg_R = 0
	elseif cold_tube_th_reg_R > 1 then
		cold_tube_th_reg_R = 1
	end
	
	if cold_tube_vvr_reg_R < 0 then
		cold_tube_vvr_reg_R = 0
	elseif cold_tube_vvr_reg_R > 1 then
		cold_tube_vvr_reg_R = 1
	end
	
	-- cold_tube_vvr_reg_R_corr=cold_tube_vvr_reg_R+math.max(0.4*(cold_tube_th_reg_R/0.6-math.min(IAS/250,1)),0)
	-- if cold_tube_vvr_reg_R_corr < 0 then
		-- cold_tube_vvr_reg_R_corr = 0
	-- elseif cold_tube_vvr_reg_R_corr > 0.6 then
		-- cold_tube_vvr_reg_R_corr = 0.6
	-- end
	
	-- cold_tube_reg_R=0.2-cold_tube_vvr_reg_R_corr/3 + (1-cold_tube_vvr_reg_R/0.6)*(0.4-cold_tube_th_reg_R*2/3)
	-- cold_tube_reg_R=0.6-cold_tube_reg_R
	-- if cold_tube_reg_R < 0 then
		-- cold_tube_reg_R = 0
	-- elseif cold_tube_reg_R > 0.6 then
		-- cold_tube_reg_R = 0.6
	-- end
	
	-- local cold_tube_R = hot_air_T * cold_tube_reg_R + tth_R_temp * (1 - cold_tube_reg_R)
	
	-- if get(tth_right_fail) == 1 then 
		-- c_tx=0 
		-- c_vvr2= 1.5*math.pow(1-math.min(IAS,250)/250,2) + 1
	-- else
		-- c_tx=(-0.00222*termo_torm+1)*(1-cold_tube_vvr_reg_R)
		-- c_vvr2= 1.5*math.pow(math.max(cold_tube_th_reg_R-math.min(IAS,250)/250,0),2) + 1
	-- end
	-- local cold_tube_R_vvr=hot_air_T*c_vvr*c_vvr2*(1-cold_tube_vvr_reg_R)+hot_air_T*cold_tube_vvr_reg_R	
	-- local cold_tube_R_tx=cold_tube_R_vvr-50*(1-cold_tube_th_reg_R)*c_tx
	
	-- cold_tube_act_R = cold_tube_act_R + (cold_tube_R_tx - cold_tube_act_R) * passed * 0.2
	local tx_right_fail=get(tth_right_fail)
	c_vvr=0.35*math.min((-1.636e-06*math.pow(airflow_R,2)+0.001973*airflow_R+0.4055), 1)
	vent=math.max(math.min((cold_tube_th_reg_R+cold_tube_vvr_reg_R-cold_tube_th_reg_R*cold_tube_vvr_reg_R)+1-0.001667*airflow_R+tx_right_fail,1)-IAS/250,0,get(cover))
	c_vvr2=  1.5*math.pow(vent,2) + 1
    local cold_tube_R_vvr=hot_air_T_R*c_vvr*c_vvr2*(1-cold_tube_vvr_reg_R)+hot_air_T_R*cold_tube_vvr_reg_R
    c_tx=(-0.00333*termo_torm+1)*(1-cold_tube_vvr_reg_R)*math.min(airflow_R/50,1)*(1-tx_right_fail)
    local cold_tube_R_tx=(cold_tube_R_vvr-50*c_tx)*(1-cold_tube_th_reg_R)+cold_tube_R_vvr*cold_tube_th_reg_R
    if airflow_R>20 then
       cold_tube_act_R=cold_tube_act_R-(cold_tube_act_R-cold_tube_R_tx)*passed*c_dt*10*math.max(airflow_R/600,0.1);
    else
		cold_tube_act_R=cold_tube_act_R-(cold_tube_act_R-termo_torm)*passed*0.01
    end
	-- cold tube temperature
	cold_air_T = cold_air_T + (termo_out - cold_air_T) * passed * 0.01 -- cooling by time
	if airflow_L + airflow_R > 0 then -- replace the air by internal flow
		cold_air_T = cold_air_T + ((cold_tube_act_L * airflow_L + cold_tube_act_R * airflow_R) / (airflow_L + airflow_R) - cold_air_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01
	end
	
	--------------------------------------------------
	-- fast heat or cooling
	-- local fast_hc_sw = get(skv_faster_work)
	-- local fast_heat_cool_T = termo_out
	-- if fast_hc_sw == -1 and power_R then fast_heat_cool_T = cold_air_T
	-- elseif fast_hc_sw == 1 and power_R then fast_heat_cool_T = hot_air_T end
	
	--------------------------------------------------
	local termo_tech=cabin_1_T*3/4+termo_out/4 -- tech compartment temperature
	if airflow_L + airflow_R > 10 then
		hot_air_T = (hot_air_T_R * airflow_L +  hot_air_T_R * airflow_R) / (airflow_L + airflow_R)
	else
		hot_air_T= hot_air_T + (termo_torm - hot_air_T) * passed / 100
	end
	-- set(db6,hot_air_T)
	-- door heat temperature
	door_heat_T = door_heat_T + (termo_tech - door_heat_T) * passed * 0.01 -- cooling by time
	local door_ht_sw = get(door_heat)
	local door_heat_T_need = cold_air_T * (1 - door_heat_reg) + hot_air_T * door_heat_reg -- regulated temperature in tubes
	if door_ht_sw == 1 then
		door_heat_T = door_heat_T + (door_heat_T_need - door_heat_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.003 -- cmooth changing
	end
	-- regulator
	if (door_heat_T > 55 + 5 and power_R) or door_ht_sw == 0 then door_heat_reg = door_heat_reg - passed * 0.1
	elseif door_heat_T < 55 - 5 and power_R and door_ht_sw == 1 then door_heat_reg = door_heat_reg + passed * 0.1 end
	
	-- set limits
	if door_heat_reg > 1 then door_heat_reg = 1
	elseif door_heat_reg < 0 then door_heat_reg = 0 end
	
	--------------------------------------------------
	-- cockpit temperatures
	-- tube temperature
	cockpit_tube_temp = cockpit_tube_temp + (termo_tech - cockpit_tube_temp) * passed * 0.01 -- cooling by time
	local cockpit_tube_need = cold_air_T * (1 - cockpit_reg) + hot_air_T * cockpit_reg -- regulated temperature in tubes
	cockpit_tube_temp = cockpit_tube_temp + (cockpit_tube_need - cockpit_tube_temp) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing

	
	
	-- cockpit_T = cockpit_T + (termo_out - cockpit_T) * passed * 0.003 -- temperature in cabin will slowly turn to outside temp
	-- cockpit_T = cockpit_T + (cockpit_tube_temp - cockpit_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00002 -- cmooth changing
	-- if fast_hc_sw ~= 0 then cockpit_T = cockpit_T + (fast_heat_cool_T - cockpit_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00005 end
	local ejct=bool2int(airflow_L+airflow_R>100) -- windows/door temperature penalty is lower with air flowing into the cabin and out the doors/windows
	local door_penalty=((1-(c_pen-ejct*c_ejt)*door1)+(1-(c_pen-ejct*c_ejt)*door2)+(1-(c_pen-ejct*c_ejt)*door3))/3
	local door_penalty2=((1-(c_pen-ejct*c_ejt)*0)+(1-(c_pen-ejct*c_ejt)*door2)+(1-(c_pen-ejct*c_ejt)*door3))/3
	local cop_win_diff=1+c_win*win1/(1+5*ejct)+c_win*win2/(1+5*ejct)
	local cab1_door_diff=1+c_door*door1+c_door*door2+c_door*door3
	local cab2_door_diff=1+c_door*door2+c_door*door3
	
	cockpit_T=cockpit_T+(termo_out - cockpit_T)*passed*c_psd*c_amb*(1+c_door/2*door1*door_cpt)*cop_win_diff+(cockpit_tube_temp - cockpit_T)*passed*c_psd*math.min(airflow_L + airflow_R, 1000)*c_tube_cpt+(cabin_1_T-cockpit_T)*c_cpt_door*door_cpt*passed*c_psd
	
	-- regulator
	local cockpit_mode = get(cockpit_mode_set)
	local cockpit_T_set = get(cockpit_temp_set)
	if art_cab_1_pulse>=-1.3 and art_cab_1_pulse<art2_pause then
		art_cab_1_pulse=art_cab_1_pulse+passed
	else
		art_cab_1_pulse=-2.5
	end
	if power_L and power_R then
		if cockpit_mode == 1 and art_mode==1 and art_cab_1_pulse<0 then -- auto mode
			if art_cab_1_pulse==-2.5 then
				art_cab_1_pulse=-1.3
			end
			if cockpit_T > cockpit_T_set + 1.5 then cockpit_reg = cockpit_reg - passed * 0.008
			elseif cockpit_T < cockpit_T_set - 1.5 then cockpit_reg = cockpit_reg + passed * 0.008* bool2int(get(cockpit_tube_t)<57)
			end
		elseif cockpit_mode == 2 then
			cockpit_reg = cockpit_reg - passed * 0.008
		elseif cockpit_mode == 3 then
			cockpit_reg = cockpit_reg + passed * 0.008
		end
	end
	-- limits
	if cockpit_reg > 0.4 then cockpit_reg = 0.4
	elseif cockpit_reg < 0 then cockpit_reg = 0 end


	--------------------------------------------------
	-- cabin_1 temperatures
	-- tube temperature
	cabin_1_tube_temp = cabin_1_tube_temp + (termo_tech - cabin_1_tube_temp) * passed * 0.01 -- cooling by tine
	local cabin_1_tube_need = cold_air_T * (1 - cabin_1_reg) + hot_air_T * cabin_1_reg -- regulated temperature in tubes
	cabin_1_tube_temp = cabin_1_tube_temp + (cabin_1_tube_need - cabin_1_tube_temp) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing
	
	-- cabin_1_T = cabin_1_T + (termo_out - cabin_1_T) * passed * 0.003 -- temperature in cabin will slowly turn to outside temp
	-- cabin_1_T = cabin_1_T + (cabin_1_tube_temp - cabin_1_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.000007 -- cmooth changing
	
	-- if fast_hc_sw ~= 0 then cabin_1_T = cabin_1_T + (fast_heat_cool_T - cabin_1_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00005 end
	cabin_1_T=cabin_1_T+(termo_out - cabin_1_T)*passed*c_psd*c_amb*cab1_door_diff+(cabin_1_tube_temp - cabin_1_T)*passed*c_psd*math.min(airflow_L + airflow_R, 1000)*c_tube*door_penalty+(cockpit_T-cabin_1_T)*c_cab*door_cpt*passed*c_psd+(cabin_2_T-cabin_1_T)*c_cab*passed*c_psd+pax_cab1*c_pax*passed*c_psd
	-- regulator
	local cabin_1_mode = get(cabin1_mode_set)
	local cabin_1_T_set = get(cabin1_temp_set)
	if cabin_1_mode  == 2 then
		cabin_hold_timer=cabin_hold_timer+passed
	else
		if cabin_hold_timer>5 and cabin_1_mode  ~= 2 then 
			set(cabin2_mode_set,0)
		end
		cabin_hold_timer=0
	end
	if art_cab_2_pulse>=-1.7 and art_cab_2_pulse<art2_pause then
		art_cab_2_pulse=art_cab_2_pulse+passed
	else
		art_cab_2_pulse=-2.5
	end
	if power_L and power_R then
		if cabin_1_mode == 1 and art_mode==1 and art_cab_2_pulse<0 then -- auto mode
			if art_cab_2_pulse==-2.5 then
				art_cab_2_pulse=-1.7
			end
			if cabin_1_T > cabin_1_T_set + 1.5 then cabin_1_reg = cabin_1_reg - passed * 0.008
			elseif cabin_1_T < cabin_1_T_set - 1.5 then cabin_1_reg = cabin_1_reg + passed * 0.008 * bool2int(get(cabin1_tube_t)<57)
			end
		elseif cabin_1_mode == 2 then
			cabin_1_reg = cabin_1_reg - passed * 0.008
		elseif cabin_1_mode == 3 then
			cabin_1_reg = cabin_1_reg + passed * 0.008
		end
	end
	-- limits
	if cabin_1_reg > 0.4 then cabin_1_reg = 0.4
	elseif cabin_1_reg < 0 then cabin_1_reg = 0 end	

	--------------------------------------------------
	-- cabin_1 temperatures
	-- tube temperature
	cabin_2_tube_temp = cabin_2_tube_temp + (termo_out - cabin_2_tube_temp) * passed * 0.01 -- cooling by tine
	local cabin_2_tube_need = cold_air_T * (1 - cabin_2_reg) + hot_air_T * cabin_2_reg -- regulated temperature in tubes
	cabin_2_tube_temp = cabin_2_tube_temp + (cabin_2_tube_need - cabin_2_tube_temp) * passed * math.min(airflow_L + airflow_R, 1000) * 0.01 -- cmooth changing
	
	-- cabin_2_T = cabin_2_T + (termo_out - cabin_2_T) * passed * 0.003 -- temperature in cabin will slowly turn to outside temp
	-- cabin_2_T = cabin_2_T + (cabin_2_tube_temp - cabin_2_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.000007 -- cmooth changing
	
	-- if fast_hc_sw ~= 0 then cabin_2_T = cabin_2_T + (fast_heat_cool_T - cabin_2_T) * passed * math.min(airflow_L + airflow_R, 1000) * 0.00005 end
	cabin_2_T=cabin_2_T+(termo_out-cabin_2_T)*passed*c_psd*c_amb*cab2_door_diff+(cabin_2_tube_temp-cabin_2_T)*passed*c_psd*math.min(airflow_L + airflow_R, 1000)*c_tube+(cabin_1_T-cabin_2_T)*c_cab*door_penalty2*passed*c_psd+pax_cab2*c_pax*passed*c_psd
	
	
	-- regulator
	local cabin_2_mode = get(cabin2_mode_set)
	local cabin_2_T_set = get(cabin2_temp_set)
	if art_cab_3_pulse>=-1.4 and art_cab_3_pulse<art2_pause then
		art_cab_3_pulse=art_cab_3_pulse+passed
	else
		art_cab_3_pulse=-2.5
	end
	if power_L and power_R then
		if cabin_2_mode == 1 and art_mode==1  and art_cab_3_pulse<0 then -- auto mode
			if art_cab_3_pulse==-2.5 then
				art_cab_3_pulse=-1.4
			end
			if cabin_2_T > cabin_2_T_set + 1.5 then cabin_2_reg = cabin_2_reg - passed * 0.008
			elseif cabin_2_T < cabin_2_T_set - 1 then cabin_2_reg = cabin_2_reg + passed * 0.008* bool2int(get(cabin2_tube_t)<58)
			end
		elseif cabin_2_mode == 2 then
			cabin_2_reg = cabin_2_reg - passed * 0.008
		elseif cabin_2_mode == 3 then
			cabin_2_reg = cabin_2_reg + passed * 0.008
		end
	end
	
	-- limits
	if cabin_2_reg > 0.4 then cabin_2_reg = 0.4
	elseif cabin_2_reg < 0 then cabin_2_reg = 0 end
	
	-- initialization time
	if start_timer<10 then
		if get(rpm_high_1)>10 then
			--hot_air_T=termo_out
			cold_tube_act_L=20
			cold_tube_act_R=20
			--door_heat_T=termo_out
			cockpit_tube_temp=20
			cockpit_T=25
			cabin_1_tube_temp=20
			cabin_1_T=25
			cabin_2_tube_temp=20
			cabin_2_T=25
			temp_ard=25
			cockpit_reg = 0
			cabin_1_reg = 0
			cabin_2_reg = 0
			cold_tube_vvr_reg_L = 0
			cold_tube_vvr_reg_R = 0
			cold_tube_th_reg_L = 0
			cold_tube_th_reg_R = 0
		else
			hot_air_T=termo_out
			cold_tube_act_L=termo_out
			cold_tube_act_R=termo_out
			door_heat_T=termo_out
			cockpit_tube_temp=termo_out
			cockpit_T=termo_out
			cabin_1_tube_temp=termo_out
			cabin_1_T=termo_out
			cabin_2_tube_temp=termo_out
			cabin_2_T=termo_out
			temp_ard=termo_out
			set(gear_blocks,1)
		end
		-- local srd_setting=get(srd_set)
		-- set(srd,srd_setting)
	end
local MASTER = get(ismaster) ~= 1	
	

if MASTER then		
	
	-- results
	set(hot_tube_t, hot_air_T)
	set(cold_tube1_t, cold_tube_act_L)
	set(cold_tube2_t, cold_tube_act_R)
	set(door_heat_tube_t, door_heat_T)
	set(cockpit_tube_t, cockpit_tube_temp)
	set(cockpit_temp, cockpit_T)
	set(cabin1_tube_t, cabin_1_tube_temp)
	set(cabin_1_temp, cabin_1_T)
	set(cabin2_tube_t, cabin_2_tube_temp)
	set(cabin_2_temp, cabin_2_T)
	set(ard_temp,temp_ard)
	set(rear_tech_compartment_T,t_tech)
	-- set(vvr_left_reg,cold_tube_th_reg_L)
	-- set(vvr_right_reg,cold_tube_vvr_reg_L)		

end
	
end
