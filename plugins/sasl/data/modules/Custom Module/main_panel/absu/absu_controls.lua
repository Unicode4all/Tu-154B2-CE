-- this is the improved ABSU logic
-- createGlobalPropertyf("tu154b2/custom/controlls/absu_debug1", 0.2)

-- defineProperty("absu_debug1", globalPropertyf("tu154b2/custom/controlls/absu_debug1")) 

-- sources
--defineProperty("joy_pitch", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) -- pitch position of joytick
--defineProperty("joy_roll", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) -- roll position of joystick
--defineProperty("joy_yaw", globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio")) -- yaw position of joystick

defineProperty("joy_pitch", globalPropertyf("tu154b2/custom/SC/yoke_pitch_ratio")) 
defineProperty("joy_roll", globalPropertyf("tu154b2/custom/SC/yoke_roll_ratio")) 
defineProperty("joy_yaw", globalPropertyf("tu154b2/custom/SC/yoke_heading_ratio")) 


defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

-- hydraulics
defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3


-- controls
defineProperty("hydro_ra56_rud_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_1")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_2")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_3")) -- гидропитание РА56 курс

defineProperty("hydro_ra56_ail_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_1")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_2")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_3")) -- гидропитание РА56 крен

defineProperty("hydro_ra56_elev_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_1")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_2")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_3")) -- гидропитание РА56 тангаж

defineProperty("absu_turn_handle", globalPropertyi("tu154b2/custom/switchers/console/absu_turn_handle")) -- ручка поворота
defineProperty("absu_pitch_wheel", globalPropertyi("tu154b2/custom/switchers/console/absu_pitch_wheel")) -- колесико спуска, подъема

defineProperty("absu_zpu_sel", globalPropertyi("tu154b2/custom/switchers/console/absu_zpu_sel")) -- переключатель ЗПУ. лев - прав
defineProperty("ZK_select", globalPropertyi("tu154b2/custom/switchers/ZK_select")) -- тумблер "ввод ЗК" на передней панели. 0-лев, 1-прав	0

defineProperty("absu_smooth_on", globalPropertyi("tu154b2/custom/switchers/console/absu_smooth_on")) -- тумблер "вкл в болтанку"

defineProperty("absu_nav_on", globalPropertyi("tu154b2/custom/switchers/console/absu_nav_on")) -- стрелки навигация
defineProperty("absu_landing_on", globalPropertyi("tu154b2/custom/switchers/console/absu_landing_on")) -- стрелки посадка
--defineProperty("absu_needles_on", globalPropertyi("tu154b2/custom/switchers/console/absu_needles_on")) -- стрелки

defineProperty("nav_select", globalPropertyi("tu154b2/custom/switchers/nav_select")) -- тумблер НВУ-СНС 0 - НВУ, 1 - СНС


--defineProperty("absu_speed_test_1", globalPropertyi("tu154b2/custom/buttons/console/absu_speed_test_1")) -- кнопка првоерки СТУ нижняя
--defineProperty("absu_speed_test_2", globalPropertyi("tu154b2/custom/buttons/console/absu_speed_test_2")) -- кнопка првоерки СТУ верхняя


defineProperty("absu_use_second_nav", globalPropertyi("tu154b2/custom/absu_use_second_nav")) -- АБСУ использует второй КурсМП



-- PNP
defineProperty("pkp_course_L", globalPropertyf("tu154b2/custom/gauges/compas/pkp_helper_course_L")) -- устанвока курса желтой стрелкой на ПКП
defineProperty("pkp_course_R", globalPropertyf("tu154b2/custom/gauges/compas/pkp_helper_course_R")) -- устанвока курса желтой стрелкой на ПКП

defineProperty("pkp_gyro_course_L", globalPropertyf("tu154b2/custom/gauges/compas/pkp_gyro_course_L")) -- курс гироскопа ПКП
defineProperty("pkp_gyro_course_R", globalPropertyf("tu154b2/custom/gauges/compas/pkp_gyro_course_R")) -- курс гироскопа ПКП


defineProperty("pkp_obs_1", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_L")) -- курс полета на ПКП
defineProperty("pkp_obs_2", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_R")) -- курс полета на ПКП
-- angular speeds
defineProperty("roll_rate", globalPropertyf("sim/flightmodel/position/P")) -- deg/sec	The roll rotation rates (relative to the flight)
defineProperty("pitch_rate", globalPropertyf("sim/flightmodel/position/Q")) -- deg/sec	The pitch rotation rates (relative to the flight)
defineProperty("yaw_rate", globalPropertyf("sim/flightmodel/position/R")) -- deg/sec	The yaw rotation rates (relative to the flight)

defineProperty("roll_acc", globalPropertyf("sim/flightmodel/position/P_dot")) -- deg/sec2	The roll angular acceleration (relative to the flight)
defineProperty("pitch_acc", globalPropertyf("sim/flightmodel/position/Q_dot")) -- deg/sec2 The pitch angular acceleration (relative to the flight)
defineProperty("yaw_acc", globalPropertyf("sim/flightmodel/position/R_dot")) -- deg/sec2 The yaw angular acceleration rates (relative to the flight)

--defineProperty("slip", globalPropertyf("sim/flightmodel/misc/slip"))
--defineProperty("slip", globalPropertyf("sim/cockpit2/gauges/indicators/slip_deg"))
defineProperty("slip", globalPropertyf("sim/cockpit2/gauges/indicators/sideslip_degrees"))


-- SVS
defineProperty("mach_svs", globalPropertyf("tu154b2/custom/svs/machno")) -- Mach number
--defineProperty("alt_svs", globalPropertyf("tu154b2/custom/svs/altitude")) --
--defineProperty("tas_svs", globalPropertyf("tu154b2/custom/svs/true_airspeed")) -- TAS

defineProperty("ias", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_stby")) -- indicated airspeed in KTS

-- NVU
defineProperty("nvu_res_course", globalPropertyf("tu154b2/custom/nvu/nvu_res_course")) -- курс полета по НВУ
defineProperty("nvu_res_z", globalPropertyf("tu154b2/custom/nvu/nvu_res_z")) -- смещение от курса полета НВУ

-- ABSU modes
defineProperty("roll_main_mode", globalPropertyi("tu154b2/custom/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154b2/custom/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("roll_sub_mode", globalPropertyi("tu154b2/custom/absu/roll_sub_mode")) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
defineProperty("pitch_sub_mode", globalPropertyi("tu154b2/custom/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход


-- БКК
defineProperty("bkk_pitch", globalPropertyf("tu154b2/custom/bkk/bkk_pitch")) -- результирующий тангаж от БКК
defineProperty("bkk_roll", globalPropertyf("tu154b2/custom/bkk/bkk_roll")) -- результирующий тангаж от БКК

-- TKS
defineProperty("course_gpk", globalPropertyf("tu154b2/custom/tks/course_gpk")) -- результирующий курс ТКС - ГПК
defineProperty("course_gmk", globalPropertyf("tu154b2/custom/tks/course_gmk")) -- результирующий курс ТКС - ГМК
defineProperty("tks_fail_left", globalPropertyi("tu154b2/custom/tks/fail_left")) -- флаг отказа
defineProperty("tks_fail_right", globalPropertyi("tu154b2/custom/tks/fail_right")) -- флаг отказа


-- DISS
defineProperty("diss_groundspeed", globalPropertyf("tu154b2/custom/nvu/diss_groundspeed")) -- путевая скорость по ДИСС
defineProperty("diss_slip_angle", globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")) -- угол сноса по ДИСС

-- Course MP
defineProperty("obs_1", globalPropertyf("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot")) -- OBS course
defineProperty("obs_2", globalPropertyf("sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot")) -- OBS course
defineProperty("nav_cs_1", globalPropertyf("tu154b2/custom/radio/nav1_cs")) -- course plank
defineProperty("nav_cs_2", globalPropertyf("tu154b2/custom/radio/nav2_cs")) -- course plank
defineProperty("nav_gs_1", globalPropertyf("tu154b2/custom/radio/nav1_gs")) -- glideslope
defineProperty("nav_gs_2", globalPropertyf("tu154b2/custom/radio/nav2_gs")) -- glideslope

defineProperty("freq_1", globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))  -- set the frequency
defineProperty("freq_2", globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz"))  -- set the frequency

defineProperty("nav_cs_flag_1", globalPropertyi("tu154b2/custom/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag_1", globalPropertyi("tu154b2/custom/radio/nav1_gs_flag"))

defineProperty("nav_cs_flag_2", globalPropertyi("tu154b2/custom/radio/nav2_cs_flag"))
defineProperty("nav_gs_flag_2", globalPropertyi("tu154b2/custom/radio/nav2_gs_flag"))

defineProperty("cr_flag_1", globalPropertyf("sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot")) -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.
defineProperty("cr_flag_2", globalPropertyf("sim/cockpit2/radios/indicators/nav2_flag_from_to_pilot")) -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.


-- KLN
defineProperty("kln_course", globalPropertyf("tu154b2/custom/kln90/kln_course")) -- курс ЛЗП от КЛН
defineProperty("kln_dev", globalPropertyf("tu154b2/custom/kln90/kln_dev")) -- отклонение от ЛЗП, мили


defineProperty("show_gns", globalPropertyi("tu154b2/custom/anim/show_gns"))
defineProperty("show_RXP",globalPropertyi("tu154b2/custom/anim/RXP"))


-- RXP
-- defineProperty("RXP_course", globalPropertyf("RXP/radios/indicators/gps_course_degtm")) -- курс ЛЗП от КЛН
-- defineProperty("RXP_dev", globalPropertyf("RXP/radios/indicators/gps_cross_track_nm")) -- отклонение от ЛЗП, мили

-- GNS
defineProperty("GNS430_dtk", globalPropertyf("tu154b2/custom/SC/GNS430_dtk")) -- курс на ГНС
defineProperty("GNS430_dev", globalPropertyf("tu154b2/custom/SC/GNS430_dev")) -- отклонение от курса на ГНС


-- RV
defineProperty("rv5_alt", globalPropertyf("tu154b2/custom/misc/rv5_alt_left"))  -- высота на левом высотомере

defineProperty("dh_set", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_left"))  -- DH angle
defineProperty("rv_angle", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_left"))  -- RV needle

-- Landing Gears
defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

-- flaps
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right
--defineProperty("flap_lever", globalPropertyf("tu154b2/custom/controll/flaps_lever"))
-- ailerons 20, rudder 25, elevator 25-20

defineProperty("gear1_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))  -- vertical deflection of front gear

-- results
defineProperty("absu_roll_ind", globalPropertyf("tu154b2/custom/absu/absu_roll_ind")) -- индикация директора крена
defineProperty("absu_pitch_ind", globalPropertyf("tu154b2/custom/absu/absu_pitch_ind")) -- индикация директора тангажа

defineProperty("absu_roll_flag", globalPropertyi("tu154b2/custom/absu/absu_roll_flag")) --	флаг директора крена
defineProperty("absu_pitch_flag", globalPropertyi("tu154b2/custom/absu/absu_pitch_flag")) -- флаг директора тангажа

-- result ABSU controls
defineProperty("absu_contr_pitch", globalPropertyf("tu154b2/custom/absu/cmd_pitch")) -- отклонение штока РА56 по тангажу
defineProperty("absu_contr_roll", globalPropertyf("tu154b2/custom/absu/cmd_roll")) -- отклонение штока РА56 по крену
defineProperty("absu_contr_yaw", globalPropertyf("tu154b2/custom/absu/cmd_yaw")) -- отклонение штока РА56 по направлению

defineProperty("absu_pitch_trimm", globalPropertyi("tu154b2/custom/absu/absu_pitch_trimm")) -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз

defineProperty("absu_course_out", globalPropertyi("tu154b2/custom/absu_course_out")) -- flying outside the course limits
defineProperty("absu_gs_out", globalPropertyi("tu154b2/custom/absu_gs_out")) -- flying outside the course limits



-- failures
defineProperty("absu_damp_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_roll_fail")) -- отказ демперов крена
defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_pitch_fail")) -- отказ демперов тангажа
defineProperty("absu_damp_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_yaw_fail")) -- отказ демперов курса
defineProperty("absu_contr_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ


defineProperty("man_roll_lamp", globalPropertyi("tu154b2/custom/absu/man_roll_lamp")) 
defineProperty("man_pitch_lamp", globalPropertyi("tu154b2/custom/absu/man_pitch_lamp")) 


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

--for ABSU MAN mode
defineProperty("yoke_pitch", globalPropertyf("tu154b2/custom/controlls/yoke_pitch")) -- поворот штурвала ко тангажу
defineProperty("int_pitch_trim", globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("hydro_long_control", globalPropertyi("tu154b2/custom/switchers/eng/hydro_long_control")) -- продольная управляемость
--defineProperty("elev_coeff", globalPropertyf("tu154b2/custom/controlls/elev_coeff"))
defineProperty("tks_course_set", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_course_set")) -- задатчик курса

defineProperty("absu_ra1_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_roll_fail"))
defineProperty("absu_ra2_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_roll_fail"))
defineProperty("absu_ra3_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_roll_fail"))
defineProperty("absu_ra1_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_pitch_fail"))
defineProperty("absu_ra2_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_pitch_fail"))
defineProperty("absu_ra3_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_pitch_fail"))
defineProperty("absu_ra1_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_yaw_fail"))
defineProperty("absu_ra2_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_yaw_fail"))
defineProperty("absu_ra3_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_yaw_fail"))

defineProperty("h_integral", globalPropertyf("tu154b2/custom/absu/d_H_integral")) 
defineProperty("v_integral", globalPropertyf("tu154b2/custom/absu/d_V_integral")) 
defineProperty("m_integral", globalPropertyf("tu154b2/custom/absu/d_M_integral")) 

defineProperty("bshu_tet_fail",globalPropertyi("tu154b2/custom/failures/bshu_tet_fail"))
defineProperty("bshu_gam_fail",globalPropertyi("tu154b2/custom/failures/bshu_gam_fail"))
defineProperty("vor_avtomat", globalPropertyi("tu154b2/custom/failures/nvu_vor_avtomat_fail"))
defineProperty("rv_flag", globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_left"))  -- RV flag
defineProperty("rv_flag2", globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_right")) 
defineProperty("absu_bns_pitch_fail", globalPropertyi("tu154b2/custom/failures/bns_tet_fail"))
defineProperty("absu_bns_roll_fail", globalPropertyi("tu154b2/custom/failures/bns_gam_fail"))
defineProperty("outer_marker", globalPropertyi("sim/cockpit/misc/outer_marker_lit"))
defineProperty("gps_dot", globalPropertyf("sim/cockpit/radios/gps2_hdef_nm_per_dot")) 
defineProperty("absu_pnp_mode", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1"))
--defineProperty("at_mode", globalPropertyi("tu154b2/custom/absu/stu_mode"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

defineProperty("pnp_course_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_course_flag_L"))
defineProperty("pnp_gs_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_gs_flag_L"))
defineProperty("sta_type_left", globalPropertyi("tu154b2/custom/radio/ils_left"))
defineProperty("sta_type_right", globalPropertyi("tu154b2/custom/radio/ils_right"))
defineProperty("absu_power", globalPropertyi("tu154b2/custom/absu_power_cc"))
defineProperty("v_left", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_stby"))
defineProperty("v_right", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot"))
defineProperty("h", globalPropertyf("tu154b2/custom/svs/altitude"))
defineProperty("absu_gs", globalPropertyi("tu154b2/custom/buttons/console/absu_gs")) -- кнопка глиссада на панели АБСУ
cockpit_80s = globalPropertyi("sim/custom/b2/kontur_70th")
--defineProperty("h_right", globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_copilot"))

--local pitch_act = 0
local roll_act = 0
--local yaw_act = 0

local pitch_base = get(bkk_pitch)


--local flap_coef = 0.025

--local pitch_stab_roll_coef = 0.00175 * 2

local gear_down = get(gear1_deploy) + get(gear2_deploy) + get(gear3_deploy) > 0.05
local flaps = (get(flap_inn_L) + get(flap_inn_R)) / 2
local flaps_prev=0
local flap_timer=0
--local flap_timer2=0

local passed = get(frame_time)

-- manual pitch
--local pitch_coef = 0.3
local theta_dop=0

-- local elev_lim = 0.345
-- local ail_lim = 0.5


-- PU
local pitch_whl_last = 0
local PU_pitch =0

-- V
local V_stab = get(ias) / 1.852
local V_smth = V_stab
local V_last = V_stab
--local pitch_base_smth=0
--local I_V = 0


-- M
local M_stab = get(mach_svs)
local M_smth = M_stab
--local I_M = 0
local M_last = M_stab


-- H
local H_stab = 0
local H_last = H_stab
--local I_H = 0


-- TOGA
--local toga_alt = get(alt_svs)

-- ROLL
--local roll_coef = 0.5

-- handle mode
local course_stab_timer = 0
local course_stab_act = get(course_gpk)

-- NVU
local nvu_z_last = 0
local nvu_side_last = 0
local nvu_spd_last = 0
local nvu_course_last = 0

-- KLN
local kln_frame_timer = 0
local kln_Z_last = 0
local kln_spd = 0

--local course_change_timer = 0

-- VOR
local vor_slip_act = 0
--local vor_dev_act = 0





-- YAW
-- local yaw_I = 0
-- local yaw_P_last = 0

-- local roll_ail_tbl = {
-- {0, 1},
-- {0.2, 1},
-- {0.3, 0.5},
-- {0.4, -0.1},
-- {0.6, -0.2},
-- {0.8, -0.4},
-- {1, -0.6}

-- }

-- local pitch_elev_tbl = {
-- {0, 0.5},
-- {0.2, 0.5},
-- {0.3, 0.3},
-- {0.4, 0.2},
-- {0.6, 0},
-- {0.8, -0.1},
-- {1, -0.2}

-- }


-- local flaps_tbl = {
-- {0, 0},
-- {15, 5},
-- {28, 7},
-- {36, 8},
-- {45, 10},
-- {50, 10}
-- }

-- local pitch_coeff_red_table = {
-- {-100, 1}, -- bugs workaround
-- {0, 1},
-- {300, 1},
-- {400, 0.45},
-- {450, 0.25},
-- {700, 0.25}
-- }

local pitch_need = get(bkk_pitch)
local roll_need = get(bkk_roll)

--local roll_need_smth = roll_need
--local pitch_need_smth = pitch_need

local pitch_show = pitch_need
local roll_show = roll_need

-- local HS1 = math.max(math.min((get(gs_press_1) - 10) / 70, 1), 0)
-- local HS2 = math.max(math.min((get(gs_press_2) - 10) / 70, 1), 0)
-- local HS3 = math.max(math.min((get(gs_press_3) - 10) / 70, 1), 0)

--local gps_Z_smooth = 0

local absu_roll_damp=0
local absu_roll_gain=0
local roll_W_prev=0


local absu_yaw_damp=0
local yaw_W_prev=0

local pitch_submode_prev=get(pitch_sub_mode)
local gs_caught=0
local cmd_GA=0
local pitch_base_GA=10
local V_GA=290
local pitch_GA_prev=0
--local pitch_GA=0
local pitch_GA_PI=0
--local thet_GA=0
local gps_course_prev=0
local cmd_GA_needle=0
local roll_submode_prev=0
-- APP
local dev_last = 0
local dev_last2 = 0
local gliss_dev = 0
local gliss_dev2 = 0
local gliss_dev_last = 0
local gliss_dev_last2 = 0
local azp_feedback=0
local loc_dev=0
--local dev_spd = 0
local loc_dev2=0
--local dev_spd2 = 0
local thet_gs_last=0
local thet_hp = 0
local elev_cmd_gs=0
-- local d_contr_roll=0
-- local d_contr_pitch=0
-- local d_contr_yaw=0

--[[
local pitch_res = 0
local roll_res = 0
local yaw_res = 0
--]]

local roll_res_need = 0
local yaw_res_need = 0

local MASTER = get(ismaster) ~= 1

-- functions will be defined later
local function pitch_holder(pitch_hold)
end

local function roll_holder(roll_hold)
end

local function yaw_holder(mode)
end



function update()
	
	passed = get(frame_time)
	
	MASTER = get(ismaster) ~= 1	
	
	local secondNav = get(absu_use_second_nav) == 1
	
	local roll_mode = get(roll_main_mode) -- 0 - выкл, 1 - штурвальный - 2 - стаб
	local pitch_mode = get(pitch_main_mode) -- 0 - выкл, 1 - штурвальный - 2 - стаб
	
	local roll_submode = get(roll_sub_mode) -- 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
	local pitch_submode = get(pitch_sub_mode) -- 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход
	
	local pitch_now = get(bkk_pitch)
	local roll_now = get(bkk_roll)
	
	--print(pitch_now)
	
	local roll_W = get(roll_rate)
	local pitch_W = get(pitch_rate)
	local yaw_W = -get(slip)
	
	local roll_W2 = get(roll_acc)
	local pitch_W2 = get(pitch_acc)
	local yaw_W2 = get(yaw_acc)
	local pitch_need = get(bkk_pitch)
	local pitch_res_need = 0
	local power=get(absu_power)>0
	if get(absu_damp_roll_fail) == 1 then
		roll_W = 0
		roll_W2 = 0
	end
	
	if get(absu_damp_pitch_fail) == 1 then
		pitch_W = 0
		pitch_W2 = 0
	end
	
	if get(absu_damp_yaw_fail) == 1 then
		yaw_W = 0
		yaw_W2 = 0
	end
	
	
	local pitch_cmd = get(joy_pitch)
	local roll_cmd = get(joy_roll)
	local yaw_cmd = get(joy_yaw)
	
	local mach = get(mach_svs)
	local airspeed = (get(v_left)/2+get(v_right)/2) * 1.852 -- mean of two channels
	local gnd_spd = get(diss_groundspeed)
	local alt = get(h)
	local RV_alt = get(rv5_alt)
	
	gear_down = get(gear1_deploy) + get(gear2_deploy) + get(gear3_deploy) > 0.05
	flaps = (get(flap_inn_L) + get(flap_inn_R)) / 2
	
	local nav_on = get(absu_nav_on) == 1
	local app_on = get(absu_landing_on) == 1
	local T_mp=1
	--local needles_on = get(absu_needles_on) == 1
	
	-- HS1 = math.max(math.min((get(gs_press_1) - 10) / 70, 1), 0)
	-- HS2 = math.max(math.min((get(gs_press_2) - 10) / 70, 1), 0)
	-- HS3 = math.max(math.min((get(gs_press_3) - 10) / 70, 1), 0)
	
	
	-----------------------------------
	-- pitch part --
	-----------------------------------
	
	-- new logic
	-- calculate needed pitch, 
	-- put it into pitch holding logic, wich will use PID regulators, flaps and roll parts with trimmer and damper
	
	
	local dev_spd2 = 0
	local dev_spd = 0
	local gliss_spd = 0
	local gliss_spd2 = 0
	local absu_smooth = get(absu_smooth_on)
	
	if power then -- SAU pitch part
		if get(absu_gs)>0 then-- this resets glideslope auto capture
			gs_caught=0
		end
		-- localizer deviation with lowpass (needs to be outside the mode blocks to work properly)
		loc_dev=T_mp/(T_mp+passed)*loc_dev+passed/(T_mp+passed)*-get(nav_cs_1)
		loc_dev2=T_mp/(T_mp+passed)*loc_dev2+passed/(T_mp+passed)*-get(nav_cs_2)
		
		gliss_dev=T_mp/(T_mp+passed)*gliss_dev+passed/(T_mp+passed)*get(nav_gs_1)
		gliss_dev2=T_mp/(T_mp+passed)*gliss_dev2+passed/(T_mp+passed)*get(nav_gs_2)
		--derivatives

		
		if passed ~= 0 then 
			dev_spd2 = (loc_dev2 - dev_last2)/passed 
			dev_spd = (loc_dev - dev_last)/passed 
			gliss_spd= (gliss_dev - gliss_dev_last)/passed
			gliss_spd2= (gliss_dev2 - gliss_dev_last2)/passed
		end
		dev_last2 = loc_dev2
		dev_last = loc_dev
		gliss_dev_last=gliss_dev
		gliss_dev_last2=gliss_dev2
		--set(db1,gliss_spd)
		--set(db2,dev_spd)
		
		if pitch_submode == 1 or pitch_submode == 10 then -- PU mode
			-- PU part			
			local pitch_whl = get(absu_pitch_wheel)
			local pitch_diff = pitch_whl - pitch_whl_last
			
			
			
			while pitch_diff > 1 do pitch_diff = pitch_diff - 20 end
			while pitch_diff < -1 do pitch_diff = pitch_diff + 20 end
			
			pitch_whl_last = pitch_whl
			
			--if pitch_diff ~= 0 then print(pitch_need, "  ", pitch_diff) end
			
			PU_pitch = PU_pitch + pitch_diff * 0.2
			
			if PU_pitch+pitch_base > 17 then PU_pitch = 17-pitch_base
			elseif PU_pitch+pitch_base < -17 then PU_pitch = -17-pitch_base end
			
					
			pitch_need = (PU_pitch-pitch_now+pitch_base)*2 -- save the pitch for controls and needles
			
			V_stab = airspeed
			V_smth = V_stab
			
			M_stab = mach
			M_smth = M_stab
			--toga_alt = alt
			H_stab = alt					
			
			
			
			
		elseif pitch_submode == 2 then -- stab V mode
			-- if get(at_mode)==3 then
				-- set(pitch_sub_mode,1)
			-- end
			-- PID part
			
			-- smooth airspeed to prevent turb effect
			V_smth = V_smth + (airspeed - V_smth) * passed * 1
			
			-- P
			--local P_V = (V_smth - V_stab)*0.5
			
			-- I
			local I_V = get(v_integral)*0.0055
			
			--I_V = I_V - sign(I_V) * passed * 0.02
			
			-- if I_V > 1 then I_V = 1
			-- elseif I_V < -1 then I_V = -1 end
			
			
			-- D
			local D_V = 0
			if passed ~= 0 then
				D_V = (V_smth - V_last) / passed
			end
			
			
			--local K_DV = 0.6*(1 - absu_smooth) 
			--local K_DV = 2 * * 0.5
			
			
			local PID_part = (V_smth - V_stab)*0.5  + D_V * 0.6*(1 - absu_smooth) + I_V
			
			
			pitch_need = PID_part + (PU_pitch-pitch_now+pitch_base)*2
			
			if pitch_need > 17 * 1 then pitch_need = 17 * 1
			elseif pitch_need < -17 * 0.5 then pitch_need = -17 * 0.5 end
			
			
			--PU_pitch = PU_pitch + (pitch_now - PU_pitch) * passed * 0.3
			--V_stab = airspeed
			M_stab = mach
			M_smth = M_stab
			--toga_alt = alt
			H_stab = alt					
			
		elseif pitch_submode == 3 then -- stab M mode
			-- if get(at_mode)==3 then
				-- set(pitch_sub_mode,1)
			-- end
			-- PID part
			
			-- smooth airspeed to prevent turb effect
			M_smth = M_smth + (mach - M_smth) * passed * 1
			
			-- P
			--local P_M = M_smth - M_stab
			
			-- I
			I_M = get(m_integral)*4.6
			
			--I_M = I_M - sign(I_M) * passed * 0.2
			
			-- if I_M > 1 then I_M = 1
			-- elseif I_M < -1 then I_M = -1 end
			
			
			-- D
			local D_M = 0
			if passed ~= 0 then
				D_M = (M_smth - M_last) / passed
			end
			
			
			--local K_PM = 300
			--local K_DM = 500 * (1 - absu_smooth * 0.5)
			
			
			--local PID_part = (M_smth - M_stab)*340 + D_M * 420* (1 - absu_smooth) + I_V
			
			
			pitch_need = (M_smth - M_stab)*340 + D_M * 420* (1 - absu_smooth) + I_M + (PU_pitch-pitch_now+pitch_base)*2
			
			if pitch_need > 17 * 0.8 then pitch_need = 17 * 0.8
			elseif pitch_need < -17 * 0.5 then pitch_need = -17 * 0.5 end
			
			
			--PU_pitch = PU_pitch + (pitch_now - PU_pitch) * passed * 0.3
			
			V_stab = airspeed
			V_smth = V_stab
			
			--M_stab = mach
			--toga_alt = alt
			H_stab = alt			
			
		elseif pitch_submode == 4 then -- stab H mode
			
			-- PID part
			-- P
			local P_H = alt - H_stab
			
			if P_H > 100 then P_H = 100
			elseif P_H < -100 then P_H = -100 end
			
			-- I
			--I_H = get(h_integral)
			
			--I_H = I_H - sign(I_H) * passed * 0.0001
			
			-- if I_H > 0.1 then I_H = 0.1
			-- elseif I_H < -0.1 then I_H = -0.1 end
			
			
			-- D
			local D_H = 0
			if passed ~= 0 then
				D_H = (alt - H_last) / passed
			end
			
			-- near ground coefs
			--local K_PH = line(mach, 0.3, 0.1, 0.8, 0.05) --0.1
			--local K_DH = line(mach, 0.3, 0.3, 0.8, 0.15) * (1 - absu_smooth * 0.5)--0.3 * (1 - absu_smooth * 0.5)
			-- local K_PH=0.1*(1+bool2int(gear_down))/2
			-- local K_DH=0.4*(1 - absu_smooth)/2
			-- local K_IH=0.002/2

			local PID_part = P_H * 0.1*(1+bool2int(gear_down or get(rv5_alt)<700)) + D_H * 0.4*(1 - absu_smooth) + get(h_integral)*0.002

			
			pitch_need = -math.min(math.max(PID_part,-10),10) + (PU_pitch-pitch_now+pitch_base)*2
			
			
			
			if pitch_need > 17 * 0.5 then pitch_need = 17 * 0.5
			elseif pitch_need < -17 * 0.5 then pitch_need = -17 * 0.5 end
			
			--print(pitch_need, "  ", P_H * K_PH, "  ", D_H * K_DH)
			
			--PU_pitch = PU_pitch + (pitch_now - PU_pitch) * passed * 0.3

			
			V_stab = airspeed
			V_smth = V_stab
			
			M_stab = mach
			M_smth = M_stab
			--toga_alt = alt
			--H_stab = alt			
		
		elseif pitch_submode == 5 then -- GS mode
			-- constants
			local KZ_gs = 15
			local KDZ_gs=200
			local K_thet1_gs=1
			local K_thet2_gs=2
			-- P and D parts
			local k_side_gs=gliss_dev* KZ_gs*(0.5+0.5*bool2int(RV_alt > 250))
			local k_d_side_gs=gliss_spd * KDZ_gs*(0.5+0.5*bool2int(RV_alt > 250))
			if secondNav then
				k_side_gs=gliss_dev2* KZ_gs*(0.5+0.5*bool2int(RV_alt > 250))
				k_d_side_gs=gliss_spd2 * KDZ_gs*(0.5+0.5*bool2int(RV_alt > 250))
				if RV_alt <= 100 and math.abs(gliss_dev2) > 0.25 and get(absu_bns_pitch_fail)==0 then
					set(absu_gs_out, 1)
				end
			else
				if RV_alt <= 100 and math.abs(gliss_dev) > 0.25 and get(absu_bns_pitch_fail)==0 then
					set(absu_gs_out, 1)
				end
			end
			-- pitch bias
			local thet_gs=get(bkk_pitch)+2.5*gs_caught-- add pitch on GS capture
			thet_hp=5/(5+passed)*thet_hp+5/(5+passed)*(thet_gs-thet_gs_last) -- pitch signal after high-pass
			thet_azp=5/(5+passed)*thet_azp+5/(5+passed)*(thet_gs-thet_gs_last)*K_thet2_gs -- additional pitch signal for auto-approach
			thet_gs_last=thet_gs
			-- resulting elevator command
			local T_lp_gs=1+bool2int(RV_alt < 100)
			elev_cmd_gs=T_lp_gs/(T_lp_gs+passed)*elev_cmd_gs+passed/(T_lp_gs+passed)*(-k_side_gs -k_d_side_gs-thet_hp*K_thet1_gs)
			pitch_need = elev_cmd_gs-thet_azp*bool2int(pitch_mode==2)
			-- if passed~=0 then
				-- set(db1,k_side_gs)
				-- set(db2,k_d_side_gs)
				-- set(db3,thet_hp*K_thet1_gs)
				-- set(db4,elev_cmd_gs)
			-- end
				
			V_stab = airspeed
			V_smth = V_stab
			
			M_stab = mach
			M_smth = M_stab
			
			H_stab = alt		
			
		
		
		elseif pitch_submode == 6 and get(absu_calc_toga_fail) == 0 then -- TOGA mode
			

			if flaps < flaps_prev and math.abs(flaps-43)<0.1 then 
				pitch_base_GA=2
				--pitch_GA=pitch_base_GA
				V_GA = 345
				pitch_GA_prev=0
			elseif flaps < flaps_prev and math.abs(flaps-27)<0.1 then
				pitch_base_GA=2.5
				--pitch_GA=pitch_base_GA
				V_GA = 400 
				pitch_GA_prev=0
			end
			-- Target pitch PI
			pitch_GA_prev=pitch_GA_prev+pitch_base_GA*passed/15
			local pitch_GA=math.max(0,pitch_base_GA-pitch_GA_prev)
			--set(db1,pitch_GA)
			-- Target speed PD
			V_smth = V_smth + (airspeed - V_smth) * passed * 1
			local P_V = V_smth - V_GA
			
			if P_V > 9 then P_V = 9
			elseif P_V < -9 then P_V = -9 end

			local D_V = 0
			if passed ~= 0 then
				D_V = (V_smth - V_last) / passed
			end			
			
			local K_PV = 0.25
			local K_DV = 0.35-- * (1 - absu_smooth) * 0.5
			-- Current pitch PI
			local pitch_tet_GA_lim=20
			pitch_GA_PI=pitch_GA_PI+get(bkk_pitch)*passed/17
			if pitch_GA_PI>pitch_tet_GA_lim then
				pitch_GA_PI=pitch_tet_GA_lim
			end
			--Low pass for speed and pitch
			local PID_part = P_V * K_PV + D_V * K_DV+pitch_GA--+pitch_GA_PI)
			if PID_part > 5.7 then PID_part = 5.7
			elseif PID_part < -2.4 then PID_part = -2.4 end
			local Tp_ga=0.5
			cmd_GA =Tp_ga/(Tp_ga+passed)*cmd_GA+passed/(Tp_ga+passed)*PID_part-- low pass, Tp=0.5s
			--set(db2,cmd_GA)
			--set(db3,(get(bkk_pitch)-pitch_GA_PI))
			cmd_GA_needle=PID_part

			pitch_need = cmd_GA-(get(bkk_pitch)-pitch_GA_PI)
	
			M_stab = mach
			M_smth = M_stab
			
			H_stab = alt			
			--toga_alt = alt
			
		else
			--PU_pitch = pitch_now
			
			V_stab = airspeed
			V_smth = V_stab
			
			M_stab = mach
			M_smth = M_stab
			
			H_stab = alt			
			
		
		end
		
		-- save last values
		V_last = V_smth
		M_last = M_smth
		H_last = alt
		--GS_last = GS_smth
		
		
		
	--	print(pitch_need)
		-- controll the elevator and trimmer
		if pitch_mode == 1 then -- manual mode
			local elev_lim = 0.345
			local ail_lim = 0.5
			-- if mach < 1 then
				-- pitch_coef = interpolate(pitch_elev_tbl, mach)
			-- else pitch_coef = -0.2 
			-- end
			local absu_k=math.max(2.125*get(int_pitch_trim)+0.1667,-0.4) -- ABSU Pitch constant as function of trimmed position
			--set(absu_debug1,absu_k)
			local elev_need = (get(yoke_pitch)-get(int_pitch_trim)) * absu_k * get(hydro_long_control)*(1-get(bshu_tet_fail)) - pitch_W * 1/30 -- yoke plus damper, K_damp=1 as per literature
			if elev_need > elev_lim then elev_need = elev_lim
			elseif elev_need < -elev_lim then elev_need = -elev_lim end
			
			--set(absu_contr_pitch, elev_need)
			if MASTER then set(absu_pitch_trimm, 0) end
			pitch_base=get(bkk_pitch)
			PU_pitch=0
			V_stab = airspeed
			V_smth = V_stab
			
			M_stab = mach
			M_smth = M_stab
			
			H_stab = alt
			
			--PU_pitch = pitch_now
			--pitch_need_smth = pitch_now
			
			pitch_res_need = elev_need
			
		elseif pitch_mode == 2 then -- stab mode
			
			if get(absu_calc_pitch_fail) == 0 then pitch_res_need = pitch_holder(pitch_need) end
			--if get(absu_calc_pitch_fail) == 1 then pitch_res_need = 0 end

		end
			-- flap extension compensation 
		local theta_add=0
		if flaps>0 and pitch_submode<5 then
			if flap_timer<0.1 then
				theta_add=5
			elseif flap_timer<16 and flap_timer>0.1 then
				theta_add=8
			end
		end
		theta_dop =passed/(1+passed)*theta_add+theta_dop*1/(1+passed)
		pitch_show = pitch_need
		--set(db1,theta_dop)
	else
		-- if power==0 then
			-- if MASTER then set(absu_pitch_trimm, 0) end
			--set(absu_contr_pitch, 0)
			--pitch_need_smth = 0
			theta_dop=0
			pitch_base = get(bkk_pitch)
			PU_pitch = 0
			pitch_res_need = 0
		--end
		
	end
	
	-- results pitch position --
	-- local d_contr_pitch=(pitch_res_need - get(absu_contr_pitch)) * ((1-get(absu_ra1_pitch_fail)) * HS1+(1-get(absu_ra2_pitch_fail)) * HS2+(1-get(absu_ra3_pitch_fail)) * HS3) * 3.33
	-- if d_contr_pitch>0.8 then
		-- d_contr_pitch=0.8
	-- elseif d_contr_pitch<-0.8 then
		-- d_contr_pitch=-0.8
	-- end
	if MASTER then
		set(absu_contr_pitch,pitch_res_need)
	end
	------------------------------
	-- roll part --
	------------------------------
	
	local course_now = get(course_gpk)
	
	
	if power then -- SAU roll part
		
		
		-- save or reset course handling in RESET mode
		local roll_handle = get(get(absu_turn_handle))*28/50
		
		
		if math.abs(roll_handle) <= 1 and roll_mode == 2 and roll_submode == 1 then 
			course_stab_timer = course_stab_timer + passed -- roll the timer to hold course
		else 
			course_stab_timer = 0
			course_stab_act = course_now
		end
		
		
		if roll_submode == 1 or roll_submode == 10 then -- stab mode
		
			
			
			
		
			if course_stab_timer > 0 and course_stab_timer < 8 then
				local diff = course_now - course_stab_act
				if diff > 180 then diff = diff - 360
				elseif diff < -180 then diff = diff + 360 end
				
				course_stab_act = course_stab_act + diff * passed * 3
			end
		
			if get(tks_course_set)~=0 then
				course_stab_act = course_now
			end			
			local course_diff = course_stab_act - course_now
			
			if course_diff > 180 then course_diff = course_diff - 360
			elseif course_diff < -180 then course_diff = course_diff + 360 end
			

			if course_stab_timer > 8 then -- course part
				roll_need = course_diff
			else 
				if math.abs(roll_handle) <= 1 then 
					roll_need = 0 
				else 
					roll_need = roll_handle * passed/(1.6+passed)+roll_need*1.6/(1.6+passed)--low pass with Tp=0.6s (educated guess)
					
				end
				
			end
			
			-- limit the roll
			if roll_need > 30 then roll_need = 30
			elseif roll_need < -30 then roll_need = -30 end
		
			
			roll_show = 0
			
			--ILS_dev_smth = 0

			
			
		elseif roll_submode == 2 then -- ZK mode
			
			local zk_course = get(pkp_course_L)
			
			course_now = get(pkp_gyro_course_L)
			
			if get(ZK_select) == 1 then 
				zk_course = get(pkp_course_R) 
				course_now = get(pkp_gyro_course_R)
			end
			
			local course_diff = zk_course - course_now
			if course_diff > 180 then course_diff = course_diff - 360
			elseif course_diff < -180 then course_diff = course_diff + 360 end
			
			--roll_need = roll_need*5/(5+passed) + course_diff*passed/(5+passed) -- low pass
			roll_need = course_diff
			-- limit the roll
			if roll_need > 25*2/3.6 then roll_need = 25*2/3.6
			elseif roll_need < -25*2/3.6 then roll_need = -25*2/3.6 end
			
			roll_show = 0
			
			--ILS_dev_smth = 0
			
			
		elseif roll_submode == 3 then -- NVU mode	
		
			local nvu_course = get(nvu_res_course)
			local nvu_z = get(nvu_res_z)
			
			local kln_mode = get(nav_select) == 1
			
			local KZ = 0.02 -- deg roll / m
			local KPZ = 0.6 -- deg roll / m/s
			
			-- KLN source
			if kln_mode then
				nvu_course = get(kln_course)
				nvu_z = -get(kln_dev) * 1.852 -- km
			end
			
			
			-- GNS430 source
			if get(show_gns) == 1 and kln_mode then
				nvu_course = get(GNS430_dtk)
				local Z = -get(GNS430_dev) -- km
				--gps_Z_smooth = gps_Z_smooth - (gps_Z_smooth - Z) * passed
				nvu_z = Z
				
			end

			-- -- RXP source
			-- if get(show_gns) == 1 and get(show_RXP) == 1 and kln_mode then
				-- nvu_course = get(RXP_course)
				-- local Z = -get(RXP_dev) * 1.852 -- km
				-- --gps_Z_smooth = gps_Z_smooth - (gps_Z_smooth - Z) * passed
				-- nvu_z = Z
				
			-- end
			
			local side_lim = 2000 -- m
			local side_spd_lim = 160 -- m/s
			
			
				
			local side = nvu_z * 1000 -- meters
			if side > side_lim then side = side_lim
			elseif side < -side_lim then side = -side_lim end	
			
			-- PID
			local PZ = 0
			
			if not kln_mode or (get(show_gns) >= 1 and kln_mode) then -- NVU or GNS mode
				if passed ~= 0 and math.abs(nvu_course-gps_course_prev)<2 then 
					PZ = (nvu_z - nvu_z_last) / passed 
				end
			else -- KLN mode
				if nvu_z ~= nvu_z_last then -- new data arrived
					if kln_frame_timer ~= 0 and math.abs(nvu_course-gps_course_prev)<2 then
						kln_spd = (nvu_z - kln_Z_last) / kln_frame_timer 
					end
					
					kln_Z_last = nvu_z
					kln_frame_timer = 0
				else
					kln_frame_timer = kln_frame_timer + passed
				end
				PZ = kln_spd
				
			end
			
			
			gps_course_prev=nvu_course
			nvu_z_last = nvu_z
			
			
			local side_spd = PZ * 1000 -- meters/sec
			
			if side_spd > side_spd_lim then side_spd = side_spd_lim
			elseif side_spd < -side_spd_lim then side_spd = -side_spd_lim end
			
			
			-- fix turns
			--if math.abs(nvu_course - nvu_course_last) > 0.5 then course_change_timer = 0 end
			--nvu_course_last = nvu_course
			
			-- if course_change_timer < 3 then -- course changing. hold previous parameters to prevent wrong roll command
				-- side = 0 --nvu_side_last
				-- side_spd = 0 -- nvu_spd_last
			-- --else -- course stabilised. fly bu new parameters
				-- --nvu_side_last = side
				-- --nvu_spd_last = side_spd
			-- end
						
			--course_change_timer = course_change_timer + passed
			
			
			
			course_now = get(pkp_gyro_course_L)

			roll_need = roll_need*3/(3+passed) + (-side * KZ - side_spd * KPZ)*passed/(3+passed) -- low pass
			--end
			
			
			
			if roll_need > 25+get(show_gns) then roll_need = 25+get(show_gns)
			elseif roll_need < -25-get(show_gns) then roll_need = -25-get(show_gns) end
			
			-- -- fix rapid course changing
			-- local course_delta = nvu_course - course_now
			-- while course_delta > 180 do course_delta = course_delta - 360 end
			-- while course_delta < -180 do course_delta = course_delta + 360 end
			
			-- if math.abs(course_delta) > 90 then
				-- roll_need = sign(course_delta) * 25
			-- end
			
			
			
			roll_show = roll_need
			
			if not nav_on then roll_need = 0 end
			
			--ILS_dev_smth = 0
			
		
		elseif roll_submode == 4 or roll_submode == 5 then -- AZ1 and AZ2 modes
		
			local slip_angle = get(diss_slip_angle)
			local course_now = get(course_gpk)
			
			--local vor_course = get(obs_1)
			local course_dev = -loc_dev * 10 -- deg from given radial
			
			if roll_submode == 5 then
				course_dev = -loc_dev2 * 10 -- deg from given radial
			end
			
			local pnp_course = get(pkp_obs_1)
			if get(absu_zpu_sel) == 1 then pnp_course = get(pkp_obs_2) end -- change course source
			
			
			
			vor_slip_act = vor_slip_act + (slip_angle - vor_slip_act) * passed * 0.5 -- DISS angle
			local vor_dev_lim = 4
			--limit the VOR signal			
			if course_dev > vor_dev_lim then course_dev = vor_dev_lim
			elseif course_dev < -vor_dev_lim then course_dev = -vor_dev_lim end
			
			--course_dev = course_dev * 10
			
			--vor_dev_act = vor_dev_act + (course_dev - vor_dev_act) * passed * 0.5 -- VOR deviation
			
			local course_diff = pnp_course - course_now
			if course_diff > 180 then course_diff = course_diff - 360
			elseif course_diff < -180 then course_diff = course_diff + 360 end
			
			-- roll_need = (course_diff - vor_slip_act) * 1.3 + vor_dev_act * 5
			--roll_need = (course_diff - vor_slip_act) * 1.3 + vor_dev_act * 8
			roll_need = roll_need*6/(6+passed) + ((course_diff - vor_slip_act) * 1.3 + course_dev * 8)*passed/(6+passed) -- low pass
			
			if roll_need > 25 then roll_need = 25
			elseif roll_need < -25 then roll_need = -25 end
			
			roll_show = roll_need
			
			if not nav_on then roll_need = 0 end
			

			
			course_stab_act = course_now
			course_stab_timer = 0
			
			--ILS_dev_smth = 0
			
		
		elseif roll_submode == 6 then -- APP mode

			local pnp_course = get(pkp_obs_1)
		
			if get(absu_zpu_sel) == 1 then -- change course source
				pnp_course = get(pkp_obs_2)
			end
			-- final app course difference
			local kurs_tks=course_now
			if kurs_tks<0 then
				kurs_tks=kurs_tks+360
			end
			
			local delta_ZK=kurs_tks-pnp_course
			if delta_ZK > 180 then
				delta_ZK = delta_ZK - 360
			elseif delta_ZK < -180 then
				delta_ZK = delta_ZK + 360 
			end
			
			local delta_ZK_speed=0
			if passed ~= 0 then
				delta_ZK_speed=(delta_ZK-nvu_z_last)/passed
			end
			nvu_z_last=delta_ZK -- we hijack this variable to remain below upvalue limits
			local rv_alt = get(rv5_alt)
			
			local above250 = bool2int(rv_alt > 250)
			
		
			local terminal_phase=bool2int(pitch_submode == 5 or above250==1)
			-- PD for course
			local KZ = 20
			local KDZ = 550*(0.5+0.5*terminal_phase)
			local KZK=1*above250
			local KZK2=1*above250
			local KDZK=0.5+0.5*terminal_phase
			local side_lim = 27
			local roll_rate=1
			local T_lp=2
			local k_side=loc_dev*KZ-delta_ZK*KZK2
			local k_d_side=dev_spd * KDZ
			if secondNav then
				k_side=loc_dev2*KZ-delta_ZK*KZK2
				k_d_side=dev_spd2 * KDZ
				if RV_alt <= 100 and math.abs(loc_dev2) > 0.25 and get(absu_bns_roll_fail)==0 then
					set(absu_course_out, 1)
				end
			else
				if RV_alt <= 100 and math.abs(loc_dev) > 0.25 and get(absu_bns_roll_fail)==0 then
					set(absu_course_out, 1)
				end
			end
			if k_side>side_lim then
				k_side=side_lim	
			elseif k_side<-side_lim then
				k_side=-side_lim
			end
			local k_zk=delta_ZK * KZK
			local k_d_zk=delta_ZK_speed * KDZK
			local k_azp=0.3*(1-above250)
			-- additional feedback below 250m
			
			azp_feedback=azp_feedback-(azp_feedback-roll_need)*passed*10
			-- if passed~=0 then
				-- set(db1,k_side)
				-- set(db2,k_d_side)
				-- set(db3,KDZ)
				-- set(db4,dev_spd)
			-- end
			local roll_calc = -k_side -k_d_side - k_zk -k_d_zk + azp_feedback*k_azp
			-- limit roll
			if roll_calc > 8+13.5*above250 then roll_calc = 8+13.5*above250
			elseif roll_calc < -(8+13.5*above250) then roll_calc = -(8+13.5*above250) end
			local TP_loc=1
			roll_need = roll_need*TP_loc/(TP_loc+passed) + roll_calc*passed/(TP_loc+passed) -- low pass

			roll_show = roll_need

			
		
		elseif roll_submode == 7 and get(absu_calc_toga_fail) == 0 then -- TOGA mode
			
			local course_diff = course_stab_act - course_now
			
			if course_diff > 180 then course_diff = course_diff - 360
			elseif course_diff < -180 then course_diff = course_diff + 360 end
			

			roll_need = course_diff * 1.5

			if roll_need > 20 then roll_need = 20
			elseif roll_need < -20 then roll_need = -20 end
			
			roll_show = roll_need
			
			--ILS_dev_smth = 0
			

			
		else 
			course_stab_timer = 0
			course_stab_act = course_now
			--ILS_dev_smth = 0
			
			roll_show = 0

			
		end	
		
		
		
		
		-- set the ailerons	
		
		if roll_mode == 1 then -- manual control
			absu_roll_damp=1.6/(1.6+passed)*absu_roll_damp+1.6/(1.6+passed)*(roll_W-roll_W_prev)
			local absu_roll_damp_K=math.abs(absu_roll_damp/roll_W);
			roll_W_prev=roll_W
			absu_roll_gain=(absu_roll_gain-(absu_roll_gain-roll_cmd)/0.4*passed)*(1-get(bshu_gam_fail))
			--set(absu_debug1,absu_roll_damp)
			--set(absu_debug2,absu_roll_gain)
			--local ail_need = roll_cmd * roll_coef - roll_W * 0.08 * (0.3 + 0.01 * math.abs(roll_W2) / (0.01 * math.abs(roll_W2) + 1))
			local ail_need = -1.5/20*absu_roll_damp+absu_roll_gain
			if ail_need > 0.5 then ail_need = 0.5
			elseif ail_need < -0.5 then ail_need = -0.5 end
			
			
			
			--set(absu_contr_roll, ail_need)
			
			roll_res_need = ail_need
			
			--roll_need_smth = roll_now
			
		elseif roll_mode == 2 then -- stab mode
			
			-- if roll_need - roll_need_smth > 2 then roll_need_smth = roll_need_smth + passed * 3
			-- elseif roll_need - roll_need_smth < -2 then roll_need_smth = roll_need_smth - passed * 3
			-- else roll_need_smth = roll_need_smth + (roll_need - roll_need_smth) * passed * 3
			-- end
			
			
			
			if get(absu_calc_roll_fail) == 0 then roll_res_need = roll_holder(roll_need) end
			
			--if get(absu_calc_roll_fail) == 1 then roll_res_need = 0 end
			
			--set(absu_contr_roll, ail_need)
			
			
			
		end
	
	else
		--set(absu_contr_roll, 0)
		--if power==0 then
			roll_res_need = 0
			loc_dev=0
			gliss_dev=0
			loc_dev2=0
			gliss_dev2=0
			--roll_need_smth = roll_now
		--end
	end
	-- local d_contr_roll=(roll_res_need - get(absu_contr_roll)) * ((1-get(absu_ra1_roll_fail)) * HS1+(1-get(absu_ra2_roll_fail)) * HS2+(1-get(absu_ra3_roll_fail)) * HS3) * 3.33
	-- if d_contr_roll>0.8 then
		-- d_contr_roll=0.8
	-- elseif d_contr_roll<-0.8 then
		-- d_contr_roll=-0.8
	-- end
	--set(absu_debug1,d_contr_pitch)
	-- set roll results --
	if MASTER then
		set(absu_contr_roll, roll_res_need)
	end
	
	

	-------------------------
	-- yaw controls --
	-------------------------
	
	if roll_mode >= 1 then -- SAU roll part
		
		yaw_res_need = yaw_holder()
		
	else
		
		--set(absu_contr_yaw, 0)
		--if power==0 then
			yaw_res_need = 0
		--end
	
	end
	
	--if get(gear1_deflect) > 0.01 then yaw_res_need = 0 end
	-- set yaw results --
	-- local d_contr_yaw=(yaw_res_need - get(absu_contr_yaw)) * ((1-get(absu_ra1_yaw_fail)) * HS1+(1-get(absu_ra2_yaw_fail)) * HS2+(1-get(absu_ra3_yaw_fail)) * HS3) * 3.33
	-- if d_contr_yaw>0.8 then
		-- d_contr_yaw=0.8
	-- elseif d_contr_yaw<-0.8 then
		-- d_contr_yaw=-0.8
	-- end
	if MASTER then
	set(absu_contr_yaw, yaw_res_need)
	end
	-----------------------------------
	-- set pitch and roll indicators
	-----------------------------------
	
	local flag_roll = 0
	local flag_pitch = 0
	
	local nav_1_cs_flag = get(nav_cs_flag_1) == 1
	local nav_2_cs_flag = get(nav_cs_flag_2) == 1
	
	local nav_1_gs_flag = get(nav_gs_flag_1) == 1
	local nav_2_gs_flag = get(nav_gs_flag_2) == 1
	
	local nav_1_fr = get(freq_1)
	local nav_2_fr = get(freq_2)
	
	
	-- app_on 
	
	--if roll_submode <3 then -- reset or ZK modes
		
		-- roll_show = 25
		-- pitch_show = 10
		
	
	if nav_on and get(absu_pnp_mode)>0 and get(absu_pnp_mode)<4 then -- Nav modes
			pitch_show = 10
		if flag_roll >0 then
			roll_show = 25
		elseif roll_submode > 2 and roll_submode <6 and flag_roll ==0 then
			roll_show = roll_show - roll_now
		else
			roll_show = 0
		end	
		
	elseif app_on and get(absu_pnp_mode)==4 then -- Approach Modes		
		if flag_roll >0 then
			roll_show = 25
		elseif roll_submode == 6 and flag_roll==0 then 
			roll_show = roll_show - roll_now
		else
			roll_show = 0	
		end
		if flag_pitch >0 then
			pitch_show = 10
		elseif pitch_submode == 5 and flag_pitch==0 then 
			pitch_show = pitch_show - pitch_now
		else
			pitch_show = 0					
		end			
	else
		--if not needles_on then
			roll_show = 25
			pitch_show = 10
		-- else
			-- roll_show = 0
			-- pitch_show = 0
		-- end
		
	end
	if pitch_submode == 6 then -- TOGA mode
		--pitch_show = pitch_GA
		pitch_show = cmd_GA_needle
		roll_show = 25
		-- if not needles_on then
			-- pitch_show = 10
			-- --pitch_show = 0
			
		-- end	
	end
	

	-- roll failures
	-- if (get(absu_calc_roll_fail)==1 or ((nav_1_cs_flag and not secondNav) or (secondNav and nav_2_cs_flag)) or get(tks_fail_left) + get(tks_fail_right) == 2 or get(absu_bns_roll_fail)==1 or get(absu_contr_roll_fail)==1 ) and get(absu_pnp_mode)==4 or not power then
		-- flag_roll = 1
		-- roll_show = 25
	-- end
	if (get(absu_calc_roll_fail)==1 or get(pnp_course_flag)>0 or get(absu_contr_roll_fail)==1 ) or not power then
		flag_roll = 1
		roll_show = 25
	end
	if (get(vor_avtomat)==1 or get(absu_contr_roll_fail)==1 or get(absu_calc_roll_fail)==1 ) and nav_on then
		flag_roll = 1
		roll_show = 25
	end
	
	-- pitch failures
	-- if ((get(absu_calc_pitch_fail) == 1 or ((nav_1_gs_flag and not secondNav) or (secondNav and nav_2_gs_flag)) or (get(rv_flag)+get(rv_flag2)>1 and get(outer_marker)>0) or get(absu_contr_pitch_fail)==1 or get(absu_bns_pitch_fail)==1) ) and get(absu_pnp_mode)==4 and get(pitch_sub_mode)~=6 or not power then
		-- flag_pitch = 1
		-- pitch_show = 10
	-- end
	if ((get(absu_calc_pitch_fail) == 1 or get(pnp_gs_flag)>0 or (get(rv_flag)+get(rv_flag2)>1 and get(outer_marker)>0 and pitch_submode==5) or get(absu_contr_pitch_fail)==1) and pitch_submode~=6) or not power then
		flag_pitch = 1
		pitch_show = 10
	end
	
	
	-- lamps
	if get(rv_angle) <= get(dh_set)+0.5 or RV_alt > 100 or get(absu_bns_roll_fail)==1 then
		set(absu_course_out, 0)
	end
	if get(rv_angle) <= get(dh_set)+0.5 or RV_alt > 100 or get(absu_bns_pitch_fail)==1 then

		set(absu_gs_out, 0)
	end
			
	
	
	
	if MASTER then
		if power then
			set(absu_roll_ind, roll_show)
			set(absu_pitch_ind, pitch_show)
		end

		set(absu_roll_flag, flag_roll)
		set(absu_pitch_flag, flag_pitch)
		
		
		
	end	
	if flaps>0 and flaps_prev==0 then
		flap_timer=20
		--flap_timer2=20
	end
	flaps_prev=flaps
	if flap_timer>0 then
		flap_timer=flap_timer-passed
		if flap_timer<0 then
			flap_timer=0
		end
	end
	--Reset some signals
	if pitch_submode~=pitch_submode_prev then
		pitch_base=get(bkk_pitch)
		PU_pitch=theta_dop/2
		thet_hp=0
		thet_gs=0
		elev_cmd_gs=0
		thet_azp=0
		azp_feedback=0
		if pitch_submode~=6 then
			--pitch_base_smth=0
			pitch_base_GA=10
			V_GA=290
			cmd_GA=0
			cmd_GA_needle=0
			pitch_GA_prev=0
			pitch_GA_PI=0
			--thet_GA=0
			--pitch_GA=0
		end
	end
	pitch_submode_prev=pitch_submode
	if roll_submode~=roll_submode_prev then
		nvu_z_last=0
		gps_course_prev=0
		roll_need=0
		--vor_dev_act=0
		vor_slip_act=0
	end
	roll_submode_prev=roll_submode
	-- if flap_timer2>0 then
		-- flap_timer2=flap_timer2-passed
		-- if flap_timer2<0 then
			-- flap_timer2=0
		-- end
	-- end
	-- set(db1,pitch_need)
	-- set(db2,pitch_base)
end



------------------
-- functions --
------------------

function pitch_holder(elev_cmd) -- manipulates the elevator and trimmer by given elevator angle
	local pitch_submode = get(pitch_sub_mode)
	local RV_alt = get(rv5_alt)
	--set(db1,theta_dop)
	--set(db3,theta_add)
	local delta = (elev_cmd-theta_dop*bool2int(gear_down or get(cockpit_80s)==1)*bool2int(pitch_submode<5))/29
	local roll_part = math.abs(get(bkk_roll))*(0.00137+0.0031*bool2int(gear_down or RV_alt<700))
	if pitch_submode==5 then
		delta = (elev_cmd-get(bkk_pitch))*4/29
		if delta > 7/29-bool2int(RV_alt <= 250)*3.5/29 then 
			delta = 7/29-bool2int(RV_alt <= 250)*3.5/29
		elseif delta < -7/29+bool2int(RV_alt <= 250)*3.5/29 then 
			delta = -7/29+bool2int(RV_alt <= 250)*3.5/29 
		end
		roll_part =0
	elseif pitch_submode==6 then
		delta = (elev_cmd)*3/29
		if delta > 17/29 then 
			delta = 17/29
		elseif delta < -7/29 then 
			delta = -7/29
		end
		roll_part =0
	end
	local D = get(pitch_rate) * (1 - get(absu_damp_pitch_fail))
	local K_D=0.0345

	--local PID_part = P * 0.1* interpolate(pitch_coeff_red_table,get(ias)*1.852) - D * 0.15 * interpolate(pitch_coeff_red_table,get(ias)*1.852)
	if pitch_submode>1 and pitch_submode<5 then
		K_D=0.0345+0.0655*bool2int(flap_timer>16 or flap_timer==0)
		--set(db3,K_D)
	elseif pitch_submode == 5 or pitch_submode == 6 then
		K_D=0.1345
	end
	local PID_part = delta - K_D*D 
	
	-- flaps and gear part
	--if gear_down then
		--pitch_stab_roll_coef = 0.00425 * 2
		--flap_coef = 0.025
	--else
		--flap_coef = 0.005
	--end
	
	--local flaps_part = interpolate(flaps_tbl, flaps) * flap_coef

	
	
	-- roll part
	--local roll_part = math.abs(roll_now) * pitch_stab_roll_coef * line(mach, 0.4, 1.3, 0.8, 0.8)*0.15

	local elev_pos = PID_part + roll_part-- + flaps_part

	-- limit elevator
	if elev_pos > 0.345 then elev_pos = 0.345
	elseif elev_pos < -0.345 then elev_pos = -0.345 end
	

	--set(db3,delta)
	
	
	
	
	--pitch_act = pitch_act + (elev_pos - pitch_act) * passed * 5
	
	
if MASTER then
	-- set trimmer
	if (delta+ roll_part) > (0.07-0.035*bool2int(pitch_submode == 6)) then set(absu_pitch_trimm, 1)
	elseif (delta+ roll_part) < (-0.07+0.035*bool2int(pitch_submode == 6)) then set(absu_pitch_trimm, -1)
	else set(absu_pitch_trimm, 0) end
end
	-- set elevator pos
	--set(absu_contr_pitch, pitch_act)
	
	
	return elev_pos


end


function roll_holder(roll_hold) -- manipulates the elerons by given roll angle

	local roll_submode = get(roll_sub_mode)
	local roll_now=get(bkk_roll)
	local P = (roll_hold - roll_now)*2
	if roll_submode ==2 then
		P = roll_hold*3.6 - roll_now*2
	end
	local roll_W = get(roll_rate)
	local roll_W2 = get(roll_acc)
	
	if get(absu_damp_roll_fail) == 1 then
		roll_W = 0
		roll_W2 = 0
	end
	
	
	--local roll_stab_coef = 2
	-- if mach < 0.5 then roll_stab_coef = line(mach, 0.5, 0.1, 0, 0.2) end
	
	local roll_cmd = (P  - roll_W * 1.5)*1/20-- * (0.5 + 0.01 * math.abs(roll_W2) / (0.01 * math.abs(roll_W2) + 1))
	
	-- set smooth
	--roll_act = roll_act + (PID - roll_act) * passed * 5
	-- set limit
	if roll_cmd > 0.5 then roll_cmd = 0.5
	elseif roll_cmd < -0.5 then roll_cmd = -0.5 end	
	
	--set(absu_contr_roll, roll_act)
	
	return roll_cmd
	

end


function yaw_holder()
	
	-- -- PID components
	-- local P = get(slip) * (1 - get(absu_damp_yaw_fail))
	-- local KP = 0.01
	
	-- local K_I = 0--0.001
	-- yaw_I = yaw_I + P * passed * K_I
	
	-- yaw_I = yaw_I - sign(yaw_I) * passed * 0.1 -- 0.01
	
	-- if yaw_I > 0.1 then yaw_I = 0.1
	-- elseif yaw_I < -0.1 then yaw_I = -0.1 end
	
	-- local D = 0
	
	-- if passed ~= 0 then
		-- D = (P - yaw_P_last) / passed
	-- end
	-- yaw_P_last = P
	
	-- local K_D = 0.01
	local yaw_W = get(yaw_rate)* (1 - get(absu_damp_yaw_fail))
	absu_yaw_damp=2.5/(2.5+passed)*absu_yaw_damp+2.5/(2.5+passed)*(yaw_W-yaw_W_prev)
	yaw_W_prev=yaw_W
	--local ail_need = roll_cmd * roll_coef - roll_W * 0.08 * (0.3 + 0.01 * math.abs(roll_W2) / (0.01 * math.abs(roll_W2) + 1))
	local yaw_act = -2.5/25*absu_yaw_damp - 4.5/25*yaw_W*bool2int(get(pitch_sub_mode)==5 and get(pitch_main_mode)==2)
	
	-- local PID = P * KP + yaw_I + D * K_D
	
	-- yaw_act = yaw_act + (PID - yaw_act) * passed * 5
	
	if yaw_act > 0.4 then yaw_act = 0.4
	elseif yaw_act < -0.4 then yaw_act = -0.4 end	
	
	-- --set(absu_contr_yaw, yaw_act)
	

	return yaw_act

end

