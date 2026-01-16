-- this is antiice logic.

-- controls
defineProperty("soi21_on", globalPropertyi("tu154b2/custom/switchers/eng/soi21_on")) -- выключатель СОИ 21
defineProperty("soi21_test", globalPropertyi("tu154b2/custom/buttons/eng/soi21_test")) -- проверка СОИ 21


defineProperty("antiice_slats", globalPropertyi("tu154b2/custom/switchers/eng/antiice_slats")) -- противообледенители
defineProperty("antiice_eng_1", globalPropertyi("tu154b2/custom/switchers/eng/antiice_eng_1")) -- противообледенители
defineProperty("antiice_eng_2", globalPropertyi("tu154b2/custom/switchers/eng/antiice_eng_2")) -- противообледенители
defineProperty("antiice_eng_3", globalPropertyi("tu154b2/custom/switchers/eng/antiice_eng_3")) -- противообледенители
defineProperty("antiice_wing", globalPropertyi("tu154b2/custom/switchers/eng/antiice_wing")) -- противообледенители

defineProperty("window_heat_1", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_1")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_2", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_2")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_3", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_3")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно

defineProperty("pitot_heat_1", globalPropertyi("tu154b2/custom/switchers/ovhd/pitot_heat_1")) -- обогрев ППД лев
defineProperty("pitot_heat_2", globalPropertyi("tu154b2/custom/switchers/ovhd/pitot_heat_2")) -- обогрев ППД прав
defineProperty("pitot_heat_3", globalPropertyi("tu154b2/custom/switchers/ovhd/pitot_heat_3")) -- обогрев ППД АБСУ





-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154b2/custom/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

-- sources
defineProperty("window_ice", globalPropertyf("sim/flightmodel/failures/window_ice")) -- ratio of icing on the windshield

--defineProperty("hot_tube_t", globalPropertyf("tu154b2/custom/bleed/hot_tube_t")) -- температура горячего воздуха в трубопроводе

defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

--defineProperty("eng_airvalve_1", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_1")) -- открытие отбора воздуха от двигателя
--defineProperty("eng_airvalve_2", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
--defineProperty("eng_airvalve_3", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_3")) -- открытие отбора воздуха от двигателя

defineProperty("termo", globalPropertyf("sim/weather/temperature_ambient_c")) -- тепература воздуха
defineProperty("termo_in", globalPropertyi("tu154b2/custom/gauges/airbleed/cockpit_temp")) -- тепература воздуха
defineProperty("ai_fuid_to", globalPropertyi("sim/custom/t154gnd/ai_fluid_timeout_set")) -- тепература воздуха

defineProperty("snow_on_fuse", globalPropertyf("sim/custom/t154gnd/snow_fuse"))


defineProperty("stat_1", globalPropertyi("sim/cockpit2/ice/ice_static_heat_on_pilot"))
defineProperty("stat_2", globalPropertyi("sim/cockpit2/ice/ice_static_heat_on_copilot"))
defineProperty("stat_3", globalPropertyi("sim/cockpit2/ice/ice_static_heat_on_standby"))
defineProperty("tat", globalPropertyi("sim/cockpit2/ice/ice_TAT_heat_on"))
defineProperty("tat2", globalPropertyi("sim/cockpit2/ice/ice_TAT_heat_on_copilot"))
defineProperty("so_heat", globalPropertyi("sim/cockpit2/ice/ice_AOA_heat_on_stby"))




defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("IAS", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) 

defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
--defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 

-- failures
defineProperty("ppd_3_heat_fail", globalPropertyi("tu154b2/custom/antiice/ppd_3_heat_fail"))


defineProperty("rel_ice_inlet_heat1", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat"))
defineProperty("rel_ice_inlet_heat2", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat2"))
defineProperty("rel_ice_inlet_heat3", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat3"))

defineProperty("rel_ice_pitot_heat1", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat1"))
defineProperty("rel_ice_pitot_heat2", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat2"))
defineProperty("rel_ice_pitot_heat3", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat_stby"))

defineProperty("rel_ice_surf_heat", globalPropertyi("sim/operation/failures/rel_ice_surf_heat"))
defineProperty("rel_ice_surf_heat2", globalPropertyi("sim/operation/failures/rel_ice_surf_heat2"))

defineProperty("rio_fail", globalPropertyi("tu154b2/custom/failures/rio_fail"))

defineProperty("window_heat_fail_1", globalPropertyi("tu154b2/custom/failures/window_heat_fail_1"))
defineProperty("window_heat_fail_2", globalPropertyi("tu154b2/custom/failures/window_heat_fail_2"))
defineProperty("window_heat_fail_3", globalPropertyi("tu154b2/custom/failures/window_heat_fail_3"))

-- results
defineProperty("ice_detected", globalPropertyi("tu154b2/custom/antiice/ice_detected")) -- обнаружен лед
defineProperty("ice_detect_ok", globalPropertyi("tu154b2/custom/antiice/ice_detect_ok")) -- система СОИ работает

defineProperty("ice_window_heat_on", globalPropertyi("sim/cockpit2/ice/ice_window_heat_on")) -- обогрев стекла в симе

defineProperty("window_ice_1", globalPropertyf("tu154b2/custom/anim/window_ice_1")) -- уровень льда на стеклах
defineProperty("window_ice_2", globalPropertyf("tu154b2/custom/anim/window_ice_2")) -- уровень льда на стеклах
defineProperty("window_ice_3", globalPropertyf("tu154b2/custom/anim/window_ice_3")) -- уровень льда на стеклах
defineProperty("window_ice_4", globalPropertyf("tu154b2/custom/anim/window_ice_4")) -- уровень льда на стеклах

defineProperty("inlet_heat_1", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[0]")) -- 
defineProperty("inlet_heat_2", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[1]")) -- 
defineProperty("inlet_heat_3", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[2]")) -- 

defineProperty("sim_pitot_heat_1", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_pilot")) -- 
defineProperty("sim_pitot_heat_2", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_copilot")) -- 
defineProperty("sim_pitot_heat_3", globalPropertyi("sim/cockpit2/ice/ice_pitot_heat_on_standby")) -- 

defineProperty("AOA_heat_on", globalPropertyi("sim/cockpit2/ice/ice_AOA_heat_on")) -- 
defineProperty("AOA_heat_on_copilot", globalPropertyi("sim/cockpit2/ice/ice_AOA_heat_on_copilot")) --

defineProperty("wings_heat_on", globalPropertyi("sim/cockpit2/ice/ice_surfce_heat_on")) --
defineProperty("stab_heat_on", globalPropertyi("sim/cockpit2/ice/ice_tail_heat_on"))

defineProperty("frm_ice", globalPropertyf("sim/flightmodel/failures/frm_ice")) --
defineProperty("frm_ice2", globalPropertyf("sim/flightmodel/failures/frm_ice2")) --

defineProperty("wing_heating", globalPropertyi("tu154b2/custom/antiice/wing_heating")) -- работает обогрев крыла
defineProperty("slat_heating", globalPropertyi("tu154b2/custom/antiice/slat_heating")) -- работает обогрев крыла

defineProperty("ai_27_L_cc", globalPropertyf("tu154b2/custom/antiice/ai_27_L_cc")) -- нагрузка на сеть
defineProperty("ai_27_R_cc", globalPropertyf("tu154b2/custom/antiice/ai_27_R_cc")) -- нагрузка на сеть

defineProperty("ai_115_1_cc", globalPropertyf("tu154b2/custom/antiice/ai_115_1_cc")) -- нагрузка на сеть
defineProperty("ai_115_2_cc", globalPropertyf("tu154b2/custom/antiice/ai_115_2_cc")) -- нагрузка на сеть
defineProperty("ai_115_3_cc", globalPropertyf("tu154b2/custom/antiice/ai_115_3_cc")) -- нагрузка на сеть

defineProperty("eng_heat_open_1", globalPropertyi("tu154b2/custom/antiice/eng_heat_open_1")) -- открыта заслонка обогрева двигателя
defineProperty("eng_heat_open_2", globalPropertyi("tu154b2/custom/antiice/eng_heat_open_2")) -- открыта заслонка обогрева двигателя
defineProperty("eng_heat_open_3", globalPropertyi("tu154b2/custom/antiice/eng_heat_open_3")) -- открыта заслонка обогрева двигателя
defineProperty("stab_heat_open", globalPropertyi("tu154b2/custom/antiice/stab_heat_open"))

defineProperty("left_ht", globalPropertyi("tu154b2/custom/antiice/left_window_heat"))
defineProperty("right_ht", globalPropertyi("tu154b2/custom/antiice/ctr_window_heat"))
defineProperty("ctr_ht", globalPropertyi("tu154b2/custom/antiice/right_window_heat"))
defineProperty("left_rate", globalPropertyf("tu154b2/custom/antiice/left_window_rate"))
defineProperty("right_rate", globalPropertyf("tu154b2/custom/antiice/ctr_window_rate"))
defineProperty("ctr_rate", globalPropertyf("tu154b2/custom/antiice/right_window_rate"))
--defineProperty("sim_icing", globalPropertyf("sim/flightmodel/failures/ice_delta"))
defineProperty("stab_ice_1", globalPropertyf("sim/flightmodel/failures/tail_ice"))
defineProperty("stab_ice_2", globalPropertyf("sim/flightmodel/failures/tail_ice2"))
defineProperty("ice_probe", globalPropertyf("sim/flightmodel/failures/aoa_ice3"))

-- gauges
defineProperty("wing_heat_t", globalPropertyf("tu154b2/custom/antiice/wing_heat_t")) -- температура обогрева крыла
defineProperty("stab_heat_t", globalPropertyf("tu154b2/custom/antiice/stab_heat_t")) -- температура обогрева стабилизатора
defineProperty("pos_blok", globalPropertyi("tu154b2/custom/elec/pos_block"))
defineProperty("le_temp", globalPropertyf("sim/weather/aircraft/temperature_leadingedge_deg_c"))
defineProperty("cockpit_temp", globalPropertyf("tu154b2/custom/bleed/cockpit_temp"))
defineProperty("eng1_N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("rest_ht", globalPropertyi("tu154b2/custom/antiice/cockpit_windows_heat"))
defineProperty("rest_rate", globalPropertyf("tu154b2/custom/antiice/cockpit_windows_rate"))
defineProperty("side_rate", globalPropertyf("tu154b2/custom/antiice/side_windows_rate"))
defineProperty("ice_add", globalPropertyf("sim/flightmodel/failures/window_ice_added_delta"))
defineProperty("ice_now", globalProperty("sim/flightmodel/failures/window_ice_per_window[1]"))
defineProperty("snow_rat", globalPropertyf("sim/weather/aircraft/snow_on_aircraft_ratio"))
defineProperty("tas", globalPropertyf("sim/flightmodel2/position/true_airspeed"))
-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
--defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))

local wing_heat_tbl = {{ -100, 0 },    -- bugs walkaround
				  {  0, 0 }, -- 0.0-
                  {  55, 150 }, -- 0.0-
				  { 85, 300 }, -- 
          	      {  10000000, 300 }}    -- bugs walkaround
local speed_factor_tbl = {{ -100, 1 },    -- bugs walkaround
				  {  0, 1 }, -- 0.0-
                  {  60, 11 }, -- 0.0-
          	      {  1000, 11 }}    -- bugs walkaround

-- local ice_reseted = false
-- local ice_ratio_last = get(window_ice)
-- local ice_speed = 0

local so_detected = 0
local ice_work_timer = 0
local ice_test_timer = 0
local so_threshold=0.05
local so_ht=0
-- local ice_on_wings_L = 0
-- local ice_on_wings_R = 0
-- local ice_on_slats_L = 0
-- local ice_on_slats_R = 0

local vna1=0
local vna2=0
local vna3=0
local pos_stab=0
local tme=0
local start_timer=0
local notLoaded=true
-- glass temp model params
local d=20/1000 -- glass thickness
local L_win=0.63 -- characteristic length for Nu
local A=0.3 -- glass area
local window_amps=6 -- heating amps
local temp_thres=25 --heat shutoff temp
local c_heat=740 -- glass heat capacity and conductivity
--local c_cond=0.7
local c_cond_air=0.026 -- air heat capacity
local c_trans_air=10 -- air heat transfer coefficient
local Pr=0.718 -- Prandtl number
local rho=2500 --glass density and mass
local m=A*d*rho
local Q1=m*c_heat*(get(le_temp)+273)
local Q2=m*c_heat*(get(le_temp)+273)
local Q3=m*c_heat*(get(le_temp)+273)
local Q4=m*c_heat*(get(le_temp)+273)
local temp1=get(le_temp)
local temp2=get(le_temp)
local temp3=get(le_temp)
local temp4=get(le_temp)
local power1=0
local power2=0
local power3=0
local init_timer=0
--[[
set(window_ice_1, 1)
set(window_ice_2, 1)
set(window_ice_3, 1)
set(window_ice_4, 1)
--]]

function update()
	
	local MASTER = get(ismaster) ~= 1	
	
	local passed = get(frame_time)
	
	local power27_L = get(bus27_volt_left) > 13
	local power27_R = get(bus27_volt_right) > 13
	local power115_1 = get(bus115_1_volt) > 100
	local power115_2 = get(bus115_2_volt) > 100
	local power115_3 = get(bus115_3_volt) > 100
	
	local power_CC_115_1 = 0
	local power_CC_115_2 = 0
	local power_CC_115_3 = 0
	
	local out_term = get(le_temp)
    -- local in_term = get(termo_in)
    -- local ai_fluid = get(ai_fuid_to)
	
	--local ice_ratio = get(window_ice)
	local grnd=get(deflection_mtr_2) < 0.1
	if MASTER then	
		-- reset ice ratio
		-- if ice_ratio > 0.9 or ice_ratio < 0.1 then 
			-- ice_ratio = 0.5
			-- set(window_ice, 0.5)
			-- ice_reseted = true
		-- else ice_reseted = false
		-- end

		-- if passed ~= 0 and not ice_reseted then
			-- if get(ai_fuid_to) > 5 then
					-- ice_speed = math.abs((ice_ratio - ice_ratio_last) * 2 / passed) *-1
			-- else
				-- if math.abs(ice_ratio - ice_ratio_last) > 0.01 then 
					-- ice_speed = 0
				-- else
					-- ice_speed = (ice_ratio - ice_ratio_last) * 2 / passed
				-- end
			-- end
			
		-- end
		
		-- ice_ratio_last = ice_ratio

		-- glass temps
		-- SO-121 logic
		if get(soi21_test) == 1 then
			ice_test_timer = 80+math.random(-2,2) 
		end
		local so_ice=get(ice_probe)
		so_ht=0
		if power27_L and power27_R and get(soi21_on) == 1 then			
			-- test system
			if ice_test_timer>0 then			
				set(ice_detect_ok, bool2int(ice_test_timer < 50 and get(rio_fail) ~= 1))			
				if ice_test_timer > 72 then 
					set(ice_detected, 1)
				else 
					set(ice_detected, 0) 
				end
				ice_test_timer=ice_test_timer-passed
				if ice_test_timer<=math.random(10)  then
					ice_test_timer=0
					set(ice_detect_ok,0)
				end
			else
				so_ht=bool2int(so_ice>so_threshold or ice_work_timer>100)
				set(so_heat,so_ht)
				if so_ice>so_threshold and get(rio_fail) ~= 1 then
					ice_work_timer=140
				elseif ice_work_timer>0 then
					ice_work_timer=ice_work_timer-passed
				end
				set(ice_detected, bool2int(ice_work_timer>0))
			end
		else
			ice_work_timer = 0
			ice_test_timer = 0
			set(so_heat,0)
			set(ice_detect_ok, 0)
			set(ice_detected, 0)
			--set(ice_window_heat_on, 0)
		end
		so_ht=so_ht*10+get(soi21_on)
		-- Electric window heat power, 6 A at 120/200 V
		local p_elec_1 = 0
		local win_heat_sw_1 = get(window_heat_1)
		if win_heat_sw_1 == 1 and power27_L and power115_1 then 
			p_elec_1 = window_amps * (200-80*bool2int(grnd)) * (1 - get(window_heat_fail_1))
		elseif win_heat_sw_1 == -1 and power27_L and power115_1 then 
			p_elec_1 = window_amps * 120 * (1 - get(window_heat_fail_1)) 
		end
		
		
		local p_elec_2 = 0
		local win_heat_sw_2 = get(window_heat_2)
		if win_heat_sw_2 == 1 and power27_R and power115_3 then
			p_elec_2 = window_amps * (200-80*bool2int(grnd)) * (1 - get(window_heat_fail_2))
		elseif win_heat_sw_2 == -1 and power27_R and power115_3 then 
			p_elec_2 = window_amps * 120 * (1 - get(window_heat_fail_2)) 
		end
		
		
		local  p_elec_3 = 0
		local win_heat_sw_3 = get(window_heat_3)
		if win_heat_sw_3 == 1 and power27_R and power115_3 then 
			 p_elec_3 = window_amps * (200-80*bool2int(grnd)) * (1 - get(window_heat_fail_3))
		elseif win_heat_sw_3 == -1 and power27_R and power115_3 then 
			 p_elec_3 = window_amps * 120 * (1 - get(window_heat_fail_3)) 
		end
		

		
		-- local win_ice_1 = get(window_ice_1) + ((ice_speed - window_heat_spd_1) - math.max(out_term * 1,in_term * 0.0002, 0)) * passed
		-- if win_ice_1 < 0 then win_ice_1 = 0
		-- elseif win_ice_1 > 1 then win_ice_1 = 1 end
		-- set(window_ice_1, win_ice_1)
		
		-- local win_ice_2 = get(window_ice_2) + ((ice_speed - window_heat_spd_2) - math.max(out_term * 1,in_term * 0.0002, 0)) * passed
		-- if win_ice_2 < 0 then win_ice_2 = 0
		-- elseif win_ice_2 > 1 then win_ice_2 = 1 end
		-- set(window_ice_2, win_ice_2)	

		-- local win_ice_3 = get(window_ice_3) + ((ice_speed - window_heat_spd_3) - math.max(out_term * 1,in_term * 0.0002, 0)) * passed
		-- if win_ice_3 < 0 then win_ice_3 = 0
		-- elseif win_ice_3 > 1 then win_ice_3 = 1 end
		-- set(window_ice_3, win_ice_3)

		-- local win_ice_4 = get(window_ice_4) + (ice_speed - math.max(out_term * 1,in_term * 0.0002, 0)) * passed 
		-- if win_ice_4 < 0 then win_ice_4 = 0
		-- elseif win_ice_4 > 1 then win_ice_4 = 1 end
		-- set(window_ice_4, win_ice_4)
		---------------glass temperature model----------------
		-- window heat on?
		if temp1<temp_thres-3 then
			power1=1
		elseif temp1>temp_thres then
			power1=0
		end
		if temp2<temp_thres-3.2 then
			power2=1
		elseif temp2>temp_thres then
			power2=0
		end
		if temp3<temp_thres-4 then
			power3=1
		elseif temp3>temp_thres then
			power3=0
		end
		local temp_cab=get(cockpit_temp)
		-- Some physics to calculate heat transfer
		local v=math.abs(get(tas))
		local Re_out=1.225*v/3.6*L_win/1.85508e-5
		Nu_out=0.037*math.pow(Re_out,0.8)*Pr/(1+2.443*math.pow(Re_out,-0.1)*(math.pow(Pr,(2/3))-1))
		local h_out=math.max(10,Nu_out/L_win*c_cond_air)
		-- energy balance
		Q1=Q1+(-h_out*A*(temp1-out_term)+p_elec_1*power1-c_trans_air*A*(temp1-temp_cab))*passed
		Q2=Q2+(-h_out*A*(temp2-out_term)+p_elec_2*power2-c_trans_air*A*(temp2-temp_cab))*passed
		Q3=Q3+(-h_out*A*(temp3-out_term)+p_elec_3*power3-c_trans_air*A*(temp3-temp_cab))*passed
		Q4=Q4+(-h_out*A*(temp4-out_term)-c_trans_air*A*(temp4-temp_cab))*passed
		-- temperatures
		temp1=Q1/m/c_heat-273
		temp2=Q2/m/c_heat-273
		temp3=Q3/m/c_heat-273
		temp4=Q4/m/c_heat-273
		-- set(db1,temp1)
		-- set(db2,temp2)
		-- set(db3,temp3)
		-- set(db4,temp4)
		-- sim heat only works when glass is above 0°C
		local window_left_on=bool2int(temp1>0)
		local window_right_on=bool2int(temp2>0)
		local window_ctr_on=bool2int(temp3>0)
		local window_rest_on=bool2int(temp4>0)
		-- heating effectivness as a function of glass temperature
		local rate_left=1690/(math.max(0.1,temp1)+0.06897)
		local rate_right=1690/(math.max(0.1,temp2)+0.06897)
		local rate_ctr=1690/(math.max(0.1,temp3)+0.06897)
		local rate_rest=1690/(math.max(0.1,temp4)+0.06897)
			-- heat Pitots and AOA sensor
		local pitot_sw_1 = math.max(get(pitot_heat_1) * bool2int(get(rel_ice_pitot_heat1) ~= 6), 0)
		local pitot_sw_2 = math.max(get(pitot_heat_2) * bool2int(get(rel_ice_pitot_heat2) ~= 6), 0)
		local pitot_sw_3 = math.max(get(pitot_heat_3) * bool2int(get(ppd_3_heat_fail) ~= 1), 0)
		if power27_L then 
			set(sim_pitot_heat_1, pitot_sw_1) 
			set(sim_pitot_heat_3, pitot_sw_3) 
			set(AOA_heat_on, pitot_sw_1)
			-- set(stat_1,1)
			-- set(stat_3,1)
			set(tat,1)
			set(ai_27_L_cc, 5.5 * pitot_sw_1+so_ht + 6 * pitot_sw_3)
		else
			set(sim_pitot_heat_1, 0) 
			set(AOA_heat_on, 0)
			set(sim_pitot_heat_3, 0) 
			set(ai_27_L_cc, 0)
			-- set(stat_1,0)
			-- set(stat_3,0)
			--set(tat,0)
		end
		
		if power27_R then -- add third Pitot here
			set(sim_pitot_heat_2, pitot_sw_2) 
			set(AOA_heat_on_copilot, pitot_sw_2)
			--set(stat_2,1)
			--set(tat2,1)
			set(ai_27_R_cc, 5.6 * pitot_sw_2 )
		else
			set(sim_pitot_heat_2, 0) 
			set(AOA_heat_on_copilot, 0)
			set(ai_27_R_cc, 0)
			--set(stat_2,0)
			--set(tat2,0)
		end
		local static_heat=bool2int(temp_cab>3)
		set(stat_1,static_heat)
		set(stat_2,static_heat)
		set(stat_3,static_heat)
		-- if get(db3)==0 then
			-- start_timer=0
			-- notLoaded = true
			-- set(db3,1)
		-- end
		-- local test_rate=get(db2)
		if start_timer>5 then
			set(left_ht,window_left_on)
			set(right_ht,window_right_on)
			set(ctr_ht,window_ctr_on)
			set(rest_ht,window_rest_on)
			set(left_rate,rate_left)
			set(right_rate,rate_right)
			set(ctr_rate,rate_ctr)
			set(rest_rate,rate_rest)
			set(side_rate,rate_rest/4)
			set(ai_115_1_cc, power1*window_amps*bool2int(p_elec_1>0))
			set(ai_115_3_cc, power2*window_amps*2/3*bool2int(p_elec_2>0)+power3 * window_amps*bool2int(p_elec_3>0))
		elseif start_timer>1 then
			local init_rate=4
			local init_rate2=0.25*get(snow_rat) + 0.05
			if out_term>0 then
				init_rate2=0
			elseif out_term>-20 then
				init_rate2=(0.05*out_term+1)*init_rate2+0.1
			else
				init_rate2= 0.1
			end
			set(ice_add,init_rate2)
			set(left_ht,1)
			set(right_ht,1)
			set(ctr_ht,1)
			set(rest_ht,1)
			set(left_rate,5)
			set(right_rate,5)
			set(ctr_rate,5)
			set(rest_rate,init_rate)
			set(side_rate,init_rate/4)
		end
		
		-- engines heat
		if get(antiice_eng_1)>0 and vna1<1 then
			vna1=vna1+passed*2
			if vna1>1 then
				vna1=1
			end
		elseif get(antiice_eng_1)==0 and vna1>0 then
			vna1=vna1-passed*2
			if vna1<0 then
				vna1=0
			end
		end
		
		if get(antiice_eng_2)>0 and vna2<1 then
			vna2=vna2+passed*2
			if vna2>1 then
				vna2=1
			end
		elseif get(antiice_eng_2)==0 and vna2>0 then
			vna2=vna2-passed*2
			if vna2<0 then
				vna2=0
			end
		end
		
		if get(antiice_eng_3)>0 and vna3<1 then
			vna3=vna3+passed*2
			if vna3>1 then
				vna3=1
			end
		elseif get(antiice_eng_3)==0 and vna3>0 then
			vna3=vna3-passed*2
			if vna3<0 then
				vna3=0
			end
		end
		
		if get(antiice_wing)>0 and pos_stab<1 then
			pos_stab=pos_stab+passed*2
			if pos_stab>1 then
				pos_stab=1
			end
		elseif get(antiice_wing)==0 and pos_stab>0 then
			pos_stab=pos_stab-passed*2
			if pos_stab<0 then
				pos_stab=0
			end
		end
		
		local rpm_1 = get(rpm_high_1) > 50 and vna1==1
		set(inlet_heat_1, bool2int(get(rel_ice_inlet_heat1) ~= 6 and rpm_1 and power27_L) * vna1)
		set(eng_heat_open_1, bool2int(get(rel_ice_inlet_heat1) ~= 6 and power27_L) * vna1)
		
		local rpm_2 = get(rpm_high_2) > 50 and vna2==1
		set(inlet_heat_2, bool2int(rpm_2 and power27_R) * vna2 * bool2int(get(rel_ice_inlet_heat2) ~= 6))
		set(eng_heat_open_2, bool2int(get(rel_ice_inlet_heat2) ~= 6 and power27_R) * vna2)
		
		local rpm_3 = get(rpm_high_3) > 50 and vna3==1
		set(inlet_heat_3, bool2int(rpm_3 and power27_R) * vna3 * bool2int(get(rel_ice_inlet_heat3) ~= 6))
		set(eng_heat_open_3, bool2int(get(rel_ice_inlet_heat3) ~= 6 and power27_R) * vna3)
		
		-- wings and slat heat
		set(stab_heat_open, bool2int((power27_L or power27_R)) * pos_stab)
		local wing_heat = bool2int((power27_L or power27_R) and get(rel_ice_surf_heat) < 6) * pos_stab
		local slat_heat = bool2int(get(bus115_2_volt) > 110 and (power27_L or power27_R) and get(rel_ice_surf_heat2) < 6 and grnd and get(pos_blok) == 0) * get(antiice_slats)
		-- slat heat timer
		local slat_lamp=0
		if slat_heat>0 and tme<154 then
			tme=tme+passed
		else
			tme=0
		end
		local slat_amp=15
		if tme<38.5 then
			slat_amp=slat_amp+43*2
			slat_lamp=slat_heat
		elseif tme<38.5*2 then
			slat_amp=slat_amp+41*2
		elseif tme<38.5*3 then
			slat_amp=slat_amp+34*2
		elseif tme<38.5*4 then
			slat_amp=slat_amp+36*2
		end
		

		
		
		-- heat tubes thermo
		local wing_tube = get(wing_heat_t)
		local wing_t_1=interpolate(wing_heat_tbl,get(rpm_high_1))*bool2int(rpm_1)
		local wing_t_2=interpolate(wing_heat_tbl,get(rpm_high_2))*bool2int(rpm_2)
		local wing_t_3=interpolate(wing_heat_tbl,get(rpm_high_3))*bool2int(rpm_3)
		wing_tube = wing_tube + (out_term - wing_tube) * passed * 0.1 * (1 + get(IAS) / 200)
		wing_tube = wing_tube + (wing_heat * math.max(wing_t_1,wing_t_2,wing_t_3) - wing_tube) * passed * 0.1
		
		
		
		local stab_tube = get(stab_heat_t)
		
		stab_tube = stab_tube + (out_term - stab_tube) * passed * 0.1 * (1 + get(IAS) / 300)
		stab_tube = stab_tube + (wing_heat * math.max(wing_t_1,wing_t_2,wing_t_3) - stab_tube) * passed * 0.1
		local stab_ht=bool2int(stab_tube>60)
		
		
		
		--print(wing_tube, "  ", stab_tube)
		
		-- ice on wings and slats
		-- ice_on_wings_L = ice_on_wings_L + (ice_speed * math.random() * 2 - math.max(0, wing_tube) * 0.0005) * passed
		-- ice_on_slats_L = ice_on_slats_L + (ice_speed * math.random() * 2 - slat_heat * 0.02) * passed
		
		-- if ice_on_wings_L < 0 then ice_on_wings_L = 0 end
		-- if ice_on_slats_L < 0 then ice_on_slats_L = 0 end

		-- ice_on_wings_R = ice_on_wings_R + (ice_speed * math.random() * 2 - math.max(0, wing_tube) * 0.0005) * passed
		-- ice_on_slats_R = ice_on_slats_R + (ice_speed * math.random() * 2 - slat_heat * 0.02) * passed
		
		-- if ice_on_wings_R < 0 then ice_on_wings_R = 0 end
		-- if ice_on_slats_R < 0 then ice_on_slats_R = 0 end
		
		-- if ice_on_slats_L > 0.2 then ice_on_slats_L = 0.2 end
		-- if ice_on_slats_R > 0.2 then ice_on_slats_R = 0.2 end
		if notLoaded and start_timer>5 then
			if get(eng1_N2)<20 then
				Q1=m*c_heat*(get(le_temp)+273)
				Q2=m*c_heat*(get(le_temp)+273)
				Q3=m*c_heat*(get(le_temp)+273)
				Q4=m*c_heat*(get(le_temp)+273)
				temp1=get(le_temp)
				temp2=get(le_temp)
				temp3=get(le_temp)	
				temp4=get(le_temp)	
			else
				Q1=m*c_heat*(20+273)
				Q2=m*c_heat*(20+273)
				Q3=m*c_heat*(20+273)
				Q4=m*c_heat*(20+273)
				temp1=20
				temp2=20
				temp3=20
				temp4=20
			end
			notLoaded = false
			set(ice_add,0)
		end
		-- if start_timer<1 then
			-- set(ice_add,1)
		-- end
		start_timer=start_timer+passed
		-- set(db1,temp1)	
		-- set(db2,temp2)	
		-- set(db3,temp3)	
		--if MASTER then 
		local fus_snow=get(snow_on_fuse)
		if fus_snow>0.01 then
			set(frm_ice,  fus_snow/5) 
			set(frm_ice2, fus_snow/5) 
			set(stab_ice_1, fus_snow/5) 
			set(stab_ice_2,fus_snow/5) 
		end
		set(wings_heat_on, slat_heat)
		set(wing_heating, wing_heat)
		set(slat_heating, slat_lamp)
		set(ai_115_2_cc, slat_heat * slat_amp)
		set(wing_heat_t, wing_tube)
		set(stab_heat_t, stab_tube)	
		set(stab_heat_on,stab_ht)
		--end
	end


	
	
	--set(ice_window_heat_on, 0)

end


