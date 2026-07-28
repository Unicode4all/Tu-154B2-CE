-- this is hydraulic panel

-- gauges
defineProperty("pressure_ind_1", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_1")) -- индикатор давления гидросистемы 1
defineProperty("pressure_ind_2", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_2")) -- индикатор давления гидросистемы 2
defineProperty("pressure_ind_3", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_3")) -- индикатор давления гидросистемы 3
defineProperty("pressure_ind_emerg", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_emerg")) -- индикатор давления аварийного торможения

defineProperty("qty_12", globalPropertyf("tu154b2/custom/gauges/hydro/qty_12")) -- гидробаки
defineProperty("qty_3", globalPropertyf("tu154b2/custom/gauges/hydro/qty_3")) -- гидробаки

defineProperty("gear_brake_press_L", globalPropertyf("tu154b2/custom/gauges/console/gear_brake_press_L")) -- давление тормозов лев
defineProperty("gear_brake_press_R", globalPropertyf("tu154b2/custom/gauges/console/gear_brake_press_R")) -- давление тормозов прав


-- controls
defineProperty("lamp_test_hydro", globalPropertyi("tu154b2/custom/buttons/lamp_test_hydro")) -- кнопка проверки ламп на панели гидросистемы
defineProperty("lamp_test_front", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка проверки ламп на панели гидросистемы

defineProperty("qty_test_12", globalPropertyi("tu154b2/custom/buttons/hydro/qty_test_12")) -- контроль уровня
defineProperty("qty_test_3", globalPropertyi("tu154b2/custom/buttons/hydro/qty_test_3")) -- контроль уровня

defineProperty("accum_fill", globalPropertyi("tu154b2/custom/buttons/hydro/accum_fill")) -- зарядка аккумулятора


defineProperty("connect2to1", globalPropertyi("tu154b2/custom/switchers/hydro/connect2to1")) -- подключение 2 ГС на 1 ГС
defineProperty("connect2to1_cap", globalPropertyi("tu154b2/custom/switchers/hydro/connect2to1_cap")) -- подключение 2 ГС на 1 ГС
defineProperty("pump_2", globalPropertyi("tu154b2/custom/switchers/hydro/pump_2")) -- подключение 2 ГС на 1 ГС
defineProperty("pump_3", globalPropertyi("tu154b2/custom/switchers/hydro/pump_3")) -- подключение 2 ГС на 1 ГС

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- lamps
defineProperty("eng_hydr_fail_1", globalPropertyf("tu154b2/custom/lights/small/eng_hydr_fail_1")) -- низкое давление ГС 1.панель БИ
defineProperty("eng_hydr_fail_2", globalPropertyf("tu154b2/custom/lights/small/eng_hydr_fail_2")) -- низкое давление ГС 2.панель БИ
defineProperty("eng_hydr_fail_3", globalPropertyf("tu154b2/custom/lights/small/eng_hydr_fail_3")) -- низкое давление ГС 3.панель БИ
defineProperty("eng_hydr_fail_4", globalPropertyf("tu154b2/custom/lights/small/eng_hydr_fail_4")) -- низкое давление ГС аварийн.панель БИ

defineProperty("front_hydr_fail_1", globalPropertyf("tu154b2/custom/lights/small/front_hydr_fail_1")) -- низкое давление ГС 1.передняя панель
defineProperty("front_hydr_fail_2", globalPropertyf("tu154b2/custom/lights/small/front_hydr_fail_2")) -- низкое давление ГС 2.передняя панель
defineProperty("front_hydr_fail_3", globalPropertyf("tu154b2/custom/lights/small/front_hydr_fail_3")) -- низкое давление ГС 3.передняя панель
defineProperty("front_hydr_fail_4", globalPropertyf("tu154b2/custom/lights/small/front_hydr_fail_4")) -- низкое давление ГС аварийн.передняя панель


-- sources
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1


defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154b2/custom/hydro/gs_press_4")) -- давление в ГС4

defineProperty("gs_qty_12_show", globalPropertyf("tu154b2/custom/hydro/gs_qty_12_show")) -- остаток масла в гидробаке
defineProperty("gs_qty_3_show", globalPropertyf("tu154b2/custom/hydro/gs_qty_3_show")) -- остаток масла в гидробаке

defineProperty("l_brake_add", globalPropertyf("tu154b2/custom/brakes/int_brakes_L")) -- реальное положение тормоза
defineProperty("r_brake_add", globalPropertyf("tu154b2/custom/brakes/int_brakes_R")) -- реальное положение тормоза

-- failures
defineProperty("rel_lbrakes", globalPropertyi("sim/operation/failures/rel_lbrakes")) -- Left Brakes
defineProperty("rel_rbrakes", globalPropertyi("sim/operation/failures/rel_rbrakes")) -- Right Brakes

defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
local panel_x=0.727
local panel_z=-21.171
local dist_gain=5

-- sounds
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/cap_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/cap_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local passed = 0

local press_1 = get(gs_press_1)
local press_2 = get(gs_press_2)
local press_3 = get(gs_press_3)
local press_4 = get(gs_press_4)

local press_1_ang=0
local press_2_ang=0
local press_3_ang=0
local press_4_ang=0

local press_gauge_tbl = {
{-100, 0},
{40, 0},
{220, 220},
{300, 300}}

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

local function needle_pos (ang_actual_prev,ang_need,dt,v_prev,k_spr,k_dmp,k_v,c_v)
	local v_needle_max=5000*c_v
	local e_c=(ang_need-ang_actual_prev)*k_spr
	dt=math.min(dt,0.025)
    local v=v_prev*k_v+e_c*dt-v_prev*k_dmp
	if v>v_needle_max then
		v=v_needle_max
	elseif v<-v_needle_max then
		v=-v_needle_max
	end
    local ang_actual=ang_actual_prev+v*dt
	if ang_actual<0 then
		ang_actual=0
		v=0
	end
	return v,ang_actual
end

local function needle_pos2 (ang_actual_prev,ang_need,dt,v_prev,k_spr,k_dmp,k_v,c_v)
	local v_needle_max=5000*c_v
	local e_c=(ang_need-ang_actual_prev)*k_spr
    local v=v_prev*k_v+e_c*dt-v_prev*k_dmp
	dt=math.min(dt,0.025)
	if v>v_needle_max then
		v=v_needle_max
	elseif v<-v_needle_max then
		v=-v_needle_max
	end
    local ang_actual=ang_actual_prev+v*dt
	if ang_actual<-180 then
		ang_actual=-180
		v=0
	end
	return v,ang_actual
end
local v_br1 = 0
local v_br2 = 0
local v_gs1 = 0
local v_gs2 = 0
local v_gs3 = 0
local v_gs4 = 0
local v_q1 = 0
local v_q3 = 0
local k_spr = 2500*0.2
local k_dmp = 0.15 *18
local k_v = 3.4
local c_v = 0.1
local k_spr2 = k_spr * 8
local k_dmp2 = k_dmp * 1.05
local c_v2 = c_v * 3.5

local function lamps_eng()
	local lamps_brt = math.max(( get(bus27_volt_left) - 10) / 18.5, 0)
	local test_btn = get(lamp_test_hydro) * lamps_brt
	
	press_1 = get(gs_press_1)
	press_2 = get(gs_press_2)
	press_3 = get(gs_press_3)
	press_4 = get(gs_press_4)
	
	local eng_hydr_fail_1_brt = 0
	if press_1 < 100 then eng_hydr_fail_1_brt = 1 end
	eng_hydr_fail_1_brt = math.max(eng_hydr_fail_1_brt * lamps_brt, test_btn) 
	set(eng_hydr_fail_1, eng_hydr_fail_1_brt)
	
	local eng_hydr_fail_2_brt = 0
	if press_2 < 100 then eng_hydr_fail_2_brt = 1 end
	eng_hydr_fail_2_brt = math.max(eng_hydr_fail_2_brt * lamps_brt, test_btn) 
	set(eng_hydr_fail_2, eng_hydr_fail_2_brt)
	
	local eng_hydr_fail_3_brt = 0
	if press_3 < 100 then eng_hydr_fail_3_brt = 1 end
	eng_hydr_fail_3_brt = math.max(eng_hydr_fail_3_brt * lamps_brt, test_btn) 
	set(eng_hydr_fail_3, eng_hydr_fail_3_brt)
	
	local eng_hydr_fail_4_brt = 0
	if press_4 < 190 then eng_hydr_fail_4_brt = 1 end
	eng_hydr_fail_4_brt = math.max(eng_hydr_fail_4_brt * lamps_brt, test_btn)
	set(eng_hydr_fail_4, eng_hydr_fail_4_brt)
	
end


local function lamps_front()
	local lamps_brt = math.max(( get(bus27_volt_left) - 10) / 18.5, 0)
	local test_btn = get(lamp_test_front) * lamps_brt
	
	local front_hydr_fail_1_brt = 0
	if press_1 < 100 then front_hydr_fail_1_brt = 1 end
	front_hydr_fail_1_brt = math.max(front_hydr_fail_1_brt * lamps_brt, test_btn)
	set(front_hydr_fail_1, front_hydr_fail_1_brt)
	
	local front_hydr_fail_2_brt = 0
	if press_2 < 100 then front_hydr_fail_2_brt = 1 end
	front_hydr_fail_2_brt = math.max(front_hydr_fail_2_brt * lamps_brt, test_btn)
	set(front_hydr_fail_2, front_hydr_fail_2_brt)
	
	local front_hydr_fail_3_brt = 0
	if press_3 < 100 then front_hydr_fail_3_brt = 1 end
	front_hydr_fail_3_brt = math.max(front_hydr_fail_3_brt * lamps_brt, test_btn) 
	set(front_hydr_fail_3, front_hydr_fail_3_brt)
	
	local front_hydr_fail_4_brt = 0
	if press_4 < 190 then front_hydr_fail_4_brt = 1 end
	front_hydr_fail_4_brt = math.max(front_hydr_fail_4_brt * lamps_brt, test_btn)
	set(front_hydr_fail_4, front_hydr_fail_4_brt)
	
end

local connect2to1_last = get(connect2to1)
local pump_2_last = get(pump_2)
local pump_3_last = get(pump_3)
local connect2to1_cap_last = get(connect2to1_cap)

local function check_switchers (gain_L, gain_R,dist)
	local connect2to1_sw = get(connect2to1)
	local pump_2_sw = get(pump_2)
	local pump_3_sw = get(pump_3)
	
	local connect2to1_cap_sw = get(connect2to1_cap)
	
	local sw_changes = connect2to1_sw + pump_2_sw + pump_3_sw - connect2to1_last - pump_2_last - pump_3_last
	
	if sw_changes ~= 0 then
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
    end
	
	if connect2to1_cap_sw - connect2to1_cap_last ~= 0 then
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
    end
	
	connect2to1_last = connect2to1_sw
	pump_2_last = pump_2_sw
	pump_3_last = pump_3_sw
	connect2to1_cap_last = connect2to1_cap_sw
	
	-- switch back under cap
	if connect2to1_cap_sw == 0 then
		set(connect2to1, 0)
	end
	
end

local lamp_test_hydro_last = get(lamp_test_hydro)
local qty_test_12_last = get(qty_test_12)
local qty_test_3_last = get(qty_test_3)
local accum_fill_last = get(accum_fill)

local function buttons_check (gain_L, gain_R,dist)

	local lamp_test_hydro_sw = get(lamp_test_hydro)
	local qty_test_12_sw = get(qty_test_12)
	local qty_test_3_sw = get(qty_test_3)
	local accum_fill_sw = get(accum_fill)
	
	--print(qty_test_12_sw, qty_test_3_sw, accum_fill_last_sw)
	
	
	local sw_changes = lamp_test_hydro_sw + qty_test_12_sw + qty_test_3_sw + accum_fill_sw - lamp_test_hydro_last - qty_test_12_last - qty_test_3_last - accum_fill_last
	
	if sw_changes ~= 0 then
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		sasl.al.playSample(button_sound_L, false)
		sasl.al.playSample(button_sound_R, false)
    end
	lamp_test_hydro_last = lamp_test_hydro_sw
	qty_test_12_last = qty_test_12_sw
	qty_test_3_last = qty_test_3_sw
	accum_fill_last = accum_fill_sw

end


local oil_qty_12_t = { 
{  -1000, -180}, 
{  0, -180},    
{  24, -120 }, 
{  28, -60 },     
{  32, 0 },  
{  36, 60 },
{  40, 120 },
{  42, 145 },
{  1000, 150 }} 

local oil_qty_3_t = { 
{  -1000, -180}, 
{  0, -180},    
{  16, -100 },    
{  20, -40 },    
{  24, 20 },
{  28, 80 },
{  32, 125 },
{  1000, 130 }} 

local oil_qty_12_act = -180
local oil_qty_3_act = -180

local left_br_act = 0
local right_br_act = 0

local function gauges()
	
	local power36 = bool2int(get(bus36_volt_pts250_1) > 30)
	local power27L = bool2int(get(bus27_volt_left) > 13)
	local power27R = bool2int(get(bus27_volt_right) > 13)
	
	-- manometers
	
	local v_press_1_set,press_1_set = needle_pos (press_1_ang,press_1 * power36,passed,v_gs1,k_spr,k_dmp,k_v,c_v)
	press_1_ang=press_1_set
	v_gs1=v_press_1_set
	
	local v_press_2_set,press_2_set = needle_pos (press_2_ang,press_2 * power36,passed,v_gs2,k_spr,k_dmp,k_v,c_v)
	press_2_ang=press_2_set
	v_gs2=v_press_2_set
	
	local v_press_3_set,press_3_set = needle_pos (press_3_ang,press_3 * power36,passed,v_gs3,k_spr,k_dmp,k_v,c_v)
	press_3_ang=press_3_set
	v_gs3=v_press_3_set
	
	local v_press_4_set,press_4_set = needle_pos (press_4_ang,press_4 * power36,passed,v_gs4,k_spr,k_dmp,k_v,c_v)
	press_4_ang=press_4_set
	v_gs4=v_press_4_set

	set(pressure_ind_1, press_1_ang)
	set(pressure_ind_2, press_2_ang)
	set(pressure_ind_3, press_3_ang)
	set(pressure_ind_emerg, press_4_ang)
	
	local left_br = math.min(get(l_brake_add), 1) * 120 * power36 * bool2int(get(rel_lbrakes) < 6) * bool2int(get(gear2_deflect) > 0.06)
	local right_br = math.min(get(r_brake_add), 1) * 120 * power36 * bool2int(get(rel_rbrakes) < 6) * bool2int(get(gear3_deflect) > 0.06)
	
	local v_left_br_set,br_1_set = needle_pos (left_br_act,left_br,passed,v_br1,k_spr,k_dmp,k_v,c_v)
	left_br_act=br_1_set
	v_br1=v_left_br_set
	
	local v_right_br_set,br_2_set = needle_pos (right_br_act,right_br,passed,v_br2,k_spr,k_dmp,k_v,c_v)
	right_br_act=br_2_set
	v_br2=v_right_br_set
	
	set(gear_brake_press_L, left_br_act)
	set(gear_brake_press_R, right_br_act)
	
	-- oil quantity
	local test_btn_12 = get(qty_test_12)
	local test_btn_3 = get(qty_test_3)
	
	local qty_12_need =  interpolate(oil_qty_12_t, get(gs_qty_12_show) * test_btn_12 * power27R)
	local qty_3_need = interpolate(oil_qty_3_t, get(gs_qty_3_show) * test_btn_3 * power27R)
	
	local v_q1_set,q1_set = needle_pos2 (oil_qty_12_act,qty_12_need,passed,v_q1,k_spr2,k_dmp2,k_v,c_v2)
	oil_qty_12_act=q1_set
	v_q1=v_q1_set
	
	local v_q3_set,q3_set = needle_pos2 (oil_qty_3_act,qty_3_need,passed,v_q3,k_spr2,k_dmp2,k_v,c_v2*0.9)
	oil_qty_3_act=q3_set
	v_q3=v_q3_set
	
	set(qty_12, oil_qty_12_act)
	set(qty_3, oil_qty_3_act)
	
	
end


function update()
	passed = get(frame_time)
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
	check_switchers (gain_L, gain_R,dist)
	buttons_check (gain_L, gain_R,dist)
	lamps_eng()
	lamps_front()
	gauges()
	
end