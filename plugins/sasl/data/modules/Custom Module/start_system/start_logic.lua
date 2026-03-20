-- this is starting logic

-- controls
defineProperty("starter_cap", globalPropertyi("tu154b2/custom/switchers/eng/starter_cap")) -- крышка панели запуска
defineProperty("starter_switch", globalPropertyi("tu154b2/custom/switchers/eng/starter_switch")) -- выключатель запуска
defineProperty("starter_eng_select", globalPropertyi("tu154b2/custom/switchers/eng/starter_eng_select")) -- выбор двигателя
defineProperty("starter_mode", globalPropertyi("tu154b2/custom/switchers/eng/starter_mode")) -- режим запуска

defineProperty("starter_start", globalPropertyi("tu154b2/custom/buttons/eng/starter_start")) -- кнопка запуска
defineProperty("starter_stop", globalPropertyi("tu154b2/custom/buttons/eng/starter_stop")) -- преркащения запуска

defineProperty("flight_start_1", globalPropertyi("tu154b2/custom/buttons/eng/flight_start_1")) -- запуск в полете
defineProperty("flight_start_2", globalPropertyi("tu154b2/custom/buttons/eng/flight_start_2")) -- запуск в полете
defineProperty("flight_start_3", globalPropertyi("tu154b2/custom/buttons/eng/flight_start_3")) -- запуск в полете

-- default datarefs and commands
defineProperty("sim_igniter1", globalProperty("sim/cockpit2/engine/actuators/igniter_on[0]")) -- igniters on/off
defineProperty("sim_igniter2", globalProperty("sim/cockpit2/engine/actuators/igniter_on[1]")) -- igniters on/off
defineProperty("sim_igniter3", globalProperty("sim/cockpit2/engine/actuators/igniter_on[2]")) -- igniters on/off

defineProperty("sim_ignition1", globalProperty("sim/cockpit2/engine/actuators/ignition_on[0]")) -- ignition on/off
defineProperty("sim_ignition2", globalProperty("sim/cockpit2/engine/actuators/ignition_on[1]")) -- ignition on/off
defineProperty("sim_ignition3", globalProperty("sim/cockpit2/engine/actuators/ignition_on[2]")) -- ignition on/off

-- defineProperty("sim_starter1", globalProperty("sim/cockpit/engine/starter_duration[1]")) -- time of starter work
-- defineProperty("sim_starter2", globalProperty("sim/cockpit/engine/starter_duration[0]")) -- time of starter work
-- defineProperty("sim_starter3", globalProperty("sim/cockpit/engine/starter_duration[2]")) -- time of starter work

-- defineProperty("sim_start1", globalProperty("sim/flightmodel2/engines/starter_making_torque[1]")) -- time of starter work
-- defineProperty("sim_start2", globalProperty("sim/flightmodel2/engines/starter_making_torque[0]")) -- time of starter work
-- defineProperty("sim_start3", globalProperty("sim/flightmodel2/engines/starter_making_torque[2]")) -- time of starter work

starter_1 = findCommand("sim/starters/engage_starter_1")  -- simulator command for starter 1
starter_2 = findCommand("sim/starters/engage_starter_2")  -- simulator command for starter 2
starter_3 = findCommand("sim/starters/engage_starter_3")  -- simulator command for starter 3



-- sources
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("apu_air_doors", globalPropertyf("tu154b2/custom/eng/apu_air_doors")) -- положение створок для накачки воздуха
defineProperty("apu_n1", globalPropertyf("tu154b2/custom/eng/apu_n1")) -- обороты ВСУ

defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))   
defineProperty("eng_rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("eng_rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("eng_work1", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[0]"))
defineProperty("eng_work2", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[1]"))
defineProperty("eng_work3", globalProperty("sim/flightmodel2/engines/engine_is_burning_fuel[2]"))

defineProperty("eng_airvalve_1", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_1")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_2", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_2")) -- открытие отбора воздуха от двигателя
defineProperty("eng_airvalve_3", globalPropertyf("tu154b2/custom/bleed/eng_airvalve_3")) -- открытие отбора воздуха от двигателя

defineProperty("tank1_1", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_1"))
defineProperty("tank1_2", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_2"))
defineProperty("tank1_3", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_3"))
defineProperty("tank1_4", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_4"))

defineProperty("auto_tanks_turn", globalPropertyi("tu154b2/custom/fuel/auto_tanks_turn")) -- 0 = none, 1 = 2, 2 = 2+3, 3 = 3, 4 = 4
defineProperty("fuel_flow_mode", globalPropertyi("tu154b2/custom/switchers/fuel/fuel_flow_on")) -- режим расходомера. ручное - автомат


-- caps
defineProperty("engine_caps", globalPropertyi("tu154b2/custom/anim/engine_caps"))  -- чехлы и крышки


-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec")) -- sim time

-- results
defineProperty("starter_pressure", globalPropertyf("tu154b2/custom/start/starter_pressure")) -- двление в системе запуска

defineProperty("apd_working_1", globalPropertyf("tu154b2/custom/start/apd_working_1")) -- работа системы запуска
defineProperty("apd_working_2", globalPropertyf("tu154b2/custom/start/apd_working_2")) -- работа системы запуска
defineProperty("apd_working_3", globalPropertyf("tu154b2/custom/start/apd_working_3")) -- работа системы запуска

defineProperty("start_sys_work", globalPropertyf("tu154b2/custom/start/start_sys_work")) -- работа системы запуска

defineProperty("fuel_in_1", globalPropertyi("tu154b2/custom/start/fuel_in_1")) -- подача топлива от системы запуска
defineProperty("fuel_in_2", globalPropertyi("tu154b2/custom/start/fuel_in_2")) -- подача топлива от системы запуска
defineProperty("fuel_in_3", globalPropertyi("tu154b2/custom/start/fuel_in_3")) -- подача топлива от системы запуска

defineProperty("door_cargo", globalPropertyi("tu154b2/custom/anim/cargo_2"))

-------------
defineProperty("starter_torq", globalPropertyf("sim/aircraft/engine/acf_starter_torque_ratio")) -- мощность стартера. 0.18 для нормального запуска
defineProperty("starter_rpm", globalPropertyf("sim/aircraft/engine/acf_starter_max_rpm_ratio")) -- макс обороты стартера 0-1
defineProperty("jet_spoolup_time", globalPropertyf("sim/aircraft/engine/acf_spooltime_jet")) -- время раскрутки двигателя. 5 сек по дефолту


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- XP11 workaround

defineProperty("APU_switch", globalPropertyf("sim/cockpit/engine/APU_switch")) -- APU starter switch 0 = off, 1 = on, 2 = start
defineProperty("APU_running", globalPropertyf("sim/cockpit/engine/APU_running")) -- boolean	APU running - 1 = on, 0 = off.
defineProperty("APU_N1", globalPropertyf("sim/cockpit/engine/APU_N1"))

defineProperty("apu_bleed", globalPropertyf("sim/cockpit2/bleedair/actuators/apu_bleed"))
defineProperty("heater", globalPropertyi("sim/custom/b2/heating_starter"))
defineProperty("oat", globalPropertyf("sim/weather/temperature_ambient_c"))
defineProperty("rho", globalPropertyf("sim/weather/rho"))
defineProperty("bleed_air_mode", globalPropertyi("sim/cockpit2/pressurization/actuators/bleed_air_mode"))
defineProperty("fuel_1", globalProperty("sim/cockpit2/engine/actuators/starter_fuel_flow_ratio[0]"))
defineProperty("fuel_2", globalProperty("sim/cockpit2/engine/actuators/starter_fuel_flow_ratio[1]"))
defineProperty("fuel_3", globalProperty("sim/cockpit2/engine/actuators/starter_fuel_flow_ratio[2]"))
defineProperty("fuel_time", globalPropertyf("sim/aircraft/engine/fuel_intro_time_jet"))
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel2/position/true_airspeed"))
defineProperty("start_run_1", globalProperty("sim/flightmodel2/engines/starter_is_running[0]"))
defineProperty("start_run_2", globalProperty("sim/flightmodel2/engines/starter_is_running[1]"))
defineProperty("start_run_3", globalProperty("sim/flightmodel2/engines/starter_is_running[2]"))
defineProperty("fuel_cutoff_1", globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_1")) -- рычаг пожарного крана
defineProperty("fuel_cutoff_2", globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_2")) -- рычаг пожарного крана
defineProperty("fuel_cutoff_3", globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_3")) -- рычаг пожарного крана
defineProperty("rt1_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red1"))
defineProperty("rt2_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red2"))
defineProperty("rt3_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red3"))
defineProperty("hot_1", globalPropertyf("tu154b2/custom/engine/hotstart_1"))
defineProperty("hot_2", globalPropertyf("tu154b2/custom/engine/hotstart_2"))
defineProperty("hot_3", globalPropertyf("tu154b2/custom/engine/hotstart_3"))
defineProperty("fail_1", globalPropertyf("tu154b2/custom/engine/startfail_1"))
defineProperty("fail_2", globalPropertyf("tu154b2/custom/engine/startfail_2"))
defineProperty("fail_3", globalPropertyf("tu154b2/custom/engine/startfail_3"))
defineProperty("heater_cur", globalPropertyf("tu154b2/custom/engines/heater_current"))
defineProperty("flt_idle", globalPropertyf("tu154b2/custom/engines/flight_idle"))
defineProperty("airstart", globalPropertyi("tu154b2/custom/engines/airstart"))
defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug2"))

--[[
sim/aircraft/engine/acf_starter_torque_ratio	float	y	Ratio	This is the ratio of the engine's maximum torque that the starter applies at its design RPM.
sim/aircraft/engine/acf_starter_max_rpm_ratio	float	y	Ratio	This is the ratio of the engine's max RPM that the starter can spin the engine up to before it loses torque.
--]]

local time_last = get(sim_run_time)  -- time for previous frame

local eng1_start_time = time_last - 100
local eng2_start_time = time_last - 100
local eng3_start_time = time_last - 100

local eng1_starting = false
local eng2_starting = false
local eng3_starting = false

local eng1_starting_air = false
local eng2_starting_air = false
local eng3_starting_air = false

local eng1_rpm_check = false
local eng2_rpm_check = false
local eng3_rpm_check = false

local started_1=0

commandEnd(starter_1)
commandEnd(starter_2)
commandEnd(starter_3)
set(sim_ignition1, 0) 
set(sim_igniter1, 0)	
set(sim_ignition2, 0) 
set(sim_igniter2, 0)	
set(sim_ignition3, 0) 
set(sim_igniter3, 0)	

local start_button_pressed = false
local starter_press = 0

local select_last = get(starter_eng_select)

local START_SEQ_TIME = 56 -- overal time for start sequence
local RPM_FOR_FUEL_IN = 16 -- RPM, when fuel opens into engine
--local RPM_FOR_IGNITER = 20 -- RPM, when igniters start working
local RPM_APD_OFF = 34

local overtemp_1=0
local overtemp_2=0
local overtemp_3=0
local failstart_1=0
local failstart_2=0
local failstart_3=0
local eng_start_press_t = {{ -100000, 0.0 },    -- bugs walkaround
                  {  0, 00 }, -- zero pressure
				  {  70, 0.35 }, --
           	      {  83, 1.05 }, -- 
				  {  100, 1.3 },    -- 
          	      {  1000000000, 110 }}    -- bugs walkaround	
				  
local start_torq_t = {{ -100, 1 },    -- bugs walkaround
                  {  25, 1 }, 
				  {  40, 0.9 }, 
          	      {  100, 0.9 }} 
				  
local start_rpm_t = {{ -100, 0.5 },
				  {  0, 0.5 },
				  --{  5, 0.3 },
				  --{  10, 0.9 },
                  {  16, 1 },
				  {  20, 1 },
				  --{  35, 0 }, 				  
          	      {  100, 1 }} 
				  
local fuel_table = {{ -100, 0 },    -- bugs walkaround
				  {  16, 0.35 }, 
                  -- {  19.5, 0.01 }, 
				  -- {  20, 0.0101 }, 
				  -- {  22, 0.0101 }, 
				  -- {  25, 0.075 }, 
				  {  30, 0.35 }, 
				  {  40, 1 }, 
				  -- {  35, 0.45 }, 
				  -- {  40, 0.9}, 
				  -- {  42, 0.95  }, 
				  -- {  51, 0.96  },
				  -- {  52, 0.99  },
				  -- {  53, 0.995  },
				  -- {  54, 0.9995  },
				  --{  54.5, 0.999  },
				  -- {  54, 1  }, 
          	      {  100, 1 }} 
local strt_tbl={{ -100, 1.2 },  
			{0, 1.2},
          {15, 1.7},
          {20, 1.2},
          {35, 0.25},
          {55, 0},
		  {500, 0}}
local burn_tbl={{0, 0},
          {16, 0.01},
          {20, 0.5},
          -- {35, 2.1},
          -- {40, 3},
          {55, 4.5},
		  {60, 5},		
		  {100, 5}}			  
local c_aero=0.0003
local c_f=0.035
local c_q=0.000008
local M_rot=0.15
local start_1=0
local start_2=0
local start_3=0
local start_pressed=0
function update()
	local eng1_rt=math.min(0.99,get(rt1_red)*0.6)
	local eng2_rt=math.min(0.99,get(rt2_red)*0.6)
	local eng3_rt=math.min(0.99,get(rt3_red)*0.6)
	local stop_1=bool2int(get(fuel_cutoff_1)>0.95)
	local stop_2=bool2int(get(fuel_cutoff_2)>0.95)
	local stop_3=bool2int(get(fuel_cutoff_3)>0.95)
	set(bleed_air_mode, 5)
	local burn_1=get(eng_work1)
	local burn_2=get(eng_work2)
	local burn_3=get(eng_work3)
	set(APU_N1, 100) -- XP11 bug
	
	starter_press = get(starter_pressure)
	
	local passed = get(frame_time)
	if get(starter_start) == 1 then
		start_pressed=start_pressed+passed
	else
		start_pressed=0
	end
	local rpm1 = get(eng_rpm1)
	local rpm2 = get(eng_rpm2)
	local rpm3 = get(eng_rpm3)
	
	local time_now = get(sim_run_time)
	
	local blocked = get(engine_caps) == 1
	set(fuel_time,999999)
	-- automatic fuel cutoff if engines shuted down or didn's start properly
	if (time_now - eng1_start_time > START_SEQ_TIME and rpm1 < RPM_APD_OFF) or (blocked and rpm1 >= 5) then 
		--set(fuel_in_1, 0) 
		set(sim_ignition1, 0) 
		set(sim_igniter1, 0)
		commandEnd(starter_1)
	end
	if (time_now - eng2_start_time > START_SEQ_TIME and rpm2 < RPM_APD_OFF) or (blocked and rpm2 >= 5) then 
		--set(fuel_in_2, 0) 
		set(sim_ignition2, 0) 
		set(sim_igniter2, 0)
		commandEnd(starter_2)
	end
	if (time_now - eng3_start_time > START_SEQ_TIME and rpm3 < RPM_APD_OFF) or (blocked and rpm3 >= 5) then 
		--set(fuel_in_3, 0) 
		set(sim_ignition3, 0) 
		set(sim_igniter3, 0)
		commandEnd(starter_3)
	
	end	
	local out_temp=get(oat)
	local dens=get(rho)
	local corr_temp=out_temp+(760-dens*287*(out_temp+273)/133.3)/40*6.2
	--set(db2,get(rho)*287*(out_temp+273)/133.3)
	local temp_coef=-0.0001068*math.pow(corr_temp,2) -0.008125*corr_temp + 1.346
	local press_1 = burn_1 * get(eng_airvalve_1) * interpolate(eng_start_press_t, rpm1)
	local press_2 = burn_2 * get(eng_airvalve_2) * interpolate(eng_start_press_t, rpm2)
	local press_3 = burn_3 * get(eng_airvalve_3) * interpolate(eng_start_press_t, rpm3)

	local power27L = get(bus27_volt_left) > 13
	local power27R = get(bus27_volt_right) > 13
	
	local start_mode = get(starter_mode)
	local power_sys = get(starter_switch) == 1 and power27L and power27R
	local start_button = start_pressed > 0.3
	local eng_select = get(starter_eng_select)
	
	local stop_button = get(starter_stop) >0.5 or eng_select ~= select_last   -- simulate stop sequence, when engine selector changed pos
	

	select_last = eng_select
	local heat=get(heater)
	if power_sys then 
		set(start_sys_work, 1)
		-- air start system logic
		if get(apu_air_doors) * get(apu_n1)*temp_coef * 0.01>0.5 then
			--set(bleed_air_mode, 3)
		else
			--set(bleed_air_mode, 3)
		end
		starter_press = starter_press + (get(apu_air_doors) * get(apu_n1)*temp_coef * 0.01 + (press_1 + press_2 + press_3)*temp_coef) * passed
		
		-- start engine starting process
		local fuel_system = (get(tank1_1) + get(tank1_2) + get(tank1_3) + get(tank1_4) == 4) or start_mode==0
		local doors=get(door_cargo)==0 or eng_select~=3 --block eng3 start with rear cargo door open
		
		
		if not eng1_starting and not eng2_starting and not eng3_starting and start_button and doors and starter_press > 1.5 and get(fuel_flow_mode)>0 and fuel_system then
			if eng_select == 1 and power27L and rpm1 < RPM_APD_OFF then
				failstart_1=math.random(0,0.999)
				if failstart_1>1+math.max(-20,out_temp)/20 then
					failstart_1=1
				else
					failstart_1=0
				end
				set(sim_ignition1, start_mode) 
				set(sim_igniter1, start_mode)
				eng1_start_time = time_now
				--set(fuel_1,0.01)
				eng1_starting = true
				started_1=0
				eng2_starting = false
				eng3_starting = false
				eng1_starting_air = false
				eng2_starting_air = false
				eng3_starting_air = false
			elseif eng_select == 2 and power27R and rpm2 < RPM_APD_OFF then
				failstart_2=math.random(0,0.999)
				if failstart_2>1+math.max(-20,out_temp)/20 then
					failstart_2=1
				else
					failstart_2=0
				end
				set(sim_ignition2, start_mode) 
				set(sim_igniter2, start_mode)
				eng2_start_time = time_now
				--set(fuel_2,0.01)
				eng1_starting = false
				eng2_starting = true
				eng3_starting = false
				eng1_starting_air = false
				eng2_starting_air = false
				eng3_starting_air = false
			elseif eng_select == 3 and power27R and rpm3 < RPM_APD_OFF then
				failstart_3=math.random(0,0.999)
				if failstart_3>1+math.max(-20,out_temp)/20 then
					failstart_3=1
				else
					failstart_3=0
				end
				set(sim_ignition3, start_mode) 
				set(sim_igniter3, start_mode)
				eng3_start_time = time_now
				--set(fuel_3,0.01)
				eng1_starting = false
				eng2_starting = false
				eng3_starting = true
				eng1_starting_air = false
				eng2_starting_air = false
				eng3_starting_air = false
			end
		end
		
	else
		set(start_sys_work, 0)
	end
	
		----------------
		-- engine 1 --
		-----------------
		
	-- start engines on ground
	if eng1_starting and not eng1_starting_air and power27L then
		-- turn on the starter
		if time_now - eng1_start_time > 2 and time_now - eng1_start_time <= START_SEQ_TIME then
			commandBegin(starter_1)

		end 
		
		-- turn OFF starter
		if rpm1 > RPM_APD_OFF or time_now - eng1_start_time > START_SEQ_TIME then
			commandEnd(starter_1)
			set(sim_ignition1, 0) 
			set(sim_igniter1, 0)	
			eng1_starting = false
		end
		-- turn OFF ignition
		if time_now - eng1_start_time > 35 then
			set(sim_ignition1, 0) 
			set(sim_igniter1, 0)
		end
		
		-- start fuel
		if rpm1 >= RPM_FOR_FUEL_IN then
			set(fuel_in_1, start_mode*stop_1)
		end
		
		-- start ignition
		-- if rpm1 >= RPM_FOR_IGNITER then
			-- set(sim_ignition1, 1) 
			-- set(sim_igniter1, 1)			
		-- end
		
		-- stop button
		if stop_button then
			commandEnd(starter_1)

			eng1_starting = false
			set(sim_ignition1, 0) 
			set(sim_igniter1, 0)
			eng1_start_time = eng1_start_time - 70			
		end
	
	end
	
	-- start process on air
	if not eng1_starting and not eng1_starting_air and get(flight_start_1) == 1 and power27L then
		eng1_start_time = time_now
		eng1_starting_air = true
		started_1=0
		--started_1=0
	end
		
	if eng1_starting_air then 
		if time_now - eng1_start_time < START_SEQ_TIME and rpm1 < RPM_APD_OFF + 20 then
			set(sim_ignition1, 1) 
			set(sim_igniter1, 1)			
			--commandBegin(starter_1)
			set(fuel_in_1, stop_1)
		else
			set(sim_ignition1, 0) 
			set(sim_igniter1, 0)	
			--commandEnd(starter_1)
			eng1_starting_air = false
		end
	end

		----------------
		-- engine 2 --
		-----------------
		
	-- start engines on ground
	if eng2_starting and not eng2_starting_air and power27R then
		-- turn on the starter
		if time_now - eng2_start_time > 2 and time_now - eng2_start_time <= START_SEQ_TIME then
			commandBegin(starter_2)
		end 
		
		-- turn OFF starter
		if rpm2 > RPM_APD_OFF or time_now - eng2_start_time > START_SEQ_TIME then
			commandEnd(starter_2)
			set(sim_ignition2, 0) 
			set(sim_igniter2, 0)	
			eng2_starting = false
		end
		if time_now - eng2_start_time > 35 then
			set(sim_ignition2, 0) 
			set(sim_igniter2, 0)
		end
		-- start fuel
		if rpm2 >= RPM_FOR_FUEL_IN then
			set(fuel_in_2, start_mode*stop_2)
		end
		
		-- start ignition
		-- if rpm2 >= RPM_FOR_IGNITER then
			-- set(sim_ignition2, 1) 
			-- set(sim_igniter2, 1)			
		-- end
		
		-- stop button
		if stop_button then
			commandEnd(starter_2)
			eng2_starting = false
			set(sim_ignition2, 0) 
			set(sim_igniter2, 0)
			eng2_start_time = eng2_start_time - 70			
		end
	
	end

	-- start process on air
	if not eng2_starting and not eng2_starting_air and get(flight_start_2) == 1 and power27R then
		eng2_start_time = time_now
		eng2_starting_air = true
	end
		
	if eng2_starting_air then 
		if time_now - eng2_start_time < START_SEQ_TIME and rpm2 < RPM_APD_OFF + 20 then
			set(sim_ignition2, 1) 
			set(sim_igniter2, 1)			
			--commandBegin(starter_2)
			set(fuel_in_2, stop_2)
		else
			--commandEnd(starter_2)
			set(sim_ignition2, 0) 
			set(sim_igniter2, 0)	
			eng2_starting_air = false
		end
	end
	
		----------------
		-- engine 3 --
		-----------------
		
	-- start engines on ground
	if eng3_starting and not eng3_starting_air and power27R then
		-- turn on the starter
		if time_now - eng3_start_time > 2 and time_now - eng3_start_time <= START_SEQ_TIME then
			commandBegin(starter_3)
		end 
		
		-- turn OFF starter
		if rpm3 > RPM_APD_OFF or time_now - eng3_start_time > START_SEQ_TIME then
			commandEnd(starter_3)
			eng3_starting = false
		end
		if time_now - eng3_start_time > 35 then
			set(sim_ignition3, 0) 
			set(sim_igniter3, 0)
		end		
		-- start fuel
		if rpm3 >= RPM_FOR_FUEL_IN then
			set(fuel_in_3, start_mode*stop_3)
		end
		
		-- start ignition
		-- if rpm3 >= RPM_FOR_IGNITER then
			-- set(sim_ignition3, 1) 
			-- set(sim_igniter3, 1)			
		-- end
		
		-- stop button
		if stop_button then
			commandEnd(starter_3)
			eng3_starting = false
			set(sim_ignition3, 0) 
			set(sim_igniter3, 0)
			eng3_start_time = eng3_start_time - 70			
		end
	
	end

	-- start process on air
	if not eng3_starting and not eng3_starting_air and get(flight_start_3) == 1 and power27R then
		eng3_start_time = time_now
		eng3_starting_air = true
	end
		
	if eng3_starting_air then 
		if time_now - eng3_start_time < START_SEQ_TIME and rpm3 < RPM_APD_OFF + 20 then
			set(sim_ignition3, 1) 
			set(sim_igniter3, 1)			
			--commandBegin(starter_3)
			set(fuel_in_3, stop_3)
		else
			set(sim_ignition3, 0) 
			set(sim_igniter3, 0)	
			--commandEnd(starter_3)
			eng3_starting_air = false
		end
	end
	if stop_1==0 then
		set(fuel_in_1, 0) 
	end
	if stop_2==0 then
		set(fuel_in_2, 0) 
	end
	if stop_3==0 then
		set(fuel_in_3, 0) 
	end

----------------------------------------	
	-- stop starter (bugs workariond)
	if not eng1_starting and not eng1_starting_air then 
		commandEnd(starter_1)
	end
	if not eng2_starting and not eng2_starting_air then 
		commandEnd(starter_2)
	end
	if not eng3_starting and not eng3_starting_air then 
		commandEnd(starter_3)
	end	
	
	-- reduce starter presure
	starter_press = starter_press - (0.2 * passed) * (starter_press + 1)
	starter_press = starter_press - bool2int(eng1_starting or eng2_starting or eng3_starting) * passed * 0.4
	
	if starter_press > 4.8 then starter_press = 4.8
	elseif starter_press < 0 then starter_press = 0 end
	
	set(starter_pressure, starter_press)
	--set(db2, starter_press)
	set(apd_working_1, bool2int(eng1_starting))
	set(apd_working_2, bool2int(eng2_starting))
	set(apd_working_3, bool2int(eng3_starting))
	set(airstart,bool2int(eng1_starting_air or eng2_starting_air or eng3_starting_air))
	local q=dens*math.pow(get(true_airspeed),2)/2
	-- Custom Starter Model (X-Plane's starter model is not good enough!)
	local c_burn=0.3*dens/1.227
	local c_starter=0.15*dens/1.227
	local min_idle=get(flt_idle)
	local burn_lim=(c_aero*dens*math.pow(min_idle+4,2)+c_f)/c_burn
	burn_tbl={{0, 0},
	  {16, 0.01},
	  {20, 0.5},
	  {min_idle, burn_lim},		
	  {100, burn_lim}}		
	local hs_1=get(hot_1)
	local hs_2=get(hot_2)
	local hs_3=get(hot_3)
	if get(ismaster) == 1 then
		overtemp_1=get(hot_1)
		overtemp_2=get(hot_2)
		overtemp_3=get(hot_3)
		failstart_1=get(fail_1)
		failstart_2=get(fail_2)
		failstart_3=get(fail_3)
	end
	if eng1_starting or (burn_1>0 and rpm1<=54.2) then
		set(heater_cur,50*heat*bool2int(eng1_starting)*get(sim_ignition1))
		set(fuel_1,interpolate(fuel_table,rpm1)-eng1_rt)
		-- fuel is flooding the engine during a failed start
		if failstart_1==1 and burn_1>0 then
			overtemp_1=overtemp_1+passed
			if overtemp_1>3 then
				overtemp_1=3
			end
		end
		local a=-c_aero*dens*math.pow(rpm1,2)+c_q*q-c_f+c_burn*(1-math.min(1,overtemp_1)*0.5)*interpolate(burn_tbl,rpm1)*burn_1*(1-eng1_rt)*(1-failstart_1)+c_starter*interpolate(strt_tbl,rpm1)*get(start_run_1)
		start_1=start_1+a/M_rot*passed
		set(eng_rpm1,start_1)
		start_2=rpm2
		start_3=rpm3
		if heat>0 then
			failstart_1=0
		end
	elseif eng2_starting or (burn_2>0 and rpm2<=54.2) then
		set(heater_cur,50*heat*bool2int(eng2_starting)*get(sim_ignition2))
		set(fuel_2,interpolate(fuel_table,rpm2)-eng2_rt)
		if failstart_2==1 and burn_2>0 then
			overtemp_2=overtemp_2+passed
			if overtemp_2>3 then
				overtemp_2=3
			end
		end
		local a=-c_aero*dens*math.pow(rpm2,2)+c_q*q-c_f+c_burn*(1-math.min(1,overtemp_2)*0.5)*math.min(interpolate(burn_tbl,rpm2),burn_lim)*burn_2*(1-eng2_rt)*(1-failstart_2)+c_starter*interpolate(strt_tbl,rpm2)*get(start_run_2)
		overtemp_2=overtemp_2-passed/20
		if overtemp_2<0 then
			overtemp_2=0
		end
		start_2=start_2+a/M_rot*passed
		set(eng_rpm2,start_2)
		start_1=rpm1
		start_3=rpm3
		if heat>0 then
			failstart_2=0
		end
	elseif eng3_starting or (burn_3>0 and rpm3<=54.2) then
		set(heater_cur,50*heat*bool2int(eng3_starting)*get(sim_ignition3))
		set(fuel_3,interpolate(fuel_table,rpm3)-eng3_rt)
		if failstart_3==1 and burn_3>0 then
			overtemp_3=overtemp_3+passed
			if overtemp_3>3 then
				overtemp_3=3
			end
		end
		local a=-c_aero*dens*math.pow(rpm3,2)+c_q*q-c_f+c_burn*(1-math.min(1,overtemp_3)*0.5)*math.min(interpolate(burn_tbl,rpm3),burn_lim)*burn_3*(1-eng3_rt)*(1-failstart_3)+c_starter*interpolate(strt_tbl,rpm3)*get(start_run_3)
		overtemp_3=overtemp_3-passed/20
		if overtemp_3<0 then
			overtemp_3=0
		end
		start_3=start_3+a/M_rot*passed
		set(eng_rpm3,start_3)
		start_1=rpm1
		start_2=rpm2
		if heat>0 then
			failstart_3=0
		end
	else
		set(heater_cur,0)
		set(fuel_1,1-eng1_rt)
		set(fuel_2,1-eng2_rt)
		set(fuel_3,1-eng3_rt)
		start_1=rpm1
		start_2=rpm2
		start_3=rpm3
	end
	if get(ismaster) ~= 1 then 	
		-- excess fuel is purged from the engine
		overtemp_1=overtemp_1-passed*rpm1/200
		if overtemp_1<0 then
			overtemp_1=0
		end	
		overtemp_2=overtemp_2-passed*rpm2/200
		if overtemp_2<0 then
			overtemp_2=0
		end	
		overtemp_3=overtemp_3-passed*rpm3/200
		if overtemp_3<0 then
			overtemp_3=0
		end	
		set(hot_1,overtemp_1)
		set(hot_2,overtemp_2)
		set(hot_3,overtemp_3)
		set(fail_1,failstart_1)
		set(fail_2,failstart_2)
		set(fail_3,failstart_3)		
	end

		
end