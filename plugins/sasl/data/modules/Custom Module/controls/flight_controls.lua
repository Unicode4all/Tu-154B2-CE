-- this is the flight controls logic

-- sources
--joy_pitch = globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio") -- pitch position of joytick
--joy_roll = globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio") -- roll position of joystick
--joy_yaw = globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio") -- yaw position of joystick


-- elev_debug1 = globalPropertyf("tu154b2/custom/controlls/elevator_debug1") 
-- elev_debug2 = globalPropertyf("tu154b2/custom/controlls/elevator_debug2") 

joy_pitch = globalPropertyf("tu154b2/custom/SC/yoke_pitch_ratio") 
joy_roll = globalPropertyf("tu154b2/custom/SC/yoke_roll_ratio") 
joy_yaw = globalPropertyf("tu154b2/custom/SC/yoke_heading_ratio") 


frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- time of frame

overr = globalPropertyf("sim/operation/override/override_control_surfaces") -- override controls

-- controls
speedbrake_ratio = globalPropertyf("sim/cockpit2/controls/speedbrake_ratio") -- sim speedbrake lever

elev_trimm_sw = globalPropertyi("tu154b2/custom/controll/elev_trimm_switcher") -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
ail_trimm_sw = globalPropertyi("tu154b2/custom/controll/ail_trimm_sw") -- переключатель триммера элеронов
rudd_trimm_sw = globalPropertyi("tu154b2/custom/controll/rudd_trimm_sw") -- переключатель триммера РН

int_pitch_trim = globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim") -- положение триммера руля высоты
int_roll_trim = globalPropertyf("tu154b2/custom/trimmers/int_roll_trim") -- положение триммера элеронов
int_yaw_trim = globalPropertyf("tu154b2/custom/trimmers/int_yaw_trim") -- положение триммера руля направления

buster_on_1 = globalPropertyi("tu154b2/custom/switchers/console/buster_on_1") -- выключатель бустера
buster_on_2 = globalPropertyi("tu154b2/custom/switchers/console/buster_on_2") -- выключатель бустера
buster_on_3 = globalPropertyi("tu154b2/custom/switchers/console/buster_on_3") -- выключатель бустера
busters_cap = globalPropertyi("tu154b2/custom/switchers/console/busters_cap") -- крышка выключателей бустеров

control_force_pos = globalPropertyf("tu154b2/custom/controls/control_force_pos") -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
control_force_pos_rud = globalPropertyf("tu154b2/custom/controls/control_force_pos_rud") -- положение загружателя РН. 0 - выклчюен, 1 - подключен

contr_force_set = globalPropertyi("tu154b2/custom/controll/contr_force_set") -- переключатель загружателя РВ РН. -1 - полет, 0 авто, +1 - взлет-посадка


deploy_ratio_2 = globalProperty("sim/flightmodel2/gear/deploy_ratio[1]") -- 
deploy_ratio_3 = globalProperty("sim/flightmodel2/gear/deploy_ratio[2]") -- 

gear1_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]")  -- vertical deflection of front gear
gear2_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")  -- vertical deflection of left gear
gear3_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")  -- vertical deflection of right gear


-- wings --
-- ailerons
ail_L = globalPropertyf("sim/flightmodel/controls/wing3l_ail1def") -- aileron left Degrees, positive is trailing-edge down. +- 20
ail_R = globalPropertyf("sim/flightmodel/controls/wing3r_ail1def") -- aileron right Degrees, positive is trailing-edge down. +- 20

-- spoilers
spd_brk_inn_L = globalProperty("sim/flightmodel2/wing/speedbrake1_deg[0]") -- inner speedbrake left Degrees
spd_brk_inn_R = globalProperty("sim/flightmodel2/wing/speedbrake1_deg[1]") -- inner speedbrake right Degrees
--spd_brk_inn_R = globalPropertyf("sim/flightmodel/controls/wing1r_spo1def") -- inner speedbrake right Degrees

spd_brk_inn_anim_L = globalPropertyf("tu154b2/custom/anim/spd_brk_inn_left") -- inner speedbrake left animation Degrees
spd_brk_inn_anim_R = globalPropertyf("tu154b2/custom/anim/spd_brk_inn_right") -- inner speedbrake right animation Degrees


spd_brk_mid_L = globalPropertyf("sim/flightmodel/controls/wing2l_spo2def") -- middle speedbrake left Degrees
spd_brk_mid_R = globalPropertyf("sim/flightmodel/controls/wing2r_spo2def") -- middle speedbrake right Degrees

roll_spoil_L = globalPropertyf("sim/flightmodel/controls/wing2l_spo1def") -- roll spoiler left Degrees
roll_spoil_R = globalPropertyf("sim/flightmodel/controls/wing2r_spo1def") -- roll spoiler right Degrees

-- flaps and slats
flap_inn_L = globalPropertyf("sim/flightmodel/controls/wing1l_fla1def") -- inner flaps left
flap_inn_R = globalPropertyf("sim/flightmodel/controls/wing1r_fla1def") -- inner flaps right

flap_mid_L = globalPropertyf("sim/flightmodel/controls/wing2l_fla2def") -- middle flaps left
flap_mid_R = globalPropertyf("sim/flightmodel/controls/wing2r_fla2def") -- middle flaps right

--slats = globalPropertyf("sim/flightmodel/controls/slatrat") -- slats position. this one works
--slats = globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio") -- slats position. this one works too


-- tail --
elevator_L = globalPropertyf("sim/flightmodel/controls/hstab1_elv1def") -- Degrees, positive is trailing-edge down.
elevator_R = globalPropertyf("sim/flightmodel/controls/hstab2_elv1def") -- Degrees, positive is trailing-edge down.
rudder = globalPropertyf("sim/flightmodel/controls/vstab2_rud1def") -- degrees, positive is trailing-edge left
stab_ratio = globalPropertyf("sim/cockpit2/controls/elevator_trim") -- sim pitch trimmer

--stap_pos_real = globalPropertyf("sim/flightmodel2/wing/elevator2_deg[0]") -- sim stab position
--elev_pos_real = globalPropertyf("sim/flightmodel2/wing/elevator1_deg[0]") -- sim elevator position

-- hydraulics
gs_press_1 = globalPropertyf("tu154b2/custom/hydro/gs_press_1") -- давление в ГС1
gs_press_2 = globalPropertyf("tu154b2/custom/hydro/gs_press_2") -- давление в ГС2
gs_press_3 = globalPropertyf("tu154b2/custom/hydro/gs_press_3") -- давление в ГС3


-- animations
yoke_pitch = globalPropertyf("tu154b2/custom/controlls/yoke_pitch") -- поворот штурвала ко тангажу
yoke_roll = globalPropertyf("tu154b2/custom/controlls/yoke_roll") -- поворот штурвала ко тангажу
pedals_turn = globalPropertyf("tu154b2/custom/controlls/pedals") -- поворот штурвала ко тангажу
spoilers_lever = globalPropertyf("tu154b2/custom/controlls/spoilers_lever") -- рычаг интерцепторов

revers_flap_L = globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]") -- reverse on left engine
revers_flap_R = globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]") -- reverse on right engine
rpm_high_1 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1") -- обороты турбины высокого давления №1
rpm_high_3 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3") -- обороты турбины высокого давления №3


-- power
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27

bus115_1_volt = globalPropertyf("tu154b2/custom/elec/bus115_1_volt") -- напряжение на сети 115в
bus115_3_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt") -- напряжение на сети 115в

bus36_volt_left = globalPropertyf("tu154b2/custom/elec/bus36_volt_left") -- напряжение сети 36в лев
bus36_volt_right = globalPropertyf("tu154b2/custom/elec/bus36_volt_right") -- напряжение сети 36в прав
bus36_volt_pts250_1 = globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1") -- напряжение сети 36 ПТС 1
bus36_volt_pts250_2 = globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2") -- напряжение сети 36 ПТС 2


anim_rud1 = globalPropertyf("tu154b2/custom/controlls/throttle_1") -- РУД 1
anim_rud2 = globalPropertyf("tu154b2/custom/controlls/throttle_2") -- РУД 2
anim_rud3 = globalPropertyf("tu154b2/custom/controlls/throttle_3") -- РУД 3

anim_rud1_ENG = globalPropertyf("tu154b2/custom/controlls/throttle_1_ENG") -- РУД 1 БИ
anim_rud2_ENG = globalPropertyf("tu154b2/custom/controlls/throttle_2_ENG") -- РУД 2 БИ
anim_rud3_ENG = globalPropertyf("tu154b2/custom/controlls/throttle_3_ENG") -- РУД 3 БИ

-- spoilers sources
deflection_mtr_2 = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]") -- 
deflection_mtr_3 = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]") -- 
revers_L = globalPropertyf("tu154b2/custom/controlls/revers_L") -- рычаг реверса лев
revers_R = globalPropertyf("tu154b2/custom/controlls/revers_R") -- рычаг реверса прав

ias_L = globalPropertyf("sim/flightmodel/position/indicated_airspeed") -- indicated airspeed in KTS
--ias_R = globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot")
-- get(ias) * 1.852 -- km/hr

-- currents
ctr_27_L_cc = globalPropertyf("tu154b2/custom/control/ctr_27_L_cc") -- нагрузка на сеть
ctr_27_R_cc = globalPropertyf("tu154b2/custom/control/ctr_27_R_cc") -- нагрузка на сеть

ctr_115_1_cc = globalPropertyf("tu154b2/custom/control/ctr_115_1_cc") -- нагрузка на сеть
ctr_115_2_cc = globalPropertyf("tu154b2/custom/control/ctr_115_2_cc") -- нагрузка на сеть
ctr_115_3_cc = globalPropertyf("tu154b2/custom/control/ctr_115_3_cc") -- нагрузка на сеть

-- ABSU controls
absu_contr_pitch = globalPropertyf("tu154b2/custom/absu/contr_pitch") -- отклонение штока РА56 по тангажу
absu_contr_roll = globalPropertyf("tu154b2/custom/absu/contr_roll") -- отклонение штока РА56 по крену
absu_contr_yaw = globalPropertyf("tu154b2/custom/absu/contr_yaw") -- отклонение штока РА56 по направлению

indicated_airspeed = globalPropertyf("sim/flightmodel/position/indicated_airspeed") -- приборная скорость
machno = globalPropertyf("sim/flightmodel/misc/machno") -- скорость Маха


-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
ail_fail_left = globalPropertyi("tu154b2/custom/failures/ail_fail_left") -- 
ail_fail_right = globalPropertyi("tu154b2/custom/failures/ail_fail_right") -- 
fail_spoil_inn_left = globalPropertyi("tu154b2/custom/failures/fail_spoil_inn_left") -- 
fail_spoil_inn_right = globalPropertyi("tu154b2/custom/failures/fail_spoil_inn_right") -- 
fail_spoil_mid_left = globalPropertyi("tu154b2/custom/failures/fail_spoil_mid_left") -- 
fail_spoil_mid_right = globalPropertyi("tu154b2/custom/failures/fail_spoil_mid_right") -- 
fail_spoil_out_left = globalPropertyi("tu154b2/custom/failures/fail_spoil_out_left") -- 
fail_spoil_out_right = globalPropertyi("tu154b2/custom/failures/fail_spoil_out_right") -- 

rudder_fail = globalPropertyi("tu154b2/custom/failures/rudder_fail") -- 
elev_fail_left = globalPropertyi("tu154b2/custom/failures/elev_fail_left") -- 
elev_fail_right = globalPropertyi("tu154b2/custom/failures/elev_fail_right") -- 
kontur_on = globalPropertyf("tu154b2/custom/b2/kontur_on") -- 
spb_inn_anim = globalPropertyf("tu154b2/custom/b2/spb_inn_anim") -- 

elev_coeff = globalPropertyf("tu154b2/custom/controlls/elev_coeff")

nosewheel_turn_sel = globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_sel")
yoke_offset = globalPropertyf("tu154b2/custom/controlls/yoke_offset")
--on_ground_L = globalPropertyi("sim/flightmodel2/gear/on_ground[1]")
--on_ground_R = globalPropertyi("sim/flightmodel2/gear/on_ground[1]")

elev_L_ph = globalPropertyf("tu154b2/custom/controlls/elev_L_phys")
elev_R_ph = globalPropertyf("tu154b2/custom/controlls/elev_R_phys")

ail_L_ph = globalPropertyf("tu154b2/custom/controlls/ail_L_phys")
ail_R_ph = globalPropertyf("tu154b2/custom/controlls/ail_R_phys")

roll_spoil_L_ph = globalPropertyf("tu154b2/custom/controlls/spoil_L_phys")
roll_spoil_R_ph = globalPropertyf("tu154b2/custom/controlls/spoil_R_phys")
rud_coeff = globalPropertyf("tu154b2/custom/controlls/rudder_coeff")
ua = globalPropertyf("sim/flightmodel2/misc/AoA_angle_degrees")
--db1 = globalPropertyf("tu154b2/custom/controlls/debug1")

 -- initialise some datarefs


local buster_1_ON = 0
local buster_2_ON = 0
local buster_3_ON = 0

local roll_pos_act = 0
local pitch_pos_act = 0
local yaw_pos_act = 0

local left_mid_sp_act = 0
local right_mid_sp_act = 0
local left_inn_sp_act = 0
local right_inn_sp_act = 0

local pitch_add = 0
local yaw_add = 0
local auto_deploy = 0
local spb_inn = 0
local auto_deploy_delay = 0

local passed = get(frame_time)

local pitch_cmd=0
local pitch_joy=0
local pitch_joy_prev=0

local joy_pitch2=0
local elev_coef = get(elev_coeff)
-- local joy_pitch2_prev=0
local reduce=1
local yoke_tbl = {
{-2, -2},
{-1, -1},
{0, 0},
{0.89, 0.89},
{0.9, 1.2}, 
{1, 2},
{2, 2}}

local elev_stall_tbl = {
{-40, -25.5},
{-29, -26},
{-28, -25.5},
{-27, -25},
{-26, -24.5},
{-25, -24}, 
{-24, -23.5},
{-22, -22}, 
{-20, -20},
{-10, -10},
{0, 0},
{40, 40}}


local stab_stall_tbl = {
{-400, 1},
{20, 1},
--{25, 0.3},
{40, 0.2},
{400, 0.2}}


function update()
	set(overr, 1)
	
	local MASTER = get(ismaster) ~= 1
	
	--print(MASTER)
	
	passed = get(frame_time)

	local ias = get(indicated_airspeed) * 1.852
	
	local mach = get(machno)
	local stab_aoa	
	
		
	--set(elev_coeff,elev_coef)
	
	-- check power
	local power_27_L = get(bus27_volt_left) > 13
	local power_27_R = get(bus27_volt_right) > 13
	
	-- set busters work status
	local buster_wire_1 = 1 -- this simulates short circuiting of the booster control wiring due to a fire in rear tech compartment
	local buster_wire_2 = 1
	local buster_wire_3 = 1
	if sys_data_tbl.eng_fire_timer_2> 160 and (sys_data_tbl.eng_fire_timer_2> 10 or sys_data_tbl.eng_fire_timer_2> 10) then
		if sys_data_tbl.eng_fire_timer_2 > math.random(320) then
			buster_wire_1 = 0
		end
		if sys_data_tbl.eng_fire_timer_2 > math.random(320) then
			buster_wire_2 = 0
		end
		if sys_data_tbl.eng_fire_timer_2 > math.random(320) then
			buster_wire_3 = 0
		end
	elseif sys_data_tbl.eng_fire_timer_2> 270 then
		if sys_data_tbl.eng_fire_timer_2 > math.random(540) then
			buster_wire_1 = 0
		end
		if sys_data_tbl.eng_fire_timer_2 > math.random(540) then
			buster_wire_2 = 0
		end
		if sys_data_tbl.eng_fire_timer_2 > math.random(540) then
			buster_wire_3 = 0
		end
	end
	
	if power_27_L then
		buster_1_ON = get(buster_on_1) * buster_wire_1
		buster_2_ON = get(buster_on_2) * buster_wire_2
	end
	
	if power_27_R then
		buster_3_ON = get(buster_on_3) * buster_wire_3
	end
	
	-- check hydraulics
	local HS1 = math.min(get(gs_press_1) / 63, 1) -- should start to slow down at 63 atm
	local HS2 = math.min(get(gs_press_2) / 63, 1)
	local HS3 = math.min(get(gs_press_3) / 63, 1)
	
	HS1 = HS1 * bool2int(HS1>0.2)
	HS2 = HS2 * bool2int(HS2>0.2)
	HS3 = HS3 * bool2int(HS3>0.2)
	--------------------------
	-- ailerons and roll-spoilers --
	local cockpit_yoke_roll = get(joy_roll) + get(int_roll_trim) --*(0.7+0.3*get(nosewheel_turn_sel))
	if reduce==1 then
		cockpit_yoke_roll = get(joy_roll)*(0.7+0.3*get(nosewheel_turn_sel)) + get(int_roll_trim)
	end
	if cockpit_yoke_roll > 1 then cockpit_yoke_roll = 1
	elseif cockpit_yoke_roll < -1 then cockpit_yoke_roll = -1 end
	
	local roll_cmd = cockpit_yoke_roll + get(absu_contr_roll)
	
	if roll_cmd > 1 then roll_cmd = 1
	elseif roll_cmd < -1 then roll_cmd = -1 end
	
	--if HS1 > 0.1 or HS2 > 0.1 or HS3 > 0.1 then
	roll_pos_act = roll_pos_act + (roll_cmd - roll_pos_act) * math.max(HS1 * buster_1_ON, HS2 * buster_2_ON, HS3 * buster_3_ON) * passed * 7
	--end
	local ail_corr=1.811854198223174 -0.002079941808742*math.max(ias,220) + -0.398752865107136*mach--  correct aileron effectivness to match RW data
	local left_ail_pos = roll_pos_act * 20*ail_corr-- * line(mach, 0, 1, 0.8, 0.5) -- can add failures here
	local right_ail_pos = -roll_pos_act * 20*ail_corr-- * line(mach, 0, 1, 0.8, 0.5) -- can add failures here
	
	local roll_sp_L = 0
	if left_ail_pos <= -1.5 then roll_sp_L = -((left_ail_pos + 1.5) / 18.5) * 45 end

	
	local roll_sp_R = 0
	if right_ail_pos <= -1.5 then roll_sp_R = -((right_ail_pos + 1.5) / 18.5) * 45 end
	
	
	-- set results
	
if MASTER then
	set(ail_L, left_ail_pos * (1 - get(ail_fail_left)))
	set(ail_R, right_ail_pos * (1 - get(ail_fail_right)))
	
	set(ail_L_ph, left_ail_pos * (1 - get(ail_fail_left))/ail_corr)
	set(ail_R_ph, right_ail_pos * (1 - get(ail_fail_right))/ail_corr)
	
	set(roll_spoil_L, roll_sp_L * (1 - get(fail_spoil_out_left)))
	set(roll_spoil_R, roll_sp_R * (1 - get(fail_spoil_out_right)))
	
	set(roll_spoil_L_ph, roll_sp_L * (1 - get(fail_spoil_out_left))/ail_corr)
	set(roll_spoil_R_ph, roll_sp_R * (1 - get(fail_spoil_out_right))/ail_corr)
end


	---------------------------------
	-- spoilers logic --
	local gears = get(deflection_mtr_2) > 0.01 and get(deflection_mtr_3) > 0.01
	local ruds_iddle = get(anim_rud1) < 0.1 and get(anim_rud2) < 0.1 and get(anim_rud3) < 0.1
    
    if gears and get(speedbrake_ratio) > 0.95 then
        if spb_inn < 1 then
            spb_inn=spb_inn + 0.7*passed
        end
    else
        if spb_inn > 0 then
            spb_inn=spb_inn - 0.7*passed
        end
    end
    
    set(spb_inn_anim,spb_inn)
       
	
    if get(kontur_on) > 0 then
        
        local flaps_to = (get(flap_inn_L)+get(flap_inn_R))/2 < 31
        local revers = get(revers_L) > 0.1 and get(revers_R) > 0.1
        if power_27_L and get(gs_press_1) > 50 and gears and ((get(speedbrake_ratio) > 0.95) or revers) and auto_deploy == 0 and auto_deploy_delay == 0 then
            auto_deploy = 1
        end
        if auto_deploy == 1 then
            if flaps_to then
                if (get(speedbrake_ratio) < 0.05 or not ruds_iddle) and not revers then
                    auto_deploy = 0
                end
            else
                if (get(revers_L) > 0.6 and get(revers_R) > 0.6) or not ruds_iddle then
                    auto_deploy = 0
                    auto_deploy_delay = 1
                end
            end
        end  
        if auto_deploy_delay == 1 then
            if not revers then
                auto_deploy_delay = 0
            end
        end
    else
        local revers = get(revers_L) > 0.44 and get(revers_R) > 0.66
        if power_27_L and get(gs_press_1) > 50 and gears and ((get(speedbrake_ratio) > 0.95) or revers) and auto_deploy < 1 then
			auto_deploy = 1
			-- if auto_deploy>1 then
				-- auto_deploy=1
			-- end
        end
        if auto_deploy == 1 and get(speedbrake_ratio) < 0.05 and (get(revers_L) < 0.05 and get(revers_R) < 0.05) then
            auto_deploy = 0
        end
    end
	
	
	---------------------------------
	-- middle spoilers --

	
	local spd_brk_cmd = get(speedbrake_ratio) --  add automatic logic here, controlling the lever itself
	
	local spd_brk_L = spd_brk_cmd * 45 * bool2int(power_27_L)
	local spd_brk_R = spd_brk_cmd * 45 * bool2int(power_27_L)
	if HS1 > 0.15 then
		if (spd_brk_L - left_mid_sp_act)<=0 then
			if math.abs(spd_brk_L - left_mid_sp_act)>1 then
				left_mid_sp_act = left_mid_sp_act - 31.5 * HS1 * passed 
			else
				left_mid_sp_act = left_mid_sp_act +(spd_brk_L - left_mid_sp_act) * HS1 * passed * 31.5
			end
		elseif (spd_brk_L - left_mid_sp_act)>0 then
			if math.abs(spd_brk_L - left_mid_sp_act)>1 then
				left_mid_sp_act = left_mid_sp_act + 31.5* HS1 * passed*math.max(1-get(ias_L)/500*math.min(left_mid_sp_act/20,1),0.7)*1.5
			else
				left_mid_sp_act = left_mid_sp_act + (spd_brk_L - left_mid_sp_act) * HS1 * passed * 31.5*math.max(1-get(ias_L)/500*math.min(left_mid_sp_act/20,1),0.7)*1.5
			end
		end
		if (spd_brk_R - right_mid_sp_act)<=0 then
			if math.abs(spd_brk_R - right_mid_sp_act)>1 then
				right_mid_sp_act = right_mid_sp_act - 31.5 * HS1 * passed
			else
				right_mid_sp_act = right_mid_sp_act +(spd_brk_R - right_mid_sp_act) * HS1 * passed * 31.5
			end
		elseif (spd_brk_R - right_mid_sp_act)>0 then
			if math.abs(spd_brk_R - right_mid_sp_act)>1 then
				right_mid_sp_act = right_mid_sp_act + 31.5 * HS1 * passed*math.max(1-get(ias_L)/500*math.min(right_mid_sp_act/20,1),0.7)*1.5
			else
				right_mid_sp_act = right_mid_sp_act + (spd_brk_R - right_mid_sp_act) * HS1 * passed * 31.5*math.max(1-get(ias_L)/500*math.min(right_mid_sp_act/20,1),0.7)*1.5
			end
		end
	end

if MASTER then	
	set(spd_brk_mid_L, left_mid_sp_act * (1 - get(fail_spoil_mid_left)))
	set(spd_brk_mid_R, right_mid_sp_act * (1 - get(fail_spoil_mid_right)))
end	
	
	---------------------------------
	-- inner spoilers --
	local spoilers_cmd = auto_deploy -- add automatic logic here
	
	local spoil_L = spoilers_cmd * 50 * bool2int(power_27_L)
	local spoil_R = spoilers_cmd * 50 * bool2int(power_27_L)
	--if HS1 > 0.1 then
	-- if spoilers_cmd == 1 then 
		-- left_inn_sp_act = left_inn_sp_act + (spoil_L - left_inn_sp_act) * HS1 * passed * 1
		-- right_inn_sp_act = right_inn_sp_act + (spoil_R - right_inn_sp_act) * HS1 * passed * 1
	-- else
		-- left_inn_sp_act = left_inn_sp_act + (spoil_L - left_inn_sp_act) * HS1 * passed * 0.7
		-- right_inn_sp_act = right_inn_sp_act + (spoil_R - right_inn_sp_act) * HS1 * passed * 0.7
	-- end
	if (spoil_L - left_inn_sp_act)<=0 then
		if math.abs(spoil_L - left_inn_sp_act)>1 then
			left_inn_sp_act = left_inn_sp_act - 30 * HS1 * passed 
		else
			left_inn_sp_act = left_inn_sp_act +(spoil_L - left_inn_sp_act) * HS1 * passed * 30
		end
	elseif (spoil_L - left_inn_sp_act)>0 then
		if math.abs(spoil_L - left_inn_sp_act)>1 then
			left_inn_sp_act = left_inn_sp_act + 30 * HS1 * passed*math.max(1-get(ias_L)/500*math.min(left_inn_sp_act/20,1),0.1)*1.5
		else
			left_inn_sp_act = left_inn_sp_act + (spoil_L - left_inn_sp_act) * HS1 * passed * 30*math.max(1-get(ias_L)/500*math.min(left_inn_sp_act/20,1),0.1)*1.5
		end
	end
	if (spoil_R - right_inn_sp_act)<=0 then
		if math.abs(spoil_R - right_inn_sp_act)>1 then
			right_inn_sp_act = right_inn_sp_act - 30* HS1 * passed
		else
			right_inn_sp_act = right_inn_sp_act +(spoil_R - right_inn_sp_act) * HS1 * passed * 30
		end
	elseif (spoil_R - right_inn_sp_act)>0 then
		if math.abs(spoil_R - right_inn_sp_act)>1 then
			right_inn_sp_act = right_inn_sp_act + 30 * HS1 * passed*math.max(1-get(ias_L)/500*math.max(right_inn_sp_act/20,1),0.1)*1.5
		else
			right_inn_sp_act = right_inn_sp_act + (spoil_R - right_inn_sp_act) * HS1 * passed * 30*math.max(1-get(ias_L)/500*math.min(right_inn_sp_act/20,1),0.1)*1.5
		end
	end
	--end

if MASTER then	
	set(spd_brk_inn_L, left_inn_sp_act * (1 - get(fail_spoil_inn_left)))
	set(spd_brk_inn_R, right_inn_sp_act * (1 - get(fail_spoil_inn_right)))
end
	

	
	-----------------------------------------------------
	-- calculate position of flight controls forcing mech
	
	local force_pos = get(control_force_pos)
	local force_pos_rud = get(control_force_pos_rud) 
	
	-- turn on the forcing
	local forcing_sw = get(contr_force_set)
if MASTER then
	if power_27_L or power_27_R then
		
		-- forcing limit elevator
		if (forcing_sw == 0 and get(flap_inn_L) < 7 and get(flap_inn_R) < 7) or forcing_sw == -1 then 
			force_pos = force_pos + passed * 0.04
			if force_pos < 0.99 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		else
			force_pos = force_pos - passed * 0.04
			
			if force_pos > 0.01 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		end
		
		-- forcing limit rudder
		if (forcing_sw == 0 and ((get(flap_inn_L) < 7 and get(flap_inn_R) < 7) and (get(gear2_deflect) < 0.01 and get(gear3_deflect) < 0.01))) or forcing_sw == -1 then 
			force_pos_rud = force_pos_rud + passed * 0.08
			if force_pos_rud < 0.99 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		else
			force_pos_rud = force_pos_rud - passed * 0.08
			
			if force_pos_rud > 0.01 then
				set(ctr_27_L_cc, 5)
				set(ctr_27_R_cc, 5)
			else
				set(ctr_27_L_cc, 0)
				set(ctr_27_R_cc, 0)
			end
		end
		
	end
	-- set limits
	if force_pos > 1 then force_pos = 1
	elseif force_pos < 0 then force_pos = 0 end
	
	if force_pos_rud > 1 then force_pos_rud = 1
	elseif force_pos_rud < 0 then force_pos_rud = 0 end
	
	set(control_force_pos, force_pos)
	set(control_force_pos_rud, force_pos_rud)
end
	
	--------------------------------
	-- elevator --
	--cockpit_yoke_pitch = pitch_joy*(0.7+0.3*get(nosewheel_turn_sel)) + get(int_pitch_trim)
	cockpit_yoke_pitch = pitch_joy + get(int_pitch_trim)
	if cockpit_yoke_pitch <-0.5517 then
		 cockpit_yoke_pitch =-0.5517
	end
	
	if force_pos>0 and cockpit_yoke_pitch>0.314 and joy_pitch2-pitch_joy_prev>0 then
		pitch_joy = pitch_joy+(joy_pitch2-pitch_joy_prev)*passed*2.5/force_pos*math.max(10*((0.414-cockpit_yoke_pitch)/0.1),5)
	else
		pitch_joy = joy_pitch2
	end
	pitch_joy_prev=pitch_joy
	
	if get(nosewheel_turn_sel)==0 and reduce==1 then
		-- if get(joy_pitch)>0.99 then
			-- if joy_pitch2<1 then
				-- joy_pitch2=joy_pitch2+passed/2
			-- end
		-- elseif get(joy_pitch)<0.99 and joy_pitch2>0.5 then
			-- joy_pitch2=joy_pitch2-passed/2
		-- -- elseif get(joy_pitch)<-0.99 then
			-- -- if joy_pitch2>-1 then
				-- -- joy_pitch2=joy_pitch2-passed/2
			-- -- end
		-- -- elseif get(joy_pitch)>-0.99 and joy_pitch2<-0.5 then
			-- -- joy_pitch2=joy_pitch2+passed/2
		-- else
			-- if math.abs(joy_pitch2*2-get(joy_pitch)-0.15)>0.05 and joy_pitch2>0.5  then
				-- joy_pitch2=joy_pitch2-passed*(joy_pitch2_prev*2-get(joy_pitch))*10
			-- else
				-- joy_pitch2=(get(joy_pitch)+0.15)*0.5
			-- end
		-- end
		joy_pitch2=(interpolate(yoke_tbl, get(joy_pitch))+get(yoke_offset))*0.5
	else
		joy_pitch2=get(joy_pitch)+get(yoke_offset)
	end
	--joy_pitch2_prev=joy_pitch2
	-- overforce the limit mechanism
	-- if pitch_joy > 0.9 and pitch_add < 2 then pitch_add = pitch_add + passed * 0.3 
	-- elseif pitch_joy < -0.9 and pitch_add > -2 then pitch_add = pitch_add - passed * 0.3
	-- elseif math.abs(pitch_joy) < 0.9 then pitch_add = 0 end
	
	-- -- limit joy pitch by forcing
	-- if pitch_joy > (1 - force_pos * 0.5) then pitch_joy = (1 - force_pos * 0.5)
	-- elseif pitch_joy < -(1 - force_pos * 0.4) then pitch_joy = -(1 - force_pos * 0.4) end
	
	
	
	
	
	
	if cockpit_yoke_pitch > 1 then cockpit_yoke_pitch = 1
	elseif cockpit_yoke_pitch < -1 then cockpit_yoke_pitch = -1 end
	
	pitch_cmd = cockpit_yoke_pitch + get(absu_contr_pitch)
	
	if pitch_cmd > 1 then pitch_cmd = 1
	elseif pitch_cmd < -1 then pitch_cmd = -1 end
	
	--if HS1 > 0.01 or HS2 > 0.01 or HS3 > 0.01 then
	pitch_pos_act = pitch_pos_act + (pitch_cmd - pitch_pos_act) * math.max(HS1 * buster_1_ON, HS2 * buster_2_ON, HS3 * buster_3_ON) * passed * (7-get(ias_L)*0.002)
	--end
	local stab_pos = get(stab_ratio)
	-- elevator effectiveness as a function of stab AoA (XP apparently doesn't model this correctly)
	
	local stab_aoa=get(ua)-(stab_pos*5.5+1.5)
	if pitch_pos_act<0 then
		stab_aoa=-stab_aoa
	end
	elev_coef = -0.04408*stab_aoa + 0.6595
	if elev_coef>1 then
		elev_coef=1
	elseif elev_coef<0.45 then
		elev_coef=0.45
	end
	elev_coef=elev_coef*interpolate(stab_stall_tbl,get(ua))-- reduce effectiveness with stalling stab
	local elev_left = 0 
	local elev_right = 0 
	local elev_left_c = 0 
	local elev_right_c = 0 
	
	
	elev_left = -pitch_pos_act * 29 
	elev_right = -pitch_pos_act * 29
	if elev_left>16-stab_pos*1.5 then
		elev_left = 16-stab_pos*1.5 
	end
	if elev_right>16-stab_pos*1.5 then
		elev_right = 16-stab_pos*1.5 
	end
	--elevator stalls above 22° NU
	if elev_left< -22 then
		elev_left_aero=interpolate(elev_stall_tbl,elev_left)
	else
		elev_left_aero=elev_left
	end
	if elev_right< -22 then
		elev_right_aero=interpolate(elev_stall_tbl,elev_right)
	else
		elev_right_aero=elev_right
	end
	-- calculate correction for elevator
	
	-- if mach < 1 then elev_coef = interpolate(mach_tbl, mach)
	-- else elev_coef = 0.1 end

	
if MASTER then	
	-- set results
	set(elev_L_ph,elev_left* (1 - get(elev_fail_left)))
	set(elev_R_ph,elev_right* (1 - get(elev_fail_right)))
	set(elevator_L, elev_left_aero * elev_coef * (1 - get(elev_fail_left)))
	set(elevator_R, elev_right_aero * elev_coef * (1 - get(elev_fail_right)))
end	
	
	--print(get(elevator_L), "   = get(elevator_R))
	
	-------------------------------------
	-- rudder -- 
	local yaw_joy = get(joy_yaw)
	
	local cockpit_yoke_yaw = yaw_joy + get(int_yaw_trim)-- + yaw_add
	
	if cockpit_yoke_yaw > (1 - force_pos_rud * 0.6) then cockpit_yoke_yaw = (1 - force_pos_rud * 0.6)
	elseif cockpit_yoke_yaw < -(1 - force_pos_rud * 0.6) then cockpit_yoke_yaw = -(1 - force_pos_rud * 0.6) end	
	
	
	-- overforce yaw limit mechanism
	if yaw_joy > 0.9 and yaw_add < 2 then yaw_add = yaw_add + passed * 0.3
	elseif yaw_joy < -0.9 and yaw_add > -2 then yaw_add = yaw_add - passed * 0.3
	elseif math.abs(yaw_joy) < 0.9 then yaw_add = 0 end
	
	cockpit_yoke_yaw = cockpit_yoke_yaw + yaw_add
	
	if cockpit_yoke_yaw > 1 then cockpit_yoke_yaw = 1
	elseif cockpit_yoke_yaw < -1 then cockpit_yoke_yaw = -1 end
	
	
	
	local rud_cmd = -cockpit_yoke_yaw - get(absu_contr_yaw)
	
	
	
	if rud_cmd > 1 then rud_cmd = 1
	elseif rud_cmd < -1 then rud_cmd = -1 end

	
	--if HS1 > 0.01 or HS2 > 0.01 or HS3 > 0.01 then
	yaw_pos_act = yaw_pos_act + (rud_cmd - yaw_pos_act) * math.max(HS1 * buster_1_ON, HS2 * buster_2_ON, HS3 * buster_3_ON) * passed * 10
	--end
	
	local rudder_pos = yaw_pos_act * 25-- * line(mach, 0, 1, 0.8, 0.5) -- can add failures here

	-- rudder --
	local rudder_L = 1 - math.max(get(revers_flap_L) - 0.5, 0) * get(rpm_high_1) * 0.015
	local rudder_R = 1 - math.max(get(revers_flap_R) - 0.5, 0) * get(rpm_high_3) * 0.015

	if MASTER then	
		set(rudder, rudder_pos * ((rudder_L + rudder_R)) * (1 - get(rudder_fail))/2*get(rud_coeff))

		
		-------------------------------------
		-- set animations
		set(spd_brk_inn_anim_L, left_inn_sp_act * (1 - get(fail_spoil_inn_left)))
		set(spd_brk_inn_anim_R, right_inn_sp_act * (1 - get(fail_spoil_inn_right)))
		
		set(yoke_pitch, cockpit_yoke_pitch)
		set(yoke_roll, cockpit_yoke_roll)
		set(pedals_turn, cockpit_yoke_yaw)
		
		set(spoilers_lever, spd_brk_cmd)
		set(elev_coeff,elev_coef)
	end	


end




function onModuleDone()
	set(overr, 0)
	print("flight controls released")
end







