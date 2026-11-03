function deferred_command(name,desc,nilFunc)
	c = XLuaCreateCommand(name,desc)
	--print("Deferred command: "..name)
	--XLuaReplaceCommand(c,null_command)
	return nil --make_command_obj(c)
end
function deferred_dataref(name,type,notifier)
	--print("Deffereed dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

simDR_avitab_pwr = find_dataref("avitab/panel_powered")
simDR_avitab_left = find_dataref("avitab/panel_left")
simDR_avitab_brt = find_dataref("avitab/brightness")
simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")
simDR_payload_cargo1 = find_dataref("tu154b2/custom/payload/cargo_1") 
simDR_payload_cargo2 = find_dataref("tu154b2/custom/payload/cargo_2")
simDR_payload_cargo3 = find_dataref("tu154b2/custom/payload/kitchens")
simDR_payload_cargo4 = find_dataref("tu154b2/custom/payload/various")
simDR_payload_pax1 = find_dataref("tu154b2/custom/payload/zone_1")
simDR_payload_pax2 = find_dataref("tu154b2/custom/payload/zone_2")
simDR_payload_pax3 = find_dataref("tu154b2/custom/payload/zone_4")
simDR_payload_pax4 = find_dataref("tu154b2/custom/payload/zone_5")
simDR_payload_pax5 = find_dataref("tu154b2/custom/payload/zone_6")
simDR_empty_weight = find_dataref("sim/aircraft/weight/acf_m_empty")
simDR_payload_crew = find_dataref("tu154b2/custom/payload/crew_num")
simDR_payload_cabin = find_dataref("tu154b2/custom/payload/cabin_num")
simDR_tank1 = find_dataref("tu154b2/custom/payload/tank_1")
simDR_tank2_l = find_dataref("tu154b2/custom/payload/tank_2L")
simDR_tank2_r = find_dataref("tu154b2/custom/payload/tank_2R")
simDR_tank3_l = find_dataref("tu154b2/custom/payload/tank_3L")
simDR_tank3_r = find_dataref("tu154b2/custom/payload/tank_3R")
simDR_tank4 = find_dataref("tu154b2/custom/payload/tank_4")
simDR_fuel_tanks = find_dataref("sim/flightmodel/weight/m_fuel") 
simDR_set_cg = find_dataref("tu154b2/custom/payload/load_fast_btn") 


--fork calc



icao_dep_1 = deferred_dataref("sim/custom/t154_efb/fork_dep1", "number") 
icao_dep_2 = deferred_dataref("sim/custom/t154_efb/fork_dep2", "number") 
icao_dep_3 = deferred_dataref("sim/custom/t154_efb/fork_dep3", "number") 
icao_dep_4 = deferred_dataref("sim/custom/t154_efb/fork_dep4", "number") 
icao_arr_1 = deferred_dataref("sim/custom/t154_efb/fork_arr1", "number") 
icao_arr_2 = deferred_dataref("sim/custom/t154_efb/fork_arr2", "number") 
icao_arr_3 = deferred_dataref("sim/custom/t154_efb/fork_arr3", "number") 
icao_arr_4 = deferred_dataref("sim/custom/t154_efb/fork_arr4", "number") 
icao_wx_1 = deferred_dataref("sim/custom/t154_efb/wx_icao1", "number") 
icao_wx_2 = deferred_dataref("sim/custom/t154_efb/wx_icao2", "number") 
icao_wx_3 = deferred_dataref("sim/custom/t154_efb/wx_icao3", "number") 
icao_wx_4 = deferred_dataref("sim/custom/t154_efb/wx_icao4", "number") 

avitab_enbl = find_dataref("avitab/panel_enabled") 

efb_fc_nav_res = find_dataref("tu154b2/custom/payload/nav_fuel")
efb_fc_taxi = find_dataref("tu154b2/custom/payload/taxi_fuel")

efb_fc_dist_osn = find_dataref("tu154b2/custom/payload/main_dist")
fork = deferred_dataref("sim/custom/t154_efb/fork_result", "number") 
dep_icao = deferred_dataref("sim/custom/t154_efb/fork_dep", "string") 
arr_icao = deferred_dataref("sim/custom/t154_efb/fork_arr", "string") 
wx_icao = deferred_dataref("sim/custom/t154_efb/wx_icao", "string") 
wx_result_1 = deferred_dataref("sim/custom/t154_efb/wx_result_1", "string") 
wx_result_2 = deferred_dataref("sim/custom/t154_efb/wx_result_2", "string") 
wx_result_3 = deferred_dataref("sim/custom/t154_efb/wx_result_3", "string") 
wx_result_4 = deferred_dataref("sim/custom/t154_efb/wx_result_4", "string") 
kbd_popup = deferred_dataref("sim/custom/t154_efb/kbp_popup", "number") 
kbd_select = deferred_dataref("sim/custom/t154_efb/kbp_select", "number") 

pass_count = deferred_dataref("sim/custom/t154_efb/pass_count", "number")
pass_weight = deferred_dataref("sim/custom/t154_efb/pass_weight", "number")
cargo_weight = deferred_dataref("sim/custom/t154_efb/cargo_weight", "number")
commerc_weight = deferred_dataref("sim/custom/t154_efb/commerc_weight", "number")
empty_weight = deferred_dataref("sim/custom/t154_efb/empty_weight", "number")
nofuel_weight = deferred_dataref("sim/custom/t154_efb/nofuel_weight", "number")
fuel_weight = deferred_dataref("sim/custom/t154_efb/fuel_weight", "number")
takeoff_weight = deferred_dataref("sim/custom/t154_efb/takeoff_weight", "number")
landing_weight = deferred_dataref("sim/custom/t154_efb/landing_weight", "number")
cax_to = deferred_dataref("sim/custom/t154_efb/cax_to", "number")
cax_nf = deferred_dataref("sim/custom/t154_efb/cax_nf", "number")

efb_page = deferred_dataref("sim/custom/t154_efb/page", "number")
efb_power = deferred_dataref("sim/custom/t154_efb/power", "number")
efb_power_lit = deferred_dataref("sim/custom/t154_efb/power_lit", "number")
efb_timer_start = deferred_dataref("sim/custom/t154_efb/timer_start", "number")
efb_power_btn = deferred_dataref("sim/custom/t154_efb/power_btn", "number")
efb_enabled = deferred_dataref("sim/custom/t154_efb/enabled", "number")
efb_fc_dist_osn_nm = deferred_dataref("sim/custom/payload/main_dist_nm", "number")
efb_fc_fl_osn = find_dataref("tu154b2/custom/payload/main_fl")
efb_fc_fl_osn_meters = deferred_dataref("sim/custom/payload/main_fl_meters", "number")
efb_fc_dist_alt = find_dataref("tu154b2/custom/payload/alt_dist")
efb_fc_dist_alt_nm = deferred_dataref("sim/custom/payload/alt_dist_nm", "number")
efb_fc_fl_alt = find_dataref("tu154b2/custom/payload/alt_fl")
efb_fc_fl_alt_meters = deferred_dataref("sim/custom/payload/alt_fl_meters", "number")
efb_des_wind_corr = deferred_dataref("sim/custom/t154_efb/des_wind_corr", "number")
efb_fc_wind_corr = deferred_dataref("sim/custom/t154_efb/fc_wind_corr", "number")
efb_fc_wind_corr_kts = deferred_dataref("sim/custom/t154_efb/fc_wind_corr_kts", "number")
efb_fc_wind_corr_alt = deferred_dataref("sim/custom/t154_efb/fc_wind_corr_alt", "number")
efb_fc_wind_corr_alt_kts = deferred_dataref("sim/custom/t154_efb/fc_wind_corr_alt_kts", "number")
efb_fc = deferred_dataref("sim/custom/t154_efb/fc_full", "number")
fuel_main = deferred_dataref("sim/custom/t154_efb/fc_main", "number")
fuel_alt = deferred_dataref("sim/custom/t154_efb/fc_alt", "number")
fc_ete_h = deferred_dataref("sim/custom/t154_efb/fc_ete_h", "number")
fc_ete_m = deferred_dataref("sim/custom/t154_efb/fc_ete_m", "number")



length_razb_28 = deferred_dataref("sim/custom/t154_efb/length_razb_28", "number")
length_razb_15 = deferred_dataref("sim/custom/t154_efb/length_razb_15", "number")


clean_speed = deferred_dataref("sim/custom/t154_efb/clean_speed", "number")
vapp_0 = deferred_dataref("sim/custom/t154_efb/vapp_0", "number")
vapp_15 = deferred_dataref("sim/custom/t154_efb/vapp_15", "number")
vapp_28 = deferred_dataref("sim/custom/t154_efb/vapp_28", "number")
vapp_36 = deferred_dataref("sim/custom/t154_efb/vapp_36", "number")
vapp_45 = deferred_dataref("sim/custom/t154_efb/vapp_45", "number")
probeg_0 = deferred_dataref("sim/custom/t154_efb/probeg_0", "number")
probeg_15 = deferred_dataref("sim/custom/t154_efb/probeg_15", "number")
probeg_28 = deferred_dataref("sim/custom/t154_efb/probeg_28", "number")
probeg_36 = deferred_dataref("sim/custom/t154_efb/probeg_36", "number")
probeg_45 = deferred_dataref("sim/custom/t154_efb/probeg_45", "number")

payload_set_slow = deferred_dataref("sim/custom/payload/load_slow_btn_new", "number")

-- ground

remove_all_gnd = deferred_dataref("sim/custom/payload/remove_all_gnd", "number")

ground_veh_type = deferred_dataref("sim/custom/t154_efb/ground_veh_type", "number") 

-- efb_batt

efb_battery_q = deferred_dataref("sim/custom/t154_efb/battery_q", "number") 
efb_cable_connect = deferred_dataref("sim/custom/t154_efb/cable_connect", "number") 
efb_charging = deferred_dataref("sim/custom/t154_efb/charging", "number") 
efb_popup_1 = deferred_dataref("sim/custom/t154_efb/popup_1", "number") 
efb_popup_2 = deferred_dataref("sim/custom/t154_efb/popup_2", "number") 
efb_popup_3 = deferred_dataref("sim/custom/t154_efb/popup_3", "number") 
efb_popup_4 = deferred_dataref("sim/custom/t154_efb/popup_4", "number") 
efb_popup_5 = deferred_dataref("sim/custom/t154_efb/popup_5", "number") 
efb_popup_6 = deferred_dataref("sim/custom/t154_efb/popup_6", "number") 
efb_popup_7 = deferred_dataref("sim/custom/t154_efb/popup_7", "number") 
efb_popup_8 = deferred_dataref("sim/custom/t154_efb/popup_8", "number") 
efb_popup_9 = deferred_dataref("sim/custom/t154_efb/popup_9", "number") 
efb_popup_folder = deferred_dataref("sim/custom/t154_efb/popup_folder", "number") 
efb_popup_browser = deferred_dataref("sim/custom/t154_efb/popup_browser", "number") 
efb_power_mode =  deferred_dataref("sim/custom/t154_efb/efb_power_mode", "number") 
year =  deferred_dataref("sim/custom/t154_efb/year", "number") 
des_distance_md =  deferred_dataref("sim/custom/t154_efb/des_distance_md", "number") 
des_distance_mkr =  deferred_dataref("sim/custom/t154_efb/des_distance_mkr", "number") 
show_des_calc_notify = deferred_dataref("sim/custom/t154_efb/show_des_calc_notify", "number") 
qfe_elev = deferred_dataref("sim/custom/t154_efb/qfe_elev", "number") 
qfe_elev_m = deferred_dataref("sim/custom/t154_efb/qfe_elev_m", "number") 
qfe_qnh = deferred_dataref("sim/custom/t154_efb/qfe_qnh", "number") 
qfe_mmhg = deferred_dataref("sim/custom/t154_efb/qfe_mmhg", "number") 
qfe_hpa = deferred_dataref("sim/custom/t154_efb/qfe_hpa", "number") 
qfe_inhg = deferred_dataref("sim/custom/t154_efb/qfe_inhg", "number") 

simDR_VR_15 = find_dataref("tu154b2/custom/speeds/vr_15")
simDR_VR_28 = find_dataref("tu154b2/custom/speeds/vr_28")
simDR_V2_15 = find_dataref("tu154b2/custom/speeds/v2_15")
simDR_weight_act = find_dataref("tu154b2/custom/misc/weight_actual")
simDR_altitude = find_dataref("sim/flightmodel/position/y_agl")
simDR_gs = find_dataref("sim/flightmodel/position/groundspeed")
simDR_tas = find_dataref("sim/flightmodel2/position/true_airspeed")
simDR_magnetic_heading = find_dataref("sim/cockpit2/gauges/indicators/compass_heading_deg_mag")
simDR_volume = find_dataref("tu154b2/custom/sounds_voulme")


fortoch_l = find_dataref("sim/cockpit2/switches/custom_slider_on[0]")
fortoch_r = find_dataref("sim/cockpit2/switches/custom_slider_on[1]")
cargo_door_1 = find_dataref("sim/cockpit2/switches/custom_slider_on[2]")
cargo_door_2 = find_dataref("sim/cockpit2/switches/custom_slider_on[3]")
door_1 = find_dataref("sim/cockpit2/switches/custom_slider_on[4]")
door_2 = find_dataref("sim/cockpit2/switches/custom_slider_on[5]")
kitch_door = find_dataref("sim/cockpit2/switches/custom_slider_on[6]")
ladder_1 = find_dataref("tu154b2/custom/anim/ladder_1_call")
ladder_2 = find_dataref("tu154b2/custom/anim/ladder_2_call")
sensor_caps = find_dataref("tu154b2/custom/anim/sensors_caps")
gear_blocks = find_dataref("tu154b2/custom/anim/gear_blocks")
engine_caps = find_dataref("tu154b2/custom/anim/engine_caps")
gpu_present = find_dataref("tu154b2/custom/anim/gpu_present")
fuel_tanker_call = find_dataref("tu154b2/custom/anim/fuel_tanker_call")
catering_call = find_dataref("tu154b2/custom/anim/catering_call")

-- cfg

hid_mil_gnd = find_dataref("sim/custom/t154cfg/hide_mil")
hid_civ_gnd = find_dataref("sim/custom/t154cfg/hide_civ")
hid_def_gnd = find_dataref("sim/custom/t154cfg/hide_def")
failures = find_dataref("tu154b2/custom/failures/failures_enabled")
simDR_efb_brt = find_dataref("sim/cockpit2/switches/instrument_brightness_ratio[19]")
simDR_master = find_dataref("tu154b2/crew/ismaster")

--qfe calc



local efb_page_folder = 0
local efb_page_folder_set = 0
local efb_page_browser = 0
local efb_page_browser_set = 0
local page_was = 0
local page_was_set = 0
local bus36 = 0
local pwr_btn_psh = 0
local pwr_loc = 0
local ct_t = 0
local ct_nf = 0
local bcax = 5.28


local pos1 =0
local pos2 =0
local pos3 =0
local pos4 =0
local pos5 =0
local pos6 =0
local pos7 =0
local pos8 =0
local pos9 =0
local pos10 =0
local pos11 =0

local pax1_weight = 0
local pax2_weight = 0
local pax3_weight = 0
local pax4_weight = 0
local pax5_weight = 0
local crew_weight = 0
local cabin_weight = 0

local takeoff_weight_loc = 0
local dist_clb_weight = 0
local dist_clb = 0
local dist_crz = 0
local dist_des = 0
local fuel_clb = 0
local fuel_crz = 0
local fuel_des= 0
local crz_gnd_spd = 0
local dist_clb_weight_alt = 0
local crz_gnd_spd_alt = 0
local dist_clb_alt  = 0
local dist_crz_alt = 0
local dist_des_alt = 0
local fuel_clb_alt  = 0
local fuel_crz_alt = 0
local fuel_des_alt = 0
local crz_gnd_spd_alt = 0
local ete_mins = 0
local ete_clb = 0
local ete_crz = 0
local ete_des = 0
local fuel_for_load = 0
local step_fl_1 = 0
local step_fl_2 = 0
local step_fl_3 = 0
local step_fl_4 = 0
local weight_corr = 0
local weight_corr_2 = 0
local tyag_vor = 0
local ground_stuff = 0
local des_speed = 0

---des_calc
local alt_mach = 0
local alt_norm = 0
local alt_slow = 0    
local alt_mach_p = 0
local alt_norm_p = 0
local alt_slow_p = 0   
local vertical_spd = 0
local vertical_spd_mkr = 0
local des_speed = 0
local des_speed_mkr = 0
local wind_vs_corr = 0
local alt_feet = 0


efb_fc_taxi = 500
efb_fc_nav_res = 2000
efb_battery_q = math.random(30,100)
efb_power_mode = 2
qfe_qnh = 1013
qfe_elev = 0

dep_icao = ""
arr_icao = ""
wx_icao = ""
wx_result = ""
icao_dep_1 = 1
icao_dep_2 = 1
icao_dep_3 = 1 
icao_dep_4 = 1
icao_arr_1 = 1 
icao_arr_2 = 1
icao_arr_3 = 1
icao_arr_4 = 1
icao_wx_1 = 1
icao_wx_2 = 1
icao_wx_3 = 1
icao_wx_4 = 1






function efb_qfe_calc()
    qfe_elev_m = qfe_elev *0.3048
    qfe_hpa = qfe_qnh - qfe_elev/27
    qfe_inhg = qfe_hpa *0.02953
    qfe_mmhg = qfe_hpa *0.75006
end


function efb_config()
    
    
    
    
    if hid_mil_gnd == 1 and hid_civ_gnd == 1 and hid_def_gnd == 0 then
        ground_veh_type = 0
    end
    if hid_mil_gnd == 1 and hid_civ_gnd == 0 and hid_def_gnd == 1 then
        ground_veh_type = 1
    end
    if hid_mil_gnd == 0 and hid_civ_gnd == 1 and hid_def_gnd == 1 then
        ground_veh_type = 2
    end
    
    
    
    
    ground_stuff = fortoch_l+fortoch_r+cargo_door_1+cargo_door_2+door_1+door_2+kitch_door+ladder_1+ladder_2+sensor_caps+gear_blocks+engine_caps+gpu_present+fuel_tanker_call+catering_call
    
    if ground_stuff > 0 then
        remove_all_gnd = 1
    else
        remove_all_gnd = 0
    end
    
    
end


function efb_land_calc()
    weight_corr = (60000 - simDR_weight_act)/435
    weight_corr_2 = (60000 - simDR_weight_act)/560
    vapp_0 = math.floor((295-weight_corr) * 0.2) * 5
    vapp_15 = math.floor((250-weight_corr) * 0.2) * 5
    vapp_28 = math.floor((240-weight_corr_2) * 0.2) * 5
    vapp_36 = math.floor((235-weight_corr_2) * 0.2) * 5
    vapp_45 = math.floor((230-weight_corr_2) * 0.2) * 5
    probeg_0 = math.ceil(((vapp_0*0.277778) * (vapp_0*0.277778))/(2*11.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
    probeg_15 = math.ceil(((vapp_15*0.277778) * (vapp_15*0.277778))/(2*11.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
    probeg_28 = math.ceil(((vapp_28*0.277778) * (vapp_28*0.277778))/(2*11.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
    probeg_36 = math.ceil(((vapp_36*0.277778) * (vapp_36*0.277778))/(2*11.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
    probeg_45 = math.ceil(((vapp_45*0.277778) * (vapp_45*0.277778))/(2*11.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
end


function efb_to_calc()
    clean_speed=simDR_V2_15*1.32
    tyag_vor = 31500/(simDR_weight_act*9.80665)
    length_razb_15 = math.ceil(((simDR_VR_15*0.277778) * (simDR_VR_15*0.277778))/(2*9.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
    length_razb_28 = math.ceil(((simDR_VR_28*0.277778) * (simDR_VR_28*0.277778))/(2*9.8*((tyag_vor/6.673*0.00000000001)+0.02))*0.01)*10
end


function efb_fuel_calc()
    
    
if fuel_for_load > 0 then
        
        
            simDR_tank1 = 0
            simDR_tank4 = 0
            simDR_tank3_l = 0
            simDR_tank3_r = 0
            simDR_tank2_l = 0
            simDR_tank2_r = 0

if fuel_for_load > 3300 then
            simDR_tank1 = 3300
            fuel_for_load = fuel_for_load - 3300
            step_fl_1 = 1
else
            simDR_tank1 = fuel_for_load
            fuel_for_load = 0
            step_fl_1 = 0
            step_fl_2 = 0
            step_fl_3 = 0
            step_fl_4 = 0
end
if fuel_for_load > 3450 and step_fl_1 > 0 then
            simDR_tank3_l = 1725
            simDR_tank3_r = 1725
            fuel_for_load = fuel_for_load - 3450
            step_fl_2 = 1
elseif step_fl_1 > 0 then
            simDR_tank3_l = math.floor(fuel_for_load/2*0.1)*10
            simDR_tank3_r = math.floor(fuel_for_load/2*0.1)*10
            fuel_for_load = 0
            step_fl_1 = 0
            step_fl_2 = 0
            step_fl_3 = 0
            step_fl_4 = 0
end

if fuel_for_load > 14800 and step_fl_2 > 0  then
            simDR_tank3_l = 5405
            simDR_tank3_r = 5405
            simDR_tank2_l = 3700
            simDR_tank2_r = 3700
            fuel_for_load = fuel_for_load - 14800
            step_fl_3 = 1
elseif step_fl_2 > 0 then
            simDR_tank3_l = 1725 + math.floor(fuel_for_load/4*0.1)*10
            simDR_tank3_r = 1725 + math.floor(fuel_for_load/4*0.1)*10
            simDR_tank2_l = math.floor(fuel_for_load/4*0.1)*10
            simDR_tank2_r = math.floor(fuel_for_load/4*0.1)*10
            fuel_for_load = 0
            step_fl_1 = 0
            step_fl_2 = 0
            step_fl_3 = 0
            step_fl_4 = 0
end


if fuel_for_load > 11600 and step_fl_3 > 0 then
            simDR_tank2_l = 9500
            simDR_tank2_r = 9500
            fuel_for_load = fuel_for_load - 11600
            step_fl_4 = 1
elseif step_fl_3 > 0 then
            simDR_tank2_l = 3700+math.floor(fuel_for_load/2*0.1)*10
            simDR_tank2_r = 3700+math.floor(fuel_for_load/2*0.1)*10
            fuel_for_load = 0
            step_fl_1 = 0
            step_fl_2 = 0
            step_fl_3 = 0
            step_fl_4 = 0
end

    if fuel_for_load > 0 and step_fl_4 > 0 then
        simDR_tank4 = fuel_for_load
        fuel_for_load = 0 
        step_fl_1 = 0
        step_fl_2 = 0
        step_fl_3 = 0
        step_fl_4 = 0 
    end
         
end
    
    
ete_clb = efb_fc_fl_osn/36.3
ete_crz = (dist_crz/crz_gnd_spd)*60
ete_des = efb_fc_fl_osn/25.3333333333
    
    
ete_mins = ete_clb+ete_crz+ete_des 
    
    
fc_ete_h = math.floor(ete_mins/60)
fc_ete_m = math.floor(ete_mins - fc_ete_h*60)
    
    
landing_weight = nofuel_weight+efb_fc-fuel_main
efb_fc_dist_osn_nm = math.floor((efb_fc_dist_osn *0.539957*0.1))*10
efb_fc_dist_alt_nm = math.floor((efb_fc_dist_alt *0.539957*0.1))*10
efb_fc_fl_osn_meters = math.floor((efb_fc_fl_osn*100 *0.3048*0.1))*10
efb_fc_fl_alt_meters = math.floor((efb_fc_fl_alt*100 *0.3048*0.1))*10
efb_fc_wind_corr_kts = math.floor((efb_fc_wind_corr *0.539957*0.1))*10
efb_fc_wind_corr_alt_kts = math.floor((efb_fc_wind_corr_alt *0.539957*0.1))*10

takeoff_weight_loc = nofuel_weight+efb_fc

dist_clb_weight = (80000-takeoff_weight_loc)/400
dist_clb = (efb_fc_fl_osn*0.45)-(390/efb_fc_fl_osn*20)+dist_clb_weight
dist_des = (efb_fc_fl_osn/1.7)


if (efb_fc_fl_osn * 3.5 < 870) then
   crz_gnd_spd = efb_fc_fl_osn * 3.5+efb_fc_wind_corr
else
   crz_gnd_spd = 870+efb_fc_wind_corr
end

dist_crz = efb_fc_dist_osn - dist_clb - dist_des

fuel_clb = efb_fc_fl_osn*7.5
fuel_crz = (dist_crz/crz_gnd_spd)*6100
fuel_des = efb_fc_fl_osn*2
fuel_main = math.ceil((fuel_clb+fuel_crz+fuel_des)*0.01)*100

dist_clb_weight_alt = (80000-takeoff_weight_loc-fuel_main)/400

if (efb_fc_fl_alt * 3.5 < 870) then
   crz_gnd_spd_alt = efb_fc_fl_osn * 3.5+efb_fc_wind_corr_alt
else
   crz_gnd_spd_alt = 870+efb_fc_wind_corr_alt
end


dist_clb_alt = (efb_fc_fl_alt*0.45)-(390/efb_fc_fl_alt*20)+dist_clb_weight_alt
dist_des_alt = (efb_fc_fl_alt/1.7)
dist_crz_alt = efb_fc_dist_alt - dist_clb_alt - dist_des_alt
fuel_clb_alt = efb_fc_fl_alt*7.5
fuel_crz_alt = (dist_crz_alt/crz_gnd_spd_alt)*6100
fuel_des_alt = efb_fc_fl_alt*2
fuel_alt = math.ceil((fuel_clb_alt+fuel_crz_alt+fuel_des_alt)*0.01)*100+3000
fuel_alt = math.max (fuel_alt,6000)



if (fuel_main+fuel_alt+efb_fc_nav_res+efb_fc_taxi) < 12750 then
    efb_fc = 12750
elseif (fuel_main+fuel_alt+efb_fc_nav_res+efb_fc_taxi) > 39750 then
    efb_fc = 39750
else
    efb_fc = fuel_main+fuel_alt+efb_fc_nav_res+efb_fc_taxi
end
    
end



function efb_payload()
    

pax1_weight = simDR_payload_pax1 * 75
pax2_weight = simDR_payload_pax2 * 75
pax3_weight = simDR_payload_pax3 * 75
pax4_weight = simDR_payload_pax4 * 75
pax5_weight = simDR_payload_pax5 * 75
equip_weight = 1090
--cabin_weight = simDR_payload_cabin * 80
    
pos1 = pax1_weight*-16.06
pos2 = pos1+pax2_weight*-12.02
pos3 = pos2+pax3_weight*-3.295
pos4 = pos3+pax4_weight*2.33
pos5 = pos4+pax5_weight*6.15
pos6 = pos5+equip_weight*-10.54
pos7 = pos6+simDR_empty_weight*1.528--+cabin_weight*-8.7775
pos8 = pos7+simDR_payload_cargo3*-10.68
pos9 = pos8--+simDR_payload_cargo4*-9.51
pos10 = pos9+simDR_payload_cargo1*-8.89
pos11 = pos10+simDR_payload_cargo2*4.18
pos12 = pos11+simDR_tank1*-0.85
pos13 = pos12+simDR_tank4*-2.75
pos14 = pos13+simDR_tank2_l*-1
pos15 = pos14+simDR_tank2_r*-1
pos16 = pos15+simDR_tank3_l*3.3
pos17 = pos16+simDR_tank3_r*3.3
ct_t = pos17/takeoff_weight
ct_nf =pos11/nofuel_weight
    
cax_to = ((ct_t + 0.982)/ 5.285) *100
cax_nf = ((ct_nf + 0.982)/ 5.285) *100
    
    
    

    
pass_count = simDR_payload_pax1+simDR_payload_pax2+simDR_payload_pax3+simDR_payload_pax4+simDR_payload_pax5
pass_weight = pass_count * 75
cargo_weight = simDR_payload_cargo1+simDR_payload_cargo2
commerc_weight = pass_weight+cargo_weight
empty_weight = simDR_empty_weight + simDR_payload_cargo3 + equip_weight
nofuel_weight = empty_weight + commerc_weight
fuel_weight = simDR_tank1 + simDR_tank4 + simDR_tank2_l + simDR_tank2_r + simDR_tank3_l + simDR_tank3_r
takeoff_weight = nofuel_weight + fuel_weight
    
    
end


function efb_pwr()
    
    if simDR_36vl > 5 then
        bus36 = 1
    elseif simDR_36vr > 5 then
        bus36 = 1
    else
        bus36 = 0
    end  
    
       if efb_power_btn > 0 then
            if pwr_loc < 1 and pwr_btn_psh < 1 then
              pwr_btn_psh = 1
              pwr_loc = 1
            end
            if pwr_loc > 0 and pwr_btn_psh < 1 then
              pwr_btn_psh = 1
              efb_power = 0
              pwr_loc = 0
              efb_popup_1 = 0
              efb_popup_2 = 0
              efb_popup_3 = 0
              efb_popup_4 = 0
              efb_popup_8 = 0
              efb_popup_9 = 0
              efb_power_mode = 2
              efb_page_folder_set = 0
              efb_page_folder = 0
              efb_page_browser_set = 0
              efb_page_browser = 0
            end
       else
            pwr_btn_psh = 0
       end
    
    if pwr_loc < 1 then
          efb_page = 0
          efb_timer_start = 0
    end
	simDR_avitab_pwr = efb_power
end


function efb_misc()

    if efb_page == 60 or efb_page == 23 then
    else
        kbd_popup = 0
        kbd_select = 0
    end
    
    local currentDate  = os.date("*t")
    year = currentDate.year
    
    if show_des_calc_notify > 0 then
      if efb_page > 21 and efb_page < 21 then
       show_des_calc_notify = 0
      end
    end
    
    if efb_popup_folder > 0 then
        if efb_page < 100 then
            efb_page = 100
        end
    end
    
    if efb_popup_8 > 0 then
        efb_popup_folder = 0
        efb_popup_browser = 0
    end


    if efb_popup_browser > 0 then
        if efb_page < 60 then
            efb_page = 60
        end
    end
    
    if efb_popup_folder > 0 then
      if efb_page_folder_set < 1 then
           efb_page_folder_set = 1
           if efb_popup_browser > 0 then
              efb_popup_browser = 0
           end
           efb_page = 100
      end
    else
       if efb_page_folder_set > 0 then
          efb_page = efb_page_folder
          efb_page_folder_set = 0
       else
        if efb_page < 60 then
            efb_page_folder = efb_page
        end
       end
    end

    
    if efb_popup_browser > 0 then
        if efb_page_browser_set < 1 then
             efb_page_browser_set = 1
             if efb_popup_folder > 0 then
                efb_popup_folder = 0
             end
             efb_page = 60
        end
      else
         if efb_page_browser_set > 0 then
            efb_page = efb_page_browser
            efb_page_browser_set = 0
         else
            if efb_page < 60 then
                efb_page_browser = efb_page
            end
         end
      end

    if efb_enabled == 0 then
       efb_page = -1
       page_was_set = 1
    else
       if page_was_set > 0 then
          if page_was > 0 then
            efb_page = page_was
          else
            efb_page = 0
          end
            page_was_set = 0
       end
       if page_was_set == 0 then
            page_was = efb_page
       end
    end
    
    if efb_timer_start > 0 then
        efb_power_lit = 1
    else
        efb_power_lit = 0
    end
    
    if pwr_loc > 0 and efb_timer_start == 0 then
      if efb_battery_q > 1 then
       efb_timer_start = 21.5
      else
       efb_timer_start = 30
      end
    end
    
    if efb_timer_start > 2 then
       efb_timer_start = efb_timer_start - 0.015
    end
    
    
    if efb_timer_start > 22 and efb_timer_start < 25 then
           efb_power = 0
           pwr_loc = 0
           efb_popup_1 = 0
           efb_popup_2 = 0
           efb_popup_3 = 0
           efb_popup_4 = 0
           efb_popup_5 = 0
           efb_popup_8 = 0
           efb_popup_9 = 0
           efb_power_mode = 2
           efb_page_folder_set = 0
           efb_page_folder = 0
           efb_page_browser_set = 0
           efb_page_browser = 0
    end
    
    if efb_battery_q < 1 and efb_power > 0 then
           efb_power = 0
           pwr_loc = 0
           efb_timer_start = 0
    end
    
    
    if efb_timer_start > 2 and efb_timer_start < 3 and efb_power < 1 then
       efb_power = 1
    end
    if simDR_master ~=1 then
		if efb_page == 0 and efb_power > 0 and efb_popup_1 < 1 and efb_popup_2 < 1 and efb_popup_3 < 1 and efb_popup_4 < 1 and efb_popup_5 < 1 and efb_popup_8 < 1 and efb_popup_9 < 1 then
		  simDR_avitab_left = 2057
		  avitab_enbl = 1
		else
		  avitab_enbl = 0
		end
	end

end


function efb_battery()
    if efb_power_mode == 2 then
       simDR_efb_brt = 1
    else
       simDR_efb_brt = 0.6
    end
	if simDR_master ~=1 then
		simDR_avitab_brt = simDR_efb_brt
	end
    
    if efb_enabled < 1 then
       efb_cable_connect = 0
    end
    
    if efb_cable_connect > 0 and bus36>0 then
       efb_charging = 1
    else
       efb_charging = 0
    end
    
    if efb_charging < 1 then
      if efb_power < 1 then
        if efb_battery_q > 0 then
         efb_battery_q = efb_battery_q - (0.00011574074 * efb_power_mode * SIM_PERIOD)
        end
      else
        if efb_battery_q > 0 then
         efb_battery_q = efb_battery_q - (0.006944444444 * efb_power_mode * SIM_PERIOD)
        end
      end
    else
        if efb_battery_q < 100 then
         efb_battery_q = efb_battery_q + (0.006944444444 * SIM_PERIOD)
        end
    end
    
end




function btn1_CMDhandler(phase, duration)
    if phase == 0 then
        if efb_page == 1 then
            simDR_payload_pax1 = 0
            simDR_payload_pax2 = 0
            simDR_payload_pax3 = 0
            simDR_payload_pax4 = 0
            simDR_payload_pax5 = 0
            simDR_payload_cargo1 = 0
            simDR_payload_cargo2 = 0
            simDR_payload_cargo3 = 0
            simDR_payload_cargo4 = 0
        end
        if efb_page == 11 then
            fuel_for_load = 15000
        end
        if efb_page == 2 then
            fuel_for_load = efb_fc
            efb_page = 11
        end
        
        if efb_page == 4 then
            remove_all_gnd = 0
            fortoch_l = 0
            fortoch_r = 0
            cargo_door_1 = 0
            cargo_door_2 = 0
            door_1 = 0
            door_2 = 0
            kitch_door = 0
            ladder_1 = 0
            ladder_2 = 0
            efb_popup_6 = 0
            efb_popup_7 = 0
            sensor_caps = 0
            gear_blocks = 0
            engine_caps = 0
            gpu_present = 0
            fuel_tanker_call = 0
            catering_call = 0
        end
        
        

        if efb_page == 21 then
            if simDR_altitude > 3000 then
                alt_feet = simDR_altitude*3.28084
                if (alt_feet - 31700) > 0 then
                   alt_mach = alt_feet- 31700
                else
                   alt_mach = 0
                end
                if (alt_feet - 10000) > 0 then
                   alt_slow = 10000
                else
                   alt_slow = alt_feet
                end
                alt_norm = alt_feet - alt_mach - alt_slow
                wind_vs_corr = (simDR_tas-simDR_gs)*15.5844
                alt_mach_p = (alt_mach / (alt_feet/100))*0.01
                alt_norm_p = (alt_norm / (alt_feet/100))*0.01
                alt_slow_p = (alt_slow / (alt_feet/100))*0.01
                vertical_spd = 3000*alt_mach_p+2200*alt_norm_p+1600*alt_slow_p+wind_vs_corr
                des_speed = (445*alt_slow_p+495*(alt_norm_p+alt_mach_p))+((simDR_gs*3.6)-(445*alt_slow_p+495*(alt_norm_p+alt_mach_p)))/2
                des_distance_md = des_speed*((alt_feet/vertical_spd)/60)+10
                vertical_spd_mkr = 4800*alt_mach_p+3000*alt_norm_p+1600*alt_slow_p+wind_vs_corr
                des_speed_mkr = (445*alt_slow_p+570*(alt_norm_p+alt_mach_p))+((simDR_gs*3.6)-(445*alt_slow_p+570*(alt_norm_p+alt_mach_p)))/2
                des_distance_mkr = des_speed_mkr*((alt_feet/vertical_spd_mkr)/60)+18
            else
                show_des_calc_notify = 1
            end
        end
        
        if efb_page == 22 then
            if qfe_elev > -1000 then
                qfe_elev = qfe_elev -5
            end
        end
        
    end   
     
    if phase == 1 then
        if duration > 0.3 then
            if efb_page == 22 then
                if qfe_elev > -1000 then
                    qfe_elev = qfe_elev -15
                end
            end
        end
    end
    if phase == 2 then
            if efb_page == 22 then
                if qfe_elev < -1000 then
                    qfe_elev = -1000
                end
            end
    end
end

function btn2_CMDhandler(phase, duration)
    if phase == 0 then
        if efb_page == 1 then
            simDR_payload_pax1 = math.random(3,6)
            simDR_payload_pax2 = math.random(9,14)
            simDR_payload_pax3 = math.random(9,15)
            simDR_payload_pax4 = math.random(7,13)
            simDR_payload_pax5 = math.random(2,6)
            simDR_payload_cargo1 = math.ceil(math.random(1000,3000)*0.01) * 100
            simDR_payload_cargo2 = math.ceil(math.random(0,600)*0.01) * 100
            simDR_payload_cargo3 = math.ceil(math.random(0,200)*0.01) * 100
            simDR_payload_cargo4 = 370
        end
        if efb_page == 11 then
            fuel_for_load = 20000
        end
        if efb_page == 5 then
            if failures < 3 then
                failures = failures+1
            else
                failures = 0
            end
        end
        if efb_page == 22 then
            if qfe_elev < 3000 then
                qfe_elev = qfe_elev +5
            end
        end
    end  
    if phase == 1 then
            if efb_page == 22 then
                if duration > 0.3 then
                    if qfe_elev < 3000 then
                        qfe_elev = qfe_elev +15
                    end
                end
            end
    end
    if phase == 2 then
            if efb_page == 22 then
                if qfe_elev > 3000 then
                    qfe_elev = 3000
                end
            end
    end 	
end

function btn3_CMDhandler(phase, duration)
    if phase == 0 then
        if efb_page == 1 then
            simDR_payload_pax1 = math.random(6,12)
            simDR_payload_pax2 = math.random(18,28)
            simDR_payload_pax3 = math.random(18,30)
            simDR_payload_pax4 = math.random(14,26)
            simDR_payload_pax5 = math.random(4,12)
            simDR_payload_cargo1 = math.ceil(math.random(2500,4000)*0.01) * 100
            simDR_payload_cargo2 = math.ceil(math.random(0,900)*0.01) * 100
            simDR_payload_cargo3 = math.ceil(math.random(0,200)*0.01) * 100
            simDR_payload_cargo4 = 370
        end
        if efb_page == 11 then
            fuel_for_load = 25000
        end
            if efb_page == 22 then
                if qfe_qnh > 900 then
                    qfe_qnh = qfe_qnh -1
                end
            end
    end    
    if phase == 1 then
            if efb_page == 22 then
                if duration > 0.3 then
                    if qfe_qnh > 900 then
                        qfe_qnh = qfe_qnh -1
                    end
                end
            end
    end
    if phase == 2 then
            if efb_page == 22 then
                if qfe_qnh < 900 then
                    qfe_qnh = 900
                end
            end
    end 	
end

function btn4_CMDhandler(phase, duration)
    if phase == 0 then
        if efb_page == 1 then
            simDR_payload_pax1 = math.random(9,15)
            simDR_payload_pax2 = math.random(27,36)
            simDR_payload_pax3 = math.random(27,45)
            simDR_payload_pax4 = math.random(21,39)
            simDR_payload_pax5 = math.random(6,12)
            simDR_payload_cargo1 = math.ceil(math.random(3500,4500)*0.01) * 100
            simDR_payload_cargo2 = math.ceil(math.random(0,900)*0.01) * 100
            simDR_payload_cargo3 = math.ceil(math.random(0,200)*0.01) * 100
            simDR_payload_cargo4 = 370
        end
        if efb_page == 11 then
            fuel_for_load = 39705
        end
        
        if efb_page == 22 then
            if qfe_qnh < 1100 then
                qfe_qnh = qfe_qnh +1
            end
        end
    end   
    if phase == 1 then
            if efb_page == 22 then
                if duration > 0.3 then
                    if qfe_qnh < 1100 then
                        qfe_qnh = qfe_qnh +1
                    end
                end
            end
    end
    if phase == 2 then
            if efb_page == 22 then
                if qfe_qnh > 1100 then
                    qfe_qnh = 1100
                end
            end
    end	
end

function btn5_CMDhandler(phase, duration)
    if phase == 0 then
        if efb_page == 1 then
            simDR_payload_pax1 = 18
            simDR_payload_pax2 = 44
            simDR_payload_pax3 = 48
            simDR_payload_pax4 = 42
            simDR_payload_pax5 = 12
            simDR_payload_cargo1 = 500
            simDR_payload_cargo2 = 5000
            simDR_payload_cargo3 = 200
            simDR_payload_cargo4 = 370
        end
        if efb_page == 11 then
            simDR_tank1 = simDR_fuel_tanks[0]
            simDR_tank2_r = simDR_fuel_tanks[2]
            simDR_tank2_l = simDR_fuel_tanks[3]
            simDR_tank3_r = simDR_fuel_tanks[4]
            simDR_tank3_l = simDR_fuel_tanks[5]
            simDR_tank4 = simDR_fuel_tanks[1]
        end
    end   	
end	




function vol_up_CMDhandler(phase, duration)
    if phase == 0 then
        if simDR_volume < 1000 then
            simDR_volume = simDR_volume +50
        end
    end   
    if phase == 1 then
        if duration > 0.3 then
            if simDR_volume < 1000 then
                simDR_volume = simDR_volume +50
            end
        end
    end
    if phase == 2 then
        if simDR_volume > 1000 then
           simDR_volume = 1000
        end
    end
end	

function vol_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if simDR_volume > 0 then
            simDR_volume = simDR_volume -50
        end
    end   
    if phase == 1 then
        if duration > 0.3 then
            if simDR_volume > 0 then
                simDR_volume = simDR_volume -50
            end
        end
    end
    if phase == 2 then
        if simDR_volume < 0 then
            simDR_volume = 0
        end
    end
end	








btn1_cmd = create_command("t154_efb/btn1", "EFB BTN1", btn1_CMDhandler)
btn2_cmd = create_command("t154_efb/btn2", "EFB BTN2", btn2_CMDhandler)
btn3_cmd = create_command("t154_efb/btn3", "EFB BTN3", btn3_CMDhandler)
btn4_cmd = create_command("t154_efb/btn4", "EFB BTN4", btn4_CMDhandler)
btn5_cmd = create_command("t154_efb/btn5", "EFB BTN5", btn5_CMDhandler)
vol_up_cmd = create_command("t154_efb/vol_up", "EFB volume up", vol_up_CMDhandler)
vol_dn_cmd = create_command("t154_efb/vol_dn", "EFB volume dn", vol_dn_CMDhandler)



efb_key_a_CMD = deferred_command("t154_efb/efb_key_a", "EFB KEY A", efb_key_A_CMDhandler)
efb_key_b_CMD = deferred_command("t154_efb/efb_key_b", "EFB KEY B", efb_key_B_CMDhandler)
efb_key_c_CMD = deferred_command("t154_efb/efb_key_c", "EFB KEY C", efb_key_C_CMDhandler)
efb_key_d_CMD = deferred_command("t154_efb/efb_key_d", "EFB KEY D", efb_key_D_CMDhandler)
efb_key_e_CMD = deferred_command("t154_efb/efb_key_e", "EFB KEY E", efb_key_E_CMDhandler)
efb_key_f_CMD = deferred_command("t154_efb/efb_key_f", "EFB KEY F", efb_key_F_CMDhandler)
efb_key_g_CMD = deferred_command("t154_efb/efb_key_g", "EFB KEY G", efb_key_G_CMDhandler)
efb_key_h_CMD = deferred_command("t154_efb/efb_key_h", "EFB KEY H", efb_key_H_CMDhandler)
efb_key_i_CMD = deferred_command("t154_efb/efb_key_i", "EFB KEY I", efb_key_I_CMDhandler)
efb_key_j_CMD = deferred_command("t154_efb/efb_key_j", "EFB KEY J", efb_key_J_CMDhandler)
efb_key_k_CMD = deferred_command("t154_efb/efb_key_k", "EFB KEY K", efb_key_K_CMDhandler)
efb_key_l_CMD = deferred_command("t154_efb/efb_key_l", "EFB KEY L", efb_key_L_CMDhandler)
efb_key_m_CMD = deferred_command("t154_efb/efb_key_m", "EFB KEY M", efb_key_M_CMDhandler)
efb_key_n_CMD = deferred_command("t154_efb/efb_key_n", "EFB KEY N", efb_key_N_CMDhandler)
efb_key_o_CMD = deferred_command("t154_efb/efb_key_o", "EFB KEY O", efb_key_O_CMDhandler)
efb_key_p_CMD = deferred_command("t154_efb/efb_key_p", "EFB KEY P", efb_key_P_CMDhandler)
efb_key_q_CMD = deferred_command("t154_efb/efb_key_q", "EFB KEY Q", efb_key_Q_CMDhandler)
efb_key_r_CMD = deferred_command("t154_efb/efb_key_r", "EFB KEY R", efb_key_R_CMDhandler)
efb_key_s_CMD = deferred_command("t154_efb/efb_key_s", "EFB KEY S", efb_key_S_CMDhandler)
efb_key_t_CMD = deferred_command("t154_efb/efb_key_t", "EFB KEY T", efb_key_T_CMDhandler)
efb_key_u_CMD = deferred_command("t154_efb/efb_key_u", "EFB KEY U", efb_key_U_CMDhandler)
efb_key_v_CMD = deferred_command("t154_efb/efb_key_v", "EFB KEY V", efb_key_V_CMDhandler)
efb_key_w_CMD = deferred_command("t154_efb/efb_key_w", "EFB KEY W", efb_key_W_CMDhandler)
efb_key_x_CMD = deferred_command("t154_efb/efb_key_x", "EFB KEY X", efb_key_X_CMDhandler)
efb_key_y_CMD = deferred_command("t154_efb/efb_key_y", "EFB KEY Y", efb_key_Y_CMDhandler)
efb_key_z_CMD = deferred_command("t154_efb/efb_key_z", "EFB KEY Z", efb_key_Z_CMDhandler)
calc_fork_CMD = deferred_command("t154_efb/calc_fork", "EFB CALC FORK", calc_fork_CMDhandler)
wxr_req_CMD = deferred_command("t154_efb/wxr_req", "EFB WXR req", wxr_req_CMDhandler)


function after_physics()
    efb_config()    
    efb_qfe_calc()   
    efb_fuel_calc()
    efb_payload()    
	if simDR_master ~=1 then
		efb_pwr()
		efb_battery()
		efb_misc()
		efb_to_calc()
		efb_land_calc()
	end
end
