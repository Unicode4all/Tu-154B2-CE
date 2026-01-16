function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

simDR_brake_l = find_dataref("sim/cockpit2/controls/left_brake_ratio") 
simDR_brake_r = find_dataref("sim/cockpit2/controls/right_brake_ratio") 
simDR_gs = find_dataref("sim/flightmodel/position/groundspeed")
simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")
simDR_bus27left = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_passed = find_dataref("tu154b2/custom/time/frame_time")


T154_kontur_90th = find_dataref("sim/custom/b2/kontur_90th")
T154_kontur_on = find_dataref("tu154b2/custom/b2/kontur_on")
T154_sync_baro	= find_dataref("sim/custom/t154cfg/sync_baro")

simDR_transponder_code = find_dataref("sim/cockpit/radios/transponder_code")
simDR_transponder_mode = find_dataref("sim/cockpit/radios/transponder_mode")
simDR_transponder_light = find_dataref("sim/cockpit/radios/transponder_light")


simDR_absu_smooth = find_dataref("tu154b2/custom/switchers/console/absu_smooth_on") 
simDR_absu_smooth_cap = find_dataref("tu154b2/custom/switchers/console/absu_smooth_on_cap") 


ident_cmd = find_command("sim/transponder/transponder_ident")

vbe_press_l = find_dataref("tu154b2/custom/gauges/alt/vbe_press_left")
vbe_press_r = find_dataref("tu154b2/custom/gauges/alt/vbe_press_right")
---uvo15
sensor_caps = find_dataref("tu154b2/custom/anim/sensors_caps")
static_fail = find_dataref("sim/operation/failures/rel_static")
static_fail2 = find_dataref("sim/operation/failures/rel_static2")
msl_alt = find_dataref("sim/flightmodel/position/elevation")
svs_alt = find_dataref("tu154b2/custom/svs/altitude")
svs_pwr = find_dataref("tu154b2/custom/svs/power_36cc")
svs_test = find_dataref("tu154b2/custom/buttons/ovhd/svs_contr")
msl_press = find_dataref("sim/weather/barometer_sealevel_inhg")

---vem72

vem72_on = find_dataref("tu154b2/custom/switchers/ovhd/vbe_1_on")
eng_light_angle = deferred_dataref("sim/custom/eng_light_angle", "number")
eng_light_angle_result = deferred_dataref("sim/custom/eng_light_angle_result", "number")
eng_light_angle_btn = deferred_dataref("sim/custom/eng_light_angle_btn", "number")
eng_light_angle2 = deferred_dataref("sim/custom/eng_light_angle2", "number")
eng_table_move = deferred_dataref("sim/custom/eng_table_move", "number")


---co63

co63_pwr = deferred_dataref("sim/custom/co63_pwr", "number")
co63_mode = deferred_dataref("sim/custom/co63_mode", "number")
co63_mode2 = deferred_dataref("sim/custom/co63_mode2", "number")
co63_mch = deferred_dataref("sim/custom/co63_mch", "number")
co63_lit_test = deferred_dataref("sim/custom/co63_lit_test", "number")

co63_sign = deferred_dataref("sim/custom/co63_sign", "number")
co63_control = deferred_dataref("sim/custom/co63_control", "number")
co63_emerg = deferred_dataref("sim/custom/co63_emerg", "number")

co63_sqwk_1 = deferred_dataref("sim/custom/co63_sqwk_1", "number")
co63_sqwk_2 = deferred_dataref("sim/custom/co63_sqwk_2", "number")
co63_sqwk_3 = deferred_dataref("sim/custom/co63_sqwk_3", "number")
co63_sqwk_4 = deferred_dataref("sim/custom/co63_sqwk_4", "number")

---co70

co70_pwr = deferred_dataref("sim/custom/co70_pwr", "number")
co70_mode = deferred_dataref("sim/custom/co70_mode", "number")
co70_sel = deferred_dataref("sim/custom/co70_sel", "number")
co70_sign = deferred_dataref("sim/custom/co70_sign", "number")
co70_control = deferred_dataref("sim/custom/co70_control", "number")
co70_mch = deferred_dataref("sim/custom/co70_mch", "number")
co70_lit_test = deferred_dataref("sim/custom/co70_lit_test", "number")

co70_sqwk_1 = deferred_dataref("sim/custom/co70_sqwk_1", "number")
co70_sqwk_2 = deferred_dataref("sim/custom/co70_sqwk_2", "number")
co70_sqwk_3 = deferred_dataref("sim/custom/co70_sqwk_3", "number")
co70_sqwk_4 = deferred_dataref("sim/custom/co70_sqwk_4", "number")
uvo15_press_knob = deferred_dataref("sim/custom/uvo15_press_knob", "number")
uvo15_alt_act = deferred_dataref("sim/custom/uvo15_needle", "number")
uvo15_alt_dr_100 =  deferred_dataref("sim/custom/uvo15_alt_dr_100", "number")
uvo15_alt_dr_1000 =  deferred_dataref("sim/custom/uvo15_alt_dr_1000", "number")
uvo15_alt_dr_10000 =  deferred_dataref("sim/custom/uvo15_alt_dr_10000", "number")

uvo15_press_1 = deferred_dataref("sim/custom/uvo15_press_1", "number")
uvo15_press_10 = deferred_dataref("sim/custom/uvo15_press_10", "number")
uvo15_press_100 = deferred_dataref("sim/custom/uvo15_press_100", "number")
vem72_press_knob = deferred_dataref("sim/custom/vem72_press_knob", "number")
vem72_btn = deferred_dataref("sim/custom/vem72_btn", "number")
vem72_lit = deferred_dataref("sim/custom/vem72_lit", "number")
vem72_alt_act = deferred_dataref("sim/custom/vem72_needle", "number")
vem72_alt_dr_100 =  deferred_dataref("sim/custom/vem72_alt_dr_100", "number")
vem72_alt_dr_1000 =  deferred_dataref("sim/custom/vem72_alt_dr_1000", "number")
vem72_alt_dr_10000 =  deferred_dataref("sim/custom/vem72_alt_dr_10000", "number")

vem72_press_1 = deferred_dataref("sim/custom/vem72_press_1", "number")
vem72_press_10 = deferred_dataref("sim/custom/vem72_press_10", "number")
vem72_press_100 = deferred_dataref("sim/custom/vem72_press_100", "number")
test_btn1 = deferred_dataref("sim/custom/ssos_test_btn1", "number")
test_btn2 = deferred_dataref("sim/custom/ssos_test_btn2", "number")
test_btn3 = deferred_dataref("sim/custom/ssos_test_btn3", "number")
test_ssos_lit = deferred_dataref("sim/custom/ssos_test_lit", "number")

---ssos 

ssos_alarm = find_dataref("sim/custom/ssos_alarm")
simDR_rv5_1_on = find_dataref("tu154b2/custom/switchers/ovhd/rv5_1_on")
simDR_rv5_height = find_dataref("tu154b2/custom/misc/rv5_alt_left")
simDR_vario_l = find_dataref("sim/custom/gauges/vvi_left_new")
simDR_rv5_cc = find_dataref("tu154b2/custom/elec/rv5_left_cc")
simDR_gears = find_dataref("tu154b2/custom/anim/sensors_caps")
simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all")
simDR_gear_deploy = find_dataref("sim/cockpit2/tcas/targets/position/gear_deploy[0]")
simDR_ping_pong = find_dataref("sim/graphics/animation/ping_pong_2")
simDR_tks_sw = find_dataref("tu154b2/custom/switchers/ovhd/tks_course_set")
simDR_tks_corr = find_dataref("tu154b2/custom/switchers/ovhd/tks_mode_right")
simDR_svs_rel = find_dataref("tu154b2/custom/svs/svs_alt_rel")

local ssos_test_alarm = 0
local ssos_loc_alarm = 0
local ssos_timeout = 0


local left_MSL = 0
local right_MSL = 0
local msl_counter = 0
local uvo15_alt_calc = 0
local vem72_alt_calc = 0
local co63_co70_control_timeout = 0
local eng_light_angle_loc = 0
local change_eng_light_angle = 0
local test_alt_vem72 = 0

co70_sel = 1


---otvetchk


sso_sw1 = deferred_dataref("sim/custom/sso_sw1", "number")
sso_sw2 = deferred_dataref("sim/custom/sso_sw2", "number")

sso_sw1 = 1


--- sard_dbl

--simDR_fail_sard = find_dataref("tu154b2/custom/failures/sard_valve_fail") -- отказ выпускного клапана
simDR_sard_dbl_cap =  find_dataref("tu154b2/custom/switchers/airbleed/dubler_on_cap")
simDR_sard_dbl_sw =  find_dataref("tu154b2/custom/switchers/airbleed/dubler_on")

simDR_sard_cabin_press = find_dataref("tu154b2/custom/switchers/sard/sard_cabin_press_set")
simDR_sard_spd_set = find_dataref("tu154b2/custom/switchers/sard/sard_spd_set")
simDR_sard_diff_set = find_dataref("tu154b2/custom/switchers/sard/sard_diff_set")



-- sard_cabin_press_osn = deferred_dataref("sim/custom/switchers/sard/sard_cabin_press_set_osn", "number")
-- sard_spd_set_osn = deferred_dataref("sim/custom/switchers/sard/sard_spd_set_osn", "number")
-- sard_diff_set_osn = deferred_dataref("sim/custom/switchers/sard/sard_diff_set_osn", "number")

-- sard_cabin_press_dbl = deferred_dataref("sim/custom/switchers/sard/sard_cabin_press_set_dbl", "number")
-- sard_spd_set_dbl = deferred_dataref("sim/custom/switchers/sard/sard_spd_set_dbl", "number")
-- sard_diff_set_dbl = deferred_dataref("sim/custom/switchers/sard/sard_diff_set_dbl", "number")
sard_pribor_cap1 =  deferred_dataref("sim/custom/switchers/sard/sard_pribor_cap1", "number")
sard_pribor_cap2 =  deferred_dataref("sim/custom/switchers/sard/sard_pribor_cap2", "number")

local srd_dbl_loc_fail = 0
local set_failures_sard = 0
-- sard_cabin_press_dbl = 760
-- sard_spd_set_dbl = 0.5
-- sard_diff_set_dbl = 0.61
-- sard_cabin_press_osn = simDR_sard_cabin_press
-- sard_spd_set_osn = 0.5
-- sard_diff_set_osn = 0.61
sard_pribor_cap1 = 1




sgu = deferred_dataref("sim/custom/other/sgu", "number")

-- pedals move

pedal_left_sw = deferred_dataref("sim/custom/other/pedal_left_sw", "number")
pedal_right_sw = deferred_dataref("sim/custom/other/pedal_right_sw", "number")
pedal_left_pos = deferred_dataref("sim/custom/other/pedal_left_pos", "number")
pedal_right_pos = deferred_dataref("sim/custom/other/pedal_right_pos", "number")

pedal_left_pos = 0.5
pedal_right_pos = 0.5

---

--- seats move

simDR_table_move = find_dataref("sim/custom/eng_table_move")
simDR_table_left_seat = find_dataref("tu154b2/custom/anim/cockpit_table_1")
simDR_table_right_seat = find_dataref("tu154b2/custom/anim/cockpit_table_2")
simDR_zanaveska = find_dataref("tu154b2/custom/switchers/spu_2_power")


left_seat_move_start = deferred_dataref("sim/custom/other/left_seat_move_start", "number")
right_seat_move_start = deferred_dataref("sim/custom/other/right_seat_move_start", "number")
left_seat_pos = deferred_dataref("sim/custom/other/left_seat_pos", "number")
right_seat_pos = deferred_dataref("sim/custom/other/right_seat_pos", "number")
left_seat_move = deferred_dataref("sim/custom/other/left_seat_move", "number")
right_seat_move = deferred_dataref("sim/custom/other/right_seat_move", "number")
eng_seat_move = deferred_dataref("sim/custom/other/eng_seat_move", "number")
navi_seat_move = deferred_dataref("sim/custom/other/navi_seat_move", "number")
radio_seat_move = deferred_dataref("sim/custom/other/radio_seat_move", "number")
rise_chair_arm_eng_start = deferred_dataref("sim/custom/anim/rise_chair_arm_eng_start", "number")
rise_chair_arm_eng = deferred_dataref("sim/custom/anim/rise_chair_arm_eng", "number")

left_seat_pos = 0.5
right_seat_pos = 0.5

--- elec sys commands

simDR_bus115_sel1 = find_dataref("tu154b2/custom/switchers/eng/bus115_volt_sel")
simDR_bus115_sel2 = find_dataref("tu154b2/custom/switchers/eng/bus115_volt_phase_sel")
simDR_bus115_sel3 = find_dataref("tu154b2/custom/switchers/eng/bus115_amp_sel")
simDR_bus115_sel4 = find_dataref("tu154b2/custom/switchers/eng/bus115_amp_phase_sel")
simDR_bus36_sel = find_dataref("tu154b2/custom/switchers/eng/bus36_volt_sel")
simDR_bus27_sel1 = find_dataref("sim/custom/switchers/eng/bus27_volt_sel_new")
simDR_bus27_sel2 = find_dataref("tu154b2/custom/switchers/eng/bus27_amp2_sel")

simDR_galley_block = find_dataref("tu154b2/custom/elec/kitchen_block")


--- fortochki snow+rain
simDR_current_rain = find_dataref("tu154b2/custom/anim/rain_glass_1")
simDR_current_snow = find_dataref("tu154b2/custom/anim/rain_glass_2")
simDR_left_window = find_dataref("tu154b2/custom/anim/cockpit_window_left")
simDR_right_window = find_dataref("tu154b2/custom/anim/cockpit_window_right")

rain_lf = deferred_dataref("sim/custom/anim/rain_glass_1_lf", "number")
snow_lf = deferred_dataref("sim/custom/anim/rain_glass_2_lf", "number")
rain_rf = deferred_dataref("sim/custom/anim/rain_glass_1_rf", "number")
snow_rf = deferred_dataref("sim/custom/anim/rain_glass_2_rf", "number")

lf_loc = 0
rf_loc = 0


--- cabin switches butafor


cabin_sw1 = deferred_dataref("sim/custom/cabin/sw_1", "number")
cabin_sw2 = deferred_dataref("sim/custom/cabin/sw_2", "number")
cabin_sw3 = deferred_dataref("sim/custom/cabin/sw_3", "number")
cabin_sw4 = deferred_dataref("sim/custom/cabin/sw_4", "number")
cabin_sw5 = deferred_dataref("sim/custom/cabin/sw_5", "number")
cabin_sw6 = deferred_dataref("sim/custom/cabin/sw_6", "number")
cabin_sw7 = deferred_dataref("sim/custom/cabin/sw_7", "number")
cabin_sw8 = deferred_dataref("sim/custom/cabin/sw_8", "number")
cabin_sw9 = deferred_dataref("sim/custom/cabin/sw_9", "number")
cabin_sw10 = deferred_dataref("sim/custom/cabin/sw_10", "number")
cabin_sw11 = deferred_dataref("sim/custom/cabin/sw_11", "number")
cabin_sw12 = deferred_dataref("sim/custom/cabin/sw_12", "number")
cabin_sw13 = deferred_dataref("sim/custom/cabin/sw_13", "number")
cabin_sw14 = deferred_dataref("sim/custom/cabin/sw_14", "number")
cabin_sw15 = deferred_dataref("sim/custom/cabin/sw_15", "number")


cabin_sw16 = deferred_dataref("sim/custom/cabin/sw_16", "number")
cabin_sw17 = deferred_dataref("sim/custom/cabin/sw_17", "number")
cabin_sw18 = deferred_dataref("sim/custom/cabin/sw_18", "number")
cabin_sw19 = deferred_dataref("sim/custom/cabin/sw_19", "number")
cabin_sw20 = deferred_dataref("sim/custom/cabin/sw_20", "number")
cabin_sw21 = deferred_dataref("sim/custom/cabin/sw_21", "number")
cabin_sw22 = deferred_dataref("sim/custom/cabin/sw_22", "number")
cabin_sw23 = deferred_dataref("sim/custom/cabin/sw_23", "number")
cabin_sw24 = deferred_dataref("sim/custom/cabin/sw_24", "number")
cabin_sw25 = deferred_dataref("sim/custom/cabin/sw_25", "number")
cabin_sw26 = deferred_dataref("sim/custom/cabin/sw_26", "number")
cabin_sw27 = deferred_dataref("sim/custom/cabin/sw_27", "number")
cabin_sw28 = deferred_dataref("sim/custom/cabin/sw_28", "number")
cabin_sw29 = deferred_dataref("sim/custom/cabin/sw_29", "number")
cabin_sw30 = deferred_dataref("sim/custom/cabin/sw_30", "number")
cabin_sw31 = deferred_dataref("sim/custom/cabin/sw_31", "number")
cabin_sw32 = deferred_dataref("sim/custom/cabin/sw_32", "number")
cabin_sw33 = deferred_dataref("sim/custom/cabin/sw_33", "number")
cabin_sw34 = deferred_dataref("sim/custom/cabin/sw_34", "number")
cabin_sw35 = deferred_dataref("sim/custom/cabin/sw_35", "number")


cabin_sw36 = deferred_dataref("sim/custom/cabin/sw_36", "number")
cabin_sw37 = deferred_dataref("sim/custom/cabin/sw_37", "number")
cabin_sw38 = deferred_dataref("sim/custom/cabin/sw_38", "number")
cabin_sw39 = deferred_dataref("sim/custom/cabin/sw_39", "number")
cabin_sw40 = deferred_dataref("sim/custom/cabin/sw_40", "number")
cabin_sw41 = deferred_dataref("sim/custom/cabin/sw_41", "number")
cabin_sw42 = deferred_dataref("sim/custom/cabin/sw_42", "number")
cabin_sw43 = deferred_dataref("sim/custom/cabin/sw_43", "number")
cabin_sw44 = deferred_dataref("sim/custom/cabin/sw_44", "number")





cabin_rt1 = deferred_dataref("sim/custom/cabin/rt_1", "number")
cabin_rt2 = deferred_dataref("sim/custom/cabin/rt_2", "number")



cabin_push1 = deferred_dataref("sim/custom/cabin/push_1", "number")
cabin_push2 = deferred_dataref("sim/custom/cabin/push_2", "number")
cabin_push3 = deferred_dataref("sim/custom/cabin/push_3", "number")
cabin_push4 = deferred_dataref("sim/custom/cabin/push_4", "number")
cabin_push5 = deferred_dataref("sim/custom/cabin/push_5", "number")


cabin_push6 = deferred_dataref("sim/custom/cabin/push_6", "number")
cabin_push7 = deferred_dataref("sim/custom/cabin/push_7", "number")

--cabin lamps

cabin_lamp1 = deferred_dataref("sim/custom/cabin/lamp1", "number")
cabin_lamp2 = deferred_dataref("sim/custom/cabin/lamp2", "number")
cabin_lamp3 = deferred_dataref("sim/custom/cabin/lamp3", "number")
cabin_lamp4 = deferred_dataref("sim/custom/cabin/lamp4", "number")
cabin_lamp5 = deferred_dataref("sim/custom/cabin/lamp5", "number")
cabin_lamp6 = deferred_dataref("sim/custom/cabin/lamp6", "number")
cabin_lamp7 = deferred_dataref("sim/custom/cabin/lamp7", "number")


cabin_lamp8 = deferred_dataref("sim/custom/cabin/lamp8", "number")
cabin_lamp9 = deferred_dataref("sim/custom/cabin/lamp9", "number")
cabin_lamp10 = deferred_dataref("sim/custom/cabin/lamp10", "number")
cabin_lamp11 = deferred_dataref("sim/custom/cabin/lamp11", "number")
cabin_lamp12 = deferred_dataref("sim/custom/cabin/lamp12", "number")
cabin_lamp13 = deferred_dataref("sim/custom/cabin/lamp13", "number")

cabin_call_stuardlamp = find_dataref("tu154b2/custom/lights/stuard_call")
pax_door_1 = find_dataref("tu154b2/custom/anim/pax_door_1")
toilet_busy = find_dataref("tu154b2/custom/lights/toilet_busy_lamp")
gear_nacells = find_dataref("tu154b2/custom/lights/gear_nacelle_light_set")
cargo1_light_cockpit_set = find_dataref("tu154b2/custom/lights/cargo_light_1_set")
cargo2_light_cockpit_set = find_dataref("tu154b2/custom/lights/cargo_light_2_set")




local lamp7_counter = 0

cabin_sw1 = 1
cabin_sw2 = 1
cabin_sw3 = 0
cabin_sw4 = 1
cabin_sw5 = 1
cabin_sw6 = 1
cabin_sw7 = 1
cabin_sw8 = 1
cabin_sw9 = 1
cabin_sw10 = 1
cabin_sw11 = 1
cabin_sw12 = 0
cabin_sw13 = 1
cabin_sw14 = 0
cabin_sw15 = 1


cabin_sw16 = 1
cabin_sw17 = 1
cabin_sw18 = 1
cabin_sw19 = 1
cabin_sw20 = 1
cabin_sw21 = 1
cabin_sw22 = 1
cabin_sw23 = 1
cabin_sw24 = 1
cabin_sw25 = 1
cabin_sw26 = 1
cabin_sw27 = 1
cabin_sw28 = 1
cabin_sw29 = 1
cabin_sw30 = 1
cabin_sw31 = 1
cabin_sw32 = 1
cabin_sw33 = 1
cabin_sw34 = 1
cabin_sw35 = 1


cabin_sw42 = 1
cabin_sw43 = 1
cabin_sw44 = 1


cabin_rt1 = 0.8
cabin_rt2 = 0.8



cabin_cent_light1 = deferred_dataref("sim/custom/cabin/cent_light1", "number")
cabin_cent_light2 = deferred_dataref("sim/custom/cabin/cent_light2", "number")
cabin_side_light1 = deferred_dataref("sim/custom/cabin/side_light1", "number")
cabin_side_light2 = deferred_dataref("sim/custom/cabin/side_light2", "number")
cabin_cargo_light1 = deferred_dataref("sim/custom/cabin/cargo_light1", "number")
cabin_cargo_light2 = deferred_dataref("sim/custom/cabin/cargo_light2", "number")
cabin_gears_light = deferred_dataref("sim/custom/cabin/gears_light", "number")
dezhur_vest_light1 = deferred_dataref("sim/custom/cabin/dezhur_vest_light1", "number")
dezhur_vest_light2 = deferred_dataref("sim/custom/cabin/dezhur_vest_light2", "number")
dezhur_vest_light3 = deferred_dataref("sim/custom/cabin/dezhur_vest_light3", "number")
dezhur_cabin_light1 = deferred_dataref("sim/custom/cabin/dezhur_cabin_light1", "number")
dezhur_cabin_light2 = deferred_dataref("sim/custom/cabin/dezhur_cabin_light2", "number")
kitchen_light1 = deferred_dataref("sim/custom/cabin/kitchen_light1", "number")
vest_light1= deferred_dataref("sim/custom/cabin/vest_light1", "number")
vest_light2= deferred_dataref("sim/custom/cabin/vest_light2", "number")
vest_light3= deferred_dataref("sim/custom/cabin/vest_light3", "number")


cabin_cent_light_efb= deferred_dataref("sim/custom/cabin/cent_light_efb", "number")
cabin_side_light_efb= deferred_dataref("sim/custom/cabin/side_light_efb", "number")
cabin_stby_light_efb= deferred_dataref("sim/custom/cabin/stby_light_efb", "number")



function cabin_light_main_CMDhandler(phase, duration) 
    if phase == 0 then
        if cabin_cent_light_efb < 1 then
            cabin_sw20 = 1
            cabin_sw21 = 1
            cabin_cent_light_efb = 1
        else
            cabin_sw20 = 0
            cabin_sw21 = 0
            cabin_cent_light_efb = 0
        end
    end
end


function cabin_light_side_CMDhandler(phase, duration) 
    if phase == 0 then
        if cabin_side_light_efb < 1 then
            cabin_sw22 = 1
            cabin_sw23 = 1
            cabin_side_light_efb = 1
        else
            cabin_sw22 = 0
            cabin_sw23 = 0
            cabin_side_light_efb  = 0
        end
    end
end

function cabin_light_stby_CMDhandler(phase, duration) 
    if phase == 0 then
        if cabin_stby_light_efb < 1 then
            cabin_sw25 = 1
            cabin_sw31 = 1
            cabin_sw32 = 1
            cabin_sw33 = 1
            cabin_stby_light_efb = 1
        else
            cabin_sw25 = 0
            cabin_sw31 = 0
            cabin_sw32 = 0
            cabin_sw33 = 0
            cabin_stby_light_efb = 0
        end
    end
end

function tks_left_CMDhandler(phase, duration) 
    if phase == 1 then
        simDR_tks_sw=-1
	elseif phase==2 then
		simDR_tks_sw=0
    end
end
function tks_right_CMDhandler(phase, duration) 
    if phase == 1 then
        simDR_tks_sw=1
	elseif phase==2 then
		simDR_tks_sw=0
    end
end

function tks_corr_main_CMDhandler(phase, duration) 
    if phase == 1 then
        simDR_tks_corr=1
    end
end
function tks_corr_backup_CMDhandler(phase, duration) 
    if phase == 1 then
        simDR_tks_corr=0
    end
end


cabin_light_main_CMD	= create_command("t154/cabin_light_main", "T154 cabin_light main ON/OFF", cabin_light_main_CMDhandler)
cabin_light_side_CMD	= create_command("t154/cabin_light_side", "T154 cabin_light side ON/OFF", cabin_light_side_CMDhandler)
cabin_light_stndby_CMD	= create_command("t154/cabin_light_stndby", "T154 cabin_light stand-by ON/OFF", cabin_light_stby_CMDhandler)
TKS_left_CMD	= create_command("t154/TKS_set_left", "TKS_set_left", tks_left_CMDhandler)
TKS_right_CMD	= create_command("t154/TKS_set_right", "TKS_set_right", tks_right_CMDhandler)
TKS_corr_main_CMD	= create_command("t154/TKS_correct_main", "TKS_correct_main", tks_corr_main_CMDhandler)
TKS_corr_backup_CMD	= create_command("t154/TKS_correct_control", "TKS_correct_control", tks_corr_backup_CMDhandler)





-- ahz corr

simDR_pitch_L = find_dataref("tu154b2/custom/gauges/ahz/pitch_L")
simDR_pitch_R = find_dataref("tu154b2/custom/gauges/ahz/pitch_R")
simDR_roll_L = find_dataref("tu154b2/custom/gauges/ahz/roll_L")
simDR_roll_R = find_dataref("tu154b2/custom/gauges/ahz/roll_R")
pitch_L_new = deferred_dataref("sim/custom/gauges/ahz/pitch_L_new", "number")
pitch_R_new = deferred_dataref("sim/custom/gauges/ahz/pitch_R_new", "number")
roll_L_new = deferred_dataref("sim/custom/gauges/ahz/roll_L_new", "number")
roll_R_new = deferred_dataref("sim/custom/gauges/ahz/roll_R_new", "number")

simDR_pkp_L_on = find_dataref("tu154b2/custom/switchers/ovhd/pkp_left_on")
simDR_pkp_R_on = find_dataref("tu154b2/custom/switchers/ovhd/pkp_right_on")

simDR_36vl = find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr = find_dataref("tu154b2/custom/elec/bus36_volt_right")


pitch_L_new = math.random(0,2)
pitch_R_new = math.random(0,2)
roll_L_new = math.random(0,2)
roll_R_new = math.random(0,2)


-- lavatory test smoke syst

lav_horn_off = deferred_dataref("sim/custom/cabin/lavatory_horn_off", "number")
lav_reset = deferred_dataref("sim/custom/cabin/lavatory_reset", "number")
lav_test = deferred_dataref("sim/custom/cabin/lavatory_test", "number")
lav_lamps = deferred_dataref("sim/custom/cabin/lavatory_lamps", "number")
lav_horn = deferred_dataref("sim/custom/cabin/lavatory_horn", "number")

local lav_test_count = 0


-- ppn13


ppn13_cap = deferred_dataref("sim/custom/t154/ppn13_cap", "number")
ppn13_t1 = deferred_dataref("sim/custom/t154/ppn13_t1", "number")
ppn13_t2 = deferred_dataref("sim/custom/t154/ppn13_t2", "number")
ppn13_t3 = deferred_dataref("sim/custom/t154/ppn13_t3", "number")
ppn13_pol = deferred_dataref("sim/custom/t154/ppn13_pol", "number")
ppn13_to_pwr = deferred_dataref("sim/custom/t154/ppn13_to_pwr", "number")
ppn13_snp = deferred_dataref("sim/custom/t154/ppn13_snp", "number")
ppn13_search = deferred_dataref("sim/custom/t154/ppn13_search", "number")
ppn13_pusk = deferred_dataref("sim/custom/t154/ppn13_pusk", "number")
ppn13_sbk_test = deferred_dataref("sim/custom/t154/ppn13_sbk_test", "number")
ppn13_absu_test = deferred_dataref("sim/custom/t154/ppn13_absu_test", "number")

ppn13_lamp1 = deferred_dataref("sim/custom/t154/ppn13_lamp1", "number")
ppn13_lamp2 = deferred_dataref("sim/custom/t154/ppn13_lamp2", "number")
ppn13_lamp3 = deferred_dataref("sim/custom/t154/ppn13_lamp3", "number")
ppn13_lamp4 = deferred_dataref("sim/custom/t154/ppn13_lamp4", "number")
ppn13_lamp5 = deferred_dataref("sim/custom/t154/ppn13_lamp5", "number")
ppn13_lamp6 = deferred_dataref("sim/custom/t154/ppn13_lamp6", "number")
ppn13_lamp7 = deferred_dataref("sim/custom/t154/ppn13_lamp7", "number")
ppn13_lamp8 = deferred_dataref("sim/custom/t154/ppn13_lamp8", "number")
ppn13_lamp9 = deferred_dataref("sim/custom/t154/ppn13_lamp9", "number")
ppn13_lamp10 = deferred_dataref("sim/custom/t154/ppn13_lamp10", "number")
ppn13_lamp11 = deferred_dataref("sim/custom/t154/ppn13_lamp11", "number")
ppn13_lamp12 = deferred_dataref("sim/custom/t154/ppn13_lamp12", "number")
ppn13_lamp13 = deferred_dataref("sim/custom/t154/ppn13_lamp13", "number")
ppn13_lamp14 = deferred_dataref("sim/custom/t154/ppn13_lamp14", "number")
ppn13_lamp15 = deferred_dataref("sim/custom/t154/ppn13_lamp15", "number")
ppn13_lamp16 = deferred_dataref("sim/custom/t154/ppn13_lamp16", "number")
ppn13_lamp17 = deferred_dataref("sim/custom/t154/ppn13_lamp17", "number")
ppn13_lamp18 = deferred_dataref("sim/custom/t154/ppn13_lamp18", "number")
ppn13_lamp19 = deferred_dataref("sim/custom/t154/ppn13_lamp19", "number")
ppn13_lamp20 = deferred_dataref("sim/custom/t154/ppn13_lamp20", "number")
ppn13_lamp21 = deferred_dataref("sim/custom/t154/ppn13_lamp21", "number")
ppn13_lamp22 = deferred_dataref("sim/custom/t154/ppn13_lamp22", "number")
ppn13_lamp23 = deferred_dataref("sim/custom/t154/ppn13_lamp23", "number")
ppn13_lamp24 = deferred_dataref("sim/custom/t154/ppn13_lamp24", "number")
ppn13_lamp25 = deferred_dataref("sim/custom/t154/ppn13_lamp25", "number")
ppn13_lamp26 = deferred_dataref("sim/custom/t154/ppn13_lamp26", "number")
ppn13_lamp27 = deferred_dataref("sim/custom/t154/ppn13_lamp27", "number")
ppn13_lamp28 = deferred_dataref("sim/custom/t154/ppn13_lamp28", "number")

--ppn13 failures
-- simDR_ppn13_fail1 = find_dataref("tu154b2/custom/failures/absu_ra56_roll_fail") -- отказ ra56
-- simDR_ppn13_fail2 = find_dataref("tu154b2/custom/failures/absu_ra56_pitch_fail") -- отказ ra56
-- simDR_ppn13_fail3 = find_dataref("tu154b2/custom/failures/absu_ra56_yaw_fail") -- отказ ra56

-- simDR_ppn13_fail4 = find_dataref("tu154b2/custom/failures/absu_at1_fail") -- отказ AT
-- simDR_ppn13_fail5 = find_dataref("tu154b2/custom/failures/absu_at2_fail") -- отказ AT



-- simDR_ppn13_fail6 = find_dataref("tu154b2/custom/failures/absu_damp_roll_fail") -- отказ демперов крена
-- simDR_ppn13_fail7 = find_dataref("tu154b2/custom/failures/absu_damp_pitch_fail") -- отказ демперов тангажа
-- simDR_ppn13_fail8 = find_dataref("tu154b2/custom/failures/absu_damp_yaw_fail") -- отказ демперов курса
-- simDR_ppn13_fail9 = find_dataref("tu154b2/custom/failures/absu_contr_roll_fail") -- отказ бокового управления
-- simDR_ppn13_fail10 = find_dataref("tu154b2/custom/failures/absu_contr_pitch_fail") -- отказ продольного управления
-- simDR_ppn13_fail11 = find_dataref("tu154b2/custom/failures/absu_calc_toga_fail") -- отказ вычислителя УХОД

-- simDR_ppn13_fail12 = find_dataref("tu154b2/custom/failures/absu_calc_roll_fail") -- отказ бокового канала СТУ
-- simDR_ppn13_fail13 = find_dataref("tu154b2/custom/failures/absu_calc_pitch_fail") -- отказ продольного канала СТУ


simDR_svs_fail = find_dataref("sim/operation/failures/rel_adc_comp")

simDR_sau = find_dataref("tu154b2/custom/switchers/ovhd/sau_stu_on")
simDR_absu_work = find_dataref("tu154b2/custom/lights/absu_work")
simDR_ahz_flag_L = find_dataref("tu154b2/custom/gauges/ahz/ahz_flag_L")
simDR_ahz_flag_R = find_dataref("tu154b2/custom/gauges/ahz/ahz_flag_R")

-- simDR_ra56_pitch1_lit = find_dataref("tu154b2/custom/failures/absu_ra1_pitch_fail")
-- simDR_ra56_pitch2_lit = find_dataref("tu154b2/custom/failures/absu_ra2_pitch_fail")
-- simDR_ra56_pitch3_lit = find_dataref("tu154b2/custom/failures/absu_ra3_pitch_fail")
-- simDR_ra56_roll1_lit = find_dataref("tu154b2/custom/failures/absu_ra1_roll_fail")
-- simDR_ra56_roll2_lit = find_dataref("tu154b2/custom/failures/absu_ra2_roll_fail")
-- simDR_ra56_roll3_lit = find_dataref("tu154b2/custom/failures/absu_ra3_roll_fail")
-- simDR_ra56_course1_lit = find_dataref("tu154b2/custom/failures/absu_ra1_yaw_fail")
-- simDR_ra56_course2_lit = find_dataref("tu154b2/custom/failures/absu_ra2_yaw_fail")
-- simDR_ra56_course3_lit = find_dataref("tu154b2/custom/failures/absu_ra3_yaw_fail")

simDR_ra56_kolcev = find_dataref("tu154b2/custom/switchers/eng/hydro_circuit_auto_man")
simDR_absu_roll_mode = find_dataref("tu154b2/custom/gauges/console/absu_roll_mode")
simDR_absu_pitch_mode = find_dataref("tu154b2/custom/gauges/console/absu_pitch_mode")

local ppn13_count_test_search = 0
local ppn13_count_test_start = 0
local ppn13_count_test_run = 0
local ppn13_push_pusk = 0
local ppn13_push_pol = 0
local ppn13_sbk_test_loc = 0
local ppn13_test_started = 0
local simDR_ra56_kolcev_last = 0
local ppn13_to_pwr_was = 1

-- simDR_oil_qty1 = find_dataref("tu154b2/custom/gauges/eng/oil_qty_1")
-- simDR_oil_qty2 = find_dataref("tu154b2/custom/gauges/eng/oil_qty_2")
-- simDR_oil_qty3 = find_dataref("tu154b2/custom/gauges/eng/oil_qty_3")

-- oil_qty1_new = deferred_dataref("sim/custom/gauges/eng/oil_qty_1_new", "number")
-- oil_qty2_new = deferred_dataref("sim/custom/gauges/eng/oil_qty_2_new", "number")
-- oil_qty3_new = deferred_dataref("sim/custom/gauges/eng/oil_qty_3_new", "number")


-- oil_qty1_p = deferred_dataref("sim/custom/gauges/eng/oil_qty_1_p", "number")
-- oil_qty1_h = deferred_dataref("sim/custom/gauges/eng/oil_qty_1_h", "number")
-- oil_qty2_p = deferred_dataref("sim/custom/gauges/eng/oil_qty_2_p", "number")
-- oil_qty2_h = deferred_dataref("sim/custom/gauges/eng/oil_qty_2_h", "number")
-- oil_qty3_p = deferred_dataref("sim/custom/gauges/eng/oil_qty_3_p", "number")
-- oil_qty3_h = deferred_dataref("sim/custom/gauges/eng/oil_qty_3_h", "number")


apu_oil_test = deferred_dataref("sim/custom/gauges/eng/apu_oil_test", "number")
apu_oil_test_lamp = deferred_dataref("sim/custom/gauges/eng/apu_oil_test_lamp", "number")
simDR_apu_oil_qty = find_dataref("tu154b2/custom/eng/apu_oil_q")

oil_qty_cap = deferred_dataref("sim/custom/gauges/eng/oil_qty_cap", "number")

-- otk_ra56_tang=find_dataref("tu154b2/custom/failures/absu_ra56_pitch_fail")
-- otk_ra56_kren=find_dataref("tu154b2/custom/failures/absu_ra56_roll_fail")
-- otk_ra56_kurs=find_dataref("tu154b2/custom/failures/absu_ra56_yaw_fail")
press_alt=find_dataref("sim/flightmodel2/position/pressure_altitude")



-- function ppn13()

    -- if ppn13_cap < 1 then
        -- ppn13_sbk_test = 0
        -- ppn13_absu_test = 0
    -- end

    -- if simDR_sau > 0 and (simDR_36vl+simDR_36vr) > 5 then
        -- if ppn13_sbk_test_loc ~= 0 then
            -- simDR_absu_work = 0
        -- end
        -- if ppn13_test_started > 0 then
            -- simDR_absu_work = 0
        -- end
        -- if ppn13_search > 0 and ppn13_count_test_search == 0 and ppn13_count_test_start < 1 and ppn13_sbk_test < 1 then
            -- ppn13_count_test_start = 1
            -- ppn13_count_test_run = 1
            -- ppn13_sbk_test_loc = 0
        -- end
        -- if ppn13_search > 0 and ppn13_count_test_search == 0 and ppn13_count_test_start < 1 and ppn13_sbk_test > 0 then
            -- ppn13_count_test_start = 1
            -- ppn13_count_test_run = 1
            -- ppn13_sbk_test_loc = 1
        -- end

        -- if ppn13_search > 0 and ppn13_to_pwr_was > 0 then
            -- ppn13_count_test_start = 1
            -- ppn13_count_test_run = 1
            -- ppn13_to_pwr_was = 0
        -- end
        
        -- if ppn13_to_pwr > 0 then
            -- if ppn13_count_test_run > 0 then
                -- ppn13_count_test_run = 0
            -- end
            -- ppn13_to_pwr_was = 1
        -- end
        
        -- if ppn13_pusk+ppn13_search > 1 and ppn13_sbk_test < 1 then
            -- ppn13_count_test_start = 1
            -- ppn13_count_test_run = 1
            -- ppn13_lamp25 = 0
            -- ppn13_lamp26 = 0
            -- ppn13_lamp27 = 0
        -- end
        
        
        -- if ppn13_snp > 0 and ppn13_sbk_test > 0 and ppn13_sbk_test_loc > 0 then
            -- ppn13_count_test_start = 1
            -- ppn13_count_test_run = 1
        -- end

        -- if ppn13_snp > 0 then
            -- ppn13_lamp25 = 0
            -- ppn13_lamp26 = 0
            -- ppn13_lamp27 = 0
        -- end

        -- if ppn13_sbk_test_loc > 0 and ppn13_sbk_test < 1 then
            -- ppn13_count_test_start = 0
            -- ppn13_count_test_run = 0
            -- ppn13_sbk_test_loc = 2
            -- ppn13_lamp1 = 0
            -- ppn13_lamp2 = 0
            -- ppn13_lamp3 = 0
            -- ppn13_lamp4 = 0
            -- ppn13_lamp5 = 0
            -- ppn13_lamp6 = 0
            -- ppn13_lamp7 = 0
            -- ppn13_lamp8 = 0
            -- ppn13_lamp9 = 0
            -- ppn13_lamp10 = 0
            -- ppn13_lamp11 = 0
            -- ppn13_lamp12 = 0
            -- ppn13_lamp13 = 0
            -- ppn13_lamp14 = 0
            -- ppn13_lamp15 = 0
            -- ppn13_lamp16 = 0
            -- ppn13_lamp17 = 0
            -- ppn13_lamp18 = 0
            -- ppn13_lamp19 = 0
            -- ppn13_lamp20 = 0
            -- ppn13_lamp21 = 0
            -- ppn13_lamp22 = 0
            -- ppn13_lamp23 = 0
            -- ppn13_lamp24 = 0
            -- ppn13_lamp25 = 0
            -- ppn13_lamp26 = 0
            -- ppn13_lamp27 = 0
        -- end

        -- if ppn13_sbk_test_loc > 1 and ppn13_sbk_test > 0 then
            -- ppn13_sbk_test_loc = 1
            -- ppn13_count_test_start = 1
        -- end


        -- if ppn13_pusk > 0 then
            -- ppn13_push_pusk = ppn13_push_pusk + 3*SIM_PERIOD
        -- elseif ppn13_push_pusk > 1 then
            -- ppn13_push_pusk = 1
        -- end

        -- if ppn13_push_pusk > 2.5 then
            -- ppn13_search = 1
        -- elseif ppn13_push_pusk == 1 then
            -- ppn13_search = 0
            -- ppn13_push_pusk = 0
        -- end

       
        -- if ppn13_t1+ppn13_t2+ppn13_t3 > 0 then
            -- ppn13_push_pol = ppn13_push_pol + 3*SIM_PERIOD
        -- elseif ppn13_push_pol > 1 then
            -- ppn13_push_pol = 1
        -- end

        -- if ppn13_push_pol > 2.5 then
            -- if (ppn13_lamp1+ppn13_lamp2+ppn13_lamp3) > 0 then
                -- ppn13_pol = 1
            -- end
        -- elseif ppn13_push_pol == 1 then
            -- ppn13_pol = 0
            -- ppn13_push_pol = 0
        -- end

        -- if simDR_ra56_kolcev ~= simDR_ra56_kolcev_last and ppn13_test_started > 0 then
            -- ppn13_lamp25 = 0
            -- ppn13_lamp26 = 0
            -- ppn13_lamp27 = 0
            -- ppn13_test_started = 0
            -- simDR_ra56_kolcev_last = simDR_ra56_kolcev
        -- end

        -- if (ppn13_lamp25+ppn13_lamp26+ppn13_lamp27) > 1 and ppn13_lamp1 > 0 then
            -- simDR_absu_pitch_mode = 0
        -- end

        -- if (ppn13_lamp25+ppn13_lamp26+ppn13_lamp27) > 1 and ppn13_lamp2 > 0 then
            -- simDR_absu_roll_mode = 0
        -- end
        -- if ppn13_count_test_start == 1 then
            -- if ppn13_count_test_run > 0 then
                -- ppn13_count_test_search = ppn13_count_test_search + (0.35-(0.05*ppn13_sbk_test_loc))*SIM_PERIOD
            -- end
            -- if ppn13_push_pol > 4 then
                    -- ppn13_test_started = 1
                    -- if ppn13_t1 > 0 then
                        -- if ppn13_lamp27 > 0 then
                            -- ppn13_lamp25 = 1
                            -- ppn13_lamp26 = 1
                        -- elseif ppn13_lamp26 > 0 then
                            -- ppn13_lamp25 = 1
                            -- ppn13_lamp27 = 1
                        -- else
                            -- ppn13_lamp25 = 1
                        -- end
                    -- end
                    -- if ppn13_t2 > 0 then
                        -- if ppn13_lamp25 > 0 then
                            -- ppn13_lamp26 = 1
                            -- ppn13_lamp27 = 1
                        -- elseif ppn13_lamp27 > 0 then
                            -- ppn13_lamp25 = 1
                            -- ppn13_lamp26 = 1
                        -- else
                            -- ppn13_lamp26 = 1
                        -- end
                    -- end
                    -- if ppn13_t3 > 0 then
                        -- if ppn13_lamp25 > 0 then
                            -- ppn13_lamp26 = 1
                            -- ppn13_lamp27 = 1
                        -- elseif ppn13_lamp26 > 0 then
                            -- ppn13_lamp25 = 1
                            -- ppn13_lamp27 = 1
                        -- else
                            -- ppn13_lamp27 = 1
                        -- end
                    -- end
            -- end
            -- if ppn13_lamp1 > 0 then
                -- -- if simDR_ppn13_fail1 > 0 then
                    -- -- if ppn13_sbk_test > 0 then
                        -- -- ppn13_lamp25 = 1
                    -- -- end
                    -- -- ppn13_count_test_start = 0
                    -- -- ppn13_count_test_run = 0
                -- -- end
                -- if simDR_ra56_pitch1_lit+simDR_ra56_pitch2_lit+simDR_ra56_pitch3_lit > 0 or otk_ra56_tang>0 then
                    -- if (simDR_ra56_pitch1_lit > 0 or otk_ra56_tang==1) and ppn13_sbk_test > 0 then
                        -- ppn13_lamp25 = 1
                    -- end
                    -- if (simDR_ra56_pitch2_lit > 0 or otk_ra56_tang>1) and ppn13_sbk_test > 0 then
                        -- ppn13_lamp26 = 1
                    -- end
                    -- if simDR_ra56_pitch3_lit > 0 and ppn13_sbk_test > 0 then
                        -- ppn13_lamp27 = 1
                    -- end
                    -- if ppn13_sbk_test > 0 then
						-- ppn13_count_test_start = 0
						-- ppn13_count_test_run = 0
					-- end
                -- end
            -- elseif ppn13_lamp2 > 0 then
                -- -- if simDR_ppn13_fail2 > 0 then
                    -- -- if ppn13_sbk_test > 0 then
                        -- -- ppn13_lamp27 = 1
                    -- -- end
                    -- -- ppn13_count_test_start = 0
                    -- -- ppn13_count_test_run = 0
                -- -- end
                -- if simDR_ra56_roll1_lit+simDR_ra56_roll2_lit+simDR_ra56_roll3_lit > 0 or otk_ra56_kren>0 then
                    -- if (simDR_ra56_roll1_lit > 0 or otk_ra56_kren==1) and ppn13_sbk_test > 0  then
                        -- ppn13_lamp25 = 1
                    -- end
                    -- if simDR_ra56_roll2_lit > 0 and ppn13_sbk_test > 0  then
                        -- ppn13_lamp26 = 1
                    -- end
                    -- if (simDR_ra56_roll3_lit > 0 or otk_ra56_kren==2) and ppn13_sbk_test > 0  then
                        -- ppn13_lamp27 = 1
                    -- end
                    -- if ppn13_sbk_test > 0 then
						-- ppn13_count_test_start = 0
						-- ppn13_count_test_run = 0
					-- end
                -- end
            -- elseif ppn13_lamp3 > 0 then
                -- -- if simDR_ppn13_fail3 > 0 then
                    -- -- if ppn13_sbk_test > 0 then
                        -- -- ppn13_lamp26 = 1
                    -- -- end
                    -- -- ppn13_count_test_start = 0
                    -- -- ppn13_count_test_run = 0
                -- -- end
                -- if simDR_ra56_course1_lit+simDR_ra56_course2_lit+simDR_ra56_course3_lit > 0 or otk_ra56_kurs>0 then
                    -- if simDR_ra56_course1_lit > 0  and ppn13_sbk_test > 0  then
                        -- ppn13_lamp25 = 1
                    -- end
                    -- if (simDR_ra56_course2_lit > 0 or otk_ra56_kurs>0) and ppn13_sbk_test > 0  then
                        -- ppn13_lamp26 = 1
                    -- end
                    -- if (simDR_ra56_course3_lit > 0 or otk_ra56_kurs>1) and ppn13_sbk_test > 0  then
                        -- ppn13_lamp27 = 1
                    -- end
					-- if ppn13_sbk_test > 0 then
						-- ppn13_count_test_start = 0
						-- ppn13_count_test_run = 0
					-- end
                -- end
            -- elseif ppn13_lamp17 > 0 and simDR_ppn13_fail4 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp27 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp17 and simDR_ppn13_fail5 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp25 = 6
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp4 > 0 and simDR_ppn13_fail6 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp27 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp5 > 0 and simDR_ppn13_fail7 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp27 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif simDR_ppn13_fail8 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp26 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp8 > 0 and simDR_ppn13_fail9 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp25 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp7 > 0 and simDR_ppn13_fail10 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp27 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp12 > 0 and simDR_svs_fail > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp26 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp13 > 0 and simDR_ppn13_fail11 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp26 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp11 > 0 and simDR_ppn13_fail12 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp27 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp10 > 0 and simDR_ppn13_fail13 > 0 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp25 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp19 > 0 and simDR_ahz_flag_L+simDR_ahz_flag_R > 1 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp27 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp20 > 0 and simDR_ahz_flag_L+simDR_ahz_flag_R > 1 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp25 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp21 > 0 and simDR_ahz_flag_L+simDR_ahz_flag_R > 1 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp26 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- elseif ppn13_lamp22 > 0 and simDR_ahz_flag_L+simDR_ahz_flag_R > 1 then
                -- if ppn13_sbk_test > 0 then
                    -- ppn13_lamp25 = 1
                -- end
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
            -- end
            -- if ppn13_count_test_search > 1 and ppn13_count_test_search < 2 then
                -- ppn13_lamp1 = 1
            -- elseif ppn13_count_test_search > 2 and ppn13_count_test_search < 3 then
                -- ppn13_lamp1 = 0
                -- ppn13_lamp2 = 1
            -- elseif ppn13_count_test_search > 3 and ppn13_count_test_search < 4 then
                -- ppn13_lamp2 = 0
                -- ppn13_lamp3 = 1
            -- elseif ppn13_count_test_search > 4 and ppn13_count_test_search < 5 then
                -- ppn13_lamp3 = 0
                -- ppn13_lamp4 = 1
            -- elseif ppn13_count_test_search > 5 and ppn13_count_test_search < 6 then
                -- ppn13_lamp4 = 0
                -- ppn13_lamp5 = 1
            -- elseif ppn13_count_test_search > 6 and ppn13_count_test_search < 7 then
                -- ppn13_lamp5 = 0
                -- ppn13_lamp6 = 1
            -- elseif ppn13_count_test_search > 7 and ppn13_count_test_search < 8 then
                -- ppn13_lamp6 = 0
                -- ppn13_lamp7 = 1
            -- elseif ppn13_count_test_search > 8 and ppn13_count_test_search < 9 then
                -- ppn13_lamp7 = 0
                -- ppn13_lamp8 = 1
            -- elseif ppn13_count_test_search > 9 and ppn13_count_test_search < 10 then
                -- ppn13_lamp8 = 0
                -- ppn13_lamp9 = 1
            -- elseif ppn13_count_test_search > 10 and ppn13_count_test_search < 11 then
                -- ppn13_lamp9= 0
                -- ppn13_lamp10 = 1
            -- elseif ppn13_count_test_search > 11 and ppn13_count_test_search < 12 then
                -- ppn13_lamp10 = 0
                -- ppn13_lamp11 = 1
            -- elseif ppn13_count_test_search > 12 and ppn13_count_test_search < 13 then
                -- ppn13_lamp11 = 0
                -- ppn13_lamp12 = 1
            -- elseif ppn13_count_test_search > 13 and ppn13_count_test_search < 14 then
                -- ppn13_lamp12 = 0
                -- ppn13_lamp13 = 1
            -- elseif ppn13_count_test_search > 14 and ppn13_count_test_search < 15 then
                -- ppn13_lamp13 = 0
                -- ppn13_lamp14 = 1
            -- elseif ppn13_count_test_search > 15 and ppn13_count_test_search < 16 then
                -- ppn13_lamp14 = 0
                -- ppn13_lamp15 = 1
            -- elseif ppn13_count_test_search > 16 and ppn13_count_test_search < 17 then
                -- ppn13_lamp15 = 0
                -- ppn13_lamp16 = 1
            -- elseif ppn13_count_test_search > 17 and ppn13_count_test_search < 18 then
                -- ppn13_lamp16 = 0
                -- ppn13_lamp17 = 1
            -- elseif ppn13_count_test_search > 18 and ppn13_count_test_search < 19 then
                -- ppn13_lamp17 = 0
                -- ppn13_lamp18 = 1
            -- elseif ppn13_count_test_search > 19 and ppn13_count_test_search < 20 then
                -- ppn13_lamp18 = 0
                -- ppn13_lamp19 = 1
            -- elseif ppn13_count_test_search > 20 and ppn13_count_test_search < 21 then
                -- ppn13_lamp19 = 0
                -- ppn13_lamp20 = 1
            -- elseif ppn13_count_test_search > 21 and ppn13_count_test_search < 22 then
                -- ppn13_lamp20 = 0
                -- ppn13_lamp21 = 1
            -- elseif ppn13_count_test_search > 22 and ppn13_count_test_search < 23 then
                -- ppn13_lamp21 = 0
                -- ppn13_lamp22 = 1
            -- elseif ppn13_count_test_search > 23 and ppn13_count_test_search < 24 then
                -- ppn13_lamp22 = 0
                -- ppn13_lamp23 = 1
            -- elseif ppn13_count_test_search > 24 and ppn13_count_test_search < 25 then
                -- ppn13_lamp23 = 0
                -- ppn13_lamp24 = 1
            -- elseif ppn13_count_test_search > 25 then
                -- ppn13_lamp24 = 0
                -- ppn13_lamp25 = 0
                -- ppn13_lamp26 = 0
                -- ppn13_lamp27 = 0
                -- ppn13_count_test_start = 0
                -- ppn13_count_test_run = 0
                -- ppn13_sbk_test_loc = 0
                -- ppn13_count_test_search = 0
            -- end
        -- end
    -- else
        -- ppn13_count_test_search = 0
        -- ppn13_count_test_start = 0
        -- ppn13_count_test_run = 0
        -- ppn13_sbk_test_loc = 0
        -- ppn13_push_pusk = 0
        -- ppn13_lamp1 = 0
        -- ppn13_lamp2 = 0
        -- ppn13_lamp3 = 0
        -- ppn13_lamp4 = 0
        -- ppn13_lamp5 = 0
        -- ppn13_lamp6 = 0
        -- ppn13_lamp7 = 0
        -- ppn13_lamp8 = 0
        -- ppn13_lamp9 = 0
        -- ppn13_lamp10 = 0
        -- ppn13_lamp11 = 0
        -- ppn13_lamp12 = 0
        -- ppn13_lamp13 = 0
        -- ppn13_lamp14 = 0
        -- ppn13_lamp15 = 0
        -- ppn13_lamp16 = 0
        -- ppn13_lamp17 = 0
        -- ppn13_lamp18 = 0
        -- ppn13_lamp19 = 0
        -- ppn13_lamp20 = 0
        -- ppn13_lamp21 = 0
        -- ppn13_lamp22 = 0
        -- ppn13_lamp23 = 0
        -- ppn13_lamp24 = 0
        -- ppn13_lamp25 = 0
        -- ppn13_lamp26 = 0
        -- ppn13_lamp27 = 0
    -- end

-- end




function rain_snow_frtchk()

    lf_rain_loc = simDR_current_rain*(1.05-simDR_left_window)
    lf_snow_loc = simDR_current_snow*(1.05-simDR_left_window)
    rf_rain_loc = simDR_current_rain*(1.05-simDR_right_window)
    rf_snow_loc = simDR_current_snow*(1.05-simDR_right_window)

    if lf_rain_loc-rain_lf > 0.1 then
        rain_lf = rain_lf +(0.005+0.02*simDR_left_window)*SIM_PERIOD
    elseif lf_rain_loc-rain_lf < 0 then
        rain_lf = rain_lf -(0.005+0.02*simDR_left_window)*SIM_PERIOD
    end

    if lf_snow_loc-snow_lf > 0.1 then
        snow_lf = snow_lf +(0.008+0.03*simDR_left_window)*SIM_PERIOD
    elseif lf_snow_loc-snow_lf < 0 then
        snow_lf = snow_lf -(0.008+0.03*simDR_left_window)*SIM_PERIOD
    end


    if rf_rain_loc-rain_rf > 0.1 then
        rain_rf = rain_rf +(0.005+0.02*simDR_right_window)*SIM_PERIOD
    elseif rf_rain_loc-rain_rf < 0 then
        rain_rf = rain_rf -(0.005+0.02*simDR_right_window)*SIM_PERIOD
    end

    if rf_snow_loc-snow_rf > 0.1 then
        snow_rf = snow_rf +(0.008+0.03*simDR_right_window)*SIM_PERIOD
    elseif rf_snow_loc-snow_rf < 0 then
        snow_rf = snow_rf -(0.008+0.03*simDR_right_window)*SIM_PERIOD
    end

end


function bus115_sel1_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel1 < 9 then
            simDR_bus115_sel1 = simDR_bus115_sel1 + 1
        else
            simDR_bus115_sel1 = 9
        end
    end
end
function bus115_sel1_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel1 > 0 then
            simDR_bus115_sel1 = simDR_bus115_sel1 - 1
        else
            simDR_bus115_sel1 = 0
        end
    end
end


function bus115_sel2_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel2 < 2 then
            simDR_bus115_sel2 = simDR_bus115_sel2 + 1
        else
            simDR_bus115_sel2 = 2
        end
    end
end
function bus115_sel2_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel2 > 0 then
            simDR_bus115_sel2 = simDR_bus115_sel2 - 1
        else
            simDR_bus115_sel2 = 0
        end
    end
end

function bus115_sel3_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel3 < 4 then
            simDR_bus115_sel3 = simDR_bus115_sel3 + 1
        else
            simDR_bus115_sel3 = 4
        end
    end
end
function bus115_sel3_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel3 > 0 then
            simDR_bus115_sel3 = simDR_bus115_sel3 - 1
        else
            simDR_bus115_sel3 = 0
        end
    end
end


function bus115_sel4_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel4 < 2 then
            simDR_bus115_sel4 = simDR_bus115_sel4 + 1
        else
            simDR_bus115_sel4 = 2
        end
    end
end
function bus115_sel4_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus115_sel4 > 0 then
            simDR_bus115_sel4 = simDR_bus115_sel4 - 1
        else
            simDR_bus115_sel4 = 0
        end
    end
end


function bus36_sel_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus36_sel < 8 then
            simDR_bus36_sel = simDR_bus36_sel + 1
        else
            simDR_bus36_sel4 = 8
        end
    end
end
function bus36_sel_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus36_sel > 0 then
            simDR_bus36_sel = simDR_bus36_sel - 1
        else
            simDR_bus36_sel = 0
        end
    end
end


function bus27_sel1_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus27_sel1 < 4 then
            simDR_bus27_sel1 = simDR_bus27_sel1 + 1
        else
            simDR_bus27_sel4 = 4
        end
    end
end
function bus27_sel1_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus27_sel1 > 0 then
            simDR_bus27_sel1 = simDR_bus27_sel1 - 1
        else
            simDR_bus27_sel1 = 0
        end
    end
end



function bus27_sel2_up_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus27_sel2 < 3 then
            simDR_bus27_sel2 = simDR_bus27_sel2 + 1
        else
            simDR_bus27_sel2 = 3
        end
    end
end
function bus27_sel2_dn_CMDhandler(phase, duration) 
    if phase == 0 then
        if simDR_bus27_sel2 > 0 then
            simDR_bus27_sel2 = simDR_bus27_sel2 - 1
        else
            simDR_bus27_sel2 = 0
        end
    end
end



bus115_sel1_up	= create_command("t154/bus115_sel1_up", "T154 ELEC bus115 sel1 up", bus115_sel1_up_CMDhandler)
bus115_sel1_dn	= create_command("t154/bus115_sel1_dn", "T154 ELEC bus115 sel1 dn", bus115_sel1_dn_CMDhandler)
bus115_sel2_up	= create_command("t154/bus115_sel2_up", "T154 ELEC bus115 sel2 up", bus115_sel2_up_CMDhandler)
bus115_sel2_dn	= create_command("t154/bus115_sel2_dn", "T154 ELEC bus115 sel2 dn", bus115_sel2_dn_CMDhandler)
bus115_sel3_up	= create_command("t154/bus115_sel3_up", "T154 ELEC bus115 sel3 up", bus115_sel3_up_CMDhandler)
bus115_sel3_dn	= create_command("t154/bus115_sel3_dn", "T154 ELEC bus115 sel3 dn", bus115_sel3_dn_CMDhandler)
bus115_sel4_up	= create_command("t154/bus115_sel4_up", "T154 ELEC bus115 sel4 up", bus115_sel4_up_CMDhandler)
bus115_sel4_dn	= create_command("t154/bus115_sel4_dn", "T154 ELEC bus115 sel4 dn", bus115_sel4_dn_CMDhandler)
bus36_sel_up	= create_command("t154/bus36_sel_up", "T154 ELEC bus36 sel up", bus36_sel_up_CMDhandler)
bus36_sel_dn	= create_command("t154/bus36_sel_dn", "T154 ELEC bus36 sel dn", bus36_sel_dn_CMDhandler)
bus27_sel1_up	= create_command("t154/bus27_sel1_up", "T154 ELEC bus27 sel1 up", bus27_sel1_up_CMDhandler)
bus27_sel1_dn	= create_command("t154/bus27_sel1_dn", "T154 ELEC bus27 sel1 dn", bus27_sel1_dn_CMDhandler)
bus27_sel2_up	= create_command("t154/bus27_sel2_up", "T154 ELEC bus27 sel2 up", bus27_sel2_up_CMDhandler)
bus27_sel2_dn	= create_command("t154/bus27_sel2_dn", "T154 ELEC bus27 sel2 dn", bus27_sel2_dn_CMDhandler)

-----


function smooth_anim(target, current_value)

    local fps_factor = math.min(1.0, 3.5*simDR_passed)

    if target >= (1 - 0.001) and current_value >= (1 - 0.01) then
        return 1
    elseif target <= (0 + 0.001) and current_value <= (0 + 0.01) then
       return 0
    else
        return current_value + ((target - current_value) * fps_factor)
    end


end

function norm_anim(target, current_value)

    local fps_factor = math.min(1.0, 4.5*simDR_passed)

    if target >= (1 - 0.001) and current_value >= (1 - 0.01) then
        return 1
    elseif target <= (0 + 0.001) and current_value <= (0 + 0.01) then
       return 0
    else
        return current_value + ((target - current_value) * fps_factor)
    end

end



---


function seats_move()
    if left_seat_move > 0.2 then
        left_seat_pos = 0
    end
    if right_seat_move > 0.2 then
        right_seat_pos = 0
    end


    if left_seat_move > 0.7 then
        simDR_table_left_seat = 0
    end
    if right_seat_move > 0.7 then
        simDR_table_right_seat = 0
        simDR_zanaveska = 1
    end
    if eng_seat_move < 0.3 and simDR_table_move < 0.7 then
        if rise_chair_arm_eng < 0.3 then
            rise_chair_arm_eng_start = 0
        elseif rise_chair_arm_eng > 0.7 then
            rise_chair_arm_eng_start = 1
        end
    end
    if navi_seat_move < 0.2 then
        navi_seat_move = 0.2
    end
    rise_chair_arm_eng = norm_anim(rise_chair_arm_eng_start,rise_chair_arm_eng)
    left_seat_move = smooth_anim(left_seat_move_start,left_seat_move)
    right_seat_move = smooth_anim(right_seat_move_start,right_seat_move)
end


function pedals_move()

    if simDR_36vl > 5 then
        if pedal_left_sw > 0 then
            if pedal_left_pos < 1 then
                pedal_left_pos = pedal_left_pos +0.05*SIM_PERIOD
            else
                pedal_left_pos = 1
            end
        elseif pedal_left_sw < 0 then
            if pedal_left_pos > 0 then
                pedal_left_pos = pedal_left_pos -0.05*SIM_PERIOD
            else
                pedal_left_pos = 0
            end
        end
    end
    if simDR_36vr > 5 then
        if pedal_right_sw > 0 then
            if pedal_right_pos < 1 then
                pedal_right_pos = pedal_right_pos +0.05*SIM_PERIOD
            else
                pedal_right_pos = 1
            end
        elseif pedal_right_sw < 0 then
            if pedal_right_pos > 0 then
                pedal_right_pos = pedal_right_pos -0.05*SIM_PERIOD
            else
                pedal_right_pos = 0
            end
        end
    end


end


-- function sard_dbl()
    -- if simDR_sard_dbl_sw  < 1 then
        -- if set_failures_sard < 1 then
            -- srd_dbl_loc_fail = simDR_fail_sard
        -- else
            -- simDR_fail_sard = srd_dbl_loc_fail
            -- set_failures_sard = 0
        -- end
        -- simDR_sard_cabin_press = sard_cabin_press_osn
        -- simDR_sard_spd_set = sard_spd_set_osn
        -- simDR_sard_diff_set = sard_diff_set_osn
    -- else
        -- simDR_sard_cabin_press = sard_cabin_press_dbl
        -- simDR_sard_spd_set = sard_spd_set_dbl
        -- simDR_sard_diff_set = sard_diff_set_dbl
        -- if simDR_fail_sard > 0 then
            -- simDR_fail_sard = 0
        -- end
        -- set_failures_sard = 1
    -- end
-- end




function uvo15()
    --vbe_press_l = uvo15_press_knob*1.33
        -- altitude on needle
        --if static_fail < 6 then
            -- if svs_test > 0 then
                -- left_MSL = svs_alt
            -- else
                --left_MSL = svs_alt
            --end
        --end
       -- if svs_pwr > 0 then
            --uvo15_alt_calc = left_MSL + (uvo15_press_knob-760) * 0.0393701  * 1000 * 0.3048
            uvo15_alt_act = simDR_svs_rel--uvo15_alt_act + (uvo15_alt_calc - uvo15_alt_act) * SIM_PERIOD * 6
       -- end

        uvo15_alt_dr_100 = math.floor((uvo15_alt_act % 1000) * 0.01) + math.max(math.max(((uvo15_alt_act % 100) - 50), 0) / 50, 0)

        uvo15_alt_dr_1000 = math.floor((uvo15_alt_act % 10000) * 0.001) + math.max(math.max((uvo15_alt_dr_100 - 9), 0), 0)
        
        uvo15_alt_dr_10000 = math.floor((uvo15_alt_act % 100000) * 0.0001) + math.max(math.max((uvo15_alt_dr_1000 - 9), 0), 0)

	-- pressure drumms

	uvo15_press_1 = uvo15_press_knob % 10
	
	-- tens
	uvo15_press_10 = math.floor((uvo15_press_knob % 100) * 0.1) + math.max(math.max((uvo15_press_1 - 9), 0), 0)
	
	-- hundreads
	uvo15_press_100 = math.floor((uvo15_press_knob % 1000) * 0.01) + math.max(math.max((uvo15_press_10 - 9), 0), 0)
end


function vem72()
    -- vbe_press_r = vem72_press_knob*1.33
    -- if static_fail2 < 6 then
        -- right_MSL = press_alt* 0.3048
    -- end
        -- -- altitude on needle
-- if vem72_on > 0 and (simDR_36vl+simDR_36vr) > 5 and (simDR_bus27left+simDR_bus27right) > 5 then
    -- vem72_alt_calc = right_MSL + (vem72_press_knob - 760) * 0.0393701 * 1000 * 0.3048+(vem72_btn*150)
    -- vem72_alt_act = vem72_alt_act + (vem72_alt_calc - vem72_alt_act) * SIM_PERIOD * 4
    -- vem72_lit = vem72_btn
-- else
    -- vem72_lit = 0
-- end

        vem72_alt_dr_100 = math.floor((vem72_alt_act % 1000) * 0.01) + math.max(math.max(((vem72_alt_act % 100) - 50), 0) / 50, 0)

        vem72_alt_dr_1000 = math.floor((vem72_alt_act % 10000) * 0.001) + math.max(math.max((vem72_alt_dr_100 - 9), 0), 0)
        
        vem72_alt_dr_10000 = math.floor((vem72_alt_act % 100000) * 0.0001) + math.max(math.max((vem72_alt_dr_1000 - 9), 0), 0)

        -- pressure drumms

        vem72_press_1 = vem72_press_knob % 10
        
        -- tens
        vem72_press_10 = math.floor((vem72_press_knob % 100) * 0.1) + math.max(math.max((vem72_press_1 - 9), 0), 0)
        
        -- hundreads
        vem72_press_100 = math.floor((vem72_press_knob % 1000) * 0.01) + math.max(math.max((vem72_press_10 - 9), 0), 0)

end



function co63_co70()

    if co63_co70_control_timeout > 0 then
        co63_co70_control_timeout = co63_co70_control_timeout - 1 *SIM_PERIOD
    end

    if co70_pwr < co63_pwr and simDR_bus27left > 5 then
        simDR_transponder_code = co63_sqwk_1*1000+co63_sqwk_2*100+co63_sqwk_3*10+co63_sqwk_4
		if  co63_mode==2 then
			if co63_mode2==0 then
				simDR_transponder_mode = 1
			elseif co63_mode2==1 then
				simDR_transponder_mode = 3
			elseif co63_mode2==3 then
				simDR_transponder_mode = 2
			end
		else
			simDR_transponder_mode = 1
		end
        if co63_sign > 0 then
            ident_cmd:once()
        end
        if co63_control > 0 and co63_co70_control_timeout < 1 then
            co63_co70_control_timeout  = 10
        end
        if co63_co70_control_timeout > 2 and co63_co70_control_timeout < 8.5 then
            co63_lit_test = 1
        elseif co63_mode>0 then
            co63_lit_test = simDR_transponder_light
        end
        co70_lit_test = 0
    elseif co70_pwr > 0 and simDR_bus27left > 5 then
		if co70_mode==0 then
			simDR_transponder_mode = 1
		elseif co70_mode==1 then
			simDR_transponder_mode = 2
		elseif co70_mode==3 then
			simDR_transponder_mode = 3
		end
        simDR_transponder_code = co70_sqwk_1*1000+co70_sqwk_2*100+co70_sqwk_3*10+co70_sqwk_4
        if co70_sign > 0 then
            ident_cmd:once()
        end
        if co70_control > 0 and co63_co70_control_timeout < 1 then
            co63_co70_control_timeout  = 10
        end
        if co63_co70_control_timeout > 2 and co63_co70_control_timeout < 8.5 then
            co70_lit_test = 1
        else
            co70_lit_test = simDR_transponder_light
        end
        co63_lit_test = 0
    else
        co63_lit_test = 0
        co70_lit_test = 0
        simDR_transponder_mode = 0
        co63_co70_control_timeout  = 0
    end
end

function misc()

-- oil_meters

if simDR_gs > 0.5 then
    oil_qty_cap = 0
end

if simDR_bus27left + simDR_bus27right > 5 then
    if apu_oil_test > 0 then
        if apu_oil_test_lamp < 1 then
            apu_oil_test_lamp = apu_oil_test_lamp+6*SIM_PERIOD
        end
    elseif simDR_apu_oil_qty < 0.8 then
        if apu_oil_test_lamp < 1 then
            apu_oil_test_lamp = apu_oil_test_lamp+6*SIM_PERIOD
        end
    else
        if apu_oil_test_lamp > 0 then
            apu_oil_test_lamp = apu_oil_test_lamp-6*SIM_PERIOD
        end
    end
else
    if apu_oil_test_lamp > 0 then
        apu_oil_test_lamp = apu_oil_test_lamp-6*SIM_PERIOD
    end
end

-- if simDR_36vr+simDR_36vl > 5 then
    -- if oil_qty1_p > 0 then
        -- if oil_qty1_new < 35 then
            -- oil_qty1_new = oil_qty1_new +3*SIM_PERIOD
        -- end
    -- elseif oil_qty1_h > 0 then
        -- if oil_qty1_new > 5 then
            -- oil_qty1_new = oil_qty1_new -3*SIM_PERIOD
        -- end
    -- else
        -- oil_qty1_new = oil_qty1_new+(simDR_oil_qty1-oil_qty1_new)*SIM_PERIOD *5
    -- end
    -- if oil_qty2_p > 0 then
        -- if oil_qty2_new < 35 then
            -- oil_qty2_new = oil_qty2_new +3*SIM_PERIOD
        -- end
    -- elseif oil_qty2_h > 0 then
        -- if oil_qty2_new > 5 then
            -- oil_qty2_new = oil_qty2_new -3*SIM_PERIOD
        -- end
    -- else
        -- oil_qty2_new = oil_qty2_new+(simDR_oil_qty2-oil_qty2_new)*SIM_PERIOD *5
    -- end
    -- if oil_qty3_p > 0 then
        -- if oil_qty3_new < 35 then
            -- oil_qty3_new = oil_qty3_new +3*SIM_PERIOD
        -- end
    -- elseif oil_qty3_h > 0 then
        -- if oil_qty3_new > 5 then
            -- oil_qty3_new = oil_qty3_new -3*SIM_PERIOD
        -- end
    -- else
        -- oil_qty3_new = oil_qty3_new+(simDR_oil_qty3-oil_qty3_new)*SIM_PERIOD *5
    -- end
-- else
    -- oil_qty1_new = oil_qty1_new+(simDR_oil_qty1-oil_qty1_new)*SIM_PERIOD *5
    -- oil_qty2_new = oil_qty2_new+(simDR_oil_qty2-oil_qty2_new)*SIM_PERIOD *5
    -- oil_qty3_new = oil_qty3_new+(simDR_oil_qty3-oil_qty3_new)*SIM_PERIOD *5
-- end

-- lavatory_smoke

if simDR_36vl+simDR_36vr > 5 then
    if lav_test > 0 then
        lav_test_count = lav_test_count +2*SIM_PERIOD
    end
    if lav_test_count > 1 then
        lav_lamps = 1
        lav_horn = 1
        lav_test_count = 0
    end
    if lav_horn_off > 0 and lav_horn > 0 then
        lav_horn = 0
    end
    if lav_reset > 0 then
        lav_horn = 0
        lav_lamps = 0
    end
else
    lav_horn = 0
    lav_lamps = 0
end

--- ahz corr

    if simDR_36vl > 5 and simDR_pkp_L_on > 0 then
        pitch_L_new = pitch_L_new+(simDR_pitch_L-pitch_L_new)*SIM_PERIOD *5
        roll_L_new = roll_L_new+(simDR_roll_L-roll_L_new)*SIM_PERIOD *5
    elseif simDR_gs > 0.8 then
        pitch_L_new = pitch_L_new+(simDR_pitch_L-pitch_L_new)*SIM_PERIOD *2
        roll_L_new = roll_L_new+(simDR_roll_L-roll_L_new)*SIM_PERIOD *2
    end
    
    
    if simDR_36vr > 5 and simDR_pkp_R_on > 0 then
        pitch_R_new = pitch_R_new+(simDR_pitch_R-pitch_R_new)*SIM_PERIOD *5
        roll_R_new = roll_R_new+(simDR_roll_R-roll_R_new)*SIM_PERIOD *5
    elseif simDR_gs > 0.8 then
        pitch_R_new = pitch_R_new+(simDR_pitch_R-pitch_R_new)*SIM_PERIOD *2
        roll_R_new = roll_R_new+(simDR_roll_R-roll_R_new)*SIM_PERIOD *2
    end


    ---cabin lamps
    

if cabin_sw20 > 0 and (simDR_36vl+simDR_36vr) > 5 then
    cabin_cent_light1 = 1
else
    cabin_cent_light1 = 0
end

if cabin_sw21 > 0 and (simDR_36vl+simDR_36vr) > 5 then
    cabin_cent_light2 = 1
else
    cabin_cent_light2 = 0
end

if cabin_sw22 > 0 and (simDR_36vl+simDR_36vr) > 5 then
    cabin_side_light1 = 1
else
    cabin_side_light1 = 0
end

if cabin_sw23 > 0 and (simDR_36vl+simDR_36vr) > 5 then
    cabin_side_light2 = 1
else
    cabin_side_light2 = 0
end

if cabin_sw24 > 0 and (simDR_36vl+simDR_36vr) > 5 and cargo1_light_cockpit_set > 0 then
    cabin_cargo_light1 = 1
else
    cabin_cargo_light1 = 0
end

if (simDR_36vl+simDR_36vr) > 5 and cargo2_light_cockpit_set > 0 then
    cabin_cargo_light2 = 1
else
    cabin_cargo_light2 = 0
end

if (simDR_36vl+simDR_36vr) > 5 and gear_nacells > 0 then
    cabin_gears_light = 1
else
    cabin_gears_light = 0
end


if pax_door_1 < 0.05 then
    dezhur_vest_light1 = 0
    dezhur_vest_light2 = 0
    dezhur_vest_light3 = 0
else
    if cabin_sw30 > 0 and (simDR_36vl+simDR_36vr) > 5 then
        dezhur_vest_light1 = 1
        dezhur_vest_light2 = 1
        dezhur_vest_light3 = 1
    elseif cabin_sw25 > 0 and (simDR_bus27left+simDR_bus27right) > 5 then
        dezhur_vest_light1 = 0.5
        dezhur_vest_light2 = 0.5
        dezhur_vest_light3 = 0.5
    else
        dezhur_vest_light1 = 0
        dezhur_vest_light2 = 0
        dezhur_vest_light3 = 0
    end
end

if cabin_sw27 < 1 then
    toilet_busy = 0
end

if cabin_sw26 > 0 and (simDR_36vl+simDR_36vr) > 5 and cabin_sw43 > 0 then
    kitchen_light1 = 1
else
    kitchen_light1 = 0
end

if cabin_sw42 > 0 and (simDR_36vl+simDR_36vr) > 5 and simDR_galley_block==0 then

    if cabin_sw36 > 0 then
        if cabin_lamp8 < 1 then
            cabin_lamp8 = cabin_lamp8 +6*SIM_PERIOD
        end
    else
        if cabin_lamp8 > 0 then
            cabin_lamp8 = cabin_lamp8 -6*SIM_PERIOD
        end
    end
    
    if cabin_sw37 > 0 then
        if cabin_lamp9 < 1 then
            cabin_lamp9 = cabin_lamp9 +6*SIM_PERIOD
        end
    else
        if cabin_lamp9 > 0 then
            cabin_lamp9 = cabin_lamp9 -6*SIM_PERIOD
        end
    end
    if cabin_sw38 > 0 then
        if cabin_lamp10 < 1 then
            cabin_lamp10 = cabin_lamp10 +6*SIM_PERIOD
        end
    else
        if cabin_lamp10 > 0 then
            cabin_lamp10 = cabin_lamp10 -6*SIM_PERIOD
        end
    end
    if cabin_sw39 > 0 then
        if cabin_lamp11 < 1 then
            cabin_lamp11 = cabin_lamp11 +6*SIM_PERIOD
        end
    else
        if cabin_lamp11 > 0 then
            cabin_lamp11 = cabin_lamp11 -6*SIM_PERIOD
        end
    end
    if cabin_sw40 > 0 then
        if cabin_lamp12 < 1 then
            cabin_lamp12 = cabin_lamp12 +6*SIM_PERIOD
        end
    else
        if cabin_lamp12 > 0 then
            cabin_lamp12 = cabin_lamp12 -6*SIM_PERIOD
        end
    end
    if cabin_sw41 > 0 then
        if cabin_lamp13 < 1 then
            cabin_lamp13 = cabin_lamp13 +6*SIM_PERIOD
        end
    else
        if cabin_lamp13 > 0 then
            cabin_lamp13 = cabin_lamp13 -6*SIM_PERIOD
        end
    end
else
    if cabin_lamp8 > 0 then
        cabin_lamp8 = cabin_lamp8 -6*SIM_PERIOD
    end
    if cabin_lamp9 > 0 then
        cabin_lamp9 = cabin_lamp9 -6*SIM_PERIOD
    end
    if cabin_lamp10 > 0 then
        cabin_lamp10 = cabin_lamp10 -6*SIM_PERIOD
    end
    if cabin_lamp11 > 0 then
        cabin_lamp11 = cabin_lamp11 -6*SIM_PERIOD
    end
    if cabin_lamp12 > 0 then
        cabin_lamp12 = cabin_lamp12 -6*SIM_PERIOD
    end
    if cabin_lamp13 > 0 then
        cabin_lamp13 = cabin_lamp13 -6*SIM_PERIOD
    end
end

if cabin_sw33 < 1 then
    dezhur_cabin_light1 = 0
else
    if cabin_sw20 > 0 and (simDR_36vl+simDR_36vr) > 5 then
        dezhur_cabin_light1 = 1
    elseif (simDR_bus27left+simDR_bus27right) > 5 then
        dezhur_cabin_light1 = 0.5
    else
        dezhur_cabin_light1 = 0
    end
end

if cabin_sw32 < 1 then
    dezhur_cabin_light2 = 0
else
    if cabin_sw21 > 0 and (simDR_36vl+simDR_36vr) > 5 then
        dezhur_cabin_light2 = 1
    elseif (simDR_bus27left+simDR_bus27right) > 5 then
        dezhur_cabin_light2 = 0.5
    else
        dezhur_cabin_light2 = 0
    end
end

if cabin_sw30 > 0 and (simDR_36vl+simDR_36vr) > 5 then
    vest_light1 = 1
    vest_light2 = 1
    vest_light3 = 1
else
    vest_light1 = 0
    vest_light2 = 0
    vest_light3 = 0
end

if cabin_sw26 > 0 and (simDR_36vl+simDR_36vr) > 5 then
    vest_light2 = 1
else
    vest_light2 = 0
end

if cabin_sw12 > 0 and (simDR_bus27left +simDR_bus27right) > 5 then
    if cabin_lamp5 < 1 then
        cabin_lamp5 = cabin_lamp5 +6*SIM_PERIOD
    end
    if cabin_lamp6 < 1 then
        cabin_lamp6 = cabin_lamp6 +6*SIM_PERIOD
    end
else
    if cabin_lamp5 > 0 then
        cabin_lamp5 = cabin_lamp5 -6*SIM_PERIOD
    end
    if cabin_lamp6 > 0 and cabin_call_stuardlamp < 0.5 then
        cabin_lamp6 = cabin_lamp6 -6*SIM_PERIOD
    end
end


if cabin_sw3 > 0 and (simDR_36vl+simDR_36vr) > 5 and simDR_galley_block==0 then
    if lamp7_counter < 21 then
        lamp7_counter = lamp7_counter +0.5*SIM_PERIOD
    end
    if lamp7_counter < 20 then
        if cabin_lamp7 < 1 then
            cabin_lamp7 = cabin_lamp7+6*SIM_PERIOD
        end
    else
        if cabin_lamp7 > 0 then
            cabin_lamp7 = cabin_lamp7-6*SIM_PERIOD
        end
    end
else
    lamp7_counter = 0
    if cabin_lamp7 > 0 then
        cabin_lamp7 = cabin_lamp7-6*SIM_PERIOD
    end
end


if cabin_call_stuardlamp > 0 then
    if cabin_lamp6 < 1 then
        cabin_lamp6 = cabin_lamp6 +6*SIM_PERIOD
    end
end

if (simDR_36vl+simDR_36vr) > 10 then
    if cabin_push2 > 0 and cabin_sw11 > 0  then
        if cabin_lamp1 < 1 then
            cabin_lamp1 = cabin_lamp1+6*SIM_PERIOD
        end
    else
        if cabin_lamp1 > 0 then
            cabin_lamp1 = cabin_lamp1-6*SIM_PERIOD
        end
    end
    if cabin_push3 > 0 and cabin_sw10 > 0  then
        if cabin_lamp2 < 1 then
            cabin_lamp2 = cabin_lamp2+6*SIM_PERIOD
        end
    else
        if cabin_lamp2 > 0 then
            cabin_lamp2 = cabin_lamp2-6*SIM_PERIOD
        end
    end
    if cabin_push4 > 0 and cabin_sw9 > 0  then
        if cabin_lamp3 < 1 then
            cabin_lamp3 = cabin_lamp3+6*SIM_PERIOD
        end
    else
        if cabin_lamp3 > 0 then
            cabin_lamp3 = cabin_lamp3-6*SIM_PERIOD
        end
    end
    if cabin_push5 > 0 and cabin_sw8 > 0 then
        if cabin_lamp4 < 1 then
            cabin_lamp4 = cabin_lamp4+6*SIM_PERIOD
        end
    else
        if cabin_lamp4 > 0 then
            cabin_lamp4 = cabin_lamp4-6*SIM_PERIOD
        end
    end
else
    cabin_lamp1 = 0
    cabin_lamp2 = 0
    cabin_lamp3 = 0
    cabin_lamp4 = 0
end

    if simDR_absu_smooth_cap < 1 then
        simDR_absu_smooth = 0
    end

    if eng_light_angle ~= eng_light_angle_result and change_eng_light_angle == 0 then
        change_eng_light_angle = 1
    end
    if change_eng_light_angle > 0 then
        eng_light_angle_btn = 1
        change_eng_light_angle = change_eng_light_angle - 1.7*SIM_PERIOD
    elseif eng_light_angle_btn == 1 then
        eng_light_angle_result = eng_light_angle
        eng_light_angle_btn = 0
        change_eng_light_angle = 0
    end
    if T154_sync_baro == 1 then
        vem72_press_knob = uvo15_press_knob
      elseif T154_sync_baro == 2 then
        uvo15_press_knob =  vem72_press_knob
      end

end

function ssos()
    if simDR_rv5_1_on > 0 and simDR_rv5_cc > 0 then
        if ssos_timeout > 0 then
            ssos_timeout = ssos_timeout - 1*SIM_PERIOD
        end
    else
        ssos_timeout = math.random(70,140)
    end

    if ssos_timeout < 5 and T154_kontur_90th < 1 then
        test_ssos_lit = 1
        if (test_btn1+test_btn2+test_btn3) > 0 then
            if ssos_test_alarm < 1.1 then
                ssos_test_alarm = ssos_test_alarm+math.random(0.7,1)*SIM_PERIOD
            end
        else
            ssos_test_alarm = 0
        end

        if simDR_gear_deploy < 0.1 and simDR_rv5_height < 250 and simDR_vario_l < 0 then
            ssos_loc_alarm = 1
        elseif simDR_rv5_height < 600 and simDR_rv5_height > 60 and ((simDR_rv5_height-60)/72+7.5) < simDR_vario_l/-196.85 then
            ssos_loc_alarm = 1
        else
            ssos_loc_alarm = 0
        end
    else
        ssos_test_alarm = 0
        ssos_loc_alarm = 0
        test_ssos_lit = 0
    end
    ssos_alarm = ssos_test_alarm+ssos_loc_alarm
end

function run_10sec()
    if cabin_sw20+cabin_sw21 > 0 then
        cabin_cent_light_efb = 1
    end
    if cabin_sw22+cabin_sw23 > 0 then
        cabin_side_light_efb = 1
    end
    if cabin_sw25+cabin_sw31+cabin_sw32+cabin_sw33 > 1 then
        cabin_stby_light_efb = 1
    end
end

function after_physics()
    --ppn13()
    pedals_move()
    seats_move()
    --sard_dbl()
    misc()
    ssos()
    rain_snow_frtchk()
    if T154_kontur_90th < 1 then
        uvo15()
        vem72()
        co63_co70()
    end
    run_after_time(run_10sec,10)
end

