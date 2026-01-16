
--defineProperty("weel_switch", globalPropertyi("tu154b2/custom/xap/An24_gauges/noseweel"))
defineProperty("nosewheel_turn_enable", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_enable")) -- выключатель поворота передней стойки на штурвале
defineProperty("nosewheel_turn_power", globalPropertyi("tu154b2/custom/hydro/nosewheel_turn_power"))
defineProperty("nosewheel_turn_sel", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_sel")) -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2

defineProperty("have_pedals", globalPropertyi("tu154b2/custom/have_pedals"))

--tiller_avail = globalPropertyi("sim/joystick/joy_mapped_axis_avail[37]") -- index 37 is nosewheel tiller
tiller_val = globalPropertyf("tu154b2/custom/SC/gear/tire_steer_command_deg") 

joy_yaw = globalPropertyf("tu154b2/custom/SC/yoke_heading_ratio") -- yaw position of joystick

tire_steer_command_deg = globalProperty("sim/flightmodel2/gear/tire_steer_command_deg[0]")
tire_steer_actual_deg = globalProperty("sim/flightmodel2/gear/tire_steer_actual_deg[0]")


defineProperty("pushback", globalPropertyi("bp/connected"))
defineProperty("push_started", globalPropertyi("bp/started"))
defineProperty("override_wheel_steer", globalPropertyi("sim/operation/override/override_wheel_steer"))

-- results
defineProperty("weel_angle1", globalPropertyf("sim/aircraft/gear/acf_nw_steerdeg1"))
defineProperty("weel_angle2", globalPropertyf("sim/aircraft/gear/acf_nw_steerdeg2"))
--defineProperty("weel_on", globalPropertyf("sim/cockpit2/controls/nosewheel_steer_on"))

defineProperty("lock", globalPropertyi("sim/cockpit2/controls/nosewheel_steer_on"))
defineProperty("tiller_angle", globalPropertyf("tu154b2/custom/anim/tiller_pos"))
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("deflection_mtr_1", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))
defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed"))
defineProperty("frict", globalPropertyi("sim/weather/runway_friction"))
--defineProperty("yaw_apd", globalPropertyf("sim/flightmodel/position/R"))
--defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
--defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))

local frict_tbl={{ 0, 1},
		 {1, 0.95},
		 { 2, 0.9},
         {3, 0.8},
         {4, 0.9},
         {5, 0.85},
         {6, 0.8},
         {7, 0.85},
         {8, 0.8},
         {9, 0.75},
         {7, 0.75},
         {8, 0.7},
         {9, 0.65},
		 {13, 0.75},
		 {14, 0.7},
		 {15, 0.65}}
		 
local turn_speed_tbl={{ -1, 20},
		 {0.1, 20},
		 {0.3, 20},
		 {0.43, 17},
		 {1, 17}}



local gear_turn_pos = 0
--local nws_act=0
local nws_set=0
set(weel_angle1, 63) set(weel_angle2, 63)
function update()
	set(override_wheel_steer, 1)
	set(lock,1)
	if get(ismaster)~=1 then
		local compression=get(deflection_mtr_1)
		local press = get(gs_press_2)
		
		local grnd=compression>0
		local pbConnect = get(pushback) == 1
		local pbStart = get(push_started) 
		local turn_mode = get(nosewheel_turn_sel)
		local nws_on=get(nosewheel_turn_enable)
		local nws_power=bool2int(get(bus27_volt_left) > 13 and nws_on == 1 and grnd)
		--local friction_type=get(frict)
		-- local nose_load=math.max((5*math.pow(compression,2)-4*compression+1)*interpolate(frict_tbl,friction_type),0.2)
		-- local turn_max = (math.min(2+get(groundspeed),2.5)/2.5*5*nose_load*press/210)*1.75  
		local turn_max=math.min(interpolate(turn_speed_tbl,compression)/interpolate(frict_tbl,get(frict))+get(groundspeed)*2,20)*1.2*press/210 -- maximum NW turning speed, slower when standing still or nose heavy or low pressure
		if press<compression*100 then
			turn_max=0
		end
		set(nosewheel_turn_power,nws_power)
		-- if not pbConnect and not pbStart and press<10 then
			-- set(lock,0)
		-- else
			-- set(lock,1)
		-- end
		-- turn nosewheel
		local passed=get(frame_time)
		local pedal_steer=get(have_pedals)
		local tiller=get(tiller_val)*63
		local pedals=get(joy_yaw)*10
		if turn_mode == 1 and pedal_steer==1 then -- use tiller			
			-- combine tiller and pedal steer
			nws_set= tiller + pedals
			if tiller<0 and pedals<0 then
				nws_set=math.min(tiller,pedals)
			elseif tiller>0 and pedals>0 then
				nws_set=math.max(tiller,pedals)
			end
		else -- use yaw only with no tiller
			nws_set=get(joy_yaw)*(10+53*turn_mode)
			tiller=nws_set
		end
		nws_set=nws_set
		local turn_rate=nws_set - gear_turn_pos
		if turn_rate<0 and math.abs(turn_rate)>turn_max then
			turn_rate=-turn_max
		elseif  turn_rate>0 and math.abs(turn_rate)>turn_max then
			turn_rate=turn_max
		end
		gear_turn_pos = gear_turn_pos + turn_rate*nws_power*passed -gear_turn_pos*passed*math.max((0.5-compression*3),0)
		if not pbConnect or nws_power>0 then
			set(tire_steer_command_deg,gear_turn_pos)
		end
		if nws_power>0 then
			set(tiller_angle,tiller/63*turn_mode)
		else
			set(tiller_angle,tiller/63*pedal_steer)
		end
	end
	

	
	
	
end


--gear_togle_command = findCommand("sim/flight_controls/gyro_rotor_trim_up")

gear_togle_command = findCommand("sim/flight_controls/nwheel_steer_toggle")
function gear_toggle_handler(phase)
	if 0 == phase then
		if get(nosewheel_turn_enable) ~= 1 then set(nosewheel_turn_enable, 1)
		else set(nosewheel_turn_enable, 0) end
	end
return 0
end

registerCommandHandler(gear_togle_command, 0, gear_toggle_handler)

function onModuleDone()
	set(override_wheel_steer, 0)

end