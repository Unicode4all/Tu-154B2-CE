-- this is flight controls override script for SmartCopilot

-- Sim Datarefs
--defineProperty("yoke_pitch_ratio", globalPropertyf("sim/joystick/yoke_pitch_ratio")) 
--defineProperty("yoke_roll_ratio", globalPropertyf("sim/joystick/yoke_roll_ratio")) 
--defineProperty("yoke_heading_ratio", globalPropertyf("sim/joystick/yoke_heading_ratio")) 

defineProperty("yoke_pitch_ratio", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) -- pitch position of joytick
defineProperty("yoke_roll_ratio", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) -- roll position of joystick
defineProperty("yoke_heading_ratio", globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio")) -- yaw position of joystick


defineProperty("ENGN_thro_0", globalProperty("sim/flightmodel/engine/ENGN_thro[0]")) 
defineProperty("ENGN_thro_1", globalProperty("sim/flightmodel/engine/ENGN_thro[1]")) 
defineProperty("ENGN_thro_2", globalProperty("sim/flightmodel/engine/ENGN_thro[2]")) 

defineProperty("ENGN_propmode_0", globalProperty("sim/flightmodel/engine/ENGN_propmode[0]")) 
defineProperty("ENGN_propmode_2", globalProperty("sim/flightmodel/engine/ENGN_propmode[2]")) 

defineProperty("tire_steer_command_deg", globalProperty("sim/joystick/joy_mapped_axis_value[37]")) 

defineProperty("l_brake_add", globalPropertyf("sim/flightmodel/controls/l_brake_add")) 
defineProperty("r_brake_add", globalPropertyf("sim/flightmodel/controls/r_brake_add")) 
defineProperty("int_brakes_L", globalPropertyf("tu154b2/custom/brakes/int_brakes_L")) 
defineProperty("int_brakes_R", globalPropertyf("tu154b2/custom/brakes/int_brakes_R")) 
defineProperty("parkbrake", globalPropertyf("sim/flightmodel/controls/parkbrake")) 


-- custom datarefs
defineProperty("CS_pitch_ratio", globalPropertyf("tu154b2/custom/SC/yoke_pitch_ratio")) 
defineProperty("SC_roll_ratio", globalPropertyf("tu154b2/custom/SC/yoke_roll_ratio")) 
defineProperty("SC_heading_ratio", globalPropertyf("tu154b2/custom/SC/yoke_heading_ratio")) 

defineProperty("SC_ENGN_thro_0", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_0")) 
defineProperty("SC_ENGN_thro_1", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_1")) 
defineProperty("SC_ENGN_thro_2", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_2")) 

defineProperty("SC_ENGN_propmode_0", globalPropertyf("tu154b2/custom/SC/engine/ENGN_propmode_0")) 
defineProperty("SC_ENGN_propmode_2", globalPropertyf("tu154b2/custom/SC/engine/ENGN_propmode_2")) 

defineProperty("SC_tire_steer", globalPropertyf("tu154b2/custom/SC/gear/tire_steer_command_deg")) 

defineProperty("SC_l_brake_add", globalPropertyf("tu154b2/custom/SC/controls/l_brake_add")) 
defineProperty("SC_r_brake_add", globalPropertyf("tu154b2/custom/SC/controls/r_brake_add")) 

defineProperty("SC_int_brakes_L", globalPropertyf("tu154b2/custom/SC/brakes/int_brakes_L")) 
defineProperty("SC_int_brakes_R", globalPropertyf("tu154b2/custom/SC/brakes/int_brakes_R")) 

defineProperty("SC_parkbrake", globalPropertyf("tu154b2/custom/SC/controls/parkbrake")) 




-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("control_thro_other", globalPropertyf("tu154b2/custom/SC/control_thro_other")) -- другой человек упраляет РУД-ами

-- overrides
defineProperty("override_wheel_steer", globalPropertyf("sim/operation/override/override_wheel_steer")) -- wheel steering


local crew_throttle = dofile(sasl.getAircraftPath() .. "/plugins/sasl/data/modules/Custom Module/main_panel/crew_throttle.lua")

local conr_last = true
set(override_wheel_steer, 0)

function update()

	local has_contr = get(hascontrol_1) ~= 1
	local other_tro = get(control_thro_other) == 1

	if conr_last ~= has_contr then set(control_thro_other, 0) end
	
	-- change nosewheel steer once at changing controls
	
	-- if conr_last ~= has_contr and has_contr then
		-- set(override_wheel_steer, 0)
	-- elseif not has_contr then
		-- set(override_wheel_steer, 1)
	-- end
	
	
	
	-- let this client control the acf, if SC plugin gives this ability or no plugin connection at all
	if has_contr then
		
		
		set(CS_pitch_ratio, get(yoke_pitch_ratio))
		set(SC_roll_ratio, get(yoke_roll_ratio))
		set(SC_heading_ratio, get(yoke_heading_ratio))
		
		set(SC_tire_steer, get(tire_steer_command_deg))
		
		--set(SC_l_brake_add, get(l_brake_add))
		--set(SC_r_brake_add, get(r_brake_add))
		
		--set(SC_int_brakes_L, get(int_brakes_L))
		--set(SC_int_brakes_R, get(int_brakes_R))
	
		--set(SC_parkbrake, get(parkbrake))
	else
		
		--set(tire_steer_command_deg, get(SC_tire_steer))
		
		--set(l_brake_add, get(SC_l_brake_add))
		--set(r_brake_add, get(SC_r_brake_add))
		
		--set(int_brakes_L, get(SC_int_brakes_L))
		--set(int_brakes_R, get(SC_int_brakes_R))
	
		--set(parkbrake, get(SC_parkbrake))
	end
	
	conr_last = has_contr
	
	-- let this control the throttles when SC controls on other client and "other" option enabled or no CS connection at all
	local throttle_input_allowed = (not has_contr and other_tro) or (has_contr and not other_tro) or get(ismaster) == 0
    if crew_throttle.active() then throttle_input_allowed = crew_throttle.owned() end
    if throttle_input_allowed then
		set(SC_ENGN_thro_0, get(ENGN_thro_0))
		set(SC_ENGN_thro_1, get(ENGN_thro_1))
		set(SC_ENGN_thro_2, get(ENGN_thro_2))
		
		--set(SC_ENGN_propmode_0, get(ENGN_propmode_0))
		--set(SC_ENGN_propmode_2, get(ENGN_propmode_2))
		
	end

end

function onAvionicsDone()
	set(override_wheel_steer, 0)
end
