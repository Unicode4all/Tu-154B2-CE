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
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

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
defineProperty("buster_on_1", globalPropertyi("tu154b2/custom/switchers/console/buster_on_1")) -- выключатель бустера
defineProperty("buster_on_2", globalPropertyi("tu154b2/custom/switchers/console/buster_on_2")) -- выключатель бустера
defineProperty("buster_on_3", globalPropertyi("tu154b2/custom/switchers/console/buster_on_3")) -- выключатель бустера

-- currents
defineProperty("gs_pump_2_cc", globalPropertyf("tu154b2/custom/hydro/gs_pump_2_cc")) -- ток насосной станции
defineProperty("gs_pump_3_cc", globalPropertyf("tu154b2/custom/hydro/gs_pump_3_cc")) -- ток насосной станции

defineProperty("hod1_p", globalPropertyf("tu154b2/custom/absu/d_ra1_p"))
defineProperty("hod2_p", globalPropertyf("tu154b2/custom/absu/d_ra2_p"))
defineProperty("hod3_p", globalPropertyf("tu154b2/custom/absu/d_ra3_p"))

defineProperty("hod1_r", globalPropertyf("tu154b2/custom/absu/d_ra1_r"))
defineProperty("hod2_r", globalPropertyf("tu154b2/custom/absu/d_ra2_r"))
defineProperty("hod3_r", globalPropertyf("tu154b2/custom/absu/d_ra3_r"))

defineProperty("hod1_y", globalPropertyf("tu154b2/custom/absu/d_ra1_y"))
defineProperty("hod2_y", globalPropertyf("tu154b2/custom/absu/d_ra2_y"))
defineProperty("hod3_y", globalPropertyf("tu154b2/custom/absu/d_ra3_y"))

defineProperty("nosewheel_power", globalPropertyi("tu154b2/custom/hydro/nosewheel_turn_power"))

fluid_1 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_1")
fluid_2 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_2")
fluid_3 = globalPropertyf("tu154b2/custom/hydro/gear_fluid_3")
--pushback = globalPropertyi("bp/connected")



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control
defineProperty("elev_coeff", globalPropertyf("tu154b2/custom/controlls/elev_coeff"))
defineProperty("rud_coeff", globalPropertyf("tu154b2/custom/controlls/rudder_coeff"))


-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))


-- set initial values
set(system_qty_1, 58)
set(system_qty_2, 58)
set(system_qty_3, 45)

set(gs_press_1, 210)
set(gs_press_2, 210)
set(gs_press_3, 210)
set(gs_press_4, 210)









--[[
при выпущенном шасси, убраны закрылки, разряжены ГА, включен тормоз
первый бак 48 +-1
второй бак 24 +-1

расход масла на шасси: по 17 литров на основные стойки. 8 литров на переднюю.


--]]







local notLoaded = true
local sim_start_timer = 0

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng2_N1) < 5 then

	set(gs_press_1, 0)
		set(gs_press_2, 0)
		set(gs_press_3, 0)
		set(gs_press_4, 0)
		
	end
	notLoaded = false
end



local engine_pumps_t = { 
{  -10000, 0.2},
{  3.7, 0.15 },    
{  4, 0.07 }, 
{  4.06, 0.07 },   
{  4.2, 0 },
{  1000, 0 }}  

local electric_pumps_t = { 
{  -10000, 0.35},
{  0, 0.35},    
{  2.5, 0.35 },    
{  3.8, 0.35 },    
{  4.15, 0.2 },
{  4.21, 0 },
{  1000, 0 }} 

local brakes_L_last = get(l_brake_add)
local brakes_R_last = get(r_brake_add)
--local brakes_last = get(parkbrake)
local nws_last=get(nws)
--local push=get(pushback)

local brakes_EM_L_last = get(brake_emerg_L)
local brakes_EM_R_last = get(brake_emerg_R)
local brakes_EM_last = get(brake_emerg)

local flap_L_last = get(flap_inn_L)
local flap_R_last = get(flap_inn_R)

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
local base_feed=0.06 --Base Hydraulic power consumption (elevator)

function update()

	passed = get(frame_time)

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	
	-- reset some variables for cold start
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
	end
	
	local gear1_fluid=get(fluid_1)
	local gear2_fluid=get(fluid_2)
	local gear3_fluid=get(fluid_3)
	
	-- calculate oil amount
	local sys_qty_1 = get(system_qty_1)
	local sys_qty_2 = get(system_qty_2)
	local sys_qty_3 = get(system_qty_3)
	
	-- calculate amount of oil in accums
	local acc_1 = get(gs_press_1) * 0.02
	local acc_2 = get(gs_press_2) * 0.02
	local acc_3 = get(gs_press_3) * 0.02
	local acc_4 = get(gs_press_4) * 0.02
	
	
	-- calculate amount in barrels. barrel = whole system - pipes - accums
	local hs1_qty = sys_qty_1 - gear1_fluid - 34 - acc_1 - acc_4 -- quantity of oil
	local hs2_qty = sys_qty_2 - gear2_fluid - 34 - acc_2  -- quantity of oil
	local hs3_qty = sys_qty_3 - gear3_fluid - 21 - acc_3 -- quantity of oil
	
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
    local c_eng1=7.777777777778315e-05*RPM_1*RPM_1+0.004111111111111*RPM_1*1.2;
    local c_eng2=7.777777777778315e-05*RPM_2*RPM_2+0.004111111111111*RPM_2*1.2;
    local c_eng3=7.777777777778315e-05*RPM_3*RPM_3+0.004111111111111*RPM_3*1.2;
	local eng_k1=math.min(7,9.235209235209163e-04*RPM_1*RPM_1-0.005339105339105*RPM_1)
	local eng_k2=math.min(7,9.235209235209163e-04*RPM_2*RPM_2-0.005339105339105*RPM_2)
	local eng_k3=math.min(7,9.235209235209163e-04*RPM_3*RPM_3-0.005339105339105*RPM_3)
	local eng_pump_1_1 = math.max((-3.3/(1+math.exp(-eng_k1*(acc_1-4.2)))+1.64)*c_eng1* (1 - get(hydro_pump_fail_11)),0)
	local eng_pump_1_2 = math.max((-3.3/(1+math.exp(-eng_k2*(acc_1-4.2)))+1.64)*c_eng2* (1 - get(hydro_pump_fail_12)),0)
	local eng_pump_2 = math.max((-3.3/(1+math.exp(-eng_k2*(acc_2-4.2)))+1.64)*c_eng2* (1 - get(hydro_pump_fail_2)),0)
	local eng_pump_3 = math.max((-3.3/(1+math.exp(-eng_k3*(acc_3-4.2)))+1.64)*c_eng3* (1 - get(hydro_pump_fail_3)),0)
-- 41 93
	-- pump oil from storage to accums
	if hs1_qty > 0.1 then 
		local flow = (eng_pump_1_1 + eng_pump_1_2) * passed
		acc_1 = acc_1 + flow 
		hs1_qty = hs1_qty - flow
	end	

	if hs2_qty > 0.1 then 
		local flow = eng_pump_2 * passed
		acc_2 = acc_2 + flow 
		hs2_qty = hs2_qty - flow
	end

	if hs3_qty > 0.1 then 
		local flow = eng_pump_3 * passed
		acc_3 = acc_3 + flow
		hs3_qty = hs3_qty - flow
	end	

	-- gain pressure from electrical pumps
	local elec_pump_2 = bool2int(power115_1 and power27L and get(pump_2) == 1 and get(hydro_elec_fail_2) == 0)
	local elec_pump_3 = bool2int(power115_3 and power27R and get(pump_3) == 1 and get(hydro_elec_fail_3) == 0)
	
	if hs2_qty > 0 then 
		local flow = elec_pump_2 * interpolate(electric_pumps_t, acc_2) * passed *0.9 * elec_pump_2_start_timer *(0.7275*math.pow(acc_2 * 0.5,2)-2.956*(acc_2 * 0.5)+4)
		acc_2 = acc_2 + flow
		hs2_qty = hs2_qty - flow
	end
	if hs3_qty > 0 then 
		local flow = elec_pump_3 * interpolate(electric_pumps_t, acc_3) * passed *0.85 * elec_pump_3_start_timer*(0.7275*math.pow(acc_3 * 0.5,2)-2.956*(acc_3 * 0.5)+4)
		acc_3 = acc_3 + flow
		hs3_qty = hs3_qty - flow
	end
	
	local pump2_current = elec_pump_2 * (32 + interpolate(electric_pumps_t, acc_2 * 50) * 0.15)
	local pump3_current = elec_pump_3 * (32 + interpolate(electric_pumps_t, acc_3 * 50) * 0.15)
	

	-- charge the accumulator for emergency brakes
	if get(accum_fill) == 1 and acc_4 < acc_1 and power27L then
		local flow = (acc_1 - acc_4)
		if flow > 2 then flow = 2 end
		
		acc_1 = acc_1 - flow * passed
		acc_4 = acc_4 + flow * passed
	end

	-- connect HS 1 and HS2
	if get(connect2to1) == 1 and power27L and acc_2 > acc_1 then
		local flow = acc_2 - acc_1
		if flow > 2 then flow = 2 end
		
		acc_1 = acc_1 + flow * passed*5
		acc_2 = acc_2 - flow * passed*5
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
	local flap_L_now = get(flap_inn_L)
	local flap_R_now = get(flap_inn_R)	
	
	local flaps_feed = math.abs(flap_L_now - flap_L_last + flap_R_now - flap_R_last) * 0.01

	
	flap_L_last = flap_L_now
	flap_R_last = flap_R_now
	

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
	
	if acc_1 > 0 then
		local flow = (ailerons_feed + elev_feed + rudder_feed+elevon_feed) * buster_1_ON + sbd_brk_inn_feed + sbd_brk_mid_feed +flaps_feed
		acc_1 = acc_1 - flow -- take oil from HS1
		hs1_qty = hs1_qty + flow -- return it to barrel		
	end
	
	if acc_2 > 0 then
		local flow = (ailerons_feed + elev_feed + rudder_feed+elevon_feed) * buster_2_ON + flaps_feed
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
	local gear_feed_1 = math.abs(get(gear1_deploy) - gear_pos_1_last) * 8 / 3
	local gear_feed_2 = math.abs(get(gear2_deploy) - gear_pos_2_last) * 17 / 3
	local gear_feed_3 = math.abs(get(gear3_deploy) - gear_pos_3_last) * 17 / 3
	-- reduced consumption for extending gears
	if get(gear1_deploy) - gear_pos_1_last>0 then
		gear_feed_1 = math.abs(get(gear1_deploy) - gear_pos_1_last) * 8 / 4
	end
	if get(gear2_deploy) - gear_pos_2_last>0 then
		gear_feed_2 = math.abs(get(gear2_deploy) - gear_pos_2_last) * 17 / 4
	end
	if get(gear3_deploy) - gear_pos_3_last>0 then
		gear_feed_3 = math.abs(get(gear3_deploy) - gear_pos_3_last) * 17 / 4
	end
	gear_pos_1_last = get(gear1_deploy)
	gear_pos_2_last = get(gear2_deploy)
	gear_pos_3_last = get(gear3_deploy)
	
	local emer_gear=get(emerg_gear_ext)
	local emer_gear2=get(gears_ext_3GS)*bool2int(power27R)
	-- normal operation
	if acc_1 > 0 and emer_gear2 == 0 and emer_gear == 0 then
		acc_1 = acc_1 - gear_feed_1 - gear_feed_2 - gear_feed_3 -- take oil from HS1
		hs1_qty = hs1_qty + gear_feed_1 + gear_feed_2 + gear_feed_3 -- return it to barrel		
	-- emerg operation
	elseif acc_2 > 0 and emer_gear2 == 0 and emer_gear == 1 then
		acc_2 = acc_2 - gear_feed_1 - gear_feed_2 - gear_feed_3 -- take oil from HS2
		hs2_qty = hs2_qty + gear_feed_1 + gear_feed_2 + gear_feed_3 -- return it to barrel	
	-- 3'd HS operation
	elseif acc_3 > 0 and emer_gear2 == 1 then
		acc_3 = acc_3 - gear_feed_1 - gear_feed_2 - gear_feed_3 -- take oil from HS3
		hs3_qty = hs3_qty + gear_feed_1 + gear_feed_2 + gear_feed_3 -- return it to barrel	
	end
	
	
	
	-- set results
	set(gs_press_1, acc_1 * 50)
	set(gs_press_2, acc_2 * 50)
	set(gs_press_3, acc_3 * 50)
	set(gs_press_4, acc_4 * 50)
	
	set(bak_qty_1, hs1_qty)
	set(bak_qty_2, hs2_qty)
	set(bak_qty_3, hs3_qty)	
	
	
	-- whole system = barrel + pipes + accums
	set(system_qty_1, hs1_qty + gear1_fluid + 34 + acc_1 + acc_4)
	set(system_qty_2, hs2_qty + gear2_fluid + 34 + acc_2 )
	set(system_qty_3, hs3_qty + gear3_fluid + 21 + acc_3)
	

	set(gs_qty_12_show, hs1_qty + hs2_qty)
	set(gs_qty_3_show, hs3_qty)	
	
	if elec_pump_2~=elec_pump_2_prev then
		elec_pump_2_start=1.4*elec_pump_2
	end
	elec_pump_2_prev=elec_pump_2
	if elec_pump_2_start>1 then
		elec_pump_2_start=elec_pump_2_start-passed*0.6
	elseif elec_pump_2_start<1 then
		elec_pump_2_start=1
	end
	
	if elec_pump_3~=elec_pump_3_prev then
		elec_pump_3_start=1.4*elec_pump_3
	end
	elec_pump_3_prev=elec_pump_3
	if elec_pump_3_start>1 then
		elec_pump_3_start=elec_pump_3_start-passed*0.6
	elseif elec_pump_3_start<1 then
		elec_pump_3_start=1
	end
	if elec_pump_2==1 then
		if elec_pump_2_start_timer<1 then
			elec_pump_2_start_timer=elec_pump_2_start_timer+passed
		elseif elec_pump_2_start_timer>1 then
			elec_pump_2_start_timer=1
		end
	elseif elec_pump_2_start_timer>0 and elec_pump_2==0 then
		elec_pump_2_start_timer=elec_pump_2_start_timer-passed/2
	end
	if elec_pump_3==1 then
		if elec_pump_3_start_timer<1 then
			elec_pump_3_start_timer=elec_pump_3_start_timer+passed
		elseif elec_pump_3_start_timer>1 then
			elec_pump_3_start_timer=1
		end
	elseif elec_pump_3_start_timer>0 and elec_pump_3==0 then
		elec_pump_3_start_timer=elec_pump_3_start_timer-passed/2
	end
	set(gs_pump_2_cc, pump2_current*elec_pump_2_start)
	set(gs_pump_3_cc, pump3_current*elec_pump_3_start)	
	
	--print(get(system_qty_1) + get(system_qty_2))

end
end

