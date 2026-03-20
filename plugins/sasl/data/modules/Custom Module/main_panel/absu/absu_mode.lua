-- this is ABSU modes logic

-- controls
defineProperty("absu_zpu_sel", globalPropertyi("tu154b2/custom/switchers/console/absu_zpu_sel")) -- переключатель ЗПУ. лев - прав
defineProperty("absu_nav_on", globalPropertyi("tu154b2/custom/switchers/console/absu_nav_on")) -- стрелки навигация
defineProperty("absu_landing_on", globalPropertyi("tu154b2/custom/switchers/console/absu_landing_on")) -- стрелки посадка
defineProperty("absu_needles_on", globalPropertyi("tu154b2/custom/switchers/console/absu_needles_on")) -- стрелки
defineProperty("absu_speed_mode", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_mode")) -- режим СТУ. 0 - откл, 1 - нву, 2 - аз1, 3 - аз2, 4 - пос
defineProperty("absu_speed_change", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_change")) -- ручка изменения скорости. 
defineProperty("absu_speed_off", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_off")) -- отключение 1 и 2
defineProperty("absu_speed_prepare", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_prepare")) -- подготовка
defineProperty("absu_speed_us_right_left", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_us_right_left")) -- подготовка

defineProperty("absu_roll_ch_on", globalPropertyi("tu154b2/custom/switchers/console/absu_roll_ch_on")) -- выключатель канал крена
defineProperty("absu_pitch_ch_on", globalPropertyi("tu154b2/custom/switchers/console/absu_pitch_ch_on")) -- выключатель канала тангажа
defineProperty("absu_smooth_on", globalPropertyi("tu154b2/custom/switchers/console/absu_smooth_on")) -- выключатель "в болтанку"

defineProperty("absu_turn_handle", globalPropertyi("tu154b2/custom/switchers/console/absu_turn_handle")) -- ручка поворота
defineProperty("absu_pitch_wheel", globalPropertyi("tu154b2/custom/switchers/console/absu_pitch_wheel")) -- колесико спуска, подъема

defineProperty("hydro_ra56_rud_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_1")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_2")) -- гидропитание РА56 курс
defineProperty("hydro_ra56_rud_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_3")) -- гидропитание РА56 курс

defineProperty("hydro_ra56_ail_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_1")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_2")) -- гидропитание РА56 крен
defineProperty("hydro_ra56_ail_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_3")) -- гидропитание РА56 крен

defineProperty("hydro_ra56_elev_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_1")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_2")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_elev_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_3")) -- гидропитание РА56 тангаж

defineProperty("sau_stu_on", globalPropertyi("tu154b2/custom/switchers/ovhd/sau_stu_on"))  -- САУ СТУ выключатель

--defineProperty("tro_comm_1", globalPropertyf("sim/flightmodel/engine/ENGN_thro[0]"))
--defineProperty("tro_comm_2", globalPropertyf("sim/flightmodel/engine/ENGN_thro[1]"))
--defineProperty("tro_comm_3", globalPropertyf("sim/flightmodel/engine/ENGN_thro[2]"))

defineProperty("tro_comm_1", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_0")) 
defineProperty("tro_comm_2", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_1")) 
defineProperty("tro_comm_3", globalPropertyf("tu154b2/custom/SC/engine/ENGN_thro_2"))



-- buttons
defineProperty("absu_zk", globalPropertyi("tu154b2/custom/buttons/console/absu_zk")) -- кнопка ЗК на панели АБСУ
defineProperty("absu_reset", globalPropertyi("tu154b2/custom/buttons/console/absu_reset")) -- кнопка сброс программы на панели АБСУ
defineProperty("absu_nvu", globalPropertyi("tu154b2/custom/buttons/console/absu_nvu")) -- кнопка НВУ на панели АБСУ
defineProperty("absu_az1", globalPropertyi("tu154b2/custom/buttons/console/absu_az1")) -- кнопка АЗ 1 на панели АБСУ
defineProperty("absu_az2", globalPropertyi("tu154b2/custom/buttons/console/absu_az2")) -- кнопка АЗ 2 на панели АБСУ
defineProperty("absu_az1_arm", globalPropertyi("tu154b2/custom/buttons/console/absu_az1_arm"))
defineProperty("absu_az2_arm", globalPropertyi("tu154b2/custom/buttons/console/absu_az2_arm"))
defineProperty("absu_nvu_arm", globalPropertyi("tu154b2/custom/buttons/console/absu_nvu_arm"))
defineProperty("absu_app_arm", globalPropertyi("tu154b2/custom/buttons/console/absu_app_arm"))
defineProperty("absu_gs_arm", globalPropertyi("tu154b2/custom/buttons/console/absu_gs_arm"))
defineProperty("absu_app", globalPropertyi("tu154b2/custom/buttons/console/absu_app")) -- кнопка заход на панели АБСУ
defineProperty("absu_gs", globalPropertyi("tu154b2/custom/buttons/console/absu_gs")) -- кнопка глиссада на панели АБСУ
defineProperty("absu_stab_m", globalPropertyi("tu154b2/custom/buttons/console/absu_stab_m")) -- кнопка M на панели АБСУ
defineProperty("absu_stab_v", globalPropertyi("tu154b2/custom/buttons/console/absu_stab_v")) -- кнопка V на панели АБСУ
defineProperty("absu_stab_h", globalPropertyi("tu154b2/custom/buttons/console/absu_stab_h")) -- кнопка H на панели АБСУ
defineProperty("absu_stab", globalPropertyi("tu154b2/custom/buttons/console/absu_stab")) -- кнопка СТАБ на панели АБСУ

defineProperty("absu_arrest", globalPropertyi("tu154b2/custom/buttons/console/absu_arrest")) -- кнопки арретировки МГВ
defineProperty("absu_speed_test_1", globalPropertyi("tu154b2/custom/buttons/console/absu_speed_test_1")) -- кнопка првоерки СТУ нижняя
defineProperty("absu_speed_test_2", globalPropertyi("tu154b2/custom/buttons/console/absu_speed_test_2")) -- кнопка првоерки СТУ верхняя

defineProperty("absu_stab_speed", globalPropertyi("tu154b2/custom/buttons/console/absu_stab_speed")) -- кнопка C на панели АБСУ
defineProperty("absu_throt_off_1", globalPropertyi("tu154b2/custom/buttons/console/absu_throt_off_1")) -- кнопка откл Г1 на панели АБСУ
defineProperty("absu_throt_off_2", globalPropertyi("tu154b2/custom/buttons/console/absu_throt_off_2")) -- кнопка откл Г2 на панели АБСУ
defineProperty("absu_throt_off_3", globalPropertyi("tu154b2/custom/buttons/console/absu_throt_off_3")) -- кнопка откл Г3 на панели АБСУ

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

defineProperty("absu_power_cc", globalPropertyf("tu154b2/custom/absu_power_cc")) -- потребление тока АБСУ
defineProperty("absu_power_27", globalPropertyf("tu154b2/custom/absu_power_27")) -- потребление тока АБСУ

-- other sources
defineProperty("nvu_mode", globalPropertyi("tu154b2/custom/nvu/nvu_mode")) -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
defineProperty("freq_1", globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))  -- set the frequency
defineProperty("freq_2", globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz"))  -- set the frequency

defineProperty("nav_cs_flag_1", globalPropertyi("tu154b2/custom/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag_1", globalPropertyi("tu154b2/custom/radio/nav1_gs_flag"))
	
defineProperty("nav_cs_flag_2", globalPropertyi("tu154b2/custom/radio/nav2_cs_flag"))
defineProperty("nav_gs_flag_2", globalPropertyi("tu154b2/custom/radio/nav2_gs_flag"))

defineProperty("nav_gs_1", globalPropertyf("tu154b2/custom/radio/nav1_gs")) -- glideslope

defineProperty("svs_on", globalPropertyi("tu154b2/custom/svs/svs_ready")) -- СВС
--defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail


defineProperty("rv5_alt", globalPropertyf("tu154b2/custom/misc/rv5_alt_left"))  -- высота на левом высотомере
defineProperty("rv_flag", globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_left"))  -- RV flag
defineProperty("rv_flag2", globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_right")) 

defineProperty("absu_course_out", globalPropertyi("tu154b2/custom/absu_course_out")) -- flying outside the course limits
defineProperty("absu_gs_out", globalPropertyi("tu154b2/custom/absu_gs_out")) -- flying outside the course limits

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

-- Throttles
defineProperty("anim_rud1", globalPropertyf("tu154b2/custom/controlls/throttle_1")) -- РУД 1
defineProperty("anim_rud2", globalPropertyf("tu154b2/custom/controlls/throttle_2")) -- РУД 2
defineProperty("anim_rud3", globalPropertyf("tu154b2/custom/controlls/throttle_3")) -- РУД 3
-- flaps
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

-- joystick
--defineProperty("joy_pitch", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) -- pitch position of joytick
--defineProperty("joy_roll", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) -- roll position of joystick
--defineProperty("joy_yaw", globalPropertyf("sim/cockpit2/controls/yoke_heading_ratio")) -- yaw position of joystick

defineProperty("joy_pitch", globalPropertyf("tu154b2/custom/SC/yoke_pitch_ratio")) 
defineProperty("joy_roll", globalPropertyf("tu154b2/custom/SC/yoke_roll_ratio")) 
defineProperty("joy_yaw", globalPropertyf("tu154b2/custom/SC/yoke_heading_ratio")) 


defineProperty("manip_pitch", globalPropertyf("sim/cockpit2/controls/yoke_pitch_ratio")) 
defineProperty("manip_roll", globalPropertyf("sim/cockpit2/controls/yoke_roll_ratio")) 

--sim/cockpit2/controls/yoke_roll_ratio	sim/cockpit2/controls/yoke_pitch_ratio




defineProperty("pkp_fail_left", globalPropertyf("tu154b2/custom/gauges/ahz/ahz_flag_L")) -- 
defineProperty("pkp_fail_right", globalPropertyf("tu154b2/custom/gauges/ahz/ahz_flag_R")) -- 
defineProperty("mgv_contr_fail", globalPropertyf("tu154b2/custom/gyro/mgv_contr_flag")) -- 

defineProperty("pressure_ind_1", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_1")) -- индикатор давления гидросистемы 1
defineProperty("pressure_ind_2", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_2")) -- индикатор давления гидросистемы 2
defineProperty("pressure_ind_3", globalPropertyf("tu154b2/custom/gauges/hydro/pressure_ind_3")) -- индикатор давления гидросистемы 3

defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3
defineProperty("gs_press_4", globalPropertyf("tu154b2/custom/hydro/gs_press_4")) -- давление в ГС4

defineProperty("tks_fail_left", globalPropertyi("tu154b2/custom/tks/fail_left")) -- флаг отказа
defineProperty("tks_fail_right", globalPropertyi("tu154b2/custom/tks/fail_right")) -- флаг отказа

defineProperty("outer_marker", globalPropertyi("sim/cockpit/misc/outer_marker_lit"))


-- results
defineProperty("roll_main_mode", globalPropertyi("tu154b2/custom/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
defineProperty("pitch_main_mode", globalPropertyi("tu154b2/custom/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("roll_sub_mode", globalPropertyi("tu154b2/custom/absu/roll_sub_mode")) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход, 7 - уход, 10 арм заход
defineProperty("pitch_sub_mode", globalPropertyi("tu154b2/custom/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход, 10 - арм глисс

defineProperty("absu_pnp_mode_1", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
defineProperty("absu_pnp_mode_2", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_2")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС


defineProperty("autopilot_mode", globalPropertyi("sim/cockpit/autopilot/autopilot_mode")) -- автопилот в симе

defineProperty("toga_command", globalPropertyi("tu154b2/custom/absu/toga_comm")) -- 	режим УХОД


defineProperty("absu_use_second_nav", globalPropertyi("tu154b2/custom/absu_use_second_nav")) -- АБСУ использует второй КурсМП



defineProperty("damp_roll_lamp", globalPropertyi("tu154b2/custom/absu/damp_roll_lamp")) -- 
defineProperty("damp_pitch_lamp", globalPropertyi("tu154b2/custom/absu/damp_pitch_lamp")) -- 
defineProperty("damp_yaw_lamp", globalPropertyi("tu154b2/custom/absu/damp_yaw_lamp")) -- 
defineProperty("roll_contr_lamp", globalPropertyi("tu154b2/custom/absu/roll_contr_lamp")) -- 
defineProperty("pitch_contr_lamp", globalPropertyi("tu154b2/custom/absu/pitch_contr_lamp")) -- 
defineProperty("man_roll_lamp", globalPropertyi("tu154b2/custom/absu/man_roll_lamp")) -- 
defineProperty("man_pitch_lamp", globalPropertyi("tu154b2/custom/absu/man_pitch_lamp")) -- 
defineProperty("man_toga_lamp", globalPropertyi("tu154b2/custom/absu/man_toga_lamp")) -- 
defineProperty("triangle_lamp_signal", globalPropertyi("tu154b2/custom/absu/triangle_lamp_signal")) -- 






-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- failures
defineProperty("absu_ra56_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_roll_fail")) -- отказ ra56
defineProperty("absu_ra56_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_pitch_fail")) -- отказ ra56
defineProperty("absu_ra56_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_yaw_fail")) -- отказ ra56

-- failures
defineProperty("absu_damp_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_roll_fail")) -- отказ демперов крена
defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_pitch_fail")) -- отказ демперов тангажа
defineProperty("absu_damp_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_yaw_fail")) -- отказ демперов курса
defineProperty("absu_contr_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ

defineProperty("absu_fail_signal", globalPropertyi("tu154b2/custom/absu/absu_fail_signal")) -- сигнал на сирену

defineProperty("absu_ra1_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_roll_fail"))
defineProperty("absu_ra2_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_roll_fail"))
defineProperty("absu_ra3_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_roll_fail"))
defineProperty("absu_ra1_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_pitch_fail"))
defineProperty("absu_ra2_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_pitch_fail"))
defineProperty("absu_ra3_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_pitch_fail"))
defineProperty("absu_ra1_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_yaw_fail"))
defineProperty("absu_ra2_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_yaw_fail"))
defineProperty("absu_ra3_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_yaw_fail"))

defineProperty("yoke_offset", globalPropertyf("tu154b2/custom/controlls/yoke_offset"))
defineProperty("absu_work", globalPropertyf("tu154b2/custom/lights/absu_work"))
defineProperty("vkv_fail", globalPropertyi("tu154b2/custom/failures/absu_alt_fail"))
defineProperty("vkv2_fail", globalPropertyi("tu154b2/custom/failures/absu_speed_fail"))
defineProperty("absu_at_fail", globalPropertyi("tu154b2/custom/failures/absu_at_fail"))
defineProperty("stu_mode", globalPropertyi("tu154b2/custom/absu/stu_mode"))
defineProperty("man_at", globalPropertyi("tu154b2/custom/failures/absu_man_at"))
defineProperty("bdlu_fail", globalPropertyi("tu154b2/custom/failures/absu_bdlu_fail"))
defineProperty("at_fail_signal", globalPropertyi("tu154b2/custom/absu/at_fail_signal")) -- сигнал на сирену
defineProperty("bshu_tet_fail",globalPropertyi("tu154b2/custom/failures/bshu_tet_fail"))
defineProperty("bshu_gam_fail",globalPropertyi("tu154b2/custom/failures/bshu_gam_fail"))
defineProperty("absu_bap_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_bap_pitch_fail"))
defineProperty("absu_bap_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_bap_roll_fail"))
defineProperty("absu_bns_pitch_fail", globalPropertyi("tu154b2/custom/failures/bns_tet_fail"))
defineProperty("absu_bns_roll_fail", globalPropertyi("tu154b2/custom/failures/bns_gam_fail"))
defineProperty("vor_avtomat", globalPropertyi("tu154b2/custom/failures/nvu_vor_avtomat_fail"))
defineProperty("diss_power", globalPropertyi("tu154b2/custom/nvu/diss_cc"))
defineProperty("diss_fail", globalPropertyi("tu154b2/custom/failures/diss_fail"))
defineProperty("nvu_fail", globalPropertyi("tu154b2/custom/failures/nvu_fail"))
defineProperty("absu_nvu_lamp", globalPropertyf("tu154b2/custom/lights/button/absu_nvu"))
defineProperty("absu_az1_lamp", globalPropertyf("tu154b2/custom/lights/button/absu_az1"))
defineProperty("absu_az2_lamp", globalPropertyf("tu154b2/custom/lights/button/absu_az2"))
defineProperty("GNS430_flag", globalPropertyi("tu154b2/custom/SC/GNS430_flag"))
defineProperty("kln_flag", globalPropertyi("tu154b2/custom/kln90/kln_flag"))
defineProperty("kln_flag2", globalPropertyi("tu154b2/custom/kln90/kln_fail_flag"))
--defineProperty("RXP_flag", globalPropertyf("RXP/radios/indicators/hsi_flag_from_to_pilot"))
defineProperty("show_gns", globalPropertyi("tu154b2/custom/anim/show_gns"))
--defineProperty("show_RXP",globalPropertyi("tu154b2/custom/anim/RXP"))
defineProperty("nav_select", globalPropertyi("tu154b2/custom/switchers/nav_select")) -- тумблер НВУ-СНС 0 - НВУ, 1 - СНС
defineProperty("curs_np1_on", globalPropertyi("tu154b2/custom/switchers/ovhd/curs_np_on_1")) 
defineProperty("curs_np2_on", globalPropertyi("tu154b2/custom/switchers/ovhd/curs_np_on_2"))
defineProperty("nav1_fail", globalPropertyi("tu154b2/custom/failures/nav1_fail")) -- fail 
defineProperty("nav2_fail", globalPropertyi("tu154b2/custom/failures/nav2_fail")) -- fail 
defineProperty("pnp_course_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_course_flag_L"))
defineProperty("pnp_gs_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_gs_flag_L"))
-- defineProperty("alt_set_left", globalPropertyf("sim/cockpit2/gauges/actuators/barometer_setting_in_hg_copilot"))
-- defineProperty("alt_set_right", globalPropertyf("sim/cockpit2/gauges/actuators/barometer_setting_in_hg_stby"))
defineProperty("at_blocked", globalPropertyi("tu154b2/custom/failures/absu_at_blocked"))
kolc = globalPropertyi("tu154b2/custom/absu/kolc")
hydro_circuit_auto_man = globalPropertyi("tu154b2/custom/switchers/eng/hydro_circuit_auto_man")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))

local TOGA_mode = false
local TOGA_button = false
local AP_button = false

local roll_mode_main = 1
local pitch_mode_main = 1

local signal_timer = 0
local at_signal_timer = 0
local at_block_timer = 0

TOGA_COMM = findCommand("sim/engines/TOGA_power")

local thro_last_1 = get(tro_comm_1)
local thro_last_2 = get(tro_comm_2)
local thro_last_3 = get(tro_comm_3)

local NVU_mode_arm=0
local AZ1_mode_arm=0
local AZ2_mode_arm=0
local Land_mode_arm=0
local Zach_mode_arm=0
local GS_arm=0
local toga_arm=0
local gs_block=0
local gs_captured=0
local kolc_timer=0
local power_36_prev=0
local power27_prev=false
if get(ismaster)~=1 then
	function TOGA_comm_hnd(phase)
		if 1 == phase then
			TOGA_mode = true
			TOGA_button = true
			set(toga_command, 1)
		else
			set(toga_command, 0)
			TOGA_button = false
			--set(tro_comm_1, thro_last_1)
			--set(tro_comm_2, thro_last_2)
			--set(tro_comm_3, thro_last_3)
		end
		
		return 1
	end

	registerCommandHandler(TOGA_COMM, 0, TOGA_comm_hnd)

	local AP_toggle = findCommand("sim/autopilot/fdir_toggle")

	function AP_toggle_hnd(phase)
		if 0 == phase then
			if get(roll_main_mode) == 2 then set(roll_main_mode, 1) end
			if get(pitch_main_mode) == 2 then set(pitch_main_mode, 1) end
			--if get(pitch_sub_mode)==6 then set(pitch_sub_mode,1) end
			AP_button = true
		elseif 1 == phase then
			AP_button = true
		else 
			AP_button = false
			--TOGA_mode = false
		end
		return 1
	end
	registerCommandHandler(AP_toggle, 0, AP_toggle_hnd)
end





local roll_submode = 1
local pitch_submode = 1

local sau_sw_last = get(sau_stu_on) == 1

local pitch_wheel_last = get(absu_pitch_wheel)
local roll_handle_last=get(absu_turn_handle)

local land_sw_last = get(absu_landing_on) == 1

local power_counter = 0
local state_checked = false

local yoke_reset = false
local marker_passed=0
-- local elev_fail_timer=0
-- local ail_fail_timer=0
-- local rud_fail_timer=0
-- local power_fail_timer=0
-- local fail_time=0.5 
local yaw_damp_failed=0
local stu_test_timer=0

function update()
	
	
	thro_last_1 = get(tro_comm_1)
	thro_last_2 = get(tro_comm_2)
	thro_last_3 = get(tro_comm_3)
	
	set(autopilot_mode, 0)
	
local MASTER = get(ismaster) ~= 1	
	if MASTER then	
		
		-- initial variables
		-- sync
		roll_mode_main = get(roll_main_mode)
		pitch_mode_main = get(pitch_main_mode)
		
		roll_submode = get(roll_sub_mode)
		pitch_submode = get(pitch_sub_mode)
		
		if get(outer_marker)>0 then
			marker_passed=1
		end
		
		local sau_sw = get(sau_stu_on) == 1
		
		local power = get(bus27_volt_left) > 19  and get(bus115_1_volt) > 100 and get(bus36_volt_left) > 30 and sau_sw -- temp
		local power27 = get(bus27_volt_left) > 19 and sau_sw
		
		local passed = get(frame_time)
		
		local az1_flag=get(nav_cs_flag_1)> 0 or isILS(get(freq_1))
		local az2_flag=get(nav_cs_flag_2)> 0 or isILS(get(freq_2))
		local kurs_flag=get(nav_cs_flag_1)> 0 or not isILS(get(freq_1))
		if get(absu_use_second_nav) == 1 then
			kurs_flag=get(nav_cs_flag_2)> 0 or not isILS(get(freq_2))
		end
		
		local stab_btn = get(absu_stab) == 1
		
		if stab_btn and not yoke_reset then
			ykoff=get(yoke_offset)
			set(manip_pitch, -ykoff)
			set(manip_roll, 0)
			yoke_reset = true
		else
			yoke_reset = false
		end
		
		
		local pitch_sw = get(absu_pitch_ch_on) == 1
		local roll_sw = get(absu_roll_ch_on) == 1
		
		local ail_hyd_sw = get(absu_ra1_roll_fail) + get(absu_ra2_roll_fail) + get(absu_ra3_roll_fail) < 2 
		
		local elev_hyd_sw = get(absu_ra1_pitch_fail) + get(absu_ra2_pitch_fail) + get(absu_ra3_pitch_fail) < 2
		
		local rud_hyd_sw = get(absu_ra1_yaw_fail) + get(absu_ra2_yaw_fail) + get(absu_ra3_yaw_fail) < 2 
		
		--fail delay 
		-- if get(absu_damp_roll_fail) == 1 then
			-- ail_fail_timer=ail_fail_timer+passed
		-- else
			-- ail_fail_timer=ail_fail_timer-passed
		-- end

		-- if get(absu_damp_pitch_fail) == 1 then
			-- elev_fail_timer=elev_fail_timer+passed
		-- else
			-- elev_fail_timer=elev_fail_timer-passed
		-- end
		
		-- if get(absu_damp_yaw_fail) == 1 then
			-- rud_fail_timer=rud_fail_timer+passed
		-- else
			-- rud_fail_timer=rud_fail_timer-passed
		-- end
		-- if ail_fail_timer>fail_time then
			-- ail_fail_timer=fail_time
		-- elseif ail_fail_timer<0 then
			-- ail_fail_timer=0
		-- end
		
		-- if not power then
			-- power_fail_timer=power_fail_timer+passed
		-- else
			-- power_fail_timer=power_fail_timer-passed
		-- end
		
		-- if elev_fail_timer>fail_time then
			-- elev_fail_timer=fail_time
		-- elseif elev_fail_timer<0 then
			-- elev_fail_timer=0
		-- end
		
		-- if rud_fail_timer>fail_time then
			-- rud_fail_timer=fail_time
		-- elseif rud_fail_timer<0 then
			-- rud_fail_timer=0
		-- end
		
		-- if power_fail_timer>fail_time then
			-- power_fail_timer=fail_time
		-- elseif power_fail_timer<0 then
			-- power_fail_timer=0
		-- end
		
		local roll_handle = get(absu_turn_handle)
		
		local rud_toga = get(anim_rud1) + get(anim_rud2) + get(anim_rud3) > 0.99 * 3
		
		local nav_prep = get(absu_nav_on) == 1
		local land_prep = get(absu_landing_on) == 1
		
		local flaps = (get(flap_inn_L) + get(flap_inn_R)) / 2
		
		local reset_but = get(absu_reset) == 1
		
			
		-- conditions, when ABSU can work
		--local absu_work_logic = true-- get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
		--absu_work_logic = absu_work_logic --and bool2int(get(gs_press_1) > 100) + bool2int(get(gs_press_2) > 100) + bool2int(get(gs_press_3) > 100) >= 2
		--absu_work_logic = absu_work_logic -- and sau_sw and get(tks_fail_left) + get(tks_fail_right) == 0
		
		--local ahz_work = get(pkp_fail_left) + get(pkp_fail_right) + get(mgv_contr_fail) < 2
		
		-- general yoke mode enable
		-- if sau_sw ~= sau_sw_last and sau_sw then -- need to extend conditions
			-- if ail_hyd_sw then 
				-- roll_mode_main = 1 
				
				-- --roll_submode = 1
			-- end
			-- if elev_hyd_sw then 
				-- pitch_mode_main = 1 
				
				-- --pitch_submode = 1
			-- end
		-- end
		--reactivate roll
		if sau_sw and roll_mode_main == 0 and get(absu_damp_roll_fail)==0 then 
			roll_mode_main = 1
			set(absu_fail_signal, 0)
		end
		
		-- reactivate pitch
		if sau_sw and pitch_mode_main == 0 and get(absu_damp_pitch_fail)==0 then 
			pitch_mode_main = 1 
			set(absu_fail_signal, 0)
		end
		if sau_sw and yaw_damp_failed==1 and get(absu_damp_yaw_fail)==0 then 
			yaw_damp_failed=0
			set(absu_fail_signal, 0)
		end

		sau_sw_last = sau_sw
		
		-- roll part
		-- set stab mode
		if roll_mode_main == 1 and stab_btn and roll_sw then
			roll_mode_main = 2
			--roll_submode = 1
		end
		
		-- set yoke mode

		--if roll_mode_main == 2 and (math.abs(get(joy_roll)) > 0.2 or math.abs(get(joy_yaw)) > 0.2 or math.abs(get(joy_pitch)) > 0.2) then
		if roll_mode_main == 2 and math.abs(get(joy_roll)) > 0.2 then --or get(absu_contr_roll_fail) == 1) then
			roll_mode_main = 1
			--pitch_mode_main = 1
		end
		if pitch_mode_main == 2 and math.abs(get(joy_pitch)+get(yoke_offset)) > 0.2 then --or get(absu_contr_pitch_fail) == 1) then
			--roll_mode_main = 1
			pitch_mode_main = 1
			if pitch_submode >= 2 and pitch_submode <= 4 then pitch_submode = 1 end
		end
		
		
		if roll_mode_main == 2 and not roll_sw then
			roll_mode_main = 1
			--pitch_mode_main = 1
		end
		
		-- check mode for once, after loading the acf
		power_counter = power_counter + passed
		
		if power_counter > 15 and not state_checked then
			if power and pitch_mode_main == 0 and roll_mode_main == 0 then 
				pitch_mode_main = 1
				roll_mode_main = 1
			end
			state_checked = true
		end
		
		
		-- reset mode, when no power or hydraulics
		-- if (power_fail_timer==fail_time or ail_fail_timer==fail_time) and roll_mode_main >0 then
			-- if roll_mode_main == 2 then
				-- set(man_roll_lamp, 1)
			-- end
			-- set(absu_fail_signal, 1)
			-- roll_mode_main = 0
		-- end

		-- if (power_fail_timer==fail_time or elev_fail_timer==fail_time) and pitch_mode_main >0 then
			-- if pitch_mode_main == 2 then
				-- set(man_pitch_lamp, 1)			
			-- end
			-- set(absu_fail_signal, 1)
			-- pitch_mode_main = 0
		-- end
		
			-- if not power or not ail_hyd_sw or not rud_hyd_sw or not absu_work_logic then
			-- roll_mode_main = 0
		-- end

		-- if not power or not elev_hyd_sw or not absu_work_logic then
			-- pitch_mode_main = 0
		-- end
		
		
		-- check if ABSU should use second NAV
		set(absu_use_second_nav, bool2int(get(nav_cs_flag_1) == 1 and isILS(get(freq_2)) and get(nav_cs_flag_2) == 0))
		-- check if navigation devices are working
		local nvu_flag=0
		local mp1_flag=0
		local mp2_flag=0
		if get(nav_select)==1 then
			if get(show_gns) == 0 then
				if get(kln_flag2)>0 or get(kln_flag)==0 then
					nvu_flag=1
				end
			elseif get(show_gns) == 1 then -- GNS
				nvu_flag=get(GNS430_flag)				
			-- elseif get(show_gns) == 1 and get(show_RXP) == 1 then -- RXP
				-- nvu_flag=get(RXP_flag)	
			end
		else
			if get(nvu_mode)*(1-get(nvu_fail))==0 or get(absu_bns_roll_fail)==1 then
				nvu_flag=1
			end
		end
		
		
			----- Steering Modes-------
		local pnp_mode=get(absu_pnp_mode_1)
		
		if reset_but or not power then
			set(absu_pnp_mode_1, 0) -- off mode
			Land_mode_arm=0
			NVU_mode_arm=0
			AZ1_mode_arm=0
			AZ2_mode_arm=0
			GS_arm=0
			zach_arm=0
			gliss_arm=0
		elseif land_prep and NVU_mode_arm+AZ1_mode_arm+AZ2_mode_arm==0 and pnp_mode~=4 then
			set(absu_pnp_mode_1, 4)
			-- NVU_mode_arm=0
			-- AZ1_mode_arm=0
			-- AZ2_mode_arm=0
		elseif not land_prep and Land_mode_arm==0 and pnp_mode==4 then
			set(absu_pnp_mode_1, 0)
		elseif get(absu_app)==1 then
			--if not kurs_flag or pnp_mode==0 then
				zach_arm=1
				Land_mode_arm=1
				NVU_mode_arm=0
				AZ1_mode_arm=0
				AZ2_mode_arm=0
				roll_submode=1
				gs_captured=0
			--end
		elseif get(absu_gs) == 1 and land_prep then
			GS_arm=1
			gliss_arm=1
		elseif get(absu_nvu) == 1 and gs_block ==0 then
			--if nvu_flag==0 or pnp_mode==0 then
				Land_mode_arm=0
				zach_arm=0
				gliss_arm=0
				NVU_mode_arm=1
				AZ1_mode_arm=0
				AZ2_mode_arm=0
				GS_arm=0
				roll_submode=1
			--end
		elseif get(absu_az1) == 1 and mp1_flag==0 and gs_block ==0 then
			--if not az1_flag or pnp_mode==0 then
				Land_mode_arm=0
				zach_arm=0
				gliss_arm=0
				NVU_mode_arm=0
				AZ1_mode_arm=1
				AZ2_mode_arm=0
				GS_arm=0
				roll_submode=1
			--end
		elseif get(absu_az2) == 1 and mp2_flag==0 and gs_block ==0 then
			--if not az2_flag or pnp_mode==0 then
				Land_mode_arm=0
				zach_arm=0
				gliss_arm=0
				NVU_mode_arm=0
				AZ1_mode_arm=0
				AZ2_mode_arm=1
				GS_arm=0
				roll_submode=1
			--end
		end
		--- PNP Modes------
		if Land_mode_arm==1 and pnp_mode~=4 and not kurs_flag then
			set(absu_pnp_mode_1, 4) -- land
		elseif NVU_mode_arm==1 and pnp_mode~=1 and nvu_flag==0 then
			set(absu_pnp_mode_1, 1) -- NAV
		elseif AZ1_mode_arm==1 and pnp_mode~=2 and not az1_flag then
			set(absu_pnp_mode_1, 2) -- VOR
		elseif AZ2_mode_arm==1 and pnp_mode~=3 and not az2_flag then
			set(absu_pnp_mode_1, 3) -- VOR
		elseif Land_mode_arm==1 and not kurs_flag and (math.abs(roll_handle)< 1 or not land_prep) and roll_submode ~= 6 then
			zach_arm=2
		-- elseif Land_mode_arm==1 and (math.abs(roll_handle)< 1 or not land_prep) and roll_submode ~= 6 then
			-- zach_arm=1
		elseif GS_arm==1 and pitch_submode ~= 5 and land_prep then
			gliss_arm=1
		elseif GS_arm==1 and not land_prep then
			GS_arm=0
			gliss_arm=0
		end
		
		
		local FAIL_mp1 = get(nav1_fail) == 1
		local FAIL_mp2 = get(nav2_fail) == 1
		
		local power_mp1 = get(curs_np1_on) == 1 and get(bus36_volt_pts250_2) > 30 and get(bus115_1_volt) > 100 
		local power_mp2 = get(curs_np2_on) == 1 and get(bus36_volt_right) > 30 and get(bus115_3_volt) > 100 
		
		if FAIL_mp1 or not power_mp1 or get(absu_bns_roll_fail)==1 then
			mp1_flag=1
		end
		
		if FAIL_mp2 or not power_mp2 or get(absu_bns_roll_fail)==1 then
			mp2_flag=1
		end
		-- submodes
		if power then -- need to define cases more clearly
			if roll_submode == 0 then roll_submode = 1 end
			--set(db2,NVU_mode_arm)
			if get(absu_zk) == 1 and roll_mode_main == 2 and math.abs(roll_handle)< 1 and gs_block==0 then -- ZK mode
				roll_submode = 2
				set(absu_pnp_mode_1, 0)
				NVU_mode_arm=0
				AZ1_mode_arm=0
				AZ2_mode_arm=0
				Land_mode_arm=0
				GS_arm=0
				zach_arm=0
				gliss_arm=0
			elseif (get(absu_nvu) == 1 or NVU_mode_arm==1) and nvu_flag==0 and nav_prep and math.abs(roll_handle)< 1 and gs_block==0 and roll_submode ~= 3 then -- NVU mode
				roll_submode = 3
				AZ1_mode_arm=0
				AZ2_mode_arm=0
				Land_mode_arm=0
				GS_arm=0
				--set(db2,NVU_mode_arm)
			elseif (get(absu_az1) == 1 or AZ1_mode_arm==1) and nav_prep and mp1_flag==0 and math.abs(roll_handle)< 1 and gs_block==0 and not az1_flag and roll_submode ~= 4 then -- AZ mode. works only with VOR freq.
				roll_submode = 4
				NVU_mode_arm=0
				AZ2_mode_arm=0
				Land_mode_arm=0
				GS_arm=0
			elseif (get(absu_az2) == 1 or AZ2_mode_arm==1) and nav_prep and mp2_flag==0 and math.abs(roll_handle)< 1 and gs_block==0 and not az2_flag and roll_submode ~= 5 then -- AZ mode. works only with VOR freq.
				roll_submode = 5
				NVU_mode_arm=0
				AZ1_mode_arm=0
				Land_mode_arm=0
				GS_arm=0
			elseif get(absu_app) + Land_mode_arm>0 and land_prep and not kurs_flag and math.abs(roll_handle)< 1 and roll_submode ~= 6 then -- APP mode. works only with ILS freq
				roll_submode = 6
				NVU_mode_arm=0
				AZ1_mode_arm=0
				AZ2_mode_arm=0	
			-- elseif get(absu_app) == 1 and land_prep and math.abs(roll_handle)< 1 then -- fake APP mode
				-- roll_submode = 10
				
			-- elseif roll_submode == 10 and land_prep and ((isILS(get(freq_1)) and get(nav_cs_flag_1) == 0) or get(absu_use_second_nav) == 1) and math.abs(roll_handle)< 1 then -- switch to APP mode, when ILS established
				-- roll_submode = 6
			elseif (roll_submode == 6 or Land_mode_arm==1) and math.abs(roll_handle)>0.2 then -- reset APP with handle
					Land_mode_arm=0
					zach_arm=0
					roll_submode = 1
			elseif reset_but or (math.abs(roll_handle)> 1 and nav_prep) or (math.abs(roll_handle)> 1 and roll_submode == 2) then -- reset mode
				if reset_but or (roll_mode_main>1 and nav_prep) then
					set(absu_pnp_mode_1, 0)
					NVU_mode_arm=0
					AZ1_mode_arm=0
					AZ2_mode_arm=0
					--Land_mode_arm=0
				end
				roll_submode = 1
			elseif roll_submode>2 and roll_submode<6 and not nav_prep then
				roll_submode = 1
			elseif roll_submode==6 and not land_prep then
				roll_submode = 1
			elseif toga_arm==1 and roll_mode_main >= 1 and pitch_mode_main >= 1 and (rud_toga or TOGA_mode) then -- TOGA mode
				roll_mode_main = 2
				pitch_mode_main = 2
				roll_submode = 1
				pitch_submode = 6
				toga_arm=0
				Land_mode_arm=0
				zach_arm=0
				gliss_arm=0
				GS_arm=0
				NVU_mode_arm=0
				AZ1_mode_arm=0
				AZ2_mode_arm=0
				Land_mode_arm=0
			-- elseif land_prep or Land_mode_arm==1 and NVU_mode_arm+AZ1_mode_arm+AZ2_mode_arm>0 then
				-- NVU_mode_arm=0
				-- AZ1_mode_arm=0
				-- AZ2_mode_arm=0	
			elseif roll_submode==2 and roll_mode_main~=2 then
				roll_submode = 1
			elseif roll_submode==6 and get(pnp_course_flag)>0 then
				roll_submode = 1
			end
		
		else
			roll_submode = 0
		end
		
		
		
		-- reset cases for ROLL modes
		if roll_submode == 4 and roll_mode_main == 2 and az1_flag then -- AZ1
			roll_submode = 1
			--TOGA_mode = false
		elseif roll_submode == 5 and roll_mode_main == 2 and az2_flag then -- AZ2
			roll_submode = 1
			--TOGA_mode = false
		end
			--TOGA_mode = false
		-- elseif roll_submode == 6 and (not isILS(get(freq_1)) or get(nav_cs_flag_1) == 1 or not land_prep) and roll_mode_main == 2 then -- APP
			-- roll_submode = 1
			-- if get(nav_cs_flag_1) == 1 or not isILS(get(freq_1)) then
				-- set(man_roll_lamp, 1)
				-- set(absu_fail_signal, 1)
			-- end
			-- --TOGA_mode = false
			
		-- end
		
		
		
		
		-- pitch part
		-- set stab mode
		if pitch_mode_main == 1 and stab_btn and pitch_sw then
			pitch_mode_main = 2
			--pitch_submode = 1
		end
		
		-- set yoke mode
		if pitch_mode_main == 2 and not pitch_sw then
			--roll_mode_main = 1
			pitch_mode_main = 1
			if pitch_submode >= 2 and pitch_submode <= 4 then
				pitch_submode = 1
				--roll_submode = 1
			end
		end
		
		local putch_wheel = get(absu_pitch_wheel)
		
		-- submodes
		if power then
			if pitch_submode == 0 then 
				pitch_submode = 1 
			end
			if get(absu_gs) == 1 and land_prep and get(absu_calc_toga_fail)==0 then
				toga_arm=1 
			end -- arm TOGA
			local svs = get(svs_on)> 0

			if get(absu_stab_v) == 1 and pitch_mode_main == 2 and get(vkv2_fail)==0 then -- Stab V mode
				pitch_submode = 2
				GS_arm=0
				gliss_arm=0
			
			elseif get(absu_stab_m) == 1 and pitch_mode_main == 2 and svs then -- Stab M mode
				pitch_submode = 3
				GS_arm=0
				gliss_arm=0
				
			elseif get(absu_stab_h) == 1 and pitch_mode_main == 2 and get(vkv_fail)==0 then -- Stab H mode
				pitch_submode = 4
				GS_arm=0
				gliss_arm=0
				
			elseif (get(absu_gs) == 1 or GS_arm==1) and land_prep and ((isILS(get(freq_1)) and get(nav_gs_flag_1) == 0) or (get(absu_use_second_nav) == 1 and get(nav_gs_flag_2) == 0)) and pitch_submode~=5 then -- GS mode
				pitch_submode = 5
				toga_arm=1
			elseif land_prep and get(nav_gs_flag_1) == 0 and roll_submode == 6 and math.abs(get(nav_gs_1)) < 0.02 and flaps > 31 and pitch_submode ~= 5 and gs_captured==0 and gs_block==0 then -- auto GS mode
				pitch_submode = 5
				toga_arm=1
				gs_captured=1
				
			-- elseif get(absu_gs) == 1 and land_prep then -- fake GS mode
				-- pitch_submode = 10
				
			elseif pitch_submode == 10 and land_prep and ((isILS(get(freq_1)) and get(nav_gs_flag_1) == 0) or (get(absu_use_second_nav) == 1) and get(nav_gs_flag_2) == 0) then --switch to GS mode after ILS established
				pitch_submode = 5
				gliss_arm=1
			elseif pitch_wheel_last ~= putch_wheel or (reset_but and pitch_submode >= 5) or ((pitch_submode==2 or pitch_submode==3) and get(stu_mode)>2) then -- reset. wheel or reset button on GS and TOGA modes
				pitch_submode = 1
				marker_passed=0
				GS_arm=0
				gliss_arm=0
			
			elseif pitch_mode_main == 1 and (pitch_submode == 2 or pitch_submode == 3 or pitch_submode == 4) then -- reset V M H modes, when MAN mode
				pitch_submode = 1
				marker_passed=0
			elseif pitch_submode == 5 and ( not land_prep or get(pnp_gs_flag)>0) then
				pitch_submode = 1
				marker_passed=0
			end
			if get(absu_gs) == 1 then
				gs_block=1 -- this blocks nav modes from activating if GS mode has been selected
			elseif pitch_wheel_last ~= putch_wheel and land_prep and gs_block==1 then -- turning the pitch wheel with land prep removes the block
				gs_block=0
			end
		else 
			pitch_submode = 0
			toga_arm=0
			gs_block=0
			marker_passed=0
		end
		
		
		if reset_but then -- reset mode
			roll_submode = 1
			toga_arm=0
			gs_block=0
			if pitch_submode < 2 or pitch_submode > 4 then
				pitch_submode = 1
			end
			marker_passed=0
		end
		
		-- reset TOGA mode
		if pitch_submode ~= 6 then
			TOGA_mode = false
		end
		
		--print(TOGA_mode, "  ", pitch_submode, "  ", roll_submode)
		

		
		-- reset some modes
		if pitch_mode_main == 2 and (not isILS(get(freq_1)) or not land_prep or get(nav_gs_flag_1) == 1) and pitch_submode == 5 then -- GS mode
			pitch_submode = 1
			pitch_mode_main = 1
			
			if get(nav_gs_flag_1) == 1 or not isILS(get(freq_1)) then
				set(man_pitch_lamp, 1)
				set(absu_fail_signal, 1)
			end
			
		end
		
		
		
		
		
		
		
		-- lamp signals
		set(damp_roll_lamp, bool2int(power27 and get(absu_damp_roll_fail)>0))
		set(damp_pitch_lamp, bool2int(power27 and get(absu_damp_pitch_fail)>0))
		set(damp_yaw_lamp, bool2int(power27 and get(absu_damp_yaw_fail)>0))
		set(roll_contr_lamp, bool2int(power27 and get(bshu_gam_fail) == 1))
		set(pitch_contr_lamp, bool2int(power27 and get(bshu_tet_fail) == 1))
		
		
		
		-- MGV, STU and BAP fails
		if power27 and roll_mode_main == 2 then
			if get(absu_contr_roll_fail) == 1 or get(absu_bap_roll_fail)==1 then
				roll_mode_main = 1
				--roll_submode = 1
				set(man_roll_lamp, 1)
				set(absu_fail_signal, 1)
			end
			
			if  get(absu_calc_roll_fail) == 1 and roll_submode > 2 and roll_submode < 6 then
				roll_submode = 1
				set(man_roll_lamp, 1)
				set(absu_fail_signal, 1)
			end
			
		end

		-- Localizer mode fail
		if (get(absu_calc_roll_fail)==1 or get(nav_cs_flag_1)==1 or get(tks_fail_left) + get(tks_fail_right) == 2 or get(absu_bns_roll_fail)==1 or get(absu_contr_roll_fail)==1) and roll_submode == 6 and roll_mode_main == 2 then
			roll_submode = 1
			zach_arm = 0
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
		   -- ZK fail from TKS
		if roll_mode_main == 2 and roll_submode~=3 and get(tks_fail_left) + get(tks_fail_right) == 2 then
			roll_submode=1
		end
		
		
		-- pitch mode fail
		if power27 and pitch_mode_main == 2 then
			if get(absu_contr_pitch_fail) == 1 or get(absu_bap_pitch_fail) == 1  then
				pitch_mode_main = 1			
				--pitch_submode = 1			
				set(man_pitch_lamp, 1)
				set(absu_fail_signal, 1)
			end	
		end
		-- Speed/alt modes fail
		if power27 and pitch_mode_main == 2 then
			if ((get(vkv2_fail)==1 and pitch_submode == 2) or (get(vkv_fail)==1 and pitch_submode == 4)) or (pitch_submode == 3 and get(svs_on)==0) then
				pitch_submode = 1
				pitch_mode_main = 1
				set(man_pitch_lamp, 1)
				set(absu_fail_signal, 1)
			end
		end
		
		-- Glideslope mode fail 
		if power27 then
			if (get(absu_calc_pitch_fail) == 1 or get(nav_gs_flag_1)==1 or (get(rv_flag)+get(rv_flag2)>1 and marker_passed>0) or get(absu_contr_pitch_fail)==1 or get(absu_bns_pitch_fail)==1) and pitch_submode == 5 and pitch_mode_main == 2 then
				pitch_mode_main = 1
				pitch_submode = 1
				gliss_arm = 0
				set(man_pitch_lamp, 1)
				set(absu_fail_signal, 1)
			end
			if get(absu_calc_toga_fail) == 1 and pitch_submode == 6 then
				pitch_mode_main = 1
				pitch_submode = 1
				set(man_pitch_lamp, 1)
				set(absu_fail_signal, 1)
			end
		
		end
		-- at fail
		if power27 and get(stu_mode) > 2 and (get(absu_at_fail)>0 or get(vkv2_fail)>0 or get(bdlu_fail)>0) then
			set(at_fail_signal, 1)
			set(man_at,1)
		
		end
		
		
		-- TOGA lamp
		if get(absu_speed_test_2)>0 then
			stu_test_timer=1
		else
			if stu_test_timer>0 then
				stu_test_timer=stu_test_timer-passed
			end
		end
		if power27 and land_prep then
			if (get(absu_calc_toga_fail) == 1 and stu_test_timer<=0) or pitch_mode_main==0 or not pitch_sw or get(absu_at_fail)==1 then
				set(man_toga_lamp, 1)
			else
				set(man_toga_lamp, 0)
			end
		else
			set(man_toga_lamp, 0)
		end
		
		
		-- triangle lamp
		if get(rv5_alt) < 60 and power and ((roll_submode == 6 and roll_mode_main==2) or (pitch_submode == 5 and pitch_mode_main==2)) and (get(man_pitch_lamp) == 1 or get(man_roll_lamp) == 1 or get(absu_course_out) == 1 or get(absu_gs_out) == 1) then
			set(triangle_lamp_signal, 1)
		end
		-- damper fails (full channel shutdown)
		if power27 and get(absu_damp_pitch_fail) == 1 and pitch_mode_main>0 then
			set(absu_fail_signal, 1)
			if pitch_mode_main==2 then
				set(man_pitch_lamp, 1)
			end
			pitch_mode_main=0
		end
		
		if power27 and get(absu_damp_roll_fail) == 1 and roll_mode_main>0 then
			set(absu_fail_signal, 1)
			if roll_mode_main==2 then
				set(man_roll_lamp, 1)
			end
			roll_mode_main=0
		end
		
		if power27 and get(absu_damp_yaw_fail) == 1 and yaw_damp_failed==0 then
			set(absu_fail_signal, 1)
			yaw_damp_failed=1
		end	
		
		--NAV mode fails
		
		if roll_submode==6 and get(absu_bns_roll_fail)==1 then
			roll_submode = 1
			set(man_roll_lamp, 1)
			set(absu_fail_signal, 1)
		end
		local nvu_vor=0
		if get(absu_az1_lamp)>0 and nav_prep and (get(absu_bns_roll_fail)==1 or get(tks_fail_left) + get(tks_fail_right) == 2 or get(diss_power)*(1-get(diss_fail))==0 or mp1_flag>0 or get(absu_calc_roll_fail)==1 or get(absu_contr_roll_fail)==1 or az1_flag) then
			roll_submode = 1
			nvu_vor=1
		end
			if get(absu_az2_lamp)>0 and nav_prep and (get(absu_bns_roll_fail)==1 or get(tks_fail_left) + get(tks_fail_right) == 2 or get(diss_power)*(1-get(diss_fail))==0 or mp2_flag>0 or get(absu_calc_roll_fail)==1 or get(absu_contr_roll_fail)==1 or az2_flag) then
			roll_submode = 1
			nvu_vor=1
		end
		if get(absu_nvu_lamp)>0 and nav_prep and (get(absu_bns_roll_fail)==1 or nvu_flag==1 or get(absu_calc_roll_fail)==1 or get(absu_contr_roll_fail)==1) then
			roll_submode = 1
			nvu_vor=1
		end
		set(vor_avtomat,nvu_vor)
		
		-- end alarm
		if (get(absu_fail_signal) == 1 and signal_timer > 8) then
			set(absu_fail_signal, 0)
			signal_timer = 0
		end
		
		if (get(at_fail_signal) == 1 and at_signal_timer > 8) then
			set(at_fail_signal, 0)
			at_signal_timer = 0
		end
		if (get(at_blocked) == 1 and at_block_timer > 8) then
			set(at_blocked, 0)
			at_block_timer = 0
		end
		-- if get(absu_fail_signal) == 0 then
			-- signal_timer = 0
		-- end
		-- if get(at_fail_signal) == 0 then
			-- at_signal_timer = 0
		-- end
		-- if get(at_blocked) == 0 then
			-- at_block_timer = 0
		-- end
		-- reset lamps and alarm
		if not power27  or AP_button then
			set(absu_fail_signal, 0)
			set(man_roll_lamp, 0)
			set(man_pitch_lamp, 0)
			--set(man_toga_lamp, 0)
			set(triangle_lamp_signal, 0)
			signal_timer = 0
			--print("reset" .. passed)
		end
		if pitch_submode==6 or TOGA_button then
			set(triangle_lamp_signal, 0)
		end
		
		-- fail alarm logic
		if get(absu_fail_signal) == 1 then
			signal_timer = signal_timer + passed
		else 
			signal_timer = 0
		end
		if get(at_fail_signal) == 1 then
			at_signal_timer = at_signal_timer + passed
		else 
			at_signal_timer = 0
		end
		if get(at_blocked) == 1 then
			at_block_timer = at_block_timer + passed
		else 
			at_block_timer = 0
		end
		-- reset alarm with wheel/handle input
		if get(absu_fail_signal) == 1 and pitch_submode==1 and pitch_mode_main==2 and pitch_wheel_last~=putch_wheel then
			set(absu_fail_signal,0)
			set(man_pitch_lamp, 0)
		end
		if get(absu_fail_signal) == 1 and roll_submode==1 and roll_mode_main==2 and roll_handle~=roll_handle_last then
			set(absu_fail_signal,0)
			set(man_roll_lamp, 0)
		end
		
		pitch_wheel_last = putch_wheel
		roll_handle_last=roll_handle
		
		
		-- reset modes on failures or turned off sources
		-- if get(absu_damp_roll_fail) == 1 then roll_mode_main = 0 end -- roll damper fail
		-- if get(absu_damp_pitch_fail) == 1 then pitch_mode_main = 0 end -- roll damper fail
		if get(absu_contr_roll_fail) == 1 and roll_mode_main == 2 then roll_mode_main = 1 end -- roll controls fail
		if get(absu_contr_pitch_fail) == 1 and pitch_mode_main == 2 then pitch_mode_main = 1 end -- pitch controls fail
		if get(absu_calc_toga_fail) ==1 and pitch_mode_main >= 1 and pitch_submode == 6 then pitch_submode = 1 end -- TOGA calc fail
		if get(absu_calc_roll_fail) == 1 and roll_mode_main >= 1 then roll_submode = 1 end -- STU roll fail
		if get(absu_calc_pitch_fail) == 1 and pitch_mode_main >= 1 then pitch_submode = 1 end -- STU pitch fail
		
		
		
		
		
		
		
		
		
		
		
		
		-----------------------
		-- full disable ABSU --
		if not sau_sw then 
			roll_mode_main = 0
			roll_submode = 0
		end
		
		if not sau_sw then
			pitch_mode_main = 0
			pitch_submode = 0
		end


		-- indication modes


		
		set(absu_pnp_mode_2, get(absu_speed_mode) * bool2int(power)) -- set Co-Pilot PNP right away.
		


		land_sw_last = land_prep
		local kolc_avt=get(hydro_circuit_auto_man)
		local power_36 = bool2int(get(bus36_volt_left)>30)
		-- this reactivates servos if power is restored after 36V power loss
		if kolc_timer>0 then
			kolc_timer=kolc_timer-passed
			kolc_avt=1
		end
		if power_36>power_36_prev and power27_prev then
			kolc_timer=1.5
		end
		power_36_prev=power_36
		power27_prev=power27

		-- set results
		set(roll_main_mode, roll_mode_main)
		set(pitch_main_mode, pitch_mode_main)

		set(roll_sub_mode, roll_submode)
		set(pitch_sub_mode, pitch_submode)
		
		--set(toga_command, bool2int(TOGA_mode))


		
		set(absu_power_cc, bool2int(power))
		set(absu_power_27, bool2int(power27))
		set(absu_nvu_arm,NVU_mode_arm)
		set(absu_az1_arm,AZ1_mode_arm)
		set(absu_az2_arm,AZ2_mode_arm)
		set(absu_app_arm,zach_arm)
		set(absu_gs_arm,gliss_arm)
		set(kolc,kolc_avt)
		-- set(alt_set_left,29.92)
		-- set(alt_set_right,29.92)
	end

end



