-- this is light controls

-- electric system
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")

bus115_1_volt = globalPropertyf("tu154b2/custom/elec/bus115_1_volt")
bus115_3_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt")


cockpit_light_cc_left = globalPropertyf("tu154b2/custom/elec/cockpit_light_cc_left")-- нагрузка на левую сеть от освещения в кабине
cockpit_light_cc_right = globalPropertyf("tu154b2/custom/elec/cockpit_light_cc_right")-- нагрузка на правую сеть от освещения в кабине
cockpit_light_cc_115 = globalPropertyf("tu154b2/custom/elec/cockpit_light_cc_115")-- нагрузка на сеть 115 от освещения в кабине


-- generators
gen1_work_bus = globalPropertyi("tu154b2/custom/elec/gen1_work")  -- generators connected to the busses and working
gen2_work_bus = globalPropertyi("tu154b2/custom/elec/gen2_work")
gen3_work_bus = globalPropertyi("tu154b2/custom/elec/gen3_work")
gen4_work_bus = globalPropertyi("tu154b2/custom/elec/gen4_work")
gpu_work_bus = globalPropertyi("tu154b2/custom/elec/gpu_work")

-- light outside
--percent_lights_on = globalPropertyf("sim/graphics/scenery/percent_lights_on") -- процент света в городах рядом

-- nonHDR lights
default_cockpit_flood = globalProperty("sim/cockpit2/switches/panel_brightness_ratio[0]") -- main cockpit flood
default_eng_panel_flood = globalProperty("sim/cockpit2/switches/panel_brightness_ratio[1]") -- eng panel flood
default_pedestal_flood = globalProperty("sim/cockpit2/switches/panel_brightness_ratio[2]") -- center panel flood

cabin_2d_light = globalPropertyf("tu154b2/custom/lights/cabin_2d_light") -- 

exit_lamp = globalPropertyf("tu154b2/custom/lights/exit_lamp") -- 
fasten_seatbelts_lamp = globalPropertyf("tu154b2/custom/lights/fasten_seatbelts_lamp") -- 
nosmoking_lamp = globalPropertyf("tu154b2/custom/lights/nosmoking_lamp") -- 
toilet_busy_lamp = globalPropertyf("tu154b2/custom/lights/toilet_busy_lamp") -- 
seats_leters_lamp = globalPropertyf("tu154b2/custom/lights/seats_leters_lamp") -- 

nvu_lit = globalPropertyf("tu154b2/custom/lights/nvu_panel_int") -- 

HDR_on = globalPropertyf("sim/graphics/settings/HDR_on") -- settings for HDR
-- 1 заливающее освещение левой боковой панели
-- 2 заливающее освещение правой боковой панели
-- 3 заливающее освещение передней панели
-- 4 заливающее освещение средний пульт
-- 5 заливающее освещение верхней панели передн
-- 6 заливающее освещение верхней панели задн
-- 7 заливающее освещение панели БИ
-- 8 левый фонарик
-- 9 освещение салона


-- свет для левой боковой панели
l1_0 = globalProperty("sim/weapons/vx[0]") set(l1_0, 1)  --r
l1_1 = globalProperty("sim/weapons/vx[1]") set(l1_1, 0.7)  --g
l1_2 = globalProperty("sim/weapons/vx[2]") set(l1_2, 0.2)  --b
l1_3 = globalProperty("sim/weapons/vx[3]") set(l1_3, 0)  --alfa
l1_4 = globalProperty("sim/weapons/vx[4]") set(l1_4, 0.6) --size
l1_5 = globalProperty("sim/weapons/vx[5]") set(l1_5, 0)  --dx
l1_6 = globalProperty("sim/weapons/vx[6]") set(l1_6, 0)  --dy
l1_7 = globalProperty("sim/weapons/vx[7]") set(l1_7, -90)  --dz
l1_8 = globalProperty("sim/weapons/vx[8]") set(l1_8, 20)  --width


-- свет для правой боковой панели
l2_0 = globalProperty("sim/weapons/vy[0]") set(l2_0, 1)  --r
l2_1 = globalProperty("sim/weapons/vy[1]") set(l2_1, 0.7)  --g
l2_2 = globalProperty("sim/weapons/vy[2]") set(l2_2, 0.2)  --b
l2_3 = globalProperty("sim/weapons/vy[3]") set(l2_3, 0)  --alfa
l2_4 = globalProperty("sim/weapons/vy[4]") set(l2_4, 0.6) --size
l2_5 = globalProperty("sim/weapons/vy[5]") set(l2_5, 0)  --dx
l2_6 = globalProperty("sim/weapons/vy[6]") set(l2_6, 0)  --dy
l2_7 = globalProperty("sim/weapons/vy[7]") set(l2_7, -90)  --dz
l2_8 = globalProperty("sim/weapons/vy[8]") set(l2_8, 20)  --width

-- свет для передней панели
l3_0 = globalProperty("sim/weapons/vz[0]") set(l3_0, 1)  --r
l3_1 = globalProperty("sim/weapons/vz[1]") set(l3_1, 0.7)  --g
l3_2 = globalProperty("sim/weapons/vz[2]") set(l3_2, 0.2)  --b
l3_3 = globalProperty("sim/weapons/vz[3]") set(l3_3, 0)  --alfa
l3_4 = globalProperty("sim/weapons/vz[4]") set(l3_4, 0.6) --size
l3_5 = globalProperty("sim/weapons/vz[5]") set(l3_5, 0)  --dx
l3_6 = globalProperty("sim/weapons/vz[6]") set(l3_6, 0)  --dy
l3_7 = globalProperty("sim/weapons/vz[7]") set(l3_7, -50)  --dz
l3_8 = globalProperty("sim/weapons/vz[8]") set(l3_8, 0.5)  --width

-- свет для среднего пульта
l4_0 = globalProperty("sim/weapons/x[0]") set(l4_0, 1)  --r
l4_1 = globalProperty("sim/weapons/x[1]") set(l4_1, 0.7)  --g
l4_2 = globalProperty("sim/weapons/x[2]") set(l4_2, 0.2)  --b
l4_3 = globalProperty("sim/weapons/x[3]") set(l4_3, 1)  --alfa
l4_4 = globalProperty("sim/weapons/x[4]") set(l4_4, 0.9) --size
l4_5 = globalProperty("sim/weapons/x[5]") set(l4_5, 0)  --dx
l4_6 = globalProperty("sim/weapons/x[6]") set(l4_6, 0)  --dy
l4_7 = globalProperty("sim/weapons/x[7]") set(l4_7, -50)  --dz
l4_8 = globalProperty("sim/weapons/x[8]") set(l4_8, 1)  --width

-- свет для передней части верхнего щитка
l5_0 = globalProperty("sim/weapons/y[0]") set(l5_0, 1)  --r
l5_1 = globalProperty("sim/weapons/y[1]") set(l5_1, 0.7)  --g
l5_2 = globalProperty("sim/weapons/y[2]") set(l5_2, 0.2)  --b
l5_3 = globalProperty("sim/weapons/y[3]") set(l5_3, 0)  --alfa
l5_4 = globalProperty("sim/weapons/y[4]") set(l5_4, 0.5) --size
l5_5 = globalProperty("sim/weapons/y[5]") set(l5_5, 0)  --dx
l5_6 = globalProperty("sim/weapons/y[6]") set(l5_6, 0)  --dy
l5_7 = globalProperty("sim/weapons/y[7]") set(l5_7, -160)  --dz
l5_8 = globalProperty("sim/weapons/y[8]") set(l5_8, 20)  --width

-- свет для задней части верхнего щитка
l6_0 = globalProperty("sim/weapons/z[0]") set(l6_0, 1)  --r
l6_1 = globalProperty("sim/weapons/z[1]") set(l6_1, 0.7)  --g
l6_2 = globalProperty("sim/weapons/z[2]") set(l6_2, 0.2)  --b
l6_3 = globalProperty("sim/weapons/z[3]") set(l6_3, 0)  --alfa
l6_4 = globalProperty("sim/weapons/z[4]") set(l6_4, 0.4) --size
l6_5 = globalProperty("sim/weapons/z[5]") set(l6_5, 0)  --dx
l6_6 = globalProperty("sim/weapons/z[6]") set(l6_6, 0)  --dy
l6_7 = globalProperty("sim/weapons/z[7]") set(l6_7, 0)  --dz
l6_8 = globalProperty("sim/weapons/z[8]") set(l6_8, -1)  --width

-- свет для панели борт-инжинера
l7_0 = globalProperty("sim/weapons/L[0]") set(l7_0, 1)  --r
l7_1 = globalProperty("sim/weapons/L[1]") set(l7_1, 0.7)  --g
l7_2 = globalProperty("sim/weapons/L[2]") set(l7_2, 0.2)  --b
l7_3 = globalProperty("sim/weapons/L[3]") set(l7_3, 0)  --alfa
l7_4 = globalProperty("sim/weapons/L[4]") set(l7_4, 2) --size
l7_5 = globalProperty("sim/weapons/L[5]") set(l7_5, 0)  --dx
l7_6 = globalProperty("sim/weapons/L[6]") set(l7_6, 30)  --dy
l7_7 = globalProperty("sim/weapons/L[7]") set(l7_7, -90)  --dz
l7_8 = globalProperty("sim/weapons/L[8]") set(l7_8, 15)  --width

-- свет для панели борт-инжинера
l7_1_0 = globalProperty("sim/weapons/N[0]") set(l7_1_0, 1)  --r
l7_1_1 = globalProperty("sim/weapons/N[1]") set(l7_1_1, 0.7)  --g
l7_1_2 = globalProperty("sim/weapons/N[2]") set(l7_1_2, 0.2)  --b
l7_1_3 = globalProperty("sim/weapons/N[3]") set(l7_1_3, 0)  --alfa
l7_1_4 = globalProperty("sim/weapons/N[4]") set(l7_1_4, 1.4) --size
l7_1_5 = globalProperty("sim/weapons/N[5]") set(l7_1_5, 0)  --dx
l7_1_6 = globalProperty("sim/weapons/N[6]") set(l7_1_6, 30)  --dy
l7_1_7 = globalProperty("sim/weapons/N[7]") set(l7_1_7, -30)  --dz
l7_1_8 = globalProperty("sim/weapons/N[8]") set(l7_1_8, 20)  --width

-- свет для левого фонарика
l8_0 = globalProperty("sim/weapons/M[0]") set(l8_0, 1)  --r
l8_1 = globalProperty("sim/weapons/M[1]") set(l8_1, 0.7)  --g
l8_2 = globalProperty("sim/weapons/M[2]") set(l8_2, 0.2)  --b
l8_3 = globalProperty("sim/weapons/M[3]") set(l8_3, 0)  --alfa
l8_4 = globalProperty("sim/weapons/M[4]") set(l8_4, 1.0) --size
l8_5 = globalProperty("sim/weapons/M[5]") set(l8_5, 0)  --dx
l8_6 = globalProperty("sim/weapons/M[6]") set(l8_6, 0)  --dy
l8_7 = globalProperty("sim/weapons/M[7]") set(l8_7, -90)  --dz
l8_8 = globalProperty("sim/weapons/M[8]") set(l8_8, 10)  --width

-- свет в салоне
l9_0 = globalProperty("sim/weapons/Prad[0]") set(l9_0, 1)  --r
l9_1 = globalProperty("sim/weapons/Prad[1]") set(l9_1, 0.7)  --g
l9_2 = globalProperty("sim/weapons/Prad[2]") set(l9_2, 0.5)  --b
l9_3 = globalProperty("sim/weapons/Prad[3]") set(l9_3, 1)  --alfa
l9_4 = globalProperty("sim/weapons/Prad[4]") set(l9_4, 30) --size
l9_5 = globalProperty("sim/weapons/Prad[5]") set(l9_5, 1)  --dx
l9_6 = globalProperty("sim/weapons/Prad[6]") set(l9_6, 0.1)  --dy
l9_7 = globalProperty("sim/weapons/Prad[7]") set(l9_7, 0)  --dz
l9_8 = globalProperty("sim/weapons/Prad[8]") set(l9_8, 1)  --width

-- свет для передней панели
l10_0 = globalProperty("sim/weapons/V_msc[0]") set(l10_0, 6)  --r
l10_1 = globalProperty("sim/weapons/V_msc[1]") set(l10_1, 3.15)  --g
l10_2 = globalProperty("sim/weapons/V_msc[2]") set(l10_2, 1.05)  --b
l10_3 = globalProperty("sim/weapons/V_msc[3]") set(l10_3, 0)  --alfa
l10_4 = globalProperty("sim/weapons/V_msc[4]") set(l10_4, 0.25) --size
l10_5 = globalProperty("sim/weapons/V_msc[5]") set(l10_5, 0)  --dx
l10_6 = globalProperty("sim/weapons/V_msc[6]") set(l10_6, 0)  --dy
l10_7 = globalProperty("sim/weapons/V_msc[7]") set(l10_7, -0.5)  --dz
l10_8 = globalProperty("sim/weapons/V_msc[8]") set(l10_8, 0.2)  --width


-- свет для правой боковой панели
l11_0 = globalProperty("sim/weapons/Qrad[0]") set(l11_0, 1)  --r
l11_1 = globalProperty("sim/weapons/Qrad[1]") set(l11_1, 0.7)  --g
l11_2 = globalProperty("sim/weapons/Qrad[2]") set(l11_2, 0.35)  --b
l11_3 = globalProperty("sim/weapons/Qrad[3]") set(l11_3, 0)  --alfa
l11_4 = globalProperty("sim/weapons/Qrad[4]") set(l11_4, 15) --size
l11_5 = globalProperty("sim/weapons/Qrad[5]") set(l11_5, 1)  --dx
l11_6 = globalProperty("sim/weapons/Qrad[6]") set(l11_6, 0.1)  --dy
l11_7 = globalProperty("sim/weapons/Qrad[7]") set(l11_7, 0)  --dz
l11_8 = globalProperty("sim/weapons/Qrad[8]") set(l11_8, 1)  --width


-- panel lights
nvu_lit = globalPropertyf("tu154b2/custom/lights/nvu_panel_int") -- 
mid_left_panel_int = globalPropertyf("tu154b2/custom/lights/mid_left_panel_int")  -- яркость свечения пъедестала
left_panel_int = globalPropertyf("tu154b2/custom/lights/left_panel_int")  -- яркость свечения встроенного освещения панели КВС
right_panel_int = globalPropertyf("tu154b2/custom/lights/right_panel_int")   -- яркость свечения встроенного освещения панели 2П
mid_right_panel_int = globalPropertyf("tu154b2/custom/lights/mid_right_panel_int")  -- яркость свечения встроенного освещения средней передней панели
ovhd_panel_int = globalPropertyf("tu154b2/custom/lights/ovhd_panel_int")   -- яркость свечения встроенного освещения верхней панели
left_panel_flood = globalPropertyf("tu154b2/custom/lights/left_panel_flood")   -- яркость заливающего света левой панели
right_panel_flood = globalPropertyf("tu154b2/custom/lights/right_panel_flood")   -- яркость заливающего света правой панели
mid_panel_flood = globalPropertyf("tu154b2/custom/lights/mid_panel_flood")   -- яркость заливающего света центральной панели
front_panel_flood = globalPropertyf("tu154b2/custom/lights/front_panel_flood")   -- яркость заливающего света передней панели
ovhd_front_panel_flood = globalPropertyf("tu154b2/custom/lights/ovhd_front_panel_flood")   -- яркость заливающего света передней части оверхеда
ovhd_back_panel_flood = globalPropertyf("tu154b2/custom/lights/ovhd_back_panel_flood")   -- яркость заливающего света задней части оверхеда
km_panel_flood = globalPropertyf("tu154b2/custom/lights/km_panel_flood")   -- яркость освещения панели БИ
eng_panel_flood = globalPropertyf("tu154b2/custom/lights/eng_panel_flood")   -- яркость освещения панели БИ
azs_panel_flood = globalPropertyf("tu154b2/custom/lights/azs_panel_flood")   -- освещение панели АЗС
left_spotlight_flood = globalPropertyf("tu154b2/custom/lights/left_spotlight_flood")   -- яркость левого фонарика
pkp_left_set = globalPropertyi("tu154b2/custom/lights/left_pkp_set")
pkp_right_set = globalPropertyi("tu154b2/custom/lights/right_pkp_set")
pkp_left = globalPropertyf("tu154b2/custom/lights/left_pkp")
pkp_right = globalPropertyf("tu154b2/custom/lights/right_pkp")


-- controls
cabinl_flood_set = globalPropertyi("tu154b2/custom/lights/cabinl_flood_set")   -- выключатель освещения кабины

mid_left_panel_int_set = globalPropertyf("tu154b2/custom/lights/mid_left_panel_int_set")   -- регулятор встроенного освещения передней панели КВС
left_panel_int_set = globalPropertyf("tu154b2/custom/lights/left_panel_int_set")   -- регулятор встроенного освещения левой панели
right_panel_int_set = globalPropertyf("tu154b2/custom/lights/right_panel_int_set")   -- регулятор встроенного освещения правой панели
mid_right_panel_int_set = globalPropertyf("tu154b2/custom/lights/mid_right_panel_int_set")   -- регулятор встроенного освещения передней панели 2П
ovhd_panel_int_set = globalPropertyf("tu154b2/custom/lights/ovhd_panel_int_set")   -- регулятор встроенного освещения верхней панели
left_panel_flood_set = globalPropertyf("tu154b2/custom/lights/left_panel_flood_set")   -- регулятор яркости заливающего света левой панели
right_panel_flood_set = globalPropertyf("tu154b2/custom/lights/right_panel_flood_set")   -- регулятор яркости заливающего света правой панели
mid_panel_flood_set = globalPropertyf("tu154b2/custom/lights/mid_panel_flood_set")   -- регулятор яркости заливающего света центральной панели

front_panel_flood_set = globalPropertyf("tu154b2/custom/lights/front_panel_flood_set")   -- регулятор яркости заливающего света передней панели
ovhd_front_panel_flood_set = globalPropertyf("tu154b2/custom/lights/ovhd_front_panel_flood_set")   -- регулятор яркости заливающего света передней части оверхеда
ovhd_back_panel_flood_set = globalPropertyf("tu154b2/custom/lights/ovhd_back_panel_flood_set")   -- регулятор яркости заливающего света заднией части оверхеда

eng_panel_flood_set = globalPropertyf("tu154b2/custom/lights/eng_panel_flood_set")   -- регулятор яркости освещения панели БИ
km_panel_flood_set = globalPropertyf("tu154b2/custom/lights/km_panel_flood_set")   -- регулятор яркости освещения панели БИ
azs_panel_flood_set = globalPropertyi("tu154b2/custom/lights/azs_panel_flood_set")   -- выключатель освещения панели АЗС

sign_belts = globalPropertyi("tu154b2/custom/switchers/ovhd/sign_belts") -- транспарант пристегните ремни
sign_nosmoke = globalPropertyi("tu154b2/custom/switchers/ovhd/sign_nosmoke") -- транспарант пристегните ремни
sign_exit = globalPropertyi("tu154b2/custom/switchers/ovhd/sign_exit") -- транспарант пристегните ремни

nvu_power_on = globalPropertyi("tu154b2/custom/switchers/console/nvu_power_on")

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- time of frame
-- debug_light = globalPropertyfa("tu154b2/lights/debug_light")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))

-- set(db1,1)
-- set(db2,0.25)
-- set(db3,0.4472)
-- set(db4,-0.8944)
-- set(db5,0)
-- set(db6,0.9)


     

local bright_tbl = {{ -5000, 0},    -- bugs workaround
				  { 0, 0 },   -- 
				  { 0.1, 0.6 },   -- 
            	  { 0.5, 0.85 },   -- 
           		  { 1, 1 },    -- 
          		  { 10000, 1000 }}   -- bugs workaround


				  
				  
				  
				  
local toilet_timer_before = 90
local toilet_use_timer = 60



function update()

local passed = get(frame_time)

local volt_left = get(bus27_volt_left) 
local volt_right = get(bus27_volt_right) 

-- calculate light coefficients depending on bus voltages
local light_coef_27_L = volt_left / 29 -- настроить светимость так, чтобы при половине питания свет все-же был.
local light_coef_27_R = volt_right / 29

local light_coef_115_L = get(bus115_1_volt) / 117 
local light_coef_115_R = get(bus115_3_volt) / 117 


local current_115 = 0

-- internal panel lights
local pedestal_int = math.ceil(get(mid_left_panel_int_set) * light_coef_115_L)
set(mid_left_panel_int, pedestal_int * 0.1)

local nvu_int = math.ceil(get(mid_left_panel_int_set) * light_coef_115_L * get(nvu_power_on))
set(nvu_lit, nvu_int * 0.1)

local left_pan_int = math.ceil(get(left_panel_int_set) * light_coef_27_L)
set(left_panel_int, left_pan_int * 0.1)

local right_pan_int = math.ceil(get(right_panel_int_set) * light_coef_27_R)
set(right_panel_int, right_pan_int * 0.1)

local mid_pan_int = math.ceil(get(mid_right_panel_int_set) * light_coef_27_L)
set(mid_right_panel_int, mid_pan_int * 0.1)

local ovhd_pan_int = math.ceil(get(ovhd_panel_int_set) * light_coef_27_L)
set(ovhd_panel_int, ovhd_pan_int * 0.1)

local pkp_left_int = math.ceil(get(pkp_left_set) * light_coef_115_L)
set(pkp_left, pkp_left_int)

local pkp_right_int = math.ceil(get(pkp_right_set) * light_coef_115_R)
set(pkp_right, pkp_right_int)

-- panel flood lights
local left_flood = get(left_panel_flood_set) * light_coef_27_L
set(l1_3, left_flood * 1.5)
set(left_panel_flood, left_flood)

local right_flood = get(right_panel_flood_set) * light_coef_27_R
set(l2_3, right_flood * 1.5)
set(right_panel_flood, right_flood)

local front_flood = get(front_panel_flood_set) * light_coef_27_L
set(l3_3, front_flood * 1.5)
set(front_panel_flood, front_flood)

local pedestal_flood = get(mid_panel_flood_set) * light_coef_27_L
set(l4_3, pedestal_flood * 1.5)
set(mid_panel_flood, pedestal_flood)

local ovhd_fr_flood = get(ovhd_front_panel_flood_set) * light_coef_27_L
set(l5_3, ovhd_fr_flood * 1.5)
set(ovhd_front_panel_flood, ovhd_fr_flood )

local ovhd_bk_flood = get(ovhd_back_panel_flood_set) * light_coef_27_L
set(l6_3, ovhd_bk_flood * 1.5)
set(ovhd_back_panel_flood, ovhd_bk_flood)

local eng_flood = get(eng_panel_flood_set) * light_coef_27_R
set(l7_3, eng_flood * 1.5)
set(l7_1_3, eng_flood * 1.5)
set(eng_panel_flood, eng_flood)
    
    
local km_flood = get(km_panel_flood_set) * light_coef_27_R
set(l10_3, km_flood * 1.5)
set(km_panel_flood, km_flood)

local azs_flood = get(azs_panel_flood_set) * light_coef_27_R
set(azs_panel_flood, azs_flood)


-- cockpit lights
local non_HDR = 1 - get(HDR_on) -- enable default lights if HDR is disabled

local cockpit_flood = get(cabinl_flood_set) * light_coef_27_L
set(default_cockpit_flood, interpolate(bright_tbl, cockpit_flood) * 0.8) 

set(default_eng_panel_flood, interpolate(bright_tbl, eng_flood) * non_HDR)
set(default_pedestal_flood, interpolate(bright_tbl, pedestal_flood) * non_HDR)

-- cabin lights
-- if (get(gen1_work_bus) + get(gen2_work_bus) + get(gen3_work_bus) > 1 or get(gpu_work_bus) == 1) and get(percent_lights_on) > 0.15 then
	-- --set(cockpit_light_cc_115, 25)
	-- set(cabin_2d_light, non_HDR * light_coef_115)
-- else
	-- set(cockpit_light_cc_115, 0)
	set(cabin_2d_light, 0)
--end
 
set(l9_3, light_coef_27_L)
set(l11_3, light_coef_27_L/8)

-- cabin signs
set(exit_lamp, get(sign_exit) * light_coef_27_R)
set(fasten_seatbelts_lamp, get(sign_belts) * light_coef_27_R)
set(nosmoking_lamp, get(sign_nosmoke) * light_coef_27_R)

-- toilet lamp
toilet_timer_before = toilet_timer_before - passed

if toilet_timer_before < 0 then
	
	set(toilet_busy_lamp, light_coef_27_R) -- turn on the light
	toilet_use_timer = toilet_use_timer - passed
	
	if toilet_use_timer < 0 then
		toilet_use_timer = math.random(60, 300) -- set new time for toilet use
		toilet_timer_before = math.random(120, 600) -- set new time before next toilet use
		set(toilet_busy_lamp, 0) -- turn off the light
	end

end

set(seats_leters_lamp, light_coef_27_R)



-- calculate currents
local flood_amps_L = 4.5 / math.max(volt_left, 10)
local gauge_amps_L = 1.5 / math.max(volt_left, 10)
local flood_amps_R = 4.5 / math.max(volt_right, 10)
local gauge_amps_R = 1.5 / math.max(volt_right, 10)
local current_27_L = (left_flood + front_flood * 2 + pedestal_flood * 2) * flood_amps_L
current_27 = current_27_L + (ovhd_fr_flood + ovhd_bk_flood + cockpit_flood) * flood_amps_L
local current_27_R =  (right_flood + eng_flood * 2 + azs_flood) * flood_amps_R

current_27_L = current_27_L + (left_pan_int * 32 + mid_pan_int * 26) * gauge_amps_L / 10
current_27_R = current_27_R + (right_pan_int * 22 + km_flood * 4 ) * gauge_amps_R / 10

set(cockpit_light_cc_left, current_27_L)
set(cockpit_light_cc_right, current_27_R)

end