-- this is the brakes system

defineProperty("have_pedals", globalPropertyi("tu154b2/custom/have_pedals"))


-- hydro
defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154b2/custom/hydro/gs_press_4")) -- давление в ГС4

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- sim brakes
defineProperty("l_brake_add", globalPropertyf("sim/flightmodel/controls/l_brake_add")) -- Left Brake
defineProperty("r_brake_add", globalPropertyf("sim/flightmodel/controls/r_brake_add")) -- Right Brake
defineProperty("parkbrake", globalPropertyf("sim/flightmodel/controls/parkbrake")) -- Parking Brake
defineProperty("parkbrake_2", globalPropertyf("sim/cockpit2/controls/parking_brake_ratio")) -- Parking Brake


--defineProperty("l_brake_add", globalPropertyf("tu154b2/custom/SC/controls/l_brake_add")) 
--defineProperty("r_brake_add", globalPropertyf("tu154b2/custom/SC/controls/r_brake_add")) 
--defineProperty("parkbrake", globalPropertyf("tu154b2/custom/SC/controls/parkbrake")) 



--[[
defineProperty("l_brake_add_2", globalPropertyf("sim/cockpit2/controls/left_brake_ratio")) -- Left Brake
defineProperty("r_brake_add_2", globalPropertyf("sim/cockpit2/controls/right_brake_ratio")) -- Right Brake
defineProperty("parkbrake_2", globalPropertyf("sim/cockpit2/controls/parking_brake_ratio")) -- Parking Brake
--]]

-- controls
defineProperty("gear_blocks", globalPropertyf("tu154b2/custom/anim/gear_blocks")) -- Parking Brake

defineProperty("brake_emerg", globalPropertyf("tu154b2/custom/controlls/brake_emerg")) -- аварийный тормоз
defineProperty("brake_emerg_L", globalPropertyf("tu154b2/custom/controlls/brake_emerg_L")) -- аварийный тормоз
defineProperty("brake_emerg_R", globalPropertyf("tu154b2/custom/controlls/brake_emerg_R")) -- аварийный тормоз


-- sim/cockpit2/controls/parking_brake_ratio

-- animation
defineProperty("parking_brake", globalPropertyi("tu154b2/custom/controll/parking_brake")) -- ручка фиксации тормоза

defineProperty("brake_L", globalPropertyf("tu154b2/custom/controlls/brake_L")) -- 
defineProperty("brake_R", globalPropertyf("tu154b2/custom/controlls/brake_R")) -- 

defineProperty("int_brakes_L", globalPropertyf("tu154b2/custom/brakes/int_brakes_L")) -- реальное положение тормоза
defineProperty("int_brakes_R", globalPropertyf("tu154b2/custom/brakes/int_brakes_R")) -- реальное положение тормоза

--defineProperty("int_brakes_L", globalPropertyf("tu154b2/custom/SC/brakes/int_brakes_L")) 
--defineProperty("int_brakes_R", globalPropertyf("tu154b2/custom/SC/brakes/int_brakes_R")) 

-- sim/operation/override/override_gearbrake
defineProperty("overr", globalPropertyi("sim/operation/override/override_gearbrake")) -- 


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- failures
defineProperty("brake_heat_left", globalPropertyf("tu154b2/custom/failures/brake_heat_left")) -- Температура тормозов
defineProperty("brake_heat_right", globalPropertyf("tu154b2/custom/failures/brake_heat_right")) -- Температура тормозов
defineProperty("brake_runtime_left", globalPropertyf("tu154b2/custom/failures/brake_runtime_left")) -- Наработка тормозных колодок
defineProperty("brake_runtime_right", globalPropertyf("tu154b2/custom/failures/brake_runtime_right")) -- Наработка тормозных колодок

defineProperty("rel_lbrakes", globalPropertyi("sim/operation/failures/rel_lbrakes")) -- Отказ тормозов
defineProperty("rel_rbrakes", globalPropertyi("sim/operation/failures/rel_rbrakes")) -- Отказ тормозов

defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled"))

-- enviroment
defineProperty("speed", globalPropertyf("sim/flightmodel/position/groundspeed"))
defineProperty("thermo", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc")) -- outside temperature
defineProperty("gear_vent_set", globalPropertyi("tu154b2/custom/switchers/eng/gear_fan")) -- вентиляция шасси

defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear
defineProperty("gear2_chock", globalProperty("sim/flightmodel2/gear/is_chocked[1]"))
defineProperty("gear3_chock", globalProperty("sim/flightmodel2/gear/is_chocked[2]"))
defineProperty("anti_skid", globalProperty("sim/aircraft/gear/acf_has_abs"))
defineProperty("brk_fan", globalProperty("sim/cockpit2/controls/brake_fan_on"))
defineProperty("bus115", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("brk_en_left", globalProperty("sim/flightmodel2/gear/brake_absorbed_J[1]"))
defineProperty("brk_en_right", globalProperty("sim/flightmodel2/gear/brake_absorbed_J[1]"))
defineProperty("therm_L_1", globalPropertyi("tu154b2/custom/failures/sard/brake_L_overheat_1"))
defineProperty("therm_L_2", globalPropertyi("tu154b2/custom/failures/sard/brake_L_overheat_2"))
defineProperty("therm_L_3", globalPropertyi("tu154b2/custom/failures/sard/brake_L_overheat_3"))
defineProperty("therm_R_1", globalPropertyi("tu154b2/custom/failures/sard/brake_R_overheat_1"))
defineProperty("therm_R_2", globalPropertyi("tu154b2/custom/failures/sard/brake_R_overheat_2"))
defineProperty("therm_R_3", globalPropertyi("tu154b2/custom/failures/sard/brake_R_overheat_3"))
defineProperty("pave", globalPropertyi("sim/flightmodel/ground/surface_texture_type")) -- type of pavement
defineProperty("frict", globalPropertyi("sim/weather/runway_friction"))
--defineProperty("speed", globalPropertyf("sim/flightmodel/parts/tire_speed_now[1]"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))



local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_L.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_sound_2_L= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_R.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local switcher_sound_2_R= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=-0.73689616
local panel_z=-23.011852
local dist_gain=5


local function inn_balance (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) ) 
	local ch_R = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end

	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end
set(brake_runtime_left, 1)
set(brake_runtime_right, 1)

-- sound
local brake_hnd_on_L = loadSample(moduleDirectory .. '/Custom Sounds/parking_on_L.wav')
local brake_hnd_off_L = loadSample(moduleDirectory .. '/Custom Sounds/parking_off_L.wav')
local brake_hnd_on_R = loadSample(moduleDirectory .. '/Custom Sounds/parking_on_R.wav')
local brake_hnd_off_R = loadSample(moduleDirectory .. '/Custom Sounds/parking_off_R.wav')

local termo_coef = {
{0, 1},
{100, 1.5},
{200, 2},
{300, 5},
{1000, 50},
{1000000, 500}
}

-- local speed_coef = {{-100, 1},
-- {0, 1},
-- {40, 1},
-- {250, 0.4},
-- {1000000, 0.4}
-- }

-- sim/joystick/joystick_axis_assignments



--[[

-- create tables of axies
local axies_asgn = {}
for i = 0, 500 do

	axies_asgn[i+1] = globalPropertyi("sim/joystick/joystick_axis_assignments["..i.."]") -- 

end

local axies_val = {}
for i = 0, 500 do

	axies_val[i+1] = globalPropertyf("sim/joystick/joystick_axis_values["..i.."]") -- 

end

local axies_inv = {}
for i = 0, 500 do

	axies_inv[i+1] = globalPropertyf("sim/joystick/joystick_axis_reverse["..i.."]") -- 

end

--]]

local joy_work_L = globalProperty("sim/joystick/joy_mapped_axis_avail[6]")
local joy_work_R = globalProperty("sim/joystick/joy_mapped_axis_avail[7]")

local joy_value = globalProperty("sim/joystick/joy_mapped_axis_value[78]")
local joy_value_L = globalProperty("sim/joystick/joy_mapped_axis_value[6]")
local joy_value_R = globalProperty("sim/joystick/joy_mapped_axis_value[7]")

-- now we need to find axies of brakes on pedals, if there are any

local left_pedal_num = nil
local right_pedal_num = nil

--[[
local function find_pedals()
	
	
	
	for i = 0, 500 do
		
		local assign = get(axies_asgn[i+1])
		
		if not left_pedal_num and assign == 6 then 
			left_pedal_num = i+1 
			--print("left "..left_pedal_num) 
		end
		if not right_pedal_num and assign == 7 then 
			right_pedal_num = i+1 
			--print("right "..right_pedal_num) 
		end

		if left_pedal_num ~= nil and right_pedal_num ~= nil then break end
	end
	

end
--]]



local sim_brake = 0
local passed = 0
local comm_brake = 0
regular_brk_comm = findCommand("sim/flight_controls/brakes_regular")

local termo_left = get(thermo)
local termo_right = get(thermo)


function regular_brk_hnd(phase)
	if 1 == phase then -- hold
		set(parking_brake, 0)
		sim_brake = sim_brake + passed
		if sim_brake > 1 then sim_brake = 1 end
	else 
		sim_brake = 0
		if get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0)
			set(r_brake_add, 0)
		end
	end
	
	return 0
end

registerCommandHandler(regular_brk_comm, 0, regular_brk_hnd)


max_brk_comm = findCommand("sim/flight_controls/brakes_max")

function max_brk_hnd(phase)
	if 1 == phase then -- hold
		set(parking_brake, 0)
		sim_brake = sim_brake + passed * 4
		if sim_brake > 1 then sim_brake = 1 end
	else 
		sim_brake = 0
		if get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0)
			set(r_brake_add, 0)
		end
	end
	
	return 0
end

registerCommandHandler(max_brk_comm, 0, max_brk_hnd)


park_brk_max_comm = findCommand("sim/flight_controls/brakes_toggle_max")

function park_brk_max_hnd(phase)
	if 0 == phase then -- toggle
		local brk = 1 - get(parking_brake)
		
		if brk == 0 and get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0) -- release pedals
			set(r_brake_add, 0) -- release pedals
		end
		
		--if brk == 0 then playSample(brake_hnd_off, 0) else playSample(brake_hnd_on, 0) end
		
		set(parking_brake, brk)
	else 
		
	end
	
	return 0
end

registerCommandHandler(park_brk_max_comm, 0, park_brk_max_hnd)


park_brk_reg_comm = findCommand("sim/flight_controls/brakes_toggle_regular")

function park_brk_reg_hnd(phase)
	if 0 == phase then -- toggle
		local brk = 1 - get(parking_brake)
		
		if brk == 0 and get(hascontrol_1) ~= 1 then
			set(l_brake_add, 0) -- release pedals
			set(r_brake_add, 0) -- release pedals
		end
		
		--if brk == 0 then playSample(brake_hnd_off, 0) else playSample(brake_hnd_on, 0) end
		
		set(parking_brake, brk)
	else 
		
	end
	
	return 0
end

registerCommandHandler(park_brk_reg_comm, 0, park_brk_reg_hnd)


--[[
sim/flight_controls/left_brake                     Hold brake left.
sim/flight_controls/right_brake                    Hold brake right.

--]]

local left_brk_cmd = findCommand("sim/flight_controls/left_brake")
local right_brk_cmd = findCommand("sim/flight_controls/right_brake")

local left_brk = 0
local right_brk = 0

function left_brk_cmd_hnd(phase)
	if 1 == phase then -- hold
		left_brk = left_brk + passed * 2
		if left_brk > 1 then left_brk = 1 end
		set(parking_brake, 0)
		
	else 
		left_brk = 0
	end
	
	return 0
end

function right_brk_cmd_hnd(phase)
	if 1 == phase then -- hold
		right_brk = right_brk + passed * 2
		if right_brk > 1 then right_brk = 1 end
		set(parking_brake, 0)
	else 
		right_brk = 0
	end
	
	return 0
end

registerCommandHandler(left_brk_cmd, 0, left_brk_cmd_hnd)
registerCommandHandler(right_brk_cmd, 0, right_brk_cmd_hnd)





-- сделать переменную для рычага парковки. завязать ее на команды.
-- сделать переменную для колодок шасси
-- считать тормоз для левого и правого шасси исходя из положения педалей, парковочного рычага и аварийных рычагов.
-- считать суммарный тормоз с учетом блоков.
-- в сим пишем:
-- на отдельные колеса результат тормозов от педалей, рычагов, парковочного рычага
-- на парковочный тормоз пишем колодки шасси
-- добавить обработчики команд торможения



set(parking_brake, 1)
set(overr, 1)

local park_lever_last = get(parking_brake)
local e_brake_last = get(brake_emerg)

local tgt_L_prev=0
local tgt_R_prev=0
local act_L=0
local act_R=0
local act_L_prev=0
local act_R_prev=0
local axisCheckTimer = 0

local fail_counter = 0
local check_time = math.random(15, 30)

local notLoaded=true

set(joy_value, 0)
set(joy_value_L, 0)
set(joy_value_R, 0)

local start_timer = 0

function update()
	local spd=get(speed)
	passed = get(frame_time)
	start_timer=start_timer+passed
	if notLoaded and start_timer > 0.3 then
		act_L=math.random(80,115)
		act_R=act_L+math.random(-5,5)
		notLoaded = false
	end	
	-- controls
	-- pedals
	local brake_1 = math.max(get(joy_value_L),get(joy_value))
	local brake_2 = math.max(get(joy_value_R),get(joy_value))
	
	--[[
	-- define numbers of pedal axies, if any
	axisCheckTimer = axisCheckTimer + passed
	if axisCheckTimer > 5 then
		left_pedal_num = nil
		right_pedal_num = nil
		
		--if get(have_pedals) == 1 then find_pedals() end
		find_pedals()
		axisCheckTimer = 0
	end
	

	-- read value of axies
	if left_pedal_num then 
		brake_1 = get(axies_val[left_pedal_num]) 
		if get(axies_inv[left_pedal_num]) == 1 then brake_1 = 1 - brake_1 end
	
	end
	if right_pedal_num then 
		brake_2 = get(axies_val[right_pedal_num]) 
		if get(axies_inv[right_pedal_num]) == 1 then brake_2 = 1 - brake_2 end
	end
	
	--]]

	
	
	
	
	-- parking brake
	local park_lvr = get(parking_brake)
	
	-- emerg brakes
	local e_brake = get(brake_emerg)
	
	-- reset pedals, when park brake released
	if (park_lever_last ~= park_lvr and park_lvr == 0) --[[ or (e_brake_last ~= e_brake and e_brake < 0.05) --]] then 
		brake_1 = 0
		brake_2 = 0
	end	
	
	-- sounds
	if park_lever_last ~= park_lvr then
		if park_lvr == 1 then 
			local z_pos=get(pilot_Z)
			local x_pos=get(pilot_X)
			local plt_hdg=get(pilot_head)
			local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
			gain_L=gain_L*1000
			gain_R=gain_R*1000
			local dist=1
			if z_pos-panel_z~=0 then
				dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
			end
			setSampleGain(brake_hnd_on_L,gain_L*dist)
			setSampleGain(brake_hnd_on_R,gain_R*dist)
			playSample(brake_hnd_on_L, false)
			playSample(brake_hnd_on_R, false)
		else 
			local z_pos=get(pilot_Z)
			local x_pos=get(pilot_X)
			local plt_hdg=get(pilot_head)
			local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
			gain_L=gain_L*1000
			gain_R=gain_R*1000
			local dist=1
			if z_pos-panel_z~=0 then
				dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
			end
			setSampleGain(brake_hnd_off_L,gain_L*dist)
			setSampleGain(brake_hnd_off_R,gain_R*dist)
			playSample(brake_hnd_off_L, false)
			playSample(brake_hnd_off_R, false)
		end
	end
	
	
	park_lever_last = park_lvr
	e_brake_last = e_brake


	-- blocks
	local blocks = get(gear_blocks)
	local tgt_L=120*math.max(brake_1,sim_brake,park_lvr,left_brk)*bool2int(get(gear2_deflect) > 0.06)  
	local tgt_R=120*math.max(brake_2,sim_brake,park_lvr,right_brk)*bool2int(get(gear3_deflect) > 0.06) 
	-- pressures
	local main_press = get(gs_press_1)
	local emer_press = math.min(get(gs_press_4) / 120, 1)
	if tgt_L<act_L then
		act_L=tgt_L
	elseif main_press>=act_L then
		if main_press>=tgt_L then
			act_L=tgt_L
		else
			act_L=main_press
		end
	else
		if act_L>0 then
			act_L=act_L-passed*0.005
		else
			act_L=0
		end
	end
	
	if tgt_L<act_R then
		act_R=tgt_R
	elseif main_press>=act_R then
		if main_press>=tgt_R then
			act_R=tgt_R
		else
			act_R=main_press
		end
	else
		if act_R>0 then
			act_R=act_L-passed*0.0055
		else
			act_R=0
		end
	end
	local left_blake_emer = e_brake * emer_press * bool2int(get(gear2_deflect) > 0.06)
	local right_blake_emer = e_brake * emer_press * bool2int(get(gear3_deflect) > 0.06)

	local left_blake = act_L/120* bool2int(get(rel_lbrakes) ~= 6)--math.max(brake_1 * main_press, sim_brake * main_press, left_brk * main_press, park_lvr * main_press) * bool2int(get(gear2_deflect) > 0.06)
	local right_blake =act_R/120* bool2int(get(rel_lbrakes) ~= 6)-- math.max(brake_2 * main_press, sim_brake * main_press, right_brk * main_press, park_lvr * main_press) * bool2int(get(gear3_deflect) > 0.06)
	-- set(db1,act_L)
	-- set(db2,act_R)
	
	local brake_c=0.25
	local friction=get(frict)
	if friction==15 or friction==12 then -- adjust braking power under heavy icing to compensate XP's excessive grip loss
		brake_c=0.4
	-- elseif friction==14 or friction==11 then
		-- brake_c=0.3
	end
	local park = math.max(0, act_L/120,act_R/120)*park_lvr*brake_c
	--set(db3,park)
	--
	
	
	-- bug workaround
	if left_blake < 0.001 then left_blake = 0 end
	if right_blake < 0.001 then right_blake = 0 end
	

if get(ismaster) ~= 1 then			
	local FAIL = get(failures_enabled)
	
	FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
	
	if FAIL > 0 then
		fail_counter = fail_counter + passed
		
		if fail_counter > check_time then
			fail_counter = 0
			check_time = math.random(15, 30)
			
			-- random failures
			if get(rel_lbrakes) ~= 1 then set(rel_lbrakes, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			if get(rel_rbrakes) ~= 1 then set(rel_rbrakes, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 6) end
			
			-- runtime failure
			if get(brake_runtime_left) == 0 and left_blake > 0.1 then
				if get(rel_lbrakes) ~= 1 then set(rel_lbrakes, bool2int(math.random() < 0.1) * 6) end
			end
			
			if get(brake_runtime_right) == 0 and right_blake > 0.1 then
				if get(rel_rbrakes) ~= 1 then set(rel_rbrakes, bool2int(math.random() < 0.1) * 6) end
			end
			
		
		end
		
		if get(gear2_deflect) > 0.05 then
			set(brake_runtime_left, math.max(0, get(brake_runtime_left) - passed * left_blake * get(speed) * 0.0000014 * interpolate(termo_coef, math.max(0, termo_left))))
		end
		
		if get(gear3_deflect) > 0.05 then
			set(brake_runtime_right, math.max(0, get(brake_runtime_right) - passed * right_blake * get(speed) * 0.0000014 * interpolate(termo_coef, math.max(0, termo_right))))
		end
		
	else
		
		set(brake_runtime_left, 1)
		set(brake_runtime_right, 1)
		
		set(rel_lbrakes, 0)
		set(rel_rbrakes, 0)
	end
	

end	
	
	termo_left = get(brk_en_left)*0.0000030375*2+get(thermo) -- degrees heat per joule of brake energy from literature
	termo_right = get(brk_en_right)*0.0000030375*2+get(thermo)
	-- overheat sensors
	if termo_left>300 then
		set(therm_L_3,1)
		set(therm_L_2,0)
		set(therm_L_1,0)
	elseif termo_left>250 then
		set(therm_L_2,1)
		set(therm_L_1,0)
	elseif termo_left>190 then
		set(therm_L_1,1)
	end
	
	if termo_right>300 then
		set(therm_R_3,1)
		set(therm_R_2,0)
		set(therm_R_1,0)
	elseif termo_left>250 then
		set(therm_R_2,1)
		set(therm_R_1,0)
	elseif termo_left>190 then
		set(therm_R_1,1)
	end
	
	
	if get(gear_vent_set)>0 and get(bus115)>50 then
		set(brk_fan,1)
	else
		set(brk_fan,0)
	end
	
	

	
	
	
	
local have_control = get(hascontrol_1) ~= 1

if have_control then
	set(brake_heat_left, termo_left)
	set(brake_heat_right, termo_right)
	-- set results
	if left_blake<left_blake_emer or right_blake<right_blake_emer then
		set(anti_skid,0)
	else
		set(anti_skid,1)
	end
	local spd_coef=math.min(1,(1.333e-05*math.pow(spd*3.6,2) -0.007*spd*3.6+1.317)*(1+0.75*bool2int(get(pave)==3))) --brakes better on asphalt due to lower vibrations
	local max_brake=brake_c*spd_coef

	set(l_brake_add, math.min(math.max(left_blake*(1-park_lvr),left_blake_emer)*brake_c,max_brake))
	set(r_brake_add, math.min(math.max(right_blake*(1-park_lvr),right_blake_emer)*brake_c,max_brake))
	set(int_brakes_L, math.max(left_blake,park ))
	set(int_brakes_R, math.max(right_blake, park))
	--set(parkbrake, park)
	set(gear2_chock, blocks)
	set(gear3_chock, blocks)
	set(parkbrake_2, park)
	
	if brake_1 > 0.8 and brake_2 > 0.8 then set(parking_brake, 0) end -- release park lever, if pedals pressed.
	
	--print(park_lvr, "  ", park, "  ", get(parkbrake_2))
	
end

	--set(parkbrake, 1)
	
	
	-- set pedals animation
	
	--local parkAnim = park_lvr
	--if park == 5 then parkAnim = 0 end
	
	set(brake_L, math.max(left_blake, brake_1, park_lvr))
	set(brake_R, math.max(right_blake, brake_2, park_lvr))
	
	

	
--[[	
	-- reset all axies
	if get(have_pedals) == 1 then 
		resetTimer = resetTimer + passed
	else
		resetTimer = 0
	end
	
	if resetTimer > 5 then
		for i = 0, 500 do
			--print(get(axies_asgn[i+1]))
			
			set(axies_asgn[i+1], 0)
			set(axies_inv[i+1], 0)
		end
		resetTimer = 0
	end
--]]	
	
end

function onModuleDone()
	set(overr, 0)
end
