function tu154_kontur_weather_mode_DRhandler() end
function tu154_kontur_weather_sys_DRhandler() end



function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end


function decToDms_lat(dec_lat)
	local abs_dec_lat = math.abs(dec_lat)
	local degrees_lat = math.floor(abs_dec_lat)
	local mins_lat = math.floor((abs_dec_lat - degrees_lat) * 60)
	local secs_lat = (((abs_dec_lat - degrees_lat) * 60) - mins_lat) * 60
	local secs_round_lat = math.floor(secs_lat + 0.5)
	local ns = "S"
	if dec_lat > 0 then ns = "N" end
	return ns .. " "..degrees_lat ..",".. mins_lat ..".".. secs_round_lat
end

function decToDms_long(dec_long)
	local abs_dec_long = math.abs(dec_long)
	local degrees_long = math.floor(abs_dec_long)
	local mins_long = math.floor((abs_dec_long - degrees_long) * 60)
	local secs_long = (((abs_dec_long - degrees_long) * 60) - mins_long) * 60
	local secs_round_long = math.floor(secs_long + 0.5)
	local ew = "W"
    local dlz = ""
	if dec_long > 0 then ew = "E" end
    if degrees_long < 100 then dlz = "0" end
	return ew .. dlz .. degrees_long ..",".. mins_long ..".".. secs_round_long
end








simDR_gns = find_dataref("tu154b2/custom/anim/show_gns")
simDR_startuprunning = find_dataref("sim/operation/prefs/startup_running")
simDR_gs					= find_dataref("sim/flightmodel/position/groundspeed")
simDR_gps_dme					= find_dataref("sim/cockpit2/radios/indicators/gps_dme_distance_nm")
simDR_passed                    = find_dataref("sim/operation/misc/frame_rate_period")
simDR_time                    = find_dataref("sim/time/total_running_time_sec")
--simDR_weather_alpha                    = find_dataref("sim/cockpit/switches/EFIS_weather_alpha")
simDR_bus27left                    = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right                    = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_taws_dist                    = find_dataref("tu154b2/custom/taws/distance_set")
simDR_taws_mode                    = find_dataref("tu154b2/custom/taws/mode_set")
simDR_tcas_mode                    = find_dataref("tu154b2/custom/tcas/mode_set")
simDR_wx_mode                    = find_dataref("tu154b2/custom/radar/mode_set")
simDR_tcas_disp_mod                    = find_dataref("tu154b2/custom/tcas/screen_mode")
simDR_but_sound                    = find_dataref("tu154b2/custom/buttons/srpbz/but_down")
--simDR_sw_sound                      = find_dataref("tu154b2/custom/lights/tech_light_set")
simDR_tcas_on                    = find_dataref("sim/cockpit2/EFIS/EFIS_tcas_on")
simDR_tcas_on_fo                    = find_dataref("sim/cockpit2/EFIS/EFIS_tcas_on_copilot")
simDR_taws_but_mode                    = find_dataref("tu154b2/custom/buttons/srpbz/but_view")
simDR_vbe1                   = find_dataref("tu154b2/custom/switchers/ovhd/vbe_1_on")
simDR_vbe2                   = find_dataref("tu154b2/custom/switchers/ovhd/vbe_2_on")
simDR_gps_min                    = find_dataref("sim/cockpit2/radios/indicators/gps_dme_time_min")
simDR_lat					= find_dataref("sim/flightmodel/position/latitude")
simDR_long					= find_dataref("sim/flightmodel/position/longitude")
simDR_srpbz_brightness		= find_dataref("tu154b2/custom/rotary/srpbz/brightness")
simDR_kontur_1_brt		= find_dataref("sim/cockpit2/switches/instrument_brightness_ratio[14]")
simDR_kontur_2_brt		= find_dataref("sim/cockpit2/switches/instrument_brightness_ratio[15]")
simDR_kln					= find_dataref("tu154b2/custom/switchers/ovhd/kln_on")
simDR_rls					= find_dataref("tu154b2/custom/switchers/console/rls_mode")
simDR_nav_select                    = find_dataref("tu154b2/custom/switchers/nav_select")
simDR_efis_1_mode					= find_dataref("sim/cockpit/switches/EFIS_map_submode")
simDR_efis_1_range					= find_dataref("sim/cockpit/switches/EFIS_map_range_selector")
simDR_efis_1_fix					= find_dataref("sim/cockpit2/EFIS/EFIS_fix_on")
simDR_efis_1_wxr					= find_dataref("sim/cockpit2/EFIS/EFIS_weather_on")
simDR_efis_1_ndb					= find_dataref("sim/cockpit2/EFIS/EFIS_ndb_on")
simDR_efis_1_vor					= find_dataref("sim/cockpit2/EFIS/EFIS_vor_on")
simDR_efis_1_apt					= find_dataref("sim/cockpit2/EFIS/EFIS_airport_on")
simDR_efis_1_tcas					= find_dataref("sim/cockpit2/EFIS/EFIS_tcas_on")
simDR_efis_2_mode					= find_dataref("sim/cockpit2/EFIS/map_mode_copilot")
simDR_efis_2_range					= find_dataref("sim/cockpit2/EFIS/map_range_copilot")
simDR_efis_2_fix					= find_dataref("sim/cockpit2/EFIS/EFIS_fix_on_copilot")
simDR_efis_2_wxr					= find_dataref("sim/cockpit2/EFIS/EFIS_weather_on_copilot")
simDR_efis_2_ndb					= find_dataref("sim/cockpit2/EFIS/EFIS_ndb_on_copilot")
simDR_efis_2_vor					= find_dataref("sim/cockpit2/EFIS/EFIS_vor_on_copilot")
simDR_efis_2_apt					= find_dataref("sim/cockpit2/EFIS/EFIS_airport_on_copilot")
simDR_efis_2_tcas					= find_dataref("sim/cockpit2/EFIS/EFIS_tcas_on_copilot")

simDR_fms_line					= find_dataref("sim/graphics/misc/kill_map_fms_line")
simDR_36v				= find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_rv2				= find_dataref("tu154b2/custom/elec/rv5_right_cc")
simDRutchours				= find_dataref("sim/cockpit2/clock_timer/zulu_time_hours")
simDRutcmins				= find_dataref("sim/cockpit2/clock_timer/zulu_time_minutes")
simDRnostab_l				= find_dataref("tu154b2/custom/gauges/ahz/ahz_flag_L")
simDRnostab_r				= find_dataref("tu154b2/custom/gauges/ahz/ahz_flag_R")
simDRtcasmode				= find_dataref("tu154b2/custom/tcas/screen_mode")
simDRcrs_plank1				= find_dataref("tu154b2/custom/radio/nav1_cs")
simDRgs_plank1				= find_dataref("tu154b2/custom/radio/nav1_gs")
simDRcrs_flag1				= find_dataref("tu154b2/custom/radio/nav1_cs_flag")
simDRgs_flag1				= find_dataref("tu154b2/custom/radio/nav1_gs_flag")
simDRcrs_plank2				= find_dataref("tu154b2/custom/radio/nav2_cs")
simDRgs_plank2				= find_dataref("tu154b2/custom/radio/nav2_gs")
simDRcrs_flag2				= find_dataref("tu154b2/custom/radio/nav2_cs_flag")
simDRgs_flag2				= find_dataref("tu154b2/custom/radio/nav2_gs_flag")
simDR_gmk_crs = find_dataref("tu154b2/custom/tks/kln_psi")
simDR_diss_slipe = find_dataref("tu154b2/custom/nvu/diss_slip_angle")
simDR_dtk = find_dataref("sim/cockpit/radios/gps_course_degtm")
simDR_rel_bear = find_dataref("sim/cockpit2/radios/indicators/gps_relative_bearing_deg")
simDR_bear = find_dataref("sim/cockpit2/radios/indicators/gps_bearing_deg_mag")
-- simDR_hdg = find_dataref("tu154b2/custom/tks/kln_psi")

simDR_radioalt					= find_dataref("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot")
simDR_vvi					= find_dataref("tu154b2/custom/gauges/vvi_left")
simDR_vvi_rv					= find_dataref("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")
simDR_tcas_pow				= find_dataref("sim/custom/tcas2000/tcas_pwr")
T154_kontur_on = find_dataref("tu154b2/custom/b2/kontur_on")
simDR_taws_message = find_dataref("tu154b2/custom/taws/taws_message")



kntr_1_brt_sw		= deferred_dataref("sim/custom/kontur/kntr_1_brt_sw", "number")
kntr_2_brt_sw		= deferred_dataref("sim/custom/kontur/kntr_2_brt_sw", "number")
map_center_capt = deferred_dataref("sim/custom/kontur/map_center/capt", "number")
map_center_fo = deferred_dataref("sim/custom/kontur/map_center/fo", "number")
z_bok = deferred_dataref("sim/custom/kontur/zbok", "number")
z_bok_nm = deferred_dataref("sim/custom/kontur/zbok_nm", "number")
radioalt = deferred_dataref("sim/custom/kontur/radioalt", "number")
vvi = deferred_dataref("sim/custom/kontur/vvi", "number")
vvi_rv = deferred_dataref("sim/custom/kontur/vvi_rv", "number")
gs_kmh = deferred_dataref("sim/custom/kontur/gs_kmh", "number")
gs_kts = deferred_dataref("sim/custom/kontur/gs_kts", "number")
gps_dme_km = deferred_dataref("sim/custom/kontur/gps_dme_km", "number")
gps_hours = deferred_dataref("sim/custom/kontur/gps_dme_hours", "number")
gps_min = deferred_dataref("sim/custom/kontur/gps_dme_min", "number")
gps_min_eta = deferred_dataref("sim/custom/kontur/gps_dme_min_eta", "number")
gps_hours_eta = deferred_dataref("sim/custom/kontur/gps_dme_hours_eta", "number")
gps_time_mode_l = deferred_dataref("sim/custom/kontur/left_gps_time_mod", "number")
gps_time_mode_r = deferred_dataref("sim/custom/kontur/right_gps_time_mod", "number")
kontur_on_l = deferred_dataref("sim/custom/kontur/left_on", "number")
kontur_nav_menu_l = deferred_dataref("sim/custom/kontur/left_nav_menu", "number")
info_page_l = deferred_dataref("sim/custom/kontur/left_info_page", "number")
info_page_r = deferred_dataref("sim/custom/kontur/right_info_page", "number")
kontur_pow_l_lit = deferred_dataref("sim/custom/kontur/light/left_power", "number")
kontur_pow_r_lit = deferred_dataref("sim/custom/kontur/light/right_power", "number")
kontur_on_r = deferred_dataref("sim/custom/kontur/right_on", "number")
weather_lit = deferred_dataref("sim/custom/kontur/weather_lit", "number")
weather_sys = deferred_dataref("sim/custom/kontur/weather_sys", "number",tu154_kontur_weather_sys_DRhandler)
weather_mode = deferred_dataref("sim/custom/kontur/weather_mode", "number",tu154_kontur_weather_mode_DRhandler)
kontur_nav_l = deferred_dataref("sim/custom/kontur/left_nav", "number")
kontur_wx_l = deferred_dataref("sim/custom/kontur/left_wx", "number")
kontur_wx_l_aux = deferred_dataref("sim/custom/kontur/left_wx_aux", "number")
kontur_tcas_l = deferred_dataref("sim/custom/kontur/left_tcas", "number")
kontur_tcas_l_aux = deferred_dataref("sim/custom/kontur/left_tcas_aux", "number")
kontur_tcas_r = deferred_dataref("sim/custom/kontur/right_tcas", "number")
kontur_tcas_r_aux = deferred_dataref("sim/custom/kontur/right_tcas_aux", "number")
kontur_wx_test_l = deferred_dataref("sim/custom/kontur/left_wx_test", "number")
kontur_taws_l = deferred_dataref("sim/custom/kontur/left_taws", "number")
kontur_pow_l = deferred_dataref("sim/custom/kontur/left_power", "number")
kontur_pow_r = deferred_dataref("sim/custom/kontur/right_power", "number")
ubs_pow_l = deferred_dataref("sim/custom/ubs/left_power", "number")
ubs_pow_r = deferred_dataref("sim/custom/ubs/right_power", "number")
kontur_onoff_l = deferred_dataref("sim/custom/kontur/left_onoff", "number")
kontur_test_l = deferred_dataref("sim/custom/kontur/left_test", "number")
kontur_nav_menu_r = deferred_dataref("sim/custom/kontur/right_nav_menu", "number")
kontur_nav_r = deferred_dataref("sim/custom/kontur/right_nav", "number")
kontur_taws_r = deferred_dataref("sim/custom/kontur/right_taws", "number")
kontur_wx_r = deferred_dataref("sim/custom/kontur/right_wx", "number")
kontur_wx_r_aux = deferred_dataref("sim/custom/kontur/right_wx_aux", "number")
kontur_onoff_r = deferred_dataref("sim/custom/kontur/right_onoff", "number")
kontur_test_r = deferred_dataref("sim/custom/kontur/right_test", "number")
wx_test_init = deferred_dataref("sim/custom/kontur/wx_test_run", "number")
diff_gs = deferred_dataref("sim/custom/kontur/gs_diff", "number")
diff_crs = deferred_dataref("sim/custom/kontur/crs_diff", "number")
gs_fl = deferred_dataref("sim/custom/kontur/gs_fl", "number")
crs_fl = deferred_dataref("sim/custom/kontur/crs_fl", "number")
wx2000_gain = deferred_dataref("sim/custom/wx2000_gain", "number")
kontur_rru_l = deferred_dataref("sim/custom/kontur/rru_l", "number")
kontur_rru_r = deferred_dataref("sim/custom/kontur/rru_r", "number")
uns1_on					= deferred_dataref("sim/custom/uns1_on", "number")
uns2_on					= deferred_dataref("sim/custom/uns2_on", "number")
gmk_crs					= deferred_dataref("sim/custom/kontur/course_gmk", "number")
fpu_crs					= deferred_dataref("sim/custom/kontur/course_fpu", "number")
gnd_trk					= find_dataref("sim/cockpit2/gauges/indicators/ground_track_mag_pilot")


kontur_button_lit_l = deferred_dataref("sim/custom/kontur/button_lights_l", "number")
kontur_dist_mode_l = deferred_dataref("sim/custom/kontur/dist_mode_l", "number")
kontur_info_knob1_l = deferred_dataref("sim/custom/kontur/info_knob1_l", "number")
kontur_info_knob2_l = deferred_dataref("sim/custom/kontur/info_knob2_l", "number")

kontur_button_lit_r = deferred_dataref("sim/custom/kontur/button_lights_r", "number")
kontur_dist_mode_r = deferred_dataref("sim/custom/kontur/dist_mode_r", "number")
kontur_info_knob1_r = deferred_dataref("sim/custom/kontur/info_knob1_r", "number")
kontur_info_knob2_r = deferred_dataref("sim/custom/kontur/info_knob2_r", "number")

kontur_zbok_test = deferred_dataref("sim/custom/kontur/zbok_test", "number")

kontur_wx_side = deferred_dataref("sim/custom/kontur/wx_side", "number")

lat_string = deferred_dataref("sim/custom/kontur/latitude", "string")
long_string = deferred_dataref("sim/custom/kontur/longitude", "string")

simDRradar_tilt = find_dataref("sim/cockpit2/EFIS/EFIS_weather_tilt")
simDRauto_tilt = find_dataref("sim/cockpit2/EFIS/EFIS_weather_auto_tilt")
simDRtaws_rdy = find_dataref("tu154b2/custom/taws/disp_rdy")


local radioalt_loc = 0
local info_knob1_l_loc = kontur_info_knob1_l
local info_knob2_l_loc = 0
local info_knob1_r_loc = kontur_info_knob1_r
local info_knob2_r_loc = 0
local kontur_test_timer_l = 0
local kontur_test_start_l = 1
local kontur_test_timer_r = 0
local kontur_test_start_r = 1
local kontur_eta = 0
local weather_test_timer = 0
local wx_taws_sw_l = 0
local wx_taws_sw_r = 0
local aircraft_loaded = 0
local btn_onoff_l = 0
local btn_onoff_r = 0
local btn_tcas = 0
local btn_sound = 0
local start_vvi_check = 1
local start_vvi = 0
local radioalt_check = 0
local change_gps_time = 0
local sw_sound = 0
local nostab_l = 0
local nostab_r = 0
local relative_brg = 0
local true_brg = 0
local rng_wx_l = 3
local rng_tcas_l = 2
local rng_taws_l = 2
local rng_wx_r = 3
local rng_tcas_r = 2
local rng_taws_r = 2
local simDR_taws_message_prev = 0
wx2000_gain = 0
kontur_rru_l = 0.5
kontur_rru_r = 0.5
weather_mode = 1
kntr_1_brt_sw = 0.7
kntr_2_brt_sw = 0.7
simDR_kontur_1_brt = 0.6
simDR_kontur_2_brt = 0.6

function kontur_onoff_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_l > 0 and simDR_bus27left > 0 then
            if kontur_onoff_l < 1 then
                kontur_onoff_l = 1
                kontur_test_timer_l = 0
                kontur_test_start_l = 0
                kontur_test_l = 0
                kontur_on_l = 0
                kontur_nav_l = 0
            else
				kontur_wx_l = 0
				kontur_wx_test_l = 0
				kontur_onoff_l = 0
				kontur_nav_l = 0
				kontur_test_start_l = 1
            end
        else
            kontur_onoff_l = 0
            kontur_nav_l = 0
			kontur_tcas_l = 0
			kontur_tcas_l_aux = 0
			kontur_taws_l = 0
			kontur_wx_l = 0
			kontur_wx_l_aux = 0
            kontur_test_start_l = 1
            kontur_test_timer_l = 0
            kontur_test_l = 0
			rng_wx_l = 3
			rng_tcas_l = 2
			rng_taws_l = 2
        end
        
    end   	
end	

local wx_last=2

function kontur_rls_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_wx_l<1 then
            -- if kontur_wx_test_l == -1 and weather_sys > 0 and simDR_36v > 0 then
                -- kontur_wx_l = 2
            -- else
		      -- kontur_wx_l = 1
            -- end
			kontur_tcas_l = 0
			kontur_taws_l = 0
			kontur_tcas_l_aux = 0
		    kontur_wx_l_aux = 0
			kontur_wx_l=1
        --else
			-- wx_last=kontur_wx_l
			-- kontur_wx_l = 0
        end
		if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
			if kontur_test_timer_l > 17 then
				kontur_test_timer_l = 0
				kontur_test_start_l = 0
				kontur_test_l = 0
				kontur_on_l = 1   
				info_page_l = 0
				simDR_efis_1_fix					= 0
				simDR_efis_1_wxr					= 0
				simDR_efis_1_ndb					= 0
				simDR_efis_1_tcas					= 0
				if simDR_efis_1_range < 5 then
					simDR_efis_1_vor					= 1
				else
					simDR_efis_1_vor					= 0
				end
				simDR_efis_1_apt					= 1
				kontur_nav_l = 0
				kontur_tcas_l = 0
				kontur_taws_l = 0
			end  
		end
    end   	
end	


function kontur_nav_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_nav_l < 1 and (kontur_tcas_l>0 or kontur_taws_l>0 or kontur_wx_l>0) then
			kontur_nav_l = 1
        else
			kontur_nav_l = 0
        end
		if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
			if kontur_test_timer_l > 17 then
				kontur_test_timer_l = 0
				kontur_test_start_l = 0
				kontur_test_l = 0
				kontur_on_l = 1   
				info_page_l = 0
				simDR_efis_1_fix					= 0
				simDR_efis_1_wxr					= 0
				simDR_efis_1_ndb					= 0
				simDR_efis_1_tcas					= 0
			-- if simDR_efis_1_range < 5 then
				-- simDR_efis_1_vor					= 1
			-- else
				-- simDR_efis_1_vor					= 0
			-- end
				simDR_efis_1_apt					= 0
				kontur_nav_l = 0
				kontur_wx_l = 0
				kontur_taws_l = 0
			end  
		end
    end   	
end	

function kontur_tcas_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_tcas_l<1 then
			kontur_tcas_l = 1
			kontur_tcas_l_aux = 0
			wx_last=kontur_wx_l
			kontur_wx_l = 0
			kontur_wx_l_aux = 0
			kontur_taws_l = 0
        -- else
        -- kontur_tcas_l = 0
        end
		if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
			if kontur_test_timer_l > 17 then
				kontur_test_timer_l = 0
				kontur_test_start_l = 0
				kontur_test_l = 0
				kontur_on_l = 1   
				info_page_l = 0
				simDR_efis_1_fix					= 0
				simDR_efis_1_wxr					= 0
				simDR_efis_1_ndb					= 0
				simDR_efis_1_tcas					= 0
				if simDR_efis_1_range < 5 then
					simDR_efis_1_vor					= 1
				else
					simDR_efis_1_vor					= 0
				end
				simDR_efis_1_apt					= 1
				kontur_nav_l = 0
				kontur_wx_l = 0
				kontur_taws_l = 0
			end  
		end
    end   	
end	

function kontur_taws_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and info_page_l < 1 and kontur_taws_l<1 then
			kontur_tcas_l = 0
			kontur_tcas_l_aux = 0
			wx_last=kontur_wx_l
			kontur_wx_l = 0
			kontur_wx_l_aux = 0
			kontur_taws_l = 1
		end
        -- else
			-- kontur_taws_l = 0
        --end
    if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
        if kontur_test_timer_l > 17 then
            kontur_test_timer_l = 0
            kontur_test_start_l = 0
            kontur_test_l = 0
            kontur_on_l = 1   
            info_page_l = 0
            simDR_efis_1_fix					= 0
            simDR_efis_1_wxr					= 0
            simDR_efis_1_ndb					= 0
            simDR_efis_1_tcas					= 0
			if simDR_efis_1_range < 5 then
				simDR_efis_1_vor					= 1
			else
				simDR_efis_1_vor					= 0
			end
            simDR_efis_1_apt					= 1
            kontur_nav_l = 0
            kontur_wx_l = 0
            kontur_tcas_l = 0
        end  
    end
    end   	
end	

function kontur_zoomin_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if info_page_l > 0 then
            info_page_l = 1
        end
        if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and info_page_l < 1 then
			if kontur_wx_l>0 and rng_wx_l>1 and kontur_wx_side == 0 then
				rng_wx_l = rng_wx_l -1
			elseif kontur_taws_l>0 and rng_taws_l>1 then
				rng_taws_l = rng_taws_l -1
			elseif kontur_tcas_l>0 and rng_tcas_l>1 then
				rng_tcas_l = rng_tcas_l -1
			end
        end
    if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
        if kontur_test_timer_l > 17 then
            kontur_test_timer_l = 0
            kontur_test_start_l = 0
            kontur_test_l = 0
            kontur_on_l = 1   
            info_page_l = 0
            simDR_efis_1_fix					= 0
            simDR_efis_1_wxr					= 0
            simDR_efis_1_ndb					= 0
            simDR_efis_1_tcas					= 0
        if simDR_efis_1_range < 5 then
            simDR_efis_1_vor					= 1
        else
            simDR_efis_1_vor					= 0
        end
            simDR_efis_1_apt					= 1
            kontur_nav_l = 0
            kontur_wx_l = 0
            kontur_taws_l = 0
        end  
    end
	
    end   	
end	

function kontur_zoomout_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if info_page_l > 0 then
            info_page_l = 2
        end
        if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and info_page_l < 1 then
			if kontur_wx_l>0 and rng_wx_l <5 and kontur_wx_side == 0 then
				rng_wx_l = rng_wx_l + 1
			elseif kontur_taws_l>0 and rng_taws_l <7 then
				rng_taws_l = rng_taws_l + 1
			elseif kontur_tcas_l>0 and rng_tcas_l<4 then
				rng_tcas_l = rng_tcas_l + 1
			end
        end
	
    if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
        if kontur_test_timer_l > 17 then
            kontur_test_timer_l = 0
            kontur_test_start_l = 0
            kontur_test_l = 0
            kontur_on_l = 1   
            info_page_l = 0
            simDR_efis_1_fix					= 0
            simDR_efis_1_wxr					= 0
            simDR_efis_1_ndb					= 0
            simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
            simDR_efis_1_apt					= 1
            kontur_nav_l = 0
            kontur_wx_l = 0
            kontur_taws_l = 0
        end  
    end
    end   	
end	

function kontur_btn1_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_wx_side == 0 then
			if kontur_nav_menu_l == 2 then
				if kontur_dist_mode_l < 1 then
					kontur_dist_mode_l = 1
				else
					kontur_dist_mode_l = 0
				end
			elseif kontur_nav_menu_l == 3 then
				if gps_time_mode_l < 1 then
					gps_time_mode_l = 1
				else
					gps_time_mode_l = 0
				end
			end
		else	
			if kontur_nav_menu_l == 2 then
				if kontur_nav_l > 0 then
					if gps_time_mode_l < 1 then
						gps_time_mode_l = 1
					else
						gps_time_mode_l = 0
					end
				else
					kontur_wx_side = 0 
				end
			elseif kontur_nav_menu_l == 3 then
				kontur_wx_side = 0 
			end
		end
        
    if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
        if kontur_test_timer_l > 17 then
            kontur_test_timer_l = 0
            kontur_test_start_l = 0
            kontur_test_l = 0
            kontur_on_l = 1   
            info_page_l = 0
            simDR_efis_1_fix					= 0
            simDR_efis_1_wxr					= 0
            simDR_efis_1_ndb					= 0
            simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
            simDR_efis_1_apt					= 1
            kontur_nav_l = 0
            kontur_wx_l = 0
            kontur_taws_l = 0
        end  
    end
    end   	
end	

function kontur_btn2_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if info_page_l > 0 and ubs_pow_l > 0 then
            info_page_l = 3
        end
		if kontur_wx_l>0 and simDR_tcas_pow > 0 then
			if kontur_tcas_l_aux==0 then
				kontur_tcas_l_aux=1
			else
				kontur_tcas_l_aux=0
			end
		end
		if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
			if kontur_test_timer_l > 17 then
				kontur_test_timer_l = 0
				kontur_test_start_l = 0
				kontur_test_l = 0
				kontur_on_l = 1   
				info_page_l = 0
				simDR_efis_1_fix					= 0
				simDR_efis_1_wxr					= 0
				simDR_efis_1_ndb					= 0
				simDR_efis_1_tcas					= 0
			-- if simDR_efis_1_range < 5 then
				-- simDR_efis_1_vor					= 1
			-- else
				-- simDR_efis_1_vor					= 0
			-- end
				simDR_efis_1_apt					= 1
				kontur_nav_l = 0
				kontur_wx_l = 0
				kontur_taws_l = 0
			end  
		end       
    end   	
end	

local radar_init=0
local radar_test_init=0

function kontur_btn3_button_l_CMDhandler(phase, duration)
     if phase == 0 then
        if info_page_l > 0 then
			info_page_l = 0    
			kontur_nav_l = 0
			kontur_wx_l = 0
			kontur_taws_l = 0
		end
		if kontur_tcas_l>0 then
			if kontur_wx_l_aux==0 and weather_lit == 1 then
				kontur_wx_l_aux=1
			else
				kontur_wx_l_aux=0
			end
		end
        if kontur_taws_l > 0 and info_page_l < 1 then
			if kontur_taws_l == 1 and simDRtaws_rdy == 1 then
				kontur_taws_l = 2
			else
				kontur_taws_l = 1
			end
        end
        
        if kontur_wx_l > 0 and info_page_l < 1 and kontur_wx_side == 0 and kontur_nav_menu_l == 0 then
            if simDR_wx_mode == 2 then
				radar_test_init = 1
                simDR_wx_mode = 1
                -- if kontur_wx_r == 2 then
                  -- kontur_wx_r = 1  
                -- end
			elseif simDR_wx_mode == 1 then
				radar_test_init = 0
                simDR_wx_mode = 3
				kontur_wx_test_l = -1
				simDRauto_tilt=1
                -- if kontur_wx_r == 1 then
                  -- kontur_wx_r = 3  
                -- end
			elseif simDR_wx_mode == 3 then
                simDR_wx_mode = 4
                -- if kontur_wx_r == 3 then
                  -- kontur_wx_r = 4  
                -- end
			elseif simDR_wx_mode == 4 then
                simDR_wx_mode = 3
                -- if kontur_wx_r == 4 then
                  -- kontur_wx_r = 3  
                -- end
            end
        end
    
		if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
			if kontur_test_timer_l > 17 then
				kontur_test_timer_l = 0
				kontur_test_start_l = 0
				kontur_test_l = 0
				kontur_on_l = 1   
				info_page_l = 0
				simDR_efis_1_fix					= 0
				simDR_efis_1_wxr					= 0
				simDR_efis_1_ndb					= 0
				simDR_efis_1_tcas					= 0
			-- if simDR_efis_1_range < 5 then
				-- simDR_efis_1_vor					= 1
			-- else
				-- simDR_efis_1_vor					= 0
			-- end
				simDR_efis_1_apt					= 1
				kontur_nav_l = 0
				kontur_wx_l = 0
				kontur_taws_l = 0
			end  
		end
	elseif phase == 1 then		
		if duration>4 and kontur_wx_l > 0 and info_page_l < 1 and kontur_wx_side == 0 then
			simDR_wx_mode = 2
			kontur_wx_test_l = 0
			simDRradar_tilt = 0
			-- if kontur_wx_r > 1 then
			  -- kontur_wx_r = 2  
			-- end
		end
    end    	
end	


function kontur_info_button_l_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_nav_l > 0 and kontur_nav_menu_l < 1 then
        change_gps_time = 1
        elseif kontur_nav_menu_l > 0 then
            kontur_nav_menu_l = 0
        end
		if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
			if kontur_test_timer_l > 17 then
				kontur_test_timer_l = 0
				kontur_test_start_l = 0
				kontur_test_l = 0
				kontur_on_l = 1   
				info_page_l = 0
				simDR_efis_1_fix					= 0
				simDR_efis_1_wxr					= 0
				simDR_efis_1_ndb					= 0
				simDR_efis_1_tcas					= 0
			-- if simDR_efis_1_range < 5 then
				-- simDR_efis_1_vor					= 1
			-- else
				-- simDR_efis_1_vor					= 0
			-- end
				simDR_efis_1_apt					= 1
				kontur_nav_l = 0
				kontur_wx_l = 0
				kontur_taws_l = 0
			end  
		end
    end
    if phase == 1 then
        if duration > 3 then
            kontur_nav_menu_l = 1
            if change_gps_time > 0 then
                    change_gps_time = 0       
            end
        end
        
        if duration > 5 then
            info_page_l = 1
            kontur_nav_menu_l = 0
            if change_gps_time > 0 then
                change_gps_time = 0       
            end
        end       
    end   	
end


function kontur_onoff_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_r > 0  and simDR_bus27right > 0 then
            if kontur_onoff_r < 1 then
                kontur_onoff_r = 1
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_nav_r = 0
                kontur_on_r = 0
            else
             kontur_onoff_r = 0
             kontur_nav_r = 0
             kontur_test_start_r = 1
            end
        else
            kontur_onoff_r = 0
            kontur_test_r = 0
            kontur_nav_r = 0
			kontur_tcas_r = 0
			kontur_tcas_r_aux = 0
			kontur_taws_r = 0
			kontur_wx_r = 0
			kontur_wx_r_aux = 0
            kontur_test_start_r = 1
            kontur_test_timer_r = 0
			rng_wx_r = 3
			rng_tcas_r = 2
			rng_taws_r = 2
        end
    end   	
end		

function kontur_rls_button_r_CMDhandler(phase, duration)
	if phase == 0 then
		if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 then
			if kontur_wx_r < 1 then
				-- if kontur_wx_test_l == -1 and weather_sys > 0 and simDR_36v > 0 then
					-- kontur_wx_r = 2
				-- else
				kontur_wx_r = 1
				kontur_taws_r = 0
				kontur_tcas_r = 0
				kontur_tcas_r_aux = 0
				kontur_wx_r_aux = 0
				-- end
				--simDR_efis_2_wxr=1
			-- else
				-- kontur_wx_r = 0
				-- simDR_efis_2_wxr=0
			end 
        if  kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_2_fix					= 0
                simDR_efis_2_wxr					= 0
                simDR_efis_2_ndb					= 0
                simDR_efis_2_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 0
                kontur_nav_r = 0
                kontur_tcas_r = 0
                kontur_taws_r = 0
            end
        end
        end
    end     	
end	


function kontur_nav_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 then
            if kontur_nav_r < 1 and kontur_taws_r + kontur_tcas_r + kontur_wx_r>0 then
            kontur_nav_r = 1
            else
            kontur_nav_r = 0
            end 
            if  kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
                -- if simDR_efis_1_range < 5 then
                    -- simDR_efis_1_vor					= 1
                -- else
                    -- simDR_efis_1_vor					= 0
                -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
            end
        end
    end   	
end	

function kontur_tcas_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_tcas_r < 1 and kontur_onoff_r < 1 then
			kontur_tcas_r = 1
			kontur_taws_r = 0
			kontur_wx_r = 0
			kontur_tcas_r_aux = 0
			kontur_wx_r_aux = 0
        -- else
        -- kontur_tcas_r = 0
        end 
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
    end   	
end	

function kontur_taws_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_taws_r < 1 and info_page_r < 1 then
			kontur_tcas_r = 0
			kontur_taws_r = 1
			kontur_wx_r = 0
			kontur_tcas_r_aux = 0
			kontur_wx_r_aux = 0
        -- else
          -- kontur_taws_r = 0
        end 
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_tcas_r = 0
            end
        end
    end   	
end	

function kontur_zoomin_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if info_page_r > 0 then
            info_page_r = 1
        end
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and info_page_r < 1 then
			if kontur_wx_r>0 and rng_wx_l>1 and kontur_wx_side == 1 then
				rng_wx_l = rng_wx_l -1
			elseif kontur_taws_r>0 and rng_taws_r>1 then
				rng_taws_r = rng_taws_r -1
			elseif kontur_tcas_r>0 and rng_tcas_r>1 then
				rng_tcas_r = rng_tcas_r -1
			end
        end 
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        if simDR_efis_2_range < 5 then
            simDR_efis_1_vor					= 1
        else
            simDR_efis_1_vor					= 0
        end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
    end   	
end	

function kontur_zoomout_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if info_page_r > 0 then
            info_page_r = 2
        end
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and info_page_r < 1 then
			if kontur_wx_r>0 and rng_wx_l<5 and kontur_wx_side == 1 then
				rng_wx_l = rng_wx_l + 1
			elseif kontur_taws_r>0 and rng_taws_r <7 then
				rng_taws_r = rng_taws_r + 1
			elseif kontur_tcas_r>0 and rng_tcas_r<4 then
				rng_tcas_r = rng_tcas_r + 1
			end
        end 
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        if simDR_efis_2_range < 5 then
            simDR_efis_1_vor					= 1
        else
            simDR_efis_1_vor					= 0
        end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
    end   	
end	

function kontur_btn1_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_wx_side == 1 then
			if kontur_nav_menu_r == 2 then
				if kontur_dist_mode_l < 1 then
					kontur_dist_mode_l = 1
				else
					kontur_dist_mode_l = 0
				end
			elseif kontur_nav_menu_r == 3 then
				if gps_time_mode_r < 1 then
					gps_time_mode_r = 1
				else
					gps_time_mode_r = 0
				end
			end
		else	
			if kontur_nav_menu_r == 2 then
				if kontur_nav_r > 0 then
					if gps_time_mode_r < 1 then
						gps_time_mode_r = 1
					else
						gps_time_mode_r = 0
					end
				else
					kontur_wx_side = 1 
				end
			elseif kontur_nav_menu_r == 3 then
				kontur_wx_side = 1 
			end
		end
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
    end   	
end	

function kontur_btn2_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if info_page_r > 0 and ubs_pow_r > 0 then
            info_page_r = 3
        end
        -- if kontur_tcas_r > 0 and info_page_r < 1 then
           -- if kontur_tcas_r < 2 then
                -- kontur_tcas_r = 2
            -- else
                -- kontur_tcas_r = 1
            -- end
        -- end
		if kontur_wx_r>0 then
			if kontur_tcas_r_aux==0 and simDR_tcas_pow > 0 then
				kontur_tcas_r_aux=1
			else
				kontur_tcas_r_aux=0
			end
		end
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
    end   	
end	

function kontur_btn3_button_r_CMDhandler(phase, duration)
     if phase == 0 then
        if info_page_r > 0 then
			info_page_r = 0
			kontur_nav_r = 0
			kontur_wx_r = 0
			kontur_taws_r = 0
        end
		if kontur_tcas_r>0 then
			if kontur_wx_r_aux==0 and weather_lit == 1 then
				kontur_wx_r_aux=1
			else
				kontur_wx_r_aux=0
			end
		end
        if kontur_taws_r > 0 and info_page_r < 1 then
			if kontur_taws_r == 1 and simDRtaws_rdy == 1 then
				kontur_taws_r = 2
			else
				kontur_taws_r = 1
			end
            -- if simDR_taws_mode > 0 and simDR_taws_mode < 3 then
                -- if simDR_taws_mode < 2 then
                    -- simDR_taws_mode = 2
                -- else
                    -- simDR_taws_mode = 1
                -- end
            -- end
        end
        
        if kontur_wx_r > 0 and info_page_r < 1 and kontur_wx_side == 1 and kontur_nav_menu_r == 0 then
            if simDR_wx_mode == 2 then
				radar_test_init = 1
                simDR_wx_mode = 1
                -- if kontur_wx_r == 2 then
                  -- kontur_wx_r = 1  
                -- end
			elseif simDR_wx_mode == 1 then
				radar_test_init = 0
                simDR_wx_mode = 3
				kontur_wx_test_l = -1
				simDRauto_tilt=1
                -- if kontur_wx_r == 1 then
                  -- kontur_wx_r = 3  
                -- end
			elseif simDR_wx_mode == 3 then
                simDR_wx_mode = 4
                -- if kontur_wx_r == 3 then
                  -- kontur_wx_r = 4  
                -- end
			elseif simDR_wx_mode == 4 then
                simDR_wx_mode = 3
                -- if kontur_wx_r == 4 then
                  -- kontur_wx_r = 3  
                -- end
            end
        end
         
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
	elseif phase == 1 then		
		if duration>4 and kontur_wx_r > 0 and info_page_r < 1 and kontur_wx_side == 1 then
			simDR_wx_mode = 2
			kontur_wx_test_l = 0
			simDRradar_tilt = 0
			-- if kontur_wx_r > 1 then
			  -- kontur_wx_r = 2  
			-- end
		end
	 end    	
end	


function kontur_info_button_r_CMDhandler(phase, duration)
    if phase == 0 then
        if kontur_nav_r > 0 and kontur_nav_menu_r < 1 then
        change_gps_time = 1
        elseif kontur_nav_menu_r > 0 then
            kontur_nav_menu_r = 0
        end
        if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
            if kontur_test_timer_r > 19 then
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 1     
                info_page_r = 0
                simDR_efis_1_fix					= 0
                simDR_efis_1_wxr					= 0
                simDR_efis_1_ndb					= 0
                simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
                simDR_efis_1_apt					= 1
                kontur_nav_r = 0
                kontur_wx_r = 0
                kontur_taws_r = 0
            end
        end
    end
    if phase == 1 then
        if duration > 3 then
            kontur_nav_menu_r = 1
            if change_gps_time > 0 then
                    change_gps_time = 0       
            end
        end
        
        if duration > 5 then
            info_page_r = 1
            kontur_nav_menu_r = 0
            if change_gps_time > 0 then
                change_gps_time = 0       
            end
        end
    end	
end	

function kontur_ovhd_onoff_l_CMDhandler(phase, duration)
     if phase == 0 then
        if kontur_pow_l > 0 then
                kontur_pow_l = 0
                kontur_onoff_l = 0
                kontur_nav_l = 0
				kontur_tcas_l = 0
				kontur_tcas_l_aux = 0
				kontur_taws_l = 0
				kontur_wx_l = 0
				kontur_wx_l_aux = 0
                kontur_test_timer_l = 0
                kontur_test_start_l = 0
                kontur_test_l = 0
                kontur_on_l = 0
        else
                kontur_pow_l = 1
                kontur_onoff_l = 1
                kontur_test_start_l = 1
        end  
        -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- else
        -- simDR_sw_sound = -1
        -- end
     elseif phase == 2 then
        
    end    	
end	

function kontur_ovhd_onoff_r_CMDhandler(phase, duration)
     if phase == 0 then
        if kontur_pow_r > 0 then
                kontur_pow_r = 0
                kontur_onoff_r = 0
                kontur_nav_r = 0
				kontur_tcas_r = 0
				kontur_tcas_r_aux = 0
				kontur_taws_r = 0
				kontur_wx_r = 0
				kontur_wx_r_aux = 0
                kontur_test_timer_r = 0
                kontur_test_start_r = 0
                kontur_test_r = 0
                kontur_on_r = 0
        else
                kontur_pow_r = 1
                kontur_onoff_r = 1
                kontur_test_start_r = 1
        end  
        -- if simDR_sw_sound > -1 then
        -- simDR_sw_sound = -1
        -- else
        -- simDR_sw_sound = 0
        -- end
     elseif phase == 2 then
        
    end    	
end	



KONTUR_ONOFF_btn_l	= create_command("kontur/onoff_btn_l", "Kontur L ONOFF Button", kontur_onoff_button_l_CMDhandler)
KONTUR_RLS_btn_l	= create_command("kontur/rls_btn_l", "Kontur L RLS Button", kontur_rls_button_l_CMDhandler)
KONTUR_NAV_btn_l	= create_command("kontur/nav_btn_l", "Kontur L NAV Button", kontur_nav_button_l_CMDhandler)
KONTUR_TCAS_btn_l	= create_command("kontur/tcas_btn_l", "Kontur L TCAS Button", kontur_tcas_button_l_CMDhandler)
KONTUR_TAWS_btn_l	= create_command("kontur/taws_btn_l", "Kontur L TAWS Button", kontur_taws_button_l_CMDhandler)
KONTUR_ZOOMIN_btn_l	= create_command("kontur/zoomin_btn_l", "Kontur L Zoom In Button", kontur_zoomin_button_l_CMDhandler)
KONTUR_ZOOMOUT_btn_l	= create_command("kontur/zoomout_btn_l", "Kontur L Zoom Out Button", kontur_zoomout_button_l_CMDhandler)
KONTUR_BTN1_btn_l	= create_command("kontur/btn1_btn_l", "Kontur L BTN1 Button", kontur_btn1_button_l_CMDhandler)
KONTUR_BTN2_btn_l	= create_command("kontur/btn2_btn_l", "Kontur L BTN2 Button", kontur_btn2_button_l_CMDhandler)
KONTUR_BTN3_btn_l	= create_command("kontur/btn3_btn_l", "Kontur L BTN3 Button", kontur_btn3_button_l_CMDhandler)
KONTUR_INFO_btn_l	= create_command("kontur/info_btn_l", "Kontur L INFO Button", kontur_info_button_l_CMDhandler)

KONTUR_ONOFF_btn_r	= create_command("kontur/onoff_btn_r", "Kontur R ONOFF Button", kontur_onoff_button_r_CMDhandler)
KONTUR_RLS_btn_r	= create_command("kontur/rls_btn_r", "Kontur R RLS Button", kontur_rls_button_r_CMDhandler)
KONTUR_NAV_btn_r	= create_command("kontur/nav_btn_r", "Kontur R NAV Button", kontur_nav_button_r_CMDhandler)
KONTUR_TCAS_btn_r	= create_command("kontur/tcas_btn_r", "Kontur R TCAS Button", kontur_tcas_button_r_CMDhandler)
KONTUR_TAWS_btn_r	= create_command("kontur/taws_btn_r", "Kontur R TAWS Button", kontur_taws_button_r_CMDhandler)
KONTUR_ZOOMIN_btn_r	= create_command("kontur/zoomin_btn_r", "Kontur R Zoom In Button", kontur_zoomin_button_r_CMDhandler)
KONTUR_ZOOMOUT_btn_r	= create_command("kontur/zoomout_btn_r", "Kontur R Zoom Out Button", kontur_zoomout_button_r_CMDhandler)
KONTUR_BTN1_btn_r	= create_command("kontur/btn1_btn_r", "Kontur R BTN1 Button", kontur_btn1_button_r_CMDhandler)
KONTUR_BTN2_btn_r	= create_command("kontur/btn2_btn_r", "Kontur R BTN2 Button", kontur_btn2_button_r_CMDhandler)
KONTUR_BTN3_btn_r	= create_command("kontur/btn3_btn_r", "Kontur R BTN3 Button", kontur_btn3_button_r_CMDhandler)
KONTUR_INFO_btn_r	= create_command("kontur/info_btn_r", "Kontur R INFO Button", kontur_info_button_r_CMDhandler)


KONTUR_L_ON_func	= create_command("kontur/ovhd_onoff_l", "Kontur L OVHD ONOFF", kontur_ovhd_onoff_l_CMDhandler)
KONTUR_R_ON_func	= create_command("kontur/ovhd_onoff_r", "Kontur R OVHD ONOFF", kontur_ovhd_onoff_r_CMDhandler)


function aircraft_load()
    simDR_efis_1_fix					= 0
    simDR_efis_1_wxr					= 0
    simDR_efis_1_ndb					= 0
    simDR_efis_1_tcas					= 0
        -- if simDR_efis_1_range < 5 then
            -- simDR_efis_1_vor					= 1
        -- else
            -- simDR_efis_1_vor					= 0
        -- end
    -- simDR_efis_1_apt					= 1
    kontur_nav_l = 0
    kontur_on_l = 0
    kontur_test_l = 0
    kontur_onoff_l = 0
    kontur_onoff_r = 0
    kontur_wx_l = 0
    kontur_taws_l = 0
    kontur_nav_r = 0
    kontur_on_r = 0
    kontur_test_r = 0
    kontur_taws_r = 0
    simDR_vbe1 = 0
    simDR_vbe2 = 0
    aircraft_loaded = 1
    kontur_button_lit_l = 0.3
    kontur_button_lit_r = 0.3
end




function kontur_left()
    
 
 if simDR_bus27left < 1 then
        kontur_onoff_l = 1
        kontur_on_l = 0
        kontur_nav_l = 0
		kontur_tcas_l = 0
		kontur_tcas_l_aux = 0
		kontur_taws_l = 0
		kontur_wx_l = 0
		kontur_wx_l_aux = 0
        kontur_test_start_l = 0
        kontur_test_timer_l = 0
        kontur_test_l = 0
        kontur_pow_l_lit  = 0
 end
    
    
   
if kontur_nav_menu_l > 0 then
   if (kontur_info_knob2_l - info_knob2_l_loc) > 9.9 then
        if kontur_nav_l > 0 then
            if kontur_nav_menu_l < 3 then
                kontur_nav_menu_l = kontur_nav_menu_l + 1
            end
        else
            if kontur_nav_menu_l < 2 then
                kontur_nav_menu_l = kontur_nav_menu_l + 1
            end
        end
        info_knob2_l_loc = kontur_info_knob2_l
    end
    if (info_knob2_l_loc - kontur_info_knob2_l) > 9.9 then
       if kontur_nav_menu_l > 1 then
            kontur_nav_menu_l = kontur_nav_menu_l - 1
       end  
       info_knob2_l_loc = kontur_info_knob2_l
    end
end


if kontur_nav_menu_l == 1 then
    if (kontur_info_knob1_l - info_knob1_l_loc) > 9.9 then
        if kontur_button_lit_l < 1 then
            kontur_button_lit_l = kontur_button_lit_l + 0.1
        end
        info_knob1_l_loc = kontur_info_knob1_l
    end
    if (info_knob1_l_loc - kontur_info_knob1_l) > 9.9 then
        if kontur_button_lit_l > 0 then
            kontur_button_lit_l = kontur_button_lit_l - 0.1
        end
        info_knob1_l_loc = kontur_info_knob1_l
    end
else
    info_knob1_l_loc = kontur_info_knob1_l
end
    
if kontur_button_lit_l > 1 then
    kontur_button_lit_l = 1
elseif kontur_button_lit_l < 0 then
    kontur_button_lit_l = 0
end
    
if kontur_nav_menu_l > 2 and kontur_nav_l < 1 then
    kontur_nav_menu_l = 2
end

if kontur_nav_menu_l > 1 and kontur_nav_l < 1 and kontur_wx_side == 1 and kontur_wx_l == 0 then
    kontur_nav_menu_l = 1
end
  
    
    -- if kontur_taws_l > 0 then
        -- if simDR_taws_mode > 0 and simDR_taws_mode < 3 then
        -- kontur_taws_l = simDR_taws_mode
        -- if kontur_taws_l == 2 then
                -- kontur_nav_l = 0
        -- end
        -- end
    -- end
    
    if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 then
     kontur_pow_l_lit = 1
    else
     kontur_pow_l_lit = 0
     kontur_button_lit_l = 0
    end

    if kontur_pow_l > 0 and simDR_bus27left > 0 and kontur_onoff_l < 1 and kontur_test_start_l > 0 then
         kontur_test_timer_l =  kontur_test_timer_l + simDR_passed
        if kontur_test_timer_l < 23 then
            if kontur_test_timer_l < 3 then
                simDR_kontur_1_brt = 0
            end
            if kontur_test_timer_l > 3 and kontur_test_timer_l < 3.5 then
             simDR_kontur_1_brt = 0.6
            end
            if kontur_test_timer_l > 3 then
                kontur_test_l = 1
            kontur_button_lit_l = 0.6
            end
            
            if kontur_test_timer_l > 6 then
                kontur_test_l = 2
            end
            
            if kontur_test_timer_l > 12 then
                kontur_test_l = 3
            end
            
            if kontur_test_timer_l > 14 then
                kontur_test_l = 4
            end
            if kontur_test_timer_l > 17 then
                kontur_test_l = 5
            end
        end  
    end
        
        
    
    
    -- if kontur_wx_l > 0 and wx_taws_sw_l == 2 then
        -- wx_taws_sw_l = 1
        -- kontur_taws_l = 0
    -- end
    -- if kontur_taws_l > 0 and wx_taws_sw_l == 1 then
        -- kontur_wx_l = 0
        -- wx_taws_sw_l = 2
    -- end
    -- if kontur_taws_l > 0 then
        -- --wx_taws_sw_l = 2
        -- kontur_tcas_l = 0
    -- end
	-- if kontur_tcas_l > 0 then
        -- --wx_taws_sw_l = 2
        -- kontur_taws_l = 0
    -- end
    -- if kontur_wx_l > 0 then
        -- wx_taws_sw_l = 1
    -- end
    
    if weather_sys < 1 then
		weather_test_timer = 0
		radar_test_init = 0
		kontur_wx_test_l =  0
		simDR_wx_mode = 2
		-- if kontur_wx_l>2 then
			-- kontur_wx_l=2
		-- end
		-- if kontur_wx_test_l < 0 then
			-- kontur_wx_test_l = -1
			-- --if kontur_wx_l > 1 then
			-- kontur_wx_l = 1
			-- --end
			-- --if kontur_wx_r > 1 then
			-- kontur_wx_r = 1
		-- end
    end
	-- if weather_sys < 1  then
		-- radar_test_init = 0
		-- weather_test_timer = 0
		-- kontur_wx_test_l = 0
    -- end
    if weather_sys > 0 and simDR_36v > 0 and kontur_wx_test_l > -1 then
		if kontur_on_l > 0 and radar_test_init>0 then
			weather_test_timer = weather_test_timer + simDR_passed
			
			if weather_test_timer < 20 and weather_sys > 0 then
				if weather_test_timer > 0.5 and weather_test_timer < 1 then
					--simDRradar_tilt=15
				end
				if weather_test_timer > 5 then
					kontur_wx_test_l = 1
				end
				if weather_test_timer > 12 then
					kontur_wx_test_l = 2
				end
			else
				if weather_sys > 0 then
					weather_test_timer = 0
					radar_test_init = 0
					kontur_wx_test_l = -1
					simDRauto_tilt=1
					-- if kontur_wx_l > 0 then
					-- kontur_wx_l = 3
					-- end
					-- if kontur_wx_r > 0 then
					-- kontur_wx_r = 3
					-- end
				end
			end
		-- elseif kontur_on_r > 0 then
			-- weather_test_timer = weather_test_timer + simDR_passed
			-- if weather_test_timer < 20 and weather_sys > 0 then
				-- if weather_test_timer > 5 then
					-- kontur_wx_test_l = 1
				-- end
				-- if weather_test_timer > 12 then
					-- kontur_wx_test_l = 2
				-- end
			-- else
				-- if weather_sys > 0 then
					-- weather_test_timer = 0
					-- kontur_wx_test_l = -1
					-- if kontur_wx_l > 0 then
					-- kontur_wx_l = 2
					-- end
					-- if kontur_wx_r > 0 then
					-- kontur_wx_r = 2
					-- end
				-- end
			-- end
		else 
			-- weather_test_timer = weather_test_timer + simDR_passed
			-- if weather_test_timer < 20 and weather_sys > 0 then
				-- if weather_test_timer > 5 then
					-- kontur_wx_test_l = 1
				-- end
				-- if weather_test_timer > 12 then
					-- kontur_wx_test_l = 2
				-- end
			-- else
				-- if weather_sys > 0 then
					-- weather_test_timer = 0
					-- kontur_wx_test_l = -1
					-- if kontur_wx_l > 0 then
					-- kontur_wx_l = 2
					-- end
					-- if kontur_wx_r > 0 then
					-- kontur_wx_r = 2
					-- end
				-- end
			-- end 
			-- kontur_wx_test_l = -1
			weather_test_timer = 0
		end
    end
    
	if (kontur_tcas_l>0 or kontur_tcas_l_aux>0) and (simDR_tcas_mode > 2 or simDR_tcas_mode==-1) then
		simDR_tcas_on = 1
	else
		simDR_tcas_on = 0
	end
	if weather_mode > 0 and weather_sys > 0 and simDR_36v > 0 and (kontur_wx_l > 0 or kontur_wx_l_aux > 0) then
		simDR_efis_1_wxr = 1
	else
		simDR_efis_1_wxr = 0
	end
    if weather_mode > 0 and weather_sys > 0 and simDR_36v > 0 and (kontur_wx_r > 0 or kontur_wx_r_aux > 0) then
		simDR_efis_2_wxr = 1
	else
		simDR_efis_2_wxr = 0
	end
	wx_test_init=radar_test_init
end

function kontur_right()
    

 if simDR_bus27right < 1 then
    kontur_onoff_r = 1
    kontur_on_r = 0
    kontur_nav_r = 0
	kontur_tcas_r = 0
	kontur_tcas_r_aux = 0
	kontur_taws_r = 0
	kontur_wx_r = 0
	kontur_wx_r_aux = 0
    kontur_test_start_r = 0
    kontur_test_timer_r = 0
    kontur_test_r = 0
    kontur_pow_r_lit = 0
 end     
    
    
    
if kontur_nav_menu_r > 0 then
   if (kontur_info_knob2_r - info_knob2_r_loc) > 9.9 then
        if kontur_nav_r > 0 then
            if kontur_nav_menu_r < 3 then
                kontur_nav_menu_r = kontur_nav_menu_r + 1
            end
        else
            if kontur_nav_menu_r < 2 then
                kontur_nav_menu_r = kontur_nav_menu_r + 1
            end
        end
        info_knob2_r_loc = kontur_info_knob2_r
    end
    if (info_knob2_r_loc - kontur_info_knob2_r) > 9.9 then
       if kontur_nav_menu_r > 1 then
            kontur_nav_menu_r = kontur_nav_menu_r - 1
       end  
       info_knob2_r_loc = kontur_info_knob2_r
    end
end


if kontur_nav_menu_r == 1 then
    if (kontur_info_knob1_r - info_knob1_r_loc) > 9.9 then
        if kontur_button_lit_r < 1 then
            kontur_button_lit_r = kontur_button_lit_r + 0.1
        end
        info_knob1_r_loc = kontur_info_knob1_r
    end
    if (info_knob1_r_loc - kontur_info_knob1_r) > 9.9 then
        if kontur_button_lit_r > 0 then
            kontur_button_lit_r = kontur_button_lit_r - 0.1
        end
        info_knob1_r_loc = kontur_info_knob1_r
    end
else
    info_knob1_r_loc = kontur_info_knob1_r
end
    
if kontur_button_lit_r > 1 then
    kontur_button_lit_r = 1
elseif kontur_button_lit_r < 0 then
    kontur_button_lit_r = 0
end
    
if kontur_nav_menu_r > 2 and kontur_nav_r < 1 then
    kontur_nav_menu_r = 2
end

if kontur_nav_menu_r > 1 and kontur_nav_r == 0 and kontur_wx_side == 0 and kontur_wx_r == 0 then
    kontur_nav_menu_r = 1
end
    
    
    -- if kontur_taws_r > 0 then
        -- if simDR_taws_mode > 0 and simDR_taws_mode < 3 then
        -- kontur_taws_r = simDR_taws_mode
        -- if kontur_taws_r == 2 then
                -- kontur_nav_r = 0
        -- end
        -- end
    -- end
    
    
    if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 then
     kontur_pow_r_lit = 1
    else
     kontur_pow_r_lit = 0
     kontur_button_lit_r = 0
    end

    if kontur_pow_r > 0 and simDR_bus27right > 0 and kontur_onoff_r < 1 and kontur_test_start_r > 0 then 
         kontur_test_timer_r =  kontur_test_timer_r + simDR_passed
        if kontur_test_timer_r < 21 then
            if kontur_test_timer_r < 3 then
            simDR_kontur_2_brt = 0
            end
            if kontur_test_timer_r > 3 and kontur_test_timer_r < 3.5 then
             simDR_kontur_2_brt = 0.6
            kontur_button_lit_r = 0.6
            end
            if kontur_test_timer_r > 3 then
                kontur_test_r = 1
            end
            
            if kontur_test_timer_r > 7 then
                kontur_test_r = 2
            end
            
            if kontur_test_timer_r > 13 then
                kontur_test_r = 3
            end
            
            if kontur_test_timer_r > 16 then
                kontur_test_r = 4
            end
            if kontur_test_timer_r > 19 then
                kontur_test_r = 5
            end
        end
    end
    
    
    if kontur_wx_r > 0 and wx_taws_sw_r == 2 then
        wx_taws_sw_r = 1
        kontur_taws_r = 0
    end
    if kontur_taws_r > 0 and wx_taws_sw_r == 1 then
        kontur_wx_r = 0
        wx_taws_sw_r = 2
    end
    if kontur_taws_r > 0 then
        wx_taws_sw_r = 2
        kontur_tcas_r = 0
    end
    if kontur_wx_r > 0 then
        wx_taws_sw_r = 1
    end
    
    
    
end










function kontur_data()
 
if kontur_on_l > 0 then
   simDR_kontur_1_brt = kntr_1_brt_sw
elseif kontur_test_l > 0 then
   simDR_kontur_1_brt = kntr_1_brt_sw
else
   simDR_kontur_1_brt = 0
end
if kontur_on_r > 0 then
   simDR_kontur_2_brt = kntr_2_brt_sw
elseif kontur_test_r > 0 then
   simDR_kontur_2_brt = kntr_2_brt_sw
else
   simDR_kontur_2_brt = 0
end
    
-- if simDR_efis_1_range < 5 then
    -- simDR_efis_1_vor					= 1
-- else
    -- simDR_efis_1_vor					= 0
-- end
    
-- if  simDR_gmk_crs < 0 then
     -- gmk_crs = 360 + simDR_gmk_crs       
-- else
      gmk_crs = simDR_gmk_crs    
-- end
        
fpu_crs =simDR_gmk_crs + simDR_diss_slipe

 
if simDRcrs_flag1 < 1 then
        diff_crs = simDRcrs_plank1 * 5
        crs_fl = 1
elseif simDRcrs_flag2 < 1 then
        diff_crs = simDRcrs_plank2 * 5
        crs_fl = 1
else
        diff_crs = 0.0
        crs_fl = 0
end
    
if simDRgs_flag1 < 1 then
        diff_gs = simDRgs_plank1 * 5
        gs_fl = 1
elseif simDRgs_flag2 < 1 then
        diff_gs = simDRgs_plank2 * 5
        gs_fl = 1
else
        diff_gs = 0.0
        gs_fl = 0
end
    

if weather_sys > 0 and simDR_36v > 0 then
    weather_lit = 1
else
    weather_lit = 0
end    

if ubs_pow_r < 1 and info_page_r > 2 then
    info_page_r = 2
end
    
if ubs_pow_l < 1 and info_page_l > 2 then
    info_page_l = 2
end
    
if simDRnostab_l > 0 then
        nostab_l = 1
elseif ubs_pow_l < 1 then
        nostab_l = 1
else
        nostab_l = 0
end
    
if simDRnostab_r > 0 then
        nostab_r = 1
elseif ubs_pow_r < 1 then
        nostab_r = 1
else
        nostab_r = 0
end

-- if weather_sys > 0 and sw_sound < 1 then
    -- if simDR_sw_sound > -2 then
        -- --simDR_sw_sound = -2
        -- sw_sound = 1
    -- else
        -- --simDR_sw_sound = -1
        -- sw_sound = 1
    -- end
-- end
-- if weather_sys < 1 and sw_sound > 0 then
    -- if simDR_sw_sound > -2 then
        -- --simDR_sw_sound = -2
        -- sw_sound = 0
    -- else
        -- --simDR_sw_sound = -1
        -- sw_sound = 0
    -- end
-- end   
    
vvi = simDR_vvi * 0.00508
radioalt_loc = simDR_radioalt * 0.3048
    
if radioalt_loc < 780 then  
    radioalt = radioalt_loc
    if radioalt > 5 then
    if start_vvi_check > 0 then
        radioalt_check = radioalt
        start_vvi = simDR_time
        start_vvi_check = 0
    end
     
    if ((simDR_time - start_vvi) > 0.5) and start_vvi_check < 1 then    
        vvi_rv = (radioalt - radioalt_check) *2
        start_vvi_check = 1
    end  
    end
else
  radioalt = 780
  vvi_rv = 0
end
      
    
    if kontur_pow_l > 0 then
        simDR_srpbz_brightness = simDR_kontur_1_brt
    elseif kontur_pow_r > 0 then
        simDR_srpbz_brightness = simDR_kontur_2_brt
    end
    
    
    if kontur_tcas_l > 0 then
        -- if kontur_taws_l then
			-- if kontur_tcas_l > 1 then
            -- simDR_efis_1_mode = 2
                -- else
		simDR_efis_1_mode = 5
		--simDR_tcas_on = 1
                -- end
            -- if (simDR_tcas_mode > 2 or simDR_tcas_mode==-1) and kontur_tcas_l > 0 and simDR_tcas_disp_mod < 100 and simDR_tcas_disp_mod > -1 then
                -- simDR_tcas_on = 1
            -- else
                -- simDR_tcas_on = 0
            -- end
        -- else
            -- simDR_efis_1_mode = 2
            -- simDR_tcas_on = 0
        -- end
    else
		-- simDR_tcas_on = 0
		if kontur_nav_l>0 then
			simDR_efis_1_mode = 2
		else
			simDR_efis_1_mode = 1
		end
		--simDR_tcas_on = 0
    end
	
	if kontur_tcas_r > 0 then
        -- if kontur_taws_l then
			-- if kontur_tcas_l > 1 then
            -- simDR_efis_1_mode = 2
                -- else
		simDR_efis_2_mode = 5
		--simDR_tcas_on = 1
                -- end
            -- if (simDR_tcas_mode > 2 or simDR_tcas_mode==-1) and kontur_tcas_l > 0 and simDR_tcas_disp_mod < 100 and simDR_tcas_disp_mod > -1 then
                -- simDR_tcas_on = 1
            -- else
                -- simDR_tcas_on = 0
            -- end
        -- else
            -- simDR_efis_1_mode = 2
            -- simDR_tcas_on = 0
        -- end
    else
		-- simDR_tcas_on = 0
		if kontur_nav_r>0 then
			simDR_efis_2_mode = 2
		else
			simDR_efis_2_mode = 1
		end
		--simDR_tcas_on = 0
    end
	
	-- if kontur_tcas_r > 0 then
        -- -- if kontur_taws_r then
			-- -- if kontur_tcas_r > 1 then
				-- -- simDR_efis_2_mode = 2
			-- -- else
			-- simDR_efis_2_mode = 5
			-- -- end
            -- -- if (simDR_tcas_mode > 2 or simDR_tcas_mode==-1) and kontur_tcas_r > 0 and simDR_tcas_disp_mod < 100 and simDR_tcas_disp_mod > -1 then
                -- -- simDR_tcas_on_fo = 1
            -- -- else
                -- -- simDR_tcas_on_fo = 0
            -- -- end
        -- -- else

        -- -- end
            
        
        
    -- else
		-- if kontur_nav_r>0 then
			-- simDR_efis_2_mode = 2
		-- else
			-- simDR_efis_2_mode = 1
		-- end
		-- simDR_tcas_on_fo = 0
    -- end
	
    if (kontur_tcas_r>0 or kontur_tcas_r_aux>0) and (simDR_tcas_mode > 2 or simDR_tcas_mode==-1) then
		simDR_tcas_on_fo = 1
	else
		simDR_tcas_on_fo = 0
	end
        
    
    -- if simDR_weather_alpha > 0.4 and kontur_taws_l > 0 and kontur_wx_r > 0 then
    -- simDR_weather_alpha = 0.4
    -- end
    -- if simDR_weather_alpha > 0.4 and kontur_taws_r > 0 and kontur_wx_l > 0 then
    -- simDR_weather_alpha = 0.4
    -- end
    
    -- if wx2000_gain == 0 then
       -- if kontur_rru_l > kontur_rru_r then
          -- kontur_rru_r = 0
          -- --simDR_weather_alpha = kontur_rru_l
       -- else
          -- kontur_rru_l = 0
          -- --simDR_weather_alpha = kontur_rru_r
       -- end
    -- else
       -- --simDR_weather_alpha = wx2000_gain
    -- end
    
    if aircraft_loaded > 0 then
        simDR_rls = 1
    end
    
    -- if simDR_efis_1_range > 0 then
    -- simDR_taws_dist =  simDR_efis_1_range - 1
    -- else
        -- simDR_taws_dist = 0
    -- end
    
    if T154_kontur_on == 1 then
		simDR_fms_line = 0
	else
		simDR_fms_line = 1
	end
	
	if kontur_wx_l>0 then
		simDR_efis_1_range = rng_wx_l
	elseif kontur_taws_l>0 then
		simDR_efis_1_range = rng_taws_l
	elseif kontur_tcas_l>0 then
		simDR_efis_1_range = rng_tcas_l
	end
	
	if kontur_wx_r>0 then
		simDR_efis_2_range = rng_wx_r
	elseif kontur_taws_r>0 then
		simDR_efis_2_range = rng_taws_r
	elseif kontur_tcas_r>0 then
		simDR_efis_2_range = rng_tcas_r
	end
	
	rng_wx_r = rng_wx_l
	-- automatic taws display
	if simDR_taws_message>0 and simDR_taws_message~=simDR_taws_message_prev and simDR_taws_message~=10 then
		if kontur_taws_l ~= 1 then
			kontur_tcas_l = 0
			kontur_tcas_l_aux = 0
			wx_last=kontur_wx_l
			kontur_wx_l = 0
			kontur_wx_l_aux = 0
			kontur_taws_l = 1
			rng_taws_l = 2
		end
		if kontur_taws_r ~= 1 then
			kontur_tcas_r = 0
			kontur_tcas_r_aux = 0
			wx_last=kontur_wx_r
			kontur_wx_r = 0
			kontur_wx_r_aux = 0
			kontur_taws_r = 1
			rng_taws_r = 2
		end
	end
	if kontur_taws_l > 1 and simDRtaws_rdy == 0 then
		kontur_taws_l = 1
	end
	if kontur_taws_r > 1 and simDRtaws_rdy == 0 then
		kontur_taws_r = 1
	end
	kontur_dist_mode_r = kontur_dist_mode_l
    simDR_taws_message_prev = simDR_taws_message
    uns1_on					= simDR_kln
    uns2_on					= simDR_kln
    
    
    lat_string=decToDms_lat(simDR_lat)
    long_string=decToDms_long(simDR_long) 
    gs_kmh = simDR_gs * 3.6
    gs_kts = simDR_gs * 1.94
    
    if simDR_gps_dme > 540 then
        gps_dme_km = 999.9
    else
        gps_dme_km = simDR_gps_dme * 1.852
    end
    
    if simDR_gps_min > 9999 then
        gps_hours = 0
        gps_min = 0
        gps_hours_eta = 0
        gps_min_eta = 0
    else
            if simDR_gps_min > 59.99 then
                gps_hours = simDR_gps_min / 60
                gps_min =  simDR_gps_min - (60 * gps_hours) 
            else
             gps_hours = 0
                gps_min = simDR_gps_min
            end
            if (simDRutcmins + gps_min) > 59.99 then
                gps_min_eta =  (simDRutcmins + gps_min) - 60
                gps_hours_eta = simDRutchours + ((simDRutcmins + gps_min) / 60)
                
            else
                gps_hours_eta = simDRutchours + gps_hours
                gps_min_eta = simDRutcmins + simDR_gps_min
            end
    end   
    
    
    -- calculate xtrack
    relative_brg = (simDR_dtk - simDR_bear + 360) % 360
    if relative_brg > 180 then
        relative_brg = relative_brg - 360
    end
    if relative_brg < 0 then
        if relative_brg > -180 then
            relative_brg = -relative_brg
            kontur_zbok_test = -simDR_gps_dme * math.sin(math.rad(relative_brg))
        else
            kontur_zbok_test = -999
        end
    else
        if relative_brg < 180 then
            kontur_zbok_test = simDR_gps_dme * math.sin(math.rad(relative_brg))
        else
            kontur_zbok_test = 999
        end
    end
    
    
    
    
    z_bok_nm = kontur_zbok_test
    z_bok = kontur_zbok_test * 1.852
    
    
    
    
end  




function after_physics()
    if T154_kontur_on > 0 then
        simDR_gns = 1
        kontur_left()
        kontur_right()
        kontur_data()
    else
        kontur_pow_l = 0
        kontur_pow_r = 0
        ubs_pow_l = 0
        ubs_pow_r = 0
    end
end
