function tu154_hear_spu2on_DRhandler() end
function tu154_azs_emerg_trim_DRhandler() end
function tu154_window_slide_l_DRhandler() end
function tu154_window_slide_r_DRhandler() end
function tu154_itv_cap_DRhandler() end


function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end


simDR_pilot_head_x = find_dataref("sim/graphics/view/pilots_head_x")
   
simDR_cockpit_p_low =  find_dataref("tu154b2/custom/lights/cockpit_p_low")
T154_ear_effect	= find_dataref("sim/custom/t154cfg/ear_effect")
simDR_absu_at_g1 = find_dataref("tu154b2/custom/buttons/console/absu_throt_off_1")
simDR_absu_at_g2 = find_dataref("tu154b2/custom/buttons/console/absu_throt_off_2")
simDR_absu_at_g3 = find_dataref("tu154b2/custom/buttons/console/absu_throt_off_3")
simDR_msrp_year_ten = find_dataref("tu154b2/custom/switchers/eng/msrp_year_ten")
simDR_msrp_year_one = find_dataref("tu154b2/custom/switchers/eng/msrp_year_one")
simDR_failures = find_dataref("tu154b2/custom/failures/failures_enabled")
simDR_skv_alarm = find_dataref("tu154b2/custom/alarm/main_pressure")
simDR_passed = find_dataref("sim/operation/misc/frame_rate_period")
simDR_startuprunning = find_dataref("sim/operation/prefs/startup_running")
simDR_showgns = find_dataref("tu154b2/custom/anim/show_gns")
simDR_showgns1 = find_dataref("tu154b2/custom/anim/RXP")
simDR_bus27left = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_ping_pong = find_dataref("sim/graphics/animation/ping_pong_2")
simDR_sin_wave = find_dataref("sim/graphics/animation/sin_wave_2")
simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")
simDR_rv2 = find_dataref("tu154b2/custom/elec/rv5_right_cc")
simDR_sw_sound = find_dataref("tu154b2/custom/lights/tech_light_set")
simDR_but_sound = find_dataref("tu154b2/custom/buttons/srpbz/but_down")
simDR_com1_stby = find_dataref("sim/cockpit2/radios/actuators/com1_standby_frequency_hz")
simDR_spu_1_source = find_dataref("tu154b2/custom/switchers/spu_1_source")
simDR_com1 = find_dataref("sim/cockpit/radios/com1_freq_hz")
simDR_com2 = find_dataref("sim/cockpit/radios/com2_freq_hz")
simDR_com1_sel = find_dataref("sim/cockpit2/radios/actuators/audio_selection_com1")
simDR_com2_sel = find_dataref("sim/cockpit2/radios/actuators/audio_selection_com2")
simDR_com1_pwr = find_dataref("sim/cockpit2/radios/actuators/com1_power")
simDR_com2_pwr = find_dataref("sim/cockpit2/radios/actuators/com2_power")
simDR_ins_brt = find_dataref("sim/cockpit2/switches/instrument_brightness_ratio")
simDR_nav1 = find_dataref("sim/cockpit2/radios/indicators/nav1_relative_bearing_deg")
simDR_nav2 = find_dataref("sim/cockpit2/radios/indicators/nav2_relative_bearing_deg")
simDR_adf1 = find_dataref("sim/cockpit2/radios/indicators/adf1_relative_bearing_deg")
simDR_adf1_id = find_dataref("sim/cockpit2/radios/indicators/adf1_nav_id")
simDR_adf2 = find_dataref("sim/cockpit2/radios/indicators/adf2_relative_bearing_deg")
simDR_adf2_id = find_dataref("sim/cockpit2/radios/indicators/adf2_nav_id")
simDR_ark1_mode = find_dataref("tu154b2/custom/switchers/ovhd/ark_1_mode") 
simDR_ark2_mode = find_dataref("tu154b2/custom/switchers/ovhd/ark_2_mode") 
simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all") 
simDR_fp_flood = find_dataref("tu154b2/custom/lights/front_panel_flood") 
simDR_rp_flood = find_dataref("tu154b2/custom/lights/right_panel_flood_set") 
simDR_lp_flood = find_dataref("tu154b2/custom/lights/left_panel_flood_set") 
simDR_ep_flood = find_dataref("tu154b2/custom/lights/eng_panel_flood")
simDR_ovhd_fp_flood = find_dataref("tu154b2/custom/lights/ovhd_panel_int")
simDR_op_flood = find_dataref("tu154b2/custom/lights/ovhd_front_panel_flood")
simDR_ark1_lit = find_dataref("tu154b2/custom/lights/ark1_all_lit")
simDR_ark2_lit = find_dataref("tu154b2/custom/lights/ark2_all_lit")
simDR_op2_flood = find_dataref("tu154b2/custom/lights/ovhd_back_panel_flood") 
simDR_left_d_flood = find_dataref("tu154b2/custom/lights/left_panel_int") 
simDR_right_d_flood = find_dataref("tu154b2/custom/lights/right_panel_int") 
simDR_left_m_d_flood = find_dataref("tu154b2/custom/lights/mid_left_panel_int") 
simDR_right_m_d_flood = find_dataref("tu154b2/custom/lights/mid_right_panel_int") 
simDR_mid_pan_flood = find_dataref("tu154b2/custom/lights/mid_panel_flood") 
simDR_window_l = find_dataref("tu154b2/custom/anim/cockpit_window_left")  
simDR_window_r = find_dataref("tu154b2/custom/anim/cockpit_window_right") 
simDR_pax_door_1 = find_dataref("tu154b2/custom/anim/pax_door_1") 
simDR_pax_door_2 = find_dataref("tu154b2/custom/anim/pax_door_2") 
simDR_pax_door_3 = find_dataref("tu154b2/custom/anim/pax_door_3") 
simDR_qnh = find_dataref("sim/weather/barometer_sealevel_inhg") 
simDR_elevation = find_dataref("sim/flightmodel/position/elevation") 
simDR_radioalt = find_dataref("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot") 

--simDR_pitch_trim  = find_dataref("tu154b2/custom/trimmers/int_pitch_trim")
--simDR_emerg_trim  = find_dataref("tu154b2/custom/switchers/console/emerg_elev_trimm")
simDR_msrp_pwr  = find_dataref("tu154b2/custom/msrp/msrp_power")
simDR_time  = find_dataref("sim/time/total_running_time_sec")
simDR_27v_cc = find_dataref("tu154b2/custom/fire/fire_sys_cc")
simDR_fire_switch = find_dataref("tu154b2/custom/switchers/eng/fire_main_switch")
kontur_pow_l = find_dataref("sim/custom/kontur/left_power")
kontur_pow_r = find_dataref("sim/custom/kontur/right_power")
ubs_pow_l = find_dataref("sim/custom/ubs/left_power")
ubs_pow_r = find_dataref("sim/custom/ubs/right_power")
pump_tank1_1 = find_dataref("tu154b2/custom/switchers/fuel/pump_tank1_1")
pump_tank1_2 = find_dataref("tu154b2/custom/switchers/fuel/pump_tank1_2")
pump_tank1_3 = find_dataref("tu154b2/custom/switchers/fuel/pump_tank1_3")
pump_tank1_4 = find_dataref("tu154b2/custom/switchers/fuel/pump_tank1_4")
simDR_oat  = find_dataref("sim/cockpit2/temperature/outside_air_temp_deg")
simDR_rpm_high_1 = find_dataref("tu154b2/custom/gauges/engine/rpm_high_1")
simDR_rpm_high_2 = find_dataref("tu154b2/custom/gauges/engine/rpm_high_2")
simDR_rpm_high_3 = find_dataref("tu154b2/custom/gauges/engine/rpm_high_3")
simDR_rpm_thr = find_dataref("sim/cockpit2/engine/actuators/throttle_ratio")
simDR_rpm_thr_all = find_dataref("sim/cockpit2/engine/actuators/throttle_ratio_all")
simDR_alt  = find_dataref("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot")
simDR_flaps  = find_dataref("sim/cockpit2/controls/flap_ratio")
simDR_flaps_deploy  = find_dataref("sim/cockpit2/controls/flap_handle_deploy_ratio")
simDR_crew_vo  = find_dataref("tu154b2/custom/sounds/enable_crew_vo")
simDR_payl_crew = find_dataref("tu154b2/custom/payload/crew_num")
simDR_payl_cabin = find_dataref("tu154b2/custom/payload/cabin_num")
simDR_payl_tank3l = find_dataref("tu154b2/custom/payload/tank_3L")
simDR_payl_tank3r = find_dataref("tu154b2/custom/payload/tank_3R")
simDR_payl_tank4 = find_dataref("tu154b2/custom/payload/tank_4")
simDR_shtork1 = find_dataref("tu154b2/custom/switchers/spu_4_source")
simDR_shtork2 = find_dataref("tu154b2/custom/switchers/eng/hydro_trimm_rud_2_cap")
simDR_shtork3 = find_dataref("tu154b2/custom/switchers/spu_4_mode")
simDR_rv_dh_left = find_dataref("tu154b2/custom/gauges/alt/radioalt_dh_left")
simDR_rv_needle_left = find_dataref("tu154b2/custom/gauges/alt/radioalt_needle_left")
flaps_lev = find_dataref("tu154b2/custom/controll/flaps_lever")
simDR_nvu_but_lit = find_dataref("tu154b2/custom/lights/button/absu_nvu") 
simDR_qfe = find_dataref("sim/weather/aircraft/barometer_current_pas")
simDR_altitude = find_dataref("sim/flightmodel/position/y_agl")
simDR_altitude_qne = find_dataref("sim/cockpit2/gauges/indicators/altitude_ft_stby")
simDR_cockpit_lights = find_dataref("sim/cockpit/electrical/cockpit_lights")
uns1_on = find_dataref("sim/custom/uns1_on")
uns2_on = find_dataref("sim/custom/uns2_on")
tcas2000_mode = find_dataref("sim/custom/tcas2000/mode")
weather_sys = find_dataref("sim/custom/kontur/weather_sys")
weather_mode = find_dataref("sim/custom/kontur/weather_mode")
srpbz = find_dataref("tu154b2/custom/kontur/srpbz")
nvu_panel = find_dataref("tu154b2/custom/panels/show_nvu_panel")
simDRcrs_np1			= find_dataref("tu154b2/custom/switchers/ovhd/curs_np_on_1")
simDRcrs_np2				= find_dataref("tu154b2/custom/switchers/ovhd/curs_np_on_2")
simDRvor_bear_1				= find_dataref("tu154b2/custom/radio/vor_bear_1")
simDRvor_bear_2				= find_dataref("tu154b2/custom/radio/vor_bear_2")
simDRvor_dme_1				= find_dataref("sim/cockpit/radios/nav1_dme_dist_m")
simDRvor_dme_2				= find_dataref("sim/cockpit/radios/nav2_dme_dist_m")
simDRnvu_calc				= find_dataref("tu154b2/custom/switchers/ovhd/nvu_calc_set")
simDR_water_lvl = find_dataref("tu154b2/custom/misc/water_level")
simDR_roll_mode = find_dataref("sim/cockpit/autopilot/heading_roll_mode")
simDR_artstab1 = find_dataref("sim/aircraft/artstability/acf_ASmaxh_hi")
simDR_artstab2 = find_dataref("sim/aircraft/artstability/acf_ASh_hi_pos")
simDR_artstab3 = find_dataref("sim/aircraft/artstability/acf_AShiV")
simDR_art_roll = find_dataref("sim/cockpit2/switches/artificial_stability_on")
simDR_absu_roll_mode = find_dataref("tu154b2/custom/absu/roll_main_mode") 
simDR_absu_pitch_mode = find_dataref("tu154b2/custom/absu/pitch_main_mode") 
simDR_ailrn_size = find_dataref("sim/aircraft/controls/acf_ail1_crat")
simDR_roll_pos = find_dataref("tu154b2/custom/controlls/yoke_roll")
simDR_absu_roll_mode2 = find_dataref("tu154b2/custom/absu/roll_sub_mode")
simDR_ap_type = find_dataref("sim/aircraft/autopilot/preconfigured_ap_type")
simDR_absu_smooth = find_dataref("tu154b2/custom/switchers/console/absu_smooth_on") 
absu_roll_max = find_dataref("tu154b2/custom/absu/contr_roll")
-- simDR_air_usage_L =  find_dataref("tu154b2/custom/bleed/air_usage_L")
-- simDR_air_usage_R =  find_dataref("tu154b2/custom/bleed/air_usage_R")
-- simDR_bleed_cockpit_tube = find_dataref("tu154b2/custom/bleed/cockpit_tube_t") 
-- simDR_bleed_cabin1_tube =  find_dataref("tu154b2/custom/bleed/cabin1_tube_t") 
-- simDR_bleed_cabin2_tube = find_dataref("tu154b2/custom/bleed/cabin2_tube_t") 
simDR_sard_press_orig = find_dataref("tu154b2/custom/switchers/sard/sard_cabin_press_set") 
simDR_sard_spd = find_dataref("tu154b2/custom/switchers/sard/sard_spd_set") 
simDR_buster1 = find_dataref("tu154b2/custom/switchers/console/buster_on_1") 
simDR_buster2 = find_dataref("tu154b2/custom/switchers/console/buster_on_2") 
simDR_buster3 = find_dataref("tu154b2/custom/switchers/console/buster_on_3") 
simDR_busters_cap = find_dataref("tu154b2/custom/switchers/console/busters_cap") 


bkk_1 = find_dataref("tu154b2/custom/lights/mgv_control_fail")
bkk_2 = find_dataref("tu154b2/custom/lights/roll_left_high")
bkk_3 = find_dataref("tu154b2/custom/lights/roll_right_high")
bkk_test = find_dataref("tu154b2/custom/switchers/ovhd/bkk_contr")
dh_lit = find_dataref("tu154b2/custom/lights/decision_height") 
local mgv_contr_was = 0
local mgv_contr_timeout = 0

simDR_cabin_press_alt_act =  find_dataref("sim/cockpit/pressure/cabin_altitude_actual_m_msl")  
simDR_cabin_press_alt_set =  find_dataref("sim/cockpit/pressure/cabin_altitude_set_m_msl")  
simDR_cabin_press_alt_vvi_actual =  find_dataref("sim/cockpit/pressure/cabin_vvi_actual_m_msec") 
simDR_air_valve_L =  find_dataref("tu154b2/custom/switchers/airbleed/air_valve_left")
simDR_air_valve_R =  find_dataref("tu154b2/custom/switchers/airbleed/air_valve_right")
simDR_air_valve_B =  find_dataref("tu154b2/custom/switchers/airbleed/air_valve_both")
simDR_apu_bleed =  find_dataref("tu154b2/custom/switchers/eng/apu_air_bleed")
simDR_apu_n1  = find_dataref("tu154b2/custom/gauges/eng/apu_rpm")


simDR_rain2_lit = find_dataref("tu154b2/custom/anim/rain_glass_2")
simDR_rain2_1L_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_1_L")
simDR_rain2_2L_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_2_L")
simDR_rain2_3L_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_3_L")
simDR_rain2_4L_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_4_L")
simDR_rain2_5L_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_5_L")
simDR_rain2_1R_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_1_R")
simDR_rain2_2R_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_2_R")
simDR_rain2_3R_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_3_R")
simDR_rain2_4R_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_4_R")
simDR_rain2_5R_lit = find_dataref("tu154b2/custom/anim/rain_glass_2_w_5_R")
simDR_anim_ice_L = find_dataref("tu154b2/custom/anim/window_ice_1")
simDR_anim_ice_C = find_dataref("tu154b2/custom/anim/window_ice_2")
simDR_anim_ice_R = find_dataref("tu154b2/custom/anim/window_ice_3")
simDR_anim_ice_all = find_dataref("tu154b2/custom/anim/window_ice_4")
-- simDR_window_heat_l = find_dataref("tu154b2/custom/switchers/ovhd/window_heat_1")
-- simDR_window_heat_c = find_dataref("tu154b2/custom/switchers/ovhd/window_heat_2")
-- simDR_window_heat_r = find_dataref("tu154b2/custom/switchers/ovhd/window_heat_3")
-- simDR_cockpit_temp = find_dataref("tu154b2/custom/gauges/airbleed/cockpit_temp")
simDR_cabin_temp = find_dataref("tu154b2/custom/gauges/airbleed/cabin_temp")
simDR_cabin_diff = find_dataref("tu154b2/custom/gauges/airbleed/cabin_diff")
simDR_cabin_diff_set = find_dataref("tu154b2/custom/switchers/sard/sard_diff_set")
simDR_cabin_diff_psi = find_dataref("sim/cockpit/pressure/cabin_pressure_differential_psi") 
simDR_airspeed = find_dataref("sim/flightmodel/position/indicated_airspeed")

simDR_cabin1_temp = find_dataref("tu154b2/custom/bleed/cabin_1_temp") 
simDR_cabin2_temp = find_dataref("tu154b2/custom/bleed/cabin_2_temp") 
simDR_cabin_sel = find_dataref("tu154b2/custom/switchers/airbleed/cabin_sel")
simDR_ushdb1 =  find_dataref("tu154b2/custom/switchers/ovhd/ushdb_mode_1")
simDR_ushdb2 =  find_dataref("tu154b2/custom/switchers/ovhd/ushdb_mode_2")
simDR_gforce_reset =  find_dataref("tu154b2/custom/buttons/misc/gforce_reset")
simDR_gforce_ind =  find_dataref("tu154b2/custom/gauges/misc/gforce_ind")
simDR_gforce_min =  find_dataref("tu154b2/custom/gauges/misc/gforce_min")
simDR_gforce_max =  find_dataref("tu154b2/custom/gauges/misc/gforce_max")
simDR_parking_brake =  find_dataref("tu154b2/custom/controll/parking_brake") 
simDR_gear_blocks =  find_dataref("tu154b2/custom/anim/gear_blocks")  
test =  find_dataref("tu154b2/custom/gauges/ahz/pitch_corr_C") 
ahz_flag_l =  find_dataref("tu154b2/custom/gauges/ahz/ahz_flag_L") 
ahz_flag_r =  find_dataref("tu154b2/custom/gauges/ahz/ahz_flag_R")
--simDR_absu_pwr =  find_dataref("tu154b2/custom/absu_power_cc") 
simDR_cab_alt =  find_dataref("tu154b2/custom/gauges/airbleed/cabin_alt") 
simDR_cab_vvi =  find_dataref("tu154b2/custom/gauges/airbleed/cabin_vvi_new") 
simDR_speed_mid_needle = find_dataref("tu154b2/custom/gauges/speed/speed_mid_needle")
simDR_sard_disable = find_dataref("tu154b2/custom/switchers/eng/sard_disable")
simDR_emerg_decomp = find_dataref("tu154b2/custom/switchers/airbleed/emerg_decompress")
bkk_roll = find_dataref("tu154b2/custom/bkk/bkk_roll")
vvi_fpm = find_dataref("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
cab_alt_new2 =  find_dataref("sim/cockpit2/pressurization/indicators/cabin_altitude_ft")

simDR_cab_eng1_vlv = find_dataref("tu154b2/custom/switchers/airbleed/eng_valve_1")
simDR_cab_eng2_vlv = find_dataref("tu154b2/custom/switchers/airbleed/eng_valve_2")
simDR_cab_eng3_vlv = find_dataref("tu154b2/custom/switchers/airbleed/eng_valve_3")



apu_working =  find_dataref("tu154b2/custom/elec/gen4_work")
felt_altitude = find_dataref("sim/cockpit2/oxygen/indicators/pilot_felt_altitude_ft")
simDR_gen_fail1 = find_dataref("tu154b2/custom/lights/small/gen_fail_1")
simDR_gen_fail2 = find_dataref("tu154b2/custom/lights/small/gen_fail_2")
simDR_gen_fail3 = find_dataref("tu154b2/custom/lights/small/gen_fail_3")
simDR_gen_amp_sel = find_dataref("tu154b2/custom/switchers/eng/bus115_amp_sel") 
simDR_gen_volt_sel = find_dataref("tu154b2/custom/switchers/eng/bus115_volt_sel")
simDR_gen_phase_sel = find_dataref("tu154b2/custom/switchers/eng/bus115_volt_phase_sel")
simDR_gen_amp = find_dataref("tu154b2/custom/gauges/eng/bus115_amp") 
simDR_gen_volt = find_dataref("tu154b2/custom/gauges/eng/bus115_volt") 
-- simDR_vu1_fail = find_dataref("tu154b2/custom/failures/vu1_fail") 
-- simDR_vu2_fail = find_dataref("tu154b2/custom/failures/vu2_fail") 
-- simDR_vu3_fail = find_dataref("tu154b2/custom/failures/vu3_fail") 
-- simDR_tr1_fail = find_dataref("tu154b2/custom/failures/tr1_fail") 
-- simDR_tr2_fail = find_dataref("tu154b2/custom/failures/tr2_fail") 
-- simDR_gen1_work = find_dataref("tu154b2/custom/elec/gen1_work") 
-- simDR_gen2_work = find_dataref("tu154b2/custom/elec/gen2_work") 
-- simDR_gen3_work = find_dataref("tu154b2/custom/elec/gen3_work") 
-- simDR_gen4_work = find_dataref("tu154b2/custom/elec/gen4_work") 
-- simDR_gen5_work = find_dataref("tu154b2/custom/elec/gpu_work")
simDRgns_brt				= find_dataref("tu154b2/custom/lights/gns430_lit") 
simDR_kln				= find_dataref("tu154b2/custom/switchers/ovhd/kln_on")
var_left				= find_dataref("tu154b2/custom/switchers/ovhd/var_left") 
var_right				= find_dataref("tu154b2/custom/switchers/ovhd/var_right") 
vsi_brt_left				= find_dataref("tu154b2/custom/gauges/vsi/vsi_brt_left") 
vsi_brt_right				= find_dataref("tu154b2/custom/gauges/vsi/vsi_brt_right") 
apu_air_doors= find_dataref("tu154b2/custom/eng/apu_air_doors")



simDR_lit_test_front = find_dataref("tu154b2/custom/buttons/lamp_test_front")
simDR_lamp_test_apu =  find_dataref("tu154b2/custom/buttons/lamp_test_apu")
simDR_spoolup =  find_dataref("sim/aircraft/engine/acf_spooltime_turbine")
simDR_seatbelts = find_dataref("tu154b2/custom/switchers/ovhd/sign_belts")
simDR_SL_press = find_dataref("sim/weather/region/sealevel_pressure_pas")
simDR_agl = find_dataref("sim/flightmodel/position/y_agl")

cab_alt_new =  find_dataref("tu154b2/custom/gauges/airbleed/cabin_alt_new")
cab_diff_new =  find_dataref("tu154b2/custom/gauges/airbleed/cabin_diff_new")




gforce_maxn = deferred_dataref("sim/custom/gauges/misc/gforce_maxn", "number")
gforce_minn = deferred_dataref("sim/custom/gauges/misc/gforce_minn", "number")
gforce_reset_butt = deferred_dataref("sim/custom/buttons/misc/gforce_reset_but", "number")
window_ice_1_new = deferred_dataref("sim/custom/anim/window_ice_1_new", "number")
window_ice_2_new = deferred_dataref("sim/custom/anim/window_ice_2_new", "number")
window_ice_3_new = deferred_dataref("sim/custom/anim/window_ice_3_new", "number")
window_ice_4_new = deferred_dataref("sim/custom/anim/window_ice_4_new", "number")
rain2_L_lit = deferred_dataref("sim/custom/anim/rain_glass_2_L", "number")
rain2_C_lit = deferred_dataref("sim/custom/anim/rain_glass_2_C", "number")
rain2_R_lit = deferred_dataref("sim/custom/anim/rain_glass_2_R", "number")
hear_spu2 = deferred_dataref("sim/custom/radio/hear_spu2", "number")
hear_spuon = deferred_dataref("sim/custom/radio/spu2_on", "number",tu154_hear_spu2on_DRhandler)
compass_adf1 = deferred_dataref("sim/custom/radio/compass_adf1", "number")
compass_adf2 = deferred_dataref("sim/custom/radio/compass_adf2", "number")
emerg_trim_azs = deferred_dataref("sim/custom/switchers/emerg_trimm_azs", "number",tu154_azs_emerg_trim_DRhandler)
window_slide_l = deferred_dataref("sim/custom/anim/cockpit_window_left_slide", "number",tu154_window_slide_l_DRhandler)
window_slide_r = deferred_dataref("sim/custom/anim/cockpit_window_right_slide", "number",tu154_window_slide_l_DRhandler)
itv_cap = deferred_dataref("sim/custom/misc/itv_cap", "number",tu154_itv_cap_DRhandler)
itv_hour = deferred_dataref("sim/custom/misc/itv_hour", "number")
itv_min = deferred_dataref("sim/custom/misc/itv_min", "number")
siv1 = deferred_dataref("sim/custom/misc/siv1", "number")
tank1_cap1 = deferred_dataref("sim/custom/switchers/fuel/pump_tank1_1_cap", "number")
tank1_cap2 = deferred_dataref("sim/custom/switchers/fuel/pump_tank1_2_cap", "number")
tank1_cap3 = deferred_dataref("sim/custom/switchers/fuel/pump_tank1_3_cap", "number")
tank1_cap4 = deferred_dataref("sim/custom/switchers/fuel/pump_tank1_4_cap", "number")
szt_1 = deferred_dataref("sim/custom/switchers/eng/szt_1", "number")
szt_2 = deferred_dataref("sim/custom/switchers/eng/szt_2", "number")
szt_3 = deferred_dataref("sim/custom/switchers/eng/szt_3", "number")
szt_test = deferred_dataref("sim/custom/switchers/eng/szt_test", "number")
szt_test_cap = deferred_dataref("sim/custom/switchers/eng/szt_test_cap", "number")
szt_1_lit = deferred_dataref("sim/custom/lights/szt_1", "number")
szt_2_lit = deferred_dataref("sim/custom/lights/szt_2", "number")
szt_3_lit = deferred_dataref("sim/custom/lights/szt_3", "number")
rpm1 = deferred_dataref("sim/custom/gauges/engine/rpm_high_1_new", "number")
rpm2 = deferred_dataref("sim/custom/gauges/engine/rpm_high_2_new", "number")
rpm3 = deferred_dataref("sim/custom/gauges/engine/rpm_high_3_new", "number")
test_kmp_1 = deferred_dataref("sim/custom/radios/kursmp_test1", "number")
test_kmp_2 = deferred_dataref("sim/custom/radios/kursmp_test2", "number")
test_kmp_1_lit = deferred_dataref("sim/custom/lights/kursmp_test1_lit", "number")
test_kmp_2_lit = deferred_dataref("sim/custom/lights/kursmp_test2_lit", "number")
airflow_set = deferred_dataref("sim/custom/gauges/airbleed/airflow_set", "number")
airflow_reset = deferred_dataref("sim/custom/gauges/airbleed/airflow_reset", "number")
airflow_timeout = deferred_dataref("sim/custom/gauges/airbleed/airflow_timeout", "number")
cab_alt_loc =  deferred_dataref("sim/custom/gauges/airbleed/cabin_alt_loc", "number")
--cab_vvi_new =  deferred_dataref("sim/custom/gauges/airbleed/cabin_vvi_new", "number")
airflow_loc =  deferred_dataref("sim/custom/gauges/airbleed/airflow_loc", "number")
airflow =  deferred_dataref("sim/custom/gauges/airbleed/airflow", "number")
buster_cap = deferred_dataref("sim/custom/switchers/console/busters_cap_new", "number") 
speed_mid_1000 = deferred_dataref("sim/custom/gauges/speed/speed_mid_1000", "number") 
vbe_select_cap = deferred_dataref("sim/custom/switchers/vbe_select_cap", "number") 
cab_vvi_plus =  deferred_dataref("sim/custom/gauges/airbleed/cab_vvi_plus", "number")
qfe_mmhg = deferred_dataref("sim/custom/gauges/airbleed/qfe_mmhg", "number")
alt_qne_m = deferred_dataref("sim/custom/gauges/airbleed/alt_qne_m", "number")
airflow_ucmpsd = deferred_dataref("sim/custom/gauges/airbleed/airflow_ucmpsd", "number") 
start_press = deferred_dataref("sim/custom/gauges/airbleed/start_press", "number") 
start_press_alt = deferred_dataref("sim/custom/gauges/airbleed/start_press_alt", "number") 
altitude_qfe = deferred_dataref("sim/custom/gauges/airbleed/altitude_qfe", "number")
airflow_power = deferred_dataref("sim/custom/gauges/airbleed/airflow_power", "number")
apu_pwr_lit = deferred_dataref("sim/custom/lights/small/apu_gen_on_new", "number")
airflow_crane = deferred_dataref("sim/custom/gauges/airbleed/airflow_crane", "number")
--cab_vvi_fin = deferred_dataref("sim/cockpit/pressure/cabin_vvi_actual_fpm", "number")
cab_vvi_loc = deferred_dataref("sim/custom/gauges/airbleed/cabin_vvi_loc", "number")
apu_n1_new = deferred_dataref("sim/custom/gauges/eng/apu_rpm_new", "number")
gen_fail1 = deferred_dataref("sim/custom/lights/small/gen_fail_1_new", "number")
gen_fail2 = deferred_dataref("sim/custom/lights/small/gen_fail_2_new", "number")
gen_fail3 = deferred_dataref("sim/custom/lights/small/gen_fail_3_new", "number")
gen_amp_new = deferred_dataref("sim/custom/gauges/eng/bus115_amp_new", "number")
gen_volt_new = deferred_dataref("sim/custom/gauges/eng/bus115_volt_new", "number")
vsi_lit_left = deferred_dataref("sim/custom/gauges/vsi/vsi_lit_left", "number")
vsi_lit_right = deferred_dataref("sim/custom/gauges/vsi/vsi_lit_right", "number")
rpm_thr_loc = deferred_dataref("sim/custom/rpm_thr_loc", "number")
--qfe_tst = deferred_dataref("sim/custom/qfe_test", "number")

airflow_eject_swc =  find_dataref("sim/custom/b2/airflow_eject")
simDR_ard_temp =  find_dataref("tu154b2/custom/kskv/ard_temp")

simDR_scp = find_dataref("scp/api/ismaster")


local simDR_sard_press = 0
local airflow_eject = 0
local rpm_alt_corr = 0
local airflow_closed = 0
local gen_amp_loc = 0
local gen_volt_loc = 0
local cab_vvi_boost = 0
local airflow_power_prc = 0
local airflow_delta = 0
local slow_boost = 0
local cab_alt_delta = 0
local cab_diff_delta = 0
local spoolup_cooldown = 0
local spoolup = 0
local gen1_fail_to = 0
local gen2_fail_to = 0
local gen3_fail_to = 0
local oat_coeff_apu = 0
local apu_warm_up = 0
local cab_alt_timeout = 0
local felt_timeout_set = 0
local felt_timeout = 0
local press_ovrd_alt_start_set = 0
local press_ovrd_alt_start = 0
local cab_alt_corr_loc = 0
local cabin_press_mm = 0
local crew_vo_timeout = 0
local cab_diff_loc_new = 0
local srd_alt_delta = 0
local cab_vvi_delta = 0
local cab_vvi_new_1ms = 9
local cab_alt_new_1m = 0.00110
local windows_doors = 0
local boosted_uncmpr = 0
local airflow_decompr_gnd = 0
local airflow_boost = 0
local ahz_flag_was_l = 0
local ahz_flag_was_r = 0
local water_level_loc = 0
local cabin12_temp_delta_loc = 0
local cabin12_temp_delta = 0
local after_pwup_temp_set = 0
local air_usage_loc = 0
local qfe = 0
local aircraft_loaded = 0
local current_pitch_trim = 0
local flaps_wait = 0
local sw_sound = 1
local sw_sound_hear = 1
local sw_sound_szt_1 = 1
local sw_sound_szt_2 = 1
local sw_sound_szt_3 = 1
local sw_sound_szt_test = 1
local itv_start = 0
local itv_sec_loc = 0
local itv_day_loc = 0
local itv_corr = 0
local min_while_change = 0
local bus27 = 0
local bus27_cc = 0
local fire_cc = 0
local uns_l_cc = 0
local uns_r_cc = 0
local mfi_l_cc = 0
local mfi_r_cc = 0
local ubs_l_cc = 0
local ubs_r_cc = 0
local crew_vo = 0
local in_air = 0
local in_air_set = 0
local al_flaps = 0
local flaps_loc = 0
local flaps_rat_loc = 0.5
local flaps_set_loc = 0
local temp_abs = 0
local temp_coef = 0
local oat_delta = 0
local rpm_delta = 0
local rpm_delta_result = 0
local baro_delta = 0
local alt_coeff = 0
local thro_1 = 0
local thro_2 = 0
local thro_3 = 0
local rpm1_loc = 0
local rpm2_loc = 0
local rpm3_loc = 0
local itv_1 = 0
local itv_2 = 0
local itv_3 = 0
local itv_4 = 0
local test_timer_kmp1 = 0
local test_timer_kmp2 = 0
local bus36 = 0
local window_l_ice_delta  = 0
local window_c_ice_delta  = 0
local window_r_ice_delta  = 0
local emerg_trim_actv = 0
local cabin_temp_delta = 0
--emerg_trim_azs = 1
local g_init_1=math.random()/5
local g_init_2=math.random()/7
local gforce_maxn_loc =  g_init_1
local gforce_maxn_loc2 = g_init_1
local gforce_minn_loc =  g_init_2
local gforce_minn_loc2 = g_init_2
local gforce_reset_butt_loc = 0
local roll_smooth = 0
local cab_vvi_decomp = 0
local gen_correct_delta = 0
local gen_delta_amp = 0
gforce_maxn =  simDR_gforce_max
gforce_minn =  simDR_gforce_min
cab_alt_new = (760-simDR_qfe/3386.39 * 25.4)*0.012
local initial_press=0
local initial_press_smth=0
local ard_deiced=0



     
function gen_correction_hz(fail_to,correct,result)
    if fail_to > 11 then
       gen_correct_delta = result + 120  
       if result > -120 then
          correct = correct - math.abs(gen_correct_delta) * 8 * SIM_PERIOD
       else
          correct = -120
       end
    elseif fail_to < 9 then
       gen_correct_delta = 0 + correct 
       if correct < 0 then
          correct = correct + math.abs(gen_correct_delta) * 8 * SIM_PERIOD
       else
          correct = 0
       end
    end
    return correct
end


function smooth_light(orig_lit,new_lit)
    if orig_lit < 0.08 and new_lit < 0.08 then
        return 0
    else
        local new_lit_loc = new_lit * 10
        local orig_lit_loc = math.floor(orig_lit * 10)
        if orig_lit_loc > new_lit_loc and new_lit_loc < 10 then
            new_lit_loc = math.floor(new_lit_loc + 120 *SIM_PERIOD)
        elseif orig_lit_loc < 0.08 and new_lit_loc > 0 then
            new_lit_loc = math.floor(new_lit_loc - 120 *SIM_PERIOD)
        elseif orig_lit_loc < 9 and orig_lit_loc > 6 then
            new_lit_loc = orig_lit_loc
        end
        return (new_lit_loc * 0.1)
    end
end    


function aircraft_load()
    if simDR_startuprunning > 0 then
        kontur_pow_l = 1
        kontur_pow_r = 1
        ubs_pow_l = 1
        ubs_pow_r = 1
        uns1_on = 1
        uns2_on = 1
        tcas2000_mode = 4
        weather_sys = 1
        weather_mode = 1
        srpbz = 1
        szt_1 = 1
        szt_2 = 1
        szt_3 = 1
    else
        simDR_absu_at_g1 = 1
        simDR_absu_at_g2 = 1
        simDR_absu_at_g3 = 1
    end
    cab_alt_new = (760-qfe_mmhg)*0.012
    simDR_cabin_diff_set = 0.61
    simDR_msrp_year_ten = simDR_msrp_year_one
    simDR_msrp_year_one = 0
    aircraft_loaded = 1
end


function itv_h_m_CMDhandler(phase, duration) 
    if phase == 0 then
        if itv_1 == 1 and itv_2 > 3 then
            itv_corr = itv_corr - 36000
            min_while_change = 1
        elseif itv_1 < 2 then
            itv_corr = itv_corr + 36000
            min_while_change = 1
        else
            itv_corr = itv_corr - 72000
            min_while_change = 1
        end
    elseif phase == 2 then
        min_while_change = 0
    end
end

function itv_h_p_CMDhandler(phase, duration) 
    if phase == 0 then
        if itv_1 == 2 and itv_2 == 3 then
            itv_corr = itv_corr - 10800
            min_while_change = 1
        elseif itv_2 < 9 then
            itv_corr = itv_corr + 3600
            min_while_change = 1
        else
            itv_corr = itv_corr - 32400
            min_while_change = 1
        end
    elseif phase == 2 then
        min_while_change = 0
    end
end
function itv_m_m_CMDhandler(phase, duration) 
    if phase == 0 then
        if itv_3 < 5 then
            itv_corr = itv_corr + 600
        else
            itv_corr = itv_corr - 3000
        end
    end
end

function itv_m_p_CMDhandler(phase, duration) 
    if phase == 0 then
        if itv_4 < 9 then
            itv_corr = itv_corr + 60
        else
            itv_corr = itv_corr - 540
        end
    end
end

function siv1_CMDhandler(phase, duration) 
    if phase == 0 then
        if siv1 < 1 then
            siv1 = 1
        else
            siv1 = 0
        end
        if simDR_sw_sound > -1 then
            simDR_sw_sound = -1
        else
            simDR_sw_sound = 0
        end
    end
    if phase == 2 then
        if simDR_shtork1 > 0 then
            simDR_shtork1 = 0
        end
        if simDR_shtork2 > 0 then
            simDR_shtork2 = 0
        end
        if simDR_shtork3 > 0 then
            simDR_shtork3 = 0
        end
    end
end


itv_h_m_cmnd	= create_command("t154/itv_h_m", "T154 ITV H minus", itv_h_m_CMDhandler)
itv_h_p_cmnd	= create_command("t154/itv_h_p", "T154 ITV H plus", itv_h_p_CMDhandler)
itv_m_m_cmnd	= create_command("t154/itv_m_m", "T154 ITV M minus", itv_m_m_CMDhandler)
itv_m_p_cmnd	= create_command("t154/itv_m_p", "T154 ITV M plus", itv_m_p_CMDhandler)

siv1_cmnd	= create_command("t154/siv1", "T154 SIV1 ONOFF", siv1_CMDhandler)

function first_misc()
    
-- if simDR_showgns1 > 0 then
   -- simDR_showgns1 = 0
   -- simDR_showgns = 0
-- end

    
-- if simDR_altitude_qne * 0.00005 > 0 and simDR_altitude_qne * 0.00005 < 1.5 then
    -- rpm_alt_corr = simDR_altitude_qne * 0.00005
-- elseif simDR_altitude_qne * 0.00005 < 0 then
    -- rpm_alt_corr = 0
-- elseif simDR_altitude_qne * 0.00005 > 1.5 then
    -- rpm_alt_corr = 1.5
-- end

-- if simDR_scp ~= 1 then

    -- rpm1_loc = simDR_rpm_high_1 + (rpm_delta_result * thro_1 * alt_coeff) + rpm_alt_corr - (0.76 * (1-thro_1))
    -- rpm2_loc = simDR_rpm_high_2 + (rpm_delta_result * thro_2 * alt_coeff) + rpm_alt_corr - (0.76 * (1-thro_2))
    -- rpm3_loc = simDR_rpm_high_3 + (rpm_delta_result * thro_3 * alt_coeff) + rpm_alt_corr - (0.76 * (1-thro_3))
    
        
    -- if rpm1_loc > 0 then
        -- rpm1 = rpm1_loc
    -- else
        -- rpm1 = 0
    -- end
    -- if rpm2_loc > 0 then
        -- rpm2 = rpm2_loc
    -- else
        -- rpm2 = 0
    -- end
    -- if rpm3_loc > 0 then
        -- rpm3 = rpm3_loc
    -- else
        -- rpm3 = 0
    -- end
    
-- end

end


function skv()
   
-- simDR_sard_press = simDR_sard_press_orig
-- simDR_cabin_diff_psi = cab_diff_loc_new * 14.2233
    
-- if airflow > 800 then
    -- airflow_power_prc = 1
-- else
    -- airflow_power_prc = airflow * 0.0014
-- end

-- if cab_vvi_fin > 0.7 then
      -- cab_alt_loc = cab_alt_loc + math.abs((cab_vvi_new/8.34) * 0.001) * SIM_PERIOD
-- elseif cab_vvi_fin < -0.7 then
      -- cab_alt_loc = cab_alt_loc - math.abs((cab_vvi_new/8.34) * 0.001) * SIM_PERIOD
-- end
    
  


-- cab_vvi_boost = 0
    
   

-- qfe_mmhg = simDR_qfe * 25.4 /3386.39
-- cabin_press_mm = 760 - ((cab_alt_loc* 1000) / 12)  
    
    
-- if ((cabin_press_mm - qfe_mmhg) *0.00135951) > 0.001 then
        -- cab_diff_loc_new = (cabin_press_mm - qfe_mmhg) *0.00135951
-- elseif ((cabin_press_mm - qfe_mmhg) *0.00135951) < -0.001 then
        -- cab_diff_loc_new = (cabin_press_mm - qfe_mmhg) *0.00135951
-- else
        -- cab_diff_loc_new = 0
-- end

-- airflow_delta = airflow - airflow_loc
    
-- local grnd_qfe=simDR_SL_press-(simDR_elevation-simDR_agl)*11.9
-- --qfe_tst=grnd_qfe*0.00750062-5
-- start_press_alt = (760 - math.min(simDR_sard_press,grnd_qfe*0.00750062-5)) * 11.9
    
 
-- cab_diff_delta = cab_diff_loc_new - cab_diff_new
    
-- if cab_diff_delta > 0.0001 then
  -- cab_diff_new = cab_diff_new + math.abs(cab_diff_delta) * 0.03
-- elseif cab_diff_delta < 0 then
  -- cab_diff_new = cab_diff_new - math.abs(cab_diff_delta) * 0.03
-- end

    
-- cab_alt_delta = cab_alt_loc - cab_alt_new
    
-- if cab_alt_delta > 0.0001 then  
 -- if cab_alt_new < 5 then
  -- cab_alt_new = cab_alt_new + math.abs(cab_alt_delta) * 0.02
 -- end
-- elseif cab_alt_delta < 0 then
 -- if cab_alt_new > -0.35 then
  -- cab_alt_new = cab_alt_new - math.abs(cab_alt_delta) * 0.02
 -- end
-- end

-- if cab_diff_loc_new < 0.0195 and simDR_on_ground>0 and airflow>100 and airflow_eject==0 then
	-- initial_press=20-airflow_power
-- else
	-- initial_press=0
-- end   
 
-- initial_press_smth=2/(2+simDR_passed)*initial_press_smth+simDR_passed/(2+simDR_passed)*initial_press

-- if airflow_ucmpsd > 0 then
    -- if (cab_vvi_loc - airflow_power + (airflow_reset * 18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) < 175 and (cab_vvi_loc - airflow_power + (airflow_reset * -18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) > -175 then
        -- cab_vvi_fin =  cab_vvi_loc - airflow_power + (airflow_reset * -18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed) + ((vvi_fpm * 0.00508) * 8.42)
    -- end
    -- if (cab_vvi_loc - airflow_power + (airflow_reset * 18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) > 175 then
       -- cab_vvi_fin = 175
    -- end
    -- if (cab_vvi_loc - airflow_power + (airflow_reset * -18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) < -175 then
       -- cab_vvi_fin = -175
    -- end        
-- else
    -- if (cab_vvi_loc - (airflow_power+initial_press_smth) + (airflow_reset * 18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) < 175 and (cab_vvi_loc - (airflow_power+initial_press) + (airflow_reset * -18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) > -175 then
        -- cab_vvi_fin =  cab_vvi_loc - (airflow_power+initial_press_smth) + (airflow_reset * -18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)
    -- end
    -- if (cab_vvi_loc - (airflow_power+initial_press_smth) + (airflow_reset * 18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) > 175 then
       -- cab_vvi_fin = 175
    -- end
    -- if (cab_vvi_loc - (airflow_power+initial_press_smth) + (airflow_reset * -18.52) - math.abs(cab_vvi_boost) + math.abs(cab_vvi_decomp) - math.abs(airflow_closed)) < -175 then
       -- cab_vvi_fin = -175
    -- end  
-- end

-- cab_vvi_delta = cab_vvi_fin - cab_vvi_new    

-- if cab_vvi_delta > 0.05 then
      -- cab_vvi_new = cab_vvi_new + math.abs(cab_vvi_delta) * 0.022
-- elseif cab_vvi_delta < 0 then
      -- cab_vvi_new = cab_vvi_new - math.abs(cab_vvi_delta) * 0.022
-- end
     

    
    
if simDR_pilot_head_x > -1.3 and T154_ear_effect > 0 and simDR_window_l < 0.1 and simDR_window_r < 0.1 and simDR_pax_door_1 < 0.1 and simDR_pax_door_2 < 0.1 and simDR_pax_door_3 < 0.1 then 
    if simDR_cab_vvi > 60 then
        if felt_timeout_set < 1  then
            felt_timeout = math.abs(simDR_cab_vvi / 8.42) * 0.6
            felt_timeout_set = 1
        end
        if felt_timeout > 0 then
            felt_altitude = 155000
        end
    elseif simDR_cab_vvi < -60 then
        if felt_timeout_set < 1  then
            felt_timeout = math.abs(simDR_cab_vvi / 8.42) * 0.6
            felt_timeout_set = 1
        end
        if felt_timeout > 0 then
            felt_altitude = 155000
        end
    else
        felt_timeout_set = 0
        felt_timeout = 0
    end

    if felt_timeout > 0 then
      felt_timeout = felt_timeout - simDR_passed
    end
end   
    
    
-- simDR_cabin_press_alt_act = cab_alt_corr_loc
-- simDR_cabin_press_alt_set = cab_alt_corr_loc
-- simDR_cabin_press_alt_vvi_actual = cab_vvi_new * 25
   
-- alt_qne_m = simDR_altitude_qne * 0.3048 
    
-- if (airflow-(airflow_loc+6)) * 0.12 *  ((airflow_set * 0.3333333)*airflow_power_prc)> 0 and airflow_ucmpsd < 1 then
        -- airflow_power = (airflow-(airflow_loc+6)) * 0.195 * ((airflow_set * 0.3333333)*airflow_power_prc)
-- elseif (airflow-(airflow_loc+6)) * 0.12 *  ((airflow_set * 0.3333333)*airflow_power_prc) < -0.1 then
        -- airflow_power = (airflow-(airflow_loc+6)) * 0.05 *  ((airflow_set * 0.3333333)*airflow_power_prc)
-- else
        -- airflow_power = 0
-- end

-- if cab_alt_new < 3.3 and cab_diff_new < 0.7 then
    -- simDR_skv_alarm = 0
-- else
    -- simDR_cabin_press_alt_act = cab_alt_loc *3280.84
    -- simDR_cabin_press_alt_set = cab_alt_loc *3280.84
    -- simDR_cabin_diff = cab_diff_loc_new
    -- simDR_skv_alarm = 1
-- end
 


-- if airflow_ucmpsd > 0 then
    -- airflow_crane = 0
    -- airflow_reset = 0
    -- airflow_set = 0
    -- if airflow_loc > 60 then
        -- airflow_loc = 60
    -- end
    -- airflow_timeout = 0
    -- if cab_diff_loc_new > 0.002 then
     -- if simDR_window_l < 0.3 and simDR_window_l > 0 then
       -- if cab_vvi_fin < 40 then
        -- cab_vvi_loc = cab_vvi_loc + 0.15
       -- end
     -- elseif simDR_window_r < 0.3 and simDR_window_r > 0 then
       -- if cab_vvi_fin < 40 then
        -- cab_vvi_loc = cab_vvi_loc + 0.15
       -- end
     -- else
       -- if cab_vvi_fin < 125 then
        -- cab_vvi_loc = cab_vvi_loc + 0.9
       -- end
     -- end
    -- elseif cab_diff_loc_new < -0.002 then
      -- if bus27 > 0 then
           -- if cab_vvi_fin > -100 then
                -- cab_vvi_loc = cab_vvi_loc - 0.3
           -- end
      -- else
           -- if cab_vvi_fin > -30 then
                -- cab_vvi_loc = cab_vvi_loc - 0.3
           -- end
      -- end
    -- else
        -- cab_vvi_loc = 0
    -- end
-- else
    -- if simDR_sard_disable > 0 then
        -- airflow_closed = airflow_loc * -0.11
    -- else
        -- airflow_closed = 0
    -- end
-- end
   
    
-- if simDR_emerg_decomp < 1 and simDR_sard_disable < 1 and airflow_ucmpsd < 1 then
	-- if cab_diff_loc_new > 0 then
        -- if simDR_on_ground < 1 then
            -- if cab_diff_loc_new < (simDR_cabin_diff_set - 0.012) then  
                -- if start_press_alt+15 < ((cab_alt_loc - 0.001) * 1000) and vvi_fpm < -150 then
                       -- if cab_vvi_plus > -5 then
                        -- cab_vvi_plus = cab_vvi_plus - 0.1
                       -- end
                -- elseif start_press_alt+15 > ((cab_alt_loc + 0.001) * 1000) and vvi_fpm > 150 then
                       -- if cab_vvi_plus < 5 then
                        -- cab_vvi_plus = cab_vvi_plus + 0.1
                       -- end
                -- else
                        -- cab_vvi_plus = 0
                -- end 
            -- else
                -- if cab_diff_loc_new < (simDR_cabin_diff_set - 0.012) then
                       -- if cab_vvi_plus > -5 then
                        -- cab_vvi_plus = cab_vvi_plus - 0.1
                       -- end
                -- elseif cab_diff_loc_new > simDR_cabin_diff_set then
                       -- if cab_vvi_plus < 5 then
                        -- cab_vvi_plus = 4.5
                       -- end
                -- else
                     -- cab_vvi_plus = 0
                -- end      
            -- end
        -- else
              -- if airflow_set > 2.99 then
                  -- if cab_diff_loc_new < 0.0195 then
                       -- if cab_vvi_plus > (-5 * airflow_eject) then
                        -- cab_vvi_plus = cab_vvi_plus - 0.1
                       -- end
                  -- else
                       -- cab_vvi_plus = 0
                  -- end
             -- else
                 -- cab_vvi_plus = 0
             -- end
        -- end
    -- else
       -- cab_vvi_plus = 0
    -- end
-- end

-- if airflow_power_prc * 10 < cab_diff_loc_new and airflow_crane == 0 and airflow_ucmpsd < 1 then
  -- if cab_vvi_decomp < 6 then
     -- cab_vvi_decomp = cab_vvi_decomp + 0.01
  -- end
-- elseif cab_vvi_decomp > 0 then
    -- cab_vvi_decomp = cab_vvi_decomp - 0.1
-- else
    -- cab_vvi_decomp = 0
-- end
    
    
    
-- if cab_vvi_plus > 4 and airflow_ucmpsd < 1 then
        -- cab_vvi_loc = 13 + (23*simDR_sard_spd)
-- elseif cab_vvi_plus < -4 and airflow_ucmpsd < 1 then
      -- cab_vvi_loc = (-13 - (23*simDR_sard_spd)) * airflow_power_prc
-- elseif airflow_ucmpsd < 1 then
    -- if cab_vvi_loc > 0 then
       -- cab_vvi_loc = cab_vvi_loc - 0.238
    -- elseif cab_vvi_loc < -0.01 then
       -- cab_vvi_loc = cab_vvi_loc + 0.238
    -- end
-- end
   
-- airflow = math.floor(simDR_air_usage_L + simDR_air_usage_R+0.5)
    
-- if simDR_window_l < 0.1 and simDR_window_r < 0.1 and simDR_pax_door_1 < 0.1 and simDR_pax_door_2 < 0.1 and simDR_pax_door_3 < 0.1 and simDR_emerg_decomp < 1 then
   -- windows_doors = 0
-- else
   -- windows_doors = 1
-- end
  
    
    
-- if windows_doors < 1 and cab_diff_loc_new > -0.007 and start_press > 0 then
      -- if airflow > 20 then
        -- airflow_ucmpsd = 0
      -- end
-- else
     -- airflow_ucmpsd = 1
-- end   
    
  
 
-- if airflow_delta > 6 then
    -- airflow_loc = airflow_loc + math.abs(airflow_delta) * 0.0075
    -- cab_alt_timeout = 4
  -- if airflow_ucmpsd < 1 and airflow_loc > 10 then
    -- airflow_crane = 1
  -- end
-- elseif airflow_delta < -2 then
  -- if cab_alt_timeout > 0 then
     -- cab_alt_timeout = cab_alt_timeout - 0.01
  -- end
   -- if cab_alt_timeout < 1 then
    -- airflow_loc = airflow_loc - math.abs(airflow_delta) * 0.0075
    -- if cab_diff_loc_new > 0.02 then
      -- if airflow_ucmpsd < 1 then
        -- airflow_crane = -1
      -- end
    -- end 
   -- end
-- else
     -- cab_alt_timeout = 4
     -- if simDR_sard_disable < 1 then
      -- airflow_crane = 0
     -- end
-- end 
-- --srd heat condition, not used for now
-- if simDR_ard_temp>0 then
	-- ard_deiced=1
-- elseif simDR_ard_temp<-5 and airflow_ucmpsd ==1 then
	-- ard_deiced=0
-- end
    
-- if airflow_eject_swc > 0 and simDR_bus27left>13 and simDR_on_ground > 0 and ((simDR_cab_eng1_vlv>0 and simDR_rpm_high_1>50) or (simDR_cab_eng2_vlv>0 and simDR_rpm_high_2>50) or (simDR_cab_eng3_vlv>0 and simDR_rpm_high_3>50) or (apu_air_doors>0.7 and simDR_apu_n1>90)) then
  -- airflow_eject = 0
-- else
  -- airflow_eject = 1
-- end
    
-- if airflow_ucmpsd < 1 then
    -- if airflow_crane > 0.01 then
       -- if airflow_timeout < 0.12 then
            -- airflow_timeout = airflow_timeout +0.0000025 + (airflow*0.00001)
       -- end
       -- if cab_vvi_fin > -100 then
                -- airflow_reset = (airflow_reset + airflow_timeout * ((3.000001-airflow_set) *0.01) * (8.1-airflow_reset)) * airflow_eject
       -- end
    -- end 
    -- if airflow_crane < -0.01 then
       -- if airflow_timeout < 0.12 then
            -- airflow_timeout = airflow_timeout +0.00225 + (airflow*0.0001)
       -- end
       -- if cab_vvi_fin < 38 then
            -- airflow_reset = airflow_reset - airflow_timeout * ((3.000001-airflow_set) *0.01) * (1.5-airflow_reset)
       -- end
    -- end
    -- if airflow_crane == 0 then
        -- if airflow_timeout > 0 then
           -- airflow_timeout = airflow_timeout - (0.0014*airflow_set)
        -- end
        -- if airflow_reset > 0.0515 then   
            -- airflow_reset = airflow_reset - 0.012 * airflow_set*0.5
        -- elseif airflow_reset < -0.0515 then
            -- airflow_reset = airflow_reset + 0.012 * airflow_set*0.5
        -- else
            -- airflow_reset = 0
        -- end
    -- end
-- end
    
-- if airflow_ucmpsd < 1 then
    
    -- if airflow_loc * 0.00375 < 3 then
        -- if airflow_loc * 0.00375 > cab_diff_loc_new *150 then
            -- airflow_set = airflow_loc * 0.00375
        -- else
            -- if cab_diff_loc_new *150 < 3 then
                -- airflow_set = cab_diff_loc_new *150
            -- else
                -- airflow_set = 3
            -- end
        -- end
    -- else
        -- airflow_set = 3
    -- end
        
        
    -- if cab_alt_timeout < 1 then
        -- if airflow_set > 2 then
              -- if cab_diff_loc_new > 0.02 and airflow_loc * 0.0006 < cab_diff_loc_new then 
               -- airflow_crane = -1
              -- end
        -- end
        -- if airflow_loc * 0.0006 < cab_diff_loc_new then
           -- airflow_set = airflow_set - (math.abs((cab_vvi_new/8.34) * 0.001) * SIM_PERIOD *2)
           -- airflow_crane = -1
        -- end
    -- end
-- end

-- if windows_doors < 1 then  
    -- if cab_diff_loc_new < 0.015 then
        -- if math.min(simDR_sard_press,grnd_qfe*0.00750062-5) < qfe_mmhg then
            -- start_press = 1       
        -- elseif simDR_on_ground > 0 then
            -- start_press = 0 
        -- end
    -- else
        -- start_press = 1  
    -- end    
-- elseif simDR_on_ground > 0 then
   -- start_press = 0 
-- end
     
  
end






function misc()
    
if simDR_speed_mid_needle > 360 then
  speed_mid_1000 = 1
else
  speed_mid_1000 = 0
end  
    

if simDR_buster1 * simDR_buster2 * simDR_buster3 < 1 then
    if buster_cap < 0.5 then
        buster_cap = 0.5
    elseif buster_cap < 1 then
      buster_cap = buster_cap + 0.02
    elseif buster_cap > 1 then
         buster_cap = 1
    end     
end
    
simDR_busters_cap = buster_cap
    
    
    
    
   


-- if (math.abs(simDR_roll_pos) * 0.285) > 0.0685 then
    -- if (math.abs(simDR_roll_pos) * 0.285) < 0.22 then
        -- simDR_ailrn_size = math.abs(simDR_roll_pos) * 0.285
    -- else
        -- simDR_ailrn_size = 0.22
    -- end
-- else
    -- simDR_ailrn_size = 0.0685
-- end
    
    
    
gforce_maxn = 1 + gforce_maxn_loc 
gforce_minn = 1 - gforce_minn_loc 
   
if gforce_reset_butt > 0.5 then
   gforce_reset_butt_loc = gforce_reset_butt -0.5
elseif gforce_reset_butt < 0 then
   gforce_reset_butt_loc = gforce_reset_butt
else 
   gforce_reset_butt_loc = 0
end 

    
if simDR_gforce_ind > gforce_maxn then
   gforce_maxn_loc = simDR_gforce_ind - 1
   gforce_maxn_loc2 = gforce_maxn_loc
 if gforce_reset_butt > 0.5 then
   gforce_reset_butt = 0.5
 end
end
    

    
if gforce_maxn_loc > 0.001 and gforce_maxn_loc > (gforce_maxn_loc2 - gforce_reset_butt_loc) and gforce_maxn > simDR_gforce_ind then
    gforce_maxn_loc = gforce_maxn_loc2 - gforce_reset_butt_loc
end
   
if gforce_maxn_loc < 0 then
    gforce_maxn_loc = 0
end 
    
 
    
if simDR_gforce_ind < gforce_minn then
   gforce_minn_loc = 1 - simDR_gforce_ind
   gforce_minn_loc2 = gforce_minn_loc
 if gforce_reset_butt < 0 then
   gforce_reset_butt = 0
 end
end
    

    
if gforce_minn_loc > 0.001 and gforce_minn_loc > (gforce_minn_loc2 - (gforce_reset_butt_loc * -1)) and simDR_gforce_ind > gforce_minn then
    gforce_minn_loc = gforce_minn_loc2 - (gforce_reset_butt_loc * -1)
end
   
if gforce_minn_loc < 0 then
    gforce_minn_loc = 0
end    
  

if simDR_on_ground > 0 and simDR_gear_blocks > 0 and rpm1 < 10 and rpm2 < 10 and rpm3 < 10 then
    water_level_loc = simDR_water_lvl
else
   if simDR_seatbelts < 1 then
    if simDR_water_lvl > water_level_loc then
       simDR_water_lvl = water_level_loc
    else
       water_level_loc = simDR_water_lvl
    end
   else
       simDR_water_lvl = water_level_loc
   end
end  
    
if simDR_cabin_sel > 0 then
  if cabin12_temp_delta_loc < cabin12_temp_delta then
     cabin12_temp_delta_loc = cabin12_temp_delta_loc + 0.3
  elseif cabin12_temp_delta_loc > cabin12_temp_delta then
     cabin12_temp_delta_loc = cabin12_temp_delta_loc - 0.3
  end
  cabin12_temp_delta = simDR_cabin1_temp - simDR_cabin2_temp
else
  if cabin12_temp_delta_loc < cabin12_temp_delta then
     cabin12_temp_delta_loc = cabin12_temp_delta_loc + 0.3
  elseif cabin12_temp_delta_loc > cabin12_temp_delta then
     cabin12_temp_delta_loc = cabin12_temp_delta_loc - 0.3
  end
  cabin12_temp_delta = simDR_cabin2_temp - simDR_cabin1_temp
end

    
    
-- if simDR_air_usage_L > simDR_air_usage_R then
  -- air_usage_loc = simDR_air_usage_L * 0.00000175
-- else
  -- air_usage_loc = simDR_air_usage_R * 0.00000175
-- end
    
    
    
 
-- simDR_ap_type = 2
-- simDR_artstab1 = 355
-- simDR_artstab2 = 255
-- simDR_artstab3 = 355
    
-- simDR_roll_mode = 4
    
-- if simDR_absu_pwr < 1 and simDR_lit_test_front < 1 then
    -- ---    bkk_1 = 0
    -- ---    bkk_2 = 0
    -- ---    bkk_3 = 0
    -- dh_lit = 0
-- end        
     
if math.abs(bkk_test) > 0 then
    if mgv_contr_was < 1 then
         mgv_contr_timeout = mgv_contr_timeout-0.1
    else
        mgv_contr_timeout = 0
    end
    if mgv_contr_timeout > 0 then
        bkk_1 = 0
    end
else
    mgv_contr_timeout = 0
    mgv_contr_was = bkk_1
end  
    
if simDR_36vl > 5 then
    bus36 = 1
elseif simDR_36vr > 5 then
    bus36 = 1
else
    bus36 = 0
end
    
if simDRcrs_np1 > 0 and simDR_36vl > 5 then
        if test_kmp_1 > 0 then
            test_timer_kmp1 = test_timer_kmp1 + simDR_passed
            simDRvor_dme_1				= 0
            
        end
        if  test_timer_kmp1 < 60 then
            test_kmp_1 = 1
            simDRvor_bear_1 = 0
            if simDR_ping_pong > 0 then
                test_kmp_1_lit = 1
            else
                test_kmp_1_lit = 0
            end  
        else
            test_kmp_1_lit = 0
        end
        if test_timer_kmp1 > 61 then
            test_kmp_1 = 0
        end

else
    test_timer_kmp1 = 0
    test_kmp_1 = 0
    test_kmp_1_lit = 0
end
       
    
    
    
    
    
    
end
    
    

    

  
function misc2()
 
if bus27 > 0 then
    if apu_working > 0 then
        apu_pwr_lit = smooth_light(apu_working,apu_pwr_lit)
    elseif simDR_lamp_test_apu > 0 then
        apu_pwr_lit = smooth_light(simDR_lamp_test_apu,apu_pwr_lit)
    end
    if simDR_kln > 0 then
        uns1_on = 1
    else
        uns1_on = 0
    end
    if simDR_lit_test_front > 0 and simDR_bus27right < 5 then
        simDR_cockpit_p_low =  0
    end
else
    uns1_on = 0
    simDR_cockpit_p_low =  0
end

if simDR_lamp_test_apu < 1 and apu_working < 1 then
    apu_pwr_lit = smooth_light(simDR_lamp_test_apu,apu_pwr_lit)
end
    
    
    
    
if simDRcrs_np2 > 0 and simDR_36vr > 5 then
        if test_kmp_2 > 0 then
            test_timer_kmp2 = test_timer_kmp2 + simDR_passed
            simDRvor_dme_2				= 0
        end
        if  test_timer_kmp2 < 60 then
            test_kmp_2 = 1
            simDRvor_bear_2 = 0
            if simDR_sin_wave > 0 then
                test_kmp_2_lit = 1
            else
                test_kmp_2_lit = 0
            end 
        else
            test_kmp_2_lit = 0
        end
        if test_timer_kmp2 > 61 then
            test_kmp_2 = 0
        end

else
    test_timer_kmp2 = 0
    test_kmp_2 = 0
    test_kmp_2_lit = 0
end
    
     
    

if simDR_cockpit_lights > 0.3 then
    simDR_cockpit_lights = 0.3
end
    
 
    
if simDR_altitude < 10000 then
  alt_coeff = math.abs((10000 - simDR_altitude) / 10000)
  else
  alt_coeff = 0.0001
end

   
   
-- if simDR_rpm_thr[0] > 0 and simDR_rpm_high_1 > 35 then
    -- if (simDR_rpm_thr[0] - thro_1) > 0.01 then
        -- thro_1 = thro_1 +0.0035
    -- elseif (simDR_rpm_thr[0] - thro_1) < -0.01 then
        -- thro_1 = thro_1 -0.0035
    -- end
-- else
        -- if thro_1 > 0.2 then
            -- thro_1 = thro_1 - 0.01
        -- end
-- end
    
-- if simDR_rpm_thr[1] > 0 and simDR_rpm_high_2 > 35 then
    -- if (simDR_rpm_thr[1] - thro_2) > 0.01 then
        -- thro_2 = thro_2 +0.0035
    -- elseif (simDR_rpm_thr[1] - thro_2) < -0.01 then
        -- thro_2 = thro_2 -0.0035
    -- end
-- else
        -- if thro_2 > 0.2 then
            -- thro_2 = thro_2 - 0.01
        -- end
-- end
    
-- if simDR_rpm_thr[2] > 0 and simDR_rpm_high_3 > 35 then
    -- if (simDR_rpm_thr[2] - thro_3) > 0.01 then
        -- thro_3 = thro_3 +0.0035
    -- elseif (simDR_rpm_thr[2] - thro_3) < -0.01 then
        -- thro_3 = thro_3 -0.0035
    -- end
-- else
        -- if thro_3 > 0.2 then
            -- thro_3 = thro_3 - 0.01
        -- end
-- end
    

    
temp_abs = math.abs(simDR_oat)
-- if simDR_oat < 30 then
    -- oat_delta = (-1 * ((30-simDR_oat)/7) +4)
-- else
    -- oat_delta = 0
-- end

-- baro_delta = (29.92 - simDR_qfe)
-- rpm_delta = oat_delta + (baro_delta  / 1.12) +4.5
    
-- if rpm_delta < 5.358 then
    -- rpm_delta_result = rpm_delta
-- else
    -- rpm_delta_result = 5.358
-- end

 
 
    
if szt_1 > 0 and sw_sound_szt_1 > 0 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_1 = 0
    else
        simDR_sw_sound = -1
        sw_sound_szt_1 = 0
    end
end
if szt_1 < 1 and sw_sound_szt_1 < 1 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_1 = 1
    else
        simDR_sw_sound = -1
        sw_sound_szt_1 = 1
    end
end 

if szt_2 > 0 and sw_sound_szt_2 > 0 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_2 = 0
    else
        simDR_sw_sound = -1
        sw_sound_szt_2 = 0
    end
end
if szt_2 < 1 and sw_sound_szt_2 < 1 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_2 = 1
    else
        simDR_sw_sound = -1
        sw_sound_szt_2 = 1
    end
end
    

if szt_3 > 0 and sw_sound_szt_3 > 0 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_3 = 0
    else
        simDR_sw_sound = -1
        sw_sound_szt_3 = 0
    end
end
if szt_3 < 1 and sw_sound_szt_3 < 1 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_3 = 1
    else
        simDR_sw_sound = -1
        sw_sound_szt_3 = 1
    end
end 

if szt_test > 0 and sw_sound_szt_test > 0 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_test = 0
    else
        simDR_sw_sound = -1
        sw_sound_szt_test = 0
    end
end
if szt_test < 0 and sw_sound_szt_test > 0 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_test = 0
    else
        simDR_sw_sound = -1
        sw_sound_szt_test = 0
    end
end
if szt_test == 0 and sw_sound_szt_test < 1 then
    if simDR_sw_sound > -2 then
        simDR_sw_sound = -2
        sw_sound_szt_test = 1
    else
        simDR_sw_sound = -1
        sw_sound_szt_test = 1
    end
end 

   

if simDR_bus27left > 5 then
    bus27 = 1
elseif simDR_bus27right > 5 then
    bus27 = 1
else
    bus27 = 0
end
    
if bus27 > 0 and siv1 > 0 then
    if simDR_rv_needle_left > simDR_rv_dh_left then  
        simDR_shtork1 = 2
        simDR_shtork2 = 1
        simDR_shtork3 = 2
    else
        simDR_shtork1 = 0
        simDR_shtork2 = 0
        simDR_shtork3 = 0
    end
end

if bus27 > 0 then
    simDR_27v_cc = bus27_cc
    if simDR_kln > 0 then
         simDRgns_brt = simDR_ins_brt[16]
    else
         simDRgns_brt = 0
    end
    if var_left > 0 then
        vsi_lit_left = vsi_brt_left
    else
        vsi_lit_left = 0
    end
    if var_right > 0 then
        vsi_lit_right = vsi_brt_right
    else
        vsi_lit_right = 0
    end 
        
        

    if szt_test == 0 then
        if szt_1_lit > 0 then
           szt_1_lit=szt_1_lit-9*SIM_PERIOD
        else
           szt_1_lit = 0
        end
        if szt_2_lit > 0 then
           szt_2_lit=szt_2_lit-9*SIM_PERIOD
        else
           szt_2_lit = 0
        end
        if szt_3_lit > 0 then
           szt_3_lit=szt_3_lit-9*SIM_PERIOD
        else
           szt_3_lit = 0
        end    
    else
        if szt_1 > 0 then
            if szt_1_lit < 1 then
               szt_1_lit=szt_1_lit+9*SIM_PERIOD
            else
               szt_1_lit = 1
            end
        end
        if szt_2 > 0 then
            if szt_2_lit < 1 then
               szt_2_lit=szt_2_lit+9*SIM_PERIOD
            else
               szt_2_lit = 1
            end
        end
        if szt_3 > 0 then
            if szt_3_lit < 1 then
               szt_3_lit=szt_3_lit+9*SIM_PERIOD
            else
               szt_3_lit = 1
            end
        end
    end
else
    simDRgns_brt = 0
    vsi_lit_left = 0
    vsi_lit_right = 0
    if szt_1_lit > 0 then
       szt_1_lit=szt_1_lit-9*SIM_PERIOD
    else
       szt_1_lit = 0
    end
    if szt_2_lit > 0 then
       szt_2_lit=szt_2_lit-9*SIM_PERIOD
    else
       szt_2_lit = 0
    end
    if szt_3_lit > 0 then
       szt_3_lit=szt_3_lit-9*SIM_PERIOD
    else
       szt_3_lit = 0
    end  
end

    
    

-- if simDR_fire_switch > 0 then
    -- if fire_cc < 1 then
       -- bus27_cc = bus27_cc + 0.8
    -- end
    -- fire_cc = 1
-- else
    -- if fire_cc > 0 then
        -- bus27_cc = bus27_cc - 0.8
    -- end
    -- fire_cc = 0
-- end
    
-- if uns1_on > 0 then
    -- if uns_l_cc < 1 then
       -- bus27_cc = bus27_cc + 1
    -- end
    -- uns_l_cc = 1
-- else
    -- if uns_l_cc > 0 then
        -- bus27_cc = bus27_cc - 1
    -- end
    -- uns_l_cc = 0
-- end
    
-- if uns2_on > 0 then
    -- if uns_r_cc < 1 then
       -- bus27_cc = bus27_cc + 1
    -- end
    -- uns_r_cc = 1
-- else
    -- if uns_r_cc > 0 then
        -- bus27_cc = bus27_cc - 1
    -- end
    -- uns_r_cc = 0
-- end

-- if kontur_pow_l > 0 then
    -- if mfi_l_cc < 1 then
       -- bus27_cc = bus27_cc + 1
    -- end
    -- mfi_l_cc = 1
-- else
    -- if mfi_l_cc > 0 then
        -- bus27_cc = bus27_cc - 1
    -- end
    -- mfi_l_cc = 0
-- end
    
-- if kontur_pow_r > 0 then
    -- if mfi_r_cc < 1 then
       -- bus27_cc = bus27_cc + 1
    -- end
    -- mfi_r_cc = 1
-- else
    -- if mfi_r_cc > 0 then
        -- bus27_cc = bus27_cc - 1
    -- end
    -- mfi_r_cc = 0
-- end


-- if ubs_pow_l > 0 then
    -- if ubs_l_cc < 1 then
       -- bus27_cc = bus27_cc + 0.5
    -- end
    -- ubs_l_cc = 1
-- else
    -- if ubs_l_cc > 0 then
        -- bus27_cc = bus27_cc - 0.5
    -- end
    -- ubs_l_cc = 0
-- end
 
-- if ubs_pow_r > 0 then
    -- if ubs_r_cc < 1 then
       -- bus27_cc = bus27_cc + 0.5
    -- end
    -- ubs_r_cc = 1
-- else
    -- if ubs_r_cc > 0 then
        -- bus27_cc = bus27_cc - 0.5
    -- end
    -- ubs_r_cc = 0
-- end
 
    
 
if simDR_msrp_pwr > 0 then
    if itv_start == 0 then
        itv_start = simDR_time
        itv_corr = 0
    end
    
    itv_sec_loc = simDR_time - itv_start + itv_corr
    if min_while_change < 1 then
        itv_min = (math.floor(itv_sec_loc / 60)) - itv_hour*60
    end
    itv_hour = math.floor(itv_sec_loc / 3600)
    
    if itv_sec_loc > 86399.999 then
        itv_start = 0
        itv_min = 0
        itv_hour = 0
    end    
        
        
else
    itv_start = 0
    itv_sec_loc = 0
    itv_min = 0
    itv_hour = 0
    itv_corr = 0
end
    
itv_1 = math.floor(itv_hour / 10 ) 
itv_2 = itv_hour - (itv_1*10) 
itv_3 = math.floor(itv_min / 10 ) 
itv_4 = itv_min - (itv_3*10) 
        
    
    
    
    
 
-- if emerg_trim_azs > 0 and sw_sound > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound = 0
    -- end
-- end
-- if emerg_trim_azs < 1 and sw_sound < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound = 1
    -- end
-- end   
    
    
-- if simDR_window_l > 0.25 and simDR_window_l < 0.27 then
    -- if window_slide_l < 1 then
        -- simDR_window_l = 0.25
    -- end
-- end

-- if simDR_window_l > 0.24 and window_slide_l > 0 then
    -- if simDR_window_l < 1 then
    -- simDR_window_l = simDR_window_l + 0.0085
    -- end
-- end

    
-- if simDR_window_l == 1 then
 -- window_slide_l = 0
-- end
    
-- if simDR_window_r > 0.25 and simDR_window_r < 0.27 then
    -- if window_slide_r < 1 then
        -- simDR_window_r = 0.25
    -- end
-- end

-- if simDR_window_r > 0.24 and window_slide_r > 0 then
    -- if simDR_window_r < 1 then
    -- simDR_window_r = simDR_window_r + 0.0085
    -- end
-- end

    
-- if simDR_window_r == 1 then
 -- window_slide_r = 0
-- end

-- if emerg_trim_azs < 1 then
    -- if simDR_emerg_trim == 0 then
        -- current_pitch_trim = simDR_pitch_trim
    -- end
    -- if simDR_emerg_trim > 0 then
        -- simDR_pitch_trim = current_pitch_trim
    -- end
    -- if simDR_emerg_trim < 0 then
        -- simDR_pitch_trim = current_pitch_trim
    -- end
    -- if emerg_trim_actv > 0 then
        -- emerg_trim_actv = 0
    -- end
-- else
    -- if emerg_trim_actv < 1 then
        -- current_pitch_trim = simDR_pitch_trim
    -- end
    -- if simDR_emerg_trim > 0 then
        -- if emerg_trim_actv < 1 then
            -- emerg_trim_actv = 1
        -- end
        -- current_pitch_trim = simDR_pitch_trim    
    -- end
    -- if simDR_emerg_trim < 0 then
        -- if emerg_trim_actv < 1 then
            -- emerg_trim_actv = 1
        -- end
        -- current_pitch_trim = simDR_pitch_trim    
    -- end
    -- if emerg_trim_actv > 0 and simDR_emerg_trim == 0 then
        -- simDR_pitch_trim = current_pitch_trim
    -- end    
-- end  
   
    
if aircraft_loaded > 0 then    
    simDR_ins_brt[19] = 1
    simDR_payl_crew = 4
    simDR_payl_cabin = 4
    simDR_payl_tank3l = 5405
    simDR_payl_tank3r = 5405
    simDR_payl_tank4 = 4000
    simDR_cabin_diff_set = 0.59
    simDR_msrp_year_ten = simDR_msrp_year_one
    simDR_msrp_year_one = 0
    if simDR_startuprunning < 1 then
        simDR_absu_at_g1 = 1
        simDR_absu_at_g2 = 1
        simDR_absu_at_g3 = 1
    end
    aircraft_loaded = 0
end   
    
simDR_ins_brt[24] = simDR_ovhd_fp_flood
simDR_ins_brt[28] = simDR_left_m_d_flood
simDR_ins_brt[31] = simDR_op_flood
simDR_ins_brt[20] = simDR_fp_flood
simDR_ark1_lit = simDR_ovhd_fp_flood * 2
simDR_ark2_lit = simDR_ovhd_fp_flood * 2


if hear_spuon > 0 then
         if simDR_spu_1_source == 1 then
            simDR_com1_sel = 1
            hear_spu2 = simDR_spu_1_source -1
         elseif simDR_spu_1_source == 0 then
            simDR_com2_sel = 1
            hear_spu2 = simDR_spu_1_source +1
         else
            simDR_com2_sel = 1
            hear_spu2 = 1
         end
        if  sw_sound_hear > 0 then
            if simDR_sw_sound > -2 then
            simDR_sw_sound = -2
            else
            simDR_sw_sound = -1
            end
            sw_sound_hear = 0
       end
else
        if  sw_sound_hear < 1 then
            if simDR_sw_sound > -2 then
            simDR_sw_sound = -2
            else
            simDR_sw_sound = -1
            end
            sw_sound_hear = 1
       end
        hear_spu2 = simDR_spu_1_source
end

    
    
rain2_L_lit = simDR_rain2_lit - window_l_ice_delta 
rain2_C_lit = simDR_rain2_lit - window_c_ice_delta 
rain2_R_lit = simDR_rain2_lit - window_r_ice_delta 
simDR_rain2_1L_lit = simDR_rain2_1L_lit - window_l_ice_delta
simDR_rain2_2L_lit = simDR_rain2_2L_lit - window_l_ice_delta
simDR_rain2_3L_lit = simDR_rain2_3L_lit - window_l_ice_delta
simDR_rain2_4L_lit = simDR_rain2_4L_lit - window_l_ice_delta
simDR_rain2_5L_lit = simDR_rain2_5L_lit - window_l_ice_delta
simDR_rain2_1R_lit = simDR_rain2_1R_lit - window_r_ice_delta
simDR_rain2_2R_lit = simDR_rain2_2R_lit - window_r_ice_delta
simDR_rain2_3R_lit = simDR_rain2_3R_lit - window_r_ice_delta
simDR_rain2_4R_lit = simDR_rain2_4R_lit - window_r_ice_delta
simDR_rain2_5R_lit = simDR_rain2_5R_lit - window_r_ice_delta
  
if simDR_apu_n1 > 20 then
  if simDR_oat > 0 then
    if (30 - simDR_oat) > 0 then
        if oat_coeff_apu > (35 - simDR_oat) * 0.1 then
            oat_coeff_apu = oat_coeff_apu - 0.01
        elseif oat_coeff_apu < (35.1 - simDR_oat) * 0.1 then
            oat_coeff_apu = oat_coeff_apu + 0.01
        end
    else
        if oat_coeff_apu > -1 then
            oat_coeff_apu = oat_coeff_apu - 0.01
        elseif oat_coeff_apu < -1.05 then
            oat_coeff_apu = oat_coeff_apu + 0.01
        end
    end
  else
        if oat_coeff_apu > 3 then
            oat_coeff_apu = oat_coeff_apu - 0.01
        elseif oat_coeff_apu < 3.05 then
            oat_coeff_apu = oat_coeff_apu + 0.01
        end
  end
end

if simDR_apu_n1 > 10 and simDR_apu_n1 < 70 then
    if apu_warm_up < 1.2 then
      apu_warm_up = apu_warm_up +0.01
    end
end

if apu_warm_up > 0 and simDR_apu_n1 > 90 then
    apu_warm_up = apu_warm_up - 0.01 * SIM_PERIOD
end



apu_n1_new = simDR_apu_n1 -- - (apu_warm_up * 0.25) - (oat_coeff_apu * 0.05)
    
end

function misc3()
  
    --simDR_spoolup = 4.5 + spoolup + spoolup_cooldown
    
    
    -- if simDR_oat > -60 and simDR_oat < 40 then
        -- spoolup = (60 + simDR_oat) * 0.0045 * 3
    -- else
        -- if simDR_oat < -60 then
           -- spoolup = 0
        -- end
        -- if simDR_oat > 40 then
           -- spoolup = 7.5 
        -- end
    -- end
    
    -- if simDR_rpm_thr_all < rpm_thr_loc then
      -- if spoolup_cooldown < 4.5 + spoolup * 0.43 then
        -- spoolup_cooldown = spoolup_cooldown + 0.4
      -- end
    -- else
      -- spoolup_cooldown = 0
    -- end
    
    -- if simDR_rpm_thr_all > rpm_thr_loc then
        -- rpm_thr_loc = simDR_rpm_thr_all
    -- else
        -- if rpm_thr_loc > 0 then
            -- rpm_thr_loc = rpm_thr_loc - 0.002
        -- else
        -- rpm_thr_loc = 0
        -- end
    -- end
    
    
    if simDR_gen_volt + gen_volt_loc < -120 then
        gen_volt_new = -120
    else
        gen_volt_new = simDR_gen_volt + gen_volt_loc
    end
    
    
    
    gen_delta_amp = gen_amp_new - gen_amp_loc

   if gen_delta_amp > 0.5 then
      gen_amp_new = gen_amp_new - math.abs(gen_delta_amp) * 7 * SIM_PERIOD
   elseif gen_delta_amp < 0 then
      gen_amp_new = gen_amp_new + math.abs(gen_delta_amp) * 8 * SIM_PERIOD
   end

    
    
     if simDR_gen_amp_sel == 0 then
          gen_amp_loc = simDR_gen_amp
     end
    
     if simDR_gen_amp_sel == 1 then
        if gen1_fail_to > 4 then
            gen_amp_loc = -120
        else
            gen_amp_loc = simDR_gen_amp
        end
     end
    
     if simDR_gen_amp_sel == 2 then
        if gen2_fail_to > 4 then
            gen_amp_loc = -120
        else
            gen_amp_loc = simDR_gen_amp
        end
     end
    
     if simDR_gen_amp_sel == 3 then
        if gen3_fail_to > 4 then
            gen_amp_loc = -120
        else
            gen_amp_loc = simDR_gen_amp
        end
     end
    
    
     if simDR_gen_amp_sel == 4 then
          gen_amp_loc = simDR_gen_amp
     end

    
     gen_fail1 = smooth_light(simDR_gen_fail1,gen_fail1)
     gen_fail2 = smooth_light(simDR_gen_fail2,gen_fail2)
     gen_fail3 = smooth_light(simDR_gen_fail3,gen_fail3)
    
    
  
    
end



function after_physics()
    --first_misc()
    skv()
    misc()
    misc2()
    misc3()
end
