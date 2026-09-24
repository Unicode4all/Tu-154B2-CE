-- this is various lamps, that connects different gauges and systems

-- power and test buttons

lamp_test = globalPropertyi("tu154b2/custom/buttons/lamp_test_front") -- кнопка проверки ламп на передней панели	0
day_night_set = globalPropertyf("tu154b2/custom/lights/day_night_set") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")





-- lamps
dh_lamp = globalPropertyf("tu154b2/custom/lights/decision_height") -- высота принятия решения Н
to_not_ready = globalPropertyf("tu154b2/custom/lights/to_not_ready") -- к взлету не готов
fuel_less_2500 = globalPropertyf("tu154b2/custom/lights/fuel_less_2500") -- остаток топлива 2500
sso_danger = globalPropertyf("tu154b2/custom/lights/sso_danger") -- ССО опасно
sso_connect = globalPropertyf("tu154b2/custom/lights/sso_connect") -- ССО связь
speed_high = globalPropertyf("tu154b2/custom/lights/speed_high") -- предел скорости
--
damper_course = globalPropertyf("tu154b2/custom/lights/damper_course") -- демпер курс
damper_roll = globalPropertyf("tu154b2/custom/lights/damper_roll") -- демпер крен
damper_pitch = globalPropertyf("tu154b2/custom/lights/damper_pitch") -- демпер тангаж

no_reserve_c = globalPropertyf("tu154b2/custom/lights/no_reserve_c") -- нет резерва К
no_reserve_g = globalPropertyf("tu154b2/custom/lights/no_reserve_g") -- нет резерва Г

msg_lamp = globalPropertyf("tu154b2/custom/lights/msg_lamp") -- MSG
wpt_lamp = globalPropertyf("tu154b2/custom/lights/wpt_lamp") -- WPT
stuard_call = globalPropertyf("tu154b2/custom/lights/stuard_call") -- вызов БП

sns_lamp = globalPropertyf("tu154b2/custom/lights/sns_lamp") -- СНС


-- sources
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- time of frame

-- DH
dh_set_L = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_left")  -- DH angle
rv_angle_L = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_left")  -- RV needle
dh_set_R = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_right")  -- DH angle
rv_angle_R = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_right")  -- RV needle

rv5_dh_signal_left = globalPropertyi("tu154b2/custom/misc/rv5_dh_signal_left")
rv5_dh_signal_right = globalPropertyi("tu154b2/custom/misc/rv5_dh_signal_right")



-- TakeOff ready
nosewheel_steer_on = globalPropertyi("tu154b2/custom/hydro/nosewheel_turn_power")
nosewheel_turn_sel = globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_sel") -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63

cargo_1 = globalPropertyf("tu154b2/custom/anim/cargo_1") -- положение багажной двери 1. 0 - закрыта, 1 - открыта
cargo_2 = globalPropertyf("tu154b2/custom/anim/cargo_2") -- положение багажной двери 1. 0 - закрыта, 1 - открыта
pax_door_1 = globalPropertyf("tu154b2/custom/anim/pax_door_1") -- положение передних пасс дверей
pax_door_2 = globalPropertyf("tu154b2/custom/anim/pax_door_2") -- положение средних пасс дверей
pax_door_3 = globalPropertyf("tu154b2/custom/anim/pax_door_3") -- положение правых аварийных дверей

busters_cap = globalPropertyi("tu154b2/custom/switchers/console/busters_cap") -- крышка выключателей бустеров

spd_brk_inn_L = globalProperty("sim/flightmodel2/wing/speedbrake1_deg[0]") -- inner speedbrake left Degrees
spd_brk_inn_R = globalProperty("sim/flightmodel2/wing/speedbrake1_deg[1]") -- inner speedbrake right Degrees
slats = globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio") -- slats position. this one works too

gear1_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")
gear2_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")  -- vertical deflection of left gear
gear3_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")  -- vertical deflection of right gear

-- fuel 2500
tank1_w = globalProperty("sim/flightmodel/weight/m_fuel[0]") -- fuel weight

-- speed
ias_L = globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot") -- indicated airspeed in KTS
--ias_R = globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot")

msl_alt = globalPropertyf("sim/flightmodel2/position/pressure_altitude")  -- pressure altitude in feet
--msl_press = globalPropertyf("sim/weather/barometer_sealevel_inhg")  -- pressire at sea level in.Hg
mach_sim = globalPropertyf("tu154b2/custom/gauges/speed/mach_right") -- Mach number
rel_pitot = globalPropertyi("sim/operation/failures/rel_pitot") -- Pitot 1 - Blockage
rel_pitot2 = globalPropertyi("sim/operation/failures/rel_pitot2") -- Pitot 2 - Blockage

-- KLN
WPTalert = globalPropertyi("custom/KLN90/WPT")
MSGalert = globalProperty("custom/KLN90/MSG")
-- GNS
has_gns = globalPropertyi("tu154b2/custom/anim/show_gns")
gns_ind = globalPropertyf("sim/cockpit/gps/destination_index")
gns_wp_time = globalPropertyf("sim/cockpit/radios/gps_dme_time_secs")

speaker_speed = globalPropertyi("tu154b2/custom/alarm/speaker_speed") -- предельная скорость

-- ABSU
damp_roll_lamp = globalPropertyi("tu154b2/custom/absu/damp_roll_lamp") -- 
damp_pitch_lamp = globalPropertyi("tu154b2/custom/absu/damp_pitch_lamp") -- 
damp_yaw_lamp = globalPropertyi("tu154b2/custom/absu/damp_yaw_lamp") -- 
roll_contr_lamp = globalPropertyi("tu154b2/custom/absu/roll_contr_lamp") -- 
pitch_contr_lamp = globalPropertyi("tu154b2/custom/absu/pitch_contr_lamp") -- 
man_roll_lamp = globalPropertyi("tu154b2/custom/absu/man_roll_lamp") -- 
man_pitch_lamp = globalPropertyi("tu154b2/custom/absu/man_pitch_lamp") -- 
man_toga_lamp = globalPropertyi("tu154b2/custom/absu/man_toga_lamp") -- 

absu_landing_on = globalPropertyi("tu154b2/custom/switchers/console/absu_landing_on") -- стрелки посадка
roll_main_mode = globalPropertyi("tu154b2/custom/absu/roll_main_mode") -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
pitch_main_mode = globalPropertyi("tu154b2/custom/absu/pitch_main_mode") -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб


-- CourseMP
nav_cs_flag = globalPropertyi("tu154b2/custom/radio/nav1_cs_flag")
nav_gs_flag = globalPropertyi("tu154b2/custom/radio/nav1_gs_flag")

nav2_cs_flag = globalPropertyi("tu154b2/custom/radio/nav2_cs_flag")
nav2_gs_flag = globalPropertyi("tu154b2/custom/radio/nav2_gs_flag")

nav1_pow_cc = globalPropertyf("tu154b2/custom/radio/nav1_pow_cc") -- потребление тока от КурсМП
nav2_pow_cc = globalPropertyf("tu154b2/custom/radio/nav2_pow_cc") -- потребление тока от КурсМП
nav1_fail = globalPropertyi("tu154b2/custom/failures/nav1_fail") -- fail
nav2_fail = globalPropertyi("tu154b2/custom/failures/nav2_fail") -- fail

-- ready
to_ready = globalPropertyi("tu154b2/custom/checklist/to_ready") -- лампа горит
absu_bns_pitch_fail = globalPropertyi("tu154b2/custom/failures/bns_tet_fail")
absu_power_27 = globalPropertyf("tu154b2/custom/absu_power_27")

anim_rud1 = globalPropertyf("tu154b2/custom/controlls/throttle_1") -- РУД 1
anim_rud2 = globalPropertyf("tu154b2/custom/controlls/throttle_2") -- РУД 2
anim_rud3 = globalPropertyf("tu154b2/custom/controlls/throttle_3") -- РУД 3


lamp_1 = globalPropertyi("tu154b2/custom/failures/lamp_1")
lamp_2 = globalPropertyi("tu154b2/custom/failures/lamp_2")




local button_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')

--local button_last = 0

local DH = 0

local to_not_ready_counter = 0
local to_not_ready_lit = 0

local fuel2500_counter = 0
local fuel2500_lit = 0

local WPT_counter = 0
local WPT_lit = 0

local MSG_counter = 0
local MSG_lit = 0

local TO_notReadyAct = 0


function update()
	
	
	local passed = get(frame_time)
	
	-- power and controlls
	local test_btn = get(lamp_test)-- 
	--if button_last ~= test_btn then playSample(button_sound, false) end
	--button_last = test_btn
	test_btn = test_btn * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	
	
	
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	
	
	-- DH lamp
	DH = math.max(get(rv5_dh_signal_left), get(rv5_dh_signal_right))
	
	
	--if dh_L < 1 and dh_R < 1 then DH = 0 end
	
	local dh_lamp_brt = math.max(DH * lamps_brt, test_btn)
	set(dh_lamp, dh_lamp_brt)
	
	
	-- TO not ready
	local TO_ready = (get(nosewheel_steer_on) == 1 or get(gear1_deflect) < 0.05) and get(nosewheel_turn_sel) == 0 and get(busters_cap) == 0
	TO_ready = TO_ready and get(cargo_1) + get(cargo_2) + get(pax_door_1) + get(pax_door_2) + get(pax_door_2) + get(pax_door_3) == 0
	TO_ready = TO_ready and get(spd_brk_inn_L) + get(spd_brk_inn_R) < 1 and (get(slats) > 0.9 or (get(anim_rud1)<0.7 or get(anim_rud2)<0.7 or get(anim_rud3)<0.7) )
	TO_ready = TO_ready or (get(gear2_deflect) < 0.05 or get(gear3_deflect) < 0.05)
	
	
	if not TO_ready then
		to_not_ready_counter = to_not_ready_counter + passed
		if to_not_ready_counter > 0.3 then 
			to_not_ready_lit = 1 - to_not_ready_lit
			to_not_ready_counter = 0
		end
		set(to_ready, 1)
	else
		to_not_ready_counter = 0
		to_not_ready_lit = 0
		set(to_ready, 0)
	end
	
	TO_notReadyAct = TO_notReadyAct + (to_not_ready_lit - TO_notReadyAct) * passed * 10
	
	
	local to_not_ready_brt = math.max(TO_notReadyAct * lamps_brt, test_btn)
	set(to_not_ready, to_not_ready_brt)
	
	-- fuel 2500
	if get(tank1_w) < 2500 then 
		fuel2500_counter = fuel2500_counter + passed
		if fuel2500_counter > 0.3 then 
			fuel2500_lit = 1 - fuel2500_lit
			fuel2500_counter = 0
		end
		
	else
		fuel2500_counter = 0
		fuel2500_lit = 0
	end
	
	local fuel_less_2500_brt = math.max(fuel2500_lit * lamps_brt, test_btn) * (1 - get(lamp_1))
	set(fuel_less_2500, fuel_less_2500_brt)
	
	-- overspeed
	local alt_std_mtr = get(msl_alt) / 3.28083  -- calculate pressure altitude in meters
	
	local ias = get(ias_L) * 1.852 -- km/h
	--if get(rel_pitot) == 6 then ias = get(ias_R) * 1.852 end -- temp automatic switch
	
	local mach = get(mach_sim)
	
	local over_spd = (alt_std_mtr < 7000 and ias > 600) or (alt_std_mtr >= 7000 and alt_std_mtr < 10300 and ias > 575) or (alt_std_mtr >= 10300 and mach > 0.88)
	
	set(speaker_speed, bool2int(over_spd))
	
	local speed_high_brt = math.max(bool2int(over_spd) * lamps_brt, test_btn)
	set(speed_high, speed_high_brt)
	
	
	-- KLN	
	if get(MSGalert) >0 and get(has_gns)==0 then
		MSG_counter = MSG_counter + passed
		if MSG_counter > 0.3 then 
			MSG_lit = 1 - MSG_lit
			MSG_counter = 0
		end
	else
		MSG_counter = 0
		MSG_lit = 0
	end
	
	
	local msg_lamp_brt = math.max(MSG_lit * lamps_brt, test_btn)
	set(msg_lamp, msg_lamp_brt)
	
	local WP_alert=0
	if get(has_gns)==1 then
		WP_alert=bool2int(get(gns_ind)~=-1 and get(gns_wp_time)<0.3 and get(gns_wp_time)~=0)
	else
		WP_alert=get(WPTalert)
	end
	if WP_alert == 1 then
		WPT_counter = WPT_counter + passed
		if WPT_counter > 0.3 then 
			WPT_lit = 1 - WPT_lit
			WPT_counter = 0
		end
	else
		WPT_counter = 0
		WPT_lit = 0
	end	
	
	
	
	local wpt_lamp_brt = math.max(WPT_lit * lamps_brt, test_btn)
	set(wpt_lamp, wpt_lamp_brt)
	
	-- dampers
	local damper_course_brt = math.max(get(damp_yaw_lamp) * lamps_brt, test_btn)
	set(damper_course, damper_course_brt)
	
	local damper_roll_brt = math.max(get(damp_roll_lamp) * lamps_brt, test_btn)
	set(damper_roll, damper_roll_brt)
	
	local damper_pitch_brt = math.max(get(damp_pitch_lamp) * lamps_brt, test_btn)
	set(damper_pitch, damper_pitch_brt)
	local absu_power=get(absu_power_27)>0
	-- CourseMP
	local no_reserve_c_brt = math.max(bool2int(get(absu_landing_on) == 1 and absu_power and get(nav_cs_flag) == 0 and get(nav2_cs_flag)==1) * lamps_brt, test_btn)  * (1 - get(lamp_2))
	set(no_reserve_c, no_reserve_c_brt)
	
	local no_reserve_g_brt = math.max(bool2int(get(absu_landing_on) == 1 and absu_power and get(nav_gs_flag) == 0 and get(nav2_gs_flag)==1) * lamps_brt, test_btn)
	--math.max(bool2int(get(absu_landing_on) == 1 and absu_power and (get(nav1_fail) == 1 or get(nav2_fail) == 1 or get(nav1_pow_cc) == 0 or get(nav2_pow_cc) == 0)) * lamps_brt, test_btn)
	set(no_reserve_g, no_reserve_g_brt)
	
	
	
	--[[
	local no_reserve_c_brt = math.max(get(nav_cs_flag) * bool2int(get(roll_main_mode) > 0 and get(pitch_main_mode) > 0 and get(absu_landing_on) == 1) * lamps_brt, test_btn)
	set(no_reserve_c, no_reserve_c_brt)
	
	local no_reserve_g_brt = math.max(get(nav_gs_flag) * bool2int(get(roll_main_mode) > 0 and get(pitch_main_mode) > 0 and get(absu_landing_on) == 1) * lamps_brt, test_btn)
	set(no_reserve_g, no_reserve_g_brt)
	--]]
	
	
	
	--------------------------
	-- fake lamps --
	--------------------------
	
	local sso_danger_brt = math.max(0 * lamps_brt, test_btn)
	set(sso_danger, sso_danger_brt)
	
	local sso_connect_brt = math.max(0 * lamps_brt, test_btn)
	set(sso_connect, sso_connect_brt)
	
	local stuard_call_brt = math.max(0 * lamps_brt, test_btn)
	set(stuard_call, stuard_call_brt)
	
	--local sns_lamp_brt = math.max(0 * lamps_brt, test_btn)
	--set(sns_lamp, sns_lamp_brt)
	
	
	

end