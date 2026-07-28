-- createGlobalPropertyf("sim/custom/controlls/absu_debug1", 0)
-- createGlobalPropertyf("sim/custom/controlls/absu_debug2", 0)
-- createGlobalPropertyf("sim/custom/controlls/absu_debug3", 0)
-- defineProperty("absu_debug1", globalPropertyf("tu154b2/custom/controlls/absu_debug1")) 
-- defineProperty("absu_debug2", globalPropertyf("tu154b2/custom/controlls/absu_debug2")) 
-- defineProperty("absu_debug3", globalPropertyf("tu154b2/custom/controlls/absu_debug3")) 

-- this is hydraulic logic
-- controls
defineProperty("accum_fill", globalPropertyi("tu154b2/custom/buttons/hydro/accum_fill")) -- зарядка аккумулятора

defineProperty("connect2to1", globalPropertyi("tu154b2/custom/switchers/hydro/connect2to1")) -- подключение 2 ГС на 1 ГС
defineProperty("pump_2", globalPropertyi("tu154b2/custom/switchers/hydro/pump_2")) -- включение НС 2
defineProperty("pump_3", globalPropertyi("tu154b2/custom/switchers/hydro/pump_3")) -- включение НС3

-- sources
defineProperty("rpm_high_1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- обороты турбины высокого давления №1
defineProperty("rpm_high_2", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- обороты турбины высокого давления №2
defineProperty("rpm_high_3", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- обороты турбины высокого давления №3

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

-- results
defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154b2/custom/hydro/gs_press_4")) -- давление в ГС4

defineProperty("bak_qty_1", globalPropertyf("tu154b2/custom/hydro/gs_bak_qty_1")) -- остаток масла в баке
defineProperty("bak_qty_2", globalPropertyf("tu154b2/custom/hydro/gs_bak_qty_2")) -- остаток масла в баке
defineProperty("bak_qty_3", globalPropertyf("tu154b2/custom/hydro/gs_bak_qty_3")) -- остаток масла в баке


defineProperty("system_qty_1", globalPropertyf("tu154b2/custom/hydro/gs_qty_1")) -- остаток масла в системе
defineProperty("system_qty_2", globalPropertyf("tu154b2/custom/hydro/gs_qty_2")) -- остаток масла в системе
defineProperty("system_qty_3", globalPropertyf("tu154b2/custom/hydro/gs_qty_3")) -- остаток масла в системе


defineProperty("gs_qty_12_show", globalPropertyf("tu154b2/custom/hydro/gs_qty_12_show")) -- остаток масла в гидробаке
defineProperty("gs_qty_3_show", globalPropertyf("tu154b2/custom/hydro/gs_qty_3_show")) -- остаток масла в гидробаке


-- failures
defineProperty("hs_leak_1", globalPropertyi("tu154b2/custom/failures/hydro_leak_1")) -- leak
defineProperty("hs_leak_2", globalPropertyi("tu154b2/custom/failures/hydro_leak_2")) -- leak
defineProperty("hs_leak_3", globalPropertyi("tu154b2/custom/failures/hydro_leak_3")) -- leak
defineProperty("hs_leak_4", globalPropertyi("tu154b2/custom/failures/hydro_leak_4")) -- leak

defineProperty("hydro_pump_fail_11", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_11")) -- fail
defineProperty("hydro_pump_fail_12", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_12")) -- fail
defineProperty("hydro_pump_fail_2", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_2")) -- fail
defineProperty("hydro_pump_fail_3", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_3")) -- fail

defineProperty("hydro_elec_fail_2", globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_2")) -- fail
defineProperty("hydro_elec_fail_3", globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_3")) -- fail



-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

-- users --

-- flaps
-- defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
-- defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

-- brakes
defineProperty("l_brake_add", globalPropertyf("tu154b2/custom/brakes/int_brakes_L")) -- реальное положение тормоза
defineProperty("r_brake_add", globalPropertyf("tu154b2/custom/brakes/int_brakes_R")) -- реальное положение тормоза

defineProperty("parkbrake", globalPropertyf("sim/flightmodel/controls/parkbrake")) -- Parking Brake

defineProperty("brake_emerg", globalPropertyf("tu154b2/custom/controlls/brake_emerg")) -- аварийный тормоз
defineProperty("brake_emerg_L", globalPropertyf("tu154b2/custom/controlls/brake_emerg_L")) -- аварийный тормоз
defineProperty("brake_emerg_R", globalPropertyf("tu154b2/custom/controlls/brake_emerg_R")) -- аварийный тормоз

-- absu
defineProperty("absu_contr_pitch", globalPropertyf("tu154b2/custom/absu/contr_pitch")) -- отклонение штока РА56 по тангажу
defineProperty("absu_contr_roll", globalPropertyf("tu154b2/custom/absu/contr_roll")) -- отклонение штока РА56 по крену
defineProperty("absu_contr_yaw", globalPropertyf("tu154b2/custom/absu/contr_yaw")) -- отклонение штока РА56 по направлению

-- defineProperty("absu_ra1_roll_fail", globalPropertyi("sim/custom/failures/absu_ra1_roll_fail"))
-- defineProperty("absu_ra2_roll_fail", globalPropertyi("sim/custom/failures/absu_ra2_roll_fail"))
-- defineProperty("absu_ra3_roll_fail", globalPropertyi("sim/custom/failures/absu_ra3_roll_fail"))

-- defineProperty("absu_ra1_pitch_fail", globalPropertyi("sim/custom/failures/absu_ra1_pitch_fail"))
-- defineProperty("absu_ra2_pitch_fail", globalPropertyi("sim/custom/failures/absu_ra2_pitch_fail"))
-- defineProperty("absu_ra3_pitch_fail", globalPropertyi("sim/custom/failures/absu_ra3_pitch_fail"))

-- defineProperty("absu_ra1_yaw_fail", globalPropertyi("sim/custom/failures/absu_ra1_yaw_fail"))
-- defineProperty("absu_ra2_yaw_fail", globalPropertyi("sim/custom/failures/absu_ra2_yaw_fail"))
-- defineProperty("absu_ra3_yaw_fail", globalPropertyi("sim/custom/failures/absu_ra3_yaw_fail"))


-- ailerons
defineProperty("ail_L", globalPropertyf("tu154b2/custom/controlls/ail_L_phys")) -- aileron left Degrees, positive is trailing-edge down. +- 20
defineProperty("ail_R", globalPropertyf("tu154b2/custom/controlls/ail_R_phys")) -- aileron right Degrees, positive is trailing-edge down. +- 20

-- spoilers
defineProperty("spd_brk_inn_L", globalProperty("sim/flightmodel2/wing/speedbrake1_deg[0]")) -- inner speedbrake left Degrees
defineProperty("spd_brk_inn_R", globalProperty("sim/flightmodel2/wing/speedbrake1_deg[1]")) -- inner speedbrake right Degrees

defineProperty("spd_brk_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_spo2def")) -- middle speedbrake left Degrees
defineProperty("spd_brk_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_spo2def")) -- middle speedbrake right Degrees

-- tail
defineProperty("elevator_L", globalPropertyf("sim/flightmodel/controls/hstab1_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("elevator_R", globalPropertyf("sim/flightmodel/controls/hstab2_elv1def")) -- Degrees, positive is trailing-edge down.
defineProperty("rudder", globalPropertyf("sim/flightmodel/controls/vstab2_rud1def")) -- degrees, positive is trailing-edge left

-- gear
defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

defineProperty("gears_retr_lock", globalPropertyi("tu154b2/custom/switchers/gears_retr_lock")) -- блокировка уборки шасси
defineProperty("gears_ext_3GS", globalPropertyi("tu154b2/custom/switchers/gears_ext_3GS")) -- выпуск шасси от 3ГС
defineProperty("emerg_gear_ext", globalPropertyi("tu154b2/custom/controll/emerg_gear_ext")) -- ручка аварийного выпуска шасси
defineProperty("gear_lever", globalPropertyi("tu154b2/custom/controll/gear_lever")) -- ручка выпуска шасси. -1 - уборка, 0 - нейтр, +1 - выпуск

defineProperty("nws", globalProperty("sim/flightmodel/parts/tire_steer_act[0]")) 
defineProperty("elevon_L", globalPropertyf("tu154b2/custom/controlls/spoil_L_phys"))
defineProperty("elevon_R", globalPropertyf("tu154b2/custom/controlls/spoil_R_phys"))





-- busters
buster_on_1 = globalPropertyi("tu154b2/custom/switchers/console/buster_on_1") -- выключатель бустера
buster_on_2 = globalPropertyi("tu154b2/custom/switchers/console/buster_on_2") -- выключатель бустера
buster_on_3 = globalPropertyi("tu154b2/custom/switchers/console/buster_on_3") -- выключатель бустера

-- currents
gs_pump_2_cc = globalPropertyf("tu154b2/custom/hydro/gs_pump_2_cc") -- ток насосной станции
gs_pump_3_cc = globalPropertyf("tu154b2/custom/hydro/gs_pump_3_cc") -- ток насосной станции

hod1_p = globalPropertyf("tu154b2/custom/absu/d_ra1_p")
hod2_p = globalPropertyf("tu154b2/custom/absu/d_ra2_p")
hod3_p = globalPropertyf("tu154b2/custom/absu/d_ra3_p")

hod1_r = globalPropertyf("tu154b2/custom/absu/d_ra1_r")
hod2_r = globalPropertyf("tu154b2/custom/absu/d_ra2_r")
hod3_r = globalPropertyf("tu154b2/custom/absu/d_ra3_r")

hod1_y = globalPropertyf("tu154b2/custom/absu/d_ra1_y")
hod2_y = globalPropertyf("tu154b2/custom/absu/d_ra2_y")
hod3_y = globalPropertyf("tu154b2/custom/absu/d_ra3_y")

nosewheel_power = globalPropertyi("tu154b2/custom/hydro/nosewheel_turn_power")

fluid_1 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_1")
fluid_2 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_2")
fluid_3 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_3")
--pushback = globalPropertyi("bp/connected")



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control
defineProperty("elev_coeff", globalPropertyf("tu154b2/custom/controlls/elev_coeff"))
defineProperty("rud_coeff", globalPropertyf("tu154b2/custom/controlls/rudder_coeff"))

gear2_deflect = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")
kontur_90th = globalPropertyi("sim/custom/b2/kontur_90th")

flap_drive_1 = globalPropertyi("tu154b2/custom/controlls/flap_chan_1")
flap_drive_2 = globalPropertyi("tu154b2/custom/controlls/flap_chan_2")

tas = globalPropertyf("sim/flightmodel/position/true_airspeed")
cabin_2_temp = globalPropertyf("tu154b2/custom/bleed/cabin_2_temp") 
temp_out = globalPropertyf("sim/weather/aircraft/temperature_leadingedge_deg_c")
rear_tech_T = globalPropertyf("tu154b2/custom/bleed/rear_tech_temp")

save_state = globalPropertyi("tu154b2/custom/save_state")

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))


-- set initial values
set(system_qty_1, 103)
set(system_qty_2, 103)
set(system_qty_3, 45)

set(gs_press_1, 0)
set(gs_press_2, 0)
set(gs_press_3, 0)
set(gs_press_4, 0)









--[[
при выпущенном шасси, убраны закрылки, разряжены ГА, включен тормоз
первый бак 48 +-1
второй бак 24 +-1

расход масла на шасси: по 17 литров на основные стойки. 8 литров на переднюю.


--]]

local acc_1 = 0
local acc_2 = 0
local acc_3 = 0
local acc_4 = 0

local sys_qty_1 = 103
local sys_qty_2 = 103
local sys_qty_3 = 45

-- oil temperature params
local temp_bar1_prev=get(temp_out)
local temp_bar2_prev=temp_bar1_prev
local c_oil = 1.9
local c_W = 10
local A_bar = 0.94

local hs1_qty = sys_qty_1 - 79 - acc_1 - acc_4 -- quantity of oil
local hs2_qty = sys_qty_2 - 79 - acc_2 -- quantity of oil
local hs3_qty = sys_qty_3 - 21 - acc_3 -- quantity of oil

local notLoaded = true
local sim_start_timer = 0

local function reset_switchers()
	hs1_qty = hs1_qty + (get(temp_out) - 20) / 20
	hs2_qty = hs2_qty + (get(temp_out) - 20) / 20
	hs3_qty = hs3_qty + (get(temp_out) - 20) / 20
	temp_bar1_prev = get(temp_out)
	temp_bar2_prev = temp_bar1_prev
	if get(eng1_N1) > 25 then
		acc_4 = 3.9
		hs1_qty = hs1_qty - 3.9
		-- acc_1 = 0
		-- acc_2 = 0
		-- acc_3 = 0
		-- acc_4 = 0
		-- hs1_qty = sys_qty_1 - 79  -- quantity of oil
		-- hs2_qty = sys_qty_2 - 79   -- quantity of oil
		-- hs3_qty = sys_qty_3 - 21  -- quantity of oil
		-- set(gs_press_1, 0)
		-- set(gs_press_2, 0)
		-- set(gs_press_3, 0)
		-- set(gs_press_4, 0)
		
	end
	notLoaded = false
end


local function acc_press (V,V_th)
	local p0 = 85*100000
	local V0 = 0.0083
	local k = 1.4
	local press = p0/V_th*V
	if V > V_th then
		press = p0*math.pow(V0/(V0-V),k);
	end
	return press / 100000
end

local function acc_vol (press,V_th)
	local p0 = 85*100000
	local V0 = 0.0083
	local k = 1.4
	local V = V_th / p0 * press
	if press > p0 then
		V = - (V0 / (math.pow(press/p0,1/k)) - V0);
	end
	return V * 1000
end

function NP89(rpm,press)
	local F = 55/60*rpm/92
	local F_bp = 0.0214 * press / 60 * math.min(F / 4.5 * 60,1)
	if press>203 then
		F=(4.5+50.5/7*(210-press))/60*rpm/92
	end
	F = F - F_bp
	
	if F < 0 then
		F = 0
	end
	return F,F_bp
end

function NS46(power,press)
	local F = 24/60*power
	local F_bp = 0.0214 * press / 60 * math.min(F / 4.5 * 60,1)
	if press>203 then
		F=(4.5+19.5/7*(210-press))/60*power
	end	
	F = F - F_bp
	if F < 0 then
		F = 0
	end
	local W = (F + F_bp)* press * 100000 / 1000
	return F,F_bp,W
end


-- local engine_pumps_t = { 
-- {  -10000, 0.2},
-- {  3.7, 0.15 },    
-- {  4, 0.07 }, 
-- {  4.06, 0.07 },   
-- {  4.2, 0 },
-- {  1000, 0 }}  

-- local electric_pumps_t = { 
-- {  -10000, 0.35},
-- {  0, 0.35},    
-- {  2.5, 0.35 },    
-- {  3.8, 0.35 },    
-- {  4.15, 0.2 },
-- {  4.21, 0 },
-- {  1000, 0 }} 

-- local bypass_t = { 
-- {  -10000, 0},
-- {  0, 0},    
-- {  205, 0 },    
-- {  210, 1 },    
-- {  1000, 1 }} 

local cool_t = { 
{  -10000, 60},
{  0, 60},
{  100, 120},    
{  1000, 120 }} 

local brakes_L_last = get(l_brake_add)
local brakes_R_last = get(r_brake_add)
--local brakes_last = get(parkbrake)
local nws_last=get(nws)
--local push=get(pushback)

local brakes_EM_L_last = get(brake_emerg_L)
local brakes_EM_R_last = get(brake_emerg_R)
local brakes_EM_last = get(brake_emerg)

-- local flap_L_last = get(flap_inn_L)
-- local flap_R_last = get(flap_inn_R)

local ail_L_last = get(ail_L)
local ail_R_last = get(ail_R)

local spd_brk_inn_L_last = get(spd_brk_inn_L)
local spd_brk_inn_R_last = get(spd_brk_inn_R)
local spd_brk_mid_L_last = get(spd_brk_mid_L)
local spd_brk_mid_R_last = get(spd_brk_mid_R)
local elev_L_last = get(elevator_L)
local elev_R_last = get(elevator_R)

local rudder_last = get(rudder)

local buster_1_ON = 0
local buster_2_ON = 0
local buster_3_ON = 0

local absu_pitch_last = get(absu_contr_pitch)
local absu_roll_last = get(absu_contr_roll)
local absu_yaw_last = get(absu_contr_yaw)

local gear_pos_1_last = get(gear1_deploy)
local gear_pos_2_last = get(gear2_deploy)
local gear_pos_3_last = get(gear3_deploy)

local elec_pump_2_start=0
local elec_pump_2_prev=0
local elec_pump_3_start=0
local elec_pump_3_prev=0
local elevon_L_last=get(elevon_L)
local elevon_R_last=get(elevon_R)
local elec_pump_2_start_timer=0
local elec_pump_3_start_timer=0
local base_feed=0.055 --Base Hydraulic power consumption (elevator)

local hs_connect = 0


function update()

	passed = get(frame_time)

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	
	-- reset some variables for cold start
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 10 then 
		if notLoaded then reset_switchers() end
	end
	
	if get(save_state) == 1 then
		hs1_qty = sys_data_tbl.hyd_1_qty - acc_1 - acc_4
		hs2_qty = sys_data_tbl.hyd_2_qty - acc_2 
		hs3_qty = sys_data_tbl.hyd_3_qty - acc_3
		temp_bar1_prev = sys_data_tbl.hyd_1_temp
		temp_bar2_prev = sys_data_tbl.hyd_2_temp
	-- else
		-- sys_data_tbl.hyd_1_qty = hs1_qty + acc_1 + acc_4
		-- sys_data_tbl.hyd_2_qty = hs2_qty + acc_2
		-- sys_data_tbl.hyd_3_qty = hs3_qty + acc_3
	end
	
	local gear1_fluid=get(fluid_1)
	local gear2_fluid=get(fluid_2)
	local gear3_fluid=get(fluid_3)
	
	-- calculate oil amount
	-- local sys_qty_1 = get(system_qty_1)
	-- local sys_qty_2 = get(system_qty_2)
	-- local sys_qty_3 = get(system_qty_3)
	
	-- calculate amount of oil in accums
	-- local acc_1 = acc_vol(get(gs_press_1)*100000,0.0005)--get(gs_press_1) * 0.02
	-- local acc_2 = acc_vol(get(gs_press_2)*100000,0.0005)--get(gs_press_2) * 0.02
	-- local acc_3 = get(gs_press_3) * 0.02
	-- local acc_4 = get(gs_press_4) * 0.02
	
	local press_1 = get(gs_press_1)
	local press_2 = get(gs_press_2)
	local press_3 = get(gs_press_3)
	local press_4 = get(gs_press_4)
	-- calculate amount in barrels. barrel = whole system - pipes - accums
	-- local hs1_qty = sys_qty_1 - 34 - acc_1 - acc_4 -- quantity of oil
	-- local hs2_qty = sys_qty_2 - 34 - acc_2  -- quantity of oil
	-- local hs3_qty = sys_qty_3 - 21 - acc_3 -- quantity of oil
	
	-- limit zero amount in barrels
	if hs1_qty < 0 then hs1_qty = 0 end
	if hs2_qty < 0 then hs2_qty = 0 end
	if hs3_qty < 0 then hs3_qty = 0 end
	
	
	-- cross-feed in bak 1 and bak 2
	if (hs1_qty > 12 or hs2_qty > 12) and math.abs(hs1_qty - hs2_qty) > 0.001 then
		local flow = (hs2_qty - hs1_qty) * passed * 5
		
		hs1_qty = hs1_qty + flow
		hs2_qty = hs2_qty - flow
	end
	
	
	-- check power
	local power27L = get(bus27_volt_left) > 13
	local power27R = get(bus27_volt_right) > 13
	
	local power115_1 = get(bus115_1_volt) > 100
	local power115_3 = get(bus115_3_volt) > 100


	
	-- gain pressure from engine pumps
	local RPM_1 = get(rpm_high_1)
	local RPM_2 = get(rpm_high_2)
	local RPM_3 = get(rpm_high_3)
    -- local c_eng1=7.777777777778315e-05*RPM_1*RPM_1+0.004111111111111*RPM_1*1.2;
    -- local c_eng2=7.777777777778315e-05*RPM_2*RPM_2+0.004111111111111*RPM_2*1.2;
    -- local c_eng3=7.777777777778315e-05*RPM_3*RPM_3+0.004111111111111*RPM_3*1.2;
	-- local eng_k1=math.min(7,9.235209235209163e-04*RPM_1*RPM_1-0.005339105339105*RPM_1)
	-- local eng_k2=math.min(7,9.235209235209163e-04*RPM_2*RPM_2-0.005339105339105*RPM_2)
	-- local eng_k3=math.min(7,9.235209235209163e-04*RPM_3*RPM_3-0.005339105339105*RPM_3)
	local eng_pump_1_1, eng_pump_1_1_bp = NP89(RPM_1*(1 - get(hydro_pump_fail_11)),press_1) --math.max((-3.3/(1+math.exp(-eng_k1*(acc_1-4.2)))+1.64)*c_eng1* (1 - get(hydro_pump_fail_11)),0)
	local eng_pump_1_2, eng_pump_1_2_bp = NP89(RPM_2*(1 - get(hydro_pump_fail_12)),press_1) --math.max((-3.3/(1+math.exp(-eng_k2*(acc_1-4.2)))+1.64)*c_eng2* (1 - get(hydro_pump_fail_12)),0)
	local eng_pump_2, eng_pump_2_bp = NP89(RPM_2*(1 - get(hydro_pump_fail_2)),press_2) --math.max((-3.3/(1+math.exp(-eng_k2*(acc_2-4.2)))+1.64)*c_eng2* (1 - get(hydro_pump_fail_2)),0)
	local eng_pump_3, eng_pump_3_bp = NP89(RPM_3*(1 - get(hydro_pump_fail_3)),press_3) --math.max((-3.3/(1+math.exp(-eng_k3*(acc_3-4.2)))+1.64)*c_eng3* (1 - get(hydro_pump_fail_3)),0)
	local elec_pump_2 = bool2int(power115_1 and power27R and get(pump_2) == 1 and get(hydro_elec_fail_2) == 0)
	local elec_pump_3 = bool2int(power115_3 and power27R and get(pump_3) == 1 and get(hydro_elec_fail_3) == 0)
	local el_pump_2,ns1_bp,W_el_1 = NS46(elec_pump_2 * elec_pump_2_start_timer,press_2)
	local el_pump_3,ns2_bp,W_el_2 = NS46(elec_pump_3 * elec_pump_3_start_timer,press_3)
-- 41 93
	-- pump oil from storage to accums
	if hs1_qty > 0.1 then 
		local flow = (eng_pump_1_1 + eng_pump_1_2) * passed
		acc_1 = acc_1 + flow
		hs1_qty = hs1_qty - flow
	else
		eng_pump_1_1_bp = 0
		eng_pump_1_2_bp = 0
	end	

	if hs2_qty > 0.1 then 
		local flow = eng_pump_2 * passed
		acc_2 = acc_2 + flow 
		hs2_qty = hs2_qty - flow
	else
		eng_pump_2_bp = 0
	end

	if hs3_qty > 0.1 then 
		local flow = eng_pump_3 * passed
		acc_3 = acc_3 + flow
		hs3_qty = hs3_qty - flow
	else
		eng_pump_3_bp = 0
	end	

	-- gain pressure from electrical pumps
	
	if hs2_qty > 0.1 then 
		local flow = el_pump_2 * passed --elec_pump_2 * (20/60 - 20/60 * interpolate(bypass_t,get(gs_press_2))) * passed * elec_pump_2_start_timer --*(0.7275*math.pow(acc_2 * 0.5,2)-2.956*(acc_2 * 0.5)+4)
		acc_2 = acc_2 + flow
		hs2_qty = hs2_qty - flow
	else
		ns1_bp = 0
	end
	if hs3_qty > 0.1 then 
		local flow = el_pump_3 * passed --elec_pump_3 * (20/60 - 20/60 * interpolate(bypass_t,get(gs_press_3))) * passed  * elec_pump_3_start_timer --*(0.7275*math.pow(acc_3 * 0.5,2)-2.956*(acc_3 * 0.5)+4)
		acc_3 = acc_3 + flow
		hs3_qty = hs3_qty - flow
	else
		ns2_bp = 0
	end
	

	-- charge the accumulator for emergency brakes
	if get(accum_fill) == 1 and acc_4 < acc_1 and power27R then
		local flow = (acc_1 - acc_4) * 10
		if flow * passed > acc_1 - acc_4 then
			flow = (acc_1 - acc_4)/passed
		elseif flow > 2 then
			flow = 2 
		end
		
		acc_1 = acc_1 - flow * passed
		acc_4 = acc_4 + flow * passed
	end

	-- connect HS 1 and HS2
	if get(connect2to1) == 1 and power27R and (get(gear2_deflect) > 0.06 or get(kontur_90th) == 0) then
		hs_connect = 1
	elseif get(connect2to1) == 0 and power27R then
		hs_connect = 0
	end
	
	if hs_connect == 1 and acc_2 > acc_1 then
		local flow = (acc_2 - acc_1) * 10
		if flow * passed > acc_2 - acc_1 then
			flow = (acc_2 - acc_1)/passed
		elseif flow > 2 then
			flow = 2 
		end
		
		acc_1 = acc_1 + flow * passed
		acc_2 = acc_2 - flow * passed
	end

	




	
	
	
	-- internal leak
	-- HS1 leaks down to 120 (2.4) for one hour
	-- HS2 leaks down to 130 (2.6) for one hour
	-- HS3 leaks down to 190 (3.8) for one hour
	-- HS4 leaks down to 190 (3.8) for one hour
	
	if acc_1 > 0.1 then
		local flow = passed * acc_1 * 0.00008
		acc_1 = acc_1 - flow
		hs1_qty = hs1_qty + flow
	end

	if acc_2 > 0.1 then
		local flow = passed * acc_2 * 0.000074
		acc_2 = acc_2 - flow
		hs2_qty = hs2_qty + flow
	end	
	
	if acc_3 > 0.1 then
		local flow = passed * acc_3 * 0.000014
		acc_3 = acc_3 - flow
		hs3_qty = hs3_qty + flow
	end	
	
	if acc_4 > 0.1 then
		local flow = passed * acc_4 * 0.000014
		acc_4 = acc_4 - flow
		hs1_qty = hs1_qty + flow
	end		



	
	-- check leak failure
	local high_leak_1 = get(hs_leak_1)
	local high_leak_2 = get(hs_leak_2)
	local high_leak_3 = get(hs_leak_3)
	local high_leak_4 = get(hs_leak_4)
	
	acc_1 = acc_1 - high_leak_1 * math.max(0,acc_1) * passed * 0.05
	acc_2 = acc_2 - high_leak_2 * math.max(0,acc_2) * passed * 0.05
	acc_3 = acc_3 - high_leak_3 * math.max(0,acc_3) * passed * 0.05
	acc_4 = acc_4 - high_leak_4 * math.max(0,acc_4) * passed * 0.05
	
	if acc_1 < 0 then
		acc_1 = 0
	end
	if acc_2 < 0 then
		acc_2 = 0
	end
	if acc_3 < 0 then
		acc_3 = 0
	end
	if acc_4 < 0 then
		acc_4 = 0
	end
	-- для каждого потребителя давления нужно прописывать перекачку масла из аккумуляторов обратно в баки
	-- кроме утечек :)
	
	-- brakes --
	-- takes 0.04 l for full brake for each gear
	local brakes_L = get(l_brake_add)
	local brakes_R = get(r_brake_add)
	--local brakes = get(parkbrake)
	
	local main_brakes_feed = (math.max(brakes_L - brakes_L_last, 0) + math.max(brakes_R - brakes_R_last, 0)) * 0.07
	local nws_feed=math.abs(get(nws)-nws_last)*0.004*get(nosewheel_power)
	nws_last=get(nws)
	
	brakes_L_last = brakes_L
	brakes_R_last = brakes_R
	--brakes_last = brakes
	
	if acc_1 > 0 and main_brakes_feed > 0 then 
		acc_1 = acc_1 - main_brakes_feed -- take oil from HS1
		hs1_qty = hs1_qty + main_brakes_feed -- return it to barrel
	end
	
	if acc_2 > 0 and nws_feed > 0 then 
		acc_2 = acc_2 - nws_feed -- take oil from HS1
		hs2_qty = hs2_qty + nws_feed -- return it to barrel
	end
	
	-- emergency brakes
	local brakes_EM_L = get(brake_emerg_L)
	local brakes_EM_R = get(brake_emerg_R)
	local brakes_EM = get(brake_emerg)
	
	--local EM_brakes_feed = (brakes_EM_L - brakes_EM_L_last + brakes_EM_R - brakes_EM_R_last + brakes_EM - brakes_EM_last) * 0.04 * passed
	local EM_brakes_feed = (brakes_EM - brakes_EM_last) * 0.14
	
	brakes_EM_L_last = brakes_EM_L
	brakes_EM_R_last = brakes_EM_R
	brakes_EM_last = brakes_EM
	
	if acc_4 > 0 and EM_brakes_feed > 0 then 
		acc_4 = acc_4 - EM_brakes_feed -- take oil from HS4
		hs1_qty = hs1_qty + EM_brakes_feed -- return it to barrel
	end	
	
	
	
	
	------
	-- flaps
	-- local flap_L_now = get(flap_inn_L)
	-- local flap_R_now = get(flap_inn_R)	
	
	local flaps_feed_1 = 0.3172 * get(flap_drive_1) * passed * bool2int(press_1 > 40 )
	local flaps_feed_2 = 0.3172 * get(flap_drive_2) * passed * bool2int(press_2 > 40 )
	
	-- flap_L_last = flap_L_now
	-- flap_R_last = flap_R_now
	

	-- flight controls
	-- set busters work status
	if power27L then
		buster_1_ON = get(buster_on_1)
		buster_2_ON = get(buster_on_2)
	end
	
	if power27R then
		buster_3_ON = get(buster_on_3)
	end



	local ail_L_now = get(ail_L)/20
	local ail_R_now = get(ail_R)/20

	local spd_brk_inn_L_now = get(spd_brk_inn_L)/50
	local spd_brk_inn_R_now = get(spd_brk_inn_R)/50
	
	local spd_brk_mid_L_now = get(spd_brk_mid_L)/45
	local spd_brk_mid_R_now = get(spd_brk_mid_R)/45
	
	local elevon_L_now=get(elevon_L)/45
	local elevon_R_now=get(elevon_R)/45

	local elev_L_now = get(elevator_L)/get(elev_coeff)/22.5 
	local elev_R_now = get(elevator_R)/get(elev_coeff)/22.5

	local rudder_now = get(rudder)/(25*get(rud_coeff))
	
	-- local ailerons_feed = (math.abs(ail_L_now - ail_L_last) + math.abs(ail_R_now - ail_R_last)) * 0.05 * 0.027*0.75
	
	-- local elev_feed = math.abs(elev_now/get(elev_coeff) - elev_last/get(elev_coeff)) * 0.05 * 0.07*0.75
	
	-- local rudder_feed = math.abs(rudder_now - rudder_last) * 0.05 * 0.035*0.75
	
	-- local sbd_brk_inn_feed = math.abs(spd_brk_inn_L_now - spd_brk_inn_L_last + spd_brk_inn_R_now - spd_brk_inn_R_last) * 0.05 * 0.084*0.75
	
	-- local sbd_brk_mid_feed = math.abs(spd_brk_mid_L_now - spd_brk_mid_L_last + spd_brk_mid_R_now - spd_brk_mid_R_last) * 0.05 * 0.097*0.75
	
	-- local elevon_feed = math.abs(elevon_L_now - elevon_L_last + elevon_R_now - elevon_R_last) * 0.05 * 0.026*0.75
	
	
	local ailerons_feed = (math.abs(ail_L_now - ail_L_last) + math.abs(ail_R_now - ail_R_last)) * base_feed * 0.47
	
	local elev_feed = (math.abs(elev_L_now - elev_L_last) +  math.abs(elev_R_now - elev_R_last)) * base_feed
	
	local rudder_feed = math.abs(rudder_now - rudder_last) * base_feed
	
	local sbd_brk_inn_feed = math.abs(spd_brk_inn_L_now - spd_brk_inn_L_last + spd_brk_inn_R_now - spd_brk_inn_R_last) * base_feed*1.36
	
	if (spd_brk_inn_L_now - spd_brk_inn_L_last + spd_brk_inn_R_now - spd_brk_inn_R_last)<0 then
		sbd_brk_inn_feed = math.abs(spd_brk_inn_L_now - spd_brk_inn_L_last + spd_brk_inn_R_now - spd_brk_inn_R_last) * base_feed*1.02
	end
	
	local sbd_brk_mid_feed = math.abs(spd_brk_mid_L_now - spd_brk_mid_L_last + spd_brk_mid_R_now - spd_brk_mid_R_last) * base_feed*8.31
	
	if (spd_brk_mid_L_now - spd_brk_mid_L_last + spd_brk_mid_R_now - spd_brk_mid_R_last)<0 then
		sbd_brk_mid_feed = math.abs(spd_brk_mid_L_now - spd_brk_mid_L_last + spd_brk_mid_R_now - spd_brk_mid_R_last) * base_feed*5.75
	end
	
	local elevon_feed = math.abs(elevon_L_now - elevon_L_last + elevon_R_now - elevon_R_last) * base_feed*1.28
	if (elevon_L_now - elevon_L_last + elevon_R_now - elevon_R_last)<0 then
		elevon_feed = math.abs(elevon_L_now - elevon_L_last + elevon_R_now - elevon_R_last) * base_feed*0.77
	end
	ail_L_last = ail_L_now
	ail_R_last = ail_R_now
	
	elev_L_last = elev_L_now
	elev_R_last = elev_R_now
	rudder_last = rudder_now
	
	spd_brk_inn_L_last = spd_brk_inn_L_now
	spd_brk_inn_R_last = spd_brk_inn_R_now
	spd_brk_mid_L_last = spd_brk_mid_L_now
	spd_brk_mid_R_last = spd_brk_mid_R_now	
	
	
	elevon_L_last=elevon_L_now
	elevon_R_last=elevon_R_now
	
	-- Hydrailic fluid temperatures
	local t_out = get(temp_out)
	local t_tech = get(rear_tech_T) --rear tech compartment temperature
	-- heat from pressure energy dissipation
	local W_1_hyd = (eng_pump_1_1_bp + eng_pump_1_2_bp) / 1000 * press_1 * 100000
	local W_2_hyd = (eng_pump_2_bp + ns1_bp) / 1000 * press_2 * 100000
	local W_3_hyd = (eng_pump_3_bp + ns2_bp) / 1000 * press_3 * 100000
	-- bypass flow cooling
	local c_cool = interpolate(cool_t,get(tas)) / 2
	local W_1_cool = ((temp_bar1_prev + 13 - t_out) * c_cool * eng_pump_1_1_bp + (temp_bar1_prev + 13 - t_out) * c_cool * eng_pump_1_2_bp + (temp_bar1_prev + 13 - t_out) * c_cool * eng_pump_2_bp  + (temp_bar1_prev + 13 - t_out) * c_cool * ns1_bp) / 0.075
	local W_3_cool = ((temp_bar2_prev + 13 - t_out) * c_cool * eng_pump_3_bp + (temp_bar2_prev + 13 - t_out) * c_cool * ns2_bp) / 0.075
	-- ambient heat/cool
	local W_1_t = c_W * A_bar * (t_tech-temp_bar1_prev)
	local W_3_t = c_W * A_bar*2/3 * (t_tech-temp_bar2_prev)
	-- total energy balance
	local W_1 = W_1_hyd + W_2_hyd - W_1_cool + W_1_t
	local W_3 = W_3_hyd - W_3_cool + W_3_t
	-- Temperatures from energy
	local temp_bar1 = (273 + temp_bar1_prev) + W_1 * passed / c_oil / math.max(1,hs1_qty + hs2_qty) * 1000 / 850000 - 273
	local temp_bar2 = (273 + temp_bar2_prev) + W_3 * passed / c_oil / math.max(1,hs3_qty) * 1000 / 850000 - 273
	-- temperature delta and fluid expansion (0.5L for every 10° difference from +20°)
	local d_temp_1 = (temp_bar1 - temp_bar1_prev) / 20
	local d_temp_2 = (temp_bar2 - temp_bar2_prev) / 20
	hs1_qty = hs1_qty + d_temp_1
	hs2_qty = hs2_qty + d_temp_1
	hs3_qty = hs3_qty + d_temp_2
	temp_bar1_prev = temp_bar1
	temp_bar2_prev = temp_bar2
	-- set(db1,temp_bar1)
	-- set(db2,temp_bar2)
	-- set(db3,t_tech)
	-- set(db4,W_1_hyd)
	-- set(db5,W_1_cool)
	-- set(db6,W_3_hyd)
	
	if acc_1 > 0 then
		local flow = (ailerons_feed + elev_feed + rudder_feed+elevon_feed) * buster_1_ON + sbd_brk_inn_feed + sbd_brk_mid_feed + flaps_feed_1
		acc_1 = acc_1 - flow -- take oil from HS1
		hs1_qty = hs1_qty + flow -- return it to barrel		
	end
	
	if acc_2 > 0 then
		local flow = (ailerons_feed + elev_feed + rudder_feed+elevon_feed) * buster_2_ON + flaps_feed_2
		acc_2 = acc_2 - flow -- take oil from HS2
		hs2_qty = hs2_qty + flow -- return it to barrel
	end		
	if acc_3 > 0 then
		local flow = (ailerons_feed + elev_feed + rudder_feed+elevon_feed) * buster_3_ON
		acc_3 = acc_3 - flow -- take oil from HS3
		hs3_qty = hs3_qty + flow -- return it to barrel
	end		
	
	

	-- ABSU
	local absu_pitch_feed1 = math.abs(get(hod1_p)) * 0.0023
	local absu_pitch_feed2 = math.abs(get(hod2_p)) * 0.0023
	local absu_pitch_feed3 = math.abs(get(hod3_p)) * 0.0023
	local absu_roll_feed1 = math.abs(get(hod1_r)) * 0.0023
	local absu_roll_feed2 = math.abs(get(hod2_r)) * 0.0023
	local absu_roll_feed3 = math.abs(get(hod3_r)) * 0.0023
	local absu_yaw_feed1 = math.abs(get(hod1_y)) * 0.0023
	local absu_yaw_feed2 = math.abs(get(hod2_y)) * 0.0023
	local absu_yaw_feed3 = math.abs(get(hod3_y)) * 0.0023
	
	-- absu_pitch_last = get(absu_contr_pitch)
	-- absu_roll_last = get(absu_contr_roll)
	-- absu_yaw_last = get(absu_contr_yaw)
	
	if acc_1 > 0 then
		local flow = absu_pitch_feed1 + absu_roll_feed1 + absu_yaw_feed1
		acc_1 = acc_1 - flow -- take oil from HS1
		hs1_qty = hs1_qty + flow -- return it to barrel		
	end
	if acc_2 > 0 then
		local flow = absu_pitch_feed2 + absu_roll_feed2+ absu_yaw_feed2
		acc_2 = acc_2 - flow -- take oil from HS2
		hs2_qty = hs2_qty + flow -- return it to barrel
	end		
	if acc_3 > 0 then
		local flow = absu_pitch_feed3 + absu_roll_feed3 + absu_yaw_feed3
		acc_3 = acc_3 - flow -- take oil from HS3
		hs3_qty = hs3_qty + flow -- return it to barrel
	end		


	-- gears
	-- -- reduced consumption for extending gears
	-- if get(gear1_deploy) - gear_pos_1_last>0 then
		-- gear_feed_1 = math.abs(get(gear1_deploy) - gear_pos_1_last) * 8 / 4
	-- end
	-- if get(gear2_deploy) - gear_pos_2_last>0 then
		-- gear_feed_2 = math.abs(get(gear2_deploy) - gear_pos_2_last) * 17 / 4
	-- end
	-- if get(gear3_deploy) - gear_pos_3_last>0 then
		-- gear_feed_3 = math.abs(get(gear3_deploy) - gear_pos_3_last) * 17 / 4
	-- end
	
	local emer_gear=get(emerg_gear_ext)
	local emer_gear2=get(gears_ext_3GS)*bool2int(power27R)
	local gear_pos_1 = get(gear1_deploy)
	local gear_pos_2 = get(gear2_deploy)
	local gear_pos_3 = get(gear3_deploy)
	local gear_dir_1 = bool2int(gear_pos_1_last > gear_pos_1)
	local gear_dir_2 = bool2int(gear_pos_2_last > gear_pos_2)
	local gear_dir_3 = bool2int(gear_pos_3_last > gear_pos_3)
	gear_pos_1_last = get(gear1_deploy)
	gear_pos_2_last = get(gear2_deploy)
	gear_pos_3_last = get(gear3_deploy)
	-- gear feed from landing gears script
	local gear_feed_1 = get(fluid_1)*passed  --math.abs(get(gear1_deploy) - gear_pos_1_last) * 8 / 3
	local gear_feed_2 = get(fluid_2)*passed --math.abs(get(gear2_deploy) - gear_pos_2_last) * 17 / 3
	local gear_feed_3 = get(fluid_3)*passed --math.abs(get(gear3_deploy) - gear_pos_3_last) * 17 / 3
	-- backfeed to the reservoir
	local gear_backfeed_1 = gear_feed_1 * 1.559
	local gear_backfeed_2 = gear_feed_2 * 1.559
	local gear_backfeed_3 = gear_feed_3 * 1.559
	if gear_dir_1 == 1 then
		if gear_pos_1 > 0.6 then
			gear_backfeed_1 = 0
		else
			gear_backfeed_1 = gear_feed_1 * 0.75
		end
	end
	if gear_dir_2 == 1 then
		if gear_pos_2 > 0.6 then
			gear_backfeed_2 = 0
		else
			gear_backfeed_2 = gear_feed_2 * 0.75
		end
	end
	if gear_dir_3 == 1 then
		if gear_pos_3 > 0.6 then
			gear_backfeed_3 = 0
		else
			gear_backfeed_3 = gear_feed_3 * 0.75
		end
	end
	-- normal operation
	if acc_1 > 0 and emer_gear2 == 0 and emer_gear == 0 then
		acc_1 = acc_1 - gear_feed_1 - gear_feed_2 - gear_feed_3 -- take oil from HS1
		hs1_qty = hs1_qty + gear_backfeed_1 + gear_backfeed_2 + gear_backfeed_3 -- return it to barrel		
	-- emerg operation
	elseif acc_2 > 0 and emer_gear2 == 0 and emer_gear == 1 then
		acc_2 = acc_2 - gear_feed_1 - gear_feed_2 - gear_feed_3 -- take oil from HS2
		hs2_qty = hs2_qty + gear_backfeed_1 + gear_backfeed_2 + gear_backfeed_3 -- return it to barrel	
	-- 3'd HS operation
	elseif acc_3 > 0 and emer_gear2 == 1 then
		acc_3 = acc_3 - gear_feed_1 - gear_feed_2 - gear_feed_3 -- take oil from HS3
		hs3_qty = hs3_qty + gear_backfeed_1 + gear_backfeed_2 + gear_backfeed_3 -- return it to barrel	
	end
	
	local acc_press_1 = acc_press(acc_1/1000,0.00025)
	local acc_press_2 = acc_press(acc_2/1000,0.00025)
	local acc_press_3 = acc_press(acc_3/1000,0.00025)
	local acc_press_4 = acc_press(acc_4/1000,0.00025)
	
	-- set results
	set(gs_press_1, acc_press_1)
	set(gs_press_2, acc_press_2)
	set(gs_press_3, acc_press_3)
	set(gs_press_4, acc_press_4)
	
	set(bak_qty_1, hs1_qty)
	set(bak_qty_2, hs2_qty)
	set(bak_qty_3, hs3_qty)	
	
	-- whole system = barrel + pipes + accums
	set(system_qty_1, hs1_qty + 79 + acc_1 + acc_4)
	set(system_qty_2, hs2_qty + 79 + acc_2 )
	set(system_qty_3, hs3_qty + 21 + acc_3)
	-- set(db1,acc_1)
	-- set(db2,acc_2)
	-- set(db3,acc_3)
	
	

	set(gs_qty_12_show, hs1_qty + hs2_qty)
	set(gs_qty_3_show, hs3_qty)	
	-- electric pumps currrents
	if elec_pump_2~=elec_pump_2_prev and elec_pump_2_start_timer <0.1 then
		elec_pump_2_start=30*elec_pump_2
	end
	elec_pump_2_prev=elec_pump_2
	if elec_pump_2_start>0 then
		elec_pump_2_start=elec_pump_2_start-passed*30
	elseif elec_pump_2_start<0 then
		elec_pump_2_start=0
	end
	
	if elec_pump_3~=elec_pump_3_prev and elec_pump_3_start_timer <0.1 then
		elec_pump_3_start=30*elec_pump_3
	end
	elec_pump_3_prev=elec_pump_3
	if elec_pump_3_start>0 then
		elec_pump_3_start=elec_pump_3_start-passed*30
	elseif elec_pump_3_start<0 then
		elec_pump_3_start=0
	end
	if elec_pump_2==1 then
		if elec_pump_2_start_timer<1 then
			elec_pump_2_start_timer=elec_pump_2_start_timer+passed*2
		elseif elec_pump_2_start_timer>1 then
			elec_pump_2_start_timer=1
		end
	elseif elec_pump_2_start_timer>0 and elec_pump_2==0 then
		elec_pump_2_start_timer=elec_pump_2_start_timer-passed
		if elec_pump_2_start_timer < 0 then
			 elec_pump_2_start_timer = 0
		end
	end
	if elec_pump_3==1 then
		if elec_pump_3_start_timer<1 then
			elec_pump_3_start_timer=elec_pump_3_start_timer+passed*2
		elseif elec_pump_3_start_timer>1 then
			elec_pump_3_start_timer=1
		end
	elseif elec_pump_3_start_timer>0 and elec_pump_3==0 then
		elec_pump_3_start_timer=elec_pump_3_start_timer-passed
		if elec_pump_3_start_timer < 0 then
			 elec_pump_3_start_timer = 0
		end
	end
		
	local pump2_current = W_el_1 / 200 / math.sqrt(3) / 0.8 
	local pump3_current = W_el_2 / 200 / math.sqrt(3) / 0.8 
	set(gs_pump_2_cc, math.max(elec_pump_2_start,pump2_current))
	set(gs_pump_3_cc, math.max(elec_pump_3_start,pump3_current))	
	
	--print(get(system_qty_1) + get(system_qty_2))

end
end

