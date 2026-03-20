-- this is landing gear extending and retracting logic

-- hydraulics
defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС1
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3

-- controls
defineProperty("gears_retr_lock", globalPropertyi("tu154b2/custom/switchers/gears_retr_lock")) -- блокировка уборки шасси
defineProperty("gears_ext_3GS", globalPropertyi("tu154b2/custom/switchers/gears_ext_3GS")) -- выпуск шасси от 3ГС
defineProperty("emerg_gear_ext", globalPropertyi("tu154b2/custom/controll/emerg_gear_ext")) -- ручка аварийного выпуска шасси
defineProperty("gear_lever", globalPropertyi("tu154b2/custom/controll/gear_lever")) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск

-- landing gears
defineProperty("gear1_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))  -- vertical deflection of front gear
defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear

defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

-- enviroment
defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed"))  -- knots indicated air speed
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("G", globalPropertyf("sim/flightmodel2/misc/gforce_normal")) -- G overload
defineProperty("total_time", globalPropertyf("sim/time/total_flight_time_sec"))
defineProperty("agl", globalPropertyf("sim/flightmodel/position/y_agl"))


-- failures
defineProperty("retract1_fail", globalPropertyi("sim/operation/failures/rel_lagear1")) -- fail of retract gear
defineProperty("retract2_fail", globalPropertyi("sim/operation/failures/rel_lagear2")) -- fail of retract gear
defineProperty("retract3_fail", globalPropertyi("sim/operation/failures/rel_lagear3")) -- fail of retract gear
defineProperty("actuator_fail", globalPropertyi("sim/operation/failures/rel_gear_act")) -- actuator fail. bugs workaround
defineProperty("rel_wing1L", globalPropertyi("sim/operation/failures/rel_wing1L"))  -- Wing separations
defineProperty("rel_wing1R", globalPropertyi("sim/operation/failures/rel_wing1R"))  -- Wing separations

defineProperty("rel_collapse1", globalPropertyi("sim/operation/failures/rel_collapse1"))
defineProperty("rel_collapse2", globalPropertyi("sim/operation/failures/rel_collapse2"))
defineProperty("rel_collapse3", globalPropertyi("sim/operation/failures/rel_collapse3"))



-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("cam_in_cockpit", globalPropertyi("sim/graphics/view/view_is_external"))

-- defineProperty("override_gearbrake", globalPropertyi("sim/operation/override/override_gearbrake"))


-- sim lever
defineProperty("gear_handle_1", globalPropertyi("sim/cockpit/switches/gear_handle_status"))
defineProperty("gear_handle_2", globalPropertyi("sim/cockpit2/controls/gear_handle_down"))
defineProperty("force_add", globalProperty("sim/flightmodel/forces/faxil_plug_acf"))

defineProperty("rho", globalProperty("sim/weather/rho"))

defineProperty("tas", globalProperty("sim/flightmodel2/position/true_airspeed"))
defineProperty("dmp_1", globalProperty("sim/aircraft/parts/acf_geardmp[0]"))
fluid_1 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_1")
fluid_2 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_2")
fluid_3 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_3")

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))

defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

rpm_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")
pump_2_fail = globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_12")

door_left = globalPropertyf("tu154b2/custom/anim/gear_door_left")
door_right = globalPropertyf("tu154b2/custom/anim/gear_door_right")

local handle_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/geal_lvr_L.wav') --
local handle_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/geal_lvr_R.wav') --

local panel_x=0.24857304
local panel_z=-22.834959
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


set(gear1_deploy, 1)
set(gear2_deploy, 1)	
set(gear3_deploy, 1)



--[[

гонка шасси.
уборка основных: 0:11 - 0:38/0:41 = 27-30 сек
уборка передней ноги: 0:11 - 0:28 = 27 сек

выпуск шасси
основных: 0:57 - 1:15 = 18 сек
переднейноги: 0:57 - 1:14 = 17 сек

среднее время основных: 24 сек
среднее время передней: 22 сек


--]]


local dmp_tbl = {
{0, 1},
--{10, 0.2},
{0.5, 1},
{0.6, 100},
{100, 100}
}
local dmp_1_tmr=0

local lock_sound = loadSample(moduleDirectory .. '/Custom Sounds/gear_lock.wav') --
setSampleGain(lock_sound,300)

gear_command_up = findCommand("sim/flight_controls/landing_gear_up")
gear_command_down = findCommand("sim/flight_controls/landing_gear_down")
gear_toggle = findCommand("sim/flight_controls/landing_gear_toggle")

-- local variables
local passed = 0
local lock1 = true  -- locks for gears 
local lock2 = true
local lock3 = true

local defl_1_prev=get(gear1_deflect)
local defl_2_prev=get(gear2_deflect)
local defl_3_prev=get(gear3_deflect)

local fake_command = false -- this is for fixing X-Plane gear bug. (X-Plane does't have 3 position gear handler)

local power = 1
local gear_dmp_1=60000

function gear_up_handler(phase)
	if 0 == phase then
		if get(gear_lever) > -1 then set(gear_lever, get(gear_lever) - 1) end
		--[[if get(gear_lever) ~= -1 then set(gear_lever, -1)
		else set(gear_lever, 0) end--]]
		set(gear_handle_1, 0)
		set(gear_handle_2, 0)
	end
	return 0
end

function gear_down_handler(phase)
	if 0 == phase then
		if get(gear_lever) < 1 then set(gear_lever, get(gear_lever) + 1) end
		--[[if get(gear_lever) ~= 1 then set(gear_lever, 1)
		else set(gear_lever, 0) end--]]
		set(gear_handle_1, 1)
		set(gear_handle_2, 1)
	end
	return 0
end

function gear_toggle_handler(phase)
	if 0 == phase then
		local a = get(gear_lever)
		if a ~= 0 then
			if a == 1 then
				set(gear_handle_1, 1)
				set(gear_handle_2, 1)
			elseif a == -1 then
				set(gear_handle_1, 0)
				set(gear_handle_2, 0)
			end
			a = 0
		else
			if get(gear1_deploy) > 0.7 then
				a = -1
				set(gear_handle_1, 0)
				set(gear_handle_2, 0)
			elseif get(gear1_deploy) < 0.3 then
				a =  1
				set(gear_handle_1, 1)
				set(gear_handle_2, 1)
			end
		end
		set(gear_lever, a)

	
	end
	return 0
end

registerCommandHandler(gear_command_up, 0, gear_up_handler)
registerCommandHandler(gear_command_down, 0, gear_down_handler)
registerCommandHandler(gear_toggle, 0, gear_toggle_handler)


local lock1_last = lock1
local lock2_last = lock2
local lock3_last = lock3

local pos1_last = get(gear1_deploy)
local pos2_last = get(gear2_deploy)
local pos3_last = get(gear3_deploy)



		
local pos1 = get(gear1_deploy)  -- initial positions of gears
local pos2 = get(gear2_deploy)
local pos3 = get(gear3_deploy)

local door_can_close_left=1
local door_can_close_right=1

local cons_1=0 --hydraulic fluid consumption from tanks for gear operation
local cons_2=0
local cons_3=0

if pos1 < 0.5 then 
	pos1 = 0 
	lock1 = true
end

if pos2 < 0.5 then 
	pos2 = 0 
	lock2 = true
end

if pos3 < 0.5 then 
	pos3 = 0 
	lock3 = true
end


if pos1 > 0 then pos1 = 1 end
if pos2 > 0 then pos2 = 1 end
if pos3 > 0 then pos3 = 1 end

	-- constants
local GEAR_SPEED_FRONT = 0.039 --* (0.9 + math.random() * 0.2) -- per second
local GEAR_SPEED_LEFT = 0.039 --* (0.9 + math.random() * 0.2) -- per second
local GEAR_SPEED_RIGHT = 0.039 --* (0.9 + math.random() * 0.2) -- per second
local G_coef_front = 0.08
local G_coef_main = 0.08
local A_coef_front = 0.000025
local A_coef_main =  0.00003


local start_timer = 0

local lever_last = get(gear_lever)


--print(pos1, pos2, pos3)


function update()
	
	--[[
	if get(total_time) < 10 and get(agl) < 50 then
		pos1 = 1
		pos2 = 1
		pos3 = 1
	end
	--]]
	
	
	
	if get(total_time) < 5 then
		if get(agl) < 50 then
			pos1 = 1
			pos2 = 1
			pos3 = 1
		else
			pos1 = 0
			pos2 = 0
			pos3 = 0
		end
	end
	
	--set(override_gearbrake, 0)
local MASTER = get(ismaster) ~= 1

	

	
	

	
	local view_ext = get(cam_in_cockpit)

	passed = get(frame_time)

	if passed > 0 then
	
		
		local main_hydro = math.min(get(gs_press_1) / 200, 1)
		local main_hydro_2 = math.min(get(gs_press_2) / 200, 1)
		local aux_hydro = math.min(get(gs_press_3) / 200, 1)
		
		local power_L = bool2int(get(bus27_volt_left) > 13)
		local power_R = bool2int(get(bus27_volt_right) > 13)
		
		local IAS = get(airspeed) ^ 2
		
		-- calculate if gears can retract depending on autoblock
		local retract = false
		if get(gear2_deflect) < 0.01 or get(gears_retr_lock) ~= 0 then 
			retract = true 
		else 
			retract = false 
		end
		
		local pump2 = math.min(1,get(rpm_2)/80) * (1-get(pump_2_fail)) -- check if second pump for system no.1 is working
		
		-- calculate dirrection.
		local gs_in_use = power_R * get(gears_ext_3GS)
		local lever = get(gear_lever) * bool2int(get(actuator_fail) ~= 6)
		local emer_ext=get(emerg_gear_ext)
		local dirrection = lever * main_hydro * power_L * (1 - gs_in_use) * (1+pump2) * (1-emer_ext) + aux_hydro * gs_in_use * 1.3 + emer_ext * main_hydro_2 * 1.3 * (1 - gs_in_use)
		if pos2>0.15 and pos2<0.85 then
			door_can_close_left=0
		end
		if pos3>0.15 and pos3<0.85 then
			door_can_close_right=0
		end
		if lever * bool2int(main_hydro>0.1) * power_L * (1 - gs_in_use) * (1-emer_ext) == 1 then --read doors only close with hyd no.1
			if door_can_close_left<1 then
				door_can_close_left=door_can_close_left+passed/2
			else
				door_can_close_left=1
			end
			if door_can_close_right<1 then
				door_can_close_right=door_can_close_right+passed/2
			else
				door_can_close_right=1
			end
		end
		
		-- manipulate sim levers
		if lever == -1 then
			set(gear_handle_1, 0)
			set(gear_handle_2, 0)
		elseif lever == 1 then
			set(gear_handle_1, 1)
			set(gear_handle_2, 1)
		end
		
		-- sound
		if lever ~= lever_last then 
			local z_pos=get(pilot_Z)
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
			setSampleGain(handle_sound_L,gain_L*dist)
			setSampleGain(handle_sound_R,gain_R*dist)
			playSample(handle_sound_L, false)
			playSample(handle_sound_R, false)
		end
		lever_last = lever
		

		local gear_move = bool2int(power_L * (1 - gs_in_use) == 1 or gs_in_use == 1 or (dirrection>0 and emer_ext==1))
		
		-- calculations for gear 1
		if not lock1 and retract then
			-- calculate position		
			pos1 = pos1_last + GEAR_SPEED_FRONT * (dirrection * bool2int(get(retract1_fail) < 6) + get(G) * (math.cos(math.pi * pos1_last / 4) + 0.2) * G_coef_front - IAS * math.sin(math.pi * pos1_last / 3) * A_coef_front) * passed * gear_move
			if pos1 < 0 then  -- limit positions and close lock when reached
				pos1 = 0
				lock1 = true
			elseif pos1 > 1 then
				pos1 = 1
				lock1 = true
			end
		end
		
		

		
		-- calculations for gear 2
		if not lock2 and retract then
			-- calculate position		
			pos2 = pos2_last + GEAR_SPEED_LEFT * (dirrection * bool2int(get(retract2_fail) < 6) + get(G) * (math.cos(math.pi * pos1_last / 5) + 0.3) * G_coef_main - IAS * math.sin(math.pi * pos1_last / 5) * A_coef_main) * passed * gear_move
			if pos2 < 0 then  -- limit positions and close lock when reached
				pos2 = 0
				lock2 = true
			elseif pos2 > 1 then
				pos2 = 1
				lock2 = true
			end
		end

	
		
		-- calculations for gear 3
		if not lock3 and retract then
			-- calculate position		
			pos3 = pos3_last + GEAR_SPEED_RIGHT * (dirrection * bool2int(get(retract3_fail) < 6) + get(G) * (math.cos(math.pi * pos1_last / 5) + 0.3) * G_coef_main - IAS * math.sin(math.pi * pos1_last / 5) * A_coef_main) * passed * gear_move
			if pos3 < 0 then  -- limit positions and close lock when reached
				pos3 = 0
				lock3 = true
			elseif pos3 > 1 then
				pos3 = 1
				lock3 = true
			end
		end

		-- Gear drag reduction to match RW data
		local q=get(rho)/2*math.pow(get(tas),2)
		local gear_drag_red=7654*math.exp(q*7.981663712193334e-06)-7660*math.exp(q*-5.969175256502823e-04)
		gear_drag_red=-gear_drag_red*(0.1*pos1+0.45*pos2+0.45*pos3)
		if get(tas)> 22 then --better pushback fix
			set(force_add,gear_drag_red)
		end
		--set(db1,gear_drag_red)
		-- limit gear positions
		if pos1 > 1 then pos1 = 1 end
		if pos1 < 0 then pos1 = 0 end
		if pos2 > 1 then pos2 = 1 end
		if pos2 < 0 then pos2 = 0 end
		if pos3 > 1 then pos3 = 1 end
		if pos3 < 0 then pos3 = 0 end
	
		-- fluid consumption
		cons_1 = cons_1 + ((pos1_last - pos1) + (pos2_last - pos2)*2.5 + (pos3_last - pos3)*2.5) * (1 - gs_in_use * power_R) * (1-emer_ext)
		cons_2 = cons_2 + ((pos1_last - pos1) + (pos2_last - pos2)*2.5 + (pos3_last - pos3)*2.5) * (1 - gs_in_use * power_R) * emer_ext
		cons_3 = cons_3 + ((pos1_last - pos1) + (pos2_last - pos2)*2.5 + (pos3_last - pos3)*2.5) * gs_in_use * power_R
	
		-- calculate locks

		
		lock1 = dirrection < 1 and pos1 == 0 or dirrection > -1 and pos1 == 1
		lock2 = dirrection < 1 and pos2 == 0 or dirrection > -1 and pos2 == 1
		lock3 = dirrection < 1 and pos3 == 0 or dirrection > -1 and pos3 == 1

		
		
		-- emerg deploy
		if get(emerg_gear_ext) == 1 then
			if pos1 < 0.9 then lock1 = false end
			if pos2 < 0.9 then lock2 = false end
			if pos3 < 0.9 then lock3 = false end
			
			if pos1 > 0.99 then lock1 = true pos1 = 1 end
			if pos2 > 0.99 then lock2 = true pos2 = 1 end
			if pos3 > 0.99 then lock3 = true pos3 = 1 end
		end
		
		

	
		-- sounds
		if lock1_last ~= lock1 and pos1 == 0 then --or lock2_last ~= lock2 or lock3_last ~= lock3 then
			playSample(lock_sound, false)
		end
		
		
		-- collapse
		if get(rel_collapse1) == 6 then pos1 = 0.1 end
		if get(rel_collapse2) == 6 then pos2 = 0.1 end
		if get(rel_collapse3) == 6 then pos3 = 0.1 end

		-- wing separations
		if get(rel_wing1L) == 6 then pos3 = 0 end
		if get(rel_wing1R) == 6 then pos2 = 0 end
		
		
		-- limit nosewheel spring travel
		local defl_1=get(gear1_deflect)
		local defl_2=get(gear2_deflect)
		local defl_3=get(gear3_deflect)
		
		local defl_spd_1=0
		if passed~=0 then
			defl_spd_1=(defl_1-defl_1_prev)/passed
		end		
		if defl_spd_1>0 then			
			dmp_1_tmr=0.1
		elseif defl_spd_1<0 then
			dmp_1_tmr=dmp_1_tmr-passed
			if dmp_1_tmr<0 then
				dmp_1_tmr=0
			end
		end
		local dmp_coeff=1
		if dmp_1_tmr>0 then
			dmp_coeff=interpolate(dmp_tbl,defl_1)
		end
		
		set(dmp_1,gear_dmp_1*dmp_coeff)
		defl_1_prev=defl_1
		defl_2_prev=defl_2
		defl_3_prev=defl_3
if MASTER then	
		-- set results
		set(gear1_deploy, pos1)
		set(gear2_deploy, pos2)	
		set(gear3_deploy, pos3)
		set(door_left,pos2*0.85+0.15*door_can_close_left)
		set(door_right,pos3*0.85+0.15*door_can_close_right)
		set(fluid_1,cons_1)
		set(fluid_2,cons_2)
		set(fluid_3,cons_3)

else -- read data if not master for sync
		pos1 = get(gear1_deploy)
		pos2 = get(gear2_deploy)
		pos3 = get(gear3_deploy)
		
end
		
		pos1_last = pos1
		pos2_last = pos2
		pos3_last = pos3
	
		lock1_last = lock1
		lock2_last = lock2
		lock3_last = lock3		
		
		
		
		


	end

	--set(gear1_deploy, 0.5) -- test


	
end


function onAvionicsDone()
	set(gear1_deploy, 1)
	set(gear2_deploy, 1)	
	set(gear3_deploy, 1)
	print("gears reset to extended")
end
