function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end


T154_slow_vario	= find_dataref("sim/custom/t154cfg/slow_vario")
T154_brake_heat	= find_dataref("sim/custom/t154cfg/brake_heat")
T154_ppd_icing	= find_dataref("sim/custom/t154cfg/ppd_icing")
T154_door_icing	= find_dataref("sim/custom/t154cfg/door_icing")

simDR_failures = find_dataref("tu154b2/custom/failures/failures_enabled")
simDR_rpm_low_1 = find_dataref("tu154b2/custom/gauges/engine/rpm_low_1")
simDR_rpm_low_2 = find_dataref("tu154b2/custom/gauges/engine/rpm_low_2")
simDR_rpm_low_3 = find_dataref("tu154b2/custom/gauges/engine/rpm_low_3")
simDR_rpm_high_1 = find_dataref("tu154b2/custom/gauges/engine/rpm_high_1")
simDR_rpm_high_2 = find_dataref("tu154b2/custom/gauges/engine/rpm_high_2")
simDR_rpm_high_3 = find_dataref("tu154b2/custom/gauges/engine/rpm_high_3")
simDR_perep_1 = find_dataref("tu154b2/custom/lights/engines/eng1_bypass_valve")
simDR_perep_2 = find_dataref("tu154b2/custom/lights/engines/eng2_bypass_valve")
simDR_perep_3 = find_dataref("tu154b2/custom/lights/engines/eng3_bypass_valve")
simDR_door1_anim = find_dataref("tu154b2/custom/anim/pax_door_1")
simDR_door2_anim = find_dataref("tu154b2/custom/anim/pax_door_2")
simDR_door3_anim = find_dataref("tu154b2/custom/anim/pax_door_3")
simDR_door_cargo1_anim = find_dataref("tu154b2/custom/anim/cargo_1")
simDR_door_cargo2_anim = find_dataref("tu154b2/custom/anim/cargo_2")
simDR_door_fan_temp = find_dataref("tu154b2/custom/bleed/door_heat_tube_t")
simDR_oat  = find_dataref("sim/cockpit2/temperature/outside_air_temp_deg")
simDR_altitude = find_dataref("sim/flightmodel/position/y_agl")
simDR_brake_l = find_dataref("sim/cockpit2/controls/left_brake_ratio") 
simDR_brake_r = find_dataref("sim/cockpit2/controls/right_brake_ratio") 
simDR_gs = find_dataref("sim/flightmodel/position/groundspeed")
simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all") 
simDR_gear1 = find_dataref("sim/flightmodel/movingparts/gear1def") 
simDR_gear2 = find_dataref("sim/flightmodel/movingparts/gear2def") 
simDR_gear3 = find_dataref("sim/flightmodel/movingparts/gear3def") 
simDR_gear_fan = find_dataref("tu154b2/custom/switchers/eng/gear_fan")  
simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")
simDR_bus27left = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_passed = find_dataref("sim/operation/misc/frame_rate_period")
simDR_gear_blocks =  find_dataref("tu154b2/custom/anim/gear_blocks")  
simDR_slat_ratio = find_dataref("sim/flightmodel/controls/slatrat")
simDR_day_night_lit = find_dataref("tu154b2/custom/lights/day_night_set")
simDR_vvi_left = find_dataref("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
simDR_vvi_right = find_dataref("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
simDR_var_left = find_dataref("tu154b2/custom/switchers/ovhd/var_left")
simDR_var_right = find_dataref("tu154b2/custom/switchers/ovhd/var_right")
simDR_gns430_lit = find_dataref("tu154b2/custom/lights/gns430_lit")
simDR_start_apu = find_dataref("tu154b2/custom/lights/apu/start_apu")
simDR_lamp_test_apu =  find_dataref("tu154b2/custom/buttons/lamp_test_apu")
simDR_qfe = find_dataref("sim/weather/barometer_current_inhg")   
simDR_but_sound = find_dataref("tu154b2/custom/buttons/srpbz/but_down")

simDR_vna33_1 = find_dataref("tu154b2/custom/lights/engines/eng1_vna33")
simDR_vna33_2 = find_dataref("tu154b2/custom/lights/engines/eng2_vna33")
simDR_vna33_3 = find_dataref("tu154b2/custom/lights/engines/eng3_vna33")
simDR_fuel_buzzer = find_dataref("tu154b2/custom/switchers/eng/fuel_buzzer")
simDR_fuel_buzzer_cap = find_dataref("tu154b2/custom/switchers/eng/fuel_buzzer_cap")

simDR_icing = find_dataref("sim/flightmodel/failures/window_ice_unheated")


-- --- elevator correction
-- simDR_elev_crat = find_dataref("sim/aircraft/controls/acf_elev_crat")
-- simDR_elev_anim_l = find_dataref("tu154b2/custom/anim/elev_anim_L")
-- simDR_elev_anim_r = find_dataref("tu154b2/custom/anim/elev_anim_R")
-- simDR_stab_deg = find_dataref("sim/flightmodel2/controls/stabilizer_deflection_degrees")

-- local thr_elev_crat_corr = 0
-- local elev_hr_crat_corr = 0
-- local elev_stab_crat_corr = 0
-- local elev_speed_crat_corr = 0
-- local elev_cg_crat_corr = 0


----

----- show_actual_fuel

simDR_load_panel = find_dataref("tu154b2/custom/panels/show_load_panel")

-----

-- vyzov bp button
simDR_lit_test_front = find_dataref("tu154b2/custom/buttons/lamp_test_front")
simDR_lit_stuard_call = find_dataref("tu154b2/custom/lights/stuard_call")
slider_on_8 = find_dataref("sim/cockpit2/switches/custom_slider_on[7]")
vyzov_bp_ready = find_dataref("tu154b2/custom/vyzov_bp_ready")
vyzov_bp_button1 = deferred_dataref("sim/custom/vyzov_bp_button1", "number")
vyzov_bp_button2 = deferred_dataref("sim/custom/vyzov_bp_button2", "number")
fuel_press_1 = deferred_dataref("sim/custom/gauges/eng/fuel_press_1_new", "number")
fuel_press_2 = deferred_dataref("sim/custom/gauges/eng/fuel_press_2_new", "number")
fuel_press_3 = deferred_dataref("sim/custom/gauges/eng/fuel_press_3_new", "number")
rpm1_low = deferred_dataref("sim/custom/gauges/engine/rpm_low_1_new", "number")
rpm2_low = deferred_dataref("sim/custom/gauges/engine/rpm_low_2_new", "number")
rpm3_low = deferred_dataref("sim/custom/gauges/engine/rpm_low_3_new", "number")
fuel_load_total = deferred_dataref("sim/custom/fuel_load_total", "number")
fuel_req_total = deferred_dataref("sim/custom/fuel_req", "number")
cargo_req =  deferred_dataref("sim/custom/cargo_req", "number")
cargo_load = deferred_dataref("sim/custom/cargo_load", "number")
pax_req =  deferred_dataref("sim/custom/pax_req", "number")
pax_load =  deferred_dataref("sim/custom/pax_load", "number")
fueling_cpmlt = deferred_dataref("sim/custom/fueling_cpmlt", "number")
yoke_height =  deferred_dataref("sim/custom/yoke_height", "number")
vvi_left =  deferred_dataref("sim/custom/gauges/vvi_left_new", "number")
vvi_right =  deferred_dataref("sim/custom/gauges/vvi_right_new", "number")
msrp_cap1 = deferred_dataref("sim/custom/switchers/eng/msrp_cap_1", "number")
msrp_cap2 = deferred_dataref("sim/custom/switchers/eng/msrp_cap_2", "number")
msrp_cap3 = deferred_dataref("sim/custom/switchers/eng/msrp_cap_3", "number")

-- start_smooth load

start_loading =  deferred_dataref("sim/custom/start_smooth_loading", "number")
optimize = deferred_dataref("sim/custom/optimize", "number")
local vyzov_bp_timer = 0




simDR_light_fuel_pump_1 = find_dataref("tu154b2/custom/lights/small/fuel_pump_1")
simDR_light_fuel_pump_2 = find_dataref("tu154b2/custom/lights/small/fuel_pump_2")
simDR_light_fuel_pump_3 = find_dataref("tu154b2/custom/lights/small/fuel_pump_3")
simDR_light_fuel_pump_4 = find_dataref("tu154b2/custom/lights/small/fuel_pump_4")
simDR_light_fuel_pump_10 = find_dataref("tu154b2/custom/lights/small/fuel_pump_10")
simDR_light_fuel_pump_11 = find_dataref("tu154b2/custom/lights/small/fuel_pump_11")
simDR_light_fuel_pump_left_5 = find_dataref("tu154b2/custom/lights/small/fuel_pump_left_5")
simDR_light_fuel_pump_left_6 = find_dataref("tu154b2/custom/lights/small/fuel_pump_left_6")
simDR_light_fuel_pump_left_7 = find_dataref("tu154b2/custom/lights/small/fuel_pump_left_7")
simDR_light_fuel_pump_left_8 = find_dataref("tu154b2/custom/lights/small/fuel_pump_left_8")
simDR_light_fuel_pump_left_9 = find_dataref("tu154b2/custom/lights/small/fuel_pump_left_9")
simDR_light_fuel_pump_right_5 = find_dataref("tu154b2/custom/lights/small/fuel_pump_right_5")
simDR_light_fuel_pump_right_6 = find_dataref("tu154b2/custom/lights/small/fuel_pump_right_6")
simDR_light_fuel_pump_right_7 = find_dataref("tu154b2/custom/lights/small/fuel_pump_right_7")
simDR_light_fuel_pump_right_8 = find_dataref("tu154b2/custom/lights/small/fuel_pump_right_8")
simDR_light_fuel_pump_right_9 = find_dataref("tu154b2/custom/lights/small/fuel_pump_right_9")
simDR_light_fuel_pump_left_2_fail = find_dataref("tu154b2/custom/lights/small/fuel_tank2_left_fail")
simDR_light_fuel_pump_right_2_fail = find_dataref("tu154b2/custom/lights/small/fuel_tank2_right_fail")
simDR_light_fuel_pump_left_3_fail = find_dataref("tu154b2/custom/lights/small/fuel_tank3_left_fail")
simDR_light_fuel_pump_right_3_fail = find_dataref("tu154b2/custom/lights/small/fuel_tank3_right_fail")
simDR_light_test_hydro = find_dataref("tu154b2/custom/buttons/lamp_test_hydro")
simDR_light_test_eng = find_dataref("tu154b2/custom/buttons/lamp_test_engines")
simDR_oilmeter_1_lit = find_dataref("tu154b2/custom/lights/small/oil_meter_1")
simDR_oilmeter_2_lit = find_dataref("tu154b2/custom/lights/small/oil_meter_2")
simDR_oilmeter_3_lit = find_dataref("tu154b2/custom/lights/small/oil_meter_3")
simDR_bypass_vlv_1_lit = find_dataref("tu154b2/custom/lights/engines/eng1_bypass_valve")
simDR_bypass_vlv_2_lit = find_dataref("tu154b2/custom/lights/engines/eng2_bypass_valve")
simDR_bypass_vlv_3_lit = find_dataref("tu154b2/custom/lights/engines/eng3_bypass_valve")
simDR_rpm_thr = find_dataref("sim/cockpit2/engine/actuators/throttle_ratio")
T154_kontur_90th = find_dataref("sim/custom/b2/kontur_90th")

-- simDR_brake_heat_left = find_dataref("tu154b2/custom/failures/brake_heat_left")
-- simDR_brake_heat_right = find_dataref("tu154b2/custom/failures/brake_heat_right")
simDR_fuel_tanks = find_dataref("sim/flightmodel/weight/m_fuel") 
simDR_fuel_total = find_dataref("sim/flightmodel/weight/m_fuel_total") 
simDR_fuel_tank1 = find_dataref("sim/flightmodel/weight/m_fuel1") 
simDR_fuel_tank2 = find_dataref("sim/flightmodel/weight/m_fuel2") 
simDR_fuel_tank3 = find_dataref("sim/flightmodel/weight/m_fuel3") 
simDR_payload_set = find_dataref("sim/custom/payload/load_slow_btn_new")
simDR_fast_load_btn = find_dataref("tu154b2/custom/payload/load_fast_btn") 
simDR_payload = find_dataref("sim/flightmodel/weight/m_fixed")
simDR_payload_cargo1 = find_dataref("tu154b2/custom/payload/cargo_1") 
simDR_payload_cargo2 = find_dataref("tu154b2/custom/payload/cargo_2")
simDR_payload_cargo3 = find_dataref("tu154b2/custom/payload/kitchens")
simDR_payload_cargo4 = find_dataref("tu154b2/custom/payload/various")
simDR_payload_pax1 = find_dataref("tu154b2/custom/payload/zone_1")
simDR_payload_pax2 = find_dataref("tu154b2/custom/payload/zone_2")
simDR_payload_pax3 = find_dataref("tu154b2/custom/payload/zone_4")
simDR_payload_pax4 = find_dataref("tu154b2/custom/payload/zone_5")
simDR_payload_pax5 = find_dataref("tu154b2/custom/payload/zone_6")
simDR_payload_crew = find_dataref("tu154b2/custom/payload/crew_num")
simDR_payload_cabin = find_dataref("tu154b2/custom/payload/cabin_num")
simDR_fuel_press_1 = find_dataref("tu154b2/custom/gauges/eng/fuel_press_1")
simDR_fuel_press_2 = find_dataref("tu154b2/custom/gauges/eng/fuel_press_2")
simDR_fuel_press_3 = find_dataref("tu154b2/custom/gauges/eng/fuel_press_3")



simDR_cg = find_dataref("sim/flightmodel/misc/cgz_ref_to_default")
simDR_tank1 = find_dataref("tu154b2/custom/payload/tank_1")
simDR_tank2_l = find_dataref("tu154b2/custom/payload/tank_2L")
simDR_tank2_r = find_dataref("tu154b2/custom/payload/tank_2R")
simDR_tank3_l = find_dataref("tu154b2/custom/payload/tank_3L")
simDR_tank3_r = find_dataref("tu154b2/custom/payload/tank_3R")
simDR_tank4 = find_dataref("tu154b2/custom/payload/tank_4")
simDR_fuel_tanker = find_dataref("tu154b2/custom/anim/fuel_tanker_call")
simDR_fuel_tanker_anim = find_dataref("tu154b2/custom/anim/fuel_tanker")
simDR_catering = find_dataref("tu154b2/custom/anim/catering_call")
simDR_ladder1 = find_dataref("tu154b2/custom/anim/ladder_1_call")
simDR_ladder2 = find_dataref("tu154b2/custom/anim/ladder_2_call")
simDR_door1 = find_dataref("sim/cockpit2/switches/custom_slider_on[4]")
simDR_door2 = find_dataref("sim/cockpit2/switches/custom_slider_on[5]")
simDR_door_cargo1 = find_dataref("sim/cockpit2/switches/custom_slider_on[2]")
simDR_door_cargo2 = find_dataref("sim/cockpit2/switches/custom_slider_on[3]")
simDR_door_kitchen = find_dataref("sim/cockpit2/switches/custom_slider_on[6]")
--simDR_catering_anim = find_dataref("tu154b2/custom/anim/catering_tanker")

simDR_cg_pos_act = find_dataref("tu154b2/custom/misc/cg_pos_actual")
simDR_cg_pos_met = find_dataref("sim/flightmodel/misc/cgz_ref_to_default")
simDR_cg_pos_to = find_dataref("sim/custom/t154_efb/cax_to")

-- ppd icing fix --

-- simDR_ppd1 = find_dataref("tu154b2/custom/switchers/ovhd/pitot_heat_1")
-- simDR_ppd2 = find_dataref("tu154b2/custom/switchers/ovhd/pitot_heat_2")
-- simDR_ppd3 = find_dataref("tu154b2/custom/switchers/ovhd/pitot_heat_3")
-- simDR_percip_on_craft = find_dataref("sim/weather/precipitation_on_aircraft_ratio")
-- simDR_speed_svs = find_dataref("tu154b2/custom/svs/true_airspeed")

-- simDR_ppd1_fail = find_dataref("tu154b2/custom/failures/pitot1")
-- simDR_ppd2_fail = find_dataref("tu154b2/custom/failures/pitot2")
-- simDR_ppd3_fail = find_dataref("tu154b2/custom/antiice/ppd_3_heat_fail")

-- simDR_kus_left = find_dataref("tu154b2/custom/gauges/speed/kus_ias_left")
-- simDR_tas_left = find_dataref("tu154b2/custom/gauges/speed/kus_tas_left")
-- simDR_ias_left = find_dataref("tu154b2/custom/gauges/speed/ias_left")
-- simDR_ias_y_left = find_dataref("tu154b2/custom/gauges/speed/ias_yellow_left")
-- simDR_kus_right = find_dataref("tu154b2/custom/gauges/speed/kus_ias_right")
-- simDR_tas_right = find_dataref("tu154b2/custom/gauges/speed/kus_tas_right")
-- simDR_ias_right = find_dataref("tu154b2/custom/gauges/speed/ias_right")
-- simDR_ias_y_right = find_dataref("tu154b2/custom/gauges/speed/ias_yellow_right")

simDR_external_view = find_dataref("sim/graphics/view/view_is_external")
simDR_door_cockpit_anim = find_dataref("tu154b2/custom/anim/cockpit_door")
simDR_head_z = find_dataref("sim/graphics/view/pilots_head_z")


simDR_scp = find_dataref("scp/api/ismaster")

----



--- refuel schseet 

simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")

refuel_panel_cap = deferred_dataref("sim/custom/t154gnd/refuel_panel_cap", "number")
rp_lit_sw = deferred_dataref("sim/custom/t154gnd/rp_lit_sw", "number")
rp_lit = deferred_dataref("sim/custom/t154gnd/rp_lit", "number")
rp_main_sw = deferred_dataref("sim/custom/t154gnd/rp_main_sw", "number")
rp_test_push = deferred_dataref("sim/custom/t154gnd/rp_test_push", "number")
rp_azs_tank4 = deferred_dataref("sim/custom/t154gnd/rp_azs_tank4", "number")
rp_azs_tank1 = deferred_dataref("sim/custom/t154gnd/rp_azs_tank1", "number") 
rp_azs_tank2L = deferred_dataref("sim/custom/t154gnd/rp_azs_tank2L", "number") 
rp_azs_tank3L = deferred_dataref("sim/custom/t154gnd/rp_azs_tank3L", "number") 
rp_azs_tank2R = deferred_dataref("sim/custom/t154gnd/rp_azs_tank2R", "number") 
rp_azs_tank3R = deferred_dataref("sim/custom/t154gnd/rp_azs_tank3R", "number") 
rp_main_mode = deferred_dataref("sim/custom/t154gnd/rp_main_mode", "number") 
rp_4t_mode = deferred_dataref("sim/custom/t154gnd/rp_4t_mode", "number") 



rp_tank4_lamp = deferred_dataref("sim/custom/t154gnd/rp_tank4_lamp", "number")
rp_tank1_lamp = deferred_dataref("sim/custom/t154gnd/rp_tank1_lamp", "number")
rp_tank2L_lamp = deferred_dataref("sim/custom/t154gnd/rp_tank2L_lamp", "number")
rp_tank3L_lamp = deferred_dataref("sim/custom/t154gnd/rp_tank3L_lamp", "number")
rp_tank2R_lamp = deferred_dataref("sim/custom/t154gnd/rp_tank2R_lamp", "number")
rp_tank3R_lamp = deferred_dataref("sim/custom/t154gnd/rp_tank3R_lamp", "number")
rp_to_azs_lamp = deferred_dataref("sim/custom/t154gnd/rp_to_azs_lamp", "number")

efb_page = find_dataref("sim/custom/t154_efb/page")

-- load stations
simDR_cargo1= find_dataref("sim/flightmodel/weight/m_stations[0]")
simDR_cargo2= find_dataref("sim/flightmodel/weight/m_stations[1]")
simDR_kitchen_load= find_dataref("sim/flightmodel/weight/m_stations[2]")
simDR_pax1= find_dataref("sim/flightmodel/weight/m_stations[4]")
simDR_pax2= find_dataref("sim/flightmodel/weight/m_stations[5]")
simDR_pax3= find_dataref("sim/flightmodel/weight/m_stations[6]")
simDR_pax4= find_dataref("sim/flightmodel/weight/m_stations[7]")
simDR_pax5= find_dataref("sim/flightmodel/weight/m_stations[8]")

local rp_refuel_ready = 0
local rp_total_fuel_load = 0
local rp_4t_fuel_load = 0
local rp_test_push_count = 0



local head_z=0
local ias_y_left_corr = 0
local kus_left_corr = 0
local tas_left_corr = 0
local ias_left_corr = 0
local ias_y_right_corr = 0
local kus_right_corr = 0
local tas_right_corr = 0
local ias_right_corr = 0
local ppd_icing1 = 0
local ppd_icing2 = 0
local ppd_icing3 = 0
local ppd1_fail_was = 0
local ppd2_fail_was = 0
local ppd3_fail_was = 0

-- end ppd --



local rpm_delta_result = 0
local alt_coeff = 0
local vvi_left_test = 0
local vvi_left_ms = 0
local vvi_left_delta = 0
local vvi_right_test = 0
local vvi_right_ms = 0
local vvi_right_delta = 0
local slat_ratio_loc = 0
local slat_ratio_delta = 0
local cargo1_cmplt = 0
local cargo2_cmplt = 0
local kitchen_cmplt = 0
local pax_cmplt = 0
local pax1_cmplt = 0
local pax2_cmplt = 0
local pax3_cmplt = 0
local pax4_cmplt = 0
local pax5_cmplt = 0
local payload_loc_req = 0
local cg_loc_req = 0
local cg_loc = 0
local payload_loc = 0
local loading_cmplt = 0
local fueling_cpmlt_23 = 0
local refueler_set = 0
local refuel_refueler = 0
local refuel_refueler_set = 0
local fuel_was_set = 0
local start_refueling = 0
local tank1 = 0
local tank2_l = 0
local tank2_r = 0
local tank3_l = 0
local tank3_r = 0
local tank4 = 0
local tank1_req = 0
local tank2_l_req = 0
local tank2_r_req = 0
local tank3_l_req = 0
local tank3_r_req = 0
local tank4_req = 0
local tank1_cmplt = 0
local tank2_r_cmplt = 0
local tank2_l_cmplt = 0
local tank3_r_cmplt = 0
local tank3_l_cmplt = 0
local tank4_cmplt = 0
local brake_temp = 0
local bus27 = 0
local bus36 = 0
local pump_test = 0
local gears = 0
local doors_icing = 0
local rpm1_low_loc = 0
local rpm2_low_loc = 0
local rpm3_low_loc = 0
local rpm1_correct = 0
local rpm2_correct = 0
local rpm3_correct = 0
local rpm1_correct_loc = 0
local rpm2_correct_loc = 0
local rpm3_correct_loc = 0
local brake_temp_loc_l = 0
local brake_temp_loc_r = 0
local thro_1 = 0
local thro_2 = 0
local thro_3 = 0
local oat_delta = 0
local temp_abs = 0
local baro_delta = 0
local rpm_delta = 0
local fuel_press_1_corr = 0
local fuel_press_2_corr = 0
local fuel_press_3_corr = 0


function rp_refueling()

    if simDR_gs > 30 then
        if refuel_panel_cap > 0.03 then
            refuel_panel_cap = 0.03
        end
    elseif refuel_panel_cap == 0.03 then
        refuel_panel_cap = 1
    end

    if rp_main_sw > 0 then
        if rp_main_mode == 0 then
            tank1_req = 3300*rp_azs_tank1
            tank2_r_req = 2060*rp_azs_tank2R
            tank2_l_req = 2060*rp_azs_tank2L
            tank3_r_req = 3785*rp_azs_tank3R
            tank3_l_req = 3785*rp_azs_tank3L
            tank4_req = 0
        elseif rp_main_mode == 1 then
            tank1_req = 3300*rp_azs_tank1 
            tank2_r_req = 3310*rp_azs_tank2R
            tank2_l_req = 3310*rp_azs_tank2L
            tank3_r_req = 5035*rp_azs_tank3R
            tank3_l_req = 5035*rp_azs_tank3L
            tank4_req = 0
        elseif rp_main_mode == 2 then
            tank1_req = 3300*rp_azs_tank1
            tank2_r_req = 5420*rp_azs_tank2R
            tank2_l_req = 5420*rp_azs_tank2L
            tank3_r_req = 5405*rp_azs_tank3R
            tank3_l_req = 5405*rp_azs_tank3L
            tank4_req = 0
        elseif rp_main_mode == 3 then
            tank1_req = 3300*rp_azs_tank1
            tank2_r_req = 9500*rp_azs_tank2R
            tank2_l_req = 9500*rp_azs_tank2L
            tank3_r_req = 5405*rp_azs_tank3R
            tank3_l_req = 5405*rp_azs_tank3L
            if rp_4t_mode == 0 then
                tank4_req = 2000*rp_azs_tank4
            elseif rp_4t_mode == 1 then
                tank4_req = 4000*rp_azs_tank4
            elseif rp_4t_mode == 2 then
                tank4_req = 6595*rp_azs_tank4
            end
        end
        simDR_tank1 = tank1_req
        simDR_tank2_r = tank2_r_req
        simDR_tank2_l = tank2_l_req
        simDR_tank3_r = tank3_r_req
        simDR_tank3_l = tank3_l_req
        simDR_tank4 = tank4_req
    end

    if efb_page == 11 and rp_main_sw > 0 then
        efb_page = 12
    end
    
    if simDR_36vl+simDR_36vr > 5 and simDR_fuel_tanker_anim == 0 and rp_main_sw > 0 then
        rp_refuel_ready = 1
    else
        rp_refuel_ready = 0
    end

    if bus27 > 0 then
        if rp_lit_sw > 0 then
            rp_lit = 1
        else
            rp_lit = 0
        end
    else
        rp_lit = 0
    end

    if simDR_36vl+simDR_36vr > 5 and rp_main_sw > 0 then
        if rp_azs_tank1+rp_azs_tank4+rp_azs_tank2L+rp_azs_tank2R+rp_azs_tank3L+rp_azs_tank3R > 0 then
            if rp_to_azs_lamp < 1 then
                rp_to_azs_lamp = rp_to_azs_lamp + 10*SIM_PERIOD
            end
        else
            if rp_to_azs_lamp > 0 then
                rp_to_azs_lamp = rp_to_azs_lamp - 10*SIM_PERIOD
            end
        end
        if rp_test_push < 1 then
            rp_test_push_count = 0
            if simDR_fuel_tanks[2] < tank2_r_req then
                if rp_tank2R_lamp < 1 then
                    rp_tank2R_lamp = rp_tank2R_lamp + 10*SIM_PERIOD
                end
            else
                if rp_tank2R_lamp > 0 then
                    rp_tank2R_lamp = rp_tank2R_lamp - 10*SIM_PERIOD
                end
            end
            if simDR_fuel_tanks[3] < tank2_l_req then
                if rp_tank2L_lamp < 1 then
                    rp_tank2L_lamp = rp_tank2L_lamp + 10*SIM_PERIOD
                end
            else
                if rp_tank2L_lamp > 0 then
                    rp_tank2L_lamp = rp_tank2L_lamp - 10*SIM_PERIOD
                end
            end
            if simDR_fuel_tanks[4] < tank3_r_req then
                if rp_tank3R_lamp < 1 then
                    rp_tank3R_lamp = rp_tank3R_lamp + 10*SIM_PERIOD
                end
            else
                if rp_tank3R_lamp > 0 then
                    rp_tank3R_lamp = rp_tank3R_lamp - 10*SIM_PERIOD
                end
            end 
            if simDR_fuel_tanks[5] < tank3_l_req then
                if rp_tank3L_lamp < 1 then
                    rp_tank3L_lamp = rp_tank3L_lamp + 10*SIM_PERIOD
                end
            else
                if rp_tank3L_lamp > 0 then
                    rp_tank3L_lamp = rp_tank3L_lamp - 10*SIM_PERIOD
                end
            end
            if simDR_fuel_tanks[1] < tank4_req then
                if rp_tank4_lamp < 1 then
                    rp_tank4_lamp = rp_tank4_lamp + 10*SIM_PERIOD
                end
            else
                if rp_tank4_lamp > 0 then
                    rp_tank4_lamp = rp_tank4_lamp - 10*SIM_PERIOD
                end
            end
            if simDR_fuel_tanks[0] < tank1_req then
                if rp_tank1_lamp < 1 then
                    rp_tank1_lamp = rp_tank1_lamp + 10*SIM_PERIOD
                end
            else
                if rp_tank1_lamp > 0 then
                    rp_tank1_lamp = rp_tank1_lamp - 10*SIM_PERIOD
                end
            end
        else
            if rp_test_push_count < 6 then
                rp_test_push_count = rp_test_push_count + 3 *SIM_PERIOD
            end
            if rp_test_push_count < 2 then
                if rp_tank2R_lamp > 0 then
                    rp_tank2R_lamp = rp_tank2R_lamp - 10*SIM_PERIOD
                end
                if rp_tank2L_lamp > 0 then
                    rp_tank2L_lamp = rp_tank2L_lamp - 10*SIM_PERIOD
                end
                if rp_tank3R_lamp > 0 then
                    rp_tank3R_lamp = rp_tank3R_lamp - 10*SIM_PERIOD
                end
                if rp_tank3L_lamp > 0 then
                    rp_tank3L_lamp = rp_tank3L_lamp - 10*SIM_PERIOD
                end
                if rp_tank1_lamp > 0 then
                    rp_tank1_lamp = rp_tank1_lamp - 10*SIM_PERIOD
                end
                if rp_tank4_lamp > 0 then
                    rp_tank4_lamp = rp_tank4_lamp - 10*SIM_PERIOD
                end
            else
                if simDR_fuel_tanks[2] >= tank2_r_req then
                    if rp_tank2R_lamp < 1 then
                        rp_tank2R_lamp = rp_tank2R_lamp + 10*SIM_PERIOD
                    end
                end
                if simDR_fuel_tanks[3] >= tank2_l_req then
                    if rp_tank2L_lamp < 1 then
                        rp_tank2L_lamp = rp_tank2L_lamp + 10*SIM_PERIOD
                    end
                end
                if simDR_fuel_tanks[4] >= tank3_r_req then
                    if rp_tank3R_lamp < 1 then
                        rp_tank3R_lamp = rp_tank3R_lamp + 10*SIM_PERIOD
                    end
                end 
                if simDR_fuel_tanks[5] >= tank3_l_req then
                    if rp_tank3L_lamp < 1 then
                        rp_tank3L_lamp = rp_tank3L_lamp + 10*SIM_PERIOD
                    end
                end
                if simDR_fuel_tanks[1] >= tank4_req then
                    if rp_tank4_lamp < 1 then
                        rp_tank4_lamp = rp_tank4_lamp + 10*SIM_PERIOD
                    end
                end
                if simDR_fuel_tanks[0] >= tank1_req then
                    if rp_tank1_lamp < 1 then
                        rp_tank1_lamp = rp_tank1_lamp + 10*SIM_PERIOD
                    end
                end
            end
        end
    else
        rp_tank4_lamp = 0
        rp_tank1_lamp = 0
        rp_tank2L_lamp = 0
        rp_tank3L_lamp = 0
        rp_tank2R_lamp = 0
        rp_tank3R_lamp = 0
        rp_to_azs_lamp = 0
    end





    if rp_refuel_ready > 0 then
        if simDR_fuel_tanks[0] < tank1_req then
            simDR_fuel_tanks[0] = simDR_fuel_tanks[0] +13.333 *simDR_passed
        else
            if simDR_fuel_tanks[5] < 1725 and simDR_fuel_tanks[4] < 1725 and simDR_fuel_tanks[5] < tank3_l_req and simDR_fuel_tanks[4] < tank3_r_req then
                if simDR_fuel_tanks[5] < tank3_l_req then
                    if simDR_fuel_tanks[4] < 1725 then
                        simDR_fuel_tanks[5] = simDR_fuel_tanks[5] +6.6665 *simDR_passed
                    else
                        simDR_fuel_tanks[5] = simDR_fuel_tanks[5] +13.333 *simDR_passed
                    end
                end
                if simDR_fuel_tanks[4] < tank3_r_req then
                    if simDR_fuel_tanks[5] < 1725 then
                        simDR_fuel_tanks[4] = simDR_fuel_tanks[4] +6.6665 *simDR_passed
                    else
                        simDR_fuel_tanks[4] = simDR_fuel_tanks[4] +13.333 *simDR_passed
                    end
                end
            else
                if simDR_fuel_tanks[5] < tank3_l_req then
                    simDR_fuel_tanks[5] = simDR_fuel_tanks[5] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
                end
                if simDR_fuel_tanks[4] < tank3_r_req and rp_azs_tank3R > 0 then
                    simDR_fuel_tanks[4] = simDR_fuel_tanks[4] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
                end
                if simDR_fuel_tanks[2] < tank2_r_req then
                    simDR_fuel_tanks[2] = simDR_fuel_tanks[2] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
                end   
                if simDR_fuel_tanks[3] < tank2_l_req then
                    simDR_fuel_tanks[3] = simDR_fuel_tanks[3] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
                end
            end
            if simDR_fuel_tanks[2] > tank2_r_req and simDR_fuel_tanks[3] > tank2_l_req and simDR_fuel_tanks[4] > tank3_r_req and simDR_fuel_tanks[5] > tank3_l_req then
                if simDR_fuel_tanks[1] < tank4_req then
                    simDR_fuel_tanks[1] = simDR_fuel_tanks[1] +13.33325 *simDR_passed
                end
            end  
        end  

    end
end


function refueling()

	if simDR_on_ground > 0 then
		if simDR_payload_set > 0 then
			fuel_was_set = 1
			if rp_main_sw < 1 then
				tank1_req = simDR_tank1  
				tank2_r_req = simDR_tank2_r
				tank2_l_req = simDR_tank2_l
				tank3_r_req = simDR_tank3_r
				tank3_l_req = simDR_tank3_l
				tank4_req = simDR_tank4
			end
		else
			tank1 = simDR_fuel_tanks[0]  
			tank2_r = simDR_fuel_tanks[2]
			tank2_l = simDR_fuel_tanks[3]
			tank3_r = simDR_fuel_tanks[4]
			tank3_l = simDR_fuel_tanks[5]
			tank4 = simDR_fuel_tanks[1]
		end
		
		if simDR_payload_set < 1 and fuel_was_set < 1 then
			payload_loc = simDR_payload
		end
		--fuel_was_set=1 ------------------delete this later
		if fuel_was_set > 0 then
			---- Initialize
			--if simDR_payload_pax1*75 < simDR_pax1 then
				simDR_pax1=simDR_payload_pax1*75*0
			--end
			--if simDR_payload_pax2*75 < simDR_pax2 then
				simDR_pax2=simDR_payload_pax2*75*0
			--end
			--if simDR_payload_pax3*75 < simDR_pax3 then
				simDR_pax3=simDR_payload_pax3*75*0
			--end
			--if simDR_payload_pax4*75 < simDR_pax4 then
				simDR_pax4=simDR_payload_pax4*75*0
			--end
			--if simDR_payload_pax5*75 < simDR_pax5 then
				simDR_pax5=simDR_payload_pax5*75*0
			--end
				simDR_cargo1=0
				simDR_cargo2=0
				simDR_kitchen_load=0
			if (simDR_payload_cargo1 + simDR_payload_cargo2 +simDR_payload_cargo3) - cargo_load > 0 then
				cargo_req = (simDR_payload_cargo1 + simDR_payload_cargo2 +simDR_payload_cargo3) - cargo_load
			else
				cargo_load = simDR_payload_cargo1 + simDR_payload_cargo2 +simDR_payload_cargo3
				cargo_req = 0
			end
			if ((simDR_payload_pax1*75)+(simDR_payload_pax2*75)+(simDR_payload_pax3*75)+(simDR_payload_pax4*75)+(simDR_payload_pax5*75)) - pax_load > 0 then
				pax_req = ((simDR_payload_pax1*75)+(simDR_payload_pax2*75)+(simDR_payload_pax3*75)+(simDR_payload_pax4*75)+(simDR_payload_pax5*75)) - pax_load
			else
				pax_load = (simDR_payload_pax1*75)+(simDR_payload_pax2*75)+(simDR_payload_pax3*75)+(simDR_payload_pax4*75)+(simDR_payload_pax5*75)
				pax_req = 0
			end
			--simDR_payload = (simDR_payload_crew*80)+(simDR_payload_cabin*75)+simDR_payload_cargo4 +pax_load + cargo_load
			if simDR_fuel_tanks[0] > tank1_req then
				simDR_fuel_tanks[0] = tank1_req
			end
			if simDR_fuel_tanks[2] > tank2_r_req then
				simDR_fuel_tanks[2] = tank2_r_req
			end
			if simDR_fuel_tanks[3] > tank2_l_req then
				simDR_fuel_tanks[3] = tank2_l_req
			end
			if simDR_fuel_tanks[4] > tank3_r_req then
				simDR_fuel_tanks[4] = tank3_r_req
			end
			if simDR_fuel_tanks[5] > tank3_l_req then
				simDR_fuel_tanks[5] = tank3_l_req
			end
			if simDR_fuel_tanks[1] > tank4_req then
				simDR_fuel_tanks[1] = tank4_req
			end
			if cargo_req > 0 then
				if simDR_payload_cargo1 > 0 then
					simDR_door_cargo1 = 1
				end
				if simDR_payload_cargo2 > 0 then
					simDR_door_cargo2 = 1
				end
			end
			if simDR_payload_cargo3-simDR_kitchen_load > 5 then
			   simDR_catering = 1
			   simDR_door_kitchen = 1
			end
			if pax_req > 0 then
			  if simDR_door2 == 0 then
				  simDR_door2 = 1
			  end
			end
			fuel_load_total = 0
			fuel_was_set = 0
			 if rp_main_sw < 1 then
				start_refueling = 1
			 end
			start_loading = 1
			tank1_cmplt = 0
			tank2_r_cmplt = 0
			tank2_l_cmplt = 0
			tank3_r_cmplt = 0
			tank3_l_cmplt = 0
			tank4_cmplt = 0
			refueler_set = 0
		end
			
		if tank2_r_cmplt + tank2_l_cmplt + tank3_r_cmplt + tank3_l_cmplt < 4 then
			fueling_cpmlt_23 = tank2_r_cmplt + tank2_l_cmplt + tank3_r_cmplt + tank3_l_cmplt
		else
			fueling_cpmlt_23 = 3
		end
		
		fueling_cpmlt = tank1_cmplt + tank2_r_cmplt + tank2_l_cmplt + tank3_r_cmplt + tank3_l_cmplt + tank4_cmplt
		loading_cmplt = cargo1_cmplt+cargo2_cmplt+kitchen_cmplt+pax1_cmplt+pax2_cmplt+pax3_cmplt+pax4_cmplt+pax5_cmplt
		if math.abs((tank1_req+tank4_req+tank2_l_req+tank3_l_req+tank2_r_req+tank3_r_req) - simDR_fuel_total)<300 then
			fueling_cpmlt=6
		end
	
		if start_loading > 0 then
			
		 if rp_main_sw < 1 then
			fuel_req_total = math.abs((tank1_req+tank4_req+tank2_l_req+tank3_l_req+tank2_r_req+tank3_r_req) - simDR_fuel_total)
		 else
			fuel_req_total = 0
		 end
			-- if simDR_cg_pos_act > simDR_cg_pos_to then
			   -- simDR_cg_pos_met = simDR_cg_pos_met - 0.0001
			-- elseif simDR_cg_pos_act < (simDR_cg_pos_to-0.005) then
			   -- simDR_cg_pos_met = simDR_cg_pos_met + 0.0001
			-- end
		end
		
		if loading_cmplt == 8 then
			start_loading = 0
			cargo_req = 0 
			pax_req = 0
			pax_load = 0
			cargo_load = 0
		end
		
		if rp_main_sw > 0 then
			start_refueling = 0
			tank1_cmplt = 0
			tank2_r_cmplt = 0
			tank2_l_cmplt = 0
			tank3_r_cmplt = 0
			tank3_l_cmplt = 0
			tank4_cmplt = 0
		end
		   
		
		if fueling_cpmlt == 6 and start_refueling > 0 then
			start_refueling = 0
			if simDR_fuel_tanker > 0 then
				simDR_fuel_tanker = 0
			end
			tank1_cmplt = 0
			tank2_r_cmplt = 0
			tank2_l_cmplt = 0
			tank3_r_cmplt = 0
			tank3_l_cmplt = 0
			tank4_cmplt = 0
		end
			
		if refueler_set > 0 and simDR_fuel_tanker < 1 and start_refueling > 0 then
			start_refueling = 0
			tank1_cmplt = 0
			tank2_r_cmplt = 0
			tank2_l_cmplt = 0
			tank3_r_cmplt = 0
			tank3_l_cmplt = 0
			tank4_cmplt = 0
		end
			
		if start_loading > 0 then
			if simDR_gear_blocks < 1 then
				simDR_gear_blocks = 1
			end
			--Cargo
			if simDR_payload_cargo1 > simDR_cargo1 then
				simDR_cargo1 = simDR_cargo1 + 6*simDR_passed
			else
				if simDR_door_cargo1 > 0 then
				   simDR_door_cargo1 = 0
				end
				cargo1_cmplt = 1
			end
			if simDR_payload_cargo2 > simDR_cargo2 then
				simDR_cargo2 = simDR_cargo2 + 6*simDR_passed
			else
				if simDR_door_cargo2 > 0 then
				   simDR_door_cargo2 = 0
				end
				cargo2_cmplt = 1
			end	
			-- Kitchen
			if simDR_payload_cargo3 > simDR_kitchen_load then
				simDR_kitchen_load = simDR_kitchen_load + 0.4*simDR_passed
			else
				if simDR_door_kitchen > 0 then
				   simDR_door_kitchen = 0
				end
				kitchen_cmplt = 1
				simDR_catering = 0
				simDR_door_kitchen = 0
			end 
			if cargo_req > 0 then
				cargo_load = simDR_cargo1+simDR_cargo2+simDR_kitchen_load
				cargo_req=simDR_payload_cargo1+simDR_payload_cargo2+simDR_payload_cargo3-cargo_load
			end
			if start_refueling < 1 then
					--Forward Cabin
				if simDR_payload_pax1*75 > simDR_pax1 then
					simDR_pax1 = simDR_pax1+(3.5+simDR_door1)*simDR_passed
				else
					pax1_cmplt = 1
				end 
				if simDR_payload_pax2*75 > simDR_pax2 then
					simDR_pax2 = simDR_pax2+(3.5+simDR_door1)*simDR_passed
				else
					if simDR_door1 > 0 and pax1_cmplt>0 then
					   simDR_door1 = 0
					end
					pax2_cmplt = 1
				end
				--Aft Cabin
				if simDR_payload_pax3*75 > simDR_pax3 then
					simDR_pax3 = simDR_pax3+3.5*simDR_passed
				else
					pax3_cmplt = 1
				end
				
				if simDR_payload_pax4*75 > simDR_pax4 then
					if pax1_cmplt>0 and pax2_cmplt>0 then
						simDR_pax4 = simDR_pax4+3.5*simDR_passed
					end
				else
					pax4_cmplt = 1
				end
				if simDR_payload_pax5*75 > simDR_pax5 then
					if pax1_cmplt>0 and pax2_cmplt>0 then
						simDR_pax5 = simDR_pax5+3.5*simDR_passed
					end
				else
					pax5_cmplt = 1
				end
				if simDR_door2 > 0 and pax2_cmplt>0 and pax3_cmplt>0 and pax4_cmplt>0 and pax5_cmplt>0 then
				   simDR_door2 = 0
				end
				pax_load=simDR_pax1+simDR_pax2+simDR_pax3+simDR_pax4+simDR_pax5
				-- if pax_cmplt < 1 and simDR_payload_cargo3 > 5 then
				   -- simDR_catering = 1
				   -- simDR_door_kitchen = 1
				-- end
				if pax_req > 0 then
					--simDR_payload = simDR_payload + 0.5
					pax_load = simDR_pax1+simDR_pax2+simDR_pax3+simDR_pax4+simDR_pax5
					pax_req = ((simDR_payload_pax1*75)+(simDR_payload_pax2*75)+(simDR_payload_pax3*75)+(simDR_payload_pax4*75)+(simDR_payload_pax5*75)) - pax_load
				elseif pax_cmplt < 1 then
					if simDR_catering > 0 then
					   simDR_catering = 0
					end
					if simDR_door_kitchen > 0 then
					   simDR_door_kitchen = 0
					end
					if simDR_ladder1 > 0 then
					   simDR_ladder1 = 0
					end
					if simDR_ladder2 > 0 then
					   simDR_ladder2 = 0
					end
					if simDR_door1 > 0 then
					   simDR_door1 = 0
					end
					if simDR_door2 > 0 then
					   simDR_door2 = 0
					end
					pax_cmplt = 1
				end 
			end
		else
			cargo1_cmplt = 0
			cargo2_cmplt = 0
			kitchen_cmplt = 0
			pax1_cmplt = 0
			pax2_cmplt = 0
			pax3_cmplt = 0
			pax4_cmplt = 0
			pax5_cmplt = 0
			pax_cmplt = 0
		end
		  
			
		if start_refueling > 0 then
			
			
			if simDR_fuel_tanks[0] > (tank1_req -1) and tank1_cmplt < 1 then
				tank1_cmplt = 1
			end
			if simDR_fuel_tanks[1] > (tank4_req -1) and tank2_r_cmplt > 0 and tank2_l_cmplt > 0 and tank3_r_cmplt > 0 and tank3_l_cmplt > 0 then
				tank4_cmplt = 1
			end
			if simDR_fuel_tanks[2] > (tank2_r_req -1) and tank2_r_cmplt < 1 then
				tank2_r_cmplt = 1
			end
			if simDR_fuel_tanks[3] > (tank2_l_req -1) and tank2_l_cmplt < 1 then
				tank2_l_cmplt = 1
			end
			if simDR_fuel_tanks[4] > (tank3_r_req -1) and tank3_r_cmplt < 1 then
				tank3_r_cmplt = 1
			end
			if simDR_fuel_tanks[5] > (tank3_l_req -1) and tank3_l_cmplt < 1 then
				tank3_l_cmplt = 1
			end
				
				
			if simDR_gear_blocks < 1 then
				simDR_gear_blocks = 1
			end
			if simDR_fuel_tanker_anim == 0 and fuel_load_total < 17600 then
				if simDR_fuel_tanks[0] < tank1_req then
					simDR_fuel_tanks[0] = simDR_fuel_tanks[0] +13.333 *simDR_passed
					fuel_load_total = fuel_load_total +13.333 *simDR_passed
				else
					if simDR_fuel_tanks[5] < 1725 and simDR_fuel_tanks[4] < 1725 and simDR_fuel_tanks[5] < tank3_l_req and simDR_fuel_tanks[4] < tank3_r_req then
						if simDR_fuel_tanks[5] < tank3_l_req then
							if simDR_fuel_tanks[4] < 1725 then
								simDR_fuel_tanks[5] = simDR_fuel_tanks[5] +6.6665 *simDR_passed
								fuel_load_total = fuel_load_total +6.6665 *simDR_passed
							else
								simDR_fuel_tanks[5] = simDR_fuel_tanks[5] +13.333 *simDR_passed
								fuel_load_total = fuel_load_total +13.333 *simDR_passed
							end
						end
						if simDR_fuel_tanks[4] < tank3_r_req then
							if simDR_fuel_tanks[5] < 1725 then
								simDR_fuel_tanks[4] = simDR_fuel_tanks[4] +6.6665 *simDR_passed
								fuel_load_total = fuel_load_total +6.6665 *simDR_passed
							else
								simDR_fuel_tanks[4] = simDR_fuel_tanks[4] +13.333 *simDR_passed
								fuel_load_total = fuel_load_total +13.333 *simDR_passed
							end
						end
					else
						if simDR_fuel_tanks[5] < tank3_l_req then
							simDR_fuel_tanks[5] = simDR_fuel_tanks[5] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
							fuel_load_total = fuel_load_total +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
						end
						if simDR_fuel_tanks[4] < tank3_r_req then
							simDR_fuel_tanks[4] = simDR_fuel_tanks[4] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
							fuel_load_total = fuel_load_total +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
						end
						if simDR_fuel_tanks[2] < tank2_r_req then
							if  simDR_fuel_tank3 < simDR_fuel_tanks[2] then
								simDR_fuel_tank3 = simDR_fuel_tanks[2]
							end
							simDR_fuel_tanks[2] = simDR_fuel_tanks[2] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
							fuel_load_total = fuel_load_total +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
						end   
						if simDR_fuel_tanks[3] < tank2_l_req then
							if  simDR_fuel_tank3 < simDR_fuel_tanks[3] then
								simDR_fuel_tank3 = simDR_fuel_tanks[3]
							end
							simDR_fuel_tanks[3] = simDR_fuel_tanks[3] +(13.33325/ (4-fueling_cpmlt_23)) *simDR_passed
							fuel_load_total = fuel_load_total +(13.33325 / (4-fueling_cpmlt_23)) *simDR_passed
						end
					end
					if tank2_r_cmplt > 0 and tank2_l_cmplt > 0 and tank3_r_cmplt > 0 and tank3_l_cmplt > 0 then
						if simDR_fuel_tanks[1] < tank4_req then
							if  simDR_fuel_tank2 < simDR_fuel_tanks[1] then
								simDR_fuel_tank2 = simDR_fuel_tanks[1]
							end
							simDR_fuel_tanks[1] = simDR_fuel_tanks[1] +13.33325 *simDR_passed
							fuel_load_total = fuel_load_total +13.33325 *simDR_passed
						end
					end  
				end  
			else
				if fuel_load_total > 17600 then
					refueler_set = 0
					simDR_fuel_tanker = 0
					if refuel_refueler_set < 1 then
						refuel_refueler = 50
						refuel_refueler_set = 1
					end
					if refuel_refueler_set > 0 and refuel_refueler < 5 then
						fuel_load_total = 0      
					end
				else
					refuel_refueler_set = 0
					refuel_refueler = 0
					if refueler_set < 1 then
						simDR_fuel_tanker = 1
						refueler_set = 1
					end
				end
				if refuel_refueler > 0 then
					refuel_refueler = refuel_refueler- 1*simDR_passed
				end
			end
				
		end
   end

       
	if simDR_fast_load_btn > 0 then
		start_loading = 0
		start_refueling = 0
		pax_load = 0
		cargo_load = 0
	end

	if simDR_gs > 2 then
		if start_refueling > 0 then
			start_refueling = 0
		end
		if start_loading > 0 then
			start_loading = 0
		end
		if cargo_req > 0 then
			cargo_req = 0
		end
		if pax_req > 0 then
			pax_req = 0
		end
	end

end



function m_misc()

    

    if simDR_fuel_buzzer_cap < 1 then simDR_fuel_buzzer = 1 end
    
    if (vyzov_bp_button1+vyzov_bp_button2) > 0 then
        --simDR_but_sound = 1
        if bus27 > 0 then
            vyzov_bp_timer = 60
        end
    end
    
    if vyzov_bp_timer > 0 then
        vyzov_bp_timer = vyzov_bp_timer - 1*SIM_PERIOD
        if vyzov_bp_timer < 5 and vyzov_bp_timer > 3 then
            vyzov_bp_ready = 1
            slider_on_8 = 1
        else
            vyzov_bp_ready = 0
        end
    else
        vyzov_bp_ready = 0
    end
    
    if vyzov_bp_timer > 0 and bus27 > 0 then
        simDR_lit_stuard_call = 1
    end
    
--- elevator correction
    -- if math.abs((simDR_elev_anim_r+simDR_elev_anim_l)/2) > 16 then
        -- elev_hr_crat_corr = (16 - math.abs((simDR_elev_anim_r+simDR_elev_anim_l)/2)) *0.022
    -- else
        -- elev_hr_crat_corr = 0
    -- end 
        
    -- if ((simDR_rpm_high_1 + simDR_rpm_high_2 + simDR_rpm_high_3) /3) > 80 then
        -- thr_elev_crat_corr  =  math.abs(80-(simDR_rpm_high_1 + simDR_rpm_high_2 + simDR_rpm_high_3)/3) *0.001
    -- else 
        -- thr_elev_crat_corr  = 0
    -- end

    -- if math.abs(simDR_stab_deg) > 1.5 then
        -- elev_stab_crat_corr = math.abs((1.5-math.abs(simDR_stab_deg))) * 0.022
    -- else
        -- elev_stab_crat_corr = 0
    -- end

    -- if simDR_gs > 110 then
        -- elev_speed_crat_corr = math.abs(110-simDR_gs)*0.0009
    -- else
        -- elev_speed_crat_corr = 0
    -- end
    -- if simDR_cg_pos_act > 24 then
        -- elev_cg_crat_corr = math.abs(24-simDR_cg_pos_act)*0.015
    -- else
        -- elev_cg_crat_corr = 0
    -- end
        -- if (0.4 + math.abs(thr_elev_crat_corr) - math.abs(elev_hr_crat_corr) + elev_stab_crat_corr - elev_speed_crat_corr + elev_cg_crat_corr) > 0.24 then
            -- simDR_elev_crat = 0.28 + math.abs(thr_elev_crat_corr) - math.abs(elev_hr_crat_corr) + elev_stab_crat_corr - elev_speed_crat_corr + elev_cg_crat_corr
        -- else
            -- simDR_elev_crat = 0.24
        -- end
------


vvi_left_ms = simDR_vvi_left
vvi_right_ms = simDR_vvi_right
if T154_kontur_90th < 1 then
    simDR_var_left = 0
    simDR_var_right = 0
end
    
-- if simDR_bus27left > 0 and simDR_var_left > 0 or T154_kontur_90th < 1 then
    -- vvi_left_delta = vvi_left_ms - vvi_left
    -- if vvi_left_delta > 0 then
        -- if T154_slow_vario > 0 then
            -- vvi_left = vvi_left + math.abs(vvi_left_delta) * 0.68 * SIM_PERIOD
        -- else
            -- vvi_left = vvi_left + math.abs(vvi_left_delta) * 4 * SIM_PERIOD
        -- end
    -- elseif vvi_left_delta < 0 then
        -- if T154_slow_vario > 0 then
            -- vvi_left = vvi_left - math.abs(vvi_left_delta) * 0.68 * SIM_PERIOD
        -- else
            -- vvi_left = vvi_left - math.abs(vvi_left_delta) * 4 * SIM_PERIOD
        -- end
    -- end   
-- end
-- if simDR_bus27right > 0 and simDR_var_right > 0 or T154_kontur_90th < 1 then
    -- vvi_right_delta = vvi_right_ms - vvi_right
    -- if vvi_right_delta > 0 then
        -- if T154_slow_vario > 0 then
            -- vvi_right = vvi_right + math.abs(vvi_right_delta) * 0.68 * SIM_PERIOD
        -- else
            -- vvi_right = vvi_right + math.abs(vvi_right_delta) * 4 * SIM_PERIOD
        -- end
    -- elseif vvi_right_delta < 0 then
        -- if T154_slow_vario > 0 then
            -- vvi_right = vvi_right - math.abs(vvi_right_delta) * 0.68 * SIM_PERIOD
        -- else
            -- vvi_right = vvi_right - math.abs(vvi_right_delta) * 4 * SIM_PERIOD
        -- end
    -- end
-- end


-- if simDR_slat_ratio > 0 and simDR_slat_ratio < 0.95 then   
        -- slat_ratio_delta = simDR_slat_ratio - slat_ratio_loc
-- else
        -- slat_ratio_delta = 0
-- end
  
-- if slat_ratio_delta > 0 then
   -- simDR_slat_ratio = simDR_slat_ratio - math.abs(slat_ratio_delta) 
   -- slat_ratio_loc = slat_ratio_loc + 0.075 * SIM_PERIOD
-- elseif slat_ratio_delta < 0 then
   -- simDR_slat_ratio = simDR_slat_ratio + math.abs(slat_ratio_delta) 
   -- slat_ratio_loc = slat_ratio_loc - 0.075 * SIM_PERIOD
-- end
        
  
    if simDR_light_test_hydro > 0 and bus27 > 0 then
        if pump_test > 0.8 then
            simDR_light_fuel_pump_1 = 0
        end
        if pump_test > 8.0 then
            simDR_light_fuel_pump_2 = 0
        end
        if pump_test > 1.6 then
            simDR_light_fuel_pump_3 = 0
        end
        if pump_test > 1.4 then
            simDR_light_fuel_pump_4 = 0
        end
        if pump_test > 1.2 then
            simDR_light_fuel_pump_10 = 0
        end
        if pump_test > 1.0 then
            simDR_light_fuel_pump_11 = 0
        end
        if pump_test > 2.9 then
            simDR_light_fuel_pump_left_5 = 0
        end
        if pump_test > 2.7 then
            simDR_light_fuel_pump_left_6 = 0
        end
        if pump_test > 2.5 then
            simDR_light_fuel_pump_left_7 = 0
        end
        if pump_test > 2.3 then
            simDR_light_fuel_pump_left_8 = 0
        end
        if pump_test > 2.1 then
            simDR_light_fuel_pump_left_9 = 0
        end
        if pump_test > 1.9 then
            simDR_light_fuel_pump_right_5 = 0
        end
        if pump_test > 1.7 then
            simDR_light_fuel_pump_right_6 = 0
        end
        if pump_test > 1.5 then
            simDR_light_fuel_pump_right_7 = 0
        end
        if pump_test > 1.3 then
            simDR_light_fuel_pump_right_8 = 0
        end
        if pump_test > 1.1 then
            simDR_light_fuel_pump_right_8 = 0
        end
        if pump_test > 0.9 then
            simDR_light_fuel_pump_right_9 = 0
        end
        if pump_test > 0.7 then
            simDR_light_fuel_pump_left_2_fail = 0
        end
        if pump_test > 0.5 then
            simDR_light_fuel_pump_right_2_fail = 0
        end
        if pump_test > 0.3 then
            simDR_light_fuel_pump_left_3_fail = 0
        end
        if pump_test > 0.1 then
             simDR_light_fuel_pump_right_3_fail = 0
        end
        if pump_test > 0 then
            pump_test = pump_test -0.45
        else
            pump_test = 0
        end     
    else
        pump_test = 3
    end
    
    -- if bus27 > 0 then
      -- if simDR_gear_fan > 0 and simDR_on_ground > 0 then
           -- simDR_start_apu = 1
      -- elseif simDR_lamp_test_apu < 1 then
           -- simDR_start_apu = 0
      -- end
    -- end
    

    if simDR_bus27left > 5 then
        bus27 = 1
    elseif simDR_bus27right > 5 then
        bus27 = 1
    else
        bus27 = 0
    end 
        
    if simDR_36vl > 5 then
        bus36 = 1
    elseif simDR_36vr > 5 then
        bus36 = 1
    else
        bus36 = 0
    end   
       
 
    
-- if T154_ppd_icing > 0 then
       -- --- ppd ice fix---
        
	-- if simDR_on_ground < 1 and simDR_percip_on_craft > 0 and simDR_oat < 10 then
		-- if simDR_ppd1 < 1 then
			-- if ppd_icing1 < 100 then
				-- ppd_icing1 = ppd_icing1 + 0.03
			-- else
				-- ppd_icing1 = 100
			-- end
		-- else
			-- if ppd_icing1 > 0 then
				-- ppd_icing1 = ppd_icing1 - 0.05
			-- else
				-- ppd_icing1 = 0
			-- end
		-- end
		-- if simDR_ppd2 < 1 then
			-- if ppd_icing2 < 100 then
				-- ppd_icing2 = ppd_icing2 + 0.03
			-- else
				-- ppd_icing2 = 100
			-- end
		-- else
			-- if ppd_icing2 > 0 then
				-- ppd_icing2 = ppd_icing2 - 0.05
			-- else
				-- ppd_icing2 = 0
			-- end
		-- end
		-- if simDR_ppd3 < 1 then
			-- if ppd_icing3 < 100 then
				-- ppd_icing3 = ppd_icing3 + 0.03
			-- else
				-- ppd_icing3 = 100
			-- end
		-- else
			-- if ppd_icing3 > 0 then
				-- ppd_icing3 = ppd_icing3 - 0.05
			-- else
				-- ppd_icing3 = 0
			-- end
		-- end
	-- elseif simDR_oat > 0 and simDR_on_ground > 0 then
		-- if ppd_icing1 > 0 then
			-- ppd_icing1 = ppd_icing1 - 0.05
		-- else
			-- ppd_icing1 = 0
		-- end
		-- if ppd_icing2 > 0 then
			-- ppd_icing2 = ppd_icing2 - 0.05
		-- else
			-- ppd_icing2 = 0
		-- end
		-- if ppd_icing3 > 0 then
			-- ppd_icing3 = ppd_icing3 - 0.05
		-- else
			-- ppd_icing3 = 0
		-- end
	-- elseif simDR_oat > 10 then
		-- if ppd_icing1 > 0 then
			-- ppd_icing1 = ppd_icing1 - 0.05
		-- else
			-- ppd_icing1 = 0
		-- end
		-- if ppd_icing2 > 0 then
			-- ppd_icing2 = ppd_icing2 - 0.05
		-- else
			-- ppd_icing2 = 0
		-- end
		-- if ppd_icing3 > 0 then
			-- ppd_icing3 = ppd_icing3 - 0.05
		-- else
			-- ppd_icing3 = 0
		-- end
	-- end
			
	
	-- simDR_kus_left = simDR_kus_left - kus_left_corr
	-- simDR_tas_left = simDR_tas_left - tas_left_corr
	-- simDR_ias_left = simDR_ias_left - ias_left_corr

	-- if ppd_icing1 > 10 then
	 -- if simDR_kus_left > 0 then
		-- kus_left_corr = kus_left_corr +0.05
	 -- end
	 -- if simDR_tas_left > 0 then
		-- tas_left_corr = tas_left_corr +0.05
	 -- end
	 -- if simDR_ias_left > 0 then
		-- ias_left_corr = ias_left_corr +0.05
	 -- end
	 -- if simDR_ias_y_left > 0 then
		-- ias_y_left_corr = ias_y_left_corr +0.0025
	 -- end
	  -- simDR_ppd1_fail = 1
	-- else
	  -- if kus_left_corr > 0 then
		 -- kus_left_corr = kus_left_corr - 0.3
	  -- else
		 -- kus_left_corr = 0
	  -- end
	  -- if tas_left_corr > 0 then
		 -- tas_left_corr = tas_left_corr - 0.3
	  -- else
		 -- tas_left_corr = 0
	  -- end
	  -- if ias_left_corr > 0 then
		 -- ias_left_corr = ias_left_corr - 0.3
	  -- else
		 -- ias_left_corr = 0
	  -- end
	  -- if ias_y_left_corr > 0 then
		 -- ias_y_left_corr = ias_y_left_corr - 0.3
	  -- else
		 -- ias_y_left_corr = 0
	  -- end
	  -- simDR_ppd1_fail = 0
	-- end
	-- if ppd_icing2 > 10 then
	  -- simDR_ppd2_fail = 1
	-- else
	  -- simDR_ppd2_fail = 0
	-- end
	-- if ppd_icing3 > 10 then
	  -- simDR_ppd3_fail = 1
	-- else
	  -- simDR_ppd3_fail = 0
	-- end
	
	
	
	-- simDR_kus_right = simDR_kus_right - kus_right_corr
	-- simDR_tas_right = simDR_tas_right - tas_right_corr
	-- simDR_ias_right = simDR_ias_right - ias_right_corr

	-- if ppd_icing2 > 10 then
	 -- if simDR_kus_right > 0 then
		-- kus_right_corr = kus_right_corr +0.05
	 -- end
	 -- if simDR_tas_right > 0 then
		-- tas_right_corr = tas_right_corr +0.05
	 -- end
	 -- if simDR_ias_right > 0 then
		-- ias_right_corr = ias_right_corr +0.05
	 -- end
	 -- if simDR_ias_y_right > 0 then
		-- ias_y_right_corr = ias_y_right_corr +0.025
	 -- end
	  -- simDR_ppd2_fail = 1
	-- else
	  -- if kus_right_corr > 0 then
		 -- kus_right_corr = kus_right_corr - 0.3
	  -- else
		 -- kus_right_corr = 0
	  -- end
	  -- if tas_right_corr > 0 then
		 -- tas_right_corr = tas_right_corr - 0.3
	  -- else
		 -- tas_right_corr = 0
	  -- end
	  -- if ias_right_corr > 0 then
		 -- ias_right_corr = ias_right_corr - 0.3
	  -- else
		 -- ias_right_corr = 0
	  -- end
	  -- if ias_y_right_corr > 0 then
		 -- ias_y_right_corr = ias_y_right_corr - 0.3
	  -- else
		 -- ias_y_right_corr = 0
	  -- end
	  -- simDR_ppd2_fail = 0
	-- end
        
        
        
       -- --- ppd ice fix--- 
-- end


        
    if T154_door_icing > 0 then
		if simDR_door_fan_temp>50 then
			simDR_icing = simDR_icing-0.004 * simDR_passed
		end
		if simDR_icing > 0.3 then
			if simDR_door1_anim > 0.2 then
				simDR_door1_anim = 0.2
			end
			if simDR_door2_anim > 0.2 then
				simDR_door2_anim = 0.2
			end
			if simDR_door3_anim > 0.2 then
				simDR_door3_anim = 0.2
			end
		end
    else
    end

    -- if T154_brake_heat > 0 then

        -- simDR_brake_heat_left = brake_temp_loc_l
        -- simDR_brake_heat_right = brake_temp_loc_r   


        -- if simDR_brake_l > 0 and simDR_gs > 1 and simDR_on_ground > 0 then
            -- if brake_temp < 1200 then
                -- brake_temp_loc_l = brake_temp_loc_l + (simDR_brake_l * 0.015 * simDR_gs)/1.5
            -- end
        -- end

        -- if simDR_brake_r > 0 and simDR_gs > 1 and simDR_on_ground > 0 then
            -- if brake_temp < 1200 then
                -- brake_temp_loc_r = brake_temp_loc_r + (simDR_brake_r * 0.015 * simDR_gs)/1.5
            -- end
        -- end


        -- if simDR_oat < brake_temp_loc_l then
            -- if gears > 0 then
                -- if simDR_gs > 1 then
                        -- brake_temp_loc_l = brake_temp_loc_l - 0.0005 * simDR_gs 
                -- else
                    -- if simDR_oat > 0 then
                        -- brake_temp_loc_l = brake_temp_loc_l - 0.0000001*(50-math.abs(simDR_oat))
                    -- else
                        -- brake_temp_loc_l = brake_temp_loc_l - 0.000004*math.abs(simDR_oat)
                    -- end
                -- end
            -- else
                -- if simDR_oat > 0 then
                    -- brake_temp_loc_l = brake_temp_loc_l - 0.000005
                -- else
                    -- brake_temp_loc_l = brake_temp_loc_l - 0.00015*math.abs(simDR_oat)
                -- end
            -- end
        -- end

        -- if simDR_oat < brake_temp_loc_r then
            -- if gears > 0 then
                -- if simDR_gs > 1 then
                    -- brake_temp_loc_r = brake_temp_loc_r - 0.0005 * simDR_gs 
                -- else
                    -- if simDR_oat > 0 then
                        -- brake_temp_loc_r = brake_temp_loc_r - 0.0000001*(50-math.abs(simDR_oat))
                    -- else
                        -- brake_temp_loc_r = brake_temp_loc_r - 0.000004*math.abs(simDR_oat)
                    -- end
                -- end
            -- else
                -- if simDR_oat > 0 then
                    -- brake_temp_loc_r = brake_temp_loc_r - 0.000005
                -- else
                    -- brake_temp_loc_r = brake_temp_loc_r - 0.00015*math.abs(simDR_oat)
                -- end
            -- end
        -- end


        -- if bus36 > 0 and simDR_gear_fan > 0 and simDR_on_ground > 0 then
            -- if brake_temp_loc_l > simDR_oat then
                -- brake_temp_loc_l = brake_temp_loc_l - 0.03
            -- end
        -- end
        -- if bus36 > 0 and simDR_gear_fan > 0 and simDR_on_ground > 0 then
            -- if brake_temp_loc_r > simDR_oat then
                -- brake_temp_loc_r = brake_temp_loc_r - 0.03
            -- end
        -- end


        -- if brake_temp_loc_l > 450 then  
            -- if simDR_brake_l > 1 - (1 - ((1450 - brake_temp_loc_l)*0.001)) then 
                -- simDR_brake_l = 1 - (1 - ((1450 - brake_temp_loc_l)*0.001))
            -- end
        -- end
        -- if brake_temp_loc_r > 450 then  
            -- if simDR_brake_r > 1 - (1 - ((1450 - brake_temp_loc_r)*0.001)) then 
                -- simDR_brake_r = 1 - (1 - ((1450 - brake_temp_loc_r)*0.001))
            -- end
        -- end



        -- if simDR_gear1 < 0.01 and simDR_gear2 < 0.01 and simDR_gear3 < 0.01 then
            -- gears = 0
        -- else
            -- gears = 1
        -- end
    -- else
        -- brake_temp_loc_r = 0
        -- brake_temp_loc_l = 0
    -- end
            
    
    
    
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
    
    
    -- if simDR_altitude < 7000 then
      -- alt_coeff = math.abs((7000 - simDR_altitude) / 7000)
      -- else
      -- alt_coeff = 0.0001
    -- end
    
    -- temp_abs = math.abs(simDR_oat)
    -- if simDR_oat < 30 then
        -- oat_delta = (-1 * ((30-simDR_oat)/7) +4)
    -- else
        -- oat_delta = 0
    -- end

    -- baro_delta = (29.92 - simDR_qfe)
    -- rpm_delta = oat_delta + (baro_delta  / 1.12)+4

    -- if rpm_delta < 5.358 then
        -- rpm_delta_result = rpm_delta
    -- else
        -- rpm_delta_result = 5.358
    -- end
    
            
    -- if (simDR_rpm_low_1 + rpm1_correct + (rpm_delta_result * thro_1 * alt_coeff) - (2.7 * (1-thro_1))) < 100.3 then
        -- rpm1_low_loc = simDR_rpm_low_1 + rpm1_correct + (rpm_delta_result * thro_1 * alt_coeff) - (2.7 * (1-thro_1))
    -- else
        -- rpm1_low_loc = 100.3
    -- end

    -- if (simDR_rpm_low_2 + rpm2_correct + (rpm_delta_result * thro_2 * alt_coeff) - (2.9 * (1-thro_2))) < 100.3 then
        -- rpm2_low_loc = simDR_rpm_low_2 + rpm2_correct + (rpm_delta_result * thro_2 * alt_coeff) - (2.9 * (1-thro_2))
    -- else
        -- rpm2_low_loc = 100.3
    -- end

    -- if (simDR_rpm_low_3 + rpm3_correct + (rpm_delta_result * thro_3 * alt_coeff) - (2.8 * (1-thro_3))) < 100.3 then
        -- rpm3_low_loc = simDR_rpm_low_3 + rpm3_correct + (rpm_delta_result * thro_3 * alt_coeff) - (2.8 * (1-thro_3))
    -- else
        -- rpm3_low_loc = 100.3
    -- end

        
    -- if simDR_light_test_eng < 1 then
        
        -- -- if rpm1_low > 43 then
            -- -- simDR_vna33_1 = 0
        -- -- end
        
        -- -- if rpm2_low > 43.3 then
            -- -- simDR_vna33_2 = 0
        -- -- end
        
        -- -- if rpm3_low > 43.1 then
            -- -- simDR_vna33_3 = 0
        -- -- end
        
        -- -- if simDR_rpm_high_1 > 50 and simDR_rpm_high_1 < 75 and simDR_oilmeter_1_lit > 0 then
          -- -- if simDR_day_night_lit < 1 then
            -- -- simDR_bypass_vlv_1_lit = 1
          -- -- else
            -- -- simDR_bypass_vlv_1_lit = 0.75
          -- -- end
        -- -- end
        -- -- if simDR_rpm_high_2 > 50 and simDR_rpm_high_2 < 78 and simDR_oilmeter_2_lit > 0 then
          -- -- if simDR_day_night_lit < 1 then
            -- -- simDR_bypass_vlv_2_lit = 1
          -- -- else
            -- -- simDR_bypass_vlv_2_lit = 0.75
          -- -- end
        -- -- end
        -- -- if simDR_rpm_high_3 > 50 and simDR_rpm_high_3 < 77 and simDR_oilmeter_3_lit > 0 then
          -- -- if simDR_day_night_lit < 1 then
            -- -- simDR_bypass_vlv_3_lit = 1
          -- -- else
            -- -- simDR_bypass_vlv_3_lit = 0.75
          -- -- end
        -- -- end
        
        -- if simDR_rpm_high_1 > 79 then
            -- if rpm1_correct < 3.85 and simDR_rpm_low_1 < 75 then
                -- if rpm1_correct < 3.83 then
                -- rpm1_correct = rpm1_correct + 0.12
                -- else
                -- rpm1_correct = 3.85
                -- end
            -- elseif rpm1_correct > 0 then
                -- rpm1_correct = rpm1_correct - 0.02
            -- else
                -- rpm1_correct = 0
            -- end
        -- else
            -- if rpm1_correct > 0 then
                -- rpm1_correct = rpm1_correct - 0.05
            -- else
                -- rpm1_correct = 0
            -- end
        -- end

        -- if simDR_rpm_high_2 > 80 then
            -- if rpm2_correct < 3.85 and simDR_rpm_low_2 < 75 then
                -- if rpm2_correct < 3.83 then
                 -- rpm2_correct = rpm2_correct + 0.12
                -- else
                    -- rpm2_correct = 3.852 
                -- end
            -- elseif rpm2_correct > 0 then
                -- rpm2_correct = rpm2_correct - 0.02
            -- else
                -- rpm2_correct = 0
            -- end
        -- else
            -- if rpm2_correct > 0 then
                -- rpm2_correct = rpm2_correct - 0.05
            -- else
                -- rpm2_correct = 0
            -- end
        -- end

        -- if simDR_rpm_high_3 > 79.5 then
            -- if rpm3_correct < 3.85 and simDR_rpm_low_3 < 75 then
                -- if rpm3_correct < 3.83 then
                    -- rpm3_correct = rpm3_correct + 0.12
                -- else
                    -- rpm3_correct = 3.851 
                -- end
            -- elseif rpm3_correct > 0 then
                -- rpm3_correct = rpm3_correct - 0.02
            -- else
                -- rpm3_correct = 0
            -- end
        -- else
            -- if rpm3_correct > 0 then
                -- rpm3_correct = rpm3_correct - 0.05
            -- else
                -- rpm3_correct = 0
            -- end
        -- end
        -- rpm1_correct_loc = rpm1_correct
        -- rpm2_correct_loc = rpm2_correct
        -- rpm3_correct_loc = rpm3_correct
    -- else
        -- rpm1_correct = rpm1_correct_loc
        -- rpm2_correct = rpm2_correct_loc
        -- rpm3_correct = rpm3_correct_loc
    -- end
    
 -- if simDR_scp ~= 1 then
    -- if rpm1_low_loc > 0 then
        -- rpm1_low = rpm1_low_loc
    -- else
        -- rpm1_low = 0
    -- end

    -- if rpm2_low_loc > 0 then
        -- rpm2_low = simDR_rpm_low_2
    -- else
        -- rpm2_low = simDR_rpm_low_2
    -- end

    -- if rpm3_low_loc > 0 then
        -- rpm3_low = rpm3_low_loc
    -- else
        -- rpm3_low = 0
    -- end 
-- end
    
if simDR_rpm_high_1 > 40 then
    if simDR_rpm_high_1 - simDR_rpm_low_1 < 8.3 then
      if fuel_press_1_corr > 0.1 then
        fuel_press_1_corr = fuel_press_1_corr - 0.01
      end
    elseif fuel_press_1_corr < 1 then
        fuel_press_1_corr = fuel_press_1_corr +0.01
    else
        fuel_press_1_corr = 1
    end
else
    fuel_press_1_corr = 1
end

if simDR_rpm_high_2 > 40 then
    if simDR_rpm_high_2 - simDR_rpm_low_2 < 8.3 then
      if fuel_press_2_corr > 0.1 then
        fuel_press_2_corr = fuel_press_2_corr - 0.01
      end
    elseif fuel_press_2_corr < 1 then
        fuel_press_2_corr = fuel_press_2_corr +0.01
    else
        fuel_press_2_corr = 1
    end
else
    fuel_press_2_corr = 1
end

if simDR_rpm_high_3 > 40 then
    if simDR_rpm_high_3 - simDR_rpm_low_3 < 8.3 then
      if fuel_press_3_corr > 0.1 then
        fuel_press_3_corr = fuel_press_3_corr - 0.01
      end
    elseif fuel_press_3_corr < 1 then
        fuel_press_3_corr = fuel_press_3_corr +0.01
    else
        fuel_press_3_corr = 1
    end
else
    fuel_press_3_corr = 1
end

fuel_press_1 = simDR_fuel_press_1 * fuel_press_1_corr
fuel_press_2 = simDR_fuel_press_2 * fuel_press_2_corr
fuel_press_3 = simDR_fuel_press_3 * fuel_press_3_corr
    
    
    
end

function after_physics()
    m_misc()
    refueling()
    rp_refueling()
end
