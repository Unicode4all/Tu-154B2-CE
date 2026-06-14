function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

simDR_elevator = find_dataref("sim/flightmodel2/wing/elevator1_deg")
simDR_cabin_pld = find_dataref("tu154b2/custom/payload/cabin_num")
simDR_crew_pld = find_dataref("tu154b2/custom/payload/crew_num")
simDR_payload_cargo4 = find_dataref("tu154b2/custom/payload/various")
simDR_fire_ext1 = find_dataref("tu154b2/custom/buttons/eng/fire_ext_1")
simDR_fire_ext2 = find_dataref("tu154b2/custom/buttons/eng/fire_ext_2")
simDR_fire_ext3 = find_dataref("tu154b2/custom/buttons/eng/fire_ext_3")
simDR_eng_fire = find_dataref("sim/flightmodel2/engines/is_on_fire")
simDR_flaps_ratio  = find_dataref("sim/flightmodel2/wing/flap1_deg")
simDR_n1 = find_dataref("sim/cockpit2/engine/indicators/N1_percent")
simDR_altitude = find_dataref("sim/flightmodel/position/y_agl")
simDR_startuprunning = find_dataref("sim/operation/prefs/startup_running")
simDR_bus_connect = find_dataref("tu154b2/custom/switchers/eng/bus27_connect")
simDR_bus_connect_cap = find_dataref("tu154b2/custom/switchers/eng/bus27_connect_cap")
simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all") 
simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")
simDR_sw_sound = find_dataref("tu154b2/custom/lights/tech_light_set")
simDR_sw_sound2 = find_dataref("tu154b2/custom/switchers/eng/water_meter")
simDR_but_sound = find_dataref("tu154b2/custom/buttons/srpbz/but_down")
simDR_kmp_1_crs = find_dataref("sim/cockpit/radios/nav1_obs_degm") 
simDR_kmp_2_crs = find_dataref("sim/cockpit/radios/nav2_obs_degm") 
simDR_navpower = find_dataref("sim/cockpit2/radios/actuators/nav_power") 
simDR_dme_hz = find_dataref("sim/cockpit/radios/dme_freq_hz")
simDR_nav_hold = find_dataref("sim/cockpit2/radios/actuators/nav_dme_hold")
simDR_nav_mhz = find_dataref("sim/cockpit2/radios/actuators/nav_frequency_Mhz") 
simDR_nav_dme_mhz = find_dataref("sim/cockpit2/radios/actuators/nav_dme_frequency_Mhz") 
simDR_nav_khz = find_dataref("sim/cockpit2/radios/actuators/nav_frequency_khz")
simDR_nav_dme_khz = find_dataref("sim/cockpit2/radios/actuators/nav_dme_frequency_Mhz") 
simDR_nav_dist = find_dataref("sim/cockpit2/radios/indicators/nav_dme_distance_nm")
simDR_sd75_1 = find_dataref("tu154b2/custom/switchers/ovhd/sd75_1_on") 
simDR_sd75_2 = find_dataref("tu154b2/custom/switchers/ovhd/sd75_2_on") 
simDR_nav1_rotary = find_dataref("tu154b2/custom/rotary/ovhd/nav_1_right")
simDR_nav_has_dme = find_dataref("sim/cockpit2/radios/indicators/nav_has_dme")
--simDR_steerfront = find_dataref("sim/flightmodel2/gear/tire_steer_command_deg")
simDR_flapratio = find_dataref("sim/cockpit2/controls/flap_ratio")

-- simDR_gps_time_sec = find_dataref("sim/cockpit/radios/gps_dme_time_secs")
-- simDR_kln = find_dataref("tu154b2/custom/switchers/ovhd/kln_on")
-- simDR_kln_pwr = find_dataref("tu154b2/custom/switchers/kln_power_knob")
-- simDR_wpt_lit = find_dataref("tu154b2/custom/lights/wpt_lamp")

simDR_hsi_sel = find_dataref("sim/cockpit/switches/HSI_selector")

simDR_fire_buzzer = find_dataref("tu154b2/custom/switchers/eng/fire_buzzer")
simDR_fire_buzzer_cap = find_dataref("tu154b2/custom/switchers/eng/fire_buzzer_cap")
simDR_srd_buzzer = find_dataref("tu154b2/custom/switchers/eng/srd_buzzer")
simDR_srd_buzzer_cap = find_dataref("tu154b2/custom/switchers/eng/srd_buzzer_cap")

simDR_sel_27_volt = find_dataref("tu154b2/custom/switchers/eng/bus27_volt_sel")
-- simDR_bat1_volt = find_dataref("tu154b2/custom/elec/bat_volt_1")
-- simDR_bat2_volt = find_dataref("tu154b2/custom/elec/bat_volt_2")
-- simDR_bat3_volt = find_dataref("tu154b2/custom/elec/bat_volt_3")
-- simDR_bat4_volt = find_dataref("tu154b2/custom/elec/bat_volt_4")
simDR_bus27_volt = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_bus27_vu1 = find_dataref("tu154b2/custom/switchers/eng/bus27_vu1")
simDR_bus27_vu2 = find_dataref("tu154b2/custom/switchers/eng/bus27_vu2")

simDR_gauges1_cap = find_dataref("tu154b2/custom/switchers/eng/gauges_on_1_cap")
simDR_gauges2_cap = find_dataref("tu154b2/custom/switchers/eng/gauges_on_2_cap")
simDR_gauges3_cap = find_dataref("tu154b2/custom/switchers/eng/gauges_on_3_cap")
simDR_gauges1 = find_dataref("tu154b2/custom/switchers/eng/gauges_on_1")
simDR_gauges2 = find_dataref("tu154b2/custom/switchers/eng/gauges_on_2")
simDR_gauges3 = find_dataref("tu154b2/custom/switchers/eng/gauges_on_3")

simDR_left_pnppkp_light = find_dataref("tu154b2/custom/switchers/airbleed/ground_cond_on_cap")
simDR_right_pnppkp_light = find_dataref("tu154b2/custom/switchers/airbleed/skv_faster_work_cap")


simDR_fireturn1 = find_dataref("tu154b2/custom/fire/ext_used_1")
simDR_fireturn2 = find_dataref("tu154b2/custom/fire/ext_used_2")
simDR_fireturn3 = find_dataref("tu154b2/custom/fire/ext_used_3")


simDR_sel_27_amp = find_dataref("tu154b2/custom/switchers/eng/bus27_amp2_sel")
simDR_bat1_amp = find_dataref("tu154b2/custom/elec/bat_amp_tot_1")
simDR_bat2_amp = find_dataref("tu154b2/custom/elec/bat_amp_tot_2")
simDR_bat3_amp = find_dataref("tu154b2/custom/elec/bat_amp_tot_3")
simDR_bat4_amp = find_dataref("tu154b2/custom/elec/bat_amp_tot_4")

simDR_vu1_amp = find_dataref("tu154b2/custom/elec/vu1_amp")
simDR_vu2_amp = find_dataref("tu154b2/custom/elec/vu2_amp")
simDR_vu_res_amp = find_dataref("tu154b2/custom/elec/vu_res_amp")
simDR_vu_res_l = find_dataref("tu154b2/custom/elec/vu_res_to_L")
simDR_vu_res_r = find_dataref("tu154b2/custom/elec/vu_res_to_R")
simDR_vu_res_lamp1 = find_dataref("tu154b2/custom/lights/small/vu_on_1")
simDR_vu_res_lamp2 = find_dataref("tu154b2/custom/lights/small/vu_on_2")

simDR_apu_gen = find_dataref("tu154b2/custom/switchers/eng/apu_gen_on")
simDR_apu_start_seq = find_dataref("tu154b2/custom/elec/apu_start_seq")
simDR_gpu_gen = find_dataref("tu154b2/custom/switchers/eng/gpu_on")
simDR_apu_p_fuel = find_dataref("tu154b2/custom/eng/apu_fuel_p")
simDR_apu_lamp_test = find_dataref("tu154b2/custom/buttons/lamp_test_apu")
simDR_eng_lamp_test = find_dataref("tu154b2/custom/buttons/lamp_test_engines")

simDR_eng1_vibro = find_dataref("tu154b2/custom/gauges/eng/vibra_1")
simDR_eng2_vibro = find_dataref("tu154b2/custom/gauges/eng/vibra_2")
simDR_eng3_vibro = find_dataref("tu154b2/custom/gauges/eng/vibra_3")

simDR_eng1_vibro_lit = find_dataref("tu154b2/custom/lights/engines/eng1_high_vibro")
simDR_eng2_vibro_lit = find_dataref("tu154b2/custom/lights/engines/eng2_high_vibro")
simDR_eng3_vibro_lit = find_dataref("tu154b2/custom/lights/engines/eng3_high_vibro")

simDR_vibro_sel_1 = find_dataref("tu154b2/custom/switchers/eng/vibro_sel_1")
simDR_vibro_sel_2 = find_dataref("tu154b2/custom/switchers/eng/vibro_sel_2")
simDR_vibro_sel_3 = find_dataref("tu154b2/custom/switchers/eng/vibro_sel_3")

simDR_eng_1_vibro_ctrl = find_dataref("tu154b2/custom/buttons/eng/control_vibro_1")
simDR_eng_2_vibro_ctrl = find_dataref("tu154b2/custom/buttons/eng/control_vibro_2")
simDR_eng_3_vibro_ctrl = find_dataref("tu154b2/custom/buttons/eng/control_vibro_3")
simDR_eng_sel_vibro_sound = find_dataref("tu154b2/custom/switchers/ovhd/emerg_light_cap")

simDR_egt = find_dataref("sim/cockpit2/engine/indicators/EGT_deg_C")
simDR_egt1_tested = find_dataref("tu154b2/custom/gauges/eng/egt_1")
simDR_egt2_tested = find_dataref("tu154b2/custom/gauges/eng/egt_2")
simDR_egt3_tested = find_dataref("tu154b2/custom/gauges/eng/egt_3")
simDR_control_egt = find_dataref("tu154b2/custom/buttons/eng/control_ut")

-- simDR_cold_tube_1 = find_dataref("tu154b2/custom/bleed/cold_tube1_t")
-- simDR_cold_tube_2 = find_dataref("tu154b2/custom/bleed/cold_tube2_t")

simDR_starter1_work = find_dataref("tu154b2/custom/start/apd_working_1")
simDR_starter2_work = find_dataref("tu154b2/custom/start/apd_working_1")
simDR_starter3_work = find_dataref("tu154b2/custom/start/apd_working_1")
simDR_starter_pressure = find_dataref("tu154b2/custom/start/starter_pressure")
simDR_oat  = find_dataref("sim/cockpit2/temperature/outside_air_temp_deg")

simDR_fire_lit_test = find_dataref("tu154b2/custom/buttons/lamp_test_fire_panel")
simDR_smoke_test = find_dataref("tu154b2/custom/buttons/eng/smoke_test")
simDR_fire_on = find_dataref("tu154b2/custom/switchers/eng/fire_main_switch")
simDR_fire_place = find_dataref("tu154b2/custom/switchers/eng/fire_place_sel")
simDR_fire_sensors = find_dataref("tu154b2/custom/switchers/eng/fire_sensor_sel")
simDR_smoke_light_1 = find_dataref("tu154b2/custom/lights/fire/smoke_1")
simDR_smoke_light_2 = find_dataref("tu154b2/custom/lights/fire/smoke_2")
simDR_fire_eng_1 = find_dataref("tu154b2/custom/lights/fire/fire_eng_1")
simDR_fire_eng_2 = find_dataref("tu154b2/custom/lights/fire/fire_eng_2")
simDR_fire_eng_3 = find_dataref("tu154b2/custom/lights/fire/fire_eng_3")
simDR_fire_apu = find_dataref("tu154b2/custom/lights/fire/fire_apu")
simDR_fire_ng = find_dataref("tu154b2/custom/buttons/eng/neutral_gas")
simDR_fire_ng_cap = find_dataref("tu154b2/custom/switchers/airbleed/heat_close_cap")
simDR_airflow2 = find_dataref("tu154b2/custom/gauges/airbleed/air_flow_2")
-- simDR_airflow1_1 = find_dataref("tu154b2/custom/bleed/air_usage_L")
-- simDR_airflow2_1 = find_dataref("tu154b2/custom/bleed/air_usage_R")
simDR_ard_brt		= find_dataref("sim/cockpit2/switches/instrument_brightness_ratio[30]")
simDR_temp_cockpit = find_dataref("tu154b2/custom/gauges/airbleed/cockpit_temp")



--- auasp_new
simDR_auasp = find_dataref("tu154b2/custom/gauges/misc/aoa_ind")
simDR_auasp_ctr = find_dataref("tu154b2/custom/switchers/ovhd/auasp_contr")
simDR_wheel_gnd = find_dataref("sim/flightmodel2/gear/on_ground")
simDR_gear_fan = find_dataref("tu154b2/custom/switchers/eng/gear_fan")
simDR_sd_mode = find_dataref("sim/custom/t154cfg/hide_autoladder")
auasp_new = deferred_dataref("sim/custom/gauges/misc/aoa_ind_new", "number")

--- end

--- reverse_on

simDR_fp_eng_fail1 = find_dataref("tu154b2/custom/lights/fp_eng_fail_1")
simDR_fp_eng_fail3 = find_dataref("tu154b2/custom/lights/fp_eng_fail_3")
simDR_fp_reverse_1 =  find_dataref("tu154b2/custom/lights/fp_reverse_1")
simDR_fp_reverse_3 =  find_dataref("tu154b2/custom/lights/fp_reverse_3")
local revers1_lit_on = 0
local revers1_lit_set = 0
local revers3_lit_on = 0
local revers3_lit_set = 0

--- end


art = deferred_dataref("sim/custom/b2/art", "number")
vu_res_test = deferred_dataref("sim/custom/gauges/elec/vu_res_test", "number")
vu_res_test2 = deferred_dataref("sim/custom/gauges/elec/vu_res_test2", "number")
vu_res_test3 = deferred_dataref("sim/custom/gauges/elec/vu_res_test3", "number")
vu_res_test_cap = deferred_dataref("sim/custom/gauges/elec/vu_res_test_cap", "number")
needle_27_volt = deferred_dataref("sim/custom/gauges/elec/bus27_volt_needle", "number")
needle_27_amp = deferred_dataref("sim/custom/gauges/elec/bus27_amp_needle", "number")
needle_vu1_amp = deferred_dataref("sim/custom/gauges/elec/vu1_amp_needle", "number")
needle_vu2_amp = deferred_dataref("sim/custom/gauges/elec/vu2_amp_needle", "number")
needle_vu_res_amp = deferred_dataref("sim/custom/gauges/elec/vu_res_amp_needle", "number")
apu_rap_sel = deferred_dataref("sim/custom/gauges/elec/apu_rap_sel", "number")
apu_rap_sel_move = deferred_dataref("sim/custom/gauges/elec/apu_rap_sel_move", "number")
tcas_select = deferred_dataref("sim/custom/switchers/tcas_select", "number")
groza1 = deferred_dataref("sim/custom/switchers/ovhd/groza_1", "number")
groza2 = deferred_dataref("sim/custom/switchers/ovhd/groza_2", "number")

kurs_mp_1_dir = deferred_dataref("sim/custom/b2/kurs_mp_1_dir", "number")
kurs_mp_2_dir = deferred_dataref("sim/custom/b2/kurs_mp_2_dir", "number")
sd67_1_test = deferred_dataref("sim/custom/b2/sd67_1_test", "number")
sd67_1_blank = deferred_dataref("sim/custom/b2/sd67_1_blank", "number")
sd67_2_blank = deferred_dataref("sim/custom/b2/sd67_2_blank", "number")
sd67_1_dme_reserv = deferred_dataref("sim/custom/b2/sd67_1_dme_reserv", "number")
sd67_2_test = deferred_dataref("sim/custom/b2/sd67_2_test", "number")
sd67_2_dme_reserv = deferred_dataref("sim/custom/b2/sd67_2_dme_reserv", "number")
apu_fire_crane = deferred_dataref("sim/custom/b2/apu_fire_crane", "number")
apu_fire_crane_cap = deferred_dataref("sim/custom/b2/apu_fire_crane_cap", "number")

sd67_1_dig1= deferred_dataref("sim/custom/b2/sd67_1_dig1", "number")
sd67_1_dig2= deferred_dataref("sim/custom/b2/sd67_1_dig2", "number")
sd67_1_dig3= deferred_dataref("sim/custom/b2/sd67_1_dig3", "number")
sd67_1_dig4= deferred_dataref("sim/custom/b2/sd67_1_dig4", "number")

sd67_2_dig1= deferred_dataref("sim/custom/b2/sd67_2_dig1", "number")
sd67_2_dig2= deferred_dataref("sim/custom/b2/sd67_2_dig2", "number")
sd67_2_dig3= deferred_dataref("sim/custom/b2/sd67_2_dig3", "number")
sd67_2_dig4= deferred_dataref("sim/custom/b2/sd67_2_dig4", "number")


sd67_1_dist_km = deferred_dataref("sim/custom/b2/sd67_1_dist_km", "number")
sd67_2_dist_km= deferred_dataref("sim/custom/b2/sd67_2_dist_km", "number")


ard_lit_set = deferred_dataref("sim/custom/lights/ard_panel_flood_set", "number")


needle_eng_vibro = deferred_dataref("sim/custom/gauges/eng/needle_eng_vibro", "number")
eng_sel_vibro = deferred_dataref("sim/custom/gauges/eng/eng_sel_vibro", "number")
opora_sel_vibro = deferred_dataref("sim/custom/gauges/eng/opora_sel_vibro", "number")
front_opora_push_vibro = deferred_dataref("sim/custom/gauges/eng/front_opora_push_vibro", "number")
back_opora_push_vibro = deferred_dataref("sim/custom/gauges/eng/back_opora_push_vibro", "number")

vibro_pwr1 =  deferred_dataref("sim/custom/gauges/eng/vibro_pwr1", "number")
vibro_pwr2 = deferred_dataref("sim/custom/gauges/eng/vibro_pwr2", "number")
vibro_pwr3 = deferred_dataref("sim/custom/gauges/eng/vibro_pwr3", "number")

eng1_temp_ctrl = deferred_dataref("sim/custom/gauges/eng/eng1_temp_ctrl", "number")
eng2_temp_ctrl = deferred_dataref("sim/custom/gauges/eng/eng2_temp_ctrl", "number")
eng3_temp_ctrl = deferred_dataref("sim/custom/gauges/eng/eng3_temp_ctrl", "number")

egt1 = deferred_dataref("sim/custom/gauges/eng/egt_1_new", "number")
egt2 = deferred_dataref("sim/custom/gauges/eng/egt_2_new", "number")
egt3 = deferred_dataref("sim/custom/gauges/eng/egt_3_new", "number")
egt1_test = deferred_dataref("sim/custom/gauges/eng/egt_1_test", "number")
egt2_test = deferred_dataref("sim/custom/gauges/eng/egt_2_test", "number")
egt3_test = deferred_dataref("sim/custom/gauges/eng/egt_3_test", "number")


azs_fireext1 = deferred_dataref("sim/custom/b2/azs_fireext1", "number")
azs_fireext2 = deferred_dataref("sim/custom/b2/azs_fireext2", "number")

tech_light_set = deferred_dataref("sim/custom/lights/tech_light_set_new", "number")


airflow_eject_cap =  deferred_dataref("sim/custom/b2/airflow_eject_cap", "number")
airflow_eject_swc =  deferred_dataref("sim/custom/b2/airflow_eject", "number")


groza_ext = deferred_dataref("sim/custom/b2/groza_ext", "number")
groza_rot = deferred_dataref("sim/custom/b2/groza_rot", "number")

vvr_1 = deferred_dataref("sim/custom/b2/vvr_1", "number")
vvr_2 = deferred_dataref("sim/custom/b2/vvr_2", "number")

heating_starter = deferred_dataref("sim/custom/b2/heating_starter", "number")
airflow2 = deferred_dataref("sim/custom/gauges/airbleed/air_flow_2_new", "number")

smoke_test_1 = deferred_dataref("sim/custom/buttons/eng/smoke_test_1", "number")
smoke_test_2 = deferred_dataref("sim/custom/buttons/eng/smoke_test_2", "number")
smoke_test_3 = deferred_dataref("sim/custom/buttons/eng/smoke_test_3", "number")
smoke_test_4 = deferred_dataref("sim/custom/buttons/eng/smoke_test_4", "number")
smoke_test_5 = deferred_dataref("sim/custom/buttons/eng/smoke_test_5", "number")
smoke_test_6 = deferred_dataref("sim/custom/buttons/eng/smoke_test_6", "number")
smoke_test_7 = deferred_dataref("sim/custom/buttons/eng/smoke_test_7", "number")


fire_apu_but = deferred_dataref("sim/custom/b2/fire_apu_button", "number")
fire_eng1_but = deferred_dataref("sim/custom/b2/fire_eng1_button", "number")
fire_eng2_but = deferred_dataref("sim/custom/b2/fire_eng2_button", "number")
fire_eng3_but = deferred_dataref("sim/custom/b2/fire_eng3_button", "number")
smoke_1_but = deferred_dataref("sim/custom/b2/smoke_1_button", "number")
smoke_2_but = deferred_dataref("sim/custom/b2/smoke_2_button", "number")

ushdb_crs = deferred_dataref("sim/custom/b2/ushdb_crs", "number")


flaps_power = deferred_dataref("sim/custom/b2/flaps_power", "number")
flaps_power_cap = deferred_dataref("sim/custom/b2/flaps_power_cap", "number")

rv5_1_lit_lim = deferred_dataref("sim/custom/b2/rv5_1_lit_lim", "number")
rv5_2_lit_lim = deferred_dataref("sim/custom/b2/rv5_2_lit_lim", "number")
rv5_1_lit = find_dataref("tu154b2/custom/lights/small/rv5_left_dh")
rv5_2_lit = find_dataref("tu154b2/custom/lights/small/rv5_right_dh")




sel_27_volt =  deferred_dataref("sim/custom/switchers/eng/bus27_volt_sel_new", "number")
sbros_push =  deferred_dataref("sim/custom/b2/sbros_push", "number")
sbros_stop =  deferred_dataref("sim/custom/b2/sbros_stop", "number")


-- stp test

stp_test_cap =  deferred_dataref("sim/custom/b2/stp_test_cap", "number")
stp_test_1 =  deferred_dataref("sim/custom/b2/stp_test_1", "number")
stp_test_2 =  deferred_dataref("sim/custom/b2/stp_test_2", "number")
stp_test_3 =  deferred_dataref("sim/custom/b2/stp_test_3", "number")
stp_test_4 =  deferred_dataref("sim/custom/b2/stp_test_4", "number")
stp_test_5 =  deferred_dataref("sim/custom/b2/stp_test_5", "number")
stp_test_6 =  deferred_dataref("sim/custom/b2/stp_test_6", "number")

rt12_1_dis =   deferred_dataref("sim/custom/b2/rt12_1_dis", "number")
rt12_2_dis =   deferred_dataref("sim/custom/b2/rt12_2_dis", "number")
rt12_3_dis =   deferred_dataref("sim/custom/b2/rt12_3_dis", "number")

rt12_1_dis_cap =   deferred_dataref("sim/custom/b2/rt12_1_dis_cap", "number")
rt12_2_dis_cap =   deferred_dataref("sim/custom/b2/rt12_2_dis_cap", "number")
rt12_3_dis_cap =   deferred_dataref("sim/custom/b2/rt12_3_dis_cap", "number")


---
gen_1_bus_auto =   deferred_dataref("sim/custom/elec/gen_1_bus_auto", "number")
gen_2_bus_auto =   deferred_dataref("sim/custom/elec/gen_2_bus_auto", "number")
gen_3_bus_auto =   deferred_dataref("sim/custom/elec/gen_3_bus_auto", "number")
gen_1_bus_auto_cap =   deferred_dataref("sim/custom/elec/gen_1_bus_auto_cap", "number")
gen_2_bus_auto_cap =   deferred_dataref("sim/custom/elec/gen_2_bus_auto_cap", "number")
gen_3_bus_auto_cap =   deferred_dataref("sim/custom/elec/gen_3_bus_auto_cap", "number")


elev_trimm_1_pk = deferred_dataref("sim/custom/b2/elev_trimm_1_pk", "number")
elev_trimm_2_pk = deferred_dataref("sim/custom/b2/elev_trimm_2_pk", "number")
elev_trimm_1_pk_cap = deferred_dataref("sim/custom/b2/elev_trimm_1_pk_cap", "number")
elev_trimm_2_pk_cap = deferred_dataref("sim/custom/b2/elev_trimm_2_pk_cap", "number")


-- stp_eng1_temp_podsh = deferred_dataref("sim/custom/lights/engines/eng1_temp_podsh", "number")
-- stp_eng2_temp_podsh = deferred_dataref("sim/custom/lights/engines/eng2_temp_podsh", "number")
-- stp_eng3_temp_podsh = deferred_dataref("sim/custom/lights/engines/eng3_temp_podsh", "number")

stp_eng1_stop_gas = deferred_dataref("sim/custom/lights/engines/eng1_stop_gas", "number")
stp_eng2_stop_gas = deferred_dataref("sim/custom/lights/engines/eng2_stop_gas", "number")
stp_eng3_stop_gas = deferred_dataref("sim/custom/lights/engines/eng3_stop_gas", "number")

simDR_stp_eng1_lit = find_dataref("tu154b2/custom/lights/engines/eng1_stp")
simDR_stp_eng2_lit = find_dataref("tu154b2/custom/lights/engines/eng2_stp")
simDR_stp_eng3_lit = find_dataref("tu154b2/custom/lights/engines/eng3_stp")

simDR_eng1_rod = find_dataref("tu154b2/custom/controlls/fuel_cutoff_1")
simDR_eng2_rod = find_dataref("tu154b2/custom/controlls/fuel_cutoff_2")
simDR_eng3_rod = find_dataref("tu154b2/custom/controlls/fuel_cutoff_3")

simDR_eng1_stall = find_dataref("sim/operation/failures/rel_comsta0")
simDR_eng2_stall = find_dataref("sim/operation/failures/rel_comsta1")
simDR_eng3_stall = find_dataref("sim/operation/failures/rel_comsta2")

simDR_eng1_fail = find_dataref("sim/operation/failures/rel_engfai0")
simDR_eng2_fail = find_dataref("sim/operation/failures/rel_engfai1")
simDR_eng3_fail = find_dataref("sim/operation/failures/rel_engfai2")

simDR_vr = find_dataref("sim/graphics/VR/enabled")

local stp_test1_loc = 0
local stp_test2_loc = 0
local stp_test3_loc = 0


local stp_test1_loc1 = 0
local stp_test2_loc1 = 0
local stp_test3_loc1 = 0



function stp_test()
    
    
if rt12_1_dis_cap < 1 then
    rt12_1_dis = 0
end
if rt12_2_dis_cap < 1 then
    rt12_2_dis = 0
end
if rt12_3_dis_cap < 1 then
    rt12_3_dis = 0
end

if simDR_gear_fan > 0 then
    if rt12_2_dis_cap > 0.6 then
        rt12_2_dis_cap = 0.6
    end
end

    -- if simDR_eng_lamp_test > 0 then
        -- -- if stp_eng1_stop_gas < 1 then
            -- -- stp_eng1_stop_gas = simDR_stp_eng1_lit 
        -- -- end
        -- -- if stp_eng2_stop_gas < 1 then
            -- -- stp_eng2_stop_gas = simDR_stp_eng2_lit 
        -- -- end
        -- -- if stp_eng3_stop_gas < 1 then
            -- -- stp_eng3_stop_gas = simDR_stp_eng3_lit 
        -- -- end
        -- if stp_eng1_temp_podsh < 1 then
            -- stp_eng1_temp_podsh = simDR_stp_eng1_lit 
        -- end
        -- if stp_eng2_temp_podsh < 1 then
            -- stp_eng2_temp_podsh = simDR_stp_eng2_lit
        -- end
        -- if stp_eng3_temp_podsh < 1 then
            -- stp_eng3_temp_podsh = simDR_stp_eng3_lit 
        -- end
        
    -- end

    -- if  rt12_1_dis > 1 then
        -- stp_test1_loc = 0
    -- end
    -- if  rt12_2_dis > 1 then
        -- stp_test2_loc = 0
    -- end
    -- if  rt12_3_dis > 1 then
        -- stp_test3_loc = 0
    -- end

    if simDR_bus27_volt < 5 then
        stp_test1_loc = 0
        stp_test2_loc = 0
        stp_test3_loc = 0
        stp_eng1_temp_podsh = 0
        stp_eng2_temp_podsh = 0
        stp_eng3_temp_podsh = 0
    else

        -- if stp_test_1 > 0 and rt12_1_dis < 1 then
            -- simDR_eng1_stall = 6
            -- stp_test1_loc1 = 1
        -- elseif stp_test1_loc1 > 0 then
            -- stp_test1_loc1 = 0
            -- simDR_eng1_stall = 0
        -- end

        -- if stp_test_2 > 0 and rt12_2_dis < 1 then
            -- simDR_eng2_stall = 6
            -- stp_test2_loc1 = 1
        -- elseif stp_test2_loc1 > 0 then
            -- stp_test2_loc1 = 0
            -- simDR_eng2_stall = 0
        -- end
        

        -- if stp_test_3 > 0 and rt12_3_dis < 1 then
            -- simDR_eng3_stall = 6
            -- stp_test3_loc1 = 1
        -- elseif stp_test3_loc1 > 0 then
            -- stp_test3_loc1 = 0
            -- simDR_eng3_stall = 0
        -- end

        -- if math.abs(stp_test_4) > 0 or simDR_stp_eng1_lit>0 then
            -- if stp_eng1_temp_podsh < 1 then
                -- stp_eng1_temp_podsh = stp_eng1_temp_podsh + 7*SIM_PERIOD
            -- end
        -- else
            -- if stp_eng1_temp_podsh > 0 then
                -- stp_eng1_temp_podsh = stp_eng1_temp_podsh - 7*SIM_PERIOD
            -- end
        -- end
        -- if math.abs(stp_test_5) > 0 or simDR_stp_eng2_lit>0 then
            -- if stp_eng2_temp_podsh < 1 then
                -- stp_eng2_temp_podsh = stp_eng2_temp_podsh + 7*SIM_PERIOD
            -- end
        -- else
            -- if stp_eng2_temp_podsh > 0 then
                -- stp_eng2_temp_podsh = stp_eng2_temp_podsh - 7*SIM_PERIOD
            -- end
        -- end
        -- if math.abs(stp_test_6) > 0 or simDR_stp_eng3_lit>0 then
            -- if stp_eng3_temp_podsh < 1 then
                -- stp_eng3_temp_podsh = stp_eng3_temp_podsh + 7*SIM_PERIOD
            -- end
        -- else
            -- if stp_eng3_temp_podsh > 0 then
                -- stp_eng3_temp_podsh = stp_eng3_temp_podsh - 7*SIM_PERIOD
            -- end
        -- end
        -- if stp_test_1 < 0 and simDR_eng1_rod > 0.95 and rt12_1_dis < 1 then
            -- stp_test1_loc = 1
        -- end
        -- if stp_test_2 < 0 and simDR_eng2_rod > 0.95 and rt12_2_dis < 1  then
            -- stp_test2_loc = 1
        -- end
        -- if stp_test_3 < 0 and simDR_eng3_rod > 0.95 and rt12_3_dis < 1  then
            -- stp_test3_loc = 1
        -- end
    end

    -- if stp_test1_loc > 0 then
        -- simDR_eng1_fail = 6
        -- if stp_test_1 > 0 then
            -- if  stp_eng1_stop_gas > 0 then
                -- stp_eng1_stop_gas = stp_eng1_stop_gas - 7*SIM_PERIOD
            -- end
        -- else
            -- if  stp_eng1_stop_gas < 1 then
                -- stp_eng1_stop_gas = stp_eng1_stop_gas + 7*SIM_PERIOD
            -- end
        -- end
    -- elseif simDR_eng_lamp_test < 1 then
        -- if  stp_eng1_stop_gas > 0 then
            -- stp_eng1_stop_gas = stp_eng1_stop_gas - 7*SIM_PERIOD
        -- end
    -- end

    -- if stp_test1_loc > 0 and simDR_eng1_rod < 0.1 then
        -- stp_test1_loc = 0
        -- simDR_eng1_fail = 0
    -- elseif stp_test1_loc > 0 and rt12_1_dis > 0  then
        -- stp_test1_loc = 0
        -- simDR_eng1_fail = 0
    -- end

    -- if stp_test2_loc > 0 then
        -- simDR_eng2_fail = 6
        -- if stp_test_2 > 0 then
            -- if  stp_eng2_stop_gas > 0 then
                -- stp_eng2_stop_gas = stp_eng2_stop_gas - 7*SIM_PERIOD
            -- end
        -- else
            -- if  stp_eng2_stop_gas < 1 then
                -- stp_eng2_stop_gas = stp_eng2_stop_gas + 7*SIM_PERIOD
            -- end
        -- end
    -- elseif simDR_eng_lamp_test < 1 then
        -- if  stp_eng2_stop_gas > 0 then
            -- stp_eng2_stop_gas = stp_eng2_stop_gas - 7*SIM_PERIOD
        -- end
    -- end

    -- if stp_test2_loc > 0 and simDR_eng2_rod < 0.1 then
        -- stp_test2_loc = 0
        -- simDR_eng2_fail = 0
    -- elseif stp_test2_loc > 0 and rt12_2_dis > 0  then
        -- stp_test2_loc = 0
        -- simDR_eng2_fail = 0
    -- end

    -- if stp_test3_loc > 0 then
        -- simDR_eng3_fail = 6
        -- if stp_test_3 > 0 then
            -- if  stp_eng3_stop_gas > 0 then
                -- stp_eng3_stop_gas = stp_eng3_stop_gas - 7*SIM_PERIOD
            -- end
        -- else
            -- if  stp_eng3_stop_gas < 1 then
                -- stp_eng3_stop_gas = stp_eng3_stop_gas + 7*SIM_PERIOD
            -- end
        -- end
    -- elseif simDR_eng_lamp_test < 1 then
        -- if  stp_eng3_stop_gas > 0 then
            -- stp_eng3_stop_gas = stp_eng3_stop_gas - 7*SIM_PERIOD
        -- end
    -- end

    -- if stp_test3_loc > 0 and simDR_eng3_rod < 0.1 then
        -- stp_test3_loc = 0
        -- simDR_eng3_fail = 0
    -- elseif stp_test3_loc > 0 and rt12_3_dis > 0  then
        -- stp_test3_loc = 0
        -- simDR_eng3_fail = 0
    -- end

end





azs_fireext1 = 1
azs_fireext2 = 1
flaps_power = 1
ard_lit_set = 0.6
rv5_1_lit_lim = 1
rv5_2_lit_lim = 1

-- front lamp_test_corre

nav_1_to = find_dataref("tu154b2/custom/lights/small/nav_1_to")
nav_2_to = find_dataref("tu154b2/custom/lights/small/nav_2_to")
nav_1_from = find_dataref("tu154b2/custom/lights/small/nav_1_from")
nav_2_from = find_dataref("tu154b2/custom/lights/small/nav_2_from")
simDR_front_lamp_test = find_dataref("tu154b2/custom/buttons/lamp_test_front")
local nav_1_to_loc = 0
local nav_2_to_loc = 0
local nav_1_from_loc = 0
local nav_2_from_loc = 0



local sd67_1_dig1_loc = 0
local sd67_1_dig2_loc = 0
local sd67_1_dig3_loc = 0
local sd67_1_dig4_loc = 0
local sd67_2_dig1_loc = 0
local sd67_2_dig2_loc = 0
local sd67_2_dig3_loc = 0
local sd67_2_dig4_loc = 0
local sd67_1_dig1_loc1 = 0
local sd67_1_dig2_loc1 = 0
local sd67_1_dig3_loc1 = 0
local sd67_1_dig4_loc1 = 0
local sd67_2_dig1_loc1 = 0  
local sd67_2_dig2_loc1 = 0
local sd67_2_dig3_loc1 = 0
local sd67_2_dig4_loc1 = 0
local damping_1_dig1 = -25
local damping_1_dig2 = -25
local damping_1_dig3 = -25
local damping_1_dig4 = -25
local damping_2_dig1 = -25
local damping_2_dig2 = -25
local damping_2_dig3 = -25
local damping_2_dig4 = -25
local auasp_loc = 0
local auasp_delta = 0
local unload_ext_1_to = 0
local unload_ext_1 = 0
local ext_used_1 = 0
local ext_used_2 = 0
local ext_used_3 = 0
local egt_correct1 =0
local egt_correct2 =0
local egt_correct3 =0
local aircraft_loaded = 0
local sel_27_amp_loc = 0
local airflow2_loc = 0
local airflow2_delta = 0
local egt1_loc = 0
local egt2_loc = 0
local egt3_loc = 0
local egt1_delta = 0
local egt2_delta = 0
local egt3_delta = 0
local needle_eng_vibro_loc = 0
local needle_eng_vibro_delta = 0
local needle_27_volt_loc = 0
local needle_27_volt_delta = 0
local needle_27_amp_loc = 0
local needle_27_amp_delta = 0
local needle_vu1_amp_loc = 0
local needle_vu1_amp_delta = 0
local needle_vu2_amp_loc = 0
local needle_vu2_amp_delta = 0
local needle_vu_res_amp_loc = 0
local needle_vu_res_amp_delta = 0
local vu_amp_all = 0
local kurs_mp_1_dir_loc = 0
local kurs_mp_2_dir_loc = 0
local mhz_sd67_1_was = 0
local mhz_sd67_2_was = 0
local mhz_sd67_1 = simDR_nav_mhz[4]
local mhz_sd67_2 = simDR_nav_mhz[5]
local khz_sd67_1 = simDR_nav_khz[4]
local khz_sd67_2 = simDR_nav_khz[5]
local bus36 = 0
local sd67_1_run = 0
local sd67_2_run = 0
local sw_sound_sd1_reserv = 0
local sw_sound_sd2_reserv = 0
local sw_sound_vu_res_test = 0
local sw_sound_apu_fire_crane = 0
local sw_sound_eng_sel_vibro = 0
local sw_sound_eng1_egt = 0
local sw_sound_eng2_egt = 0
local sw_sound_eng3_egt = 0
local sw_sound_opora_sel_vibro = 0
local but_pressed = 0
local but_pressed1 = 0
local vu_res_sound = 0
local vu1_loc = 0
local vu2_loc = 0
local vu_set = 0
local apu_rap_sel_move_loc = 0
local opora_sel_vibro_loc = 0
local art_correction = 0
-- local vvr_1_correction = 0
-- local vvr_2_correction = 0
local fire_apu_loc = 0
local fire_eng_1_loc = 0
local fire_eng_2_loc = 0
local fire_eng_3_loc = 0
local airflow2_corr = 0
local flap1_ratio_loc = 0
local flap2_ratio_loc = 0
local flapratio_loc = 0

function sign(x)
	if x >= 0 then return 1 else return -1 end
end

function sd67_dist_convert(dist_act)
    if dist_act == sd67_1_dist_km then
        sd67_1_dig1_loc = math.floor(dist_act*0.01)
        sd67_1_dig2_loc = math.floor(dist_act*0.1)-sd67_1_dig1_loc*10
        sd67_1_dig3_loc = math.floor(dist_act)-sd67_1_dig2_loc*10-sd67_1_dig1_loc*100
        sd67_1_dig4_loc = math.floor(dist_act*10)-sd67_1_dig1_loc*1000-sd67_1_dig2_loc*100-sd67_1_dig3_loc*10
    else
        sd67_2_dig1_loc = math.floor(dist_act*0.01)
        sd67_2_dig2_loc = math.floor(dist_act*0.1)-sd67_2_dig1_loc*10
        sd67_2_dig3_loc = math.floor(dist_act)-sd67_2_dig2_loc*10-sd67_2_dig1_loc*100
        sd67_2_dig4_loc = math.floor(dist_act*10)-sd67_2_dig1_loc*1000-sd67_2_dig2_loc*100-sd67_2_dig3_loc*10
    end
end



function chng_dig_with_damping(orig_dig,new_dig)
    local accelation = 0
    accelation = math.abs(orig_dig-new_dig)
    if (orig_dig-new_dig) > 0 then
        new_dig = new_dig + 5*accelation*SIM_PERIOD
    elseif (orig_dig-new_dig) < 0.05 then
        new_dig = new_dig -5*accelation*SIM_PERIOD
    end
    return new_dig
end



function chng_dig_with_damping2(new_dig,orig_dig,damping,damp_using)
    local result_dig = new_dig
    local accelation = math.abs(orig_dig-result_dig)


    if damping > -25 then
        damp_using = math.floor(((math.cos(damping/10)+0.8))*10)*0.1*2
    else
        damping = -25
        damp_using = 0
    end
    
    if (orig_dig-result_dig) > 0 then
        result_dig = result_dig + 11*accelation*SIM_PERIOD
    elseif (orig_dig-result_dig) < 0.05 then
        result_dig = result_dig -11*accelation*SIM_PERIOD
    else
        result_dig = orig_dig
    end
    return result_dig+damp_using
end




 
function auasp()
    auasp_delta = auasp_loc - auasp_new
    if math.abs(simDR_auasp_ctr) > 0 then
        auasp_loc = simDR_auasp
    elseif simDR_wheel_gnd[0] < 1 then
        auasp_loc = simDR_auasp
    end
    if auasp_delta > 0.3 then
      auasp_new = auasp_new + math.abs(auasp_delta) * 0.15
    elseif auasp_delta < 0 then
      auasp_new = auasp_new - math.abs(auasp_delta) * 0.15
    end
end


function misc()
    
    if elev_trimm_1_pk_cap < 1 then
        elev_trimm_1_pk = 0
    end
    if elev_trimm_2_pk_cap < 1 then
        elev_trimm_2_pk = 0
    end
    if gen_1_bus_auto_cap < 1 then
        gen_1_bus_auto = 0
    end
    if gen_2_bus_auto_cap < 1 then
        gen_2_bus_auto = 0
    end
    if gen_3_bus_auto_cap < 1 then
        gen_3_bus_auto = 0
    end


    if simDR_front_lamp_test < 1 then
        nav_1_to_loc = nav_1_to
        nav_2_to_loc = nav_2_to
        nav_1_from_loc = nav_1_from
        nav_2_from_loc = nav_2_from
    else
        nav_1_to = nav_1_to_loc
        nav_2_to = nav_2_to_loc
        nav_1_from = nav_1_from_loc
        nav_2_from = nav_2_from_loc
    end


    if rv5_1_lit > rv5_1_lit_lim then
        rv5_1_lit = rv5_1_lit_lim
    end

    if rv5_2_lit > rv5_2_lit_lim then
        rv5_2_lit = rv5_2_lit_lim
    end
    
    -- if simDR_flapratio > 0.73 and simDR_flapratio < 0.77 and flapratio_loc < 1 then
       -- simDR_flapratio = 1
       -- flapratio_loc = 1
    -- elseif simDR_flapratio > 0.73 and simDR_flapratio < 0.77 and flapratio_loc > 0 then
       -- simDR_flapratio = 0.5
       -- flapratio_loc = 0
    -- end
    
    -- if simDR_steerfront[0] > 55 then
       -- simDR_steerfront[0] = 55
    -- elseif simDR_steerfront[0] < -55 then
       -- simDR_steerfront[0] = -55
    -- end
    
    -- if simDR_bus27_volt > 0 and simDR_kln > 0 then
        -- if simDR_gps_time_sec < 0.3 then
            -- simDR_wpt_lit = 1
        -- end
    -- end

    
    simDR_hsi_sel = 0
    
    -- if simDR_elevator[8] < -20 then
       -- simDR_elevator[8] = -20
    -- end
    
    -- if simDR_elevator[9] < -20 then
       -- simDR_elevator[9] = -20
    -- end
    
    -- simDR_crew_pld = 53
    -- simDR_cabin_pld = -110
    
    simDR_fire_buzzer = simDR_srd_buzzer
    simDR_fire_buzzer_cap = simDR_srd_buzzer_cap
    
    if simDR_srd_buzzer_cap < 1 then
       simDR_srd_buzzer = 1
    end
    
    
    if groza_ext < 1 then
       groza_rot = 0 
    end
    
    -- if flaps_power < 1 then
       -- simDR_flaps_ratio[0] = flap1_ratio_loc
       -- simDR_flaps_ratio[1] = flap2_ratio_loc
    -- else
       -- flap1_ratio_loc= simDR_flaps_ratio[0]
       -- flap2_ratio_loc= simDR_flaps_ratio[1]
    -- end
    

    if simDR_bus27_volt > 5 then
        simDR_ard_brt = ard_lit_set
    else
        simDR_ard_brt = 0
    end
    
    -- if simDR_egt[0] > egt_correct1 then
        -- egt_correct1 = (simDR_oat * 2 + 10) * (simDR_n1[0] * 0.01)
    -- else
        -- egt_correct1 = 0
    -- end
    
    -- if simDR_egt[1] > egt_correct2 then
        -- egt_correct2 = (simDR_oat * 2 + 10) * (simDR_n1[1] * 0.01)
    -- else
        -- egt_correct2 = 0
    -- end
    
    -- if simDR_egt[2] > egt_correct3 then
        -- egt_correct3 = (simDR_oat * 2 + 10) * (simDR_n1[2] * 0.01)
    -- else
        -- egt_correct3 = 0
    -- end
    
end

function fire_system()
    
    -- if simDR_eng_fire[0] > 0 and unload_ext_1 < 1 then
        -- unload_ext_1 = 1
        -- unload_ext_1_to = 7
    -- end
    -- if simDR_eng_fire[1] > 0 and unload_ext_1 < 1 then
        -- unload_ext_1 = 1
        -- unload_ext_1_to = 7
    -- end
    -- if simDR_eng_fire[2] > 0 and unload_ext_1 < 1 then
        -- unload_ext_1 = 1
        -- unload_ext_1_to = 7
    -- end
    
    -- if unload_ext_1_to > 0.7 and unload_ext_1_to < 1.1 then
        -- simDR_fire_ext1 = 1
    -- else
        -- simDR_fire_ext1 = 0
    -- end
    
    -- if unload_ext_1_to > 0 then
       -- unload_ext_1_to = unload_ext_1_to - 0.1
    -- else
       -- unload_ext_1_to = 0
    -- end
    
    -- if simDR_eng_fire[0] < 1 and simDR_eng_fire[1] < 1 and simDR_eng_fire[2] < 1 then
        -- unload_ext_1 = 0
    -- end
    
    -- if (fire_apu_but+fire_eng1_but+fire_eng2_but+fire_eng3_but+smoke_1_but+smoke_2_but) > 0 then
        -- simDR_but_sound = 1
    -- end
    
    -- if smoke_1_but > 0 and simDR_bus27_volt > 0 and simDR_fire_on > 0 then
        -- simDR_smoke_light_1 = 1
    -- end
    
    -- if smoke_2_but > 0 and simDR_bus27_volt > 0 and simDR_fire_on > 0 then
        -- simDR_smoke_light_2 = 1
    -- end
    
    
    -- if simDR_bus27_volt > 5 then
        -- if azs_fireext1 < 1 then
            -- if ext_used_1 < 1 then
                -- simDR_fireturn1 = 1
                -- ext_used_1 = -1
            -- end
            -- if ext_used_2 < 1 then
                -- simDR_fireturn2 = 1
                -- ext_used_2 = -1
            -- end
        -- else
            -- if ext_used_1 < 0 then
                -- simDR_fireturn1 = 0
                -- ext_used_1 = 0
            -- else
                -- ext_used_1 = simDR_fireturn1
            -- end
            -- if ext_used_2 < 0 then
                -- simDR_fireturn2 = 0
                -- ext_used_2 = 0
            -- else
                -- ext_used_2 = simDR_fireturn2
            -- end
        -- end
        -- if azs_fireext2 < 1 then
            -- if ext_used_3 < 1 then
                -- simDR_fireturn3 = 1
                -- ext_used_3 = -1
            -- end
        -- else
            -- if ext_used_3 < 0 then
                -- simDR_fireturn3 = 0
                -- ext_used_3 = 0
            -- else
                -- ext_used_3 = simDR_fireturn3
            -- end
        -- end
    -- end
    
    if simDR_fire_ng_cap < 1 then
       simDR_fire_ng = 0
    end
    
    -- simDR_smoke_test = smoke_test_1 + smoke_test_2 + smoke_test_3 + smoke_test_4 + smoke_test_5 + smoke_test_6 + smoke_test_7
    
    
    -- if simDR_bus27_volt > 5 and simDR_fire_on > 0 then
        -- -- if (fire_apu_but+fire_eng1_but+fire_eng2_but+fire_eng3_but) > 0 then
            -- -- simDR_fireturn1 = 1
        -- -- end
        -- if (smoke_test_1 + smoke_test_2 + smoke_test_3 + smoke_test_4) > 0 then
            -- simDR_smoke_light_2 = 0
        -- end
        -- if (smoke_test_5 + smoke_test_6 + smoke_test_7) > 0 then
            -- simDR_smoke_light_1 = 0
        -- end
    -- end
    
    -- if simDR_bus27_volt > 5 and simDR_fire_on > 0 and simDR_on_ground > 0 then
        -- if azs_fireext1 < 1 and azs_fireext2 < 1 and simDR_fire_sensors > 0 and simDR_fire_place > 0 then
            -- if simDR_fire_sensors > 0 and simDR_fire_sensors < 4 then
                -- if simDR_fire_place == 1 then
                    -- fire_apu_loc = 1
                -- end
            -- end
            -- if simDR_fire_sensors > 0 then
                -- if simDR_fire_place == 2 then
                    -- fire_eng_1_loc = 1
                -- end
                -- if simDR_fire_place == 3 then
                    -- fire_eng_2_loc = 1
                -- end
                -- if simDR_fire_place == 4 then
                    -- fire_eng_3_loc = 1
                -- end
            -- end
        -- end
        -- if simDR_fire_lit_test < 1 then
            -- simDR_fire_apu = fire_apu_loc
            -- simDR_fire_eng_1 = fire_eng_1_loc
            -- simDR_fire_eng_2 = fire_eng_2_loc
            -- simDR_fire_eng_3 = fire_eng_3_loc
        -- end
    -- elseif simDR_fire_on < 1 then
        -- fire_apu_loc = 0
        -- fire_eng_1_loc = 0
        -- fire_eng_2_loc = 0
        -- fire_eng_3_loc = 0
    -- end
-- if simDR_fire_lit_test > 0 then
    -- simDR_smoke_light_1 = 0 
    -- simDR_smoke_light_2 = 0
-- end
    
end



function starter()
    -- if heating_starter < 1 and simDR_oat < 0 then
       -- simDR_starter_pressure = 0
    -- end
end

function bleed()
    
    --simDR_sw_sound2 = heating_starter+tcas_select+flaps_power+azs_fireext1+azs_fireext2 + tech_light_set--+vibro_pwr1+vibro_pwr2+vibro_pwr3

    if airflow_eject_cap < 1 then
       airflow_eject_swc = 0
    end
    
    
    -- simDR_cold_tube_1 = simDR_cold_tube_1 + vvr_1_correction + art_correction
    -- simDR_cold_tube_2 = simDR_cold_tube_2 + vvr_2_correction + art_correction
    
    

    -- if simDR_airflow1_1 + simDR_airflow2_1 > 120 then
    
    -- if art == 1 then
      -- if art_correction > 0 then
         -- art_correction = art_correction - 0.1
      -- end
    -- else
      -- if art_correction < (simDR_temp_cockpit*2) then
         -- art_correction = art_correction + 0.01
      -- end
    -- end
    

    -- if vvr_1 == 1 then
      -- if vvr_1_correction > 0 then
         -- vvr_1_correction = vvr_1_correction - 0.1
      -- end
    -- elseif vvr_1 == 2 then
      -- if vvr_1_correction > -25 then
         -- vvr_1_correction = vvr_1_correction - 0.1
      -- end
    -- elseif vvr_1 == 3 then
      -- if vvr_1_correction < 35 then
         -- vvr_1_correction = vvr_1_correction + 0.1
      -- end
    -- else
      -- if vvr_1_correction < simDR_temp_cockpit then
         -- vvr_1_correction = vvr_1_correction + 0.01
      -- end
    -- end

    -- if vvr_2 == 1 then
      -- if vvr_2_correction > 0 then
         -- vvr_2_correction = vvr_2_correction - 0.1
      -- end
    -- elseif vvr_2 == 2 then
      -- if vvr_2_correction > -25 then
         -- vvr_2_correction = vvr_2_correction - 0.1
      -- end
    -- elseif vvr_2 == 3 then
      -- if vvr_2_correction < 35 then
         -- vvr_2_correction = vvr_2_correction + 0.1
      -- end
    -- else
      -- if vvr_2_correction < simDR_temp_cockpit then
         -- vvr_2_correction = vvr_2_correction + 0.01
      -- end
    -- end
    -- else
        -- if art_correction > 0 then
           -- art_correction = art_correction - 0.1
        -- end
        -- if vvr_1_correction > 0 then
           -- vvr_1_correction = vvr_1_correction - 0.1
        -- end
        -- if vvr_2_correction > 0 then
           -- vvr_2_correction = vvr_2_correction - 0.1
        -- end
    -- end
end




function eng()
    
      
--- reverse_on


if simDR_fp_reverse_1 > 0 and revers1_lit_set < 1 then
    revers1_lit_on = 3
    revers1_lit_set = 1
elseif simDR_fp_reverse_1 < 1 then
    revers1_lit_on = 0
    revers1_lit_set = 0
end

if simDR_fp_reverse_3 > 0 and revers3_lit_set < 1 then
    revers3_lit_on = 3
    revers3_lit_set = 1
elseif simDR_fp_reverse_3 < 1 then
    revers3_lit_on = 0
    revers3_lit_set = 0
end



if revers1_lit_on > 0.1 then
   revers1_lit_on = revers1_lit_on - 3 * SIM_PERIOD
   --simDR_fp_eng_fail1 = 1
end
    
if revers3_lit_on > 0.1 then
   revers3_lit_on = revers3_lit_on - 3 * SIM_PERIOD
   --simDR_fp_eng_fail3 = 1
end
        



--- end
    -- if eng1_temp_ctrl > 0 and sw_sound_eng1_egt > 0 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_eng1_egt = 0
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_eng1_egt = 0
        -- end
    -- end
    -- if eng1_temp_ctrl < 1 and sw_sound_eng1_egt < 1 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_eng1_egt = 1
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_eng1_egt = 1
        -- end
    -- end 
    
    
    -- if eng2_temp_ctrl > 0 and sw_sound_eng2_egt > 0 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_eng2_egt = 0
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_eng2_egt = 0
        -- end
    -- end
    -- if eng2_temp_ctrl < 1 and sw_sound_eng2_egt < 1 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_eng2_egt = 1
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_eng2_egt = 1
        -- end
    -- end 
    
    -- if eng3_temp_ctrl > 0 and sw_sound_eng3_egt > 0 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_eng3_egt = 0
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_eng3_egt = 0
        -- end
    -- end
    -- if eng3_temp_ctrl < 1 and sw_sound_eng3_egt < 1 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_eng3_egt = 1
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_eng3_egt = 1
        -- end
    -- end 
    
    
    -- egt1_delta = egt1_loc - egt1
    -- egt2_delta = egt2_loc - egt2
    -- egt3_delta = egt3_loc - egt3

    -- if egt1_delta > 0.3 then
      -- egt1 = egt1 + math.abs(egt1_delta) * 0.05
    -- elseif egt1_delta < 0 then
      -- egt1 = egt1 - math.abs(egt1_delta) * 0.05
    -- end

    -- if egt2_delta > 0.3 then
      -- egt2 = egt2 + math.abs(egt2_delta) * 0.05
    -- elseif egt2_delta < 0 then
      -- egt2 = egt2 - math.abs(egt2_delta) * 0.05
    -- end

    -- if egt3_delta > 0.3 then
      -- egt3 = egt3 + math.abs(egt3_delta) * 0.05
    -- elseif egt3_delta < 0 then
      -- egt3 = egt3 - math.abs(egt3_delta) * 0.05
    -- end
    
    

    -- if eng1_temp_ctrl > 0 and simDR_bus27_volt > 5 then
        -- if egt1_test < 1 then
            -- egt1_loc = simDR_egt[0] + egt_correct1
        -- else
            -- egt1_loc = simDR_egt1_tested
        -- end
    -- else
        -- egt1_loc = 0
    -- end

    -- if eng2_temp_ctrl > 0 and simDR_bus27_volt > 5 then
        -- if egt2_test < 1 then
            -- egt2_loc = simDR_egt[1] + egt_correct2
        -- else
            -- egt2_loc = simDR_egt2_tested
        -- end
    -- else
        -- egt2_loc = 0
    -- end

    -- if eng3_temp_ctrl > 0 and simDR_bus27_volt > 5 then
        -- if egt3_test < 1 then
            -- egt3_loc = simDR_egt[2] + egt_correct3
        -- else
            -- egt3_loc = simDR_egt3_tested
        -- end
    -- else
        -- egt3_loc = 0
    -- end

    -- if egt1_test > 0 then
       -- simDR_control_egt = 1
    -- elseif egt2_test > 0 then
       -- simDR_control_egt = 1
    -- elseif egt3_test > 0 then
       -- simDR_control_egt = 1
    -- else
       -- simDR_control_egt = 0
    -- end
    
    --simDR_eng_sel_vibro_sound = eng_sel_vibro
    
    -- if vibro_pwr1 < 1 and simDR_eng_lamp_test < 1 then
        -- simDR_eng1_vibro_lit = 0
    -- end
    -- if vibro_pwr2 < 1 and simDR_eng_lamp_test < 1 then
        -- simDR_eng2_vibro_lit = 0
    -- end
    -- if vibro_pwr3 < 1 and simDR_eng_lamp_test < 1 then
        -- simDR_eng3_vibro_lit = 0
    -- end
    
    -- if eng_sel_vibro == 1 and vibro_pwr1 > 0 then
       -- if opora_sel_vibro == 0 and front_opora_push_vibro < 1 and back_opora_push_vibro < 1 then
          -- needle_eng_vibro_loc = simDR_eng1_vibro - 0.5
       -- else
          -- needle_eng_vibro_loc = simDR_eng1_vibro
       -- end
       -- if front_opora_push_vibro > 0 then
          -- opora_sel_vibro_loc = 1
          -- opora_sel_vibro = 1
          -- if simDR_eng1_vibro_lit > 0 then
            -- if vibro_pwr2 > 0 then
             -- simDR_eng2_vibro_lit = 1
            -- end
            -- if vibro_pwr3 > 0 then
             -- simDR_eng3_vibro_lit = 1
            -- end
          -- end
       -- elseif back_opora_push_vibro > 0 then
          -- opora_sel_vibro_loc = 1
          -- opora_sel_vibro = -1
          -- if simDR_eng1_vibro_lit > 0 then
            -- if vibro_pwr2 > 0 then
             -- simDR_eng2_vibro_lit = 1
            -- end
            -- if vibro_pwr3 > 0 then
             -- simDR_eng3_vibro_lit = 1
            -- end
          -- end
       -- elseif opora_sel_vibro_loc > 0 then
          -- opora_sel_vibro_loc = 0
          -- opora_sel_vibro = 0
       -- end
       -- simDR_eng_1_vibro_ctrl = front_opora_push_vibro + back_opora_push_vibro
       simDR_vibro_sel_1 = opora_sel_vibro
    -- elseif eng_sel_vibro == 2 and vibro_pwr2 > 0 then
       -- if opora_sel_vibro == 0 and front_opora_push_vibro < 1 and back_opora_push_vibro < 1 then
        -- needle_eng_vibro_loc = simDR_eng2_vibro - 0.3
       -- else
          -- needle_eng_vibro_loc = simDR_eng2_vibro
       -- end
	   if simDR_vr==0 then
		   if front_opora_push_vibro > 0 then
			  opora_sel_vibro_loc = 1
			  opora_sel_vibro = 1
			  -- if simDR_eng2_vibro_lit > 0 then
				-- if vibro_pwr1 > 0 then
				 -- simDR_eng1_vibro_lit = 1
				-- end
				-- if vibro_pwr3 > 0 then
				 -- simDR_eng3_vibro_lit = 1
				-- end
			  -- end
		   elseif back_opora_push_vibro > 0 then
			  opora_sel_vibro_loc = 1
			  opora_sel_vibro = -1
			  -- if simDR_eng2_vibro_lit > 0 then
				-- if vibro_pwr1 > 0 then
				 -- simDR_eng1_vibro_lit = 1
				-- end
				-- if vibro_pwr3 > 0 then
				 -- simDR_eng3_vibro_lit = 1
				-- end
			  -- end
		   elseif opora_sel_vibro_loc > 0 then
			  opora_sel_vibro_loc = 0
			  opora_sel_vibro = 0
		   end
	   end
       -- simDR_eng_2_vibro_ctrl = front_opora_push_vibro + back_opora_push_vibro
       -- simDR_vibro_sel_2 = opora_sel_vibro
    -- elseif eng_sel_vibro == 3 and vibro_pwr3 > 0 then
       -- if opora_sel_vibro == 0 and front_opora_push_vibro < 1 and back_opora_push_vibro < 1 then
        -- needle_eng_vibro_loc = simDR_eng3_vibro + 0.2
       -- else
          -- needle_eng_vibro_loc = simDR_eng3_vibro
       -- end
       -- if front_opora_push_vibro > 0 then
          -- opora_sel_vibro_loc = 1
          -- opora_sel_vibro = 1
          -- if simDR_eng3_vibro_lit > 0 then
            -- if vibro_pwr1 > 0 then
             -- simDR_eng1_vibro_lit = 1
            -- end
            -- if vibro_pwr2 > 0 then
             -- simDR_eng2_vibro_lit = 1
            -- end
          -- end
       -- elseif back_opora_push_vibro > 0 then
          -- opora_sel_vibro_loc = 1
          -- opora_sel_vibro = -1
          -- if simDR_eng3_vibro_lit > 0 then
            -- if vibro_pwr1 > 0 then
             -- simDR_eng1_vibro_lit = 1
            -- end
            -- if vibro_pwr2 > 0 then
             -- simDR_eng2_vibro_lit = 1
            -- end
          -- end
       -- elseif opora_sel_vibro_loc > 0 then
          -- opora_sel_vibro_loc = 0
          -- opora_sel_vibro = 0
       -- end
       -- simDR_eng_3_vibro_ctrl = front_opora_push_vibro + back_opora_push_vibro
       -- simDR_vibro_sel_3 = opora_sel_vibro
    -- else
        -- if needle_eng_vibro_loc > 0 then
          -- needle_eng_vibro_loc = needle_eng_vibro_loc - 0.75
        -- end
        -- simDR_vibro_sel_1 = opora_sel_vibro
        -- if front_opora_push_vibro > 0 then
            -- simDR_but_sound = 1
        -- end
        -- if back_opora_push_vibro > 0 then
            -- simDR_but_sound = 1
        -- end
        
    -- end


    -- needle_eng_vibro_delta = needle_eng_vibro_loc - needle_eng_vibro

    -- if needle_eng_vibro_delta > 0.01 then
      -- needle_eng_vibro = needle_eng_vibro + math.abs(needle_eng_vibro_delta) * 0.15
    -- elseif needle_eng_vibro_delta < 0 then
      -- needle_eng_vibro = needle_eng_vibro - math.abs(needle_eng_vibro_delta) * 0.15
    -- end
    
end


function apu()
    
    
    -- if apu_fire_crane > 0 and sw_sound_apu_fire_crane > 0 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_apu_fire_crane = 0
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_apu_fire_crane = 0
        -- end
    -- end
    -- if apu_fire_crane < 1 and sw_sound_apu_fire_crane < 1 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_apu_fire_crane = 1
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_apu_fire_crane = 1
        -- end
    -- end 
    
    if apu_fire_crane < 1 then
        simDR_apu_p_fuel = 0
    end
    
end

function elec()

    if apu_rap_sel_move > 0 then
       if apu_rap_sel == 0 and apu_rap_sel_move_loc < 1 then
          apu_rap_sel = apu_rap_sel +1
          apu_rap_sel_move_loc = 1
		elseif apu_rap_sel == -1 and apu_rap_sel_move_loc < 1 then
          apu_rap_sel = apu_rap_sel +2
          apu_rap_sel_move_loc = 1
       end
    elseif apu_rap_sel_move < 0 then
	   if apu_rap_sel > -1 and apu_rap_sel_move_loc < 1 then
		  apu_rap_sel = apu_rap_sel -1
		  apu_rap_sel_move_loc = 1
		elseif apu_rap_sel==-1 and apu_rap_sel_move_loc < 1 then
			apu_rap_sel = apu_rap_sel +1
			apu_rap_sel_move_loc = 1
		end
    else
        apu_rap_sel_move_loc = 0
    end
    
    
    if apu_rap_sel > 0 then
        simDR_apu_gen = 1
        simDR_gpu_gen = 0
    elseif apu_rap_sel < 0 then
        simDR_apu_gen = 0
        simDR_gpu_gen = 1
    else
        simDR_apu_gen = 0
        simDR_gpu_gen = 0
    end
    
    

    
    if sel_27_amp_loc - simDR_sel_27_amp > 0.5 then
       sel_27_amp_loc = sel_27_amp_loc -0.05
    elseif sel_27_amp_loc - simDR_sel_27_amp < -0.5 then
       sel_27_amp_loc = sel_27_amp_loc +0.05
    else
       sel_27_amp_loc = simDR_sel_27_amp
    end
    
    

    if sel_27_volt == 0 then
       simDR_sel_27_volt = 2
    elseif sel_27_volt == 1 then
       simDR_sel_27_volt = 0
    elseif sel_27_volt == 2 then
       simDR_sel_27_volt = 4
    elseif sel_27_volt == 3 then
       simDR_sel_27_volt = 1
    elseif sel_27_volt == 4 then
       simDR_sel_27_volt = 5
    end
    
    
    
    
    needle_27_volt_delta = needle_27_volt_loc - needle_27_volt

    if needle_27_volt_delta > 0.01 then
      needle_27_volt = needle_27_volt + math.abs(needle_27_volt_delta) * 0.15
    elseif needle_27_volt_delta < 0 then
      needle_27_volt = needle_27_volt - math.abs(needle_27_volt_delta) * 0.15
    end
 if simDR_bus27_volt > 0 then
    if sel_27_amp_loc == 0 then
       needle_27_amp_loc = math.min(simDR_bat1_amp,500)
    elseif sel_27_amp_loc == 1 then
       needle_27_amp_loc = math.min(simDR_bat2_amp,500)
    elseif sel_27_amp_loc == 2 then
       needle_27_amp_loc = math.min(simDR_bat3_amp,500)
    elseif sel_27_amp_loc == 3 then
       needle_27_amp_loc = math.min(simDR_bat4_amp,500)
    else
       needle_27_amp_loc = 0
    end
 else
    needle_27_amp_loc = 0
 end
    
    needle_27_amp_delta = needle_27_amp_loc - needle_27_amp

    if needle_27_amp_delta > 0.01 then
      needle_27_amp = needle_27_amp + math.abs(needle_27_amp_delta) * 0.15
    elseif needle_27_amp_delta < 0 then
      needle_27_amp = needle_27_amp - math.abs(needle_27_amp_delta) * 0.15
    end
    
    
-- if simDR_bus27_vu1 > 0 and simDR_bus27_vu2 > 0 then
        -- if vu_res_test > 0 then
            -- --simDR_vu_res_lamp1 = 1
            -- --simDR_vu_res_lamp2 = 1
            -- simDR_vu_res_r = 1
        -- elseif vu_res_test < 0 then
            -- simDR_vu_res_l = 1
            -- --simDR_vu_res_lamp1 = 1
            -- --simDR_vu_res_lamp2 = 1
        -- end
        -- vu2_loc = 0
        -- vu1_loc = 0
    -- elseif simDR_bus27_vu1 > 0 and simDR_bus27_vu2 < 1 then
        -- if vu_res_test > 0 and simDR_bus27_vu2 > -1 then
            -- simDR_bus27_vu2 = -1
            -- vu_res_test3 = 1
            -- vu2_loc = 1
        -- elseif vu_res_test < 0 then
            -- --simDR_vu_res_lamp1 = 1
            -- --simDR_vu_res_lamp2 = 1
            -- simDR_vu_res_l = 1
        -- elseif vu2_loc > 0 and vu_res_test == 0 then
            -- simDR_bus27_vu2 = 0
            -- vu_res_test3 = 0
            -- vu2_loc = 0
        -- end
    -- elseif simDR_bus27_vu2 > 0 and simDR_bus27_vu1 < 1 then
        -- if vu_res_test > 0 then
            -- --simDR_vu_res_lamp1 = 1
            -- --simDR_vu_res_lamp2 = 1
            -- simDR_vu_res_r = 1
        -- elseif vu_res_test < 0 and simDR_bus27_vu1 > -1 then
            -- simDR_bus27_vu1 = -1
            -- vu_res_test2 = 1
            -- vu1_loc = 1
        -- elseif vu1_loc > 0 and vu_res_test == 0 then
            -- simDR_bus27_vu1 = 0
            -- vu_res_test2 = 0
            -- vu1_loc = 0
        -- end
    -- elseif simDR_bus27_vu1 < 1 and simDR_bus27_vu2 < 1 then
        -- if vu_res_test > 0 and simDR_bus27_vu2 > -1 then
            -- simDR_bus27_vu2 = -1
            -- vu_res_test3 = 1
            -- vu2_loc = 1
        -- elseif vu_res_test < 0 and simDR_bus27_vu1 > -1 then
            -- simDR_bus27_vu1 = -1
            -- vu_res_test2 = 1
            -- vu1_loc = 1
        -- elseif vu1_loc > 0 and vu_res_test == 0 then
            -- simDR_bus27_vu1 = 0
            -- vu_res_test2 = 0
            -- vu1_loc = 0
        -- elseif vu2_loc > 0 and vu_res_test == 0 then
            -- simDR_bus27_vu2 = 0
            -- vu_res_test3 = 0
            -- vu2_loc = 0
        -- end
-- end
    
    -- if math.abs(vu_res_test) > 0 then
      -- if simDR_bus27_vu1 > 0 and simDR_bus27_vu2 > 0 then
       -- if simDR_apu_start_seq > 0 then
        -- vu_amp_all = simDR_vu1_amp + simDR_vu2_amp + simDR_vu_res_amp
       -- else
        -- vu_amp_all = simDR_vu1_amp + simDR_vu2_amp
       -- end
      -- else
        -- vu_amp_all = simDR_vu1_amp + simDR_vu2_amp + simDR_vu_res_amp
      -- end
        -- if simDR_bus27_vu1 > 0 and simDR_bus27_vu2 > 0 then
            -- needle_vu1_amp_loc = vu_amp_all * 0.33
        -- elseif simDR_bus27_vu1 > 0 then
            -- needle_vu1_amp_loc = vu_amp_all * 0.5
        -- else
            -- needle_vu1_amp_loc = simDR_vu1_amp
        -- end
        -- if simDR_bus27_vu1 > 0 and simDR_bus27_vu2 > 0 then
            -- needle_vu2_amp_loc = vu_amp_all * 0.33
        -- elseif simDR_bus27_vu2 > 0 then
            -- needle_vu2_amp_loc = vu_amp_all * 0.5
        -- else
            -- needle_vu2_amp_loc = simDR_vu2_amp
        -- end
        -- if simDR_bus27_vu1 > 0 and simDR_bus27_vu2 > 0 then
            -- needle_vu_res_amp_loc = vu_amp_all * 0.33
        -- elseif simDR_bus27_vu1 > 0 then
            -- needle_vu_res_amp_loc = vu_amp_all * 0.5
        -- elseif simDR_bus27_vu2 > 0 then
            -- needle_vu_res_amp_loc = vu_amp_all * 0.5
        -- else
            -- needle_vu_res_amp_loc = vu_amp_all
        -- end
    -- else
        -- needle_vu1_amp_loc = simDR_vu1_amp
        -- needle_vu2_amp_loc = simDR_vu2_amp
        -- needle_vu_res_amp_loc = simDR_vu_res_amp
    -- end
    needle_vu1_amp_loc = math.min(simDR_vu1_amp,400)
	needle_vu2_amp_loc = math.min(simDR_vu2_amp,400)
	needle_vu_res_amp_loc = math.min(simDR_vu_res_amp,400)
	
	
    needle_vu1_amp_delta = needle_vu1_amp_loc - needle_vu1_amp

    if needle_vu1_amp_delta > 0.01 then
      needle_vu1_amp = needle_vu1_amp + math.abs(needle_vu1_amp_delta) * 0.08
    elseif needle_vu1_amp_delta < 0 then
      needle_vu1_amp = needle_vu1_amp - math.abs(needle_vu1_amp_delta) * 0.08
    end
    
    needle_vu2_amp_delta = needle_vu2_amp_loc - needle_vu2_amp

    if needle_vu2_amp_delta > 0.01 then
      needle_vu2_amp = needle_vu2_amp + math.abs(needle_vu2_amp_delta) * 0.08
    elseif needle_vu2_amp_delta < 0 then
      needle_vu2_amp = needle_vu2_amp - math.abs(needle_vu2_amp_delta) * 0.08
    end
    
    needle_vu_res_amp_delta = needle_vu_res_amp_loc - needle_vu_res_amp

    if needle_vu_res_amp_delta > 0.01 then
      needle_vu_res_amp = needle_vu_res_amp + math.abs(needle_vu_res_amp_delta) * 0.08
    elseif needle_vu_res_amp_delta < 0 then
      needle_vu_res_amp = needle_vu_res_amp - math.abs(needle_vu_res_amp_delta) * 0.08
    end
    
    
end



function sd67() 
    
    
    simDR_nav_khz[4] = math.floor(simDR_nav_khz[4] / 5 + 0.5) * 5
    simDR_nav_khz[5] = math.floor(simDR_nav_khz[5] / 5 + 0.5) * 5
    
    
    if simDR_nav_mhz[4] < 108 then
       simDR_nav_mhz[4] = 117
    end
    
    if simDR_nav_mhz[4] > 117 then
       simDR_nav_mhz[4] = 108
    end
    
    if simDR_nav_mhz[5] < 108 then
       simDR_nav_mhz[5] = 117
    end
    
    if simDR_nav_mhz[5] > 117 then
       simDR_nav_mhz[5] = 108
    end
    
    
    if mhz_sd67_1 - simDR_nav_mhz[4] == 0 then
    elseif khz_sd67_1 - simDR_nav_khz[4] == 0 then
        mhz_sd67_1 = simDR_nav_mhz[4]
        simDR_nav1_rotary = simDR_nav1_rotary +300
    end
    if mhz_sd67_2 - simDR_nav_mhz[5] == 0 then
    elseif khz_sd67_2 - simDR_nav_khz[5] == 0 then
        mhz_sd67_2 = simDR_nav_mhz[5]
        simDR_nav1_rotary = simDR_nav1_rotary +300
    end
    
    if khz_sd67_1 - simDR_nav_khz[4] == 0 then
    else
        simDR_nav_mhz[4] = mhz_sd67_1
        khz_sd67_1 = simDR_nav_khz[4]
        simDR_nav1_rotary = simDR_nav1_rotary +300
    end
    if khz_sd67_2 - simDR_nav_khz[5] == 0 then
    else
        simDR_nav_mhz[5] = mhz_sd67_2
        khz_sd67_2 = simDR_nav_khz[5]
        simDR_nav1_rotary = simDR_nav1_rotary +300
    end
    
    if simDR_sd75_1 > 0 and simDR_36vl > 5 then
       if sd67_1_run > 0 then
          sd67_1_run = sd67_1_run -1.1 * SIM_PERIOD
       end
    elseif simDR_temp_cockpit < 23 then
       sd67_1_run = 25 - simDR_temp_cockpit
    else
       sd67_1_run = 2
    end
    
    if simDR_sd75_2 > 0 and simDR_36vr > 5 then
       if sd67_2_run > 0 then
          sd67_2_run = sd67_2_run -1.1 * SIM_PERIOD
       end
    elseif simDR_temp_cockpit < 23 then
       sd67_2_run = 25 - simDR_temp_cockpit
    else
       sd67_2_run = 2
    end

    
    
    if sd67_1_dme_reserv < 1 and sd67_1_run < 1 then
        simDR_navpower[4] = 1
        if sd67_1_test > 0 then
            sd67_1_dist_km = 206.7/(1.852-0.852*simDR_sd_mode)
            sd67_1_blank = 0
        else
            if simDR_nav_has_dme[4] > 0 then
                sd67_1_dist_km = simDR_nav_dist[4] * (1+0.852*simDR_sd_mode)
                sd67_1_blank = 0
            elseif sd67_2_test < 1 then
                sd67_1_blank = 1
            end
        end
    else
        sd67_1_blank = 1
        simDR_navpower[4] = 0
    end
    
    if sd67_2_dme_reserv < 1 and sd67_2_run < 1 then
        simDR_navpower[5] = 1
        if sd67_2_test > 0 then
            sd67_2_dist_km = 206.7/(1.852-0.852*simDR_sd_mode)
            sd67_2_blank = 0
        else
            if simDR_nav_has_dme[5] > 0 then
                sd67_2_dist_km = simDR_nav_dist[5] * (1+0.852*simDR_sd_mode)
                sd67_2_blank = 0
            elseif sd67_2_test < 1 then
                sd67_2_blank = 1
            end
        end
        
    else
        sd67_2_blank = 1
        simDR_navpower[5] = 0
    end
    
    -- if sd67_1_test > 0 then
        -- simDR_but_sound = 1 
    -- end
    
    -- if sd67_2_test > 0 then
        -- simDR_but_sound = 1 
    -- end
    
    -- if sd67_2_test < 1 and sd67_1_test < 1 and front_opora_push_vibro < 1 and back_opora_push_vibro < 1 and (fire_apu_but+fire_eng1_but+fire_eng2_but+fire_eng3_but+smoke_1_but+smoke_2_but) < 1 then
        -- simDR_but_sound = 0
    -- end
    
    
    -- if sd67_1_dme_reserv > 0 and sw_sound_sd1_reserv > 0 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_sd1_reserv = 0
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_sd1_reserv = 0
        -- end
    -- end
    -- if sd67_1_dme_reserv < 1 and sw_sound_sd1_reserv < 1 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_sd1_reserv = 1
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_sd1_reserv = 1
        -- end
    -- end
    
    -- if sd67_2_dme_reserv > 0 and sw_sound_sd2_reserv > 0 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_sd2_reserv = 0
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_sd2_reserv = 0
        -- end
    -- end
    -- if sd67_2_dme_reserv < 1 and sw_sound_sd2_reserv < 1 then
        -- if simDR_sw_sound > -2 then
            -- simDR_sw_sound = -2
            -- sw_sound_sd2_reserv = 1
        -- else
            -- simDR_sw_sound = -1
            -- sw_sound_sd2_reserv = 1
        -- end
    -- end
    
    simDR_nav_dme_mhz = simDR_nav_mhz 
    simDR_nav_dme_khz = simDR_nav_khz


    
    sd67_1_dig1_loc = math.floor(sd67_1_dist_km*0.01)
    sd67_1_dig2_loc = math.floor(sd67_1_dist_km*0.1)-sd67_1_dig1_loc*10
    sd67_1_dig3_loc = math.floor(sd67_1_dist_km)-sd67_1_dig2_loc*10-sd67_1_dig1_loc*100
    sd67_1_dig4_loc = math.floor(sd67_1_dist_km*10)-sd67_1_dig1_loc*1000-sd67_1_dig2_loc*100-sd67_1_dig3_loc*10
    sd67_2_dig1_loc = math.floor(sd67_2_dist_km*0.01)
    sd67_2_dig2_loc = math.floor(sd67_2_dist_km*0.1)-sd67_2_dig1_loc*10
    sd67_2_dig3_loc = math.floor(sd67_2_dist_km)-sd67_2_dig2_loc*10-sd67_2_dig1_loc*100
    sd67_2_dig4_loc = math.floor(sd67_2_dist_km*10)-sd67_2_dig1_loc*1000-sd67_2_dig2_loc*100-sd67_2_dig3_loc*10
 
--sd67_1
if (sd67_1_dig1_loc-sd67_1_dig1_loc1) > 0 then
    sd67_1_dig1_loc1 = sd67_1_dig1_loc1 + 11*math.abs(sd67_1_dig1_loc-sd67_1_dig1_loc1)*SIM_PERIOD
elseif (sd67_1_dig1_loc-sd67_1_dig1_loc1) < 0.02 then
    sd67_1_dig1_loc1 = sd67_1_dig1_loc1 -11*math.abs(sd67_1_dig1_loc-sd67_1_dig1_loc1)*SIM_PERIOD
else
    sd67_1_dig1_loc1 = sd67_1_dig1_loc
end

if (sd67_1_dig2_loc-sd67_1_dig2_loc1) > 0 then
    sd67_1_dig2_loc1 = sd67_1_dig2_loc1 + 11*math.abs(sd67_1_dig2_loc-sd67_1_dig2_loc1)*SIM_PERIOD
elseif (sd67_1_dig2_loc-sd67_1_dig2_loc1) < 0.02 then
    sd67_1_dig2_loc1 = sd67_1_dig2_loc1 -11*math.abs(sd67_1_dig2_loc-sd67_1_dig2_loc1)*SIM_PERIOD
else
    sd67_1_dig2_loc1 = sd67_1_dig2_loc
end

if (sd67_1_dig3_loc-sd67_1_dig3_loc1) > 0 then
    sd67_1_dig3_loc1 = sd67_1_dig3_loc1 + 11*math.abs(sd67_1_dig3_loc-sd67_1_dig3_loc1)*SIM_PERIOD
elseif (sd67_1_dig3_loc-sd67_1_dig3_loc1) < 0.02 then
    sd67_1_dig3_loc1 = sd67_1_dig3_loc1 -11*math.abs(sd67_1_dig3_loc-sd67_1_dig3_loc1)*SIM_PERIOD
else
    sd67_1_dig3_loc1 = sd67_1_dig3_loc
end

if (sd67_1_dig4_loc-sd67_1_dig4_loc1) > 0 then
    sd67_1_dig4_loc1 = sd67_1_dig4_loc1 + 11*math.abs(sd67_1_dig4_loc-sd67_1_dig4_loc1)*SIM_PERIOD
elseif (sd67_1_dig4_loc-sd67_1_dig4_loc1) < 0.02 then
    sd67_1_dig4_loc1 = sd67_1_dig4_loc1 -11*math.abs(sd67_1_dig4_loc-sd67_1_dig4_loc1)*SIM_PERIOD
else
    sd67_1_dig4_loc1 = sd67_1_dig4_loc
end

if math.abs(sd67_1_dig1_loc-sd67_1_dig1_loc1) > 0.5 and damping_1_dig1 == -25 then
    damping_1_dig1 = 88
end

if math.abs(sd67_1_dig2_loc-sd67_1_dig2_loc1) > 0.5 and damping_1_dig2 == -25 then
    damping_1_di2 = 88
end

if math.abs(sd67_1_dig3_loc-sd67_1_dig3_loc1) > 0.5 and damping_1_dig3 == -25 then
    damping_1_dig3 = 88
end

if math.abs(sd67_1_dig4_loc-sd67_1_dig4_loc1) > 0.5 and damping_1_dig4 == -25 then
    damping_1_dig4 = 88
end

if damping_1_dig1 > -25 then
    damping_1_dig1 = damping_1_dig1 - 100*SIM_PERIOD
else
   damping_1_dig1= -25
end

if damping_1_dig2 > -25 then
    damping_1_dig2 = damping_1_dig2 - 100*SIM_PERIOD
else
   damping_1_dig2= -25
end

if damping_1_dig3 > -25 then
    damping_1_dig3 = damping_1_dig3 - 100*SIM_PERIOD
else
   damping_1_dig3 = -25
end

if damping_1_dig4 > -25 then
    damping_1_dig4 = damping_1_dig4 - 100*SIM_PERIOD
else
   damping_1_dig4 = -25
end


--sd67_2
    
    if (sd67_2_dig1_loc-sd67_2_dig1_loc1) > 0 then
        sd67_2_dig1_loc1 = sd67_2_dig1_loc1 + 11*math.abs(sd67_2_dig1_loc-sd67_2_dig1_loc1)*SIM_PERIOD
    elseif (sd67_2_dig1_loc-sd67_2_dig1_loc1) < 0.02 then
        sd67_2_dig1_loc1 = sd67_2_dig1_loc1 -11*math.abs(sd67_2_dig1_loc-sd67_2_dig1_loc1)*SIM_PERIOD
    else
        sd67_2_dig1_loc1 = sd67_2_dig1_loc
    end
    
    if (sd67_2_dig2_loc-sd67_2_dig2_loc1) > 0 then
        sd67_2_dig2_loc1 = sd67_2_dig2_loc1 + 11*math.abs(sd67_2_dig2_loc-sd67_2_dig2_loc1)*SIM_PERIOD
    elseif (sd67_2_dig2_loc-sd67_2_dig2_loc1) < 0.02 then
        sd67_2_dig2_loc1 = sd67_2_dig2_loc1 -11*math.abs(sd67_2_dig2_loc-sd67_2_dig2_loc1)*SIM_PERIOD
    else
        sd67_2_dig2_loc1 = sd67_2_dig2_loc
    end

    if (sd67_2_dig3_loc-sd67_2_dig3_loc1) > 0 then
        sd67_2_dig3_loc1 = sd67_2_dig3_loc1 + 11*math.abs(sd67_2_dig3_loc-sd67_2_dig3_loc1)*SIM_PERIOD
    elseif (sd67_2_dig3_loc-sd67_2_dig3_loc1) < 0.02 then
        sd67_2_dig3_loc1 = sd67_2_dig3_loc1 -11*math.abs(sd67_2_dig3_loc-sd67_2_dig3_loc1)*SIM_PERIOD
    else
        sd67_2_dig3_loc1 = sd67_2_dig3_loc
    end
    
    if (sd67_2_dig4_loc-sd67_2_dig4_loc1) > 0 then
        sd67_2_dig4_loc1 = sd67_2_dig4_loc1 + 11*math.abs(sd67_2_dig4_loc-sd67_2_dig4_loc1)*SIM_PERIOD
    elseif (sd67_2_dig4_loc-sd67_2_dig4_loc1) < 0.02 then
        sd67_2_dig4_loc1 = sd67_2_dig4_loc1 -11*math.abs(sd67_2_dig4_loc-sd67_2_dig4_loc1)*SIM_PERIOD
    else
        sd67_2_dig4_loc1 = sd67_2_dig4_loc
    end

    if math.abs(sd67_2_dig1_loc-sd67_2_dig1_loc1) > 0.5 and damping_2_dig1 == -25 then
        damping_2_dig1 = 88
    end

    if math.abs(sd67_2_dig2_loc-sd67_2_dig2_loc1) > 0.5 and damping_2_dig2 == -25 then
        damping_2_di2 = 88
    end

    if math.abs(sd67_2_dig3_loc-sd67_2_dig3_loc1) > 0.5 and damping_2_dig3 == -25 then
        damping_2_dig3 = 88
    end

    if math.abs(sd67_2_dig4_loc-sd67_2_dig4_loc1) > 0.5 and damping_2_dig4 == -25 then
        damping_2_dig4 = 88
    end

    if damping_2_dig1 > -25 then
        damping_2_dig1 = damping_2_dig1 - 100*SIM_PERIOD
    else
       damping_2_dig1= -25
    end

    if damping_2_dig2 > -25 then
        damping_2_dig2 = damping_2_dig2 - 100*SIM_PERIOD
    else
       damping_2_dig2= -25
    end

    if damping_2_dig3 > -25 then
        damping_2_dig3 = damping_2_dig3 - 100*SIM_PERIOD
    else
       damping_2_dig3 = -25
    end

    if damping_2_dig4 > -25 then
        damping_2_dig4 = damping_2_dig4 - 100*SIM_PERIOD
    else
       damping_2_dig4 = -25
    end
    


    sd67_1_dig1 = sd67_1_dig1_loc1+(math.cos(damping_1_dig1/10)+0.8)*1.6*(1-((88 - (damping_1_dig1+13))*0.01))
    sd67_1_dig2 = sd67_1_dig2_loc1+(math.cos(damping_1_dig2/10)+0.8)*1.6*(1-((88 - (damping_1_dig2+13))*0.01))
    sd67_1_dig3 = sd67_1_dig3_loc1+(math.cos(damping_1_dig3/10)+0.8)*1.6*(1-((88 - (damping_1_dig3+13))*0.01))
    sd67_1_dig4 = sd67_1_dig4_loc1+(math.cos(damping_1_dig4/10)+0.8)*1.6*(1-((88 - (damping_1_dig4+13))*0.01))

    sd67_2_dig1 = sd67_2_dig1_loc1+(math.cos(damping_2_dig1/10)+0.8)*1.6*(1-((88 - (damping_2_dig1+13))*0.01))
    sd67_2_dig2 = sd67_2_dig2_loc1+(math.cos(damping_2_dig2/10)+0.8)*1.6*(1-((88 - (damping_2_dig2+13))*0.01))
    sd67_2_dig3 = sd67_2_dig3_loc1+(math.cos(damping_2_dig3/10)+0.8)*1.6*(1-((88 - (damping_2_dig3+13))*0.01))
    sd67_2_dig4 = sd67_2_dig4_loc1+(math.cos(damping_2_dig4/10)+0.8)*1.6*(1-((88 - (damping_2_dig4+13))*0.01))
    
   ---

end



function kursmp()

    if kurs_mp_1_dir > 0 and kurs_mp_1_dir_loc < 1 then
       if simDR_kmp_1_crs > 179 then
          simDR_kmp_1_crs = simDR_kmp_1_crs - 180
       else
          simDR_kmp_1_crs = simDR_kmp_1_crs + 180
       end
       kurs_mp_1_dir_loc = 1
    end

    if kurs_mp_1_dir < 1 and kurs_mp_1_dir_loc > 0 then
       if simDR_kmp_1_crs > 179 then
          simDR_kmp_1_crs = simDR_kmp_1_crs - 180
       else
          simDR_kmp_1_crs = simDR_kmp_1_crs + 180
       end
       kurs_mp_1_dir_loc = 0
    end

    if kurs_mp_2_dir > 0 and kurs_mp_2_dir_loc < 1 then
       if simDR_kmp_2_crs > 179 then
          simDR_kmp_2_crs = simDR_kmp_2_crs - 180
       else
          simDR_kmp_2_crs = simDR_kmp_2_crs + 180
       end
       kurs_mp_2_dir_loc = 1
    end

    if kurs_mp_2_dir < 1 and kurs_mp_2_dir_loc > 0 then
       if simDR_kmp_2_crs > 179 then
          simDR_kmp_2_crs = simDR_kmp_2_crs - 180
       else
          simDR_kmp_2_crs = simDR_kmp_2_crs + 180
       end
       kurs_mp_2_dir_loc = 0
    end

end    
  
function data()
    
        simDR_gauges1_cap = 0
        simDR_gauges2_cap = 0
        simDR_gauges3_cap = 0
        simDR_gauges1 = 1
        simDR_gauges2 = 1
        simDR_gauges3 = 1
    
    if aircraft_loaded > 0 then
        -- simDR_left_pnppkp_light = 5
        -- simDR_right_pnppkp_light = 5
        if simDR_startuprunning > 0 then
            eng1_temp_ctrl = 1
            eng2_temp_ctrl = 1
            eng3_temp_ctrl = 1
            vvr_1 = 1
            vvr_2 = 1
            art = 1
            vibro_pwr1 = 1
            vibro_pwr2 = 1
            vibro_pwr3 = 1
        end
       aircraft_loaded = 0
    end
    
    simDR_bus_connect = 1
    simDR_bus_connect_cap = 1
    if simDR_36vl > 5 then
        bus36 = 1
    elseif simDR_36vr > 5 then
        bus36 = 1
    else
        bus36 = 0
    end  
end

function aircraft_load() 
    aircraft_loaded = 1
end

function after_physics()
    auasp()
    misc()
    data()
    eng()
    apu()
    bleed()
    --starter()
    fire_system()
    sd67()
    elec()
    --kursmp()
    stp_test()
end
