
-- electric system
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))

defineProperty("ext_light_cc_left", globalPropertyf("tu154b2/custom/elec/ext_light_cc_left"))-- нагрузка на левую сеть
defineProperty("ext_light_cc_right", globalPropertyf("tu154b2/custom/elec/ext_light_cc_right"))-- нагрузка на правую сеть


-- lights result
defineProperty("sim_nav_light", globalPropertyf("sim/cockpit2/switches/navigation_lights_on")) -- nav lights
defineProperty("sim_beacon", globalPropertyf("sim/cockpit2/switches/beacon_on")) -- beacon lights
defineProperty("sim_strobes", globalPropertyf("sim/cockpit2/switches/strobe_lights_on")) -- strobes lights
defineProperty("sim_lan_FL", globalProperty("sim/cockpit2/switches/landing_lights_switch[7]")) -- front left landing light
defineProperty("sim_lan_FR", globalProperty("sim/cockpit2/switches/landing_lights_switch[6]")) -- front right landing light
defineProperty("sim_lan_WL", globalProperty("sim/cockpit2/switches/landing_lights_switch[5]")) -- wing left landing light
defineProperty("sim_lan_WR", globalProperty("sim/cockpit2/switches/landing_lights_switch[4]")) -- wing right landing light
defineProperty("sim_NW_L", globalProperty("sim/cockpit2/switches/landing_lights_switch[9]")) -- nosewheel left landing light
defineProperty("sim_NW_R", globalProperty("sim/cockpit2/switches/landing_lights_switch[8]")) -- nosewheel right landing light 
defineProperty("sim_spot", globalPropertyf("sim/cockpit2/switches/spot_light_on")) -- spot lights
defineProperty("sim_logo", globalProperty("sim/cockpit2/switches/generic_lights_switch[0]")) -- logo light
defineProperty("sim_wings_L", globalProperty("sim/cockpit2/switches/generic_lights_switch[1]")) -- wings light
defineProperty("sim_wings_R", globalProperty("sim/cockpit2/switches/generic_lights_switch[2]")) -- wings light
defineProperty("sim_cargo_1", globalProperty("sim/cockpit2/switches/generic_lights_switch[3]")) -- cargo light
defineProperty("sim_cargo_2", globalProperty("sim/cockpit2/switches/generic_lights_switch[4]")) -- cargo light



defineProperty("sim_lan_brt", globalProperty("sim/flightmodel2/lights/landing_lights_brightness_ratio[1]")) -- front left landing light


defineProperty("sim_landing", globalPropertyi("sim/cockpit/electrical/landing_lights_on")) -- logo light

-- animation
defineProperty("light_open_left", globalPropertyf("tu154b2/custom/anim/light_open_left")) -- light open
defineProperty("light_open_right", globalPropertyf("tu154b2/custom/anim/light_open_right")) -- light open

defineProperty("white_light_left", globalPropertyi("tu154b2/custom/lights/white_light_left")) -- светимость левого белого огня на крыле
defineProperty("white_light_right", globalPropertyi("tu154b2/custom/lights/white_light_right")) -- светимость правого белого огня на крыле
defineProperty("beacon_light_B", globalPropertyi("tu154b2/custom/lights/beacon_light_B")) -- светимость красного маяка
defineProperty("beacon_light_T", globalPropertyi("tu154b2/custom/lights/beacon_light_T")) -- светимость красного маяка

defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- просадка шасси
defineProperty("deploy_ratio_1", globalProperty("sim/flightmodel2/gear/deploy_ratio[0]")) -- выпуск шасси 1



defineProperty("lamp_deploy_FL", globalProperty("sim/aircraft/parts/acf_gear_deploy[3]"))  -- deploy of left front lamp
defineProperty("lamp_deploy_FR", globalProperty("sim/aircraft/parts/acf_gear_deploy[4]"))  -- deploy of right front lamp
defineProperty("lamp_deploy_WL", globalProperty("sim/aircraft/parts/acf_gear_deploy[5]"))  -- deploy of left wing lamp
defineProperty("lamp_deploy_WR", globalProperty("sim/aircraft/parts/acf_gear_deploy[6]"))  -- deploy of right wing lamp

-- controls
defineProperty("nav_lights_set", globalPropertyf("tu154b2/custom/lights/nav_lights_set")) -- выключатель нав огней
defineProperty("strobe_set", globalPropertyf("tu154b2/custom/lights/strobe_set")) -- выключатель красных маяков
defineProperty("wing_light_left_set", globalPropertyf("tu154b2/custom/lights/wing_light_left_set")) -- выключатель подсвета порогов и крыла
defineProperty("wing_light_right_set", globalPropertyf("tu154b2/custom/lights/wing_light_right_set")) -- выключатель подсвета порогов и крыла
defineProperty("tail_light_set", globalPropertyf("tu154b2/custom/lights/tail_light_set")) -- выключатель подсвета хвоста
defineProperty("day_night_set", globalPropertyf("tu154b2/custom/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.
defineProperty("wing_light", globalPropertyf("tu154b2/custom/switchers/eng/wing_light"))

defineProperty("cargo_1", globalPropertyf("tu154b2/custom/lights/cargo_light_1_set"))
defineProperty("cargo_2", globalPropertyf("tu154b2/custom/lights/cargo_light_2_set"))


defineProperty("landing_ext_set_L", globalPropertyf("tu154b2/custom/lights/landing_ext_set_L")) -- выпуск фар лев
defineProperty("landing_ext_set_R", globalPropertyf("tu154b2/custom/lights/landing_ext_set_R")) -- выпуск фар прав
defineProperty("landing_mode_set_L", globalPropertyf("tu154b2/custom/lights/landing_mode_set_L")) -- режим фар лев. -1 - рулежный, 0 - выкл, +1 - посадочный
defineProperty("landing_mode_set_R", globalPropertyf("tu154b2/custom/lights/landing_mode_set_R")) -- режим фар прав
defineProperty("light_signal_set", globalPropertyf("tu154b2/custom/lights/light_signal_set")) -- сигнал в полете


defineProperty("landing_light_off", globalPropertyi("tu154b2/custom/lights/landing_light_off")) -- выключатель фар
defineProperty("landing_light_off_cap", globalPropertyi("tu154b2/custom/lights/landing_light_off_cap")) -- выключатель фар



-- time
defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec")) -- sim time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- failures
defineProperty("lan_lamp_fail_FL", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_FL")) -- отказ передней левой фары
defineProperty("lan_lamp_fail_FR", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_FR")) -- отказ передней правой фары
defineProperty("lan_lamp_fail_WL", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_WL")) -- отказ крыльевой левой фары
defineProperty("lan_lamp_fail_WR", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_WR")) -- отказ крыльевой правой фары
defineProperty("rel_lites_nav", globalPropertyi("sim/operation/failures/rel_lites_nav")) -- отказ на огней
defineProperty("rel_lites_beac", globalPropertyi("sim/operation/failures/rel_lites_beac")) -- отказ на огней
defineProperty("nosewheel_turn_sel", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_sel"))


defineProperty("sim_lights_switch", globalProperty("sim/cockpit2/switches/landing_lights_switch[0]"))

--sim/cockpit2/switches/landing_lights_switch


set(sim_strobes, 0)

set(lamp_deploy_FL, 0)
set(lamp_deploy_FR, 0)
set(lamp_deploy_WL, 0)
set(lamp_deploy_WR, 0)



local beacon_counter_B = 0
local beacon_counter_T = 0
local nav_counter = 0

local lan_light_counter_L = 0
local lan_light_counter_R = 0

function update()
	-- strobe dataref for VA plugins
	local nws=math.min(1,get(nosewheel_turn_sel)-get(strobe_set)+1)
	set(sim_strobes, 1-nws)
	local passed = get(frame_time)
	
	-- coefficients
	local coef_27_L = get(bus27_volt_left) / 28
	local coef_27_R = get(bus27_volt_right) / 28
	local coef_115 = 0
	if get(bus115_1_volt) > 110 then coef_115 = 1 end
	
	-- failures
	local fail_FL = get(lan_lamp_fail_FL) 
	local fail_FR = get(lan_lamp_fail_FR) 
	local fail_WL = get(lan_lamp_fail_WL) 
	local fail_WR = get(lan_lamp_fail_WR)
	
	local lights_on = 1 - get(landing_light_off)
	
	-- landing lights animation
	-- left lights
	if get(landing_ext_set_L) == 1 and lan_light_counter_L < 1 then
		lan_light_counter_L = lan_light_counter_L + passed * 0.1 * coef_27_L
	elseif get(landing_ext_set_L) == 0 and lan_light_counter_L > 0 then
		lan_light_counter_L = lan_light_counter_L - passed * 0.1 * coef_27_L
	end
	if lan_light_counter_L > 1 then lan_light_counter_L = 1
	elseif lan_light_counter_L < 0 then lan_light_counter_L = 0 end
	

	
	-- right lights
	if get(landing_ext_set_R) == 1 and lan_light_counter_R < 1 then
		lan_light_counter_R = lan_light_counter_R + passed * 0.1 * coef_27_R
	elseif get(landing_ext_set_R) == 0 and lan_light_counter_R > 0 then
		lan_light_counter_R = lan_light_counter_R - passed * 0.1 * coef_27_R
	end
	if lan_light_counter_R > 1 then lan_light_counter_R = 1
	elseif lan_light_counter_R < 0 then lan_light_counter_R = 0 end

	set(light_open_left, lan_light_counter_L) -- переделать
	set(lamp_deploy_FL, lan_light_counter_R)
	set(lamp_deploy_WL, lan_light_counter_L)
	
	set(light_open_right, lan_light_counter_R)	 -- переделать
	set(lamp_deploy_FR, lan_light_counter_R)
	set(lamp_deploy_WR, lan_light_counter_L)
	
	-- landing light shine
	local lan_light_WL = 0
	local lan_light_WR = 0
	local lan_light_FL = 0
	local lan_light_FR = 0
	local taxi_lit_L = 0
	local taxi_lit_R = 0
	
	local lan_light_sw_L = get(landing_mode_set_L)
	local lan_light_sw_R = get(landing_mode_set_R)
	
	if lan_light_sw_L == 1 then
		lan_light_WL = coef_27_L * get(landing_ext_set_L) * (1 - fail_WL) * lights_on
		lan_light_WR = coef_27_R * get(landing_ext_set_L) * (1 - fail_WR) * lights_on
		taxi_lit_L = 0
	elseif lan_light_sw_L == -1 then
		lan_light_WL = 0
		lan_light_WR = 0
		taxi_lit_L = coef_27_L
	else
		lan_light_WL = 0
		lan_light_WR = 0
		taxi_lit_L = 0
	end
	
	
	
	if lan_light_sw_R == 1 then
		lan_light_FL = coef_27_L * get(landing_ext_set_R) * (1 - fail_FL) * lights_on
		lan_light_FR = coef_27_R * get(landing_ext_set_R) * (1 - fail_FR) * lights_on
		taxi_lit_R = 0
	elseif lan_light_sw_R == -1 then
		lan_light_FL = 0
		lan_light_FR = 0
		taxi_lit_R = coef_27_R
	else
		lan_light_FL = 0
		lan_light_FR = 0
		taxi_lit_R = 0
	end
	

	
	-- flight lamps
	local flight_lit = get(light_signal_set) * (coef_27_L + coef_27_R) * 0.5
	set(sim_spot, flight_lit)
	
	-- nav lights
	local nav_lit = get(nav_lights_set) * coef_27_R * bool2int(get(rel_lites_nav) ~= 6)
	if nav_lit > 0 then nav_lit = 1 end
	set(sim_nav_light, nav_lit)
	
	-- white lamps on wings
	if nav_counter < 1 and nav_lit == 1 and get(gear_defl) > 0.05 and get(wing_light) == 1 then 
		set(white_light_left, 1)
		set(white_light_right, 0)
	elseif nav_counter > 1 and nav_lit == 1 and get(gear_defl) > 0.05 and get(wing_light) == 1 then 
		set(white_light_left, 0)
		set(white_light_right, 1)
	else
		set(white_light_left, 0)
		set(white_light_right, 0)	
	end
	nav_counter = nav_counter + passed
	if nav_counter > 2 then nav_counter = 0 end

	-- red beacon
	local beacons_lit = get(strobe_set) * coef_27_R * coef_115 * bool2int(get(rel_lites_beac) ~= 6)
	if beacons_lit > 0 then beacons_lit = 1 end
	
	set(sim_beacon, beacons_lit)
	
	if beacon_counter_B < 0.05 and beacons_lit == 1 then set(beacon_light_B, 1)
	else set(beacon_light_B, 0) end
	
	beacon_counter_B = beacon_counter_B + passed
	if beacon_counter_B > 1.3 then beacon_counter_B = 0 end

	if beacon_counter_T < 0.05 and beacons_lit == 1 then set(beacon_light_T, 1)
	else set(beacon_light_T, 0) end
	
	beacon_counter_T = beacon_counter_T + passed
	if beacon_counter_T > 1.4 then beacon_counter_T = 0 end	
	
	-- tail logo
	local logo_lit = get(tail_light_set) * coef_27_R
	set(sim_logo, logo_lit)
	
	-- wing lit
	local wing_L_lit = get(wing_light_left_set) * coef_27_L
	local wing_R_lit = get(wing_light_right_set) * coef_27_R
	
	local cargo_1_lit = get(cargo_1) * coef_27_L
	local cargo_2_lit = get(cargo_2) * coef_27_R
	
	-- currents
	local current_L = (lan_light_WL + lan_light_FL) * 1000/27 + taxi_lit_L * 450/27 + flight_lit * coef_27_L * 16 + wing_L_lit * 217/27 + cargo_1_lit * 2
	local current_R = (lan_light_WR + lan_light_FR) * 1000/27 + taxi_lit_R * 450/27 + flight_lit * coef_27_R * 16 + nav_lit * 164/27 + logo_lit * 140/27 + wing_R_lit * 177/27 + cargo_2_lit * 2
	
	
	-- disable front gear lamps to lit throught its doors
	if get(deploy_ratio_1) < 0.1 then 
		taxi_lit_L = 0
		taxi_lit_R = 0
	end
	
	
	-- results
	set(sim_lan_FL, lan_light_FL * 1.5)
	set(sim_lan_FR, lan_light_FR * 1.5)
	set(sim_lan_WL, lan_light_WL * 1.5)
	set(sim_lan_WR, lan_light_WR * 1.5)
	set(sim_NW_L, taxi_lit_L * 1)
	set(sim_NW_R, taxi_lit_R * 1)
	set(sim_wings_L, wing_L_lit)
	set(sim_wings_R, wing_R_lit)
	set(sim_cargo_1, cargo_1_lit)
	set(sim_cargo_2, cargo_2_lit)
	
	
	
	-- Virtual Airlines bug work around
	if lan_light_WL + lan_light_WR + lan_light_FL + lan_light_FR > 0 then
		set(sim_lights_switch, 1)
	else
		set(sim_lights_switch, 0)
	end
	
	
	
	
	set(ext_light_cc_left, current_L)
	set(ext_light_cc_right, current_R)

	
	

end



