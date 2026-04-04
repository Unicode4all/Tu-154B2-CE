-- this is for external animation
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("replay_mode", globalPropertyi("sim/operation/prefs/replay_mode"))


-- reverse handle
defineProperty("revers_L", globalPropertyf("tu154b2/custom/controlls/revers_L"))
defineProperty("revers_R", globalPropertyf("tu154b2/custom/controlls/revers_R"))

defineProperty("reverse_mid", globalPropertyf("tu154b2/custom/anim/reverse_mid"))






-- gear
defineProperty("front_pos", globalPropertyf("tu154b2/custom/anim/lg/front_pos")) -- положение передней стойки шасси
defineProperty("front_defl", globalPropertyf("tu154b2/custom/anim/lg/front_defl")) -- просадка аммортизатора передней стойки
defineProperty("front_turn", globalPropertyf("tu154b2/custom/anim/lg/front_turn")) -- поворот передней стойки шасси

defineProperty("main_pos_left", globalPropertyf("tu154b2/custom/anim/lg/main_pos_left")) -- положение левой основной стойки. 0-1 - выпуск, -1 -5 - просадка аммортизатора
defineProperty("main_rot_left", globalPropertyf("tu154b2/custom/anim/lg/main_rot_left")) -- поворот левой тележки на земле. 0 - горизонтально, -11 - в полете

defineProperty("main_pos_right", globalPropertyf("tu154b2/custom/anim/lg/main_pos_right")) -- положение правой основной стойки. 0-1 - выпуск, -1 -5 - просадка аммортизатора
defineProperty("main_rot_right", globalPropertyf("tu154b2/custom/anim/lg/main_rot_right")) -- поворот правой тележки на земле

-- tail
defineProperty("rudder_anim", globalPropertyf("tu154b2/custom/anim/rudder_anim")) -- угол поворота руля направления для анимации. 

defineProperty("elev_anim_L", globalPropertyf("tu154b2/custom/anim/elev_anim_L")) -- угол поворота руля высоты
defineProperty("elev_anim_R", globalPropertyf("tu154b2/custom/anim/elev_anim_R")) -- угол поворота руля высоты
	
-- wings
defineProperty("wing_flx_right", globalPropertyf("tu154b2/custom/anim/wing_flx_right")) -- угол изгиба крыла
defineProperty("wing_flx_left", globalPropertyf("tu154b2/custom/anim/wing_flx_left")) -- угол изгиба крыла

-- windows and doors
defineProperty("cockpit_window_left", globalPropertyf("tu154b2/custom/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154b2/custom/anim/cockpit_window_right")) -- открытие форточки

defineProperty("cargo_1", globalPropertyf("tu154b2/custom/anim/cargo_1")) -- багаж
defineProperty("cargo_2", globalPropertyf("tu154b2/custom/anim/cargo_2")) -- багаж

defineProperty("pax_door_1", globalPropertyf("tu154b2/custom/anim/pax_door_1")) -- двери
defineProperty("pax_door_2", globalPropertyf("tu154b2/custom/anim/pax_door_2")) -- двери
defineProperty("pax_door_3", globalPropertyf("tu154b2/custom/anim/pax_door_3")) -- двери

defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door")) -- двери в кабину
defineProperty("cockpit_table_1", globalPropertyf("tu154b2/custom/anim/cockpit_table_1")) -- столик
defineProperty("cockpit_table_2", globalPropertyf("tu154b2/custom/anim/cockpit_table_2")) -- столик

defineProperty("rise_chair_arm_L", globalPropertyf("tu154b2/custom/anim/rise_chair_arm_L")) -- поднять ручку кресла
defineProperty("rise_chair_arm_R", globalPropertyf("tu154b2/custom/anim/rise_chair_arm_R")) -- поднять ручку кресла

-- yokes
defineProperty("yokes_show", globalPropertyi("tu154b2/custom/anim/show_yokes")) -- штурвалы

-- sliders
defineProperty("slider_1", globalProperty("sim/cockpit2/switches/custom_slider_on[0]")) -- sim slider on
defineProperty("slider_2", globalProperty("sim/cockpit2/switches/custom_slider_on[1]")) -- sim slider on
defineProperty("slider_3", globalProperty("sim/cockpit2/switches/custom_slider_on[2]")) -- sim slider on
defineProperty("slider_4", globalProperty("sim/cockpit2/switches/custom_slider_on[3]")) -- sim slider on
defineProperty("slider_5", globalProperty("sim/cockpit2/switches/custom_slider_on[4]")) -- sim slider on
defineProperty("slider_6", globalProperty("sim/cockpit2/switches/custom_slider_on[5]")) -- sim slider on
defineProperty("slider_7", globalProperty("sim/cockpit2/switches/custom_slider_on[6]")) -- sim slider on
defineProperty("slider_8", globalProperty("sim/cockpit2/switches/custom_slider_on[7]")) -- sim slider on
defineProperty("slider_9", globalProperty("sim/cockpit2/switches/custom_slider_on[8]")) -- sim slider on
defineProperty("slider_10", globalProperty("sim/cockpit2/switches/custom_slider_on[9]")) -- sim slider on
defineProperty("slider_11", globalProperty("sim/cockpit2/switches/custom_slider_on[10]")) -- sim slider on
defineProperty("slider_12", globalProperty("sim/cockpit2/switches/custom_slider_on[11]")) -- sim slider on

-- brake levers
defineProperty("brake_emerg", globalPropertyf("tu154b2/custom/controlls/brake_emerg")) --
defineProperty("brake_emerg_L", globalPropertyf("tu154b2/custom/controlls/brake_emerg_L")) --
defineProperty("brake_emerg_R", globalPropertyf("tu154b2/custom/controlls/brake_emerg_R")) --

-- tables
defineProperty("cockpit_table_1", globalPropertyf("tu154b2/custom/anim/cockpit_table_1")) --
defineProperty("cockpit_table_2", globalPropertyf("tu154b2/custom/anim/cockpit_table_2")) --

defineProperty("table_up_L", globalPropertyf("tu154b2/custom/anim/table_up_L")) --
defineProperty("table_up_R", globalPropertyf("tu154b2/custom/anim/table_up_R")) --

defineProperty("ground_stuff_angle", globalPropertyf("tu154b2/custom/anim/ground_stuff_angle")) -- коррекция угла по тангажу для техники


-- sources
defineProperty("tire_steer_actual_deg", globalProperty("sim/flightmodel2/gear/tire_steer_actual_deg[0]")) -- 

defineProperty("deploy_ratio_1", globalProperty("sim/flightmodel2/gear/deploy_ratio[0]")) -- 
defineProperty("deploy_ratio_2", globalProperty("sim/flightmodel2/gear/deploy_ratio[1]")) -- 
defineProperty("deploy_ratio_3", globalProperty("sim/flightmodel2/gear/deploy_ratio[2]")) -- 

defineProperty("deflection_mtr_1", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")) -- 
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 

--defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- GS, m/s
--defineProperty("yaw_apd", globalPropertyf("sim/flightmodel/position/R")) -- GS, m/s

defineProperty("rudder", globalPropertyf("sim/flightmodel/controls/vstab2_rud1def")) -- degrees, positive is trailing-edge left
defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

--defineProperty("weel_angle1", globalPropertyf("sim/aircraft/gear/acf_nw_steerdeg1"))
--defineProperty("weel_angle2", globalPropertyf("sim/aircraft/gear/acf_nw_steerdeg2"))



defineProperty("brake_L", globalPropertyf("sim/flightmodel/controls/l_brake_add")) -- 
defineProperty("brake_R", globalPropertyf("sim/flightmodel/controls/r_brake_add")) -- 

--defineProperty("brake_L", globalPropertyf("tu154b2/custom/SC/controls/l_brake_add")) 
--defineProperty("brake_R", globalPropertyf("tu154b2/custom/SC/controls/r_brake_add")) 


defineProperty("EC_L", globalProperty("sim/flightmodel2/gear/eagle_claw_angle_deg[1]")) -- 
defineProperty("EC_R", globalProperty("sim/flightmodel2/gear/eagle_claw_angle_deg[2]")) -- 

defineProperty("indicated_airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- приборная скорость

defineProperty("elevator_L", globalPropertyf("tu154b2/custom/controlls/elev_L_phys")) -- Degrees, positive is trailing-edge down.
defineProperty("elevator_R", globalPropertyf("tu154b2/custom/controlls/elev_R_phys")) -- Degrees, positive is trailing-edge down.

defineProperty("wing_tip_defl", globalProperty("sim/flightmodel2/wing/wing_tip_deflection_deg[0]")) -- изгиб крыла
defineProperty("gforce", globalPropertyf("sim/flightmodel2/misc/gforce_normal")) -- G overload

defineProperty("tank3R_w", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel weight
defineProperty("tank3L_w", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel weight

defineProperty("airspeed", globalPropertyf("sim/flightmodel/position/indicated_airspeed")) -- приборная скорость

defineProperty("ail_L", globalPropertyf("sim/flightmodel/controls/wing3l_ail1def")) -- aileron left Degrees, positive is trailing-edge down. +- 20
defineProperty("ail_R", globalPropertyf("sim/flightmodel/controls/wing3r_ail1def")) -- aileron right Degrees, positive is trailing-edge down. +- 20

defineProperty("cabin_press_diff", globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_diff_new"))


-- wiper
defineProperty("wiper_left", globalPropertyi("tu154b2/custom/switchers/wiper_left")) -- переключатель работы стеклоочистителя. -1 - медленно, 0 - выкл, +1 - быстро	0
defineProperty("wiper_right", globalPropertyi("tu154b2/custom/switchers/wiper_right")) -- переключатель работы стеклоочистителя. -1 - медленно, 0 - выкл, +1 - быстро	0

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("wiper_angle_left", globalPropertyf("tu154b2/custom/anim/wiper_angle_left"))
defineProperty("wiper_angle_right", globalPropertyf("tu154b2/custom/anim/wiper_angle_right"))
tire_steer_command_deg = globalProperty("sim/flightmodel2/gear/tire_steer_command_deg[0]")
defineProperty("rud_coeff", globalPropertyf("tu154b2/custom/controlls/rudder_coeff"))
win_slide_L=globalPropertyf("sim/custom/anim/cockpit_window_left_slide")
win_slide_R=globalPropertyf("sim/custom/anim/cockpit_window_right_slide")

defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))



local window_L_open_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_open_L.wav')
local window_L_close_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_close_L.wav')
local window_L_slide_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide_L.wav')
local window_L_slide2_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide2_L.wav')
local window_L_open_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_open_R.wav')
local window_L_close_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_close_R.wav')
local window_L_slide_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide_R.wav')
local window_L_slide2_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide2_R.wav')

local window_R_open_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_open_L.wav')
local window_R_close_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_close_L.wav')
local window_R_slide_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide_L.wav')
local window_R_slide2_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide2_L.wav')
local window_R_open_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_open_R.wav')
local window_R_close_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_close_R.wav')
local window_R_slide_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide_R.wav')
local window_R_slide2_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/window_slide2_R.wav')


local gear_turn_pos = 0
local MAX_TURN_SPD = 40
local turn_need = 0

-- test
--set(weel_angle1, 65)
--set(weel_angle2, 10)

local wing_flx_act_L = 0
local wing_flx_act_R = 0

local wiper_pos_L = 0
local wiper_pos_R = 0

local window_L_last = get(cockpit_window_left)
local window_R_last = get(cockpit_window_right)

local win_L_x=-0.7180854
local win_L_z=-22.717438
local win_R_x=0.7180854
local win_R_z=-22.717438
local dist_gain=5

local door_1=0
local door_2=0
local door_3=0

local main_gear_ext_corr_tbl= {
{-1, 1.12},
{0.227, 1.12},
{0.42, 1.05},
{1, 1.05}
}

local door_tbl= {
{-1, -1},
{0.0, 0},
{0.05, 0.2},
{0.2, 0.2},
{1, 1}
}

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


function update()
	local passed = get(frame_time)
	
	--local GS = get(groundspeed)
	local G_force = get(gforce)


	
	-- ----------------------------------------
	-- -- front gear --
	-- -- turns
	-- local turn_spd = MAX_TURN_SPD -- deg/sec
	local defl_F = get(deflection_mtr_1)*1.1
	-- local hydro_turn = 0
	
	-- if get(weel_angle1) + get(weel_angle2) > 0 then
		-- hydro_turn = 1
	-- end
	
	-- if defl_F > 0 then
		-- turn_spd = math.abs(GS) * 1 + hydro_turn * 0.5
		-- if turn_spd > MAX_TURN_SPD then turn_spd = MAX_TURN_SPD end
	-- end
	

	-- turn_need = get(tire_steer_actual_deg) * hydro_turn * (1 - math.min(1, math.abs(GS) * 0.1)) + get(yaw_apd) * 5 * math.max((1 - hydro_turn), math.min(1, math.abs(GS) * 0.1))
	-- -- set limits
	-- if turn_need > 65 then turn_need = 65
	-- elseif turn_need < -65 then turn_need = -65 end
	
	
	-- if passed * turn_spd < 0.5 then
		-- gear_turn_pos = gear_turn_pos + (turn_need - gear_turn_pos) * passed * turn_spd
	-- else
		-- gear_turn_pos = gear_turn_pos + (turn_need - gear_turn_pos) * passed
	-- end
	
	local nws_turn=get(tire_steer_command_deg)
	set(front_turn, nws_turn)


	
	-- deploy and deflection
	set(front_pos, get(deploy_ratio_1))
	set(front_defl, defl_F * 10)


	------------------------------------
	-- main gears --
	-- positions and deflection
	local deflect_L=get(deflection_mtr_2)
	local deflect_R=get(deflection_mtr_3)
	local pos_L = get(deploy_ratio_2)
	local pos_R = get(deploy_ratio_3)
	local defl_L = deflect_L*interpolate(main_gear_ext_corr_tbl,deflect_L)
	local defl_R = deflect_R*interpolate(main_gear_ext_corr_tbl,deflect_R)
	

	------------------------
	-- ground stuff angle --
	------------------------
	
	local stuff_angle = (defl_F - 0.215 - (deflect_L + deflect_R - 0.2341*2) / 2) * 3.03
	
	
	set(ground_stuff_angle, -stuff_angle)

	---------------------------------------
	
	if pos_L < 0.999 then
		set(main_pos_left, pos_L)
	else
		set(main_pos_left, -defl_L * 10 - 1)
	end
	
	if pos_R < 0.999 then
		set(main_pos_right, pos_R)
	else
		set(main_pos_right, -defl_R * 10 - 1)
	end	
	
	
	-- cart rotating
	local rot_L = get(EC_L)
	local rot_R = get(EC_R)
	
	-- hide gears in hondoles
	if pos_L < 0.9 then rot_L = -11 end
	if pos_R < 0.9 then rot_R = -11 end
	
	--[[
	if get(replay_mode) ~= 0 then
		if pos_L < 0.9 or defl_L < 0.001 then rot_L = -11 end
		if pos_R < 0.9 or defl_R < 0.001 then rot_R = -11 end
		
		if defl_L >= 0.001 then rot_L = -stuff_angle end
		if defl_R >= 0.001 then rot_R = -stuff_angle end
		
	end
	--]]
	--print(pos_L, "  ", pos_R)
	
	-- using Eagle Claw
	set(main_rot_left, rot_L)
	set(main_rot_right, rot_R)
	

	
	-- rudder --
	local rudder_L = 1 - math.max(get(revers_flap_L) - 0.5, 0) * get(rpm_high_1) * 0.015
	local rudder_R = 1 - math.max(get(revers_flap_R) - 0.5, 0) * get(rpm_high_3) * 0.015
	
	set(rudder_anim, get(rudder) / (rudder_L + rudder_R)*2/get(rud_coeff))
	
	-- elevator --
	
	-- calculate correction for elevator
	local ias = get(indicated_airspeed) * 1.852
	--local elev_coef = 1
	-- if ias >= 300 and ias <= 400 then elev_coef = line(ias, 300, 1, 400, 3)
	-- elseif ias > 400 then elev_coef = 3 end

	local elev_L = get(elevator_L)
	local elev_R = get(elevator_R)
	
	set(elev_anim_L, elev_L)
	set(elev_anim_R, elev_R)
	
	-- wing flex
	local wing_flx = (get(wing_tip_defl) + 1.3) * 1
	local tank_coef = 0.00005
	local ail_coef = 0.00003
	local IAS = get(airspeed)
	local left_flx = wing_flx - G_force * get(tank3L_w) * tank_coef + get(ail_L) * IAS * ail_coef
	local right_flx = wing_flx - G_force * get(tank3R_w) * tank_coef + get(ail_R) * IAS * ail_coef
	
	--print(G_force * get(tank3L_w) * tank_coef, "  ", wing_flx, "  ", left_flx)
	
	wing_flx_act_L = wing_flx_act_L + (left_flx - wing_flx_act_L) * passed * 10
	wing_flx_act_R = wing_flx_act_R + (right_flx - wing_flx_act_R) * passed * 10
	
	set(wing_flx_left, wing_flx_act_L)
	set(wing_flx_right, wing_flx_act_R)



	
	--------------------------
	-- windows and doors --
	--------------------------
	
	local door_may_open = get(cabin_press_diff) < 0.01
	local window_may_open = get(cabin_press_diff) < 0.05
	
	-- left window
	local window_but_L = get(slider_1)
	local window_L = get(cockpit_window_left)
	local slide_L=get(win_slide_L)
	local slide_R=get(win_slide_R)
	if window_L == 0 and window_may_open or window_L > 0 then
		if window_but_L == 1 then 
			if window_L<0.25 then
				window_L = window_L + (window_but_L * 2 - 1) * passed / 4.5 -- open
			elseif slide_L>0 and window_L<1 then
				window_L = window_L + (window_but_L * 2 - 1) * passed / 2 -- slide open
			end
		else window_L = window_L + (window_but_L * 2 - 1) * passed / 2 end -- close
	end
	
	if window_L <= 0.01 and not window_may_open and window_but_L == 1 then set(slider_1, 0) end -- reset slider, if not able to open
	
	-- limits
		if window_L > 1 then
			window_L = 1
			set(win_slide_L,0)
		elseif window_L < 0 then 
			window_L = 0 
		end
	
	
	set(cockpit_window_left, window_L)
		
	-- right window
	local window_but_R = get(slider_2)
	local window_R = get(cockpit_window_right)
	
	if window_R == 0 and window_may_open or window_R > 0 then
		if window_but_R == 1 then 
			if window_R<0.25 then
				window_R = window_R + (window_but_R * 2 - 1) * passed / 4.5 -- open
			elseif slide_R>0 and window_R<1 then
				window_R = window_R + (window_but_R * 2 - 1) * passed / 2 -- slide open
			end
		else window_R = window_R + (window_but_R * 2 - 1) * passed / 2.5 end -- close
	end
	
	if window_R <= 0.01 and not window_may_open and window_but_R == 1 then set(slider_2, 0) end-- reset slider, if not able to open
	
	-- limits
	if window_R >1 then 
		window_R = 1
		set(win_slide_R,0)
	elseif window_R < 0 then 
		window_R = 0 
	end
	
	set(cockpit_window_right, window_R)
	
	
	-- sound
	-- (window_R > 0 and window_R < 0.05 and window_but_R == 1) 
	-- (window_R > 0.265 and window_R < 0.3 and window_but_R == 1)
	-- (window_R < 1 and window_R > 0.9 and window_but_R == 0)	
	-- (window_R > 0.2 and window_R < 0.25 and window_but_R == 0)
if (window_L > 0 and window_L < 1) then
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L_L, gain_L_R = inn_balance (win_L_x, win_L_z, x_pos, z_pos , plt_hdg)
		gain_L_L=gain_L_L*800
		gain_L_R=gain_L_R*800
		local dist_L=1
		if z_pos-win_L_z~=0 then
			dist_L=math.min(1,1/math.sqrt(math.pow(z_pos-win_L_z,2)+math.pow(x_pos-win_L_x,2))/dist_gain)
		end
	if (window_L > 0 and window_L < 0.05 and window_but_L == 1)  then
		if not isSamplePlaying(window_L_open_L) then
		  playSample(window_L_open_L, false)
		  playSample(window_L_open_R, false)
		end
	end
	if (window_L > 0.265 and window_L < 0.3 and window_but_L == 1) then
		if not isSamplePlaying(window_L_slide_L) then
		  playSample(window_L_slide_L, false)
		  playSample(window_L_slide_R, false)
		end
	end
	if (window_L < 1 and window_L > 0.9 and window_but_L == 0)   then
		if not isSamplePlaying(window_L_slide2_L) then
		  playSample(window_L_slide2_L, false)
		  playSample(window_L_slide2_R, false)
		end
	end
	if (window_L > 0.2 and window_L < 0.25 and window_but_L == 0)   then
		if not isSamplePlaying(window_L_close_L) then
		  playSample(window_L_close_L, false)
		  playSample(window_L_close_R, false)
		end
	end
	setSampleGain(window_L_open_L,gain_L_L*dist_L)
	setSampleGain(window_L_open_R,gain_L_R*dist_L)
	setSampleGain(window_L_slide_L,gain_L_L*dist_L)
	setSampleGain(window_L_slide_R,gain_L_R*dist_L)
	setSampleGain(window_L_slide2_L,gain_L_L*dist_L)
	setSampleGain(window_L_slide2_R,gain_L_R*dist_L)
	setSampleGain(window_L_close_L,gain_L_L*dist_L)
	setSampleGain(window_L_close_R,gain_L_R*dist_L)
end
if (window_R > 0 and window_R < 1) then
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_R_L, gain_R_R = inn_balance (win_R_x, win_R_z, x_pos, z_pos , plt_hdg)
		gain_R_L=gain_R_L*800
		gain_R_R=gain_R_R*800
		local dist_R=1
		if z_pos-win_R_z~=0 then
			dist_R=math.min(1,1/math.sqrt(math.pow(z_pos-win_R_z,2)+math.pow(x_pos-win_R_x,2))/dist_gain)
		end
	if (window_R > 0 and window_R < 0.05 and window_but_R == 1)  then
		if not isSamplePlaying(window_R_open_L) then
		  playSample(window_R_open_L, false)
		  playSample(window_R_open_R, false)
		end
	end
	if (window_R > 0.265 and window_R < 0.3 and window_but_R == 1) then
		if not isSamplePlaying(window_R_slide_L) then
		  playSample(window_R_slide_L, false)
		  playSample(window_R_slide_R, false)
		end
	end
	if (window_R < 1 and window_R > 0.9 and window_but_R == 0)   then
		if not isSamplePlaying(window_R_slide2_L) then
		  playSample(window_R_slide2_L, false)
		  playSample(window_R_slide2_R, false)
		end
	end
	if (window_R > 0.2 and window_R < 0.25 and window_but_R == 0)   then
		if not isSamplePlaying(window_R_close_L) then
		  playSample(window_R_close_L, false)
		  playSample(window_R_close_R, false)
		end
	end
	setSampleGain(window_R_open_L,gain_R_L*dist_R)
	setSampleGain(window_R_open_R,gain_R_R*dist_R)
	setSampleGain(window_R_slide_L,gain_R_L*dist_R)
	setSampleGain(window_R_slide_R,gain_R_R*dist_R)
	setSampleGain(window_R_slide2_L,gain_R_L*dist_R)
	setSampleGain(window_R_slide2_R,gain_R_R*dist_R)
	setSampleGain(window_R_close_L,gain_R_L*dist_R)
	setSampleGain(window_R_close_R,gain_R_R*dist_R)
end

	
	-- cargo 1
	local cargo_FWD = get(cargo_1)
	local cargo_1_cmd = get(slider_3)
	
	if cargo_FWD == 0 and door_may_open or cargo_FWD > 0 then
		cargo_FWD = cargo_FWD + (cargo_1_cmd * 2 - 1) * passed / 5
	end
	
	if cargo_FWD <= 0.01 and not door_may_open and cargo_1_cmd == 1 then set(slider_3, 0) end -- reset slider, if not able to open
	
	-- limits
	if cargo_FWD > 1 then cargo_FWD = 1
	elseif cargo_FWD < 0 then cargo_FWD = 0 end
	
	set(cargo_1, cargo_FWD)
	
	-- cargo 2
	local cargo_BK = get(cargo_2)
	local cargo_2_cmd = get(slider_4)
	
	if cargo_BK == 0 and door_may_open or cargo_BK > 0 then
		cargo_BK = cargo_BK + (cargo_2_cmd * 2 - 1) * passed / 5
	end
	
	if cargo_BK <= 0.01 and not door_may_open and cargo_2_cmd == 1 then set(slider_4, 0) end -- reset slider, if not able to open
	
	-- limits
	if cargo_BK > 1 then cargo_BK = 1
	elseif cargo_BK < 0 then cargo_BK = 0 end
	
	set(cargo_2, cargo_BK)


	-- Door 1 
	--local door_1 = get(pax_door_1)
	local door_1_cmd = get(slider_5)
	
	if door_1 == 0 and door_may_open or door_1 > 0 then
		door_1 = door_1 + (door_1_cmd * 2 - 1) * passed / 5
	end
	
	if door_1 <= 0.01 and not door_may_open and door_1_cmd == 1 then set(slider_5, 0) end -- reset slider, if not able to open
	
	-- limits
	if door_1 > 1 then door_1 = 1
	elseif door_1 < 0 then door_1 = 0 end
	local door_1_act=interpolate(door_tbl,door_1)
	set(pax_door_1, door_1_act)


	-- Door 2
	--local door_2 = get(pax_door_2)
	local door_2_cmd = get(slider_6)
	
	if door_2 == 0 and door_may_open or door_2 > 0 then
		door_2 = door_2 + (door_2_cmd * 2 - 1) * passed / 5
	end
	
	if door_2 <= 0.01 and not door_may_open and door_2_cmd == 1 then set(slider_6, 0) end -- reset slider, if not able to open
	
	-- limits
	if door_2 > 1 then door_2 = 1
	elseif door_2 < 0 then door_2 = 0 end
	local door_2_act=interpolate(door_tbl,door_2)
	set(pax_door_2, door_2_act)	

	-- Door 3
	--local door_3 = get(pax_door_3)
	local door_3_cmd = get(slider_7)
	
	if door_3 == 0 and door_may_open or door_3 > 0 then
		door_3 = door_3 + (door_3_cmd * 2 - 1) * passed / 5
	end
	
	if door_3 <= 0.01 and not door_may_open and door_3_cmd == 1 then set(slider_7, 0) end -- reset slider, if not able to open
	
	-- limits
	if door_3 > 1 then door_3 = 1
	elseif door_3 < 0 then door_3 = 0 end
	local door_3_act=interpolate(door_tbl,door_3)
	set(pax_door_3, door_3_act)		
	
	
	-- cockpit door
	-- Door 3
	local door_4 = get(cockpit_door)
	local door_4_cmd = get(slider_8)
	
	door_4 = door_4 + (door_4_cmd * 2 - 1) * passed / 3

	
	-- limits
	if door_4 > 1 then door_4 = 1
	elseif door_4 < 0 then door_4 = 0 end
	
	set(cockpit_door, door_4)		
	
	----------------
	
	set(brake_emerg_L, get(brake_emerg))
	set(brake_emerg_R, get(brake_emerg))
	
	
	-- chairs arms
	
	-- left chair
	local chair_L = get(rise_chair_arm_L)
	local chair_L_cmd = get(slider_11)
	
	chair_L = chair_L + (chair_L_cmd * 2 - 1) * passed
	
	-- limits
	if chair_L > 1 then chair_L = 1
	elseif chair_L < 0 then chair_L = 0 end
	
	set(rise_chair_arm_L, chair_L)	
	
	-- right chair
	local chair_R = get(rise_chair_arm_R)
	local chair_R_cmd = get(slider_12)
	
	chair_R = chair_R + (chair_R_cmd * 2 - 1) * passed
	
	-- limits
	if chair_R > 1 then chair_R = 1
	elseif chair_R < 0 then chair_R = 0 end
	
	set(rise_chair_arm_R, chair_R)	
	
	-- yokes
	set(yokes_show, 1 - get(slider_9))
	
	
	-- wipers
	local wip_power_L = bool2int(get(bus27_volt_left) > 13 and get(bus115_1_volt) > 110)
	local wip_power_R = bool2int(get(bus27_volt_right) > 13 and get(bus115_3_volt) > 110)
	
	local wip_spd_L = 0
	if get(wiper_left) == -1 then wip_spd_L = 1.5 * wip_power_L
	elseif get(wiper_left) == 1 then wip_spd_L = 3 * wip_power_L
	else 
		if wiper_pos_L > 0.1 then wip_spd_L = 1 * wip_power_L end
	end
	
	local wip_spd_R = 0
	if get(wiper_right) == -1 then wip_spd_R = 1.5 * wip_power_R
	elseif get(wiper_right) == 1 then wip_spd_R = 3 * wip_power_R
	else 
		if wiper_pos_R > 0.1 then wip_spd_R = 1 * wip_power_R end
	end
	
	wiper_pos_L = wiper_pos_L + wip_spd_L * passed
	
	if wiper_pos_L > 1 then wiper_pos_L = wiper_pos_L - 1 end
	
	wiper_pos_R = wiper_pos_R + wip_spd_R * passed
	
	if wiper_pos_R > 1 then wiper_pos_R = wiper_pos_R - 1 end
	
	set(wiper_angle_left, (math.cos(math.pi * wiper_pos_L * 2 - math.pi) + 1) * 0.5 * 62)
	set(wiper_angle_right, (math.cos(math.pi * wiper_pos_R * 2 - math.pi) + 1) * 0.5 * 62)
	
	-- tables
	local table_pos_L = get(cockpit_table_1)
	local table_pos_R = get(cockpit_table_2)
	
	local table_sw_L = get(table_up_L)
	local table_sw_R = get(table_up_R)
	
	if table_pos_L < 1 and table_sw_L == 1 then table_pos_L = table_pos_L + passed * 0.5 
	elseif table_pos_L > 0 and table_sw_L == 0 then table_pos_L = table_pos_L - passed * 0.5 end
	
	if table_pos_R < 1 and table_sw_R == 1 then table_pos_R = table_pos_R + passed * 0.5 
	elseif table_pos_R > 0 and table_sw_R == 0 then table_pos_R = table_pos_R - passed * 0.5 end
	
	set(cockpit_table_1, table_pos_L)
	set(cockpit_table_2, table_pos_R)
	
	
	-- reverse handle
	set(reverse_mid, (get(revers_L) + get(revers_R))/2)
	
	
	
	
	
	
	
	
	
	

end