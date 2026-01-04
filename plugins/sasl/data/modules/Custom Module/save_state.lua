-- this is safe state script


defineProperty("reset_state",globalPropertyi("tu154b2/custom/reset_state")) -- сброс состояния самолета
defineProperty("save_state", globalPropertyi("tu154b2/custom/save_state")) -- принудительное сохранение состояния самолета

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("starter_torq", globalPropertyf("tu154b2/custom/engines/thro_spread")) 

defineProperty("hardware_cockpit", globalPropertyi("tu154b2/custom/hardware_cockpit")) -- Самолет подготовлен для железного кокпита
--defineProperty("payload", globalPropertyf("sim/flightmodel/weight/m_fixed"))  -- payload weight, kg
--defineProperty("CG_load", globalPropertyf("sim/flightmodel/misc/cgz_ref_to_default")) -- Center of Gravity reference to default, m
defineProperty("fuel_q_1", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel quantity for tank 1
defineProperty("fuel_q_4", globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel quantity for tank 4
defineProperty("fuel_q_2R", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel quantity for tank 2R
defineProperty("fuel_q_2L", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel quantity for tank 2L
defineProperty("fuel_q_3R", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel quantity for tank 3R
defineProperty("fuel_q_3L", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel quantity for tank 3L

defineProperty("hide_rus_objects", globalPropertyi("tu154b2/custom/lang/hide_rus_objects")) -- спрятать русские объекты кабины
defineProperty("hide_eng_objects", globalPropertyi("tu154b2/custom/lang/hide_eng_objects")) -- спрятать английские объекты кабины

defineProperty("sounds_voulme", globalPropertyi("tu154b2/custom/sounds_voulme")) -- общая громкость звуков
defineProperty("enable_crew_vo", globalPropertyi("tu154b2/custom/sounds/enable_crew_vo")) -- включены фразы екипажа

defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled")) -- отказы включены
defineProperty("have_pedals", globalPropertyi("tu154b2/custom/have_pedals"))
defineProperty("show_gns", globalPropertyi("tu154b2/custom/anim/show_gns"))
defineProperty("show_RXP",globalPropertyi("tu154b2/custom/anim/RXP"))

defineProperty("pnp_1_crs", globalPropertyi("tu154b2/custom/gauges/compas/pkp_obs_set_L"))
defineProperty("pnp_2_crs", globalPropertyi("tu154b2/custom/gauges/compas/pkp_obs_set_R"))

defineProperty("pnp_1_obs", globalPropertyi("tu154b2/custom/gauges/compas/pkp_helper_course_L"))
defineProperty("pnp_2_obs", globalPropertyi("tu154b2/custom/gauges/compas/pkp_helper_course_R"))

defineProperty("ark_1_channel", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_channel"))
defineProperty("ark_1_hundr_left", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_hundr_left"))
defineProperty("ark_1_tens_left", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_tens_left"))
defineProperty("ark_1_ones_left", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_ones_left"))
defineProperty("ark_1_hundr_right", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_hundr_right"))
defineProperty("ark_1_tens_right", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_tens_right"))
defineProperty("ark_1_ones_right", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_ones_right"))

defineProperty("ark_2_channel", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_channel"))
defineProperty("ark_2_hundr_left", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_hundr_left"))
defineProperty("ark_2_tens_left", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_tens_left"))
defineProperty("ark_2_ones_left", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_ones_left"))
defineProperty("ark_2_hundr_right", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_hundr_right"))
defineProperty("ark_2_tens_right", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_tens_right"))
defineProperty("ark_2_ones_right", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_ones_right"))

defineProperty("vd15_pressure_left", globalPropertyf("tu154b2/custom/gauges/alt/vd15_pressure_left")) -- давление на ВД15 КВС
defineProperty("vd15_pressure_right", globalPropertyf("tu154b2/custom/gauges/alt/vd15_pressure_right")) -- давление на ВД15 2П
defineProperty("vd15_pressure_eng", globalPropertyf("tu154b2/custom/gauges/alt/vd15_pressure_eng")) -- давление на ВД15 БИ
defineProperty("uvid_pressure_knob", globalPropertyf("tu154b2/custom/gauges/alt/uvid_pressure_knob"))  -- ручка установки давления


---b2

defineProperty("ushdb_crs_knob", globalPropertyi("sim/custom/b2/ushdb_crs"))

defineProperty("msrp_year_one", globalPropertyi("tu154b2/custom/switchers/eng/msrp_year_one"))
defineProperty("msrp_route_hun", globalPropertyi("tu154b2/custom/switchers/eng/msrp_route_hun"))
defineProperty("msrp_route_ten", globalPropertyi("tu154b2/custom/switchers/eng/msrp_route_ten"))
defineProperty("msrp_route_one", globalPropertyi("tu154b2/custom/switchers/eng/msrp_route_one"))
defineProperty("msrp_year_ten", globalPropertyi("tu154b2/custom/switchers/eng/msrp_year_ten"))
defineProperty("vhfnew_2_mhz", globalPropertyi("sim/custom/radios/vhfnew_2_mhz"))
defineProperty("vhfnew_3_mhz", globalPropertyi("sim/custom/radios/vhfnew_3_mhz"))
defineProperty("vhfnew_2_khz", globalPropertyi("sim/custom/radios/vhfnew_2_khz"))
defineProperty("vhfnew_3_khz", globalPropertyi("sim/custom/radios/vhfnew_3_khz"))
defineProperty("co63_sqwk_1", globalPropertyi("sim/custom/co63_sqwk_1"))
defineProperty("co63_sqwk_2", globalPropertyi("sim/custom/co63_sqwk_2"))
defineProperty("co63_sqwk_3", globalPropertyi("sim/custom/co63_sqwk_3"))
defineProperty("co63_sqwk_4", globalPropertyi("sim/custom/co63_sqwk_4"))
defineProperty("co70_sqwk_1", globalPropertyi("sim/custom/co70_sqwk_1"))
defineProperty("co70_sqwk_2", globalPropertyi("sim/custom/co70_sqwk_2"))
defineProperty("co70_sqwk_3", globalPropertyi("sim/custom/co70_sqwk_3"))
defineProperty("co70_sqwk_4", globalPropertyi("sim/custom/co70_sqwk_4"))
defineProperty("uvo15_press_knob", globalPropertyi("sim/custom/uvo15_press_knob"))
defineProperty("vem72_press_knob", globalPropertyi("sim/custom/vem72_press_knob"))


defineProperty("icao_dep_1", globalPropertyi("sim/custom/t154_efb/fork_dep1"))
defineProperty("icao_dep_2", globalPropertyi("sim/custom/t154_efb/fork_dep2"))
defineProperty("icao_dep_3", globalPropertyi("sim/custom/t154_efb/fork_dep3"))
defineProperty("icao_dep_4", globalPropertyi("sim/custom/t154_efb/fork_dep4"))
defineProperty("icao_arr_1", globalPropertyi("sim/custom/t154_efb/fork_arr1"))
defineProperty("icao_arr_2", globalPropertyi("sim/custom/t154_efb/fork_arr2"))
defineProperty("icao_arr_3", globalPropertyi("sim/custom/t154_efb/fork_arr3"))
defineProperty("icao_arr_4", globalPropertyi("sim/custom/t154_efb/fork_arr4"))
defineProperty("icao_wx_1", globalPropertyi("sim/custom/t154_efb/wx_icao1"))
defineProperty("icao_wx_2", globalPropertyi("sim/custom/t154_efb/wx_icao2"))
defineProperty("icao_wx_3", globalPropertyi("sim/custom/t154_efb/wx_icao3"))
defineProperty("icao_wx_4", globalPropertyi("sim/custom/t154_efb/wx_icao4"))


defineProperty("slider0", globalPropertyi("tu154b2/custom/switchers/airbleed/ground_cond_on_cap"))
defineProperty("slider1", globalPropertyi("tu154b2/custom/switchers/airbleed/skv_faster_work_cap"))
defineProperty("slider2", globalPropertyi("tu154b2/custom/switchers/spu_2_power"))
defineProperty("slider3", globalProperty("sim/cockpit2/switches/custom_slider_on[0]"))
defineProperty("slider4", globalProperty("sim/cockpit2/switches/custom_slider_on[1]"))
defineProperty("slider5", globalProperty("sim/cockpit2/switches/custom_slider_on[7]"))
defineProperty("slider6", globalProperty("sim/cockpit2/switches/custom_slider_on[10]"))
defineProperty("slider7", globalProperty("sim/cockpit2/switches/custom_slider_on[11]"))
defineProperty("slider8", globalPropertyi("tu154b2/custom/switchers/spu_3_power"))
defineProperty("slider9", globalPropertyi("tu154b2/custom/switchers/eng/emerg_gen_on_1"))
defineProperty("slider10", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_1"))
defineProperty("slider11", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_2"))
defineProperty("slider12", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_3"))
defineProperty("slider13", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_1"))
defineProperty("slider14", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_2"))
defineProperty("slider15", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_3"))
defineProperty("slider16", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_1"))
defineProperty("slider17", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_2"))
defineProperty("slider18", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_3"))




defineProperty("slider19", globalPropertyf("tu154b2/custom/nvu/current_S1"))
defineProperty("slider20", globalPropertyf("tu154b2/custom/nvu/current_S2"))
defineProperty("slider21", globalPropertyf("tu154b2/custom/nvu/current_Z1"))
defineProperty("slider22", globalPropertyf("tu154b2/custom/nvu/current_Z2"))
defineProperty("slider23", globalPropertyf("tu154b2/custom/nvu/next_S1"))
defineProperty("slider24", globalPropertyf("tu154b2/custom/nvu/next_S2"))
defineProperty("slider25", globalPropertyf("tu154b2/custom/nvu/next_Z1"))
defineProperty("slider26", globalPropertyf("tu154b2/custom/nvu/next_Z2"))
defineProperty("slider27", globalPropertyf("tu154b2/custom/nvu/zpu1"))
defineProperty("slider28", globalPropertyf("tu154b2/custom/nvu/zpu2"))
defineProperty("slider29", globalPropertyf("tu154b2/custom/nvu/diss_wind_course"))
defineProperty("slider30", globalPropertyf("tu154b2/custom/nvu/diss_wind_spd"))
defineProperty("slider31", globalPropertyf("tu154b2/custom/gauges/misc/diss_minus_angle_1"))
defineProperty("slider32", globalPropertyf("tu154b2/custom/gauges/misc/diss_minus_angle_10"))
defineProperty("slider33", globalPropertyf("tu154b2/custom/gauges/misc/diss_plus_angle_1"))
defineProperty("slider34", globalPropertyf("tu154b2/custom/gauges/misc/diss_plus_angle_10"))
defineProperty("slider35", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_left"))
defineProperty("slider36", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_right"))
defineProperty("slider37", globalPropertyf("tu154b2/custom/gauges/alt/vd15_tri_needle_left"))
defineProperty("slider38", globalPropertyf("tu154b2/custom/gauges/alt/vd15_tri_needle_right"))
defineProperty("slider39", globalPropertyf("tu154b2/custom/gauges/alt/vd15_tri_needle_eng"))


defineProperty("slider40", globalPropertyf("sim/custom/other/pedal_left_pos"))
defineProperty("slider41", globalPropertyf("sim/custom/other/pedal_right_pos"))
defineProperty("slider42", globalPropertyf("sim/custom/other/left_seat_move"))
defineProperty("slider43", globalPropertyf("sim/custom/other/right_seat_move"))
defineProperty("slider44", globalPropertyf("sim/custom/anim/rise_chair_arm_eng"))
defineProperty("slider45", globalPropertyf("sim/custom/other/eng_seat_move"))
defineProperty("slider46", globalPropertyf("sim/custom/other/navi_seat_move"))
defineProperty("slider47", globalPropertyf("sim/custom/other/radio_seat_move"))



defineProperty("slider48", globalPropertyf("tu154b2/custom/gauges/fuel/fuel_meter_mech"))
defineProperty("slider49", globalPropertyi("tu154b2/custom/anim/sensors_caps"))
defineProperty("slider50", globalPropertyi("tu154b2/custom/anim/gear_blocks"))
defineProperty("slider51", globalPropertyi("tu154b2/custom/anim/engine_caps"))
defineProperty("slider52", globalPropertyf("sim/custom/other/left_seat_pos"))
defineProperty("slider53", globalPropertyf("sim/custom/other/right_seat_pos"))
defineProperty("slider54", globalPropertyf("sim/custom/b2/sd67_1_dist_km"))
defineProperty("slider55", globalPropertyf("sim/custom/b2/sd67_2_dist_km"))
defineProperty("slider56", globalPropertyf("sim/custom/b2/sd67_1_dig3"))
defineProperty("slider57", globalPropertyf("sim/custom/b2/sd67_1_dig4"))
defineProperty("slider58", globalPropertyf("sim/custom/b2/sd67_2_dig1"))
defineProperty("slider59", globalPropertyf("sim/custom/b2/sd67_2_dig2"))
defineProperty("slider60", globalPropertyf("sim/custom/b2/sd67_2_dig3"))
defineProperty("slider61", globalPropertyf("sim/custom/b2/sd67_2_dig4"))




defineProperty("switch1", globalPropertyf("sim/custom/cabin/sw_20"))
defineProperty("switch2", globalPropertyf("sim/custom/cabin/sw_21"))
defineProperty("switch3", globalPropertyf("sim/custom/cabin/sw_22"))
defineProperty("switch4", globalPropertyf("sim/custom/cabin/sw_23"))
defineProperty("switch5", globalPropertyf("sim/custom/cabin/sw_24"))
defineProperty("switch6", globalPropertyf("sim/custom/cabin/sw_25"))
defineProperty("switch7", globalPropertyf("sim/custom/cabin/sw_26"))
defineProperty("switch8", globalPropertyf("sim/custom/cabin/sw_30"))
defineProperty("switch9", globalPropertyf("sim/custom/cabin/sw_32"))
defineProperty("switch10", globalPropertyf("sim/custom/cabin/sw_33"))
defineProperty("enable_walk", globalPropertyf("sim/custom/t154_camera/enable_walk"))






defineProperty("lp_int", globalPropertyi("tu154b2/custom/lights/left_panel_int_set"))
defineProperty("lpf", globalPropertyf("tu154b2/custom/lights/left_panel_flood_set"))
defineProperty("ardf", globalPropertyf("sim/custom/lights/ard_panel_flood_set"))
defineProperty("engf", globalPropertyf("tu154b2/custom/lights/eng_panel_flood_set"))
defineProperty("kmf", globalPropertyf("tu154b2/custom/lights/km_panel_flood_set"))
defineProperty("mrp_int", globalPropertyi("tu154b2/custom/lights/mid_right_panel_int_set"))
defineProperty("ovhd_int", globalPropertyi("tu154b2/custom/lights/ovhd_panel_int_set"))
defineProperty("mlp_int", globalPropertyi("tu154b2/custom/lights/mid_left_panel_int_set"))
defineProperty("ovhd_f", globalPropertyf("tu154b2/custom/lights/ovhd_front_panel_flood_set"))
defineProperty("ovhd_b", globalPropertyf("tu154b2/custom/lights/ovhd_back_panel_flood_set"))
defineProperty("fpf", globalPropertyf("tu154b2/custom/lights/front_panel_flood_set"))
defineProperty("mpf", globalPropertyf("tu154b2/custom/lights/mid_panel_flood_set"))
defineProperty("rpf", globalPropertyf("tu154b2/custom/lights/right_panel_flood_set"))
defineProperty("rp_int", globalPropertyf("tu154b2/custom/lights/right_panel_int_set"))
defineProperty("table_up_R", globalPropertyi("tu154b2/custom/anim/table_up_R"))
defineProperty("table_up_L", globalPropertyi("tu154b2/custom/anim/table_up_L"))
defineProperty("efb_enabled", globalPropertyi("sim/custom/t154_efb/enabled"))
defineProperty("eng_light_angle_result", globalPropertyi("sim/custom/eng_light_angle_result"))
defineProperty("eng_light_angle2", globalPropertyf("sim/custom/eng_light_angle2"))
defineProperty("yoke_height", globalPropertyf("sim/custom/yoke_height"))



defineProperty("cas67_code", globalPropertyi("sim/custom/tcas2000/code"))
defineProperty("so72_code", globalPropertyi("tu154b2/custom/ovhd/so72_code"))

defineProperty("flt_1", globalPropertyi("tu154b2/custom/tcas2000/flt_no_1"))
defineProperty("flt_2", globalPropertyi("tu154b2/custom/tcas2000/flt_no_2"))
defineProperty("flt_3", globalPropertyi("tu154b2/custom/tcas2000/flt_no_3"))
defineProperty("flt_4", globalPropertyi("tu154b2/custom/tcas2000/flt_no_4"))
defineProperty("flt_5", globalPropertyi("tu154b2/custom/tcas2000/flt_no_5"))
defineProperty("flt_6", globalPropertyi("tu154b2/custom/tcas2000/flt_no_6"))
defineProperty("flt_7", globalPropertyi("tu154b2/custom/tcas2000/flt_no_7"))
defineProperty("flt_8", globalPropertyi("tu154b2/custom/tcas2000/flt_no_8"))

defineProperty("tks_lat_set", globalPropertyf("tu154b2/custom/rotary/ovhd/tks_lat_set"))

-- failures
defineProperty("ppd_3_heat_fail", globalPropertyi("tu154b2/custom/antiice/ppd_3_heat_fail"))

defineProperty("rel_ice_inlet_heat1", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat"))
defineProperty("rel_ice_inlet_heat2", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat2"))
defineProperty("rel_ice_inlet_heat3", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat3"))

defineProperty("rel_ice_pitot_heat1", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat1"))
defineProperty("rel_ice_pitot_heat2", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat2"))

defineProperty("rel_ice_surf_heat", globalPropertyi("sim/operation/failures/rel_ice_surf_heat"))
defineProperty("rel_ice_surf_heat2", globalPropertyi("sim/operation/failures/rel_ice_surf_heat2"))

defineProperty("rio_fail", globalPropertyi("tu154b2/custom/failures/rio_fail"))

defineProperty("window_heat_fail_1", globalPropertyi("tu154b2/custom/failures/window_heat_fail_1"))
defineProperty("window_heat_fail_2", globalPropertyi("tu154b2/custom/failures/window_heat_fail_2"))
defineProperty("window_heat_fail_3", globalPropertyi("tu154b2/custom/failures/window_heat_fail_3"))

defineProperty("apu_start_fail",globalPropertyi("tu154b2/custom/failures/apu_start_fail")) -- отказ стартера
defineProperty("apu_runtime",globalPropertyf("tu154b2/custom/failures/apu_runtime")) -- время наработки
defineProperty("apu_fail",globalPropertyi("tu154b2/custom/failures/apu_fail")) -- отказ по наработке
defineProperty("apu_press_fail", globalPropertyi("tu154b2/custom/failures/apu_press_fail")) -- отказ отбора воздуха от двигателя


defineProperty("brake_runtime_left", globalPropertyf("tu154b2/custom/failures/brake_runtime_left")) -- Наработка тормозных колодок
defineProperty("brake_runtime_right", globalPropertyf("tu154b2/custom/failures/brake_runtime_right")) -- Наработка тормозных колодок

defineProperty("rel_lbrakes", globalPropertyi("sim/operation/failures/rel_lbrakes")) -- Отказ тормозов
defineProperty("rel_rbrakes", globalPropertyi("sim/operation/failures/rel_rbrakes")) -- Отказ тормозов

defineProperty("ail_fail_left", globalPropertyi("tu154b2/custom/failures/ail_fail_left")) -- 
defineProperty("ail_fail_right", globalPropertyi("tu154b2/custom/failures/ail_fail_right")) -- 

defineProperty("fail_spoil_inn_left", globalPropertyi("tu154b2/custom/failures/fail_spoil_inn_left")) -- 
defineProperty("fail_spoil_inn_right", globalPropertyi("tu154b2/custom/failures/fail_spoil_inn_right")) -- 
defineProperty("fail_spoil_mid_left", globalPropertyi("tu154b2/custom/failures/fail_spoil_mid_left")) -- 
defineProperty("fail_spoil_mid_right", globalPropertyi("tu154b2/custom/failures/fail_spoil_mid_right")) -- 
defineProperty("fail_spoil_out_left", globalPropertyi("tu154b2/custom/failures/fail_spoil_out_left")) -- 
defineProperty("fail_spoil_out_right", globalPropertyi("tu154b2/custom/failures/fail_spoil_out_right")) -- 

defineProperty("rudder_fail", globalPropertyi("tu154b2/custom/failures/rudder_fail")) -- 
defineProperty("elev_fail_left", globalPropertyi("tu154b2/custom/failures/elev_fail_left")) -- 
defineProperty("elev_fail_right", globalPropertyi("tu154b2/custom/failures/elev_fail_right")) -- 

defineProperty("rel_trim_rud", globalPropertyi("sim/operation/failures/rel_trim_rud")) -- 
defineProperty("rel_trim_ail", globalPropertyi("sim/operation/failures/rel_trim_ail")) -- 
defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv")) -- 
defineProperty("trim_emerg_elv_fail", globalPropertyi("tu154b2/custom/failures/trim_emerg_elv_fail")) --

defineProperty("flap_fail_left", globalPropertyi("tu154b2/custom/failures/flap_fail_left")) -- 
defineProperty("flap_fail_right", globalPropertyi("tu154b2/custom/failures/flap_fail_right")) -- 

defineProperty("stab_eng_fail", globalPropertyi("tu154b2/custom/failures/stab_eng_fail")) -- 
defineProperty("stab_automatic_fail", globalPropertyi("tu154b2/custom/failures/stab_automatic_fail")) -- 
defineProperty("slats_fail", globalPropertyi("tu154b2/custom/failures/slats_fail")) -- 

defineProperty("retract1_fail", globalPropertyi("sim/operation/failures/rel_lagear1")) -- fail of retract gear
defineProperty("retract2_fail", globalPropertyi("sim/operation/failures/rel_lagear2")) -- fail of retract gear
defineProperty("retract3_fail", globalPropertyi("sim/operation/failures/rel_lagear3")) -- fail of retract gear
defineProperty("actuator_fail", globalPropertyi("sim/operation/failures/rel_gear_act")) -- actuator fail. bugs workaround

defineProperty("rel_genera0", globalPropertyi("sim/operation/failures/rel_genera0"))
defineProperty("rel_genera1", globalPropertyi("sim/operation/failures/rel_genera1"))
defineProperty("rel_genera2", globalPropertyi("sim/operation/failures/rel_genera2"))
defineProperty("apu_gen_fail", globalPropertyi("tu154b2/custom/failures/apu_gen_fail"))

defineProperty("vu1_fail", globalPropertyi("tu154b2/custom/failures/vu1_fail"))
defineProperty("vu2_fail", globalPropertyi("tu154b2/custom/failures/vu2_fail"))
defineProperty("vu3_fail", globalPropertyi("tu154b2/custom/failures/vu3_fail"))

defineProperty("tr1_fail", globalPropertyi("tu154b2/custom/failures/tr1_fail"))
defineProperty("tr2_fail", globalPropertyi("tu154b2/custom/failures/tr2_fail"))

defineProperty("pts250_1_fail", globalPropertyi("tu154b2/custom/failures/pts250_1_fail"))
defineProperty("pts250_2_fail", globalPropertyi("tu154b2/custom/failures/pts250_2_fail"))
defineProperty("inv115_fail", globalPropertyi("tu154b2/custom/failures/inv115_fail"))

defineProperty("bat_1_fail", globalPropertyi("tu154b2/custom/failures/bat_1_fail"))
defineProperty("bat_2_fail", globalPropertyi("tu154b2/custom/failures/bat_2_fail"))
defineProperty("bat_3_fail", globalPropertyi("tu154b2/custom/failures/bat_3_fail"))
defineProperty("bat_4_fail", globalPropertyi("tu154b2/custom/failures/bat_4_fail"))

defineProperty("bat_1_kz", globalPropertyi("tu154b2/custom/failures/bat_1_kz"))
defineProperty("bat_2_kz", globalPropertyi("tu154b2/custom/failures/bat_2_kz"))
defineProperty("bat_3_kz", globalPropertyi("tu154b2/custom/failures/bat_3_kz"))
defineProperty("bat_4_kz", globalPropertyi("tu154b2/custom/failures/bat_4_kz"))

defineProperty("rel_engfai0", globalPropertyi("sim/operation/failures/rel_engfai0"))
defineProperty("rel_engfai1", globalPropertyi("sim/operation/failures/rel_engfai1"))
defineProperty("rel_engfai2", globalPropertyi("sim/operation/failures/rel_engfai2"))

defineProperty("engine_runtime_1", globalPropertyf("tu154b2/custom/failures/engine_runtime_1"))
defineProperty("engine_runtime_2", globalPropertyf("tu154b2/custom/failures/engine_runtime_2"))
defineProperty("engine_runtime_3", globalPropertyf("tu154b2/custom/failures/engine_runtime_3"))

defineProperty("eng_fuel_pmp_fail_1", globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_1"))
defineProperty("eng_fuel_pmp_fail_2", globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_2"))
defineProperty("eng_fuel_pmp_fail_3", globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_3"))

defineProperty("engn_oil_qty_1", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_1")) 
defineProperty("engn_oil_qty_2", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_2")) 
defineProperty("engn_oil_qty_3", globalPropertyf("tu154b2/custom/failures/engn_oil_qty_3"))

defineProperty("engn_oil_leak_1", globalPropertyi("tu154b2/custom/failures/engn_oil_leak_1"))
defineProperty("engn_oil_leak_2", globalPropertyi("tu154b2/custom/failures/engn_oil_leak_2"))
defineProperty("engn_oil_leak_3", globalPropertyi("tu154b2/custom/failures/engn_oil_leak_3"))

defineProperty("rel_oilpmp0", globalPropertyi("sim/operation/failures/rel_oilpmp0"))
defineProperty("rel_oilpmp1", globalPropertyi("sim/operation/failures/rel_oilpmp1"))
defineProperty("rel_oilpmp2", globalPropertyi("sim/operation/failures/rel_oilpmp2"))

defineProperty("rel_eng_lo0", globalPropertyi("sim/operation/failures/rel_eng_lo0"))
defineProperty("rel_eng_lo1", globalPropertyi("sim/operation/failures/rel_eng_lo1"))
defineProperty("rel_eng_lo2", globalPropertyi("sim/operation/failures/rel_eng_lo2"))

defineProperty("rel_startr0", globalPropertyi("sim/operation/failures/rel_startr0"))
defineProperty("rel_startr1", globalPropertyi("sim/operation/failures/rel_startr1"))
defineProperty("rel_startr2", globalPropertyi("sim/operation/failures/rel_startr2"))

defineProperty("rel_ignitr0", globalPropertyi("sim/operation/failures/rel_ignitr0"))
defineProperty("rel_ignitr1", globalPropertyi("sim/operation/failures/rel_ignitr1"))
defineProperty("rel_ignitr2", globalPropertyi("sim/operation/failures/rel_ignitr2"))

defineProperty("rel_revers0", globalPropertyi("sim/operation/failures/rel_revers0"))
defineProperty("rel_revers2", globalPropertyi("sim/operation/failures/rel_revers2"))

defineProperty("fuel_pump_2l_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_2l_fail"))
defineProperty("fuel_pump_2r_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_2r_fail"))
defineProperty("fuel_pump_3l_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_3l_fail"))
defineProperty("fuel_pump_3r_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_3r_fail"))
defineProperty("fuel_pump_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_1_fail"))
defineProperty("fuel_pump_4_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_4_fail"))

defineProperty("fuel_auto_fail", globalPropertyi("tu154b2/custom/failures/fuel_auto_fail"))
defineProperty("fuel_level_fail", globalPropertyi("tu154b2/custom/failures/fuel_level_fail"))
defineProperty("fuel_porc_fail", globalPropertyi("tu154b2/custom/failures/fuel_porc_fail"))

defineProperty("fuel_meter_2l_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_2l_fail"))
defineProperty("fuel_meter_2r_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_2r_fail"))
defineProperty("fuel_meter_3l_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_3l_fail"))
defineProperty("fuel_meter_3r_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_3r_fail"))
defineProperty("fuel_meter_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_1_fail"))
defineProperty("fuel_meter_4_fail", globalPropertyi("tu154b2/custom/failures/fuel_meter_4_fail"))
defineProperty("fuel_meter_summ", globalPropertyi("tu154b2/custom/failures/fuel_meter_summ"))

defineProperty("fuel_flowmeter_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_1_fail"))
defineProperty("fuel_flowmeter_2_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_2_fail"))
defineProperty("fuel_flowmeter_3_fail", globalPropertyi("tu154b2/custom/failures/fuel_flowmeter_3_fail"))

defineProperty("hydro_leak_1", globalPropertyi("tu154b2/custom/failures/hydro_leak_1"))
defineProperty("hydro_leak_2", globalPropertyi("tu154b2/custom/failures/hydro_leak_2"))
defineProperty("hydro_leak_3", globalPropertyi("tu154b2/custom/failures/hydro_leak_3"))
defineProperty("hydro_leak_4", globalPropertyi("tu154b2/custom/failures/hydro_leak_4"))

defineProperty("hydro_pump_fail_11", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_11"))
defineProperty("hydro_pump_fail_12", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_12"))
defineProperty("hydro_pump_fail_2", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_2"))
defineProperty("hydro_pump_fail_3", globalPropertyi("tu154b2/custom/failures/hydro_pump_fail_3"))

defineProperty("hydro_elec_fail_2", globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_2"))
defineProperty("hydro_elec_fail_3", globalPropertyi("tu154b2/custom/failures/hydro_elec_fail_3"))

defineProperty("gs_qty_1", globalPropertyf("tu154b2/custom/hydro/gs_qty_1")) -- остаток масла в системе
defineProperty("gs_qty_2", globalPropertyf("tu154b2/custom/hydro/gs_qty_2")) -- остаток масла в системе
defineProperty("gs_qty_3", globalPropertyf("tu154b2/custom/hydro/gs_qty_3")) -- остаток масла в системе


defineProperty("tth_left_fail", globalPropertyi("tu154b2/custom/failures/tth_left_fail")) -- отказ турбохолодильника
defineProperty("tth_right_fail", globalPropertyi("tu154b2/custom/failures/tth_right_fail")) -- отказ турбохолодильника

defineProperty("airbleed_1", globalPropertyi("tu154b2/custom/failures/airbleed_1")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_2", globalPropertyi("tu154b2/custom/failures/airbleed_2")) -- отказ отбора воздуха от двигателя
defineProperty("airbleed_3", globalPropertyi("tu154b2/custom/failures/airbleed_3")) -- отказ отбора воздуха от двигателя

defineProperty("psvp_fail_left", globalPropertyi("tu154b2/custom/failures/psvp_fail_left")) -- отказ ПСВП
defineProperty("psvp_fail_right", globalPropertyi("tu154b2/custom/failures/psvp_fail_right")) -- отказ ПСВП
defineProperty("sard_valve_fail", globalPropertyi("tu154b2/custom/failures/sard_valve_fail")) -- отказ выпускного клапана

defineProperty("lan_lamp_fail_FL", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_FL")) -- отказ передней левой фары
defineProperty("lan_lamp_fail_FR", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_FR")) -- отказ передней правой фары
defineProperty("lan_lamp_fail_WL", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_WL")) -- отказ крыльевой левой фары
defineProperty("lan_lamp_fail_WR", globalPropertyi("tu154b2/custom/failures/lan_lamp_fail_WR")) -- отказ крыльевой правой фары
defineProperty("rel_lites_nav", globalPropertyi("sim/operation/failures/rel_lites_nav")) -- отказ на огней
defineProperty("rel_lites_beac", globalPropertyi("sim/operation/failures/rel_lites_beac")) -- отказ на огней

defineProperty("main_alarm_fail", globalPropertyi("tu154b2/custom/failures/main_alarm_fail")) -- отказ сирены
defineProperty("speaker_alarm_fail", globalPropertyi("tu154b2/custom/failures/speaker_alarm_fail")) -- отказ сирены

defineProperty("absu_ra56_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_roll_fail")) -- отказ ra56
defineProperty("absu_ra56_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_pitch_fail")) -- отказ ra56
defineProperty("absu_ra56_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_yaw_fail")) -- отказ ra56

defineProperty("absu_at1_fail", globalPropertyi("tu154b2/custom/failures/absu_at1_fail")) -- отказ AT
defineProperty("absu_at2_fail", globalPropertyi("tu154b2/custom/failures/absu_at2_fail")) -- отказ AT

defineProperty("absu_damp_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_roll_fail")) -- отказ демперов крена
defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_pitch_fail")) -- отказ демперов тангажа
defineProperty("absu_damp_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_yaw_fail")) -- отказ демперов курса
defineProperty("absu_contr_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ


defineProperty("diss_fail", globalPropertyi("tu154b2/custom/failures/diss_fail")) --
defineProperty("nvu_fail", globalPropertyi("tu154b2/custom/failures/nvu_fail")) --
defineProperty("radar_fail", globalPropertyi("tu154b2/custom/failures/radar_fail")) --

defineProperty("ark1_fail", globalPropertyi("sim/operation/failures/rel_adf1"))
defineProperty("ark2_fail", globalPropertyi("sim/operation/failures/rel_adf2"))
defineProperty("nav1fail", globalPropertyi("tu154b2/custom/failures/nav1_fail")) -- fail
defineProperty("nav2fail", globalPropertyi("tu154b2/custom/failures/nav2_fail")) -- fail
defineProperty("dme1_fail", globalPropertyi("tu154b2/custom/failures/dme1_fail")) -- fail
defineProperty("dme2_fail", globalPropertyi("tu154b2/custom/failures/dme2_fail")) -- fail
defineProperty("mrp_fail", globalPropertyi("tu154b2/custom/failures/mrp_fail"))

defineProperty("rsbn_fail", globalPropertyi("tu154b2/custom/failures/rsbn_fail"))
defineProperty("taws_fail", globalPropertyi("tu154b2/custom/failures/taws_fail"))

defineProperty("tks_ga1_fail", globalPropertyi("sim/operation/failures/rel_ss_dgy"))
defineProperty("tks_ga2_fail", globalPropertyi("sim/operation/failures/rel_cop_dgy"))
defineProperty("tks_km1_fail", globalPropertyi("tu154b2/custom/failures/tks_km1_fail"))
defineProperty("tks_km2_fail", globalPropertyi("tu154b2/custom/failures/tks_km2_fail"))
defineProperty("tks_bgmk1_fail", globalPropertyi("tu154b2/custom/failures/tks_bgmk1_fail"))
defineProperty("tks_bgmk2_fail", globalPropertyi("tu154b2/custom/failures/tks_bgmk2_fail"))

defineProperty("alt_1_fail", globalPropertyi("sim/operation/failures/rel_ss_alt"))
defineProperty("alt_2_fail", globalPropertyi("sim/operation/failures/rel_cop_alt"))
defineProperty("eup_fail", globalPropertyi("sim/operation/failures/rel_ss_tsi"))

defineProperty("acs1_fail", globalPropertyi("tu154b2/custom/failures/acs1_fail"))
defineProperty("acs2_fail", globalPropertyi("tu154b2/custom/failures/acs2_fail"))
defineProperty("acs3_fail", globalPropertyi("tu154b2/custom/failures/acs3_fail"))
defineProperty("agr_fail", globalPropertyi("tu154b2/custom/failures/agr_fail"))
defineProperty("bkk_fail", globalPropertyi("tu154b2/custom/failures/bkk_fail"))

defineProperty("rel_pitot", globalPropertyi("tu154b2/custom/failures/pitot1")) -- Pitot 1 - Blockage
defineProperty("rel_pitot2", globalPropertyi("tu154b2/custom/failures/pitot2")) -- Pitot 2 - Blockage
defineProperty("static_fail_L", globalPropertyi("tu154b2/custom/failures/static1"))  -- static fail
defineProperty("static_fail_R", globalPropertyi("tu154b2/custom/failures/static2"))  -- static fail
defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail


defineProperty("mgv_fail", globalPropertyi("tu154b2/custom/failures/mgv_fail")) -- отказ МГВ
defineProperty("pkp1fail", globalPropertyi("sim/operation/failures/rel_ss_ahz"))
defineProperty("pkp2fail", globalPropertyi("sim/operation/failures/rel_cop_ahz"))
defineProperty("rv1_fail", globalPropertyi("tu154b2/custom/failures/rv1_fail"))  -- fail
defineProperty("rv2_fail", globalPropertyi("tu154b2/custom/failures/rv2_fail"))  -- fail
defineProperty("uap_fail", globalPropertyi("tu154b2/custom/failures/AOA")) -- fail
defineProperty("uap_warn_fail", globalPropertyi("sim/operation/failures/rel_stall_warn")) -- fail
defineProperty("uvid_fail", globalPropertyi("tu154b2/custom/failures/uvid15_fail")) -- fail
defineProperty("vvi1_fail", globalPropertyi("sim/operation/failures/rel_ss_vvi")) -- fail
defineProperty("vvi2_fail", globalPropertyi("sim/operation/failures/rel_cop_vvi")) -- fail
defineProperty("srd_press", globalPropertyi("tu154b2/custom/switchers/sard/sard_cabin_press_set_osn"))
defineProperty("srd_press_2", globalPropertyi("tu154b2/custom/switchers/sard/sard_cabin_press_set_dbl"))
defineProperty("srd_diff", globalPropertyf("tu154b2/custom/switchers/sard/sard_diff_set_osn"))
defineProperty("srd_diff_2", globalPropertyf("tu154b2/custom/switchers/sard/sard_diff_set_dbl"))
defineProperty("srd_spd", globalPropertyf("tu154b2/custom/switchers/sard/sard_spd_set_osn"))
defineProperty("srd_spd_2", globalPropertyf("tu154b2/custom/switchers/sard/sard_spd_set_dbl"))
defineProperty("rsbn_one", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_ch_one"))
defineProperty("rsbn_ten", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_ch_ten"))
defineProperty("nws", globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_enable"))
defineProperty("codevfr", globalPropertyi("tu154b2/custom/tcas2000/sqwk_vfr"))
defineProperty("oil_qty_1", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_1")) -- количество масла
defineProperty("oil_qty_2", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_2")) -- количество масла
defineProperty("oil_qty_3", globalPropertyf("tu154b2/custom/gauges/eng/oil_qty_3")) -- количество масла
defineProperty("pu_needle", globalPropertyf("tu154b2/custom/gauges/compas/big_true_course_needle"))
defineProperty("psvp", globalPropertyi("tu154b2/custom/switchers/sard/real_psvp"))
defineProperty("auasp", globalPropertyi("sim/custom/gauges/misc/aoa_ind_new"))
defineProperty("azimuth_init", globalPropertyi("tu154b2/custom/rsbn/azimuth_init"))
defineProperty("dist_init", globalPropertyi("tu154b2/custom/rsbn/dist_init"))
defineProperty("temp_1", globalPropertyi("tu154b2/custom/switchers/airbleed/cockpit_temp_set"))
defineProperty("temp_2", globalPropertyi("tu154b2/custom/switchers/airbleed/cabin1_temp_set"))
defineProperty("temp_3", globalPropertyi("tu154b2/custom/switchers/airbleed/cabin2_temp_set"))
defineProperty("temp_4", globalPropertyi("tu154b2/custom/switchers/airbleed/left_sys_temp_set"))
defineProperty("temp_5", globalPropertyi("tu154b2/custom/switchers/airbleed/right_sys_temp_set"))
defineProperty("map_angle", globalPropertyf("tu154b2/custom/gauges/console/map_angle"))
defineProperty("stab_set", globalPropertyi("tu154b2/custom/controll/stab_setting"))
defineProperty("nav_select", globalPropertyi("tu154b2/custom/switchers/nav_select"))
defineProperty("obs_L", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_L"))
defineProperty("obs_R", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_R"))
defineProperty("sd67_vol_1", globalPropertyf("tu154b2/custom/switchers/SD67_1_vol"))
defineProperty("sd67_vol_2", globalPropertyf("tu154b2/custom/switchers/SD67_2_vol"))

defineProperty("cargo1", globalProperty("sim/flightmodel/weight/m_stations[0]")) 
defineProperty("cargo2", globalProperty("sim/flightmodel/weight/m_stations[1]"))
defineProperty("kitchen_load", globalProperty("sim/flightmodel/weight/m_stations[2]"))
defineProperty("pax1", globalProperty("sim/flightmodel/weight/m_stations[4]")) 
defineProperty("pax2", globalProperty("sim/flightmodel/weight/m_stations[5]")) 
defineProperty("pax3", globalProperty("sim/flightmodel/weight/m_stations[6]")) 
defineProperty("pax4", globalProperty("sim/flightmodel/weight/m_stations[7]")) 
defineProperty("pax5", globalProperty("sim/flightmodel/weight/m_stations[8]")) 
defineProperty("eng_rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))   

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
defineProperty("livpath", globalPropertys("sim/aircraft/view/acf_livery_path"))
--defineProperty("dbs", globalPropertyf("tu154b2/custom/controlls/debugstr"))



local path=sasl.getAircraftPath ()
-- local liv=get(livpath)
-- local ind=string.find(liv,"liveries")
-- liv=string.sub(liv,ind+8)
local stateFileName = ''
--set(dbs,stateFileName)

local var_table = {}
	var_table["rusLang"] = get(hide_eng_objects)
	var_table["volume"] = get(sounds_voulme)
	var_table["starterTRQ"] = get(starter_torq) * 100
	var_table["hardwareCockpit"] = get(hardware_cockpit)
	var_table["tankone"] = get(fuel_q_1)
	var_table["tankfour"] = get(fuel_q_4)
	var_table["tanktwoL"] = get(fuel_q_2L)
	var_table["tanktwoR"] = get(fuel_q_2R)
	var_table["tankthreeL"] = get(fuel_q_3L)
	var_table["tankthreeR"] = get(fuel_q_3R)
	var_table["crewvo"] = get(enable_crew_vo)
	
	var_table["enableFailures"] = get(failures_enabled)
	var_table["useNWaxis"] = get(have_pedals)
	var_table["gnsInstaled"] = get(show_gns)
	var_table["RXPInstaled"] = get(show_RXP)
	
	var_table["pnpCrs1"] = get(pnp_1_crs)
	var_table["pnpCrs2"] = get(pnp_2_crs)
	 
	var_table["pnp1OBS"] = get(pnp_1_obs)
	var_table["pnp2OBS"] = get(pnp_2_obs)
	
	var_table["ark1ch"] = get(ark_1_channel)
	var_table["ark1hunL"] = get(ark_1_hundr_left)
	var_table["ark1tenL"] = get(ark_1_tens_left)
	var_table["ark1oneL"] = get(ark_1_ones_left)
	var_table["ark1hunR"] = get(ark_1_hundr_right)
	var_table["ark1tenR"] = get(ark_1_tens_right)
	var_table["ark1oneR"] = get(ark_1_ones_right)
	
	var_table["ark2ch"] = get(ark_2_channel)
	var_table["ark2hunL"] = get(ark_2_hundr_left)
	var_table["ark2tenL"] = get(ark_2_tens_left)
	var_table["ark2oneL"] = get(ark_2_ones_left)
	var_table["ark2hunR"] = get(ark_2_hundr_right)
	var_table["ark2tenR"] = get(ark_2_tens_right)
	var_table["ark2oneR"] = get(ark_2_ones_right)
	
	var_table["vdPressL"] = get(vd15_pressure_left)
	var_table["vdPressR"] = get(vd15_pressure_right)
	var_table["vdPressE"] = get(vd15_pressure_eng)
	var_table["uvidPress"] = get(uvid_pressure_knob)


--b2

	var_table["ushdbCrs"] = get(ushdb_crs_knob)
    var_table["msrpYearone"] = get(msrp_year_one)
	var_table["msrpYearten"] = get(msrp_year_ten)
    var_table["msrpRoutehun"] = get(msrp_route_hun)
    var_table["msrpRouteten"] = get(msrp_route_ten)
    var_table["msrpRouteone"] = get(msrp_route_one)
    var_table["vhfn2mhz"] = get(vhfnew_2_mhz)
    var_table["vhfn3mhz"] = get(vhfnew_3_mhz)
    var_table["vhfn2khz"] = get(vhfnew_2_khz)
    var_table["vhfn3khz"] = get(vhfnew_3_khz)
    var_table["co63sqwk1"] = get(co63_sqwk_1)
    var_table["co63sqwk2"] = get(co63_sqwk_2)
    var_table["co63sqwk3"] = get(co63_sqwk_3)
    var_table["co63sqwk4"] = get(co63_sqwk_4)
    var_table["co70sqwk1"] = get(co70_sqwk_1)
    var_table["co70sqwk2"] = get(co70_sqwk_2)
    var_table["co70sqwk3"] = get(co70_sqwk_3)
    var_table["co70sqwk4"] = get(co70_sqwk_4)
    var_table["uvo15Press"] = get(uvo15_press_knob)
    var_table["vem72Press"] = get(vem72_press_knob)
    



    var_table["icaoDep1"] = get(icao_dep_1)
    var_table["icaoDep2"] = get(icao_dep_2)
    var_table["icaoDep3"] = get(icao_dep_3)
    var_table["icaoDep4"] = get(icao_dep_4)
    var_table["icaoArr1"] = get(icao_arr_1)
    var_table["icaoArr2"] = get(icao_arr_2)
    var_table["icaoArr3"] = get(icao_arr_3)
    var_table["icaoArr4"] = get(icao_arr_4)
    var_table["icaoWx1"] = get(icao_wx_1)
    var_table["icaoWx2"] = get(icao_wx_2)
    var_table["icaoWx3"] = get(icao_wx_3)
    var_table["icaoWx4"] = get(icao_wx_4)




    var_table["slid0"] = get(slider0)
    var_table["slid1"] = get(slider1)
    var_table["slid2"] = get(slider2)
    var_table["slid3"] = get(slider3)
    var_table["slid4"] = get(slider4)
    var_table["slid5"] = get(slider5)
    var_table["slid6"] = get(slider6)
    var_table["slid7"] = get(slider7)
    var_table["slid8"] = get(slider8)
    var_table["slid9"] = get(slider9)
    var_table["slid10"] = get(slider10)
    var_table["slid11"] = get(slider11)
    var_table["slid12"] = get(slider12)
    var_table["slid13"] = get(slider13)
    var_table["slid14"] = get(slider14)
    var_table["slid15"] = get(slider15)
    var_table["slid16"] = get(slider16)
    var_table["slid17"] = get(slider17)
    var_table["slid18"] = get(slider18)

    var_table["slid19"] = get(slider19)*10
    var_table["slid20"] = get(slider20)*10
    var_table["slid21"] = get(slider21)*10
    var_table["slid22"] = get(slider22)*10
    var_table["slid23"] = get(slider23)*10
    var_table["slid24"] = get(slider24)*10
    var_table["slid25"] = get(slider25)*10
    var_table["slid26"] = get(slider26)*10
    var_table["slid27"] = get(slider27)*10
    var_table["slid28"] = get(slider28)*10
    var_table["slid29"] = get(slider29)*10
    var_table["slid30"] = get(slider30)*10
    var_table["slid31"] = get(slider31)
    var_table["slid32"] = get(slider32)
    var_table["slid33"] = get(slider33)
    var_table["slid34"] = get(slider34)
    var_table["slid35"] = get(slider35)
    var_table["slid36"] = get(slider36)
    var_table["slid37"] = get(slider37)
    var_table["slid38"] = get(slider38)
    var_table["slid39"] = get(slider39)
    var_table["slid40"] = get(slider40)*10
    var_table["slid41"] = get(slider41)*10
    var_table["slid42"] = get(slider42)*10
    var_table["slid43"] = get(slider43)*10
    var_table["slid44"] = get(slider44)*10
    var_table["slid45"] = get(slider45)*10
    var_table["slid46"] = get(slider46)*10
    var_table["slid47"] = get(slider47)*10
    var_table["slid48"] = get(slider48)
    var_table["slid49"] = get(slider49)
    var_table["slid50"] = get(slider50)
    var_table["slid51"] = get(slider51)
    var_table["slid52"] = get(slider52)*10
    var_table["slid53"] = get(slider53)*10
    var_table["slid54"] = get(slider54)*10
    var_table["slid55"] = get(slider55)*10
    ---var_table["slid56"] = get(slider56)
    ---var_table["slid57"] = get(slider57)
    ---var_table["slid58"] = get(slider58)
    ---var_table["slid59"] = get(slider59)
    ---var_table["slid60"] = get(slider60)
    ---var_table["slid61"] = get(slider61)

    
    var_table["swit1"] = get(switch1)
    var_table["swit2"] = get(switch2)
    var_table["swit3"] = get(switch3)
    var_table["swit4"] = get(switch4)
    var_table["swit5"] = get(switch5)
    var_table["swit6"] = get(switch6)
    var_table["swit7"] = get(switch7)
    var_table["swit8"] = get(switch8)
    var_table["swit9"] = get(switch9)
    var_table["swit10"] = get(switch10)
    var_table["walkEnab"] = get(enable_walk)

    








    var_table["lpInt"] = get(lp_int) * 1000
    var_table["lpFl"] = get(lpf) * 1000
    var_table["ardFl"] = get(ardf) * 1000
    var_table["engFl"] = get(engf) * 1000
    var_table["kmFl"] = get(kmf) * 1000
    var_table["mrpInt"] = get(mrp_int) * 1000
    var_table["ovhdInt"] = get(ovhd_int) * 1000
    var_table["mlpInt"] = get(mlp_int) * 1000
    var_table["ovhdF"] = get(ovhd_f) * 1000
    var_table["ovhdB"] = get(ovhd_b) * 1000
    var_table["fpFl"] = get(fpf) * 1000
    var_table["mpFl"] = get(mpf) * 1000
    var_table["rpFl"] = get(rpf) * 1000
    var_table["rpInt"] = get(rp_int) * 1000
    var_table["tableUpR"] = get(table_up_R)
    var_table["tableUpL"] = get(table_up_L)
    var_table["efbEnabl"] = get(efb_enabled)
    var_table["engLang"] = get(eng_light_angle_result)
    var_table["engLang2"] = get(eng_light_angle2) * 1000
    var_table["yokeHeight"] = get(yoke_height) * 1000


    var_table["cas67Code"] = get(cas67_code)
	var_table["fltnum1"] = get(flt_1)
	var_table["fltnum2"] = get(flt_2)
	var_table["fltnum3"] = get(flt_3)
	var_table["fltnum4"] = get(flt_4)
	var_table["fltnum5"] = get(flt_5)
	var_table["fltnum6"] = get(flt_6)
	var_table["fltnum7"] = get(flt_7)
	var_table["fltnum8"] = get(flt_8)
	
	
    var_table["so72Code"] = get(so72_code)

	
	var_table["tksLatSet"] = get(tks_lat_set) * 1000

	
	
	
	var_table["ppd3HeatFail"] = get(ppd_3_heat_fail)
	
	var_table["engHeat1"] = get(rel_ice_inlet_heat1)
	var_table["engHeat2"] = get(rel_ice_inlet_heat2)
	var_table["engHeat3"] = get(rel_ice_inlet_heat3)
	
	var_table["pitotHeatFail1"] = get(rel_ice_pitot_heat1)
	var_table["pitotHeatFail2"] = get(rel_ice_pitot_heat2)
	
	var_table["wingHeatFail"] = get(rel_ice_surf_heat)
	var_table["slatHeatFail"] = get(rel_ice_surf_heat2)
	
	var_table["iceDetFail"] = get(rio_fail)
	
	var_table["windowHeatFail1"] = get(window_heat_fail_1)
	var_table["windowHeatFail2"] = get(window_heat_fail_2)
	var_table["windowHeatFail3"] = get(window_heat_fail_3)
	
	var_table["apuStartFail"] = get(apu_start_fail)
	var_table["apuRuntime"] = get(apu_runtime)
	var_table["apuFail"] = get(apu_fail)
	var_table["apuAirFail"] = get(apu_press_fail)
	
	var_table["brakeRunLeft"] = get(brake_runtime_left)
	var_table["brakeRunRight"] = get(brake_runtime_right)
	
	var_table["brakeFailLeft"] = get(rel_lbrakes)
	var_table["brakeFailRight"] = get(rel_rbrakes)
	
	var_table["ailFailLeft"] = get(ail_fail_left)
	var_table["ailFailRight"] = get(ail_fail_right)
	
	var_table["spoilInnLeft"] = get(fail_spoil_inn_left)
	var_table["spoilInnRight"] = get(fail_spoil_inn_right)
	var_table["spoilMidLeft"] = get(fail_spoil_mid_left)
	var_table["spoilMidRight"] = get(fail_spoil_mid_right)
	var_table["spoilOutLeft"] = get(fail_spoil_out_left)
	var_table["spoilOutRight"] = get(fail_spoil_out_right)
	
	var_table["rudderFail"] = get(rudder_fail)
	var_table["elevFailLeft"] = get(elev_fail_left)
	var_table["elevFailRight"] = get(elev_fail_right)
		
	var_table["rudtrimFail"] = get(rel_trim_rud)
	var_table["ailTrimFail"] = get(rel_trim_ail)
	var_table["elevTrimFail"] = get(rel_trim_elv)
	var_table["elevEmergTraimFail"] = get(trim_emerg_elv_fail)
	
	var_table["flapFailLeft"] = get(flap_fail_left)
	var_table["flapFailRight"] = get(flap_fail_right)
	
	var_table["stabEngFail"] = get(stab_eng_fail)
	var_table["stabAutoFail"] = get(stab_automatic_fail)
	var_table["slatFail"] = get(slats_fail)
			
	var_table["gearRetrFail1"] = get(retract1_fail)
	var_table["gearRetrFail2"] = get(retract2_fail)
	var_table["gearRetrFail3"] = get(retract3_fail)
	var_table["gearActFail"] = get(actuator_fail)
	
	var_table["gen1Fail"] = get(rel_genera0)
	var_table["gen2Fail"] = get(rel_genera1)
	var_table["gen3Fail"] = get(rel_genera2)
	var_table["genApuFail"] = get(apu_gen_fail)
	
	var_table["vu1Fail"] = get(vu1_fail)
	var_table["vu2Fail"] = get(vu2_fail)
	var_table["vu3Fail"] = get(vu3_fail)
	
	var_table["tr1Fail"] = get(tr1_fail)
	var_table["tr2Fail"] = get(tr2_fail)
	
	var_table["pts1Fail"] = get(pts250_1_fail)
	var_table["pts2Fail"] = get(pts250_2_fail)
	var_table["inv115Fail"] = get(inv115_fail)
	
	var_table["bat1Fail"] = get(bat_1_fail)
	var_table["bat2Fail"] = get(bat_2_fail)
	var_table["bat3Fail"] = get(bat_3_fail)
	var_table["bat4Fail"] = get(bat_4_fail)
	
	var_table["bat1KZ"] = get(bat_1_kz)
	var_table["bat2KZ"] = get(bat_2_kz)
	var_table["bat3KZ"] = get(bat_3_kz)
	var_table["bat4KZ"] = get(bat_4_kz)
	
	var_table["engFail1"] = get(rel_engfai0)
	var_table["engFail2"] = get(rel_engfai1)
	var_table["engFail3"] = get(rel_engfai2)
	
	var_table["engRunTime1"] = get(engine_runtime_1)
	var_table["engRunTime2"] = get(engine_runtime_2)
	var_table["engRunTime3"] = get(engine_runtime_3)
	
	var_table["engFuelPumpFail1"] = get(eng_fuel_pmp_fail_1)
	var_table["engFuelPumpFail2"] = get(eng_fuel_pmp_fail_2)
	var_table["engFuelPumpFail3"] = get(eng_fuel_pmp_fail_3)
	
	var_table["engOilQty1"] = get(engn_oil_qty_1)
	var_table["engOilQty2"] = get(engn_oil_qty_2)
	var_table["engOilQty3"] = get(engn_oil_qty_3)
	
	var_table["engOilLeak1"] = get(engn_oil_leak_1)
	var_table["engOilLeak2"] = get(engn_oil_leak_2)
	var_table["engOilLeak3"] = get(engn_oil_leak_3)
	
	var_table["engOilPumpFail1"] = get(rel_oilpmp0)
	var_table["engOilPumpFail2"] = get(rel_oilpmp1)
	var_table["engOilPumpFail3"] = get(rel_oilpmp2)
	
	var_table["engFuelFilterFail1"] = get(rel_eng_lo0)
	var_table["engFuelFilterFail2"] = get(rel_eng_lo1)
	var_table["engFuelFilterFail3"] = get(rel_eng_lo2)
	
	var_table["engStarterFail1"] = get(rel_startr0)
	var_table["engStarterFail2"] = get(rel_startr1)
	var_table["engStarterFail3"] = get(rel_startr2)
	
	var_table["engIgnitFail1"] = get(rel_ignitr0)
	var_table["engIgnitFail2"] = get(rel_ignitr1)
	var_table["engIgnitFail3"] = get(rel_ignitr2)
	
	var_table["engReversFail1"] = get(rel_revers0)
	var_table["engReversFail3"] = get(rel_revers2)

	var_table["fuelPumpFail2L"] = get(fuel_pump_2l_fail)
	var_table["fuelPumpFail2R"] = get(fuel_pump_2r_fail)
	var_table["fuelPumpFail3L"] = get(fuel_pump_3l_fail)
	var_table["fuelPumpFail3R"] = get(fuel_pump_3r_fail)
	var_table["fuelPumpFail1"] = get(fuel_pump_1_fail)
	var_table["fuelPumpFail4"] = get(fuel_pump_4_fail)
	
	var_table["fuelAutoFail"] = get(fuel_auto_fail)
	var_table["fuelLvlFail"] = get(fuel_level_fail)
	var_table["fuelPorcFail"] = get(fuel_porc_fail)
	
	var_table["fuelMeterFail2L"] = get(fuel_meter_2l_fail)
	var_table["fuelMeterFail2R"] = get(fuel_meter_2r_fail)
	var_table["fuelMeterFail3L"] = get(fuel_meter_3l_fail)
	var_table["fuelMeterFail3R"] = get(fuel_meter_3r_fail)
	var_table["fuelMeterFail1"] = get(fuel_meter_1_fail)
	var_table["fuelMeterFail4"] = get(fuel_meter_4_fail)
	var_table["fuelMeterFailSumm"] = get(fuel_meter_summ)
	
	var_table["FF1fail"] = get(fuel_flowmeter_1_fail)
	var_table["FF2fail"] = get(fuel_flowmeter_2_fail)
	var_table["FF3fail"] = get(fuel_flowmeter_3_fail)
	
	var_table["hydroLeak1"] = get(hydro_leak_1)
	var_table["hydroLeak2"] = get(hydro_leak_2)
	var_table["hydroLeak3"] = get(hydro_leak_3)
	var_table["hydroLeak4"] = get(hydro_leak_4)
	
	var_table["hydroPmpFail11"] = get(hydro_pump_fail_11)
	var_table["hydroPmpFail12"] = get(hydro_pump_fail_12)
	var_table["hydroPmpFail2"] = get(hydro_pump_fail_2)
	var_table["hydroPmpFail3"] = get(hydro_pump_fail_3)
	
	var_table["HydroElecFail2"] = get(hydro_elec_fail_2)
	var_table["HydroElecFail3"] = get(hydro_elec_fail_3)
	
	var_table["hydroQty1"] = get(gs_qty_1)
	var_table["hydroQty2"] = get(gs_qty_2)
	var_table["hydroQty3"] = get(gs_qty_3)

	var_table["tthLeftFail"] = get(tth_left_fail)
	var_table["tthRightFail"] = get(tth_right_fail)
	
	var_table["airbleedFail1"] = get(airbleed_1)
	var_table["airbleedFail2"] = get(airbleed_2)
	var_table["airbleedFail3"] = get(airbleed_3)
	
	var_table["psvpFailL"] = get(psvp_fail_left)
	var_table["psvpFailR"] = get(psvp_fail_right)
	var_table["sardValveFail"] = get(sard_valve_fail)
	
	var_table["lanLampFLFail"] = get(lan_lamp_fail_FL)
	var_table["lanLampFRFail"] = get(lan_lamp_fail_FR)
	var_table["lanLampWLFail"] = get(lan_lamp_fail_WL)
	var_table["lanLampWRFail"] = get(lan_lamp_fail_WR)
	var_table["navLampFail"] = get(rel_lites_nav)
	var_table["beacLampFail"] = get(rel_lites_beac)
		
	var_table["mainAlarmFail"] = get(main_alarm_fail)
	var_table["spekAlarmFail"] = get(speaker_alarm_fail)
		
	var_table["absuRArollFail"] = get(absu_ra56_roll_fail)
	var_table["absuRApitchFail"] = get(absu_ra56_pitch_fail)
	var_table["absuRAyawFail"] = get(absu_ra56_yaw_fail)
	
	var_table["absuAT1Fail"] = get(absu_at1_fail)
	var_table["absuAT2Fail"] = get(absu_at2_fail)
	
	
	var_table["absuDampRollFail"] = get(absu_damp_roll_fail)
	var_table["absuDampPitchFail"] = get(absu_damp_pitch_fail)
	var_table["absuDampYawFail"] = get(absu_damp_yaw_fail)
	var_table["absuContrRollFail"] = get(absu_contr_roll_fail)
	var_table["absuContrPitchFail"] = get(absu_contr_pitch_fail)
	var_table["absuCalcTogaFail"] = get(absu_calc_toga_fail)
	var_table["absuCalcRollFail"] = get(absu_calc_roll_fail)
	var_table["absuCalcPitchFail"] = get(absu_calc_pitch_fail)
	
	
	var_table["dissFail"] = get(diss_fail)
	var_table["nvuFail"] = get(nvu_fail)
	var_table["radarFail"] = get(radar_fail)

	var_table["ark1fail"] = get(ark1_fail)
	var_table["ark2fail"] = get(ark2_fail)
	var_table["nav1fail"] = get(nav1fail)
	var_table["nav2fail"] = get(nav2fail)
	var_table["dme1Fail"] = get(dme1_fail)
	var_table["dme2Fail"] = get(dme2_fail)
	var_table["mrpFail"] = get(mrp_fail)

	var_table["tksGaFail1"] = get(tks_ga1_fail)
	var_table["tksGaFail2"] = get(tks_ga2_fail)
	var_table["tksKMFail1"] = get(tks_km1_fail)
	var_table["tksKMFail2"] = get(tks_km2_fail)
	var_table["tksBgmkFail1"] = get(tks_bgmk1_fail)
	var_table["tksBgmkFail2"] = get(tks_bgmk2_fail)
	
	var_table["rsbnFail"] = get(rsbn_fail)
	var_table["tawsFail"] = get(taws_fail)
		
	var_table["alt1fail"] = get(alt_1_fail)
	var_table["alt2fail"] = get(alt_2_fail)
	var_table["eupFail"] = get(eup_fail)
	
	var_table["acs1fail"] = get(acs1_fail)
	var_table["acs2fail"] = get(acs2_fail)
	var_table["acs3fail"] = get(acs3_fail)
	var_table["agrFail"] = get(agr_fail)
	var_table["bkkFail"] = get(bkk_fail)
	
	
	var_table["pitot1Fail"] = get(rel_pitot)
	var_table["pitot2Fail"] = get(rel_pitot2)
	var_table["static1Fail"] = get(static_fail_L)
	var_table["static2Fail"] = get(static_fail_R)
	var_table["svsFail"] = get(svs_fail)
	
	
	
	var_table["mgvFail"] = get(mgv_fail)
	var_table["pkp1fail"] = get(pkp1fail)
	var_table["pkp2fail"] = get(pkp2fail)
	var_table["rv1fail"] = get(rv1_fail)
	var_table["rv2fail"] = get(rv2_fail)
	var_table["uapFail"] = get(uap_fail)
	var_table["uapWarnFail"] = get(uap_warn_fail)
	var_table["uvid15fail"] = get(uvid_fail)
	var_table["vvi1fail"] = get(vvi1_fail)
	var_table["vvi2fail"] = get(vvi2_fail)
	var_table["srdpress"] = get(srd_press)
	var_table["srd2press"] = get(srd_press_2)
	var_table["srddiff"] = get(srd_diff)
	var_table["srd2diff"] = get(srd_diff_2)
	var_table["srdspd"] = get(srd_spd)
	var_table["srd2spd"] = get(srd_spd_2)
	var_table["rsbnone"] = get(rsbn_one)
	var_table["rsbnten"] = get(rsbn_ten)
	var_table["nwsset"] = get(nws)
	var_table["vfrsqwk"] = get(codevfr)	
	var_table["puneedle"] = get(pu_needle)
	var_table["psvpmode"] = get(psvp)
	var_table["uaneedle"] = get(auasp)
	var_table["rsbnaz"] = get(azimuth_init)
	var_table["rsbnd"] = get(dist_init)
	var_table["tempsel1"] = get(temp_1)
	var_table["tempsel2"] = get(temp_2)
	var_table["tempsel3"] = get(temp_3)
	var_table["tempsel4"] = get(temp_4)
	var_table["tempsel5"] = get(temp_5)
	var_table["uk"] = get(map_angle)*10
	var_table["stab"] = get(stab_set)
	var_table["navsel"] = get(nav_select)
	var_table["obsl"] = get(obs_L)
	var_table["obsr"] = get(obs_R)
	var_table["sdvol1"] = get(sd67_vol_1)*10
	var_table["sdvol2"] = get(sd67_vol_2)*10

local function write_file()

	local savefile = io.open(stateFileName, "w") -- open file for rewriting
	
	if savefile then
		savefile:write("rusLang="..get(hide_eng_objects).."\n")
		savefile:write("volume="..get(sounds_voulme).."\n")
		savefile:write("starterTRQ="..math.floor(get(starter_torq)*100) .."\n")
		savefile:write("crewvo="..get(enable_crew_vo).."\n")
		savefile:write("hardwareCockpit="..get(hardware_cockpit).."\n")
		savefile:write("tankone="..get(fuel_q_1).."\n")
		savefile:write("tankfour="..get(fuel_q_4).."\n")
		savefile:write("tanktwoL="..get(fuel_q_2L).."\n")
		savefile:write("tanktwoR="..get(fuel_q_2R).."\n")
		savefile:write("tankthreeL="..get(fuel_q_3L).."\n")
		savefile:write("tankthreeR="..get(fuel_q_3R).."\n")
		
		savefile:write("enableFailures="..get(failures_enabled).."\n")
		savefile:write("useNWaxis="..get(have_pedals).."\n")
		savefile:write("gnsInstaled="..get(show_gns).."\n")
		savefile:write("RXPInstaled="..get(show_RXP).."\n")
		
		savefile:write("pnpCrs1="..get(pnp_1_crs) .."\n")
		savefile:write("pnpCrs2="..get(pnp_2_crs) .."\n")
		
		savefile:write("pnp1OBS="..get(pnp_1_obs) .."\n")
		savefile:write("pnp2OBS="..get(pnp_2_obs) .."\n")
		
		savefile:write("ark1ch="..get(ark_1_channel).."\n")
		savefile:write("ark1hunL="..get(ark_1_hundr_left).."\n")
		savefile:write("ark1tenL="..get(ark_1_tens_left).."\n")
		savefile:write("ark1oneL="..get(ark_1_ones_left).."\n")
		savefile:write("ark1hunR="..get(ark_1_hundr_right).."\n")
		savefile:write("ark1tenR="..get(ark_1_tens_right).."\n")
		savefile:write("ark1oneR="..get(ark_1_ones_right).."\n")
		
		savefile:write("ark2ch="..get(ark_2_channel).."\n")
		savefile:write("ark2hunL="..get(ark_2_hundr_left).."\n")
		savefile:write("ark2tenL="..get(ark_2_tens_left).."\n")
		savefile:write("ark2oneL="..get(ark_2_ones_left).."\n")
		savefile:write("ark2hunR="..get(ark_2_hundr_right).."\n")
		savefile:write("ark2tenR="..get(ark_2_tens_right).."\n")
		savefile:write("ark2oneR="..get(ark_2_ones_right).."\n")
		
		savefile:write("vdPressL="..get(vd15_pressure_left).."\n")
		savefile:write("vdPressR="..get(vd15_pressure_right).."\n")
		savefile:write("vdPressE="..get(vd15_pressure_eng).."\n")
		savefile:write("uvidPress="..get(uvid_pressure_knob).."\n")

        
    --b2
		savefile:write("ushdbCrs="..get(ushdb_crs_knob).."\n")
        
        
        
        savefile:write("msrpYearone="..get(msrp_year_one).."\n")
		savefile:write("msrpYearten="..get(msrp_year_ten).."\n")
        savefile:write("msrpRoutehun="..get(msrp_route_hun).."\n")
        savefile:write("msrpRouteten="..get(msrp_route_ten).."\n")
        savefile:write("msrpRouteone="..get(msrp_route_one).."\n")
        savefile:write("vhfn2mhz="..get(vhfnew_2_mhz).."\n")
        savefile:write("vhfn3mhz="..get(vhfnew_3_mhz).."\n")
        savefile:write("vhfn2khz="..get(vhfnew_2_khz).."\n")
        savefile:write("vhfn3khz="..get(vhfnew_3_khz).."\n")
        savefile:write("co63sqwk1="..get(co63_sqwk_1).."\n")
        savefile:write("co63sqwk2="..get(co63_sqwk_2).."\n")
        savefile:write("co63sqwk3="..get(co63_sqwk_3).."\n")
        savefile:write("co63sqwk4="..get(co63_sqwk_4).."\n")
        savefile:write("co70sqwk1="..get(co70_sqwk_1).."\n")
        savefile:write("co70sqwk2="..get(co70_sqwk_2).."\n")
        savefile:write("co70sqwk3="..get(co70_sqwk_3).."\n")
        savefile:write("co70sqwk4="..get(co70_sqwk_4).."\n")
        savefile:write("uvo15Press="..get(uvo15_press_knob).."\n")
        savefile:write("vem72Press="..get(vem72_press_knob).."\n")
            
            
        savefile:write("icaoDep1="..get(icao_dep_1).."\n")
        savefile:write("icaoDep2="..get(icao_dep_2).."\n")
        savefile:write("icaoDep3="..get(icao_dep_3).."\n")
        savefile:write("icaoDep4="..get(icao_dep_4).."\n")
        savefile:write("icaoArr1="..get(icao_arr_1).."\n")
        savefile:write("icaoArr2="..get(icao_arr_2).."\n")
        savefile:write("icaoArr3="..get(icao_arr_3).."\n")
        savefile:write("icaoArr4="..get(icao_arr_4).."\n")
        savefile:write("icaoWx1="..get(icao_wx_1).."\n")
        savefile:write("icaoWx2="..get(icao_wx_2).."\n")
        savefile:write("icaoWx3="..get(icao_wx_3).."\n")
        savefile:write("icaoWx4="..get(icao_wx_4).."\n")
        
        

        savefile:write("slid0="..get(slider0).."\n")
        savefile:write("slid1="..get(slider1).."\n")
        savefile:write("slid2="..get(slider2).."\n")
        savefile:write("slid3="..get(slider3).."\n")
        savefile:write("slid4="..get(slider4).."\n")
        savefile:write("slid5="..get(slider5).."\n")
        savefile:write("slid6="..get(slider6).."\n")
        savefile:write("slid7="..get(slider7).."\n")
        savefile:write("slid8="..get(slider8).."\n")
        savefile:write("slid9="..get(slider9).."\n")
        savefile:write("slid10="..get(slider10).."\n")
        savefile:write("slid11="..get(slider11).."\n")
        savefile:write("slid12="..get(slider12).."\n")
        savefile:write("slid13="..get(slider13).."\n")
        savefile:write("slid14="..get(slider14).."\n")
        savefile:write("slid15="..get(slider15).."\n")
        savefile:write("slid16="..get(slider16).."\n")
        savefile:write("slid17="..get(slider17).."\n")
        savefile:write("slid18="..get(slider18).."\n")
        
        
        savefile:write("slid19="..get(slider19)*10 .."\n")
        savefile:write("slid20="..get(slider20)*10 .."\n")
        savefile:write("slid21="..get(slider21)*10 .."\n")
        savefile:write("slid22="..get(slider22)*10 .."\n")
        savefile:write("slid23="..get(slider23)*10 .."\n")
        savefile:write("slid24="..get(slider24)*10 .."\n")
        savefile:write("slid25="..get(slider25)*10 .."\n")
        savefile:write("slid26="..get(slider26)*10 .."\n")
        savefile:write("slid27="..get(slider27)*10 .."\n")
        savefile:write("slid28="..get(slider28)*10 .."\n")
        savefile:write("slid29="..get(slider29)*10 .."\n")
        savefile:write("slid30="..get(slider30)*10 .."\n")
        savefile:write("slid31="..get(slider31).."\n")
        savefile:write("slid32="..get(slider32).."\n")
        savefile:write("slid33="..get(slider33).."\n")
        savefile:write("slid34="..get(slider34).."\n")
        savefile:write("slid35="..get(slider35).."\n")
        savefile:write("slid36="..get(slider36).."\n")
        savefile:write("slid37="..get(slider37).."\n")
        savefile:write("slid38="..get(slider38).."\n")
        savefile:write("slid39="..get(slider39).."\n")
        savefile:write("slid40="..get(slider40)*10 .."\n")
        savefile:write("slid41="..get(slider41)*10 .."\n")
        savefile:write("slid42="..get(slider42)*10 .."\n")
        savefile:write("slid43="..get(slider43)*10 .."\n")
        savefile:write("slid44="..get(slider44)*10 .."\n")
        savefile:write("slid45="..get(slider45)*10 .."\n")
        savefile:write("slid46="..get(slider46)*10 .."\n")
        savefile:write("slid47="..get(slider47)*10 .."\n")
        savefile:write("slid48="..get(slider48) .."\n")
        savefile:write("slid49="..get(slider49) .."\n")
        savefile:write("slid50="..get(slider50) .."\n")
        savefile:write("slid51="..get(slider51) .."\n")
        savefile:write("slid52="..get(slider52)*10 .."\n")
        savefile:write("slid53="..get(slider53)*10 .."\n")
        savefile:write("slid54="..get(slider54)*10 .."\n")
        savefile:write("slid55="..get(slider55)*10 .."\n")
        ---savefile:write("slid56="..get(slider56) .."\n")
        ---savefile:write("slid57="..get(slider57) .."\n")
        ---savefile:write("slid58="..get(slider58) .."\n")
        ---savefile:write("slid59="..get(slider59) .."\n")
        ---savefile:write("slid60="..get(slider60) .."\n")
        ---savefile:write("slid61="..get(slider61) .."\n")
        
        
        savefile:write("swit1="..get(switch1) .."\n")
        savefile:write("swit2="..get(switch2) .."\n")
        savefile:write("swit3="..get(switch3) .."\n")
        savefile:write("swit4="..get(switch4) .."\n")
        savefile:write("swit5="..get(switch5) .."\n")
        savefile:write("swit6="..get(switch6) .."\n")
        savefile:write("swit7="..get(switch7) .."\n")
        savefile:write("swit8="..get(switch8) .."\n")
        savefile:write("swit9="..get(switch9) .."\n")
        savefile:write("swit10="..get(switch10) .."\n")
        savefile:write("walkEnab="..get(enable_walk).."\n")
        
        savefile:write("lpInt="..get(lp_int)*1000 .."\n")
        savefile:write("lpFl="..get(lpf)*1000 .."\n")
        savefile:write("ardFl="..get(ardf)*1000 .."\n")
        savefile:write("engFl="..get(engf)*1000 .."\n")
        savefile:write("kmFl="..get(kmf)*1000 .."\n")
        savefile:write("mrpInt="..get(mrp_int)*1000 .."\n")
        savefile:write("ovhdInt="..get(ovhd_int)*1000 .."\n")
        savefile:write("mlpInt="..get(mlp_int)*1000 .."\n")
        savefile:write("ovhdF="..get(ovhd_f)*1000 .."\n")
        savefile:write("ovhdB="..get(ovhd_b)*1000 .."\n")
        savefile:write("fpFl="..get(fpf)*1000 .."\n")
        savefile:write("mpFl="..get(mpf)*1000 .."\n")
        savefile:write("rpFl="..get(rpf)*1000 .."\n")
        savefile:write("rpInt="..get(rp_int)*1000 .."\n")
        savefile:write("tableUpR="..get(table_up_R).."\n")
        savefile:write("tableUpL="..get(table_up_L).."\n")
        savefile:write("efbEnabl="..get(efb_enabled).."\n")
        savefile:write("engLang="..get(eng_light_angle_result).."\n")
        savefile:write("engLang2="..get(eng_light_angle2)*1000 .."\n")
        savefile:write("yokeHeight="..get(yoke_height)*1000 .."\n")
        
        
        savefile:write("cas67Code="..get(cas67_code).."\n")
	
		
        savefile:write("so72Code="..get(so72_code).."\n")
        
        
        
		
		savefile:write("tksLatSet="..get(tks_lat_set)*1000 .."\n")
		
		
		savefile:write("ppd3HeatFail="..get(ppd_3_heat_fail).."\n")
		
		savefile:write("engHeat1="..get(rel_ice_inlet_heat1).."\n")
		savefile:write("engHeat2="..get(rel_ice_inlet_heat2).."\n")
		savefile:write("engHeat3="..get(rel_ice_inlet_heat3).."\n")
		
		savefile:write("pitotHeatFail1="..get(rel_ice_pitot_heat1).."\n")
		savefile:write("pitotHeatFail2="..get(rel_ice_pitot_heat2).."\n")
		
		savefile:write("wingHeatFail="..get(rel_ice_surf_heat).."\n")
		savefile:write("slatHeatFail="..get(rel_ice_surf_heat2).."\n")
		
		savefile:write("iceDetFail="..get(rio_fail).."\n")
		
		savefile:write("windowHeatFail1="..get(window_heat_fail_1).."\n")
		savefile:write("windowHeatFail2="..get(window_heat_fail_2).."\n")
		savefile:write("windowHeatFail3="..get(window_heat_fail_3).."\n")
		
		savefile:write("apuStartFail="..get(apu_start_fail).."\n")
		savefile:write("apuRuntime="..get(apu_runtime).."\n")
		savefile:write("apuFail="..get(apu_fail).."\n")
		savefile:write("apuAirFail="..get(apu_press_fail).."\n")
		
		savefile:write("brakeRunLeft="..get(brake_runtime_left)*1000 .."\n")
		savefile:write("brakeRunRight="..get(brake_runtime_right)*1000 .."\n")
		
		savefile:write("brakeFailLeft="..get(rel_lbrakes).."\n")
		savefile:write("brakeFailRight="..get(rel_rbrakes).."\n")
		
		savefile:write("ailFailLeft="..get(ail_fail_left).."\n")
		savefile:write("ailFailRight="..get(ail_fail_right).."\n")
		
		savefile:write("spoilInnLeft="..get(fail_spoil_inn_left).."\n")
		savefile:write("spoilInnRight="..get(fail_spoil_inn_right).."\n")
		savefile:write("spoilMidLeft="..get(fail_spoil_mid_left).."\n")
		savefile:write("spoilMidRight="..get(fail_spoil_mid_right).."\n")
		savefile:write("spoilOutLeft="..get(fail_spoil_out_left).."\n")
		savefile:write("spoilOutRight="..get(fail_spoil_out_right).."\n")
		
		savefile:write("rudderFail="..get(rudder_fail).."\n")
		savefile:write("elevFailLeft="..get(elev_fail_left).."\n")
		savefile:write("elevFailRight="..get(elev_fail_right).."\n")
		
		savefile:write("rudtrimFail="..get(rel_trim_rud).."\n")
		savefile:write("ailTrimFail="..get(rel_trim_ail).."\n")
		savefile:write("elevTrimFail="..get(rel_trim_elv).."\n")
		savefile:write("elevEmergTraimFail="..get(trim_emerg_elv_fail).."\n")
		
		savefile:write("flapFailLeft="..get(flap_fail_left).."\n")
		savefile:write("flapFailRight="..get(flap_fail_right).."\n")
		
		savefile:write("stabEngFail="..get(stab_eng_fail).."\n")
		savefile:write("stabAutoFail="..get(stab_automatic_fail).."\n")
		savefile:write("slatFail="..get(slats_fail).."\n")
		
		savefile:write("gearRetrFail1="..get(retract1_fail).."\n")
		savefile:write("gearRetrFail2="..get(retract2_fail).."\n")
		savefile:write("gearRetrFail3="..get(retract3_fail).."\n")
		savefile:write("gearActFail="..get(actuator_fail).."\n")
		
		savefile:write("gen1Fail="..get(rel_genera0).."\n")
		savefile:write("gen2Fail="..get(rel_genera1).."\n")
		savefile:write("gen3Fail="..get(rel_genera2).."\n")
		savefile:write("genApuFail="..get(apu_gen_fail).."\n")
		
		savefile:write("vu1Fail="..get(vu1_fail).."\n")
		savefile:write("vu2Fail="..get(vu2_fail).."\n")
		savefile:write("vu3Fail="..get(vu3_fail).."\n")
		
		savefile:write("tr1Fail="..get(tr1_fail).."\n")
		savefile:write("tr2Fail="..get(tr2_fail).."\n")
		
		savefile:write("pts1Fail="..get(pts250_1_fail).."\n")
		savefile:write("pts2Fail="..get(pts250_2_fail).."\n")
		savefile:write("inv115Fail="..get(inv115_fail).."\n")
		
		savefile:write("bat1Fail="..get(bat_1_fail).."\n")
		savefile:write("bat2Fail="..get(bat_2_fail).."\n")
		savefile:write("bat3Fail="..get(bat_3_fail).."\n")
		savefile:write("bat4Fail="..get(bat_4_fail).."\n")
		
		savefile:write("bat1KZ="..get(bat_1_kz).."\n")
		savefile:write("bat2KZ="..get(bat_2_kz).."\n")
		savefile:write("bat3KZ="..get(bat_3_kz).."\n")
		savefile:write("bat4KZ="..get(bat_4_kz).."\n")
		
		savefile:write("engFail1="..get(rel_engfai0).."\n")
		savefile:write("engFail2="..get(rel_engfai1).."\n")
		savefile:write("engFail3="..get(rel_engfai2).."\n")
		
		savefile:write("engRunTime1="..get(engine_runtime_1).."\n")
		savefile:write("engRunTime2="..get(engine_runtime_2).."\n")
		savefile:write("engRunTime3="..get(engine_runtime_3).."\n")
		
		savefile:write("engFuelPumpFail1="..get(eng_fuel_pmp_fail_1).."\n")
		savefile:write("engFuelPumpFail2="..get(eng_fuel_pmp_fail_2).."\n")
		savefile:write("engFuelPumpFail3="..get(eng_fuel_pmp_fail_3).."\n")
		
		savefile:write("engOilQty1="..get(engn_oil_qty_1).."\n")
		savefile:write("engOilQty2="..get(engn_oil_qty_2).."\n")
		savefile:write("engOilQty3="..get(engn_oil_qty_3).."\n")
		
		savefile:write("engOilLeak1="..get(engn_oil_leak_1).."\n")
		savefile:write("engOilLeak2="..get(engn_oil_leak_2).."\n")
		savefile:write("engOilLeak3="..get(engn_oil_leak_3).."\n")
		
		savefile:write("engOilPumpFail1="..get(rel_oilpmp0).."\n")
		savefile:write("engOilPumpFail2="..get(rel_oilpmp1).."\n")
		savefile:write("engOilPumpFail3="..get(rel_oilpmp2).."\n")
		
		savefile:write("engFuelFilterFail1="..get(rel_eng_lo0).."\n")
		savefile:write("engFuelFilterFail2="..get(rel_eng_lo1).."\n")
		savefile:write("engFuelFilterFail3="..get(rel_eng_lo2).."\n")
		
		savefile:write("engStarterFail1="..get(rel_startr0).."\n")
		savefile:write("engStarterFail2="..get(rel_startr1).."\n")
		savefile:write("engStarterFail3="..get(rel_startr2).."\n")
		
		savefile:write("engIgnitFail1="..get(rel_ignitr0).."\n")
		savefile:write("engIgnitFail2="..get(rel_ignitr1).."\n")
		savefile:write("engIgnitFail3="..get(rel_ignitr2).."\n")
		
		savefile:write("engReversFail1="..get(rel_revers0).."\n")
		savefile:write("engReversFail3="..get(rel_revers2).."\n")
	
		savefile:write("fuelPumpFail2L="..get(fuel_pump_2l_fail).."\n")
		savefile:write("fuelPumpFail2R="..get(fuel_pump_2r_fail).."\n")
		savefile:write("fuelPumpFail3L="..get(fuel_pump_3l_fail).."\n")
		savefile:write("fuelPumpFail3R="..get(fuel_pump_3r_fail).."\n")
		savefile:write("fuelPumpFail1="..get(fuel_pump_1_fail).."\n")
		savefile:write("fuelPumpFail4="..get(fuel_pump_4_fail).."\n")
			
		savefile:write("fuelAutoFail="..get(fuel_auto_fail).."\n")
		savefile:write("fuelLvlFail="..get(fuel_level_fail).."\n")
		savefile:write("fuelPorcFail="..get(fuel_porc_fail).."\n")
		
		savefile:write("fuelMeterFail2L="..get(fuel_meter_2l_fail).."\n")
		savefile:write("fuelMeterFail2R="..get(fuel_meter_2r_fail).."\n")
		savefile:write("fuelMeterFail3L="..get(fuel_meter_3l_fail).."\n")
		savefile:write("fuelMeterFail3R="..get(fuel_meter_3r_fail).."\n")
		savefile:write("fuelMeterFail1="..get(fuel_meter_1_fail).."\n")
		savefile:write("fuelMeterFail4="..get(fuel_meter_4_fail).."\n")
		savefile:write("fuelMeterFailSumm="..get(fuel_meter_summ).."\n")
		
		savefile:write("FF1fail="..get(fuel_flowmeter_1_fail).."\n")
		savefile:write("FF2fail="..get(fuel_flowmeter_2_fail).."\n")
		savefile:write("FF3fail="..get(fuel_flowmeter_3_fail).."\n")
	
		savefile:write("hydroLeak1="..get(hydro_leak_1).."\n")
		savefile:write("hydroLeak2="..get(hydro_leak_2).."\n")
		savefile:write("hydroLeak3="..get(hydro_leak_3).."\n")
		savefile:write("hydroLeak4="..get(hydro_leak_4).."\n")
		
		savefile:write("hydroPmpFail11="..get(hydro_pump_fail_11).."\n")
		savefile:write("hydroPmpFail12="..get(hydro_pump_fail_12).."\n")
		savefile:write("hydroPmpFail2="..get(hydro_pump_fail_2).."\n")
		savefile:write("hydroPmpFail3="..get(hydro_pump_fail_3).."\n")
		
		savefile:write("HydroElecFail2="..get(hydro_elec_fail_2).."\n")
		savefile:write("HydroElecFail3="..get(hydro_elec_fail_3).."\n")

		savefile:write("hydroQty1="..get(gs_qty_1)*100000 .."\n")
		savefile:write("hydroQty2="..get(gs_qty_2)*100000 .."\n")
		savefile:write("hydroQty3="..get(gs_qty_3)*100000 .."\n")

		savefile:write("tthLeftFail="..get(tth_left_fail).."\n")
		savefile:write("tthRightFail="..get(tth_right_fail).."\n")

		savefile:write("airbleedFail1="..get(airbleed_1).."\n")
		savefile:write("airbleedFail2="..get(airbleed_2).."\n")
		savefile:write("airbleedFail3="..get(airbleed_3).."\n")
		
		savefile:write("psvpFailL="..get(psvp_fail_left).."\n")
		savefile:write("psvpFailR="..get(psvp_fail_right).."\n")
		savefile:write("sardValveFail="..get(sard_valve_fail).."\n")
		
		savefile:write("lanLampFLFail="..get(lan_lamp_fail_FL).."\n")
		savefile:write("lanLampFRFail="..get(lan_lamp_fail_FR).."\n")
		savefile:write("lanLampWLFail="..get(lan_lamp_fail_WL).."\n")
		savefile:write("lanLampWRFail="..get(lan_lamp_fail_WR).."\n")
		savefile:write("navLampFail="..get(rel_lites_nav).."\n")
		savefile:write("beacLampFail="..get(rel_lites_beac).."\n")
		
		savefile:write("mainAlarmFail="..get(main_alarm_fail).."\n")
		savefile:write("spekAlarmFail="..get(speaker_alarm_fail).."\n")
		
		savefile:write("absuRArollFail="..get(absu_ra56_roll_fail).."\n")
		savefile:write("absuRApitchFail="..get(absu_ra56_pitch_fail).."\n")
		savefile:write("absuRAyawFail="..get(absu_ra56_yaw_fail).."\n")
		
		savefile:write("absuAT1Fail="..get(absu_at1_fail).."\n")
		savefile:write("absuAT2Fail="..get(absu_at2_fail).."\n")
		
		savefile:write("absuDampRollFail="..get(absu_damp_roll_fail).."\n")
		savefile:write("absuDampPitchFail="..get(absu_damp_pitch_fail).."\n")
		savefile:write("absuDampYawFail="..get(absu_damp_yaw_fail).."\n")
		savefile:write("absuContrRollFail="..get(absu_contr_roll_fail).."\n")
		savefile:write("absuContrPitchFail="..get(absu_contr_pitch_fail).."\n")
		savefile:write("absuCalcTogaFail="..get(absu_calc_toga_fail).."\n")
		savefile:write("absuCalcRollFail="..get(absu_calc_roll_fail).."\n")
		savefile:write("absuCalcPitchFail="..get(absu_calc_pitch_fail).."\n")

	
		savefile:write("dissFail="..get(diss_fail).."\n")
		savefile:write("nvuFail="..get(nvu_fail).."\n")
		savefile:write("radarFail="..get(radar_fail).."\n")
		
		savefile:write("ark1fail="..get(ark1_fail).."\n")
		savefile:write("ark2fail="..get(ark2_fail).."\n")
		savefile:write("nav1fail="..get(nav1fail).."\n")
		savefile:write("nav2fail="..get(nav2fail).."\n")
		savefile:write("dme1Fail="..get(dme1_fail).."\n")
		savefile:write("dme2Fail="..get(dme2_fail).."\n")
		savefile:write("mrpFail="..get(mrp_fail).."\n")
		
		savefile:write("tksGaFail1="..get(tks_ga1_fail).."\n")
		savefile:write("tksGaFail2="..get(tks_ga2_fail).."\n")
		savefile:write("tksKMFail1="..get(tks_km1_fail).."\n")
		savefile:write("tksKMFail2="..get(tks_km2_fail).."\n")
		savefile:write("tksBgmkFail1="..get(tks_bgmk1_fail).."\n")
		savefile:write("tksBgmkFail2="..get(tks_bgmk2_fail).."\n")
		
		savefile:write("rsbnFail="..get(rsbn_fail).."\n")
		savefile:write("tawsFail="..get(taws_fail).."\n")

		savefile:write("alt1fail="..get(alt_1_fail).."\n")
		savefile:write("alt2fail="..get(alt_2_fail).."\n")
		savefile:write("eupFail="..get(eup_fail).."\n")
		
		savefile:write("acs1fail="..get(acs1_fail).."\n")
		savefile:write("acs2fail="..get(acs2_fail).."\n")
		savefile:write("acs3fail="..get(acs3_fail).."\n")
		savefile:write("agrFail="..get(agr_fail).."\n")
		savefile:write("bkkFail="..get(bkk_fail).."\n")
		
		
		savefile:write("pitot1Fail="..get(rel_pitot).."\n")
		savefile:write("pitot2Fail="..get(rel_pitot2).."\n")
		savefile:write("static1Fail="..get(static_fail_L).."\n")
		savefile:write("static2Fail="..get(static_fail_R).."\n")
		savefile:write("svsFail="..get(svs_fail).."\n")
		
		
		
		savefile:write("mgvFail="..get(mgv_fail).."\n")
		savefile:write("pkp1fail="..get(pkp1fail).."\n")
		savefile:write("pkp2fail="..get(pkp2fail).."\n")
		savefile:write("rv1fail="..get(rv1_fail).."\n")
		savefile:write("rv2fail="..get(rv2_fail).."\n")
		savefile:write("uapFail="..get(uap_fail).."\n")
		savefile:write("uapWarnFail="..get(uap_warn_fail).."\n")
		savefile:write("uvid15fail="..get(uvid_fail).."\n")
		savefile:write("vvi1fail="..get(vvi1_fail).."\n")
		savefile:write("vvi2fail="..get(vvi2_fail).."\n")
		savefile:write("srdpress="..get(srd_press).."\n")
		savefile:write("srd2press="..get(srd_press_2).."\n")
		savefile:write("srddiff="..get(srd_diff).."\n")
		savefile:write("srd2diff="..get(srd_diff_2).."\n")
		savefile:write("srdspd="..get(srd_spd).."\n")
		savefile:write("srd2spd="..get(srd_spd_2).."\n")
		savefile:write("rsbnone="..get(rsbn_one).."\n")
		savefile:write("rsbnten="..get(rsbn_ten).."\n")
		savefile:write("nwsset="..get(nws).."\n")
		savefile:write("vfrsqwk="..get(codevfr).."\n")
		savefile:write("puneedle="..get(pu_needle).."\n")
		savefile:write("psvpmode="..get(psvp).."\n")		
		savefile:write("uaneedle="..get(auasp).."\n")	
		savefile:write("rsbnaz="..get(azimuth_init).."\n")
		savefile:write("rsbnd="..get(dist_init).."\n")	
		savefile:write("tempsel1="..get(temp_1).."\n")
		savefile:write("tempsel2="..get(temp_2).."\n")	
		savefile:write("tempsel3="..get(temp_3).."\n")
		savefile:write("tempsel4="..get(temp_4).."\n")
		savefile:write("tempsel5="..get(temp_5).."\n")	
		savefile:write("uk="..get(map_angle)*10 .."\n")	
		savefile:write("stab="..get(stab_set).."\n")	
		savefile:write("navsel="..get(nav_select).."\n")	
		savefile:write("obsl="..get(obs_L).."\n")	
		savefile:write("obsr="..get(obs_R).."\n")
		savefile:write("sdvol1="..get(sd67_vol_1)*10 .."\n")
		savefile:write("sdvol2="..get(sd67_vol_2)*10 .."\n")
		savefile:write("fltnum1="..get(flt_1).."\n")
		savefile:write("fltnum2="..get(flt_2).."\n")
		savefile:write("fltnum3="..get(flt_3).."\n")
		savefile:write("fltnum4="..get(flt_4).."\n")
		savefile:write("fltnum5="..get(flt_5).."\n")
		savefile:write("fltnum6="..get(flt_6).."\n")
		savefile:write("fltnum7="..get(flt_7).."\n")
		savefile:write("fltnum8="..get(flt_8).."\n")
		
		savefile:close()
		--print("write OK")
	else
		print("write state fail")
	end
	
	

	return true

end


local function read_file()
	
	local savefile = io.open(stateFileName, "r") -- open file for reading
	
	if savefile then
		local lines = savefile:read("*a")
		for k, v in string.gmatch(lines, "(%w+)=(%-?%d+)") do
			var_table[k] = tonumber(v)
			--print(k, "  ", v)
		end
		if var_table["rusLang"] then 
			set(hide_eng_objects, var_table["rusLang"]) 
			set(hide_rus_objects, 1-var_table["rusLang"])
		end
		
		if var_table["volume"] then set(sounds_voulme, var_table["volume"]) end
		if var_table["starterTRQ"] then set(starter_torq, var_table["starterTRQ"]/100) end
		
		if var_table["crewvo"] then set(enable_crew_vo, var_table["crewvo"]) end
		if var_table["hardwareCockpit"] then set(hardware_cockpit, var_table["hardwareCockpit"]) end
		
		if var_table["tankone"] then set(fuel_q_1, var_table["tankone"]) end
		if var_table["tankfour"] then set(fuel_q_4, var_table["tankfour"]) end
		if var_table["tanktwoL"] then set(fuel_q_2L, var_table["tanktwoL"]) end
		if var_table["tanktwoR"] then set(fuel_q_2R, var_table["tanktwoR"]) end
		if var_table["tankthreeL"] then set(fuel_q_3L, var_table["tankthreeL"]) end
		if var_table["tankthreeR"] then set(fuel_q_3R, var_table["tankthreeR"]) end
		
		if var_table["enableFailures"] then set(failures_enabled, var_table["enableFailures"]) end
		if var_table["useNWaxis"] then set(have_pedals, var_table["useNWaxis"]) end
		if var_table["gnsInstaled"] then set(show_gns, var_table["gnsInstaled"]) end
		if var_table["RXPInstaled"] then set(show_RXP, var_table["RXPInstaled"]) end
		
		if var_table["pnpCrs1"] then set(pnp_1_crs, var_table["pnpCrs1"]) end
		if var_table["pnpCrs2"] then set(pnp_2_crs, var_table["pnpCrs2"]) end
		
		if var_table["pnp1OBS"] then set(pnp_1_obs, var_table["pnp1OBS"]) end
		if var_table["pnp2OBS"] then set(pnp_2_obs, var_table["pnp2OBS"]) end
		
		if var_table["ark1ch"] then set(ark_1_channel, var_table["ark1ch"]) end
		if var_table["ark1hunL"] then set(ark_1_hundr_left, var_table["ark1hunL"]) end
		if var_table["ark1tenL"] then set(ark_1_tens_left, var_table["ark1tenL"]) end
		if var_table["ark1oneL"] then set(ark_1_ones_left, var_table["ark1oneL"]) end
		if var_table["ark1hunR"] then set(ark_1_hundr_right, var_table["ark1hunR"]) end
		if var_table["ark1tenR"] then set(ark_1_tens_right, var_table["ark1tenR"]) end
		if var_table["ark1oneR"] then set(ark_1_ones_right, var_table["ark1oneR"]) end
		
		if var_table["ark2ch"] then set(ark_2_channel, var_table["ark2ch"]) end
		if var_table["ark2hunL"] then set(ark_2_hundr_left, var_table["ark2hunL"]) end
		if var_table["ark2tenL"] then set(ark_2_tens_left, var_table["ark2tenL"]) end
		if var_table["ark2oneL"] then set(ark_2_ones_left, var_table["ark2oneL"]) end
		if var_table["ark2hunR"] then set(ark_2_hundr_right, var_table["ark2hunR"]) end
		if var_table["ark2tenR"] then set(ark_2_tens_right, var_table["ark2tenR"]) end
		if var_table["ark2oneR"] then set(ark_2_ones_right, var_table["ark2oneR"]) end
		
		if var_table["vdPressL"] then set(vd15_pressure_left, var_table["vdPressL"]) end
		if var_table["vdPressR"] then set(vd15_pressure_right, var_table["vdPressR"]) end
		if var_table["vdPressE"] then set(vd15_pressure_eng, var_table["vdPressE"]) end
		if var_table["uvidPress"] then set(uvid_pressure_knob, var_table["uvidPress"]) end
        
        ---b2
        
		if var_table["ushdbCrs"] then set(ushdb_crs_knob, var_table["ushdbCrs"]) end
        
        if var_table["msrpYearone"] then set(msrp_year_one, var_table["msrpYearone"]) end
		if var_table["msrpYearten"] then set(msrp_year_ten, var_table["msrpYearten"]) end
        if var_table["msrpRoutehun"] then set(msrp_route_hun, var_table["msrpRoutehun"]) end
        if var_table["msrpRouteten"] then set(msrp_route_ten, var_table["msrpRouteten"]) end
        if var_table["msrpRouteone"] then set(msrp_route_one, var_table["msrpRouteone"]) end
        if var_table["vhfn2mhz"] then set(vhfnew_2_mhz, var_table["vhfn2mhz"]) end
        if var_table["vhfn3mhz"] then set(vhfnew_3_mhz, var_table["vhfn3mhz"]) end
        if var_table["vhfn2khz"] then set(vhfnew_2_khz, var_table["vhfn2khz"]) end
        if var_table["vhfn3khz"] then set(vhfnew_3_khz, var_table["vhfn3khz"]) end
        if var_table["co63sqwk1"] then set(co63_sqwk_1, var_table["co63sqwk1"]) end
        if var_table["co63sqwk2"] then set(co63_sqwk_2, var_table["co63sqwk2"]) end
        if var_table["co63sqwk3"] then set(co63_sqwk_3, var_table["co63sqwk3"]) end
        if var_table["co63sqwk4"] then set(co63_sqwk_4, var_table["co63sqwk4"]) end
        if var_table["co70sqwk1"] then set(co70_sqwk_1, var_table["co70sqwk1"]) end
        if var_table["co70sqwk2"] then set(co70_sqwk_2, var_table["co70sqwk2"]) end
        if var_table["co70sqwk3"] then set(co70_sqwk_3, var_table["co70sqwk3"]) end
        if var_table["co70sqwk4"] then set(co70_sqwk_4, var_table["co70sqwk4"]) end
        if var_table["uvo15Press"] then set(uvo15_press_knob, var_table["uvo15Press"]) end
        if var_table["vem72Press"] then set(vem72_press_knob, var_table["vem72Press"]) end
            
            
            
        if var_table["icaoDep1"] then set(icao_dep_1, var_table["icaoDep1"]) end
        if var_table["icaoDep2"] then set(icao_dep_2, var_table["icaoDep2"]) end
        if var_table["icaoDep3"] then set(icao_dep_3, var_table["icaoDep3"]) end
        if var_table["icaoDep4"] then set(icao_dep_4, var_table["icaoDep4"]) end
        if var_table["icaoArr1"] then set(icao_arr_1, var_table["icaoArr1"]) end
        if var_table["icaoArr2"] then set(icao_arr_2, var_table["icaoArr2"]) end
        if var_table["icaoArr3"] then set(icao_arr_3, var_table["icaoArr3"]) end
        if var_table["icaoArr4"] then set(icao_arr_4, var_table["icaoArr4"]) end
        if var_table["icaoWx1"] then set(icao_wx_1, var_table["icaoWx1"]) end
        if var_table["icaoWx2"] then set(icao_wx_2, var_table["icaoWx2"]) end
        if var_table["icaoWx3"] then set(icao_wx_3, var_table["icaoWx3"]) end
        if var_table["icaoWx4"] then set(icao_wx_4, var_table["icaoWx4"]) end
        
        
        
        
        if var_table["slid0"] then set(slider0, var_table["slid0"]) end
        if var_table["slid1"] then set(slider1, var_table["slid1"]) end
        if var_table["slid2"] then set(slider2, var_table["slid2"]) end
        if var_table["slid3"] then set(slider3, var_table["slid3"]) end
        if var_table["slid4"] then set(slider4, var_table["slid4"]) end
        if var_table["slid5"] then set(slider5, var_table["slid5"]) end
        if var_table["slid6"] then set(slider6, var_table["slid6"]) end
        if var_table["slid7"] then set(slider7, var_table["slid7"]) end
        if var_table["slid8"] then set(slider8, var_table["slid8"]) end
        if var_table["slid9"] then set(slider9, var_table["slid9"]) end
        if var_table["slid10"] then set(slider10, var_table["slid10"]) end
        if var_table["slid11"] then set(slider11, var_table["slid11"]) end
        if var_table["slid12"] then set(slider12, var_table["slid12"]) end
        if var_table["slid13"] then set(slider13, var_table["slid13"]) end
        if var_table["slid14"] then set(slider14, var_table["slid14"]) end
        if var_table["slid15"] then set(slider15, var_table["slid15"]) end
        if var_table["slid16"] then set(slider16, var_table["slid16"]) end
        if var_table["slid17"] then set(slider17, var_table["slid17"]) end
        if var_table["slid18"] then set(slider18, var_table["slid18"]) end
        
        if var_table["slid19"] then set(slider19, var_table["slid19"]/10) end
        if var_table["slid20"] then set(slider20, var_table["slid20"]/10) end
        if var_table["slid21"] then set(slider21, var_table["slid21"]/10) end
        if var_table["slid22"] then set(slider22, var_table["slid22"]/10) end
        if var_table["slid23"] then set(slider23, var_table["slid23"]/10) end
        if var_table["slid24"] then set(slider24, var_table["slid24"]/10) end
        if var_table["slid25"] then set(slider25, var_table["slid25"]/10) end
        if var_table["slid26"] then set(slider26, var_table["slid26"]/10) end
        if var_table["slid27"] then set(slider27, var_table["slid27"]/10) end
        if var_table["slid28"] then set(slider28, var_table["slid28"]/10) end
        if var_table["slid29"] then set(slider29, var_table["slid29"]/10) end
        if var_table["slid30"] then set(slider30, var_table["slid30"]/10) end
        if var_table["slid31"] then set(slider31, var_table["slid31"]) end
        if var_table["slid32"] then set(slider32, var_table["slid32"]) end
        if var_table["slid33"] then set(slider33, var_table["slid33"]) end
        if var_table["slid34"] then set(slider34, var_table["slid34"]) end
        if var_table["slid35"] then set(slider35, var_table["slid35"]) end
        if var_table["slid36"] then set(slider36, var_table["slid36"]) end
        if var_table["slid37"] then set(slider37, var_table["slid37"]) end
        if var_table["slid38"] then set(slider38, var_table["slid38"]) end
        if var_table["slid39"] then set(slider39, var_table["slid39"]) end
        if var_table["slid40"] then set(slider40, var_table["slid40"]/10) end
        if var_table["slid41"] then set(slider41, var_table["slid41"]/10) end
        if var_table["slid42"] then set(slider42, var_table["slid42"]/10) end
        if var_table["slid43"] then set(slider43, var_table["slid43"]/10) end
        if var_table["slid44"] then set(slider44, var_table["slid44"]/10) end
        if var_table["slid45"] then set(slider45, var_table["slid45"]/10) end
        if var_table["slid46"] then set(slider46, var_table["slid46"]/10) end
        if var_table["slid47"] then set(slider47, var_table["slid47"]/10) end
        if var_table["slid48"] then set(slider48, var_table["slid48"]) end
        if var_table["slid49"] then set(slider49, var_table["slid49"]) end
        --if var_table["slid50"] then set(slider50, var_table["slid50"]) end
        if var_table["slid51"] then set(slider51, var_table["slid51"]) end
        if var_table["slid52"] then set(slider52, var_table["slid52"]/10) end
        if var_table["slid53"] then set(slider53, var_table["slid53"]/10) end
        if var_table["slid54"] then set(slider54, var_table["slid54"]/10) end
        if var_table["slid55"] then set(slider55, var_table["slid55"]/10) end
        ---if var_table["slid56"] then set(slider56, var_table["slid56"]) end
        ---if var_table["slid57"] then set(slider57, var_table["slid57"]) end
        ---if var_table["slid58"] then set(slider58, var_table["slid58"]) end
        ---if var_table["slid59"] then set(slider59, var_table["slid59"]) end
        ---if var_table["slid60"] then set(slider60, var_table["slid60"]) end
        ---if var_table["slid61"] then set(slider61, var_table["slid61"]) end
        
        if var_table["swit1"] then set(switch1, var_table["swit1"]) end
        if var_table["swit2"] then set(switch2, var_table["swit2"]) end
        if var_table["swit3"] then set(switch3, var_table["swit3"]) end
        if var_table["swit4"] then set(switch4, var_table["swit4"]) end
        if var_table["swit5"] then set(switch5, var_table["swit5"]) end
        if var_table["swit6"] then set(switch6, var_table["swit6"]) end
        if var_table["swit7"] then set(switch7, var_table["swit7"]) end
        if var_table["swit8"] then set(switch8, var_table["swit8"]) end
        if var_table["swit9"] then set(switch9, var_table["swit9"]) end
        if var_table["swit10"] then set(switch10, var_table["swit10"]) end
        if var_table["walkEnab"] then set(enable_walk, var_table["walkEnab"]) end
        
        
        if var_table["lpInt"] then set(lp_int, var_table["lpInt"]/1000) end
        if var_table["lpFl"] then set(lpf, var_table["lpFl"]/1000) end
        if var_table["ardFl"] then set(ardf, var_table["ardFl"]/1000) end
        if var_table["engFl"] then set(engf, var_table["engFl"]/1000) end
        if var_table["kmFl"] then set(kmf, var_table["kmFl"]/1000) end
        if var_table["mrpInt"] then set(mrp_int, var_table["mrpInt"]/1000) end
        if var_table["ovhdInt"] then set(ovhd_int, var_table["ovhdInt"]/1000) end
        if var_table["mlpInt"] then set(mlp_int, var_table["mlpInt"]/1000) end
        if var_table["ovhdF"] then set(ovhd_f, var_table["ovhdF"]/1000) end
        if var_table["ovhdB"] then set(ovhd_b, var_table["ovhdB"]/1000) end
        if var_table["fpFl"] then set(fpf, var_table["fpFl"]/1000) end
        if var_table["mpFl"] then set(mpf, var_table["mpFl"]/1000) end
        if var_table["rpFl"] then set(rpf, var_table["rpFl"]/1000) end
        if var_table["rpInt"] then set(rp_int, var_table["rpInt"]/1000) end
        if var_table["tableUpR"] then set(table_up_R, var_table["tableUpR"]) end
        if var_table["tableUpL"] then set(table_up_L, var_table["tableUpL"]) end
        if var_table["efbEnabl"] then set(efb_enabled, var_table["efbEnabl"]) end
        if var_table["engLang"] then set(eng_light_angle_result, var_table["engLang"]) end
        if var_table["engLang2"] then set(eng_light_angle2, var_table["engLang2"]/1000) end
        if var_table["yokeHeight"] then set(yoke_height, var_table["yokeHeight"]/1000) end
        
        
        if var_table["cas67Code"] then set(cas67_code, var_table["cas67Code"]) end
		
		if var_table["fltnum1"] then set(flt_1, var_table["fltnum1"]) end
		if var_table["fltnum2"] then set(flt_2, var_table["fltnum2"]) end
		if var_table["fltnum3"] then set(flt_3, var_table["fltnum3"]) end
		if var_table["fltnum4"] then set(flt_4, var_table["fltnum4"]) end
		if var_table["fltnum5"] then set(flt_5, var_table["fltnum5"]) end
		if var_table["fltnum6"] then set(flt_6, var_table["fltnum6"]) end
		if var_table["fltnum7"] then set(flt_7, var_table["fltnum7"]) end
		if var_table["fltnum8"] then set(flt_8, var_table["fltnum8"]) end
		
		
        if var_table["so72Code"] then set(so72_code, var_table["so72Code"]) end

		if var_table["tksLatSet"] then set(tks_lat_set, var_table["tksLatSet"]/1000) end
		
		
		
		if var_table["ppd3HeatFail"] then set(ppd_3_heat_fail, var_table["ppd3HeatFail"]) end
		
		if var_table["engHeat1"] then set(rel_ice_inlet_heat1, var_table["engHeat1"]) end
		if var_table["engHeat2"] then set(rel_ice_inlet_heat2, var_table["engHeat2"]) end
		if var_table["engHeat3"] then set(rel_ice_inlet_heat3, var_table["engHeat3"]) end
		
		if var_table["pitotHeatFail1"] then set(rel_ice_pitot_heat1, var_table["pitotHeatFail1"]) end
		if var_table["pitotHeatFail2"] then set(rel_ice_pitot_heat2, var_table["pitotHeatFail2"]) end
		
		if var_table["wingHeatFail"] then set(rel_ice_surf_heat, var_table["wingHeatFail"]) end
		if var_table["slatHeatFail"] then set(rel_ice_surf_heat2, var_table["slatHeatFail"]) end
		
		if var_table["iceDetFail"] then set(rio_fail, var_table["iceDetFail"]) end
		
		if var_table["windowHeatFail1"] then set(window_heat_fail_1, var_table["windowHeatFail1"]) end
		if var_table["windowHeatFail2"] then set(window_heat_fail_1, var_table["windowHeatFail2"]) end
		if var_table["windowHeatFail3"] then set(window_heat_fail_1, var_table["windowHeatFail3"]) end
		
		if var_table["apuStartFail"] then set(apu_start_fail, var_table["apuStartFail"]) end
		if var_table["apuRuntime"] then set(apu_runtime, var_table["apuRuntime"]) end
		if var_table["apuFail"] then set(window_heat_fail_1, var_table["apuFail"]) end
		if var_table["apuAirFail"] then set(apu_press_fail, var_table["apuAirFail"]) end
		
		if var_table["brakeRunLeft"] then set(brake_runtime_left, var_table["brakeRunLeft"]/1000) end
		if var_table["brakeRunRight"] then set(brake_runtime_right, var_table["brakeRunRight"]/1000) end
		
		if var_table["brakeFailLeft"] then set(rel_lbrakes, var_table["brakeFailLeft"]) end
		if var_table["brakeFailRight"] then set(rel_rbrakes, var_table["brakeFailRight"]) end
		
		if var_table["ailFailLeft"] then set(ail_fail_left, var_table["ailFailLeft"]) end
		if var_table["ailFailRight"] then set(ail_fail_right, var_table["ailFailRight"]) end
		
		if var_table["spoilInnLeft"] then set(fail_spoil_inn_left, var_table["spoilInnLeft"]) end
		if var_table["spoilInnRight"] then set(fail_spoil_inn_right, var_table["spoilInnRight"]) end
		if var_table["spoilMidLeft"] then set(fail_spoil_mid_left, var_table["spoilMidLeft"]) end
		if var_table["spoilMidRight"] then set(fail_spoil_mid_right, var_table["spoilMidRight"]) end
		if var_table["spoilOutLeft"] then set(fail_spoil_out_left, var_table["spoilOutLeft"]) end
		if var_table["spoilOutRight"] then set(fail_spoil_out_right, var_table["spoilOutRight"]) end
		
		if var_table["rudderFail"] then set(rudder_fail, var_table["rudderFail"]) end
		if var_table["elevFailLeft"] then set(elev_fail_left, var_table["elevFailLeft"]) end
		if var_table["elevFailRight"] then set(elev_fail_right, var_table["elevFailRight"]) end
				
		if var_table["rudtrimFail"] then set(rel_trim_rud, var_table["rudtrimFail"]) end
		if var_table["ailTrimFail"] then set(rel_trim_ail, var_table["ailTrimFail"]) end
		if var_table["elevTrimFail"] then set(rel_trim_elv, var_table["elevTrimFail"]) end
		if var_table["elevEmergTraimFail"] then set(trim_emerg_elv_fail, var_table["elevEmergTraimFail"]) end
		
		if var_table["flapFailLeft"] then set(flap_fail_left, var_table["flapFailLeft"]) end
		if var_table["flapFailRight"] then set(flap_fail_right, var_table["flapFailRight"]) end

		if var_table["stabEngFail"] then set(stab_eng_fail, var_table["stabEngFail"]) end
		if var_table["stabAutoFail"] then set(stab_automatic_fail, var_table["stabAutoFail"]) end
		if var_table["slatFail"] then set(slats_fail, var_table["slatFail"]) end
		
		if var_table["gearRetrFail1"] then set(retract1_fail, var_table["gearRetrFail1"]) end
		if var_table["gearRetrFail2"] then set(retract2_fail, var_table["gearRetrFail2"]) end
		if var_table["gearRetrFail3"] then set(retract3_fail, var_table["gearRetrFail3"]) end
		if var_table["gearActFail"] then set(actuator_fail, var_table["gearActFail"]) end
		
		if var_table["gen1Fail"] then set(rel_genera0, var_table["gen1Fail"]) end
		if var_table["gen2Fail"] then set(rel_genera1, var_table["gen2Fail"]) end
		if var_table["gen3Fail"] then set(rel_genera2, var_table["gen3Fail"]) end
		if var_table["genApuFail"] then set(apu_gen_fail, var_table["genApuFail"]) end
		
		if var_table["vu1Fail"] then set(vu1_fail, var_table["vu1Fail"]) end
		if var_table["vu2Fail"] then set(vu2_fail, var_table["vu2Fail"]) end
		if var_table["vu3Fail"] then set(vu3_fail, var_table["vu3Fail"]) end
		
		if var_table["tr1Fail"] then set(tr1_fail, var_table["tr1Fail"]) end
		if var_table["tr2Fail"] then set(tr2_fail, var_table["tr2Fail"]) end
		
		if var_table["pts1Fail"] then set(pts250_1_fail, var_table["pts1Fail"]) end
		if var_table["pts2Fail"] then set(pts250_2_fail, var_table["pts2Fail"]) end
		if var_table["inv115Fail"] then set(inv115_fail, var_table["inv115Fail"]) end
		
		if var_table["bat1Fail"] then set(bat_1_fail, var_table["bat1Fail"]) end
		if var_table["bat2Fail"] then set(bat_2_fail, var_table["bat2Fail"]) end
		if var_table["bat3Fail"] then set(bat_3_fail, var_table["bat3Fail"]) end
		if var_table["bat4Fail"] then set(bat_4_fail, var_table["bat4Fail"]) end
		
		if var_table["bat1KZ"] then set(bat_1_kz, var_table["bat1KZ"]) end
		if var_table["bat2KZ"] then set(bat_2_kz, var_table["bat2KZ"]) end
		if var_table["bat3KZ"] then set(bat_3_kz, var_table["bat3KZ"]) end
		if var_table["bat4KZ"] then set(bat_4_kz, var_table["bat4KZ"]) end

		if var_table["engFail1"] then set(rel_engfai0, var_table["engFail1"]) end
		if var_table["engFail2"] then set(rel_engfai1, var_table["engFail2"]) end
		if var_table["engFail3"] then set(rel_engfai2, var_table["engFail3"]) end
		
		if var_table["engRunTime1"] then set(engine_runtime_1, var_table["engRunTime1"]) end
		if var_table["engRunTime2"] then set(engine_runtime_2, var_table["engRunTime2"]) end
		if var_table["engRunTime3"] then set(engine_runtime_3, var_table["engRunTime3"]) end
		
		if var_table["engFuelPumpFail1"] then set(eng_fuel_pmp_fail_1, var_table["engFuelPumpFail1"]) end
		if var_table["engFuelPumpFail2"] then set(eng_fuel_pmp_fail_2, var_table["engFuelPumpFail2"]) end
		if var_table["engFuelPumpFail3"] then set(eng_fuel_pmp_fail_3, var_table["engFuelPumpFail3"]) end
		
		if var_table["engOilQty1"] then set(engn_oil_qty_1, var_table["engOilQty1"]) end
		if var_table["engOilQty2"] then set(engn_oil_qty_2, var_table["engOilQty2"]) end
		if var_table["engOilQty3"] then set(engn_oil_qty_3, var_table["engOilQty3"]) end
		
		if var_table["engOilQty1"] then set(oil_qty_1, var_table["engOilQty1"]) end
		if var_table["engOilQty2"] then set(oil_qty_2, var_table["engOilQty2"]) end
		if var_table["engOilQty3"] then set(oil_qty_3, var_table["engOilQty3"]) end
			
		if var_table["engOilLeak1"] then set(engn_oil_leak_1, var_table["engOilLeak1"]) end
		if var_table["engOilLeak2"] then set(engn_oil_leak_2, var_table["engOilLeak2"]) end
		if var_table["engOilLeak3"] then set(engn_oil_leak_3, var_table["engOilLeak3"]) end
		
		if var_table["engOilPumpFail1"] then set(rel_oilpmp0, var_table["engOilPumpFail1"]) end
		if var_table["engOilPumpFail2"] then set(rel_oilpmp1, var_table["engOilPumpFail2"]) end
		if var_table["engOilPumpFail3"] then set(rel_oilpmp2, var_table["engOilPumpFail3"]) end
		
		if var_table["engFuelFilterFail1"] then set(rel_eng_lo0, var_table["engFuelFilterFail1"]) end
		if var_table["engFuelFilterFail2"] then set(rel_eng_lo1, var_table["engFuelFilterFail2"]) end
		if var_table["engFuelFilterFail3"] then set(rel_eng_lo2, var_table["engFuelFilterFail3"]) end
		
		if var_table["engStarterFail1"] then set(rel_startr0, var_table["engStarterFail1"]) end
		if var_table["engStarterFail2"] then set(rel_startr1, var_table["engStarterFail2"]) end
		if var_table["engStarterFail3"] then set(rel_startr2, var_table["engStarterFail3"]) end
		
		if var_table["engIgnitFail1"] then set(rel_ignitr0, var_table["engIgnitFail1"]) end
		if var_table["engIgnitFail2"] then set(rel_ignitr1, var_table["engIgnitFail2"]) end
		if var_table["engIgnitFail3"] then set(rel_ignitr2, var_table["engIgnitFail3"]) end
		
		if var_table["engReversFail1"] then set(rel_revers0, var_table["engReversFail1"]) end
		if var_table["engReversFail3"] then set(rel_revers2, var_table["engReversFail3"]) end
		
		if var_table["fuelPumpFail2L"] then set(fuel_pump_2l_fail, var_table["fuelPumpFail2L"]) end
		if var_table["fuelPumpFail2R"] then set(fuel_pump_2r_fail, var_table["fuelPumpFail2R"]) end
		if var_table["fuelPumpFail3L"] then set(fuel_pump_3l_fail, var_table["fuelPumpFail3L"]) end
		if var_table["fuelPumpFail3R"] then set(fuel_pump_3r_fail, var_table["fuelPumpFail3R"]) end
		if var_table["fuelPumpFail1"] then set(fuel_pump_1_fail, var_table["fuelPumpFail1"]) end
		if var_table["fuelPumpFail4"] then set(fuel_pump_4_fail, var_table["fuelPumpFail4"]) end
		
		if var_table["fuelAutoFail"] then set(fuel_auto_fail, var_table["fuelAutoFail"]) end
		if var_table["fuelLvlFail"] then set(fuel_level_fail, var_table["fuelLvlFail"]) end
		if var_table["fuelPorcFail"] then set(fuel_porc_fail, var_table["fuelPorcFail"]) end
		
		if var_table["fuelMeterFail2L"] then set(fuel_meter_2l_fail, var_table["fuelMeterFail2L"]) end
		if var_table["fuelMeterFail2R"] then set(fuel_meter_2r_fail, var_table["fuelMeterFail2R"]) end
		if var_table["fuelMeterFail3L"] then set(fuel_meter_3l_fail, var_table["fuelMeterFail3L"]) end
		if var_table["fuelMeterFail3R"] then set(fuel_meter_3r_fail, var_table["fuelMeterFail3R"]) end
		if var_table["fuelMeterFail1"] then set(fuel_meter_1_fail, var_table["fuelMeterFail1"]) end
		if var_table["fuelMeterFail4"] then set(fuel_meter_4_fail, var_table["fuelMeterFail4"]) end
		if var_table["fuelMeterFailSumm"] then set(fuel_meter_summ, var_table["fuelMeterFailSumm"]) end
		
		if var_table["FF1fail"] then set(fuel_flowmeter_1_fail, var_table["FF1fail"]) end
		if var_table["FF2fail"] then set(fuel_flowmeter_2_fail, var_table["FF2fail"]) end
		if var_table["FF3fail"] then set(fuel_flowmeter_3_fail, var_table["FF3fail"]) end
	
		if var_table["hydroLeak1"] then set(hydro_leak_1, var_table["hydroLeak1"]) end
		if var_table["hydroLeak2"] then set(hydro_leak_2, var_table["hydroLeak2"]) end
		if var_table["hydroLeak3"] then set(hydro_leak_3, var_table["hydroLeak3"]) end
		if var_table["hydroLeak4"] then set(hydro_leak_4, var_table["hydroLeak4"]) end
		
		if var_table["hydroPmpFail11"] then set(hydro_pump_fail_11, var_table["hydroPmpFail11"]) end
		if var_table["hydroPmpFail12"] then set(hydro_pump_fail_12, var_table["hydroPmpFail12"]) end
		if var_table["hydroPmpFail2"] then set(hydro_pump_fail_2, var_table["hydroPmpFail2"]) end
		if var_table["hydroPmpFail3"] then set(hydro_pump_fail_3, var_table["hydroPmpFail3"]) end
		
		if var_table["HydroElecFail2"] then set(hydro_elec_fail_2, var_table["HydroElecFail2"]) end
		if var_table["HydroElecFail3"] then set(hydro_elec_fail_3, var_table["HydroElecFail3"]) end

		
		if var_table["hydroQty1"] then set(gs_qty_1, var_table["hydroQty1"]*0.00001) end
		if var_table["hydroQty2"] then set(gs_qty_2, var_table["hydroQty2"]*0.00001) end
		if var_table["hydroQty3"] then set(gs_qty_3, var_table["hydroQty3"]*0.00001) end
	
		if var_table["tthLeftFail"] then set(tth_left_fail, var_table["tthLeftFail"]) end
		if var_table["tthRightFail"] then set(tth_right_fail, var_table["tthRightFail"]) end

		if var_table["airbleedFail1"] then set(airbleed_1, var_table["airbleedFail1"]) end
		if var_table["airbleedFail2"] then set(airbleed_2, var_table["airbleedFail2"]) end
		if var_table["airbleedFail3"] then set(airbleed_3, var_table["airbleedFail3"]) end
		
		if var_table["psvpFailL"] then set(psvp_fail_left, var_table["psvpFailL"]) end
		if var_table["psvpFailR"] then set(psvp_fail_right, var_table["psvpFailR"]) end
		if var_table["sardValveFail"] then set(sard_valve_fail, var_table["sardValveFail"]) end
		
		if var_table["lanLampFLFail"] then set(lan_lamp_fail_FL, var_table["lanLampFLFail"]) end
		if var_table["lanLampFRFail"] then set(lan_lamp_fail_FR, var_table["lanLampFRFail"]) end
		if var_table["lanLampWLFail"] then set(lan_lamp_fail_WL, var_table["lanLampWLFail"]) end
		if var_table["lanLampWRFail"] then set(lan_lamp_fail_WR, var_table["lanLampWRFail"]) end
		if var_table["navLampFail"] then set(rel_lites_nav, var_table["navLampFail"]) end
		if var_table["beacLampFail"] then set(rel_lites_beac, var_table["beacLampFail"]) end
		
		if var_table["mainAlarmFail"] then set(main_alarm_fail, var_table["mainAlarmFail"]) end
		if var_table["spekAlarmFail"] then set(speaker_alarm_fail, var_table["spekAlarmFail"]) end
				
		if var_table["absuRArollFail"] then set(absu_ra56_roll_fail, var_table["absuRArollFail"]) end
		if var_table["absuRApitchFail"] then set(absu_ra56_pitch_fail, var_table["absuRApitchFail"]) end
		if var_table["absuRAyawFail"] then set(absu_ra56_yaw_fail, var_table["absuRAyawFail"]) end
		
		if var_table["absuAT1Fail"] then set(absu_at1_fail, var_table["absuAT1Fail"]) end
		if var_table["absuAT2Fail"] then set(absu_at2_fail, var_table["absuAT2Fail"]) end
		
		
		if var_table["absuDampRollFail"] then set(absu_damp_roll_fail, var_table["absuDampRollFail"]) end
		if var_table["absuDampPitchFail"] then set(absu_damp_pitch_fail, var_table["absuDampPitchFail"]) end
		if var_table["absuDampYawFail"] then set(absu_damp_yaw_fail, var_table["absuDampYawFail"]) end
		if var_table["absuContrRollFail"] then set(absu_contr_roll_fail, var_table["absuContrRollFail"]) end
		if var_table["absuContrPitchFail"] then set(absu_contr_pitch_fail, var_table["absuContrPitchFail"]) end
		if var_table["absuCalcTogaFail"] then set(absu_calc_toga_fail, var_table["absuCalcTogaFail"]) end
		
		if var_table["absuCalcRollFail"] then set(absu_calc_roll_fail, var_table["absuCalcRollFail"]) end
		if var_table["absuCalcPitchFail"] then set(absu_calc_pitch_fail, var_table["absuCalcPitchFail"]) end
		
		
				
		if var_table["dissFail"] then set(diss_fail, var_table["dissFail"]) end
		if var_table["nvuFail"] then set(nvu_fail, var_table["nvuFail"]) end
		if var_table["radarFail"] then set(radar_fail, var_table["radarFail"]) end
				
		if var_table["ark1fail"] then set(ark1_fail, var_table["ark1fail"]) end
		if var_table["ark2fail"] then set(ark2_fail, var_table["ark2fail"]) end
		if var_table["nav1fail"] then set(nav1fail, var_table["nav1fail"]) end
		if var_table["nav2fail"] then set(nav2fail, var_table["nav2fail"]) end
		if var_table["dme1Fail"] then set(dme1_fail, var_table["dme1Fail"]) end
		if var_table["dme2Fail"] then set(dme2_fail, var_table["dme2Fail"]) end
		if var_table["mrpFail"] then set(mrp_fail, var_table["mrpFail"]) end

		if var_table["tksGaFail1"] then set(tks_ga1_fail, var_table["tksGaFail1"]) end
		if var_table["tksGaFail2"] then set(tks_ga2_fail, var_table["tksGaFail2"]) end
		if var_table["tksKMFail1"] then set(tks_km1_fail, var_table["tksKMFail1"]) end
		if var_table["tksKMFail2"] then set(tks_km2_fail, var_table["tksKMFail2"]) end
		if var_table["tksBgmkFail1"] then set(tks_bgmk1_fail, var_table["tksBgmkFail1"]) end
		if var_table["tksBgmkFail2"] then set(tks_bgmk2_fail, var_table["tksBgmkFail2"]) end
	
		if var_table["rsbnFail"] then set(rsbn_fail, var_table["rsbnFail"]) end
		if var_table["tawsFail"] then set(taws_fail, var_table["tawsFail"]) end
		
		if var_table["alt1fail"] then set(alt_1_fail, var_table["alt1fail"]) end
		if var_table["alt2fail"] then set(alt_2_fail, var_table["alt2fail"]) end
		if var_table["eupFail"] then set(eup_fail, var_table["eupFail"]) end
		
		if var_table["acs1fail"] then set(acs1_fail, var_table["acs1fail"]) end
		if var_table["acs2fail"] then set(acs2_fail, var_table["acs2fail"]) end
		if var_table["acs3fail"] then set(acs3_fail, var_table["acs3fail"]) end
		if var_table["agrFail"] then set(agr_fail, var_table["agrFail"]) end
		if var_table["bkkFail"] then set(bkk_fail, var_table["bkkFail"]) end
		
		if var_table["pitot1Fail"] then set(rel_pitot, var_table["pitot1Fail"]) end
		if var_table["pitot2Fail"] then set(rel_pitot2, var_table["pitot2Fail"]) end
		if var_table["static1Fail"] then set(static_fail_L, var_table["static1Fail"]) end
		if var_table["static2Fail"] then set(static_fail_R, var_table["static2Fail"]) end
		if var_table["svsFail"] then set(svs_fail, var_table["svsFail"]) end
		
		
		if var_table["mgvFail"] then set(mgv_fail, var_table["mgvFail"]) end
		if var_table["pkp1fail"] then set(pkp1fail, var_table["pkp1fail"]) end
		if var_table["pkp2fail"] then set(pkp2fail, var_table["pkp2fail"]) end
		if var_table["rv1fail"] then set(rv1_fail, var_table["rv1fail"]) end
		if var_table["rv2fail"] then set(rv2_fail, var_table["rv2fail"]) end
		if var_table["uapFail"] then set(uap_fail, var_table["uapFail"]) end
		if var_table["uapWarnFail"] then set(uap_warn_fail, var_table["uapWarnFail"]) end
		if var_table["uvid15fail"] then set(uvid_fail, var_table["uvid15fail"]) end
		if var_table["vvi1fail"] then set(vvi1_fail, var_table["vvi1fail"]) end
		if var_table["vvi2fail"] then set(vvi2_fail, var_table["vvi2fail"]) end
		if var_table["srdpress"] then set(srd_press, var_table["srdpress"]) end
		if var_table["srd2press"] then set(srd_press_2, var_table["srd2press"]) end
		-- if var_table["srddiff"] then set(srd_diff, var_table["srddiff"]) end
		-- if var_table["srd2diff"] then set(srd_diff_2, var_table["srd2diff"]) end
		-- if var_table["srdspd"] then set(srd_spd, var_table["srdspd"]) end
		-- if var_table["srd2spd"] then set(srd_spd_2, var_table["srd2spd"]) end
		if var_table["rsbnone"] then set(rsbn_one, var_table["rsbnone"]) end
		if var_table["rsbnten"] then set(rsbn_ten, var_table["rsbnten"]) end
		if var_table["nwsset"] then set(nws, var_table["nwsset"]) end
		if var_table["vfrsqwk"] then set(codevfr, var_table["vfrsqwk"]) end
		if var_table["puneedle"] then set(pu_needle, var_table["puneedle"]) end
		if var_table["psvpmode"] then set(psvp, var_table["psvpmode"]) end
		if var_table["uaneedle"] then set(auasp, var_table["uaneedle"]) end
		if var_table["rsbnaz"] then set(azimuth_init,var_table["rsbnaz"]) end
		if var_table["rsbnd"] then set(dist_init,var_table["rsbnd"]) end
		if var_table["tempsel1"] then set(temp_1,var_table["tempsel1"]) end
		if var_table["tempsel2"] then set(temp_2,var_table["tempsel2"]) end
		if var_table["tempsel3"] then set(temp_3,var_table["tempsel3"]) end
		if var_table["tempsel4"] then set(temp_4,var_table["tempsel4"]) end
		if var_table["tempsel5"] then set(temp_5,var_table["tempsel5"]) end
		if var_table["uk"] then set(map_angle,var_table["uk"]/10) end
		if var_table["stab"] then set(stab_set,var_table["stab"]) end
		if var_table["navsel"] then set(nav_select,var_table["navsel"]) end
		if var_table["obsl"] then set(obs_L,var_table["obsl"]) end
		if var_table["obsr"] then set(obs_R,var_table["obsr"]) end
		if var_table["sdvol1"] then set(sd67_vol_1,var_table["sdvol1"]/10) end
		if var_table["sdvol2"] then set(sd67_vol_2,var_table["sdvol2"]/10) end
		savefile:close()
		print("reading last state: OK")
	else
		print("error reading state file")
	end
	
	
	
	return true
	
	
end





local start_counter = 0
local save_counter = 0
local fileReaded = false


function update()
    

	local passed = get(frame_time)
	start_counter = start_counter + passed
	save_counter = save_counter + passed
	

	-- read the file once after open ACF
	if start_counter >2 and not fileReaded then
		liv=get(livpath)
		if string.len(liv)>0 then
			ind=string.find(liv,"liveries")
			liv=string.sub(liv,ind+8)
			stateFileName = path..'/liveries'..liv.."saved_state.ini"
			read_file() 
			fileReaded = true
			if get(eng_rpm1)<10 then	
				set(cargo1,0)
				set(cargo2,0)
				set(kitchen_load,0)
				set(pax1,0) 
				set(pax2,0) 
				set(pax3,0) 
				set(pax4,0) 
				set(pax5,0) 
			end
		end
	end
	
	-- save the file
	if (save_counter > 30 or get(save_state) == 1) and get(slider50)>0 and string.len(liv)>0 then
		write_file()
		save_counter = 0
		set(save_state, 0) -- reset saving state dataref
	end
	

	--set(dbs,stateFileName)
end

--[[
function onAvionicsDone()
	write_file()
	print("state file saved")
end
--]]























