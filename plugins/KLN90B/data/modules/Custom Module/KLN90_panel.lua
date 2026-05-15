size = {210, 110}

local currentPosition = get(position)
------------------- Aircraft power bus
--defineProperty("avionics_power", globalPropertyi("sim/cockpit/electrical/battery_on"));
--replace with dataref fitting your aircraft electrical systems to simulate electrical system connection. example "sim/cockpit/electrical/battery_on" or "sim/cockpit2/switches/avionics_power_on". "sim/cockpit2/electrical/cross_tie" - for default cessna172
defineProperty("kln_power", createGlobalPropertyi("custom/KLN90/kln_power"))
external_view = globalPropertyf("sim/graphics/view/view_is_external")
-------------------------------------------------------------------------------------

-------------------------------NAV SYSTEMS DO NOT MODIFY-------------------------------------------

defineProperty("HSIOBS", globalPropertyf("sim/cockpit2/radios/actuators/hsi_obs_deg_mag_pilot"))
defineProperty("NAVOBS", globalPropertyf("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot"))

defineProperty("NAVfromtoout", globalPropertyi("sim/cockpit/radios/nav1_fromto"))
defineProperty("NAVhdefout", globalPropertyf("sim/cockpit/radios/nav1_hdef_dot"))
defineProperty("NAVvdefout", globalPropertyf("sim/cockpit/radios/nav1_vdef_dot"))
defineProperty("GPSvdefout", globalPropertyf("sim/cockpit/radios/gps_vdef_dot"))

defineProperty("GPS2vdefout", globalPropertyf("sim/cockpit/radios/gps2_vdef_dot"))


defineProperty("GPSCourse", globalPropertyf("sim/cockpit/radios/gps_course_degtm"))
defineProperty("GPSRelBear", globalPropertyf("sim/cockpit/radios/gps_dir_degt"))
defineProperty("GPSnmPdot", globalPropertyf("sim/cockpit/radios/gps_hdef_nm_per_dot"))
defineProperty("GPShdefout", globalPropertyf("sim/cockpit/radios/gps_hdef_dot"))
defineProperty("GPSfromtoout", globalPropertyi("sim/cockpit/radios/gps_fromto"))
defineProperty("GPSDMEout", globalPropertyf("sim/cockpit/radios/gps_dme_dist_m"))
defineProperty("GPSDMESPDout", globalPropertyf("sim/cockpit/radios/gps_dme_speed_kts"))
defineProperty("GPSDMETIMEout", globalPropertyf("sim/cockpit/radios/gps_dme_time_secs"))

--defineProperty("GPS2Course", globalPropertyf("sim/cockpit/radios/gps2_course_degtm"))
--defineProperty("GPS2RelBear", globalPropertyf("sim/cockpit/radios/gps2_dir_degt"))
--defineProperty("GPS2nmPdot", globalPropertyf("sim/cockpit/radios/gps2_hdef_nm_per_dot"))
--defineProperty("GPS2hdefout", globalPropertyf("sim/cockpit/radios/gps2_hdef_dot"))
--defineProperty("GPS2fromtoout", globalPropertyi("sim/cockpit/radios/gps2_fromto"))
--defineProperty("GPS2DMEout", globalPropertyf("sim/cockpit/radios/gps2_dme_dist_m"))
--defineProperty("GPS2DMESPDout", globalPropertyf("sim/cockpit/radios/gps2_dme_speed_kts"))
--defineProperty("GPS2DMETIMEout", globalPropertyf("sim/cockpit/radios/gps2_dme_time_secs"))

defineProperty("NAVDMEout", globalPropertyf("sim/cockpit/radios/nav1_dme_dist_m"))

--sim/cockpit2/autopilot/bank_angle_mode	int	y	enum	Maximum bank angle mode, 0->6. Higher number is steeper allowable bank.
--sim/cockpit/autopilot/heading_roll_mode	int	y	enum	Bank limit - 0 = auto, 1-6 = 5-30 degrees of bank
defineProperty("APBankLim", globalPropertyi("sim/cockpit2/autopilot/bank_angle_mode"))
-----------------------------------------------------------------------------------------

--------------------------imports from kln90.lua and md41_panel.lua----------------
defineProperty("MD41test", createGlobalPropertyi("custom/MD41/test", 0))
defineProperty("OBS", createGlobalPropertyi("custom/KLN90/OBS", 1))
defineProperty("OBSreq", createGlobalPropertyi("custom/MD41/OBSreq", 0))
defineProperty("APR", createGlobalPropertyi("custom/KLN90/APR", 0))
defineProperty("MSG", globalPropertyi("custom/KLN90/MSG"))
defineProperty("WPT", globalPropertyi("custom/KLN90/WPT"))
defineProperty("Flash", createGlobalPropertyi("custom/KLN90/Flash", 0))
-----------------------------------------------------------------------------------

-- Animation datarefs for 3D model --

defineProperty("L_Angle_3D", createGlobalPropertyi("custom/KLN90/3D_L_Angle", 1))
defineProperty("R_Angle_3D", createGlobalPropertyi("custom/KLN90/3D_R_Angle", 1))
defineProperty("B_L_Angle_3D", createGlobalPropertyi("custom/KLN90/3D_B_L_Angle", 1))
defineProperty("B_R_Angle_3D", createGlobalPropertyi("custom/KLN90/3D_B_R_Angle", 1))
defineProperty("scan_mode", createGlobalPropertyi("custom/KLN90/scan_mode", 0));
defineProperty("power_but", createGlobalPropertyi("custom/KLN90/power_but", 0));
defineProperty("display_brughtness", createGlobalPropertyf("custom/KLN90/display_brughtness", 0.8));
defineProperty("cage", loadImage("KLN90.png", 9, 9, 415, 2))
defineProperty("power",createGlobalPropertyi("custom/KLN90/kln_state" , 0))
------------------------------------------------------------------------------------
-- Tu154 stuff
defineProperty("kln_course", globalPropertyf("tu154b2/custom/kln90/kln_course")) -- курс ЛЗП от КЛН
defineProperty("kln_dev", globalPropertyf("tu154b2/custom/kln90/kln_dev")) -- отклонение от ЛЗП, мили
defineProperty("kln_flag", globalPropertyi("tu154b2/custom/kln90/kln_flag")) -- флаг курса КЛН. 0 = флаг
defineProperty("kln_fail", globalPropertyi("tu154b2/custom/kln90/kln_fail_flag"))
--defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("kln_pow", globalPropertyi("tu154b2/custom/KLN_power"))
defineProperty("gps_time", globalPropertyf("tu154b2/custom/kln90/kln_time"))
defineProperty("frame_time", globalPropertyf("sim/operation/misc/frame_rate_period")) -- time of frame
-- Text strings for SmartCopilot sync
defineProperty("sc_gline_1", globalPropertys("tu154b2/custom/KLN90/gline_1"))
defineProperty("sc_gline_2", globalPropertys("tu154b2/custom/KLN90/gline_2"))
defineProperty("sc_gline_3", globalPropertys("tu154b2/custom/KLN90/gline_3"))
defineProperty("sc_gline_4", globalPropertys("tu154b2/custom/KLN90/gline_4"))
defineProperty("sc_gline_5", globalPropertys("tu154b2/custom/KLN90/gline_5"))
defineProperty("sc_gline_6", globalPropertys("tu154b2/custom/KLN90/gline_6"))
defineProperty("sc_gline_7", globalPropertys("tu154b2/custom/KLN90/gline_7"))
defineProperty("sc_gline_8", globalPropertys("tu154b2/custom/KLN90/gline_8"))
defineProperty("sc_bline_1", globalPropertys("tu154b2/custom/KLN90/bline_1"))
defineProperty("sc_bline_2", globalPropertys("tu154b2/custom/KLN90/bline_2"))
defineProperty("sc_bline_3", globalPropertys("tu154b2/custom/KLN90/bline_3"))
defineProperty("sc_bline_4", globalPropertys("tu154b2/custom/KLN90/bline_4"))
defineProperty("sc_bline_5", globalPropertys("tu154b2/custom/KLN90/bline_5"))
defineProperty("sc_bline_6", globalPropertys("tu154b2/custom/KLN90/bline_6"))
defineProperty("sc_bline_7", globalPropertys("tu154b2/custom/KLN90/bline_7"))
defineProperty("sc_bline_8", globalPropertys("tu154b2/custom/KLN90/bline_8"))
defineProperty("sc_cage", globalPropertyi("tu154b2/custom/KLN90/cage"))
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

local KLN90_SC = dofile(sasl.getAircraftPath() .. "/plugins/KLN90B/data/modules/Custom Module/KLN90_sc.lua")
local KLN90_RENDER = dofile(sasl.getAircraftPath() .. "/plugins/KLN90B/data/modules/Custom Module/KLN90_render.lua")


local button_click_L = sasl.al.loadSample('sounds/button_click_L.wav')
local rotary_click_L = sasl.al.loadSample('sounds/click_L.wav')
local rotary_click_s_L = sasl.al.loadSample('sounds/click2_L.wav')
local power_click_L = sasl.al.loadSample('sounds/knob_L.wav')
local pull_click_L = sasl.al.loadSample('sounds/pull_L.wav')
local md41_click_L = sasl.al.loadSample('sounds/button_click2_L.wav')

local button_click_R = sasl.al.loadSample('sounds/button_click_R.wav')
local rotary_click_R = sasl.al.loadSample('sounds/click_R.wav')
local rotary_click_s_R = sasl.al.loadSample('sounds/click2_R.wav')
local power_click_R = sasl.al.loadSample('sounds/knob_R.wav')
local pull_click_R = sasl.al.loadSample('sounds/pull_R.wav')
local md41_click_R = sasl.al.loadSample('sounds/button_click2_R.wav')


local panel_x=0.25563276
local panel_z=-23.013779
local dist_gain=5


local function inn_balance (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))

	if dist < 1 then dist = 1 end

	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) )
	local ch_R = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end


	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)

	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)

	return ch_L, ch_R
end

--------------------------------------
--------------------------------------

local glass = sasl.gl.loadImage("KLN90.dds", 10, 17, 426, 199)
local mapplane = sasl.gl.loadImage("KLNmap.dds", 15, 47, 8, 7)
local mapstar = sasl.gl.loadImage("KLNmap.dds", 16, 57, 5, 5)
local mapdiamond = sasl.gl.loadImage("KLNmap.dds", 9, 57, 5, 5)
local mappixel = sasl.gl.loadImage("KLNmap.dds", 4, 52, 1, 1)
local mapplus = sasl.gl.loadImage("KLNmap.dds", 43, 58, 3, 3)
local mapquad = sasl.gl.loadImage("KLNmap.dds", 9, 52, 3, 3)
local mapAPT = sasl.gl.loadImage("KLNmap.dds", 23, 57, 5, 5)
local mapNDB = sasl.gl.loadImage("KLNmap.dds", 30, 57, 4, 4)
local mapVOR = sasl.gl.loadImage("KLNmap.dds", 36, 57, 5, 5)

local Atex = sasl.gl.loadImage("KLNmap.dds", 1, 21, 5, 7)
local Btex = sasl.gl.loadImage("KLNmap.dds", 7, 21, 5, 7)
local Ctex = sasl.gl.loadImage("KLNmap.dds", 13, 21, 5, 7)
local Dtex = sasl.gl.loadImage("KLNmap.dds", 19, 21, 5, 7)
local Etex = sasl.gl.loadImage("KLNmap.dds", 25, 21, 5, 7)
local Ftex = sasl.gl.loadImage("KLNmap.dds", 31, 21, 5, 7)
local Gtex = sasl.gl.loadImage("KLNmap.dds", 37, 21, 5, 7)
local Htex = sasl.gl.loadImage("KLNmap.dds", 43, 21, 5, 7)
local Itex = sasl.gl.loadImage("KLNmap.dds", 49, 21, 5, 7)
local Jtex = sasl.gl.loadImage("KLNmap.dds", 55, 21, 5, 7)
local Ktex = sasl.gl.loadImage("KLNmap.dds", 61, 21, 5, 7)
local Ltex = sasl.gl.loadImage("KLNmap.dds", 67, 21, 5, 7)
local Mtex = sasl.gl.loadImage("KLNmap.dds", 73, 21, 5, 7)
local Ntex = sasl.gl.loadImage("KLNmap.dds", 79, 21, 5, 7)
local Otex = sasl.gl.loadImage("KLNmap.dds", 85, 21, 5, 7)
local Ptex = sasl.gl.loadImage("KLNmap.dds", 91, 21, 5, 7)
local Qtex = sasl.gl.loadImage("KLNmap.dds", 97, 21, 5, 7)
local Rtex = sasl.gl.loadImage("KLNmap.dds", 103, 21, 5, 7)
local Stex = sasl.gl.loadImage("KLNmap.dds", 109, 21, 5, 7)
local Ttex = sasl.gl.loadImage("KLNmap.dds", 115, 21, 5, 7)
local Utex = sasl.gl.loadImage("KLNmap.dds", 121, 21, 5, 7)
local Vtex = sasl.gl.loadImage("KLNmap.dds", 127, 21, 5, 7)
local Wtex = sasl.gl.loadImage("KLNmap.dds", 133, 21, 5, 7)
local Xtex = sasl.gl.loadImage("KLNmap.dds", 139, 21, 5, 7)
local Ytex = sasl.gl.loadImage("KLNmap.dds", 145, 21, 5, 7)
local Ztex = sasl.gl.loadImage("KLNmap.dds", 151, 21, 5, 7)
local ötex = sasl.gl.loadImage("KLNmap.dds", 157, 21, 5, 7)
local ö0tex = sasl.gl.loadImage("KLNmap.dds", 1, 13, 5, 7)
local ö1tex = sasl.gl.loadImage("KLNmap.dds", 7, 13, 5, 7)
local ö2tex = sasl.gl.loadImage("KLNmap.dds", 13, 13, 5, 7)
local ö3tex = sasl.gl.loadImage("KLNmap.dds", 19, 13, 5, 7)
local ö4tex = sasl.gl.loadImage("KLNmap.dds", 25, 13, 5, 7)
local ö5tex = sasl.gl.loadImage("KLNmap.dds", 31, 13, 5, 7)
local ö6tex = sasl.gl.loadImage("KLNmap.dds", 37, 13, 5, 7)
local ö7tex = sasl.gl.loadImage("KLNmap.dds", 43, 13, 5, 7)
local ö8tex = sasl.gl.loadImage("KLNmap.dds", 49, 13, 5, 7)
local ö9tex = sasl.gl.loadImage("KLNmap.dds", 55, 13, 5, 7)
local mapGlyphTex = {
["A"] = Atex, ["B"] = Btex, ["C"] = Ctex, ["D"] = Dtex, ["E"] = Etex, ["F"] = Ftex, ["G"] = Gtex,
["H"] = Htex, ["I"] = Itex, ["J"] = Jtex, ["K"] = Ktex, ["L"] = Ltex, ["M"] = Mtex, ["N"] = Ntex,
["O"] = Otex, ["P"] = Ptex, ["Q"] = Qtex, ["R"] = Rtex, ["S"] = Stex, ["T"] = Ttex, ["U"] = Utex,
["V"] = Vtex, ["W"] = Wtex, ["X"] = Xtex, ["Y"] = Ytex, ["Z"] = Ztex,
["0"] = ö0tex, ["1"] = ö1tex, ["2"] = ö2tex, ["3"] = ö3tex, ["4"] = ö4tex,
["5"] = ö5tex, ["6"] = ö6tex, ["7"] = ö7tex, ["8"] = ö8tex, ["9"] = ö9tex,
}
local power_timer=0
local cagevisible = 0
local sved=0
--most of these should be local but hitting 60 upval limit for function update()
defineProperty("scale_line", createGlobalPropertys("custom/KLN90/scale_line"," "));

defineProperty("sim_run_time", globalPropertyf("sim/time/total_running_time_sec")) -- sim time

defineProperty("HSIsource", globalPropertyi("sim/cockpit2/radios/actuators/HSI_source_select_pilot"))

defineProperty("overrideGPS", globalPropertyi("sim/operation/override/override_gps"))
--defineProperty("GPSglideslope", globalPropertyi("sim/cockpit/radios/gps_has_glideslope"))
--defineProperty("overrideNAV", globalPropertyi("sim/operation/override/override_nav_heading"))
defineProperty("overrideNAV1", globalPropertyi("sim/operation/override/override_nav1_needles"))
--defineProperty("overrideNAV2", globalPropertyi("sim/operation/override/override_nav2_needles"))

--defineProperty("VNAVslope", globalPropertyf("sim/cockpit/radios/gps_slope_degt"))

defineProperty("hourin", globalPropertyi("sim/cockpit2/clock_timer/zulu_time_hours"))
defineProperty("minutein", globalPropertyi("sim/cockpit2/clock_timer/zulu_time_minutes"))
defineProperty("secondin", globalPropertyi("sim/cockpit2/clock_timer/zulu_time_seconds"))
defineProperty("dayin", globalPropertyi("sim/cockpit2/clock_timer/current_day"))
defineProperty("monthin", globalPropertyi("sim/cockpit2/clock_timer/current_month"))

defineProperty("ALTin", globalPropertyf("sim/flightmodel/position/elevation"))

defineProperty("BAROin", globalPropertyf("sim/weather/barometer_sealevel_inhg"))
defineProperty("MACHin", globalPropertyf("sim/flightmodel/misc/machno"))
defineProperty("TASin", globalPropertyf("sim/flightmodel/position/true_airspeed"))

defineProperty("WINDHEADin", globalPropertyf("sim/cockpit2/gauges/indicators/wind_heading_deg_mag"))
defineProperty("WINDSPEEDin", globalPropertyf("sim/cockpit2/gauges/indicators/wind_speed_kts"))

defineProperty("SATin", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc"))
defineProperty("TATin", globalPropertyf("sim/cockpit2/temperature/outside_air_LE_temp_degc"))

defineProperty("EnginesNum", globalPropertyi("sim/aircraft/overflow/acf_num_thrustpoints"))
defineProperty("Enginestype", globalPropertyiae("sim/aircraft/prop/acf_en_type", 1))

FuelFlow1 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",1)
FuelFlow2 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",2)
FuelFlow3 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",3)
FuelFlow4 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",4)
FuelFlow5 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",5)
FuelFlow6 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",6)
FuelFlow7 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",7)
FuelFlow8 = globalPropertyfae("sim/flightmodel/engine/ENGN_FF_",8)
FuelTOT = globalPropertyf("sim/flightmodel/weight/m_fuel_total")

--defineProperty("APState", globalPropertyf("sim/cockpit/autopilot/autopilot_state"))
--defineProperty("NavState", globalPropertyf("sim/cockpit2/autopilot/nav_status"))

defineProperty("GPSmode", globalPropertyi("custom/KLN90/OBS"))
defineProperty("OBSreq", globalPropertyi("custom/MD41/OBSreq"))
defineProperty("APR", globalPropertyi("custom/KLN90/APR"))

defineProperty("WPTalert", globalPropertyi("custom/KLN90/WPT"))
defineProperty("MSGalert", globalPropertyi("custom/KLN90/MSG"))
defineProperty("Flash", globalPropertyi("custom/KLN90/Flash"))


defineProperty("LATin", globalPropertyf("sim/flightmodel/position/latitude"))
defineProperty("LONin", globalPropertyf("sim/flightmodel/position/longitude"))
defineProperty("SPEEDin", globalPropertyf("sim/flightmodel/position/groundspeed"))
--defineProperty("COURSEin", globalPropertyf("sim/flightmodel/position/true_psi"))
--defineProperty("BETAin", globalPropertyf("sim/flightmodel/position/beta"))
PSIin = globalPropertyf("tu154b2/custom/tks/kln_psi")
HPATHin = globalProperty("sim/flightmodel2/position/hpath")

defineProperty("MAGVARin", globalPropertyf("sim/flightmodel/position/magnetic_variation"))
defineProperty("paused", globalPropertyf("sim/time/paused"))
defineProperty("simspeed", globalPropertyf("sim/time/sim_speed"))

local alert = sasl.al.loadSample('sounds/altitude_alerts.wav')
local alertl = sasl.al.loadSample('sounds/altitude_alert.wav')
-- local button_click = sasl.al.loadSample('sounds/button_click.wav')
-- local rotary_click = sasl.al.loadSample('sounds/click.wav')
-- local rotary_click_s = sasl.al.loadSample('sounds/click2.wav')
-- local power_click = sasl.al.loadSample('sounds/knob.wav')
-- local pull_click = sasl.al.loadSample('sounds/pull.wav')
local md41_click = sasl.al.loadSample('sounds/button_click2.wav')
--sasl.al.setSampleGain(button_click, 100)
sasl.al.setSampleGain(md41_click, 150)
-- sasl.al.setSampleGain(rotary_click, 80)
-- sasl.al.setSampleGain(rotary_click_s, 60)
-- sasl.al.setSampleGain(power_click, 300)
-- sasl.al.setSampleGain(pull_click, 500)

local font = sasl.gl.loadBitmapFont('KLN90.fnt')
local fontb = sasl.gl.loadBitmapFont('KLN90_2.fnt')
local fontl = sasl.gl.loadBitmapFont('KLN90_3.fnt')

local power_knob = 0
local fail=1
local brt = get(display_brughtness);

local nav_cycle
local cifp_path = "Resources/default data/CIFP/"
if isFileExists("Custom Data/CIFP/KLAX.dat") then
cifp_path = "Custom Data/CIFP/"
end

local lpage = -5
local rpage = -5
local lsubpage = {0, 10, 0, 20, 10, 10, 10, 10}
local rsubpage = {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}
lsubpage[100] = 0
rsubpage[100] = 0

local FPlan = {}
local values = {}

--local APT3_Serializer = { }
--local Nav5Comp_Serializer = { }

--0 nothing, 1 controls["MSG"], 2 controls["ENT"]
values["MSGENT"] = 0

values["initwpt"] = "    "
values["barounit"] = 0

values["timerstart"] = 0
values["flightimer"] = 0

values["GPStime"] = 0
values["flash"] = 0
values["flashtimer"] = 0
values["timer"] = 3

values["sort"] = 1
values["soundtest"] = 0

values["wptsubpage"] = 10

values["VNVSEL"] = "00000"
values["VNVOFFS"] = "00"
values["VNVANG"] = "0.0"
values["VNVstat"] = {}
values["VNVstat"][0] = -1
values["VNVstat"][1] = {}
values["VNVstat"][1]["ident"] = "     "
values["CALC3timer"] = 0
values["CALC1timer"] = 0
values["CALCtimer"] = 0
values["GPSrate"] = 1
values["turnanticipation"] = 1
values["timelast"] = get(sim_run_time)

values["SIDSTAR"] = {}
values["SIDSTAR"]["ident"] = "     "

values["SIDSTARsel"] = {}
values["autoscale"] = 0

values["fuelused1"] = 0
values["fuelused2"] = 0
values["fuelused3"] = 0
values["fuelused4"] = 0
values["fuelused5"] = 0
values["fuelused6"] = 0
values["fuelused7"] = 0
values["fuelused8"] = 0
values["reserve"] = "00030"
values["statusmessage"] = "           "
values["statustimer"] = 0
-- 3:WPT

values["leditstate"] = 0
values["reditstate"] = 0
values["lseditstate"] = 0
values["rseditstate"] = 0
values["HTAPT"] = 0
values["HTlevel"] = 0

values["altalert"] = 0
values["alertlevel"] = 0
values["altwarn"] = "300"
values["INTref"] = {}
values["INTref"]["ident"] = "_____"

values["INTrad"] = "____"
values["INTdist"] = "____"


values["cal1ind"] = "00000"
values["cal1temp"] = "000"
values["cal2CAS"] = "000"
values["cal2TAS"] = 0
values["cal2temp"] = "000"
values["cal4GS"] = "175"
values["cal4FPM"] = "0800"
values["cal4ANG"] = "2.6"
values["cal5C"] = "000"
values["cal5F"] = "032"
values["cal5KT"] = "100"
values["cal5MPH"] = "115"
values["DCTload"] = 0

values["direct"] = {}
values["direct"]["ident"] = "     "

values["APTnearestlist"] = {}
values["VORnearestlist"] = {}
values["NDBnearestlist"] = {}
values["APTnearestnum"] = 0
values["NDBnearestnum"] = 0
values["VORnearestnum"] = 0
--it must exist, or we get a bug when it checks
values["INTnearestnum"] = 0
values["SUPnearestnum"] = 0

values["RWYminlength"] = 1000
--1 means hard only
values["RWYsurface"] = 1

values["GPSHobbs"] = 0
values["GPSTurnons"] = 0

values["TRI0TAS"] = "150"
values["TRI0WHead"] = "210"
values["TRI0WSpeed"] = "018"
values["TRIFF"] = "00032.0"
values["TRIRES"] = "00032.0"

values["TRI1SPD"] = "175"
values["TRI1"] = {}
values["TRI1"][1] = {}
values["TRI1"][1]["ident"] = "P.POS"
values["TRI1"][2] = {}
values["TRI1"][2]["ident"] = "     "
values["TRI3SPD"] = "175"
values["TRI3"] = {}
values["TRI3"][1] = {}
values["TRI3"][1]["ident"] = "     "
values["TRI3"][2] = {}
values["TRI3"][2]["ident"] = "     "
values["TRI5SPD"] = "175"
values["TRI5num"] = 0
values["warnnum"] = 0
values["primary"] = 1
values["showheli"] = 0
values["showwat"] = 0

values["FPLREF"] = {}
values["FPLREF"]["ident"] = "     "

values["time"] = {}
values["time"]["zone"] = 1
values["time"]["zonename"] = "UTC"
values["time"]["zonediff"] = 0
values["time"]["zonenamel"] = "CORD UNIV/Z"

values["initwpt"] = {}
values["initwpt"]["ident"] = "     "
values["magvar"] = 0

values["GPSlat"] = get(LATin)
values["GPSlon"] = get(LONin)
--values["oldlat"] = values["GPSlat"]
--values["oldlon"] = values["GPSlon"]
values["GPSSPD"] = 0
values["GPSTRK"] = 0
values["bearing"] = 0
values["welcome1"] = "                       "
values["welcome2"] = "    PRESS LEFT CRSR    "
values["welcome3"] = "      TO CUSTOMIZE     "
values["welcome4"] = "       THIS PAGE       "

values["monthdays"] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
values["GPSSAT"] = {}
values["GPSnum"] = 0
values["realGPS"] = 15
values["fuelunit"] = 5
values["MSGSTAT"] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
values["MSGLIST"] = {}
values["MSGLIST"]["length"] = 0
values["NAV5RNG"] = 0
values["NAV5RNG2"] = 13
values["NAV5LNS"] = "111"
values["NAV5SHOW"] = "0000"
values["NAV5Clut"] = 0
values["NAV5ORI"] = 0
values["NAV5ORI2"] = 8
values["NAV5ORIS"] = 0
values["VNVpause"] = 0
values["VNVgs"] = 0
values["NAVSYNC"] = 0

values["NAV5DCT"] = {}
values["NAV5DCT"]["ident"] = "     "
--this will be 1 when an editvalue is returned.
values["lreturn"] = 0
values["rreturn"] = 0
values["lsreturn"] = 0
values["rsreturn"] = 0
values["volume"] = 50
values["lastAPT"] = "    "

values["rgstring"] = " "
values["rbstring"] = " "
values["lgstring"] = " "
values["lbstring"] = " "
values["rsgstring"] = " "
values["rsbstring"] = " "
values["lsgstring"] = " "
values["lsbstring"] = " "


--values["WPTalert"] = 0
values["WPTalertdist2"] = 0
values["XTK"] = 0
values["dist"] = 0
values["DTK"] = 0
values["scalefactor"] = 5
values["scaleline"] = ""
values["HSIinterf"] = 1
values["HSIOBS"] = 0
values["tofrom"] = 0

values["magtable"] = {}
values["magtable"][1] = { -152.3,-147.3,-142.3,-137.3,-132.3,-127.3,-122.3,-117.3,-112.3,-107.3,-102.3, -97.3, -92.3, -87.3, -82.3, -77.3, -72.3, -67.3, -62.3, -57.3, -52.3, -47.3, -42.3, -37.3, -32.3, -27.3, -22.3, -17.3, -12.3,  -7.3,  -2.3,   2.7,   7.7,  12.7,  17.7,  22.7,  27.7,  32.7,  37.7,  42.7,  47.7,  52.7,  57.7,  62.7,  67.7,  72.7,  77.7,  82.7,  87.7,  92.7,  97.7, 102.7, 107.7, 112.7, 117.7, 122.7, 127.7, 132.7, 137.7, 142.7, 147.7, 152.7, 157.7, 162.7, 167.7, 172.7, 177.7,-177.3,-172.3,-167.3,-162.3,-157.3,-152.3}
values["magtable"][2] = { -145.1,-139.4,-133.7,-128.2,-122.7,-117.3,-112.0,-106.8,-101.7, -96.6, -91.7, -86.8, -82.0, -77.3, -72.6, -68.0, -63.5, -59.0, -54.5, -50.1, -45.7, -41.3, -37.0, -32.6, -28.3, -24.0, -19.7, -15.5, -11.2,  -6.9,  -2.6,   1.7,   6.0,  10.3,  14.7,  19.0,  23.4,  27.9,  32.3,  36.8,  41.4,  45.9,  50.6,  55.2,  59.9,  64.7,  69.5,  74.3,  79.3,  84.2,  89.3,  94.4,  99.6, 104.8, 110.1, 115.5, 121.0, 126.5, 132.1, 137.8, 143.6, 149.4, 155.3, 161.2, 167.2, 173.2, 179.2,-174.8,-168.8,-162.8,-156.8,-151.0,-145.1}
values["magtable"][3] = { -133.0,-126.4,-120.2,-114.3,-108.7,-103.3, -98.2, -93.3, -88.6, -84.0, -79.6, -75.3, -71.1, -67.0, -62.9, -58.9, -55.0, -51.1, -47.2, -43.4, -39.6, -35.8, -32.0, -28.2, -24.5, -20.8, -17.1, -13.3,  -9.6,  -5.9,  -2.2,   1.6,   5.4,   9.2,  13.1,  17.0,  20.9,  24.9,  29.0,  33.1,  37.2,  41.5,  45.8,  50.1,  54.5,  59.0,  63.6,  68.2,  72.9,  77.7,  82.5,  87.5,  92.5,  97.7, 103.0, 108.5, 114.1, 120.0, 126.0, 132.3, 138.8, 145.6, 152.6, 159.8, 167.3, 174.9,-177.3,-169.6,-161.9,-154.3,-146.9,-139.8,-133.0}
values["magtable"][4] = { -112.7,-106.2,-100.4, -95.2, -90.4, -86.0, -81.9, -78.1, -74.4, -70.9, -67.5, -64.1, -60.8, -57.5, -54.2, -50.9, -47.6, -44.3, -41.0, -37.6, -34.3, -30.9, -27.5, -24.2, -20.8, -17.5, -14.2, -10.9,  -7.6,  -4.4,  -1.1,   2.2,   5.6,   9.0,  12.4,  15.9,  19.5,  23.1,  26.9,  30.7,  34.6,  38.6,  42.7,  46.8,  51.0,  55.2,  59.5,  63.9,  68.3,  72.7,  77.2,  81.8,  86.5,  91.4,  96.3, 101.5, 106.9, 112.6, 118.6, 125.2, 132.3, 140.1, 148.6, 158.1, 168.3, 179.2,-169.4,-158.1,-147.3,-137.2,-128.1,-119.9,-112.7}
values["magtable"][5] = {  -85.1, -80.9, -77.2, -73.9, -71.0, -68.4, -65.9, -63.5, -61.2, -59.0, -56.7, -54.4, -52.0, -49.6, -47.1, -44.5, -41.7, -38.9, -36.0, -33.0, -29.9, -26.8, -23.7, -20.6, -17.4, -14.3, -11.3,  -8.2,  -5.3,  -2.3,   0.6,   3.5,   6.4,   9.4,  12.5,  15.6,  18.8,  22.2,  25.7,  29.3,  33.0,  36.8,  40.7,  44.6,  48.6,  52.7,  56.7,  60.7,  64.8,  68.9,  72.9,  77.0,  81.1,  85.2,  89.5,  93.8,  98.4, 103.3, 108.6, 114.5, 121.3, 129.6, 140.0, 153.6, 171.5,-167.2,-145.7,-127.8,-114.2,-104.1, -96.3, -90.2, -85.1}
values["magtable"][6] = {  -60.7, -59.0, -57.4, -56.0, -54.7, -53.5, -52.4, -51.2, -50.1, -49.0, -47.7, -46.4, -44.9, -43.3, -41.4, -39.4, -37.2, -34.8, -32.2, -29.4, -26.5, -23.5, -20.4, -17.3, -14.2, -11.1,  -8.2,  -5.3,  -2.5,   0.2,   2.8,   5.4,   7.9,  10.5,  13.1,  15.9,  18.8,  21.9,  25.1,  28.5,  32.0,  35.6,  39.4,  43.2,  47.0,  50.8,  54.6,  58.3,  62.0,  65.5,  69.0,  72.4,  75.7,  78.9,  82.0,  85.0,  88.0,  91.0,  93.9,  96.9, 100.0, 103.5, 108.2, 118.5,-122.6, -82.2, -75.6, -71.8, -69.0, -66.6, -64.4, -62.5, -60.7}
values["magtable"][7] = {  -44.9, -44.4, -43.9, -43.4, -42.9, -42.5, -42.1, -41.7, -41.3, -40.9, -40.5, -39.9, -39.1, -38.1, -36.9, -35.4, -33.6, -31.6, -29.2, -26.6, -23.8, -20.7, -17.6, -14.3, -11.1,  -7.9,  -4.9,  -2.0,   0.8,   3.3,   5.6,   7.9,  10.0,  12.2,  14.4,  16.7,  19.2,  21.9,  24.9,  28.0,  31.3,  34.8,  38.4,  42.1,  45.7,  49.3,  52.7,  56.1,  59.3,  62.2,  65.0,  67.6,  69.8,  71.8,  73.5,  74.7,  75.3,  75.1,  73.8,  70.6,  64.2,  52.1,  30.7,   3.1, -18.6, -31.3, -38.1, -41.9, -43.9, -44.9, -45.2, -45.2, -44.9}
values["magtable"][8] = {  -35.4, -35.3, -35.2, -35.0, -34.8, -34.6, -34.5, -34.5, -34.5, -34.5, -34.5, -34.4, -34.1, -33.7, -32.9, -31.9, -30.5, -28.8, -26.7, -24.3, -21.5, -18.3, -15.0, -11.5,  -8.0,  -4.6,  -1.3,   1.7,   4.5,   6.9,   9.1,  11.0,  12.8,  14.5,  16.2,  18.0,  20.1,  22.3,  24.9,  27.7,  30.8,  34.1,  37.5,  41.0,  44.4,  47.7,  50.8,  53.7,  56.4,  58.7,  60.7,  62.3,  63.5,  64.1,  64.0,  63.1,  61.0,  57.5,  52.0,  44.0,  33.1,  20.1,   6.7,  -5.3, -14.7, -21.6, -26.5, -29.9, -32.2, -33.8, -34.7, -35.2, -35.4}
values["magtable"][9] = {  -29.2, -29.3, -29.3, -29.2, -29.1, -29.0, -29.0, -29.1, -29.2, -29.4, -29.6, -29.7, -29.8, -29.6, -29.3, -28.6, -27.7, -26.3, -24.4, -22.1, -19.3, -16.1, -12.5,  -8.8,  -4.9,  -1.1,   2.4,   5.7,   8.5,  11.0,  13.0,  14.7,  16.1,  17.3,  18.5,  19.8,  21.3,  23.0,  25.0,  27.4,  30.1,  33.1,  36.3,  39.6,  42.8,  45.8,  48.6,  51.0,  53.1,  54.7,  55.9,  56.5,  56.4,  55.7,  53.9,  51.1,  47.0,  41.3,  34.2,  25.8,  16.8,   8.0,  -0.1,  -7.0, -12.7, -17.2, -20.8, -23.6, -25.7, -27.2, -28.3, -28.9, -29.2}
values["magtable"][10] = {  -24.9, -25.1, -25.1, -25.0, -24.9, -24.8, -24.8, -24.9, -25.1, -25.3, -25.5, -25.7, -25.8, -25.9, -25.8, -25.4, -24.7, -23.6, -22.0, -19.8, -17.1, -13.8, -10.0,  -6.0,  -1.8,   2.4,   6.2,   9.7,  12.7,  15.1,  17.0,  18.4,  19.5,  20.4,  21.2,  21.9,  22.7,  23.7,  25.1,  26.9,  29.1,  31.7,  34.6,  37.6,  40.6,  43.3,  45.7,  47.6,  49.1,  50.0,  50.4,  50.0,  48.9,  46.9,  43.9,  39.9,  34.7,  28.6,  21.9,  15.1,   8.6,   2.6,  -2.7,  -7.2, -11.2, -14.5, -17.3, -19.6, -21.4, -22.8, -23.8, -24.5, -24.9}
values["magtable"][11] = {  -21.6, -21.8, -21.8, -21.8, -21.7, -21.6, -21.6, -21.7, -21.8, -21.9, -22.1, -22.2, -22.4, -22.4, -22.4, -22.2, -21.7, -20.8, -19.4, -17.4, -14.7, -11.3,  -7.4,  -3.1,   1.3,   5.7,   9.8,  13.4,  16.3,  18.7,  20.4,  21.7,  22.6,  23.2,  23.6,  23.8,  24.0,  24.3,  24.9,  25.8,  27.4,  29.5,  32.0,  34.7,  37.4,  39.8,  41.8,  43.3,  44.3,  44.6,  44.2,  43.1,  41.1,  38.3,  34.6,  30.1,  24.9,  19.4,  13.9,   8.7,   4.0,  -0.1,  -3.8,  -7.0,  -9.9, -12.4, -14.7, -16.6, -18.2, -19.5, -20.5, -21.2, -21.6}
values["magtable"][12] = {  -18.9, -19.1, -19.1, -19.1, -19.0, -19.0, -19.0, -19.0, -19.1, -19.2, -19.2, -19.3, -19.3, -19.3, -19.3, -19.2, -18.8, -18.0, -16.7, -14.8, -12.2,  -8.8,  -4.8,  -0.4,   4.2,   8.7,  12.9,  16.4,  19.3,  21.5,  23.0,  24.1,  24.7,  25.1,  25.2,  25.0,  24.7,  24.2,  23.9,  23.9,  24.5,  25.8,  27.8,  30.2,  32.7,  35.0,  36.8,  38.0,  38.5,  38.4,  37.5,  35.9,  33.5,  30.3,  26.5,  22.1,  17.4,  12.8,   8.5,   4.7,   1.3,  -1.6,  -4.2,  -6.6,  -8.8, -10.8, -12.7, -14.3, -15.8, -17.0, -17.9, -18.5, -18.9}
values["magtable"][13] = {  -16.7, -16.8, -16.8, -16.8, -16.7, -16.8, -16.8, -16.9, -16.9, -16.9, -16.9, -16.8, -16.8, -16.7, -16.6, -16.5, -16.1, -15.4, -14.2, -12.3,  -9.7,  -6.3,  -2.3,   2.1,   6.8,  11.2,  15.2,  18.6,  21.3,  23.2,  24.5,  25.3,  25.7,  25.8,  25.5,  25.0,  24.1,  23.0,  21.8,  20.8,  20.4,  20.8,  22.2,  24.2,  26.5,  28.7,  30.4,  31.6,  32.0,  31.6,  30.6,  28.8,  26.3,  23.2,  19.7,  15.8,  11.9,   8.2,   4.9,   2.1,  -0.3,  -2.4,  -4.3,  -6.1,  -7.8,  -9.5, -11.1, -12.5, -13.8, -14.9, -15.7, -16.3, -16.7}
values["magtable"][14] = {  -14.8, -14.9, -14.9, -14.8, -14.8, -14.8, -14.9, -15.0, -15.0, -15.0, -14.9, -14.8, -14.6, -14.5, -14.4, -14.2, -13.8, -13.1, -11.9, -10.0,  -7.4,  -4.1,  -0.1,   4.3,   8.8,  13.1,  16.9,  20.1,  22.4,  24.1,  25.1,  25.6,  25.6,  25.2,  24.6,  23.6,  22.2,  20.6,  18.7,  16.9,  15.6,  15.1,  15.7,  17.3,  19.4,  21.5,  23.4,  24.6,  25.1,  24.9,  23.9,  22.3,  20.1,  17.4,  14.3,  11.1,   7.9,   5.0,   2.5,   0.5,  -1.3,  -2.8,  -4.2,  -5.6,  -7.0,  -8.4,  -9.8, -11.1, -12.3, -13.2, -14.0, -14.5, -14.8}
values["magtable"][15] = {  -13.3, -13.3, -13.2, -13.1, -13.0, -13.1, -13.2, -13.3, -13.4, -13.4, -13.3, -13.1, -12.9, -12.7, -12.6, -12.4, -12.0, -11.2, -10.0,  -8.1,  -5.4,  -2.1,   1.9,   6.2,  10.5,  14.5,  18.0,  20.9,  22.9,  24.2,  24.9,  24.9,  24.5,  23.7,  22.5,  21.0,  19.3,  17.3,  15.1,  12.9,  11.1,  10.0,   9.9,  10.9,  12.7,  14.7,  16.6,  18.0,  18.8,  18.8,  18.1,  16.8,  15.0,  12.7,  10.2,   7.6,   5.1,   2.8,   1.0,  -0.5,  -1.8,  -2.9,  -3.9,  -5.1,  -6.3,  -7.6,  -8.9, -10.0, -11.1, -11.9, -12.6, -13.0, -13.3}
values["magtable"][16] = {  -12.1, -12.0, -11.8, -11.7, -11.6, -11.6, -11.7, -11.9, -12.0, -12.0, -11.9, -11.7, -11.5, -11.4, -11.2, -11.0, -10.6,  -9.8,  -8.4,  -6.4,  -3.7,  -0.4,   3.5,   7.6,  11.7,  15.5,  18.7,  21.1,  22.9,  23.8,  24.0,  23.6,  22.7,  21.4,  19.7,  17.9,  15.9,  13.9,  11.7,   9.5,   7.5,   6.2,   5.6,   6.1,   7.4,   9.2,  11.0,  12.5,  13.4,  13.7,  13.3,  12.4,  11.0,   9.2,   7.2,   5.1,   3.1,   1.4,   0.0,  -1.0,  -1.9,  -2.7,  -3.6,  -4.6,  -5.7,  -6.9,  -8.0,  -9.2, -10.1, -11.0, -11.6, -11.9, -12.1}
values["magtable"][17] = {  -11.2, -11.1, -10.8, -10.5, -10.4, -10.4, -10.5, -10.7, -10.8, -10.8, -10.7, -10.6, -10.4, -10.3, -10.2, -10.0,  -9.5,  -8.6,  -7.2,  -5.1,  -2.3,   1.0,   4.8,   8.8,  12.7,  16.1,  19.0,  21.1,  22.4,  22.9,  22.8,  21.9,  20.5,  18.7,  16.7,  14.7,  12.7,  10.7,   8.7,   6.8,   5.0,   3.6,   2.8,   2.9,   3.8,   5.2,   6.9,   8.3,   9.3,   9.8,   9.7,   9.0,   8.0,   6.6,   5.0,   3.4,   1.9,   0.6,  -0.4,  -1.2,  -1.8,  -2.5,  -3.2,  -4.1,  -5.1,  -6.2,  -7.3,  -8.4,  -9.4, -10.2, -10.8, -11.1, -11.2}
values["magtable"][18] = {  -10.6, -10.4, -10.1,  -9.7,  -9.5,  -9.5,  -9.6,  -9.8,  -9.9,  -9.9,  -9.9,  -9.8,  -9.7,  -9.6,  -9.5,  -9.3,  -8.7,  -7.7,  -6.2,  -4.0,  -1.1,   2.2,   5.9,   9.7,  13.3,  16.5,  19.0,  20.7,  21.6,  21.8,  21.2,  20.0,  18.2,  16.1,  13.9,  11.7,   9.8,   8.0,   6.4,   4.7,   3.2,   1.9,   1.1,   0.9,   1.5,   2.6,   4.0,   5.3,   6.3,   6.9,   7.0,   6.6,   5.8,   4.7,   3.5,   2.2,   1.1,   0.1,  -0.6,  -1.1,  -1.5,  -2.0,  -2.6,  -3.4,  -4.4,  -5.5,  -6.7,  -7.8,  -8.8,  -9.6, -10.2, -10.5, -10.6}
values["magtable"][19] = {  -10.2, -10.0,  -9.6,  -9.3,  -9.0,  -8.9,  -9.0,  -9.2,  -9.3,  -9.4,  -9.4,  -9.3,  -9.3,  -9.2,  -9.1,  -8.8,  -8.1,  -7.0,  -5.3,  -3.0,  -0.1,   3.3,   6.9,  10.5,  13.8,  16.6,  18.8,  20.1,  20.7,  20.5,  19.6,  18.0,  16.0,  13.7,  11.4,   9.3,   7.5,   5.9,   4.5,   3.2,   1.9,   0.8,   0.0,  -0.3,   0.0,   0.9,   2.0,   3.2,   4.2,   4.8,   5.0,   4.8,   4.2,   3.4,   2.4,   1.5,   0.6,   0.0,  -0.5,  -0.8,  -1.1,  -1.4,  -1.9,  -2.7,  -3.6,  -4.7,  -5.9,  -7.1,  -8.1,  -9.0,  -9.7, -10.1, -10.2}
values["magtable"][20] = {  -10.0,  -9.8,  -9.5,  -9.1,  -8.8,  -8.7,  -8.8,  -8.9,  -9.1,  -9.2,  -9.3,  -9.2,  -9.2,  -9.1,  -8.9,  -8.4,  -7.6,  -6.3,  -4.5,  -2.0,   0.9,   4.3,   7.8,  11.2,  14.2,  16.7,  18.4,  19.4,  19.6,  19.1,  17.9,  16.2,  14.0,  11.7,   9.4,   7.3,   5.6,   4.3,   3.1,   2.0,   0.9,   0.0,  -0.7,  -1.0,  -0.8,  -0.2,   0.8,   1.8,   2.7,   3.3,   3.6,   3.5,   3.1,   2.4,   1.7,   1.0,   0.4,   0.0,  -0.2,  -0.3,  -0.4,  -0.6,  -1.1,  -1.7,  -2.7,  -3.8,  -5.0,  -6.2,  -7.4,  -8.5,  -9.3,  -9.8, -10.0}
values["magtable"][21] = {   -9.8,  -9.7,  -9.5,  -9.2,  -8.9,  -8.8,  -8.9,  -9.1,  -9.3,  -9.5,  -9.5,  -9.5,  -9.4,  -9.2,  -8.9,  -8.3,  -7.3,  -5.8,  -3.7,  -1.1,   1.9,   5.2,   8.6,  11.8,  14.6,  16.7,  18.1,  18.7,  18.6,  17.8,  16.4,  14.5,  12.3,  10.0,   7.8,   5.9,   4.3,   3.0,   2.0,   1.1,   0.2,  -0.6,  -1.2,  -1.5,  -1.4,  -0.9,  -0.1,   0.8,   1.6,   2.2,   2.5,   2.5,   2.2,   1.7,   1.2,   0.7,   0.4,   0.2,   0.2,   0.3,   0.3,   0.3,   0.0,  -0.6,  -1.5,  -2.6,  -3.8,  -5.2,  -6.5,  -7.8,  -8.8,  -9.5,  -9.8}
values["magtable"][22] = {   -9.5,  -9.7,  -9.7,  -9.5,  -9.3,  -9.3,  -9.5,  -9.7,  -9.9, -10.1, -10.1, -10.1, -10.0,  -9.7,  -9.2,  -8.3,  -7.1,  -5.3,  -3.0,  -0.2,   2.9,   6.2,   9.5,  12.5,  14.9,  16.7,  17.7,  18.0,  17.6,  16.6,  15.0,  13.1,  11.0,   8.8,   6.6,   4.8,   3.3,   2.1,   1.2,   0.4,  -0.3,  -1.0,  -1.5,  -1.8,  -1.8,  -1.4,  -0.8,   0.0,   0.7,   1.3,   1.6,   1.7,   1.5,   1.2,   0.8,   0.6,   0.4,   0.5,   0.7,   0.9,   1.2,   1.3,   1.1,   0.7,  -0.1,  -1.2,  -2.5,  -3.9,  -5.4,  -6.8,  -8.1,  -9.0,  -9.5}
values["magtable"][23] = {   -9.2,  -9.7,  -9.9,  -9.9, -10.0, -10.1, -10.3, -10.6, -10.9, -11.0, -11.1, -11.0, -10.8, -10.3,  -9.6,  -8.5,  -7.0,  -4.9,  -2.4,   0.6,   3.9,   7.2,  10.4,  13.2,  15.3,  16.8,  17.4,  17.4,  16.8,  15.6,  14.0,  12.1,  10.0,   7.8,   5.8,   4.0,   2.6,   1.5,   0.6,  -0.2,  -0.8,  -1.4,  -1.9,  -2.1,  -2.2,  -1.9,  -1.4,  -0.7,  -0.1,   0.4,   0.8,   0.9,   0.8,   0.6,   0.5,   0.4,   0.5,   0.8,   1.2,   1.7,   2.1,   2.4,   2.4,   2.1,   1.4,   0.4,  -0.9,  -2.4,  -4.0,  -5.7,  -7.1,  -8.3,  -9.2}
values["magtable"][24] = {   -8.6,  -9.5, -10.1, -10.4, -10.8, -11.1, -11.4, -11.8, -12.1, -12.3, -12.3, -12.2, -11.8, -11.2, -10.3,  -8.9,  -7.0,  -4.7,  -1.8,   1.5,   4.9,   8.3,  11.4,  14.0,  15.9,  17.0,  17.4,  17.1,  16.2,  14.9,  13.2,  11.3,   9.3,   7.2,   5.3,   3.6,   2.1,   1.0,   0.1,  -0.6,  -1.2,  -1.8,  -2.2,  -2.5,  -2.5,  -2.3,  -1.9,  -1.4,  -0.9,  -0.5,  -0.1,   0.0,   0.0,   0.0,   0.0,   0.2,   0.5,   1.1,   1.7,   2.5,   3.2,   3.7,   3.9,   3.7,   3.1,   2.2,   0.9,  -0.7,  -2.5,  -4.3,  -6.0,  -7.5,  -8.6}
values["magtable"][25] = {   -8.0,  -9.2, -10.2, -11.0, -11.6, -12.2, -12.7, -13.1, -13.5, -13.7, -13.7, -13.5, -13.0, -12.2, -11.1,  -9.4,  -7.2,  -4.5,  -1.2,   2.3,   6.0,   9.5,  12.5,  15.0,  16.6,  17.5,  17.6,  17.1,  16.0,  14.6,  12.8,  10.9,   8.9,   6.9,   5.0,   3.3,   1.9,   0.7,  -0.2,  -1.0,  -1.6,  -2.1,  -2.6,  -2.9,  -3.0,  -2.9,  -2.6,  -2.3,  -1.9,  -1.5,  -1.2,  -1.0,  -0.9,  -0.7,  -0.5,  -0.1,   0.6,   1.4,   2.3,   3.4,   4.3,   5.0,   5.4,   5.4,   4.9,   4.0,   2.7,   1.0,  -0.8,  -2.8,  -4.7,  -6.5,  -8.0}
values["magtable"][26] = {   -7.2,  -8.9, -10.3, -11.4, -12.4, -13.3, -14.0, -14.6, -15.0, -15.2, -15.2, -15.0, -14.4, -13.4, -12.0, -10.0,  -7.4,  -4.3,  -0.6,   3.3,   7.2,  10.8,  13.9,  16.2,  17.6,  18.3,  18.2,  17.5,  16.3,  14.7,  12.9,  11.0,   9.0,   7.0,   5.1,   3.4,   1.8,   0.6,  -0.5,  -1.3,  -2.0,  -2.6,  -3.0,  -3.4,  -3.6,  -3.6,  -3.5,  -3.3,  -3.1,  -2.8,  -2.6,  -2.3,  -2.0,  -1.7,  -1.1,  -0.4,   0.5,   1.7,   3.0,   4.3,   5.5,   6.4,   7.0,   7.1,   6.7,   5.8,   4.5,   2.8,   0.9,  -1.2,  -3.4,  -5.4,  -7.2}
values["magtable"][27] = {   -6.5,  -8.5, -10.3, -11.9, -13.3, -14.4, -15.4, -16.1, -16.6, -16.9, -16.9, -16.6, -15.9, -14.7, -13.0, -10.7,  -7.7,  -4.0,   0.1,   4.4,   8.7,  12.5,  15.6,  17.8,  19.1,  19.5,  19.2,  18.3,  17.0,  15.3,  13.4,  11.4,   9.4,   7.4,   5.4,   3.6,   2.0,   0.6,  -0.6,  -1.6,  -2.4,  -3.1,  -3.6,  -4.1,  -4.4,  -4.6,  -4.7,  -4.7,  -4.6,  -4.5,  -4.2,  -3.9,  -3.5,  -2.9,  -2.0,  -0.9,   0.4,   2.0,   3.6,   5.3,   6.8,   7.9,   8.6,   8.8,   8.4,   7.6,   6.2,   4.5,   2.4,   0.2,  -2.1,  -4.4,  -6.5}
values["magtable"][28] = {   -6.0,  -8.3, -10.5, -12.4, -14.1, -15.6, -16.8, -17.8, -18.4, -18.8, -18.8, -18.4, -17.6, -16.2, -14.2, -11.4,  -7.9,  -3.7,   1.1,   6.0,  10.6,  14.6,  17.8,  19.9,  21.0,  21.3,  20.8,  19.8,  18.3,  16.5,  14.5,  12.4,  10.3,   8.2,   6.1,   4.2,   2.4,   0.8,  -0.5,  -1.7,  -2.7,  -3.6,  -4.4,  -5.0,  -5.6,  -6.0,  -6.3,  -6.5,  -6.6,  -6.5,  -6.3,  -5.9,  -5.3,  -4.4,  -3.1,  -1.6,   0.2,   2.2,   4.3,   6.3,   8.1,   9.4,  10.3,  10.5,  10.1,   9.2,   7.8,   6.0,   3.9,   1.5,  -1.0,  -3.5,  -6.0}
values["magtable"][29] = {   -5.6,  -8.2, -10.7, -13.0, -15.1, -16.9, -18.4, -19.6, -20.4, -20.9, -21.0, -20.6, -19.6, -18.0, -15.6, -12.3,  -8.1,  -3.0,   2.5,   8.2,  13.3,  17.6,  20.7,  22.7,  23.7,  23.7,  23.1,  21.9,  20.2,  18.3,  16.2,  13.9,  11.7,   9.4,   7.2,   5.1,   3.1,   1.3,  -0.3,  -1.8,  -3.1,  -4.3,  -5.3,  -6.3,  -7.1,  -7.8,  -8.4,  -8.8,  -9.1,  -9.1,  -8.9,  -8.4,  -7.5,  -6.3,  -4.6,  -2.5,  -0.2,   2.4,   5.0,   7.4,   9.5,  11.0,  11.9,  12.2,  11.8,  10.8,   9.3,   7.4,   5.1,   2.6,  -0.1,  -2.8,  -5.6}
values["magtable"][30] = {   -5.4,  -8.3, -11.1, -13.7, -16.2, -18.3, -20.2, -21.7, -22.8, -23.5, -23.7, -23.3, -22.3, -20.4, -17.5, -13.4,  -8.2,  -1.9,   4.9,  11.5,  17.2,  21.7,  24.8,  26.6,  27.3,  27.1,  26.2,  24.7,  22.9,  20.7,  18.4,  16.0,  13.6,  11.1,   8.7,   6.3,   4.1,   2.0,   0.0,  -1.8,  -3.5,  -5.1,  -6.5,  -7.8,  -9.0, -10.1, -11.0, -11.7, -12.2, -12.3, -12.1, -11.5, -10.3,  -8.7,  -6.5,  -3.8,  -0.8,   2.4,   5.6,   8.5,  10.9,  12.6,  13.5,  13.8,  13.3,  12.3,  10.6,   8.6,   6.2,   3.5,   0.6,  -2.4,  -5.4}
values["magtable"][31] = {   -5.3,  -8.6, -11.7, -14.7, -17.4, -20.0, -22.2, -24.1, -25.6, -26.6, -27.1, -26.9, -25.8, -23.6, -20.1, -14.9,  -8.1,   0.1,   8.8,  16.8,  23.2,  27.8,  30.6,  32.0,  32.2,  31.6,  30.2,  28.5,  26.3,  23.9,  21.3,  18.7,  16.0,  13.2,  10.5,   7.9,   5.3,   2.8,   0.4,  -1.9,  -4.0,  -6.0,  -7.9,  -9.7, -11.4, -12.8, -14.1, -15.1, -15.8, -16.2, -16.0, -15.3, -14.0, -11.9,  -9.2,  -5.8,  -2.0,   2.1,   6.0,   9.4,  12.2,  14.1,  15.1,  15.3,  14.8,  13.6,  11.8,   9.6,   7.0,   4.1,   1.1,  -2.1,  -5.3}
values["magtable"][32] = {   -5.6,  -9.0, -12.5, -15.8, -18.9, -21.9, -24.6, -26.9, -28.9, -30.4, -31.3, -31.4, -30.5, -28.1, -23.8, -17.0,  -7.4,   4.3,  16.0,  25.6,  32.4,  36.5,  38.6,  39.1,  38.6,  37.3,  35.4,  33.1,  30.5,  27.7,  24.8,  21.8,  18.7,  15.7,  12.6,   9.6,   6.6,   3.7,   0.8,  -1.9,  -4.6,  -7.1,  -9.5, -11.8, -14.0, -15.9, -17.6, -19.0, -20.1, -20.7, -20.7, -20.1, -18.7, -16.3, -13.0,  -8.9,  -4.1,   1.0,   5.8,  10.0,  13.2,  15.4,  16.5,  16.6,  16.0,  14.6,  12.7,  10.3,   7.6,   4.5,   1.3,  -2.1,  -5.6}
values["magtable"][33] = {   -6.2,  -9.9, -13.6, -17.2, -20.8, -24.2, -27.3, -30.3, -32.9, -35.0, -36.6, -37.4, -36.9, -34.6, -29.4, -19.6,  -4.0,  14.8,  30.7,  40.8,  46.2,  48.5,  48.9,  48.0,  46.3,  44.1,  41.4,  38.5,  35.3,  32.0,  28.7,  25.2,  21.7,  18.3,  14.8,  11.3,   7.9,   4.5,   1.2,  -2.0,  -5.2,  -8.3, -11.2, -14.0, -16.7, -19.1, -21.3, -23.2, -24.8, -25.8, -26.2, -25.9, -24.7, -22.4, -18.8, -14.0,  -8.1,  -1.8,   4.2,   9.4,  13.3,  15.8,  17.1,  17.3,  16.6,  15.1,  13.0,  10.5,   7.6,   4.4,   1.0,  -2.5,  -6.2}
values["magtable"][34] = {   -7.7, -11.6, -15.6, -19.5, -23.4, -27.2, -30.9, -34.5, -37.8, -40.9, -43.4, -45.3, -46.0, -44.4, -38.2, -20.6,  15.3,  46.0,  59.0,  63.3,  64.0,  62.8,  60.7,  58.0,  54.8,  51.5,  47.9,  44.2,  40.4,  36.5,  32.6,  28.7,  24.8,  20.9,  16.9,  13.0,   9.2,   5.4,   1.6,  -2.1,  -5.7,  -9.3, -12.7, -16.0, -19.2, -22.1, -24.9, -27.4, -29.5, -31.2, -32.3, -32.7, -32.2, -30.6, -27.5, -22.7, -16.4,  -8.9,  -1.4,   5.3,  10.4,  13.8,  15.6,  16.0,  15.4,  14.0,  12.0,   9.4,   6.5,   3.2,  -0.3,  -3.9,  -7.7}
values["magtable"][35] = {  -12.4, -16.4, -20.5, -24.7, -29.0, -33.3, -37.7, -42.2, -46.6, -51.1, -55.7, -60.4, -65.2, -70.5, -79.4, 110.4, 100.9,  95.5,  90.7,  86.0,  81.4,  76.9,  72.4,  67.9,  63.4,  58.9,  54.5,  50.0,  45.6,  41.1,  36.7,  32.3,  28.0,  23.6,  19.3,  15.0,  10.8,   6.6,   2.5,  -1.6,  -5.6,  -9.6, -13.4, -17.2, -20.8, -24.3, -27.6, -30.7, -33.5, -36.0, -38.1, -39.6, -40.5, -40.4, -39.2, -36.5, -32.1, -25.8, -18.1, -10.1,  -3.0,   2.5,   6.0,   7.9,   8.4,   7.7,   6.3,   4.1,   1.5,  -1.6,  -5.0,  -8.6, -12.4}
values["magtable"][36] = {  -40.7, -44.8, -49.5, -54.9, -61.1, -68.2, -76.7, -87.0, -99.9,-116.4,-137.1,-160.2, 177.9, 159.6, 145.2, 133.7, 124.0, 115.7, 108.3, 101.5,  95.1,  89.1,  83.4,  77.9,  72.5,  67.2,  62.1,  57.0,  52.0,  47.1,  42.2,  37.4,  32.7,  28.0,  23.3,  18.7,  14.2,   9.6,   5.2,   0.8,  -3.6,  -7.9, -12.1, -16.2, -20.3, -24.3, -28.1, -31.8, -35.4, -38.8, -42.0, -45.0, -47.6, -49.9, -51.8, -53.2, -53.9, -53.9, -53.1, -51.4, -48.8, -45.5, -41.8, -38.1, -34.8, -32.4, -30.9, -30.4, -30.9, -32.3, -34.4, -37.2, -40.7}
values["magtable"][37] = { -152.0,-157.0,-162.0,-167.0,-172.0,-177.0, 178.0, 173.0, 168.0, 163.0, 158.0, 153.0, 148.0, 143.0, 138.0, 133.0, 128.0, 123.0, 118.0, 113.0, 108.0, 103.0,  98.0,  93.0,  88.0,  83.0,  78.0,  73.0,  68.0,  63.0,  58.0,  53.0,  48.0,  43.0,  38.0,  33.0,  28.0,  23.0,  18.0,  13.0,   8.0,   3.0,  -2.0,  -7.0, -12.0, -17.0, -22.0, -27.0, -32.0, -37.0, -42.0, -47.0, -52.0, -57.0, -62.0, -67.0, -72.0, -77.0, -82.0, -87.0, -92.0, -97.0,-102.0,-107.0,-112.0,-117.0,-122.0,-127.0,-132.0,-137.0,-142.0,-147.0,-152.0}

values["MSAtable"] = {}
values["MSAtable"][-56]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,3700,5100,5200,4300,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-55]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,3800,5100,8300,10400,7100,5300,4200,3400,4200,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,5100,11500,4800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-54]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,4800,5200,4800,3600,4000,2300,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,11000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-53]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,4000,7400,7600,4600,2300,2100,1800,1000,1000,1000,1000,1000,1000,1300,2200,1500,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-52]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,4300,10900,8300,4300,2000,1900,1400,1000,1000,1000,1000,1000,1000,2200,3300,3300,3300,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-51]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,4900,11600,10500,5600,3700,2500,2100,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-50]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4300,5700,13800,9700,5200,4000,3300,2200,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5000,7200,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,1000,1000,}
values["MSAtable"][-49]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5600,12300,9300,7800,4100,4500,3500,1900,1800,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-48]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5500,15500,14200,10800,7000,5400,5000,2300,1900,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,}
values["MSAtable"][-47]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5100,15500,10600,10200,5600,4700,3600,3000,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5000,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,3900,4500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5100,5700,3100,3300,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-46]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5100,9500,8800,8600,4000,5200,4200,3400,2800,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5600,8100,9400,7800,7300,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-45]= { 1000,1000,1000,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,4600,7300,9700,9000,6000,7300,4700,3800,2800,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9300,11900,10100,9100,4600,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-44]= { 1000,1000,1000,1500,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,4500,9500,9200,7900,8100,5600,4300,2900,2100,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,5300,3700,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7600,10900,14200,10800,8300,3600,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-43]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3700,3800,10000,10000,7500,8000,8400,7300,4400,2400,1400,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5600,5800,5100,3300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4800,9400,9500,10900,1400,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-42]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,4000,10700,12600,8500,7600,8200,6000,7400,3000,1300,1400,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3500,7000,7300,7100,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5600,9300,11300,5000,4900,2700,1000,1000,1000,1000,}
values["MSAtable"][-41]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,9400,9900,7300,5900,7200,4300,3700,2200,1500,1300,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1700,2400,1100,2700,3500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7700,3300,2700,7100,5600,1000,1000,1000,1000,}
values["MSAtable"][-40]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3500,9900,14200,11300,5500,4200,3300,2200,1800,1600,1400,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1500,1000,3500,2000,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4200,10100,11000,7600,2600,1000,1000,1000,}
values["MSAtable"][-39]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,4500,12100,10900,5800,3900,2900,2200,2900,2100,1800,4600,5000,1700,1700,1700,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1700,2000,3200,2300,2700,3500,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,5200,5500,5800,4500,1000,1000,}
values["MSAtable"][-38]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,6000,5600,13400,15000,11700,9400,3300,2200,2600,2400,1800,4300,3500,2000,2700,2400,1900,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1800,2500,4800,4200,4300,6000,7800,7600,7300,4800,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,4100,3100,7100,7700,1000,1000,}
values["MSAtable"][-37]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2700,4000,12400,17400,14500,9700,3700,2200,2400,2200,1600,1500,1600,2000,1700,1400,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1300,1000,1200,1600,2200,3400,3000,3500,4400,7500,8500,9300,5500,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2500,3900,1500,1000,1000,1000,1000,}
values["MSAtable"][-36]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3700,12100,16500,17100,14400,4000,2400,2300,2100,1600,1500,1400,1400,1300,1200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2000,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,2000,1900,2900,2100,1600,1600,1400,1500,1600,1800,2600,4500,8200,7200,4700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3500,3000,1400,1000,1000,1000,1000,1000,}
values["MSAtable"][-35]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,8500,18900,19300,8200,3000,3600,2900,2200,1700,1500,1500,1400,1300,1300,1700,1600,2600,2700,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7200,7400,3300,3400,2100,2500,3400,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2200,2300,3600,4500,2600,1000,1700,1700,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2400,1800,1800,3300,3000,1400,1500,1400,1400,1400,1700,2500,3500,4200,5200,5000,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,2100,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-34]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5200,1300,3300,1000,1000,1000,1000,1000,1000,9100,21900,23600,5600,3300,9300,7600,5600,2100,1500,1500,1300,1300,1300,1700,1600,2200,2100,1600,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,7100,9300,7600,9600,8900,7700,7600,5100,4100,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,2200,2500,2400,2400,2500,2500,2000,2100,2900,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,1800,2600,2500,4100,3400,1500,1300,1500,1600,1400,2400,2800,3400,5600,5500,5500,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-33]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9900,24700,23400,11700,4500,8900,7800,10800,2300,1600,1500,1400,1400,1300,1500,1900,2100,2300,2300,1700,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,5700,8700,8000,8300,8400,9300,9900,9000,9800,8300,4700,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,2900,2500,2500,2600,2600,3100,2900,2200,1600,1500,1400,1100,1100,1000,1000,1000,1400,1400,2300,2500,2500,3700,4200,3400,3000,2200,1900,1700,1900,2700,2900,2500,3700,4700,5100,7200,3200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-32]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9000,24000,21300,13800,12400,7400,7200,11100,2500,1600,1400,1400,1400,1300,1800,2400,2300,2300,2600,2700,1400,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,4300,7500,7200,6000,8000,8500,10000,8900,9200,11000,10400,7200,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,2600,2300,2600,2600,2700,2700,2700,2400,1800,1600,1600,1600,1600,1500,1400,1600,1600,1700,2100,2100,1900,1900,4800,3900,2300,2500,2400,1800,2000,2400,2700,1800,4900,4800,5700,7200,5200,1500,1000,1000,1000,1000,1000,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-31]= { 1000,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7100,20200,22500,13900,10300,8200,4900,8300,3800,1400,1400,1300,1300,1300,1600,2100,2200,2500,2500,3000,3000,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7100,7500,5500,5200,7100,7500,7500,7600,7800,8900,11900,12000,10000,5500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2300,2400,2600,2800,3300,2800,2800,2600,2500,2100,1800,1800,1800,1700,1600,1600,2000,2000,2000,2200,1800,1600,1900,4500,4500,1300,2100,2400,1800,1700,2600,2300,1600,2000,3600,5900,6000,7200,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-30]= { 1000,1000,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8200,20500,22200,18000,21900,10500,5800,4100,3700,1300,1300,1300,1300,1500,1400,1700,2400,2800,3000,3600,4000,4800,4700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,5400,5400,5000,4400,5100,7100,5900,6000,7500,9000,12100,13200,13400,7800,4500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,2300,2700,3200,2800,3100,2900,2700,2800,2700,2600,2000,1800,2000,2000,2000,2000,2100,2000,1800,1800,1800,1600,2100,1900,2900,1400,2100,1900,1700,1700,1700,1600,1600,1600,2700,3600,5900,5900,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-29]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8200,16800,21200,24100,21400,16800,14000,3400,1600,1500,1400,1300,1300,1400,1400,1600,2300,2800,3000,3700,4300,5800,8000,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,4600,5500,4700,4800,4400,5000,7500,7900,5600,5700,7200,9100,13000,12600,7800,7000,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2000,2400,2600,2800,2900,3000,2800,2900,2900,2900,2600,2500,2500,2600,2600,2700,2600,2500,2400,2100,2000,2200,2400,1200,1500,1200,1400,1800,1900,1900,1900,1800,1800,1700,1800,2000,2900,5400,5500,4900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-28]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4100,10500,21800,24500,19700,20200,18800,3300,1600,1600,1700,1400,1300,1300,1500,1700,2600,2900,3100,4400,5000,7200,8000,5200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4600,7600,7400,9200,7100,4000,5000,8000,8100,5900,5900,7100,7500,8100,9600,9500,7400,3300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,1900,2400,2700,3100,3000,3200,3000,3100,3000,2900,2600,2600,2700,2700,2800,3700,3100,3000,3600,2900,2300,1900,1700,1300,1400,1400,1800,1900,1900,2000,2000,2100,2200,2300,2300,2400,2500,3500,4700,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-27]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1000,1000,1000,1000,1000,1000,1000,1000,8900,19400,23000,21700,20500,18300,10100,2000,1800,1700,1400,1400,1300,2000,2500,2600,3200,4100,5000,5600,5700,5300,7000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,5800,8300,5900,7700,4700,4300,4300,4700,5400,5500,7000,7400,8000,8300,8000,8300,8000,3300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,1800,2500,2800,3400,3100,3200,3200,3000,2900,2800,2800,2700,3000,3300,4300,4900,5100,5700,5100,2900,2400,1900,1400,1300,1200,1300,1800,1900,2100,2100,2200,2400,2700,3300,3500,3000,3100,4800,3900,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-26]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,10800,18900,21000,23100,21400,18700,9400,2200,1800,1600,1500,1400,1300,2900,3700,2500,3000,4000,4800,5500,5300,7200,8000,3600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,8700,8500,7700,5000,4700,4500,4500,4500,5100,5000,7000,7700,8100,7500,8600,9600,8200,3100,1400,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2200,3700,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1600,1700,2600,2800,3100,3500,3200,3900,3300,3000,2700,2800,2800,2900,3200,4400,4800,5100,4500,3800,3200,2600,1900,1600,1400,1400,1400,1700,2000,2000,2200,2500,2600,3300,4200,4800,3400,2800,3400,3400,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-25]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,12200,16200,24100,21900,22800,21300,10500,2300,1800,1600,1500,1400,1400,1400,2400,2600,2800,3700,4900,5100,5200,5400,5200,5600,4400,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2700,8200,8500,6000,5100,5100,5000,4800,4700,4700,5500,5900,5500,8800,7900,8900,9100,4300,2300,1500,1600,1600,1000,1000,1000,1000,1000,1000,1000,1700,2700,5800,8400,8400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2200,2400,4500,4200,3500,4000,4000,3000,2900,2700,2700,2800,2700,3500,4400,4400,3500,3900,4400,3900,3300,2700,1900,1600,1400,1600,1500,1800,2100,2200,2500,2600,3500,5100,5100,3500,4100,4000,2000,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-24]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,1000,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2300,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7600,13100,16000,21800,19200,19000,16800,3500,1800,1700,1600,1500,1400,1700,3400,3000,2600,2700,3100,5200,4900,4200,4300,5000,5800,7400,7900,3100,1800,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,5800,9700,9100,7000,5800,5300,5100,4900,4800,4700,4900,5300,5500,8700,9000,8300,2700,1800,1400,1800,1800,1000,1000,1000,1000,1000,1000,1000,2800,4500,7000,7900,7700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,2100,3300,3100,4000,5000,4500,3600,3100,2800,2600,2500,2500,2700,2700,3200,3900,4200,5600,5900,5100,4900,4500,2200,2000,1900,1800,1800,1800,2100,2300,2000,2700,3500,4000,3600,4100,3500,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-23]= { 1000,1000,1000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8800,13400,21500,21700,21200,18500,16500,5500,2000,1800,1600,1500,1700,2700,3500,3400,2700,2600,3100,3100,3300,3600,4100,4500,8700,9700,11100,9300,9300,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,8400,9600,10100,7900,7100,5600,5100,4800,4500,4400,4900,5400,5500,4600,7600,7200,3000,2100,1700,1700,1500,1000,1000,1000,1000,1100,1000,1000,4500,5400,5400,10600,7800,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,2000,2500,4300,4900,5100,4500,3000,2900,2700,2400,2300,2400,2600,2800,2700,2800,3800,4500,4600,4200,3700,3800,2700,2100,2000,2300,2200,2100,2000,2300,2000,2600,3400,3400,3700,3000,3600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5400,2400,1200,1000,1000,1500,1600,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-22]= { 1000,1000,1000,1000,1200,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,1000,1600,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9500,13400,22200,21500,21400,17300,17200,9100,3100,2000,1700,1500,1400,3500,3500,3300,2900,2700,2700,2700,2900,3000,3800,4900,7900,6000,7800,7800,5600,7700,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,10400,9500,9400,8000,7600,7100,5400,5000,4800,4400,4400,4700,4900,4900,4700,5000,4300,3400,2900,2200,1700,1300,1000,1000,1000,1000,1000,1000,1000,2200,2900,4900,8800,8600,2300,1000,1000,1000,1000,1000,1000,12000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1700,1800,3200,3900,2700,3000,2800,2600,2300,2100,2300,2300,2600,2700,2800,2600,3600,3100,4700,3800,3300,3000,2300,2100,2000,3000,2700,2200,2000,2100,2500,2700,2700,2700,5200,3800,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4200,5900,7200,1400,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-21]= { 1000,1300,1000,1000,1400,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7200,19200,20700,18600,19900,17800,17000,8300,3400,2300,3000,1500,1400,3200,3700,3400,3400,3000,2700,2700,2800,3000,3400,5300,5900,5600,5900,8800,8400,11300,8100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5900,7300,8200,8200,8300,5700,5700,5100,4600,5000,4800,4200,4100,4700,5900,7100,7300,7300,7100,7400,4700,1800,1100,1000,1000,1000,1000,1000,1000,1000,1200,2500,5200,9300,9300,4400,1000,1000,1000,1000,1000,1000,8600,1000,3600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1800,1700,1800,2200,2100,2200,2000,2100,2300,2200,2400,2500,2700,2600,2500,2600,2600,2600,3100,2900,2100,1900,2200,3000,3000,1700,2000,3400,4200,4300,3200,4400,4800,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,7300,5500,1200,1300,1000,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-20]= { 1200,1300,1000,1000,4300,1200,1000,1000,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7500,19900,21600,19400,19900,18500,16000,9300,3100,3100,3700,2300,2300,4500,2500,3400,3500,3500,3600,3600,3300,3600,4200,5200,5600,4800,5200,7600,5800,7100,5300,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,7300,7400,7100,7900,9000,7600,5200,5100,5100,4200,4200,4300,4500,4500,4900,5700,7100,7100,7100,9500,9900,2400,1600,1000,1000,1000,1000,1000,1000,1000,1000,3000,6000,9600,10600,5900,1300,1000,1000,1000,1000,1000,1000,1000,1900,1000,1000,1000,1000,1000,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1400,1500,1700,1900,2000,2100,2500,2600,3300,2800,2700,2300,2200,2400,2500,1900,2000,1900,2200,2500,2100,1500,2200,4400,4500,3900,5000,4200,3400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,1000,1000,1000,1000,1000,4500,3100,1000,1000,1000,1000,1000,1000,3600,2600,2200,1000,}
values["MSAtable"][-19]= { 2100,1700,1000,1000,1000,2600,1500,1000,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1100,1100,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9000,22700,23500,17500,18800,18000,13200,11300,3100,2600,5300,4800,3900,4000,1500,3200,3100,4000,3900,3900,3900,4000,4200,4700,5200,4600,5300,8700,7300,5500,4000,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,5800,8100,7600,4800,4800,4900,5000,5000,4900,5500,4400,4300,4600,4700,5000,5000,5300,5400,7100,7900,10500,8200,8000,2100,1100,1000,1000,1000,1000,1000,1000,1000,4100,5400,7600,7800,7100,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1800,1900,2100,2100,3300,3300,2900,2700,2700,2200,2000,2300,2300,1800,2200,2400,2300,1800,1300,1400,2400,3800,4300,4700,4600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,3900,1000,1000,1000,1000,1000,1000,1000,4000,4100,3000,1000,}
values["MSAtable"][-18]= { 2000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,7600,2300,1000,1000,1100,1000,1100,1100,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,10500,21000,21600,20200,20100,18600,17300,15600,9500,2200,3200,3600,5100,4600,4200,1500,2400,3500,4000,4300,4400,3900,4200,4400,4300,4200,4000,5500,6000,5700,5000,3700,3300,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,8700,8800,5900,4700,4900,4900,5000,4900,4800,4600,4400,4400,4500,5100,5400,5500,5700,5500,7700,7500,9300,7500,3000,4800,2700,1600,1400,1100,1000,1000,1100,1100,3500,4400,5800,7100,7200,4900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,1500,2000,4100,3400,4200,3300,2600,2500,1900,1900,1900,2000,2100,2200,2300,2200,1100,1200,1300,1800,2700,4300,7300,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,1000,1000,1000,1000,1000,1000,1000,1100,5000,5300,3300,1000,}
values["MSAtable"][-17]= { 4900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,4100,2400,1100,1000,1000,1100,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,10100,14600,21900,20400,19200,21900,23100,17900,12600,2000,2600,3900,3500,3000,4800,2100,3400,2100,3500,3500,3900,4400,4300,4500,4800,5100,5100,4300,3900,4500,5800,5500,4800,5000,4000,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,8200,7100,5900,5300,5200,5200,5200,5200,5000,4800,4500,4600,4900,5000,5600,5600,7100,5500,7700,7200,4800,3800,4200,8800,7400,4000,3000,2400,1300,1000,1000,1000,3000,3500,2200,5300,5400,4900,1200,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1900,2800,3700,3500,3500,3200,2500,2400,2000,2100,2000,2000,2000,1800,1900,1100,1100,1000,1200,1400,2200,5300,5500,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,5300,1000,1000,1000,1000,1000,1000,1000,1000,1900,3700,5000,1000,}
values["MSAtable"][-16]= { 1600,1000,1000,1000,1700,1000,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1100,1100,1100,1100,1000,1100,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7300,14500,19900,23000,22600,19800,20600,23000,13200,8200,1800,1700,2800,3500,3400,4500,4200,3300,4100,4000,4000,4000,3600,4000,3200,4500,5900,5900,5300,4500,4000,4000,5100,7900,5700,4300,4700,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,5200,9600,8000,5700,5900,5800,5700,5400,5200,4900,4600,4700,4900,5000,5400,5600,5800,5900,5600,5900,5500,7100,8000,11800,8800,9200,5600,4000,2000,1000,1000,1000,1000,1300,1900,2500,5700,5800,4900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2400,3500,3300,2900,2700,2300,2200,2200,1800,1900,1900,2000,1300,1300,1000,1000,1000,1100,1500,2300,3800,4700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8000,5800,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-15]= { 1000,2700,1000,1000,1000,1000,1000,1000,2900,2900,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1100,1100,1100,1000,1000,1100,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,14700,17500,18700,19800,19700,20100,21500,19100,7900,1800,1600,1700,3000,2200,2600,4200,3700,3700,3300,3000,3500,3900,3400,3100,2500,3200,4800,5500,7500,4500,4100,3700,4800,5800,4700,4900,4400,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,6000,9800,8500,8300,7600,7400,7200,5800,5500,5200,4500,4800,5100,5100,7100,5400,5400,7400,5500,5600,7400,7600,9100,7700,7000,7700,7400,4700,3000,1000,1000,1000,1000,1000,1000,2200,11400,10900,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,2600,2300,2400,2000,1900,2100,2000,2200,2400,1800,1600,1500,1000,1000,1000,1000,1200,2400,2500,3000,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5900,3400,4300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-14]= { 1000,1000,1000,1500,1000,1000,1000,8100,4800,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,12600,19300,18900,20600,22500,22800,21800,18100,8900,2900,1600,1600,1600,2200,3200,3100,3400,3300,3200,3100,2700,2900,3000,2900,2600,2700,2500,3600,4700,7500,4600,4100,3700,4400,7900,8600,4500,4200,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7900,10100,9900,9100,8000,7500,7500,7200,5800,5200,4800,5000,5100,5900,7000,5700,7000,8200,7600,7800,7700,7500,7600,7700,4900,4900,4900,4100,3500,1000,1000,1000,1000,1100,1000,3100,11000,10200,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1300,1400,1000,1300,1900,2000,2500,2800,2200,2200,1600,1000,1000,1000,1000,1400,2100,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-13]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,19600,21200,18200,16700,18400,16300,4600,2200,2000,1800,1600,1700,2700,2500,2800,2700,3100,3000,2600,2600,2400,2500,2400,2300,2400,2500,2100,2900,4600,4600,4300,3800,3800,4800,7400,7500,4300,3700,2400,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,7100,10400,10600,8300,7700,7500,7200,5700,5000,5500,7400,7000,7100,7500,6000,5900,7000,7900,7700,5600,8400,7300,8100,5400,5600,4500,3500,3200,1000,1000,3500,7200,3100,1000,1000,2700,5800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1600,2400,2800,2100,1900,1500,1000,1000,1000,1000,1400,2100,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,1000,1000,1000,1000,1000,1000,1000,1000,1800,1000,1000,1000,}
values["MSAtable"][-12]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,14600,20700,20800,20200,14000,9000,4800,2700,2400,2100,1900,1700,1800,2700,4200,2800,2900,2800,2800,2700,2400,2600,2600,2600,2200,2300,2500,2000,2300,3200,4100,4000,3700,3600,3900,7800,5200,5100,3000,2700,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2700,10100,9000,8200,7900,7000,7100,5500,4800,5300,6000,7100,7200,7700,5900,5600,5300,5400,8100,7200,8400,8900,8300,5200,4500,3900,4300,2000,1000,1000,9700,1000,1000,1000,1200,1000,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1500,1500,1700,1600,1200,1200,1300,1000,1000,1000,1000,1100,1600,1200,1000,1000,1000,1000,1000,1000,1000,1000,1900,3300,3500,1000,1000,1000,1000,1600,1600,1000,1000,1000,1000,1000,3600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-11]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,19500,23500,20700,9200,7900,2900,2800,2500,2200,2000,1800,1700,2300,3200,4600,2900,2700,2600,2700,2800,3000,2600,2700,2700,2600,2400,3100,2800,2500,3400,3500,3700,3700,3500,3900,3700,5200,4700,4000,3500,3200,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,8800,8500,7800,5900,5700,5800,5300,4800,4900,5200,5700,7600,7700,7700,7400,7200,7200,7200,7700,10500,9900,7700,5100,4400,4000,4100,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,5000,2100,1600,3200,4100,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,1100,1000,1000,1000,2100,4100,11400,5800,5000,4300,1000,1000,1000,1000,1000,1000,1000,1000,4400,4100,1000,1000,3600,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-10]= { 1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,4000,5100,3800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,16800,24100,18100,15900,10000,2500,2500,2500,2100,2000,2000,1800,1900,2400,2200,2200,2200,2500,2400,2600,2400,2500,2600,3100,3300,2700,2900,3200,3400,2300,3300,3000,3600,3300,3300,3400,3600,4700,4300,3900,3600,4100,4600,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,5700,7200,5400,5400,5700,5400,4900,4700,4700,4700,4700,7100,8000,8000,7600,7200,7500,8700,8300,11700,11700,8000,7400,4300,3000,3200,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3700,4200,1300,4000,3900,1000,1000,7700,9800,9300,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1900,1600,1600,1000,1700,13300,13900,14000,10200,4100,2100,1100,1000,1000,1000,1000,2100,8400,9600,4300,1000,1000,1000,1000,1000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,}
values["MSAtable"][-9]= { 1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4900,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,18900,22400,16800,10000,3800,3900,2300,2300,2100,1900,1900,1700,1700,1800,1700,1600,1800,2000,2300,2300,2300,2500,3300,3500,3200,2900,3100,3500,3600,3100,3400,2900,3200,3100,3100,3300,3200,3500,3800,3500,4500,4500,4900,4200,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,4700,7000,5300,4600,5100,5100,4500,4600,4700,4700,4800,5000,8000,8300,7600,8100,7600,9900,9000,11200,9600,9100,8400,3700,3600,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,4900,14000,9400,12600,11800,13700,10800,10200,8300,9700,8900,7600,7300,7200,11600,9700,4000,2200,2500,1300,1200,1000,1000,1000,1000,1000,1100,1100,1100,1200,1200,1300,1300,1000,1800,13900,15100,8300,1200,1200,1600,1400,1000,1000,1000,3700,4800,4400,4900,5200,4900,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,}
values["MSAtable"][-8]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,13600,17400,17300,11400,7900,3500,4100,2000,2100,2000,1800,1800,1600,1500,1400,1400,1300,1400,1700,1900,2100,2100,2500,2700,2800,2800,3000,3400,3500,3700,3200,3000,2700,3100,3000,2800,2600,2500,2800,3900,4300,4800,4900,4400,3500,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,3700,5100,5400,4700,4500,4900,4800,4300,4200,4400,4500,4600,4700,4800,5900,7200,10100,10100,10000,7700,8300,8200,9800,10400,10600,2500,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,4800,11200,9200,13200,12900,12600,12900,12100,8100,1200,1000,1100,1100,1000,2600,2100,1100,3000,1000,5000,5600,3400,3800,3700,2100,2100,1000,1000,1100,1000,1000,1100,1100,1200,1300,1300,2400,3600,4900,13000,13800,12100,1000,1000,1000,1000,1000,1000,1000,2100,3900,7700,3300,2800,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,}
values["MSAtable"][-7]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,2200,15400,15900,15900,9400,7600,3000,3400,1900,1900,1800,1800,1700,1600,1500,1400,1300,1300,1300,1500,1600,1800,2000,2300,2500,2700,2600,2900,3100,3400,4000,3500,2900,2700,3300,3000,2700,2600,2500,3500,3800,3600,3900,3800,3600,3300,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,3500,4600,4800,4700,4500,4500,4300,3800,3900,4100,4200,4200,4800,4600,3900,6000,10100,8700,7500,5900,7400,8100,7300,9700,9800,3800,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5400,11800,10300,12000,2300,7200,3600,2100,2300,1300,2100,1000,1000,1100,1100,3000,1100,1600,1000,1500,1000,1800,1000,1000,3500,3000,1800,1300,1000,1300,1000,1000,1000,1100,1200,1300,1500,10700,16000,15400,14000,15300,15400,1200,3300,5000,1400,1000,1000,5400,9300,3200,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,}
values["MSAtable"][-6]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,7800,15000,14000,14300,9600,1900,1500,1700,1700,1800,1800,1700,1600,1500,1500,1400,1300,1300,1300,1300,1300,1500,1800,2000,2400,2600,2600,2800,3000,3300,3200,3400,2200,2800,2900,2200,2400,2300,2400,3500,3900,3900,3400,3400,3400,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2700,3600,4000,4200,4100,4100,4000,3700,3700,3500,3600,3900,4000,3700,4200,5300,10500,10900,8500,5600,5500,7200,7600,8700,8600,8600,5700,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,5300,8800,7500,2900,1000,1100,1000,2600,1000,3100,1000,1500,1000,1000,1000,1000,11300,7600,7000,4300,2900,1700,1000,1000,1100,1000,1000,1000,2200,3000,3500,1300,1000,1000,1100,1200,1500,11300,14500,13800,14600,15900,16600,15400,7300,7900,8300,8300,9600,5900,1000,10900,10700,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,}
values["MSAtable"][-5]= { 1000,1000,1000,1000,1000,1100,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3500,9200,14900,13000,7400,1600,1600,1600,1700,1700,1600,1600,1600,1600,1500,1400,1400,1300,1300,1200,1200,1200,1400,1600,2000,2300,2500,2600,2800,2600,2600,2500,2300,2300,2300,2400,2400,1800,1700,2300,3900,4700,4500,4600,1800,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,3900,3700,3400,3700,3600,3300,3500,3300,3200,3300,3200,3200,3400,3300,4700,5800,10800,10200,7800,5200,5600,5400,8200,13100,9100,10100,9500,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8000,12300,9200,1300,1000,1000,1000,1000,1000,1000,1000,1000,2000,2300,1700,1000,1000,7500,3700,4500,4500,4300,1000,1000,1000,1000,1000,3000,1500,2100,4600,5600,5300,12600,16100,18300,17300,16600,17500,14800,11900,10500,9000,8000,5700,1000,1000,2900,1100,7700,9600,4300,1200,1100,1000,1100,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-4]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5600,15500,15500,7800,2000,2000,1700,1600,1600,1600,1600,1600,1500,1400,1400,1300,1300,1300,1200,1300,1300,1400,1300,1500,1800,2000,2300,2400,2400,2300,2200,2000,1800,1900,2100,1900,1400,1400,1500,4000,4300,4500,4100,1000,1000,1000,1000,1000,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,4000,3400,3500,3600,3600,3100,2600,2800,2700,3100,3100,3300,3300,3100,3400,4800,7500,12800,12600,8800,7500,7000,5800,8500,14000,16900,21300,9200,2700,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,3200,10100,10300,1600,1200,1500,2100,1700,1000,1100,1100,1100,1100,4900,5200,3400,1000,5500,11900,13200,10600,5900,2000,1000,1500,10800,7700,5800,11900,4500,1900,7300,7400,7000,14300,16200,16400,14800,14900,7800,8400,7400,4900,3100,1000,1000,1000,1000,1000,1200,5800,6000,2400,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][-3]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2500,16800,19300,8600,2300,2000,1800,1700,1600,1600,1600,1700,1500,1400,1300,1300,1300,1300,1200,1400,1600,1600,1600,1600,1500,1700,2000,1700,1700,1500,1300,1300,1300,1600,1800,1600,1300,1400,1300,1200,1300,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,3400,3600,3900,3800,3900,3500,3000,2300,2300,2400,2800,3000,3100,3100,3500,2800,5000,7000,13400,11700,8300,7700,7400,7400,8600,12700,11600,15100,7400,2200,1700,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,2100,11600,9800,1500,1200,2500,3100,2600,2300,1000,3000,3000,2300,1600,1200,8000,2100,1000,5700,12000,12000,8000,4800,1900,2300,3100,3000,3000,5400,7400,2200,1800,5700,4800,9100,1400,5100,5200,9300,8800,8500,4900,1100,1000,1000,1000,3300,2400,1500,1200,3900,3600,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,}
values["MSAtable"][-2]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,2800,1700,1000,1000,1000,1000,1000,1000,1000,1600,3800,15600,22500,8800,2400,2100,1800,1900,1900,2000,1900,2200,1500,1800,1600,1300,1300,1200,1200,1600,1900,1900,2000,2000,2100,2600,3500,3800,2100,1300,1100,1100,1200,1400,1600,1500,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,1000,1000,1100,1600,3800,4400,4300,3400,3600,3300,2500,2500,2300,2300,2600,2800,2800,2900,3300,2800,4500,5600,11900,16700,9800,7700,5200,7700,8700,10800,10400,9100,7400,2200,1400,1500,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,2100,10800,14200,3500,1700,1200,3200,1900,1000,4300,2900,5400,5000,4400,2600,2200,5200,5000,1300,1000,10200,10500,11400,10200,3900,5600,4300,4600,7100,2400,2700,2900,2700,8700,11600,10300,3800,5800,1600,2500,1100,1000,1000,1100,1100,1400,1700,2000,1600,1000,3100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1100,1000,1000,1000,1000,}
values["MSAtable"][-1]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7500,4000,3300,1000,1000,1000,1000,1000,1000,1000,1000,3200,12800,21300,17400,2300,2000,1900,2500,2300,1800,2200,3200,1900,3800,4400,2400,1400,1200,1400,1500,2100,2400,2600,2300,2400,2800,3300,3700,3000,1700,1100,1100,1200,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1000,1100,2100,3900,4100,3500,3700,3200,2600,2200,2300,2400,2300,2400,2500,2800,2900,2900,3000,4500,5600,9700,12200,9100,7100,5200,5500,9400,12100,15100,18800,7700,2400,1600,1300,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,2300,11500,8200,3700,1200,4600,1000,1000,1000,1000,2400,5300,7500,9500,7100,5500,4900,3500,1900,1000,8600,7800,7500,8700,7000,1000,1000,1000,8800,4000,2200,4800,4200,10100,10000,2100,4200,2300,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1000,1000,1300,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][0]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7600,3100,1200,1000,1000,1000,1000,1000,1000,1000,1000,2900,4300,21800,21700,13500,2100,2000,3200,3200,2600,3300,2400,2500,2700,11300,10500,3800,7800,2300,1600,2300,3100,3500,3200,2700,3100,3000,3100,2900,2300,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8300,1000,1000,2000,4300,4300,3600,4500,3500,2900,2400,2100,2300,2300,2400,2600,2800,3000,2900,3800,4200,4500,7500,18600,14600,7300,5800,5500,12700,11500,10500,13300,7800,2300,1700,1300,1300,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,1300,11500,9700,2700,1300,2000,1800,1000,1400,1900,3100,7100,5600,4800,5500,8100,8200,7400,5700,3000,3000,4300,11400,9300,8700,8200,7800,1000,1500,7600,5400,1300,1900,1200,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][1]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,10800,15700,15700,11100,2300,2200,3700,2600,2700,2600,4200,3100,4400,9600,8300,8800,8000,8500,4000,4700,4600,3800,2900,3200,3300,3100,3100,2500,1700,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,1000,4700,5000,4500,4100,4400,3800,3300,2700,2300,2200,2400,2500,2700,2800,2900,3000,3000,3600,4600,4900,7100,9900,5800,5500,5400,16200,13600,10600,10500,3500,2100,2200,2100,1800,1700,1600,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,7500,8600,1700,1300,2400,3100,2100,1000,1000,2200,2200,7400,5300,5200,7700,8500,9200,9300,8900,5200,3400,1000,9400,7600,3300,1000,7900,8500,2200,7100,5700,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][2]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,14600,19600,15200,13900,5400,3100,3000,2700,4000,3900,2100,2300,5000,7300,5700,7000,5900,4600,3700,3600,3100,4000,3800,3500,3400,2600,2600,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,4500,4500,4100,4000,3700,3400,3000,2800,2500,2600,2700,2700,2900,2900,3000,3400,3600,4600,5800,5800,10000,8100,5300,8300,12000,11100,11300,7500,5600,4700,3600,4000,3000,2600,2800,1900,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,2900,4600,10000,9500,1300,4000,5100,4300,4300,2500,2500,1500,2000,2800,1000,1600,4500,8600,8300,9200,8600,4100,1300,1000,1000,1000,1000,1000,1000,7900,1000,3700,4900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][3]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,9300,16100,17000,15800,12300,2000,1900,2100,3500,2100,3000,7300,11300,8200,5700,7000,4700,3600,4500,4000,4100,5000,3700,3400,3700,3200,2400,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,11900,2300,4600,5200,4200,4200,4000,3700,3300,3200,2900,3000,3000,3100,2900,3000,3100,3800,4100,3800,4700,5900,7200,7200,12400,11900,10900,9500,4000,7200,8200,7000,4300,4000,3300,3500,3200,2000,2000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8700,13300,9900,2600,1400,8300,8900,4100,1000,2600,2800,2300,4200,1000,1000,1000,1700,5100,7100,9900,7700,3000,1000,1000,1000,1000,1000,1000,1000,5300,2500,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][4]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,14900,19300,15600,15000,9000,1800,1700,1700,1600,8500,8400,8600,9800,5800,5200,7200,8700,7600,4300,3700,4400,3400,3300,3100,2600,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1900,2500,2200,1300,1000,1000,1500,1500,1000,1000,1000,1000,1000,1000,1100,2400,2000,2800,15200,5600,4400,4400,4000,3900,3800,3700,3500,3300,3200,3300,3300,3400,3200,3200,3500,3600,3600,4100,4700,7300,4900,10600,11100,8600,7700,7700,9300,10100,5900,5400,5100,2600,3400,3300,2500,1900,2300,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7700,11700,12100,1400,1000,7400,9100,9100,3500,1000,1000,1000,1900,2400,1000,1000,1000,1000,2500,9800,9100,7900,5900,3900,1400,1000,1000,1000,1000,1000,1800,3100,1500,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][5]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,4900,15500,15100,14400,15200,15500,4100,1500,1500,1600,8700,9800,9700,6000,7800,11500,10600,11400,8700,3600,1400,1300,2200,2400,2200,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2400,3500,2700,2500,2700,1700,2200,2500,2600,3400,1800,1000,1000,1000,1100,1300,1900,2400,4700,9800,11000,7100,4500,4400,4600,4600,4200,3500,3300,3300,3400,3300,3500,3500,3400,3600,3600,3800,3600,3900,4200,4300,3100,3900,5700,8500,13100,12700,10700,9300,7200,5300,5300,3300,3000,2800,2200,2300,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9500,9600,2300,1000,1000,8000,9100,6000,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,5700,10600,5900,3600,2800,3600,2400,1000,1000,5600,7600,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1100,1000,1000,1000,1000,2800,2700,1000,1000,1000,1000,1100,1100,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][6]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4700,14900,13000,8000,14700,19200,13200,1500,1400,1400,3400,8800,7900,5000,5200,8200,7200,5700,2700,2200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,3000,3000,3100,3600,2300,3100,3000,2700,3500,3400,3800,4200,1800,1600,1600,2300,2400,2500,2900,5300,8700,11800,8600,7100,5600,5600,5500,4600,3400,3200,3400,3600,3700,3500,3800,3900,3700,3900,3600,3400,2900,2800,2500,2500,4000,9600,10800,13100,13600,12900,16400,12900,7800,5300,4100,4000,3400,2600,2200,1900,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1300,10200,8700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1000,1000,1000,1000,1000,3800,4000,5200,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,15300,4800,1700,1000,3100,3900,4300,3400,8600,11600,7300,1000,1000,1000,1000,1000,1000,1000,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1100,3600,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][7]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,3200,7100,1100,6000,7600,13000,14200,8500,13800,16200,14500,1900,1400,1300,2700,4300,5000,3800,3600,3300,3600,3100,2400,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,3200,3600,4000,7700,5500,3000,2800,2500,2900,3400,3600,1900,4200,3700,2600,2500,3500,4500,3200,2700,2100,4700,7000,9900,9800,8200,8300,5400,4000,3100,2800,3100,3400,3700,3900,4100,4200,4200,3700,3200,2900,2500,2400,2400,2400,2500,9400,11200,13000,13000,13600,15800,10900,9100,5500,4700,4700,3700,3500,3500,3500,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,10300,7100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,1000,1000,1000,1000,2700,5300,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,2800,2000,1000,1000,5300,5400,6000,11400,10700,10600,1000,1000,1000,1000,1000,1000,1000,1800,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1100,1000,1000,1000,2500,1100,1000,1000,1000,1000,1100,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][8]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7500,13300,10300,8300,4300,5700,8100,4800,4300,9400,11500,13900,17900,18000,3400,2300,1500,1900,2300,2200,1900,3400,3400,2100,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,2600,3800,7600,5700,7400,4400,3700,3100,3200,3300,3400,2400,1800,3900,3100,3000,3000,3200,3200,3200,4100,4100,3800,2700,7500,8000,8400,5400,5200,3100,2800,2400,2700,3900,3800,4600,4800,5100,4300,3600,2900,2500,2400,2400,2400,2400,2700,12600,10500,10500,13100,13800,13700,12100,9900,7900,7500,5500,4400,4300,4500,3800,3700,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,2400,8000,1200,1300,3500,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2000,1000,1000,1000,1800,5500,7800,1600,1000,1000,1000,2000,1200,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,8800,1500,1000,1000,1000,4900,9600,11600,10100,3900,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1100,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][9]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4300,10200,14500,13000,1600,2500,4300,3600,3200,1800,3700,2100,11800,13500,8700,15500,10400,7800,8200,7500,4600,8000,7500,1300,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4200,4900,8300,5000,5200,5800,4000,3800,3000,3100,2900,2500,2600,2000,3400,3800,2900,2800,2500,2400,3000,4200,7300,7700,4000,4600,4700,4800,3300,3100,2800,3300,2900,2500,2700,3100,4600,5500,4300,4200,3200,2600,2400,2400,2900,2500,2300,4900,10300,10200,12300,12500,13600,14200,11900,13100,11900,8400,8400,8600,7300,5400,4500,4300,3400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5900,8500,2200,1100,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1000,1000,1000,1000,2100,5500,3600,3000,1000,1200,1600,2300,1100,1100,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,4800,7600,1100,1000,1200,4700,8000,7300,8200,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1100,1100,1100,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][10]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8600,11500,12900,1000,1000,1000,1000,1000,1000,1000,2700,10000,20600,13700,2100,8800,7300,8400,10000,11000,4300,10000,10500,5100,4200,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2400,4500,5700,4700,4300,3600,2800,3300,3200,3500,3300,2900,2500,2500,2700,2700,3200,2800,2700,2700,2900,3500,3900,7200,5700,3300,3900,5000,5800,4600,2200,2100,3700,4200,3200,2500,2500,3300,3300,3500,2700,2500,2500,2900,3800,4700,3700,2500,3800,8400,10500,11700,15400,14800,16000,8900,5400,8200,8000,7500,8500,8100,10000,8600,7900,7000,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1400,8800,10800,5400,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1000,1000,1000,1000,2700,3500,3600,1000,1000,1200,4300,4500,2900,1300,3800,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,7100,5800,2000,2300,7200,9900,4800,4300,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1100,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][11]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4100,7300,3400,2100,1000,1000,1000,1000,1000,1000,1000,1000,11300,13500,5300,3100,3200,5900,3000,1000,1400,1000,3400,3900,1000,1100,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1200,1900,4300,5600,4400,4100,3900,2700,2800,3000,3500,3300,2900,2500,2400,2500,2400,2600,2300,2200,2200,3100,3800,3700,4600,4800,3600,3000,2900,5400,4000,2100,2100,4400,7200,4100,3500,3500,4400,4400,3700,3100,2800,2800,3500,4600,5400,5800,2800,5000,5900,10100,11700,13600,15500,15900,9300,5600,7800,5000,1000,1000,1000,4300,8300,8900,5900,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,8600,10600,7900,7400,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,1300,1000,1000,1000,2500,3700,5000,1000,1000,4300,6000,5900,1500,4200,7400,8400,5000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,2800,3900,8800,3600,5400,3600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1100,1100,1100,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][12]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7500,7300,5800,3300,1700,1200,1300,1000,1000,1000,1000,1000,1000,1000,1000,1600,3600,1300,2100,1600,1000,1000,1000,1000,1000,1000,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1200,1500,2600,7000,4000,3800,3600,3600,2900,2600,2600,2700,2700,2800,2600,2500,2300,2100,2100,1900,2300,2400,3400,3300,3000,2400,2300,2300,2200,2100,2200,2000,2700,2700,5400,4000,3500,4300,5300,5800,11800,4800,3400,2900,3300,4300,5600,5600,2900,3600,3300,4900,9500,12400,13800,15900,9100,7100,8500,4400,3600,2700,1000,1000,1000,1000,1000,1000,2800,5100,5900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,7600,5300,5900,5400,4500,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,2200,1000,1000,1000,2700,4200,5900,2000,4300,7400,7700,7900,3200,2800,7200,9900,7500,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,5900,9600,8700,3700,7100,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][13]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,5800,9700,9100,8500,8900,7700,4900,1700,1000,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4900,3100,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1200,1300,1300,2200,2900,2800,3000,3000,2800,2400,2100,2600,2700,2600,2700,2500,2300,2200,1900,2000,2200,2500,2700,2700,2800,3100,3000,2300,2200,2000,2100,2100,2200,2100,2200,2600,4100,4700,4800,5300,11800,5200,3800,3900,3600,3600,3500,2800,2600,3200,3200,3800,5400,12800,16800,12800,7700,9100,3800,10600,12100,10200,8900,5200,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5200,8200,5200,5800,5500,4800,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,3400,3300,1000,1000,1900,8600,5000,2000,3600,7200,2400,3100,2900,2600,3900,7100,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,10400,10000,4800,10000,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][14]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5600,14300,15000,10900,11300,9900,9200,9700,4700,2300,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5500,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,11100,3100,1000,1000,1000,1000,1000,1500,1500,1200,1200,1300,1500,2300,2800,2500,2500,2500,2100,2100,2500,3600,3900,2400,2600,2300,2100,2100,2100,2300,3200,3500,2600,3100,3100,3000,2400,2300,2300,2300,2300,2100,2100,2200,2400,4000,5300,5000,4900,7500,7800,5700,3900,3900,4200,4300,3100,2700,2800,3300,3300,5600,7900,11400,12800,5100,5400,3000,11500,12600,9600,10000,8400,9100,5700,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3700,4300,4800,4600,4200,4600,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1000,1000,1000,3600,6000,5100,3100,5400,4100,2800,3500,5700,5900,9700,9400,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5500,9100,5900,1700,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][15]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,10000,3400,1000,9800,15300,15800,11600,11800,9400,9500,10000,8300,4500,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8100,5200,1300,1000,1000,1000,1000,1100,1300,1200,1200,1400,2000,2400,2500,2400,2200,2000,2200,2300,2100,3500,4500,4500,2500,2200,2300,2300,2300,2400,3300,3200,2800,2900,2800,2600,3100,2400,2400,2400,2300,2100,2000,2200,2400,3100,5300,4600,4500,4600,5000,8600,4300,3600,3500,4700,3400,2700,3000,3000,3000,5700,8400,10600,11400,1900,1800,1600,14000,13500,10100,5200,7300,7100,8600,7400,5900,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,4400,4200,4600,3300,4200,3900,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1100,1000,4200,7900,8300,3100,4300,4100,1700,2100,5200,7800,10500,9800,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,8700,8300,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][16]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,7000,9300,11800,14200,11300,9500,10000,11500,10000,3400,4700,4500,1000,1700,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,5800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7600,5200,1000,2300,1000,1000,1000,1000,1000,1100,1200,1300,1500,2400,3100,2500,2100,1900,2400,2300,2100,2400,2800,2400,2400,2300,2300,2700,2800,2500,2500,2600,2900,2900,3300,3000,2700,3300,2600,2700,2400,2200,2100,2000,2200,2300,2700,4300,5200,4900,3900,4200,4200,3800,3000,3200,3600,3300,3000,2900,2500,3400,5500,8600,10800,2100,1100,1200,2800,11300,10600,9200,4800,5500,4900,5300,4900,4300,5600,5500,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,4400,3500,3200,3300,3900,4000,2800,1700,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,1200,1200,4000,8500,8900,5700,7900,4400,3000,3100,3700,8500,8700,5400,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1700,11500,9600,7300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3600,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][17]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,11300,13600,11800,11800,13000,13100,12600,5700,10000,10100,8300,3000,2600,4300,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,3700,5000,1000,1000,1000,1000,4800,1000,1000,1000,2000,2000,2600,2100,3800,4300,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8500,4200,1000,1000,1000,1000,1000,1000,1000,1100,1300,1300,1400,2500,3100,2400,2000,2100,2200,2200,2100,2100,2000,2500,2100,2200,2300,2600,2800,2600,2300,2400,2700,3400,8500,4800,2900,2700,2900,2800,2700,2600,2300,2300,2200,2300,3100,4800,5400,5000,3800,3100,3200,3700,2800,2800,3000,3000,3300,3100,3000,4300,5500,10700,11000,1200,1000,2100,10400,11800,9400,5500,4200,4100,4100,4000,4500,4600,4200,5100,7800,7200,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5700,5000,3600,3300,3400,3300,2900,3600,5400,7200,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5000,2600,3600,7800,8700,5500,8000,8900,4200,3200,4100,8600,7300,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,10400,10800,8000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][18]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,1000,1000,3000,4400,1000,1000,1000,1000,1000,3100,10800,11400,10900,11200,11800,15600,17000,12800,7500,7400,1100,1100,1300,1900,2200,1800,1100,1000,1000,1000,1000,1000,1000,1000,1000,3600,4200,9400,1300,9700,8200,10100,10800,11300,3000,3200,3400,5300,4400,2700,2400,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1200,1300,1700,2300,3200,2900,2400,2300,2300,2200,2200,2100,2000,2100,2300,2700,3500,3700,3300,2700,2500,2500,2400,4000,8200,7200,3600,2900,3000,2900,2800,2700,2700,3000,3300,3200,3000,3600,4300,4600,3700,3000,3400,3600,2800,2600,2400,2400,4100,3800,3600,7100,7800,7600,3500,1000,1000,5700,11800,11400,8100,4700,3800,3400,3100,2700,3100,2900,2900,2400,2200,2300,1800,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,5700,5200,3900,3500,3200,3200,3100,4100,5200,7500,7100,5900,1000,1000,1000,1000,1000,1000,1000,1000,1900,5500,3600,8500,10600,10400,8500,7600,7700,8500,11200,8700,9500,4000,1000,5300,7900,5100,1000,1000,1000,1000,1000,1000,1000,1000,1000,9700,6000,4800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][19]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,15800,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1000,1000,1000,1000,4300,11500,15900,14600,13300,13900,17200,19700,20000,10800,1200,1000,1000,1000,1100,1700,2000,1600,1100,1000,1000,1000,1000,1000,1100,1100,1200,1000,5200,8500,4600,2300,3900,7800,12100,12100,2900,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1400,2400,2500,2800,2500,2600,2400,2400,2300,2200,2100,2100,2000,2100,2200,2800,2800,3600,4000,3200,3100,3200,2800,3900,8500,7200,2900,3000,2900,2900,2900,3500,3700,7700,13300,4500,2900,3600,3800,3900,3600,3400,3500,3500,2600,2300,2600,3100,3200,3500,4000,5200,7600,4300,1000,1000,4700,10100,10900,8000,7400,4500,3700,3200,2700,2400,2200,2200,2300,2200,1800,1800,1700,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,5900,4800,4100,3200,3000,3200,3200,4200,4300,4800,5900,5900,3600,1100,1000,1000,1000,1000,1000,2000,3100,7500,2900,8600,9000,9100,8600,7900,8800,10000,10600,10900,7100,1200,1000,3200,7900,5000,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,4500,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][20]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,12000,7500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,10600,10900,11700,10700,11300,13000,12900,12400,10300,3500,1000,1000,1000,1000,1000,1400,1700,1200,1100,1100,1000,1000,1000,1000,1000,1000,1000,1200,4700,7700,5100,4900,1100,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1300,1800,2300,3400,3600,2900,2400,2500,2400,2300,2200,2100,2100,2100,2100,2300,2600,3400,3700,4000,4100,3600,3600,3200,4100,8300,4600,2800,2900,3500,3500,3000,4500,11000,12000,12400,7500,3500,3100,3500,3600,3800,3900,3400,3100,2800,2600,3300,4900,3500,3900,4200,4500,9000,3100,1000,3600,10700,10500,7800,5400,5100,4100,3400,2700,2400,2200,2000,1800,1700,1900,1800,1700,1600,1700,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1700,2800,6000,5500,4100,3400,2900,2700,2500,3400,3800,4300,4800,5000,3700,2200,1100,1000,1000,1000,1000,3900,8900,8500,5900,8400,10200,8500,9600,8700,8600,8000,9400,8800,7400,2000,2400,1000,1600,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,4300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][21]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,4200,5000,4100,5900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,7400,11100,11200,11200,11700,10900,12400,8300,5300,1000,1000,1000,1000,1000,1000,1100,1100,1100,1100,1100,1000,1100,1200,2000,1000,4700,4100,1600,2100,2000,2100,1000,1100,1100,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1500,2500,2600,2900,3000,3100,2900,2400,2400,2300,2200,2100,2200,2200,2200,2200,2400,2600,2800,3600,3700,4100,3900,4600,4000,4100,3700,3200,3900,4100,3900,4200,4700,12800,11400,12200,9700,3500,3300,3300,3600,8200,8200,4100,2700,2400,2600,3200,3500,3700,3700,4800,8000,9100,1800,1100,4200,10500,7600,7300,5500,5500,4300,3900,2700,2200,2100,1800,1700,1600,1800,1900,1800,1700,1800,2100,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,4500,2900,2000,4400,5200,4500,4000,4800,4100,3300,3700,3900,3400,3300,3700,4900,4900,1200,1100,1100,1100,1300,4900,12000,10000,2800,9700,10000,9500,9600,10300,8500,8000,10100,11700,7200,5900,5900,5400,3200,2400,5300,3500,2400,2200,1000,1000,1000,1000,1000,2100,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][22]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,7200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,2700,1000,1000,1400,9200,11900,11700,12000,11800,11100,8700,3700,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,3300,2800,2000,4300,3500,2400,1200,1000,1100,1200,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,2300,3300,3000,4000,2700,2300,2300,2200,2200,2300,2200,2100,2200,2200,2200,2300,2300,3200,4000,3300,5900,8900,7900,5500,5600,4400,5000,5000,4600,4000,4300,5100,5100,5700,8200,9400,3900,3500,3100,3500,5500,5200,4300,2700,2100,2100,2400,2500,3100,3900,5400,7600,8100,1000,1400,7300,7800,5800,5000,5100,5900,4400,4700,3200,2200,1800,1800,1500,1500,1900,1900,1700,4400,7700,8200,9200,1000,1000,1000,1000,1000,1000,1000,1000,1100,2100,1900,2100,1300,3700,3600,3800,3500,3900,5300,4400,4100,4800,4600,4800,4300,4100,4000,1400,1200,1100,1100,2800,7500,11000,5400,2600,9400,8700,10700,10500,10200,9500,12000,12200,10900,9300,4800,4400,4200,4600,5100,7500,5000,3900,5100,4500,1800,1000,1000,1000,11800,11600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][23]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8400,8800,1000,1100,10300,11600,12900,12200,11300,11000,12400,13700,5700,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2000,2200,1100,1100,1000,1100,1100,1200,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,2000,2400,2800,2900,2800,2800,1900,2200,2200,2300,2400,2300,2200,2200,2200,2200,2300,2800,4700,4700,8000,11400,9600,8200,7400,7100,5600,5300,4300,3700,4000,4600,3600,3100,4400,4500,4000,3200,3200,3100,3400,4600,4600,3700,2400,2300,2100,2500,2600,4000,4700,5700,1600,1000,5300,9700,7800,6000,5200,5400,5900,5400,4900,3200,2600,1900,1700,1400,1600,1700,1600,4100,10700,11700,8400,6000,1000,1000,1000,1000,1000,1000,1000,1000,1800,2500,1900,1300,2600,3200,3000,3000,3000,3100,3400,3500,4200,4700,4400,5000,4800,4400,5500,1900,1200,1200,1100,2600,8200,10800,7500,5100,8300,9700,10600,12500,13200,11400,11600,11700,10000,8300,7300,4300,7700,5300,8300,5100,5300,4900,5100,5300,5800,4600,1000,1200,14900,14400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][24]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,2900,5100,3500,1100,3700,11800,12500,11900,10900,11000,12400,14200,12800,5800,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1200,1100,1100,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2100,2800,2800,2600,2400,2100,2800,2500,2300,2300,2400,2300,2200,2100,2100,2300,3300,5200,5600,7400,9500,9800,8000,9100,8200,7300,5100,4300,3500,3300,3700,3400,2800,2700,3400,3300,3000,3200,3200,3600,4100,4100,3500,2700,2700,2300,2700,2900,3200,7800,8400,1000,8300,9500,9400,5000,5000,5600,5300,5200,4600,4700,3400,2700,2100,1800,1400,1400,1500,1600,4800,7200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1700,2000,1200,1400,2100,1500,7600,5300,3000,2900,2700,2900,3100,2900,3200,3300,3200,3100,3200,3700,3400,2900,1200,1200,1100,2400,5100,9600,9400,7500,7100,11200,11800,13500,12900,12300,11200,10500,10000,8300,8700,5400,5500,5000,7900,8000,8100,8000,5600,5900,7100,7000,4800,1300,10000,14700,1600,2500,2700,1400,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][25]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,5400,3800,3000,4300,12800,12400,12400,11100,12200,11500,13300,14100,8700,2000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1200,1100,1100,1100,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,2000,2900,2900,2800,2500,2800,2500,2900,2800,2600,2400,2700,2600,2000,2200,2600,3600,5500,7900,8800,7600,8800,8900,7800,5300,4800,4300,3600,3100,3700,3700,3500,2600,2500,2400,2100,2900,3200,3100,3100,3100,2800,2600,3000,2900,2700,3500,3900,5700,1000,1400,7500,7000,8800,8300,5300,5300,5100,3900,4300,4100,3400,2600,2100,1600,1300,1100,1000,1200,2300,8700,4000,3300,4300,4900,2900,4100,5200,5700,5100,4800,4500,1700,1400,2400,3100,4100,5200,3800,3000,2700,2800,2700,2200,2400,2500,1700,1900,1500,2200,2600,2500,1200,1500,5600,8400,7600,11300,12200,14500,9400,12100,14300,13900,15400,12200,12700,12800,11000,8500,7500,7400,8300,8800,8800,8500,8400,8600,8700,5700,7900,7700,8000,4600,1000,4600,1400,2100,1000,1000,1000,1000,1000,1000,1000,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][26]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2800,7700,7300,1000,7200,9500,11400,12700,12100,9000,9900,9800,10600,10600,6000,1800,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1200,1000,1100,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1800,2600,2900,3000,2900,2600,2700,2700,3200,3300,3100,2700,2300,2200,2300,2200,2200,4400,5700,7800,5700,5700,5200,4800,3600,4400,4000,3100,2700,2800,3400,4100,2700,2100,2000,1800,2000,2700,2500,2300,2300,2300,2500,2700,2700,2600,3100,8800,3200,1500,4900,8800,7200,7400,7100,5600,5900,4100,3600,3600,3200,2800,2200,1800,1400,1100,1000,5000,5900,4000,7900,9000,9100,8300,8800,8400,7600,5900,7300,8800,8600,7700,1300,1400,2200,2200,2300,2500,3900,3100,3000,2400,2200,1600,1500,1500,1400,1400,1300,2200,8900,9900,10600,15300,10800,10500,9200,5500,10800,13300,11000,13200,16200,16700,14900,13900,16000,15100,11500,9600,7700,8300,9100,7200,8900,8100,5600,8700,8900,5700,8000,7300,7300,5900,4100,1000,1000,1000,1000,1000,2000,2400,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][27]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,4000,7200,8400,2100,4200,8800,11200,11700,11200,9700,9500,10000,11800,9200,8300,1900,2000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1400,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5900,5500,1000,8400,1000,1400,2400,2700,3000,2900,2700,2500,2500,2700,3000,2900,2700,2400,2200,2400,3000,3300,3700,3200,3500,4200,3100,3100,3200,3100,3100,3000,3300,3800,2900,3900,4500,2700,2000,1900,1600,1800,1800,1800,2100,2100,2200,2000,2100,1900,3000,5300,8000,5400,9500,9000,8000,5500,5800,5700,7000,5900,3600,3200,3000,2500,2300,1900,1200,1000,3800,7400,9100,9200,10700,12600,8800,5600,8000,8900,10900,10500,8900,7900,9500,10000,9400,1500,1400,1800,1900,2100,2200,3300,4400,3500,2200,1800,1600,1600,2500,7900,9400,9700,16500,31000,29600,30100,25300,21400,22600,25100,14700,11300,9400,16700,17800,17600,17200,20300,16300,15900,15200,10900,9600,8100,7000,10400,5600,8300,5900,5200,5500,8300,5300,7300,9000,7900,8300,5200,2200,1000,1000,1000,1000,1000,1900,3100,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][28]= { 1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4300,1000,1000,4900,3800,7800,4700,3700,4800,9300,11300,12100,11200,9400,8900,10600,10900,8100,3400,1900,1700,1600,1200,1100,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1300,1300,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,9900,14100,7800,3600,3200,1600,2600,4100,4800,4400,3200,3300,3000,3300,3600,3400,2900,2400,2400,3000,3400,3400,3200,3000,2700,2900,3200,3400,3400,3500,3300,4600,4600,3900,3000,2700,2400,2100,1900,1600,2000,1900,2000,1700,1700,1800,2200,2000,1900,3500,5900,10600,9900,10100,5400,5300,4700,4500,5000,4500,3700,3500,3000,2500,2300,2000,1600,1000,1100,8400,12400,11300,12200,11600,14600,13400,14300,11800,13300,14800,9600,4900,10300,11500,11800,9700,4600,4200,1500,1500,1800,2000,2200,3400,3100,2100,1800,1800,8500,15400,21400,28800,28600,28200,29100,24300,24300,25300,26800,24100,24400,22000,18500,16100,19400,21600,24000,19600,21700,19300,18200,15200,9300,8000,8400,9200,7900,5600,5600,7300,3900,7200,7800,5300,2800,8200,7600,7300,5900,4600,1400,1000,1000,1000,1000,1000,2400,3300,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][29]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5200,1000,1000,4500,7400,5000,4300,4900,9100,9800,11200,11900,11500,9500,9800,9700,10900,8500,3400,3400,3000,2100,1600,1300,1200,1100,1100,1200,1100,1100,1000,1000,1000,1100,1100,1100,1300,1300,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,1000,1000,5100,9700,9500,7400,5800,4300,3500,4000,3900,3500,2800,2600,2900,2900,3000,3100,2800,2600,2700,3000,3200,3300,3300,3200,3100,3100,3100,3100,2400,2200,1800,1500,1300,1600,1500,1500,1700,1700,1400,1800,2100,2100,3900,5200,7400,7000,8000,5300,5500,4500,4500,3800,3600,3400,3000,2600,2300,2100,1900,1500,1000,4500,11900,12200,12700,12000,12800,16300,16700,10100,9800,10300,10000,9500,9700,9200,8800,12700,11900,8800,8700,8300,1500,1600,1800,1700,1800,1900,2000,10800,11000,24200,25000,24500,22900,25300,22900,23000,22200,22600,23200,25100,20700,21400,21500,25600,27400,24600,22400,22700,22300,18800,26600,21900,13400,3900,4300,5200,9300,8400,8300,8200,4700,2200,5900,7300,6000,5700,7300,5900,5300,4900,4600,2700,1000,1000,1000,1000,1000,1000,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][30]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,11900,5100,1100,5300,7400,10100,10600,10900,10400,9300,9500,10200,9500,7400,4000,3600,3400,3200,2300,1700,1500,1500,1500,1300,1400,1400,1400,1400,1400,1400,1400,1400,1300,1200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1000,1000,1000,1000,1000,8300,13800,12700,9300,9200,4400,4000,3500,3600,3300,3200,3000,3000,2800,2000,2400,2100,2400,2900,2600,3000,3100,3400,3300,2600,2200,2300,1900,1900,1300,1500,1400,1500,1500,1700,1800,1800,1900,1800,1700,1700,2400,3500,4500,4400,7700,4600,4300,3900,4500,3700,3200,2700,2400,2300,2000,1700,1500,1100,3600,13400,16400,14800,13300,12900,13200,13100,15800,4000,8500,9900,3000,3600,5300,4900,5400,12800,13700,12500,9700,10000,1500,1600,1700,1800,1900,8300,13900,24500,27600,25400,27200,23800,23500,22700,22800,23600,21800,23000,21900,25500,22900,21300,24600,23900,22900,20900,20700,19200,21200,18800,21000,21200,18900,4400,3000,7500,5200,8300,9000,9400,5700,2300,2300,3500,5100,7700,7600,7900,7200,3500,2400,2600,1000,1000,1000,1000,1000,1000,3000,8300,1800,1000,1000,1000,1000,1000,1000,1000,1000,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][31]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7500,11200,4300,4900,5400,9000,11400,11800,10500,9600,9100,9000,10600,5200,4400,4000,3700,3400,3000,2400,1700,1800,1700,1600,1400,1500,1600,1600,1600,1600,1700,1700,1600,1600,1400,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7500,13700,15600,15300,13000,9800,5000,5800,8400,3900,3600,3300,3300,3300,2300,1800,1900,2000,2200,2500,3200,3300,4000,4100,2200,1500,1300,1300,1000,1100,2600,2000,1700,1700,1700,1800,1800,1800,1300,1200,1100,1100,1200,1600,3800,5200,4200,4300,4700,4200,3700,3100,2300,2200,1900,1300,1100,1800,1800,9100,15100,16000,12600,13500,15200,11800,13500,11700,7400,10900,9700,3800,4700,5300,7900,10600,10500,12000,11600,12900,12100,1600,2600,1700,1900,3400,13500,22500,24100,24700,22500,23700,22700,23800,21800,24100,22700,22000,21700,20600,20800,21300,20800,21100,22600,21600,19900,19300,20200,22200,20900,19800,22400,21200,14500,4400,5800,7600,10700,11300,12100,8400,4400,3900,3800,7600,7700,2800,2500,2900,2100,1300,1000,1000,1000,1000,1000,1000,1300,2900,7500,4600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][32]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,2500,8500,8100,4000,4300,5700,8400,11100,12700,11000,12000,10800,11700,9400,5500,4700,4100,3800,3500,2900,2400,1900,1800,1700,1500,1600,1300,1600,1700,1700,1700,2100,2000,2400,1700,1500,1400,1200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7400,8100,1000,1000,1000,1000,1000,1000,2900,3200,3900,12200,13500,14200,10900,8300,9100,9300,8500,4200,3800,3600,2900,1900,1700,1800,1900,2700,3100,1900,3900,4000,2200,1300,1000,1000,1000,1000,3300,3900,3700,1700,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,5100,7900,5100,4000,4100,3700,3100,2300,1800,1400,1200,7300,9200,10700,15300,15600,12400,12900,11000,12300,9700,8700,11700,10400,11000,10300,8800,10200,14300,14300,11600,15800,14300,12800,13500,8800,6000,5000,4600,7600,16200,23000,23700,24100,23200,23900,23900,21900,22300,21200,21300,22100,22600,21200,20500,20400,21700,21500,21000,21100,20800,20200,19600,22300,18500,18400,17600,18900,20200,18100,11000,10100,10200,10300,11500,7900,7100,2900,4700,2200,2300,1800,2200,2400,2400,1300,1100,1000,1000,1000,1000,1000,1000,2400,2900,7300,7700,3800,2400,1000,1000,1000,1000,1000,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][33]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,2500,3100,7700,12700,7300,5800,7600,5600,9500,10100,13400,12900,12700,10900,13900,7200,5700,5100,4500,4000,2800,2500,2300,1900,1700,1600,1700,1500,1400,1400,1700,1700,1800,2900,3400,2800,2200,1800,1700,1500,1200,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,1000,1000,1000,1000,1000,1000,1000,1800,3500,5400,9900,12400,12900,8000,7900,7900,7800,8600,7500,4500,3400,2200,1400,1600,1600,2900,3300,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,11200,10200,5600,3800,3700,3500,2800,2200,1400,1300,7300,11100,11400,13900,15300,14400,14600,12000,9600,9900,8600,8900,11600,11100,11300,11300,8400,12800,14500,15600,15000,16200,17700,15700,15200,16900,9800,5300,13100,17400,21300,25400,23000,24000,23400,22200,22800,23000,22200,21800,22600,22500,22000,22600,23200,23300,23500,22000,20700,21100,20900,19700,19200,19400,19200,18500,19600,15900,17000,16500,11000,10600,14300,11800,10400,8700,9100,9000,3800,1400,1200,2200,2000,1500,1100,1100,1000,1000,1000,1000,1000,8300,1000,1400,3500,5000,7800,7100,8300,8400,5300,4200,1000,1000,3800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][34]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5800,10800,10000,12000,13500,9100,7300,9500,9900,10500,9900,12100,12200,12200,12000,10600,7900,7400,5400,4800,4000,3400,3500,2500,2300,3100,3700,3300,2800,1400,1400,1800,1900,2200,2900,3300,5200,7000,3100,1900,1800,1500,1300,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,7600,10000,8600,7600,8000,5900,5400,7600,7600,6000,7400,4500,8100,5700,5900,4800,1900,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,3200,4900,1800,1000,1000,1000,1000,1000,8400,7000,1500,9900,12100,5900,5500,3300,2600,2300,2100,2700,3300,9300,13000,13100,13700,12400,12800,10700,9400,5700,7500,7500,8400,8900,11300,10200,10500,8800,12700,13700,13400,14300,16800,18600,17800,17500,16800,12500,13000,18300,18800,22100,25200,27100,24600,24100,23600,23100,23000,22100,22000,23200,22000,20700,20500,22500,21400,20800,20200,20500,19700,20100,19000,19200,19200,22600,18100,17600,16600,17000,14900,10900,10900,12800,9000,10600,9800,8800,5900,5800,1400,1300,2200,2800,2200,3000,1000,1000,1000,1000,1000,2800,3500,3700,3600,3100,3000,5100,5400,4800,4700,8200,7500,4100,5500,5500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][35]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4700,5900,7100,11900,10400,8100,10400,9100,10200,11300,14600,9200,10600,11200,13300,13300,15000,10400,7600,5400,4800,4400,3600,3000,2500,2200,2800,3600,3800,3200,2500,1500,1700,1900,2200,2900,3500,7400,8600,8600,5300,2700,2200,1600,1300,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,9000,8900,5900,4000,4700,4400,5000,8400,7900,7000,8100,9100,9600,8400,7600,5500,1800,1200,1600,1000,1800,1000,1000,1000,1000,1000,1000,1000,1000,9000,10000,9000,4000,4900,1000,1000,1000,1000,5500,4300,2200,7600,7100,4200,4600,3800,2300,2200,2100,3800,5700,10400,12800,12600,11200,11800,11000,14900,20300,14200,9500,9900,9300,11200,11700,11200,11600,7600,5000,12000,13400,14400,15900,15600,18500,19700,22600,22500,22500,20500,28600,25800,30200,26600,23800,24000,25500,24500,24700,21200,19700,22800,20300,20300,21700,22500,23200,21200,20900,21400,22200,20700,20000,19900,19500,19400,16900,18300,17200,16200,13900,10000,11600,7300,8000,7700,7800,9600,8600,7800,4100,1200,2600,4700,4200,3200,3200,1000,1000,1000,1000,1300,4200,8200,5600,5000,1000,1000,5100,7500,5900,4900,7500,12000,14300,7700,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][36]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,7800,7200,10200,16400,13000,9100,13900,10000,10200,11300,10800,10200,11800,11400,10300,13500,15100,11400,10700,6000,4800,4100,3600,3000,2400,2400,2300,2900,3400,2700,2400,2000,1600,1700,2000,2300,3100,4500,4700,8300,7900,4900,3200,1900,1500,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1600,7900,8800,11600,9300,2000,1000,3700,4700,7300,8500,9500,8600,7600,5600,5600,5100,5100,3500,3700,1000,3700,2800,1000,1000,1000,1000,1000,4100,9800,4600,3400,3300,3700,5000,5800,11900,12000,10600,11400,9800,9300,7800,9300,4700,3500,3100,4000,5800,5500,9200,13800,13700,11600,12900,11700,11700,17600,16300,15000,12600,14700,11700,11700,11300,12500,12800,8400,3300,3800,4200,4800,9200,9000,11200,12200,18600,24300,27200,26100,24500,27500,27800,25900,23000,23100,24000,23600,22900,23900,22500,24000,22500,21200,24900,20300,21100,24400,22800,20900,20400,19900,19500,18600,17600,19200,19300,17100,17900,16600,12700,11800,11600,9700,8000,7700,7100,7900,10300,10100,9200,5000,1200,3200,6000,4500,3100,4600,2800,2600,1000,1000,1500,3500,5000,5700,5000,1000,1000,1900,2900,1000,2600,10800,12300,11000,10400,4300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][37]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,4200,5300,7800,15000,16200,12400,11400,11300,11300,12400,13300,12800,13400,13300,16000,16000,16000,16000,15500,9100,7100,4700,4100,3700,3100,2600,2700,2300,2300,2600,2800,2600,2800,2000,2100,1800,2000,2300,2700,3500,4800,5700,5300,5200,4900,1500,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,3100,4100,4600,7400,13400,10500,7200,2700,1000,1000,1000,1000,1000,1000,4200,2900,2500,3000,2300,2300,4400,7900,12900,12500,4000,1000,1000,1000,3400,9200,9700,4700,4300,4200,5700,7500,9500,10300,10600,11800,10400,10100,13500,14100,11700,11200,10300,8400,5500,7200,12600,15300,15100,11800,14100,12800,12900,11300,5700,1000,1000,1000,1400,10400,11100,12100,11700,11900,3200,2100,2500,2700,2400,3200,12300,7800,9500,11200,17400,21900,23900,22600,21300,22900,19900,19100,16400,10200,5700,5900,7000,9900,18500,22500,21000,22400,21300,20500,20600,19700,14500,11800,15400,19600,18700,19100,19000,17500,17600,19100,17900,15300,11800,9700,10600,8400,8100,7300,6000,11200,9000,9000,7900,1200,1200,1100,1200,2300,3500,4000,2800,1000,2000,2400,3600,5800,7100,5400,4200,1100,1000,1000,1000,1000,2900,3400,5800,9000,8700,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][38]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4300,5700,3200,12300,14300,13200,13700,13900,13400,15000,11700,14100,13600,13500,14700,12600,16300,16300,16100,14400,8100,5900,5000,4200,3600,3100,2800,2700,2300,2200,2200,2200,2300,2300,1700,1700,1700,2000,2200,2100,2400,2500,3800,5800,5800,5000,2900,1300,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9600,4400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2700,2600,3100,4600,4100,5300,5200,8800,5900,7100,3400,2600,1000,1000,1000,1000,1000,1000,3200,1100,1000,1000,4600,4900,5300,8400,5700,1600,1000,1000,7300,9500,10200,7700,5500,4400,5100,7200,9000,10000,11100,10500,9100,7400,12700,14700,12000,12100,10500,9800,11600,11700,15200,14000,13800,13000,12700,17700,12000,1000,1000,1000,1000,1200,1500,4100,8200,9300,5900,1500,1600,1700,1700,1900,2200,3700,11600,16500,17800,16300,17400,24800,26600,22400,21200,27100,17800,5700,5400,5600,7100,5200,5200,5200,5200,5700,16100,20200,21900,21100,17700,16100,15200,16400,18200,20800,20700,20900,19300,18600,18100,16300,12700,7500,7400,13600,12700,7200,7300,5800,7900,11100,10500,10400,7700,2700,1100,1200,1100,1000,1600,2400,1000,1000,2600,4000,5600,7100,7600,1000,1000,1000,1000,1000,1000,1000,1000,1000,4800,8000,8400,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][39]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,8600,9400,9200,11200,12700,10700,13400,12400,12700,14000,13900,12000,13800,12200,11500,12900,16000,16400,16200,11400,8300,7000,5000,4200,3600,3200,2800,2600,2400,2200,2000,2000,2000,2000,1800,1800,1900,2100,2200,2300,2400,2300,2400,3300,5400,4300,3400,2200,1900,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4000,1000,1000,2300,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,3900,4500,4300,7200,5700,5100,5100,7100,7500,1100,2300,5700,2800,2100,1000,1000,1000,5000,8000,1000,1000,1000,1000,1000,8300,9400,2500,1600,4100,10100,9900,8400,7300,2800,2900,7800,5400,8800,8900,8000,7900,8100,7900,7600,9500,10100,11200,12800,13600,12700,12500,13100,13500,18700,14400,14700,7400,5800,2000,1000,1000,1500,2200,8200,4200,3200,1300,1500,1600,1700,1800,1900,1800,2300,4700,9100,17300,20000,19200,20400,23600,25300,23800,22100,18100,11300,10500,9300,7500,4800,4800,4800,4800,4800,4900,4700,4400,7700,14300,16100,16200,17000,21100,17800,20500,19900,19200,20200,17600,13900,11200,8400,8400,7300,10500,10700,8600,7200,7300,7200,8400,9900,12000,10900,11300,4200,2400,2700,3100,1000,3100,3600,3000,3400,3500,7600,8000,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,7200,9300,8600,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][40]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5000,10800,10400,12300,10000,10900,11800,11700,11600,13300,12400,10600,13000,13600,15500,14300,11600,14300,14300,15900,8500,7400,5600,4700,4200,3800,3300,2800,2600,2300,2400,2200,2100,1800,1900,1900,2000,1900,2000,2300,2300,2500,2500,2400,2600,4000,4100,3500,3100,3100,2300,1600,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5300,8500,7600,10300,9200,9900,7000,8600,8600,5700,1000,1000,1700,1900,1000,1000,1000,4900,8000,1000,1000,1900,3500,7800,8500,7200,2700,1700,8900,10500,10300,11500,5200,8500,7200,4000,4100,5100,10300,8000,9800,8800,8500,8900,8700,10300,11200,12100,12800,13800,14800,12300,12700,15200,13600,14100,8900,12400,7000,1200,1000,1700,2000,2300,2600,2100,1700,1500,1600,1700,1800,1800,3500,3500,8500,9100,8200,3600,10600,14300,13000,17100,17400,18200,18200,17400,21100,17700,13900,5800,4500,4400,4400,4500,4500,4400,4200,5500,5400,5300,5700,7500,8500,8800,8500,10300,9300,8800,8200,7100,5700,7400,8300,8100,8400,9000,7100,9100,9600,9700,9400,9500,9600,8700,9900,7800,8900,8000,5600,3800,1800,4600,4800,5100,7600,9400,10300,9000,7400,1000,1000,1000,1000,1000,1000,1000,1000,1000,4200,7200,5100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][41]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,10900,16100,10000,11900,10600,11400,11600,12300,12700,12700,11900,11300,11800,11800,11600,11500,13000,14000,11600,8700,7400,5400,5200,4500,4100,3500,3100,2700,2600,2500,2300,2100,2000,1900,2000,2000,1900,2000,2200,2300,2000,2200,2400,2700,3300,3500,3600,3600,3700,5200,3000,2400,1800,1400,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,6000,6000,7300,4200,4900,9400,9000,9600,5100,5500,5000,7500,2600,1000,1000,1000,1000,5700,8900,1000,1000,5500,9400,9200,4700,3800,1500,1000,7600,10900,10500,9100,11500,9200,7000,3800,4400,2600,2700,2400,7300,8500,10400,9000,7900,5300,3600,3200,4300,5900,13000,12800,12800,12000,9600,15500,16600,15900,3900,1000,1000,1400,1900,2200,2200,2000,1400,1500,1500,1800,1800,1800,3300,4100,2900,2000,2100,3000,12700,15700,16100,16400,16200,16300,17400,17500,21600,19200,21700,22700,17400,9800,9600,5400,12800,10700,10800,10900,8900,7600,5500,7800,7200,8800,10700,10400,10400,7600,7400,5800,5100,5900,5900,5800,5600,9700,9200,8000,8500,9600,9100,9200,8100,8100,9200,9500,7800,8200,4700,4700,3700,1800,4800,5300,5400,7800,10100,11000,10300,1300,1000,1000,1000,1000,1000,1000,1000,1000,3300,4800,3800,1000,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][42]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5500,9000,11400,10100,10400,10000,11700,10000,10400,9800,10000,12300,11200,11900,13300,15000,14400,12000,11200,12200,8100,7200,5400,5200,4400,3900,3400,3000,2600,2600,2500,2300,2300,2300,2500,2300,2200,1800,2000,2100,2300,2300,1900,2000,2500,3200,3600,3500,3100,3600,5100,4800,4600,3300,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,5400,7800,9100,9000,10200,9000,9400,8600,12800,13200,12200,11500,4700,1000,1000,1600,1000,10700,10400,4200,7700,9200,11500,11100,1400,2800,4100,8500,10700,10600,10400,9400,11600,9800,9400,5600,3400,1300,1000,1000,1000,1000,2400,1500,1700,1000,1000,1000,1000,1000,12600,15000,19100,18500,16600,15500,12600,3400,1000,1000,1200,1600,1700,1900,2000,1900,1900,1700,1500,2500,1600,2400,3400,2800,2700,2000,2200,2500,10000,16000,16700,16200,16400,18000,16400,17300,17600,19000,23100,26400,22800,17900,16800,17300,17700,16600,15800,10600,7000,5200,4900,4300,8600,17100,10900,10000,8900,9700,7200,7100,7500,7600,7600,8800,8200,5400,5600,6000,6000,5900,7300,7300,7600,7800,7800,7500,8700,7700,4700,5100,3600,2100,2800,4300,5100,5200,9100,10800,7400,4700,3100,3900,4300,2800,1000,1000,1000,1000,6000,8100,5800,8700,5900,1800,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][43]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2700,5200,10800,11000,8500,9100,8700,8500,10000,11900,13800,13600,12700,11900,14600,15600,11900,11100,10400,8200,8800,9200,4700,4600,4000,3500,3000,2900,2900,2800,2500,2400,2500,2400,2500,2700,2300,2100,2100,2600,2300,2100,1900,2300,2700,2600,2000,1900,2100,3400,4900,4800,5200,5100,2600,1400,1100,1000,1300,1400,1400,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2700,3400,4600,9100,9900,10700,7500,5800,7400,8600,8100,3700,5200,4500,2500,5100,8300,8700,4200,2400,5200,7400,7500,7200,1000,2600,8200,9200,9800,10200,8600,7800,9100,8600,4100,3000,4400,2700,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,11300,12800,15100,20500,19100,5000,5700,5300,3700,1000,1000,1200,1800,2100,2100,2100,2100,1900,1800,1600,1500,1500,1400,1600,1900,1900,1900,1700,4000,9000,5200,5200,3200,3400,3100,6000,12700,15500,18200,12800,13300,14100,14100,15300,17200,17700,18700,18700,16500,19800,16200,14700,10900,15200,16100,18000,9300,10800,8500,8600,7600,11000,10700,10600,11200,11100,8000,7600,5600,5100,5700,5700,5000,4900,5100,5400,7100,7500,8600,7200,5500,3300,2100,1900,1800,2700,3800,5600,5200,5600,5000,5900,4300,5300,7500,8100,3700,1000,1000,1000,1000,5200,5900,9500,8400,5900,5300,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][44]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,5100,7900,12300,8900,9300,11000,9400,10300,12500,13600,14300,13400,13200,13300,14300,10300,15100,11500,7200,8900,9100,4300,3800,3300,3200,3100,3000,3000,2800,2300,2300,2300,2400,2500,2900,2400,2000,2100,2700,2600,2500,1700,2300,2800,2400,2700,2500,2300,3100,5600,7300,5300,8300,5200,2500,2500,1900,1300,1900,1900,1800,1500,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1600,1900,3100,5800,7600,7700,11100,15300,14500,7500,8000,9100,5300,3200,1800,7400,7700,8400,8300,5800,7000,4700,5400,5300,2800,2800,2700,2200,1700,2300,1200,1000,1000,1000,4900,7000,3500,1000,3400,4000,10700,9600,7500,5600,5500,1800,1400,1100,1000,1000,1000,1700,2700,2800,1900,1800,1600,1700,1700,1800,1200,1200,1300,1300,1500,1500,1600,2600,5400,5600,2400,2300,2300,3700,4400,4400,4700,3900,7000,11800,15800,16100,14100,14800,17400,16600,8600,5500,4400,9200,4400,5300,8500,11400,10900,13700,14400,9300,11800,11600,10300,15000,13800,10100,5900,7100,7100,5700,5700,5700,5300,5200,5100,5700,5900,7100,5800,5600,8200,8300,7400,5100,3200,1700,1700,2000,2400,3000,7500,7600,4600,4600,4300,4400,4800,5800,5500,4700,1000,1000,1000,1000,3000,5400,5200,3700,7300,7700,7300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][45]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,4700,7200,13100,7800,7900,9100,11800,11300,11300,12000,12700,13100,13200,13300,14600,10800,11200,5800,5400,5300,5000,4200,3700,3400,3200,3200,3100,3100,2600,2500,2400,2500,2800,3000,2900,3000,2600,2000,2300,2500,2000,2200,2100,1900,2800,2900,2700,2500,2800,3000,2400,4100,4600,5200,4900,7200,2300,2500,2400,2400,2200,2100,2100,1800,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1600,2600,4000,8100,7400,5700,11600,17700,17100,11400,10200,11200,9600,7100,5800,7800,5200,3900,4300,2500,2800,1900,4900,10100,10200,10200,10200,7800,3100,2500,1800,1100,1000,1600,1700,3500,3400,1600,2000,1100,1400,1800,3200,2700,2300,1900,1400,1000,1000,1000,1000,1000,1000,1000,1000,1500,1500,1500,1600,1700,1400,1400,1400,1400,1500,1600,1600,1700,2000,2000,2100,2500,2700,3100,2900,2300,2300,2300,3100,10000,15300,17000,15400,12600,10900,8000,3900,2700,3400,4300,5700,12900,12100,11500,12600,14300,12500,14300,14400,13300,11800,14700,10600,9600,7500,8200,7300,7200,7600,5500,5300,5200,5100,5000,7100,7800,7200,5200,5000,5400,7000,5400,4500,2700,1600,1600,1800,1800,4100,5100,5500,4300,3900,2900,4400,5600,7200,7700,7300,1000,1000,2100,7500,3400,1000,1000,1000,1000,7100,5300,5600,4200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][46]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,4100,10200,16300,8100,4600,5800,8400,7900,9800,11900,12600,12100,11500,13100,10600,7600,4800,4900,4500,4600,4400,4300,3800,3400,3300,3200,2500,2600,2900,2600,2600,2600,2800,2900,2900,3000,2900,2100,2200,3100,3100,2900,2700,2600,2600,2700,2800,2900,3500,4000,3400,2600,3300,4000,3800,4500,3200,3100,1600,1700,1500,1400,2400,2700,1200,1000,1000,1600,1900,1800,1900,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1800,1900,2600,3300,3600,4800,4300,7600,12600,16800,15900,15200,14700,13400,13200,12000,10300,8400,4500,2700,3200,1600,1400,3600,8000,8000,5300,8100,7400,2900,2200,1800,1600,1300,1300,1300,1300,1400,1500,1300,1200,1300,1400,1500,1600,1700,1700,1200,1000,1000,1000,1000,1000,1000,1000,1000,1200,1700,1700,1900,1900,2100,2100,1800,1400,1800,1900,1900,2200,2100,2300,2500,3100,3500,3600,3300,2800,2600,3000,3200,3300,3500,5200,4200,8000,11300,10600,12900,10500,4800,4200,9000,13300,15700,15100,15800,10800,13700,12900,12400,12500,12200,13400,13300,11900,9900,8900,7900,7700,7500,7500,7600,7200,7200,5600,5300,5000,5100,4700,5000,5100,5900,7300,4900,3800,1800,1600,1800,1800,3100,5700,4800,3700,3800,3100,3700,4100,5600,7700,7700,4500,1000,1000,2700,4300,3100,1000,1000,1000,1000,1000,2200,5300,5900,3500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][47]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,9800,5400,9900,11100,5100,5600,7900,8500,9600,9900,11700,11300,9500,10300,8400,7700,4600,4400,4600,4100,3900,4300,3400,3300,3300,2700,2600,2300,3000,2800,2700,2900,3100,3300,2800,2500,2400,1000,2900,3100,3100,3000,2900,3200,2700,2500,2900,3000,3100,3200,3000,3300,4700,4800,3300,3100,3200,3600,2000,1200,1000,1300,1500,2500,3100,3000,3100,2600,2300,2300,2100,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1700,1700,1500,1700,1700,1900,2400,3400,3800,3100,5700,7200,11400,11600,13200,13300,14300,12900,10400,9400,5300,3300,4100,4200,4400,1900,4200,5700,9400,8800,5000,2500,2400,1900,1700,1700,1700,1500,1500,1600,2000,2000,1900,1900,1800,1600,1500,1600,1600,1000,1100,1000,1000,1000,1000,1000,1000,1100,1700,1800,1900,2200,2300,2000,2100,1800,1500,1500,1600,2300,3100,2600,2400,2300,3600,4700,4700,4500,4900,4300,3900,4500,3800,4300,5600,10200,11800,11300,11000,14500,10500,9000,12000,14200,15000,14700,14400,13400,9500,10500,11800,15100,13500,13500,13600,12400,9700,8800,9100,8000,9400,9400,9300,8300,7500,7100,5700,5400,4700,4700,3700,3500,4400,6000,7700,5600,4300,2300,1700,2000,2100,3200,4800,4500,3500,2500,2800,2800,4600,4300,8500,8300,5800,4800,1000,2500,4400,3000,1000,1000,1000,1000,1000,1000,1000,1000,5500,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][48]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,6000,7900,8400,12700,11000,10200,9100,9300,9700,10600,11900,12300,10500,8900,5000,8900,7000,4100,4300,4100,3700,3500,3500,3400,3500,3300,2700,2600,2200,2300,2400,2500,2600,3000,3200,3100,2800,2900,3100,3000,2900,2900,2700,2600,2700,2700,2900,2700,3100,3000,3200,3400,3000,4400,4300,3500,3100,4000,4900,5200,3400,1000,1000,1000,1000,2700,3700,3300,2800,2600,2300,1900,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2100,2200,2100,2200,2400,2400,2000,1600,2000,2300,2700,5400,5400,5000,4200,3400,3300,4600,5700,5100,4600,3700,4200,5500,8600,8400,4600,5800,7700,8700,5400,2600,2200,2200,2000,1900,1900,1800,1700,1600,1600,1700,2100,2200,2200,2000,1700,1700,1700,1600,1100,1400,1200,1100,1000,1000,1200,1200,1200,1700,2000,2000,2100,3100,2300,2100,1900,1800,1700,1700,2300,4700,3800,3000,2900,3200,4500,4600,4600,5200,7100,7100,4800,4500,5200,4700,4900,4700,5700,9900,12800,12100,14500,14800,14900,15800,14000,9300,7500,9600,10500,11900,12100,12600,12300,11700,10000,8900,9000,7900,7800,9000,11100,10700,10000,7700,7200,6000,5400,4200,4200,4300,4000,3700,4400,5700,5800,4900,3700,2700,2900,2900,2900,3600,4000,3500,4300,3900,3000,4100,3300,4700,8400,8800,5500,3300,4300,4700,1000,1700,1000,1000,1000,1000,1000,1000,1000,1000,5700,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][49]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4300,7600,8800,8100,10600,10700,10300,10600,10400,10000,11100,11500,11800,11700,10700,5600,5100,5800,5600,4800,4400,4300,4000,3800,3400,3800,3200,3500,3400,2800,2000,2300,2400,2500,2600,2700,2800,2900,2800,2800,2900,2800,2600,2500,2400,2000,2100,2400,2600,2700,2500,2700,2800,3000,3200,3300,3300,3700,3300,3100,3300,4700,5100,3100,2000,2000,1400,1000,1000,3300,3600,3100,2900,1700,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1300,1000,1000,1400,1600,2200,1700,1800,1800,2000,2700,2900,3400,3700,3200,3000,3200,4000,4700,5700,3700,3800,3900,4800,7400,10100,10600,4600,5400,5100,2600,2500,2400,2300,2200,2100,1900,1900,1800,1600,1700,1700,1700,1800,1700,1800,1800,1800,1700,1800,1700,1700,1200,1200,1100,1100,1100,1100,1100,1400,1900,2000,2200,2300,3000,2500,1900,1900,1600,1600,1700,2100,3100,3500,3300,2900,3300,3100,3900,4800,5000,5600,7000,5200,4800,4400,3900,4300,7100,8000,10800,12700,16400,16200,14900,15100,12000,15300,9700,10500,11600,10900,11000,11600,10600,10400,10100,9600,8800,9100,8500,7300,7400,8900,8900,10200,9700,10200,8200,5700,4700,4100,4200,4700,4700,4400,4600,5300,5600,4600,3000,3000,3500,2700,2400,2400,3400,4900,5600,5200,7700,5500,2600,5300,7700,5800,4100,1000,5300,4600,2800,1000,1000,1000,1000,1000,1000,1000,1000,1000,5200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][50]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,5700,8200,10600,12000,12200,11500,11600,8200,9000,11300,12300,13100,13000,12400,7400,4400,3800,3800,3800,4100,4000,3600,3800,3300,3400,3500,3300,3400,3500,2000,2000,2000,2300,2600,2600,2600,2600,2700,2700,2500,2400,2300,2000,1600,1700,1700,1800,2100,2100,2200,2200,2600,2800,3000,3200,3500,3600,3800,4500,4100,3900,4300,4300,3900,3600,3100,2500,2400,2100,1600,3300,3000,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,3000,3000,1900,1800,1900,1700,1700,1700,1800,2500,3200,3300,3400,3900,4100,4200,4400,5100,4500,4300,7200,5700,5900,2300,2600,3000,3000,2300,2300,2000,2400,2200,2100,1900,1900,1700,1600,1600,1700,1800,1800,1900,1900,1800,1800,1800,1800,1700,1700,1900,2200,1500,1300,1400,1500,1300,1300,1600,1800,1900,2100,2300,2500,2700,2400,2300,2200,2000,2000,1800,2100,2400,2500,2600,2400,2600,2800,3600,3700,4400,4300,4400,3900,3000,3000,2500,3400,5200,10900,10500,11300,11500,15400,13100,13700,15000,13400,11700,10500,9900,10500,12700,12000,12900,12400,11700,9100,9100,9000,8800,8000,5600,7700,7400,8900,8700,9100,8300,7400,5000,4400,5500,5600,5800,4700,5300,5600,5300,5100,4400,3400,3800,2600,1900,2000,5400,4900,5000,8500,9300,9000,7000,4300,7300,7300,4300,1000,5300,7200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,9500,4700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][51]= { 2800,7800,5400,4800,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2500,1000,1000,3900,8600,11900,14200,12400,12200,11300,9400,9500,11300,12100,13400,13500,12500,8800,4700,4600,4100,3800,3600,3600,3700,3300,3200,3500,3300,3000,3400,3700,2400,2000,2000,2000,2200,2400,2600,2600,2500,2600,2500,2500,2200,1900,1800,1600,1500,1500,1300,1200,1400,1700,2100,2400,2700,2900,3500,3800,3700,4400,4400,4600,4600,4000,4200,4300,4000,3400,3100,3000,2700,2600,2800,2800,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3500,4300,2500,1500,1000,1600,2700,3800,2700,2100,2000,1900,1600,1100,1200,1200,1500,1700,3200,3800,3500,4800,3000,2100,2300,2900,2600,2600,1900,1900,2300,2400,2100,2000,2000,1700,1700,1700,1800,2100,1700,1600,1600,1800,1800,1800,1900,1900,1900,1900,1700,1800,1700,1600,1800,1900,2100,1900,1900,1400,1700,1800,1700,1700,1900,2100,2100,2700,3000,2600,2300,2400,2200,2000,2000,1900,2100,2300,2400,2300,2300,2600,2500,3600,3900,2600,2400,2100,1900,1700,2200,2000,2700,7200,9500,9900,10200,10500,10900,12100,13000,12200,11000,11600,10400,9500,10800,10800,11200,12300,12700,13300,12600,12100,9900,9200,9600,7300,5800,5700,7500,7200,7200,5700,5300,4800,4700,5600,5600,5700,5300,5600,5800,6000,6000,5100,4400,2800,2100,2200,2000,5300,5900,5700,9000,8700,7300,3000,5500,5700,5900,4200,2900,3800,4500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,9000,8300,3400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,4800,4900,1000,}
values["MSAtable"][52]= { 1000,1000,1000,7600,2600,6000,3000,4400,4300,7200,7700,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4300,4400,2700,3200,7200,9400,11800,11400,9700,7400,7400,9200,11800,13500,12800,14000,12800,9900,5100,4500,4100,4000,3900,3600,3500,3500,3000,3100,3000,3200,3300,3700,3000,2000,1900,1900,2000,2200,2300,2400,2500,2500,2400,2300,2100,2000,1800,1700,1700,1400,1200,1100,1100,1200,1600,2000,2300,2600,2800,3000,3900,4200,4700,4000,3900,3900,3900,4100,3800,3500,3400,3000,2900,3000,3000,2800,2900,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4100,4200,4000,3600,4000,1700,3500,3900,2800,2100,1800,1500,1400,1000,1000,1200,1400,1400,1800,2200,2500,2100,1700,1700,1600,1600,1800,1600,1500,1600,1500,1600,1700,1700,1700,1900,1700,1800,1900,1700,1700,1600,1700,1800,1800,1900,1900,1900,1900,1900,1800,1700,1700,1700,1900,1900,2100,2100,2200,2200,1600,1600,1900,1900,2100,2300,2600,3400,3700,4200,2800,2400,2200,1900,1800,1900,1900,2100,2700,3400,2900,3200,2500,2300,2400,1700,1600,1500,1500,1600,1900,2100,2000,2000,2100,2600,4200,4300,7100,8500,9400,10600,10800,10100,9900,10900,10900,9300,10600,12000,12300,11500,12400,10500,7100,4200,4900,5600,7600,8000,8600,8200,7100,5700,7200,7400,5200,5200,4700,5900,5200,5100,5600,5400,5500,4400,3500,2300,2300,2900,3000,3000,4700,7900,8200,9400,8900,3800,7100,5100,4400,4300,2800,3100,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4700,10000,9500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4100,4000,1300,3100,1000,4900,4700,2700,1000,}
values["MSAtable"][53]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,8700,7000,7900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,4500,4200,4300,8400,10800,9900,11000,8300,8000,5900,7900,10100,12500,14700,11500,10900,7600,5100,4200,4000,3700,3400,3700,3400,3600,3700,3400,3200,3000,3100,3700,2100,2000,2000,1800,1800,2000,2100,2200,2300,2300,2100,2200,2000,1900,1800,1600,1500,1600,1500,1300,1100,1100,1200,1700,1900,2300,2500,2700,2900,3100,3400,3600,3900,3900,3800,4000,3900,3400,3300,3900,3800,3000,4000,4900,3200,3400,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,3600,2200,2700,3800,1000,4500,4500,2800,3100,1800,1400,1000,1000,1000,1100,1100,1100,1200,1200,1600,1500,1600,1500,1600,1500,1700,1800,1700,1600,2000,1800,1700,1800,1800,1800,2100,2100,2200,1800,1700,1700,1800,1900,1900,1800,1900,1900,2000,1900,1800,1600,1700,1700,1900,2000,2100,2200,2200,2100,2200,2000,2000,2000,2100,2400,2600,3700,5100,4600,3600,2500,1900,1800,1900,1700,1800,1800,2400,2800,2600,4000,2000,1700,1500,1400,1400,1400,1400,1500,1800,1900,2000,1900,1900,2100,2900,2800,7100,7400,9200,5300,4800,5100,8200,9200,10200,11300,11600,10700,11100,10600,8300,3300,3900,4700,5000,7400,8700,8600,10300,10400,10400,7100,5800,7000,7600,7200,8300,7300,5600,5500,4600,3800,3800,4000,3000,3900,5800,4400,5900,7100,6000,7100,8000,9600,8800,5100,5500,4800,4500,4000,2900,1600,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,5800,8700,13300,11500,3400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][54]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4400,5100,8300,11200,3700,1900,2500,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,3600,2900,5600,9400,10400,10200,9800,8500,7700,6000,8300,10300,12300,10000,7400,5400,5500,5500,4400,3500,3400,3800,3700,3400,3500,3000,3400,3300,3500,2400,2300,2200,2200,2000,1900,1800,1900,1900,1900,1900,2000,1900,1800,1700,1600,1500,1500,1500,1800,1700,1200,1100,1000,1500,1700,2000,2300,2500,2700,2800,3000,3300,3400,3300,3400,3800,3600,3200,3200,3400,3700,3700,2600,3600,3400,2300,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,3600,3200,3200,3300,3700,3300,4200,3900,3300,2400,1000,1000,1000,1000,1000,1000,1000,1000,1200,1400,1500,1400,1500,1600,1200,1300,1700,1900,2100,1700,1700,1700,2000,1900,1900,2000,2100,2100,1900,2000,1900,1900,1900,1900,1900,1900,2000,1900,1900,1800,1600,1600,1600,1700,1900,2100,2100,2100,2100,1700,2000,2000,2200,2300,2400,2100,3300,5300,7400,5600,2900,2200,1700,1600,1600,1600,1600,1600,1600,1500,1500,1500,1500,1500,1400,1400,1400,1400,1400,1600,1800,2000,2000,2200,2700,2900,2800,4900,8100,7900,5000,4800,5900,7900,8300,10300,10800,10900,8200,5800,3500,3500,3700,4000,4800,4900,4800,7900,9400,10300,11200,10400,9000,8000,7300,7400,7100,8000,7700,7900,5600,7200,7200,7100,7000,7300,5700,5600,3900,5500,5700,8100,8400,8200,9300,8800,5200,3300,3100,4200,3300,1000,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,5600,8500,8000,9600,13400,5400,4200,1000,1000,1000,3400,3000,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][55]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,7600,10200,5600,7600,3000,1000,1300,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,3900,4800,5400,8500,10000,9300,10200,9500,9200,8900,9800,8900,8800,5400,4400,4300,4000,4300,5000,4600,4100,3900,3600,3500,3500,3400,2800,2800,2800,2700,2600,2400,2300,2300,2200,2100,1900,1900,1800,1700,1800,1600,1600,1600,1600,1500,1500,1400,1200,1300,1100,1100,1000,1200,1300,1600,2000,2300,2400,2600,2700,2800,2900,3100,3200,3200,3900,3400,3300,3200,3500,3600,3600,2500,3100,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3300,3200,3500,3800,3700,3700,3700,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1600,1400,1400,1400,1700,1600,1400,1000,1000,1000,1000,1200,1600,1700,1700,1600,1800,1900,1800,1800,1900,2000,1900,2000,2000,2100,2000,2000,1900,1800,1700,1600,1600,1700,1800,1800,1800,1800,1800,1800,1700,1700,1800,2000,2000,2000,1900,2300,3300,3700,4800,4200,2000,1700,1600,1600,1500,1500,1500,1500,1500,1500,1500,1400,1500,1500,1500,1400,1400,1500,1500,1500,1600,1700,2200,2000,2000,2600,4100,5100,4200,3900,3900,4000,4300,5400,4000,4100,4500,4800,3300,4200,3500,3400,3600,4600,4800,5900,4600,10000,9000,10500,10300,10500,10700,10700,9400,9300,8500,9200,8200,7300,5500,5700,5900,6000,7300,6000,7400,7400,8500,9700,9300,8700,8600,9300,7300,7500,4600,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,4000,13800,8800,7300,14000,9700,1500,1000,1000,1700,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][56]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1900,1000,1000,1000,1000,1000,1000,1000,1000,5000,10200,5400,4500,3600,1000,2800,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5400,5800,4700,9900,10600,10300,10800,9100,10000,9800,9800,9700,10300,8500,4300,4300,4600,4400,3700,3700,3700,3800,3400,3200,3500,3300,3100,2800,2900,3100,3100,2900,2600,2500,2500,2300,2200,2200,2300,2100,2000,1800,1500,1500,1800,1700,1600,1400,1100,1000,1000,1000,1000,1000,1000,1200,1400,1500,1100,2500,2200,2400,2500,2600,2700,2800,3000,3000,3400,2900,3000,3400,3500,4100,4400,1700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2200,4100,5400,5300,4700,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1600,1400,1100,1700,1800,1800,2000,1400,1000,1100,1000,1100,1600,1700,1500,1400,2000,1900,1900,1700,2100,1900,2100,2100,2100,2000,2000,2000,2000,2000,1800,1800,1600,1700,1700,1600,1700,1700,1700,1900,1900,1700,1800,1900,1800,1900,2200,2300,2700,2900,3300,3000,2100,1600,1500,1500,1500,1500,1500,1500,1500,1500,1500,1400,1400,1500,1500,1500,1500,1500,1500,1500,1500,1500,1500,1700,1900,2100,1900,2100,2700,2700,2900,3300,2900,3200,2600,2700,2600,2800,3300,3900,3800,3700,3300,3800,4100,4400,4400,8700,9500,10100,10500,9100,10300,10300,9700,10800,11700,10400,10400,8500,7800,7200,8600,7800,8000,8100,8600,8000,9500,9500,7600,8200,7700,8000,5400,7500,8100,7700,1000,1000,1000,1000,1300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,2400,5200,8300,10500,17600,12700,5600,5200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][57]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,8500,8900,4100,4000,5300,5200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4700,6000,7300,9000,12000,11400,11000,9800,10100,10100,10800,11300,11600,10800,7800,4400,4400,4500,4300,4000,3900,4000,3800,3900,3800,3800,3200,3000,3000,3100,3100,3100,3000,2800,2600,2400,2400,2400,2200,2200,2200,1900,1900,1300,1200,1200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1200,1800,2500,2100,2300,2300,2400,2400,2400,2900,2400,2100,2400,3400,3700,4400,5000,4500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,3000,4100,4800,4500,5300,3300,1500,1000,1000,1000,1000,1000,1000,1000,1000,1400,1200,1300,1400,1500,2000,2200,2200,2100,1700,1200,1300,1200,1000,1300,1600,1400,1500,1900,1900,2100,1500,1900,1400,2000,2000,2200,2100,1800,1800,1800,2000,1800,1700,1700,1700,1600,1600,1700,1700,1600,1700,2000,1800,1900,2000,2000,2100,2300,2500,2200,2600,3500,2900,2100,1600,1500,1500,1400,1300,1400,1300,1300,1400,1400,1400,1500,1500,1500,1500,1500,1500,1500,1500,1500,1400,1400,1600,1700,1600,1600,1700,1800,1800,1900,2100,2900,2600,2800,2600,2500,2500,2600,3100,3300,3900,3900,3300,3600,3500,3500,7300,7500,7900,7300,7800,8000,8300,8700,9200,11400,10400,9500,8900,7300,5200,5000,6000,7300,8300,9300,9000,9300,8200,8100,7900,5900,7100,4800,5400,8200,7500,7300,5100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,4000,5800,6000,10500,5000,4800,3300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][58]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,3100,3000,3200,2800,1400,3400,9700,9500,9000,3400,2300,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,17000,9900,7900,9900,9700,10900,9800,8400,9400,9700,10100,10300,11200,11500,8700,4600,3400,3300,3600,3500,3600,4100,4200,4200,3300,3600,2800,2400,2900,2900,3000,3000,2800,3000,2700,2700,2700,2500,2500,2300,2200,2100,1900,1500,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1500,2000,1800,1900,2000,2000,2100,2100,2200,2100,1900,1600,2300,4100,7000,7200,4700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,2900,3700,4200,3200,1400,1000,1000,1000,1000,1000,1000,1000,2800,4900,4900,4000,2200,1200,1900,1800,2100,2100,1900,1600,1300,1200,1100,1000,1100,1200,1200,1300,1500,1700,1400,1700,1600,1300,1300,1800,1900,1800,1800,1800,1900,1800,1800,1800,1800,2000,1800,1700,1800,1700,1800,1800,1800,1800,2000,2100,2100,1900,2100,2000,2700,4200,3800,2000,1800,1500,1500,1400,1400,1300,1300,1400,1400,1400,1400,1400,1400,1500,1400,1400,1500,1500,1400,1400,1400,1400,1500,1600,1600,1600,1600,1600,1600,1700,2100,2600,3800,3600,3100,3000,2700,2700,2800,3500,2700,2800,3300,4000,3900,3200,3200,3100,3300,3400,5000,5100,5800,7400,7400,7800,8300,5700,5600,5500,4200,5000,5300,5100,7200,5700,4800,8600,8900,8300,5700,4500,3700,4900,3900,5600,5600,5200,4900,5800,5000,1000,1000,1000,1000,1000,1000,1000,1000,1200,5500,4400,1000,1000,1000,1000,2200,1900,2600,10300,8900,4500,3300,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][59]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,2000,1400,1000,1000,1100,3900,5500,5900,4200,3300,3400,4400,5600,9500,5000,5600,8500,7300,4600,3900,1200,1000,2500,1300,1000,3100,4200,10300,11100,14200,10800,10200,9700,9200,8900,9000,9500,9400,9200,7500,9100,9300,7300,4200,3500,3500,3400,3600,3700,3500,4000,4300,4200,3800,2100,2100,2400,2600,2800,2700,2700,2800,2700,2700,2700,2700,2500,2300,2200,2100,1900,1700,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,1900,1200,1400,1600,1800,1900,2000,2000,2000,2300,1800,1200,1000,1100,3200,5900,5500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,4900,4400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1300,1000,1800,1700,1900,1000,1000,1000,1000,1000,1200,5000,7300,7600,8100,5400,3300,2300,2400,2400,2400,2300,1600,1400,1400,1100,1100,1100,1200,1200,1300,1500,1600,1500,1500,1600,1600,1400,1400,1900,1900,1800,1700,2000,1800,1800,1800,1800,1900,1900,2000,1900,2000,1800,1900,1900,1900,1900,2000,2100,1900,1900,2000,2900,4700,7100,2200,1500,1500,1500,1300,1300,1300,1200,1300,1400,1400,1400,1400,1400,1400,1400,1400,1400,1400,1400,1300,1400,1500,1500,1600,1600,1600,1600,1600,1600,2400,3300,4700,4400,3400,3300,3300,3100,2900,2700,2600,2700,2900,2800,3300,3400,3300,3100,2900,3000,3000,2800,4200,5800,7600,7300,5500,4700,3600,3100,3200,3000,3200,5000,3300,3600,3100,3200,3200,3000,2600,2500,3500,3500,3700,3500,5900,7700,5500,7100,4900,4900,5200,5200,7000,5800,5200,4400,4200,4700,4900,6000,7200,4800,4500,4800,1000,1000,1000,2400,5000,8000,7200,3800,3200,2500,3000,1000,1000,1000,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][60]= { 1000,1000,1000,1000,1000,1000,2600,2300,1000,1000,1000,1000,1900,2700,2300,2500,1100,1200,2200,5600,7200,5000,4400,3400,4600,5900,11900,12000,3600,8100,8200,8400,8600,7900,9900,9600,13200,13100,15000,21600,17500,15900,10700,10200,10100,9200,8600,8200,8800,8700,8300,9000,8300,7300,7100,8500,7200,3300,3400,3500,3600,3600,3900,2800,2100,2000,2000,1800,2100,2300,2700,2700,2900,2800,2700,2700,2800,2500,2600,2400,2400,2300,2100,1900,1700,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,2100,2000,2300,2500,2800,2700,2700,2400,1800,2000,1900,1000,1500,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,2300,2800,5100,9100,7800,3800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,2400,1900,1000,1000,1000,1000,1900,5200,7500,8300,8100,5800,4300,3600,3300,3500,2900,2700,2500,1400,1200,1300,1400,1200,1500,1600,1600,1600,1600,1500,1400,1600,1600,1200,1300,1600,2000,2000,1900,1700,1800,1800,1800,1800,1800,1700,1900,1700,1700,1700,1700,1900,1800,2000,1800,1900,1900,1800,2300,3500,4500,5600,2500,1600,1500,1300,1300,1300,1500,1500,1300,1400,1400,1300,1300,1300,1400,1400,1400,1300,1300,1400,1500,1400,1500,1600,1600,1600,1600,1600,1600,1800,3100,4200,3600,3800,3600,3700,3500,3400,3200,2800,2800,2900,2900,2500,2600,2900,2700,2500,2900,2600,2800,2900,3100,2900,3300,4000,4000,2600,2700,2900,2600,2900,3000,3000,2900,3100,3200,3100,2800,2500,2500,2500,2600,2500,2300,3700,5400,7100,8700,8400,7600,7900,7700,7200,7700,7300,5800,7600,7400,7800,7400,7400,7700,7300,7400,5200,2700,1000,1000,2700,4000,4200,4300,4100,3900,4100,5000,4800,3900,5200,4700,5200,3200,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][61]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,3300,3300,1700,3000,3400,3200,5300,5000,4600,2800,4700,11700,11400,13400,7600,5200,9500,11900,15000,11600,9500,15800,18200,15600,18400,19100,16300,11000,9100,9000,8700,9100,9900,9100,9100,9600,9500,10200,11000,9700,8600,8500,7100,3200,2900,3500,3800,3600,1900,1800,1900,1600,1700,2000,2300,2400,2600,2800,2700,2700,2500,2500,2500,2400,2500,2500,2300,2400,2400,1900,1600,1400,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1300,1200,2100,2500,2800,3200,3100,3200,3000,2300,1700,1000,1000,2000,2500,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,5100,7600,9000,9900,11000,9900,5000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,7500,8300,9800,10000,9100,8000,7700,4900,4600,3600,2900,2600,1900,1000,1000,1000,1300,1600,1700,1700,1800,1700,1600,1600,1600,1600,1400,1700,2000,2000,1600,2000,2100,1800,1800,1900,1800,1700,1800,1800,1800,1700,1700,1700,1700,1700,1700,1900,1900,2000,1900,2000,2500,5400,5100,2500,1700,1800,1800,1600,1600,1600,1400,1500,1500,1400,1400,1300,1300,1300,1400,1400,1400,1400,1400,1400,1400,1600,1500,1600,1700,1700,1800,1900,1900,2700,2900,3300,3600,3500,3600,3700,3300,2900,2900,2600,3000,2700,3000,2900,2700,2700,2400,2300,2400,2600,2700,2700,2600,2500,2600,2500,2300,2300,2400,2500,2600,2700,2500,2600,2700,2500,2400,2300,2300,2300,2300,2400,2400,2300,4100,5800,7900,8900,8700,9300,10100,10200,10700,9400,7900,7900,7900,8000,8700,8800,8200,7100,5900,7900,8100,7000,5400,4300,3200,5400,5400,4900,3700,4200,5000,4600,4900,5300,7100,8200,9500,7400,4200,3300,1700,1000,1000,1000,1000,1000,}
values["MSAtable"][62]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,1000,1000,1000,1000,3400,2100,3000,3800,3400,2900,3500,5000,5100,4300,9200,9600,11000,19400,14000,9500,10800,9200,7400,5600,18200,15800,12700,10400,8200,7600,8600,8200,7000,8200,9000,9100,9100,8700,10500,9300,10800,11200,10000,9600,7600,5200,3300,2700,3600,3700,3600,2700,2000,1900,2100,2200,2500,2500,2600,2500,2600,2600,2500,2500,2500,2500,2300,2300,2200,2100,2100,1900,1800,1700,1500,1400,1300,1500,1200,1000,1000,1000,1000,1000,1000,1300,1600,1700,1200,1400,1300,2800,2800,2900,3000,3000,2900,2000,2200,3200,3700,3700,3900,3000,2400,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3100,7400,8800,9800,10300,10600,10600,9300,7700,4200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3900,3800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2400,5200,7500,8500,8600,9500,7400,7300,7800,6000,4300,2900,2800,2500,2100,1000,1000,1500,1800,1800,1900,1900,1800,1800,1800,1900,1900,2000,2000,1900,1800,1700,1800,1800,1800,1700,1800,1800,1600,1800,1700,1800,1800,1800,1700,1700,1600,1600,1900,2100,1900,2000,1700,2400,4400,4500,1900,1600,1800,1700,1600,1700,1700,1800,1400,1500,1400,1400,1400,1400,1400,1500,1500,1400,1500,1500,1700,1700,1700,1800,1700,1800,1900,1800,1900,2200,2500,3000,3400,3400,3600,3700,3600,3400,3500,3500,3300,3200,3600,3500,3400,2800,2900,2700,2900,2700,2400,2500,2600,2600,2400,2300,2100,1900,2200,2300,2300,2400,2400,2200,2100,2200,2200,2200,2100,2000,1800,1900,1900,1900,2100,2200,4000,7300,8800,9500,11200,11200,9800,10300,8400,9400,8500,7200,8400,9200,7900,5900,5400,7000,7300,7600,5700,7700,7400,5800,5600,4700,3600,4100,4000,3900,3800,3900,4800,7300,8300,7500,5200,4200,4500,5200,5400,3700,4000,3200,1000,}
values["MSAtable"][63]= { 1000,1000,1000,1000,1000,1000,1000,1000,2700,3200,2500,2800,1000,1000,1000,1000,1300,3200,4400,4100,4300,2200,3200,5200,5000,5400,4500,3800,22200,22000,10000,9300,14200,15600,11800,12200,9400,7500,7100,8100,5600,5600,8200,7700,9200,8300,8900,9000,9900,10900,9900,9600,10000,9400,8000,5500,7100,3700,2900,2500,3300,3400,2300,2500,2500,2400,2500,2700,2700,2600,2500,2500,2500,2500,2300,2300,2400,2300,2200,2100,2200,2100,1900,1900,1600,1600,1500,1400,2000,1400,1100,1000,1100,1200,1600,1600,1300,1100,1700,1700,1000,2000,2300,2600,1000,1000,1200,1800,2600,3100,3400,3600,3500,4200,4500,3400,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4000,5200,7700,9000,9800,10500,11000,11200,11100,10000,8200,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,3200,2400,7400,5200,3500,8200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,4200,4800,4100,5700,7800,6000,4000,2800,2900,3000,3000,2600,1900,1200,1300,1600,1800,1800,1700,2000,2200,2100,2000,2300,2300,2000,1700,1800,2100,2200,1800,1600,1500,1300,1600,1900,1800,1900,1800,1800,1700,1800,2000,1700,2100,1800,1800,1800,1700,2600,4600,5800,3900,2000,1700,1900,1500,1500,1500,1600,1500,1500,1500,1500,1500,1500,1600,1500,1500,1400,1300,1500,1700,1800,1900,1700,1800,1800,1600,1300,2400,2900,3000,3100,3500,3600,3500,3600,3600,3900,3700,3400,3900,3900,3800,3800,3800,3300,3200,3100,2900,2700,2700,2800,2900,2800,2700,2300,2000,2000,1900,2100,1800,1800,1800,1900,1900,1900,1800,2200,2800,2800,3500,4500,5000,7600,7500,7200,5800,7900,8800,9400,9000,7500,8100,8500,9400,8200,8800,9300,9200,8000,5800,8500,5000,5100,5800,5900,5700,7500,7600,7300,5600,5400,5100,5400,5000,5300,5000,3900,3900,3800,4300,4200,4300,5100,4200,5200,5400,4100,3400,2500,1000,}
values["MSAtable"][64]= { 1000,1000,1000,1000,3100,3400,4600,3400,1000,1000,1000,1900,1000,4900,5700,4600,2600,4300,2100,3500,5000,4100,3800,4200,4400,4600,3500,4500,4200,3700,3900,5800,7100,4600,7000,7900,8500,8400,8000,8100,9000,9600,9100,9100,9600,10100,10100,11100,10600,10600,10200,9600,9700,8500,4600,5800,4800,2800,2300,2800,3400,3300,2500,2400,2500,2600,2600,2600,2700,2700,2700,2600,2500,2300,2300,2200,2200,2100,2100,2000,2000,1900,1900,1800,1700,1700,1800,1800,1900,2200,2300,2000,1700,1300,1400,2700,3000,2900,2100,1200,1000,1500,2300,2300,1500,1500,2000,2400,2700,2900,2600,3200,3400,4100,4600,3000,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,4200,5300,5500,8400,9400,10400,10800,11100,11000,10100,8200,4200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,5700,4500,4600,7500,7300,7800,8600,8900,8000,5300,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1700,3200,3200,4800,5600,5700,5800,3600,3300,3100,2700,2300,1500,1000,1200,1400,1600,1800,2200,2300,1900,2000,2000,2100,1700,1700,1400,1600,1700,1700,1700,1500,1600,1500,1600,1600,1700,1900,1900,1800,2300,2500,2200,2200,1700,1600,1700,1800,1800,5100,7400,7400,3900,1600,1700,1600,1200,1700,1700,1600,1500,1500,1400,1400,1400,1400,1300,1300,1300,1200,1300,1200,1600,1700,1600,1600,1700,1600,1400,2800,3100,3300,3800,3400,3500,3700,3900,4000,4000,3800,3700,3300,3300,3700,3500,3600,3600,3500,3500,3500,3000,3200,3100,2900,3500,2600,2500,2200,2000,1900,1800,1900,1800,1800,1700,1600,1800,4000,7000,7900,8000,7900,8600,8500,8800,8400,7300,5700,7700,7700,7900,8600,8400,9300,9300,9000,9700,10000,9700,8700,7500,5700,3200,4200,4400,3700,4600,5300,5200,5600,7100,7100,5100,6000,7100,5500,5400,5200,5500,4500,4300,2800,4100,4400,4100,4200,3700,1700,2700,3800,2000,1000,}
values["MSAtable"][65]= { 2400,3000,3300,3300,3300,3700,3700,4000,3900,3400,2500,3000,3800,3300,5500,4700,4400,4500,3800,3100,3800,3300,2900,2700,3800,6000,5400,4600,7300,7500,5700,4200,5800,7200,5900,7500,7600,5800,7200,7900,7900,7700,8000,8300,9000,8500,10100,10100,9500,9200,9100,8100,7800,4400,3600,3200,2800,3000,3100,3300,2800,2600,2500,2600,2800,2900,3000,3100,3200,3100,3100,2700,2700,2700,2200,2200,2100,1900,2000,2000,2000,1900,1900,1800,2100,2200,2300,2700,2800,3000,2800,2400,2100,1500,2100,2600,2500,1000,1000,1000,1000,1100,1500,1700,1200,1200,1700,1700,1700,2200,2400,2700,2800,2700,4000,5800,7100,4100,1400,1000,1000,1000,1000,1000,1000,1000,4000,7900,6000,5700,5300,8100,9200,10300,11000,11000,10400,10000,8300,5500,5400,5000,4000,4000,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2800,4200,4000,4300,4300,5300,7000,5000,7500,4400,5100,4700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,3600,5000,7600,8100,7800,5100,3600,3600,3400,3000,2000,1500,1400,1500,1600,1800,2400,2300,2500,2300,1800,1700,1500,1400,1300,1300,1400,1000,1700,1700,1600,1700,1500,1500,1600,1600,1800,1900,2100,1900,1800,1600,1600,1600,1500,1500,1700,2700,6000,7800,5600,5200,3600,1900,1200,1200,1400,1400,1300,1400,1300,1200,1300,1300,1400,1400,1200,1200,1300,1200,1300,1300,1500,1500,1600,1300,1300,2700,3400,3700,3800,3900,4000,3900,4300,4100,4200,3800,3400,3500,4000,3700,3900,3800,3800,3700,3400,3800,3700,3600,3500,3300,3400,3100,2600,2300,2400,2100,1900,1900,1900,1800,1600,1700,3200,5400,7400,8200,8400,7500,7300,5100,5100,5200,7400,5600,7200,8800,9200,9900,10200,9500,9500,9400,11100,11200,9300,9000,9100,2200,3200,3800,3800,4400,4600,3900,4100,4900,5200,7400,7400,5800,5800,7200,7700,5600,4800,4400,4600,4100,4500,3700,2900,4900,3600,2700,2200,3100,3200,1000,}
values["MSAtable"][66]= { 5500,5600,5200,3800,3100,2800,3100,3800,4000,3600,3300,1000,1000,1200,1200,1900,2100,2200,2300,4300,4000,3400,4800,5000,5800,4200,5200,4900,4500,5500,7900,5600,3300,2100,2100,2000,3300,3800,4800,5700,7400,4700,3300,5000,5300,3600,2400,2400,2500,2300,2300,2100,3700,3700,2500,2500,2900,3200,3100,1800,2600,3000,3400,3400,3200,3000,3100,3100,3100,3100,2900,3000,2700,2300,2100,2000,1900,1800,1800,1700,1700,1700,1600,1700,2100,2200,2600,2400,2900,3100,2900,2700,2300,2100,2200,2200,2200,1900,1300,1000,1000,1000,1000,1000,1000,1000,1300,1400,1400,1600,1900,2700,3600,5900,9000,8400,8000,7600,5700,1000,1000,1000,1000,1000,1000,1000,5200,9200,9100,5700,5200,8000,9100,9500,10600,10600,10200,10200,10200,9500,9600,9400,10100,12000,9300,8100,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,4000,3100,1700,3700,4800,4600,3200,3300,2600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,4000,7200,8200,7700,7700,7800,4700,3400,2900,2700,2300,2300,2200,2100,2200,2300,2600,3100,2700,2600,2900,3000,1700,1700,1900,1900,1900,1900,1800,1600,1200,1200,1400,1400,1400,1500,1900,1900,1900,1800,1600,1600,1700,1600,1500,1600,1700,1700,1600,1800,4100,4700,5500,5200,3400,1900,1500,1400,1200,1300,1100,1300,1300,1300,1300,1200,1300,1300,1200,1100,1300,1500,1400,1600,1400,2100,2700,3400,3400,3900,4100,4100,4600,4500,4400,4300,4100,4300,4300,4300,4000,3800,3900,4100,3800,3800,4000,4200,3900,3500,3100,3200,2800,2600,2300,2300,2200,2000,2000,1900,1900,1600,1900,4400,5700,8500,8000,8400,5600,4100,4000,4500,5300,7500,6000,7000,8600,9800,10100,9700,8300,8100,9700,8900,8900,5900,3300,2400,1700,2300,3600,4400,4600,4200,3600,3900,3900,3700,4100,4500,5400,7500,5800,5500,7300,7100,7200,4400,4400,4400,3900,3100,5000,5200,4100,4100,3900,4800,1000,}
values["MSAtable"][67]= { 4800,4700,3900,3000,3200,1400,1300,1200,1000,1000,1000,1000,1000,1000,1600,2500,3300,4400,5500,5000,5800,5000,5400,8300,9300,10500,8400,8400,8400,9200,8500,9000,8000,7200,4900,4600,4600,4100,5000,5200,5600,4200,7100,7600,5600,2100,1800,2100,2500,2500,2200,2200,2700,3300,3100,2900,2600,3100,3100,3200,3600,2700,3300,3200,3100,2900,2800,2900,2800,2500,2400,2200,2200,1900,1700,1700,1600,1600,1600,1500,1400,1400,1500,1300,1900,2100,2200,2500,2800,2600,2900,2600,2100,2300,2500,2700,2500,2300,2000,1000,1000,1000,1200,1200,1200,1100,1000,1500,2200,2400,2900,4600,5600,7700,8500,7200,5600,3700,3200,1000,1000,1000,1000,1000,1000,1000,5600,5400,3900,3000,4600,7000,8100,9100,9700,10100,10500,11100,11300,11500,11600,11600,11600,11600,11000,9700,8700,4500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,4400,3700,5300,7100,8200,8800,8900,5000,3700,3100,2800,2700,3300,2900,2700,2800,2700,3000,3000,3100,4500,4900,4700,2900,2200,2300,2200,2100,1900,1600,1000,1200,1300,1700,1700,1300,2000,2000,1500,1400,1500,1500,1600,1800,1700,1600,1600,1600,1600,1800,1700,1800,4100,4900,5000,2900,1600,1300,1300,1200,1200,1200,1300,1300,1200,1200,1300,1400,1400,1400,1400,1400,1600,1600,1500,2300,3100,3700,4100,4000,4400,4900,4900,4700,4600,4700,4700,4600,4100,4100,3300,3200,3300,3300,3300,3200,2800,2600,2800,2700,2600,2700,2700,2500,2400,2200,2200,2200,2500,2100,1900,1700,2000,3200,5700,8900,9200,7000,4600,3900,3300,3700,6000,4700,5200,7800,8700,9100,7900,5200,5100,8200,7800,3300,2200,4000,4100,2600,2000,1600,1800,1900,2300,2500,3600,3300,3500,3900,4400,3100,3700,4400,4500,6000,7400,5800,7500,7200,5500,4400,4000,4000,4700,4800,5600,7000,7600,5700,1000,}
values["MSAtable"][68]= { 5800,3300,1700,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,3100,2800,4200,4900,5400,5800,5300,6000,5700,5500,8600,9400,9500,8900,9100,9600,9600,9600,9600,9500,10000,9700,9600,8500,7400,5700,5700,4700,7000,7200,4700,1800,1800,2100,2400,2500,2200,2000,2200,2200,2000,2700,2900,3600,3600,3600,3500,3200,2000,2100,2000,1400,1400,1600,1700,1700,1800,1600,2000,1800,1700,1400,1300,1200,1200,1100,1100,1200,1400,1300,1200,1400,1700,2100,2300,2000,2200,1600,1200,1200,2700,2600,2500,2300,1200,1000,1100,1100,1000,1200,1500,1500,2000,2400,3200,4100,4500,5100,5600,5200,2900,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2000,2300,3200,4600,7600,7900,9300,9900,10300,10600,11200,11600,11700,11900,12000,12100,12700,12700,11100,9100,10200,10900,12900,14900,11100,9000,7000,4100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3400,4100,4700,5100,5700,8100,8500,7600,5800,4100,3200,3400,3600,2900,2700,3000,3300,3300,4000,4300,4100,3000,2800,2300,2100,2100,2000,1800,1000,1000,1000,1700,1800,1800,1700,1000,1400,1400,1500,1500,1400,1400,1200,1600,1600,1600,1700,1600,1800,1800,2200,2000,2200,5000,4700,2600,1200,1300,1400,1300,1300,1200,1300,1300,1200,1200,1300,1300,1300,1500,1600,1600,1600,1600,1600,3000,3400,3900,4200,4900,5300,5500,5700,7000,5900,5800,5500,5300,4900,3300,2600,2900,2300,2600,2700,2300,2300,2500,2700,2600,2400,2500,2300,2300,2100,2300,2400,2200,2300,2200,2000,2200,2000,2700,5600,7700,9000,8000,7300,4200,3600,3400,3400,5000,6000,7600,8500,8100,8400,7400,3000,2000,1600,1400,2200,2900,2600,2200,1700,1700,1700,1800,1500,1300,1400,1500,2500,1900,1200,2800,3800,3700,5800,6000,7100,7100,7100,7100,3000,1900,3900,4600,5000,5700,7100,7600,5800,5800,1000,}
values["MSAtable"][69]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2600,3000,3400,3500,3500,3000,2800,2600,2400,2400,2600,2400,2400,2400,2800,3400,7200,9200,10300,11000,10800,9200,9200,7600,5700,2000,1300,1000,1100,1300,1300,1200,1300,1400,2100,2000,2100,2300,2100,2200,2500,3700,3800,3500,3200,2000,1700,2100,2400,2400,2500,2600,2200,1700,1700,1900,1700,1600,1700,1700,1400,1300,1200,1100,1100,1200,1300,1300,1800,2000,1800,1800,1900,1800,1300,1300,1000,1200,2400,2600,2300,1800,1700,1500,1400,1300,2100,2200,2200,4100,4600,4300,4200,5600,7600,7200,3600,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,5900,7100,5600,3200,3200,5000,7800,8500,9700,9900,10200,10600,11000,11300,11600,11900,12100,12100,12400,12300,12000,11700,11500,11000,11100,10300,10100,10200,10100,8700,7900,5600,4000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,3700,4500,5400,8000,7200,5500,4700,3700,4700,4400,4500,2500,2400,2600,3100,2900,2300,2200,2100,1900,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1600,1100,1000,1000,1000,1000,1000,1000,1000,1100,1400,1400,2300,2400,2000,1500,1500,1200,1300,1300,1300,1200,1300,1200,1300,1400,1400,1300,1300,1300,1300,1400,1400,1500,1600,1500,1500,1600,2700,3700,4100,4800,7000,7200,7200,5900,7400,7200,5700,5700,3600,4000,3400,3000,2400,3100,3700,4400,3700,3900,4000,3200,2800,2500,2700,2000,1800,2000,2000,2100,2100,2300,2300,2000,1700,1600,2200,4300,7000,8200,7300,4700,3700,3200,4500,5000,3500,4200,4400,5500,5600,5300,4600,3900,3300,3200,3100,2600,2700,3200,3200,3000,2600,2500,2300,2100,1700,1300,1300,1300,1200,1200,2700,4100,3900,4700,5000,3200,3000,3300,1500,3600,4900,4400,3600,4300,4800,4800,4300,3500,2200,1000,}
values["MSAtable"][70]= { 2800,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1200,1200,1200,1200,1200,1300,1200,1300,1300,1300,1200,1500,1400,1200,1200,1200,1100,1100,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1500,1600,1200,1300,1000,1000,1000,1000,1000,1900,2400,2900,2600,2600,2400,2300,2100,2100,1900,1700,1800,1800,1700,1500,1400,1200,1100,1100,1000,1000,1000,1900,2700,2900,3000,2500,2100,1300,1300,1500,1700,2800,2900,3000,2600,2000,1700,2100,2100,2700,2900,3300,3500,4600,5600,7400,8000,7600,7100,4100,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,7500,8000,8800,7200,7000,7000,8500,9500,10000,10400,10700,11000,11400,11600,11800,12000,12100,12100,12200,12200,12100,11800,11600,11100,10000,9400,8800,8900,9100,8000,8200,5300,4200,3900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1800,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3200,4300,5000,4800,4900,4500,4300,3800,4300,3200,3400,3100,2600,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,1600,1600,1400,1500,1400,1500,1200,1000,1000,1000,1000,1000,1100,1200,1200,1300,1200,1200,1100,1200,1300,1400,1300,1300,1400,1300,1400,1300,1300,1500,1700,1800,1600,1700,2200,3400,3900,4200,4700,4800,4200,3900,3900,3800,4000,4100,3500,3500,3300,3200,2900,3600,3400,3600,3800,3900,3400,2700,1700,1800,1700,1800,2000,1800,2000,2100,2200,2400,2400,2600,2600,2300,2400,3500,4900,5000,4500,3400,1700,3200,4300,3100,2600,2600,3000,4400,3300,2800,1900,2000,1600,1800,1300,1900,2400,2200,2000,1900,2800,2300,1300,1200,1200,1200,1100,1200,1900,1200,1200,1000,1000,1000,1000,1000,1000,1000,3100,2800,1000,1000,1000,1000,1000,1000,2500,2200,1000,}
values["MSAtable"][71]= { 4300,3500,2100,1000,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,2000,3100,3300,2400,2400,1400,2300,2500,2700,2700,2600,2700,3100,3000,2600,2500,1600,1600,1500,1500,1400,1000,1000,1000,1100,1300,1500,1500,2200,2300,2800,2800,1200,1000,1100,1900,1900,1900,1900,1800,1900,2500,2500,2400,4000,4100,4200,5600,5600,7200,5500,5800,7200,7200,2700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,4700,8000,7800,9800,8700,8300,9000,9500,9900,10300,10600,10900,11100,11400,11600,11900,12000,12100,12200,12200,12200,12100,11800,11600,11100,10200,10100,9900,9400,9900,9500,8200,5000,4200,3700,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,8900,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2100,2200,2300,2200,2100,1800,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,2300,2700,2500,1700,1500,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1100,1200,1200,1200,1200,1100,1200,1200,1100,1300,1200,1200,1300,1400,1400,1400,1600,1600,1500,1600,1700,1500,1600,1500,1800,1600,1700,1700,1800,1600,1500,1400,1400,1500,2400,2800,2800,2700,2900,2800,2900,3000,3000,2800,2400,2300,2200,1800,1800,1600,1700,1700,1700,1600,1900,2500,2600,2600,2600,2600,4100,3100,2300,1500,1100,1300,1200,1500,1200,1100,1100,1200,1200,2300,1700,1200,1100,1100,1200,1200,1200,1200,1200,1100,1000,1000,1000,1100,1200,1200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,3000,1000,}
values["MSAtable"][72]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1400,1900,2200,2300,2000,2300,2200,2100,2200,2400,2300,2200,1900,2900,2900,2800,2500,1800,1900,1700,1400,1100,1000,1400,1200,1100,1600,1500,1500,2000,2400,2500,2000,2000,2000,1000,1900,2100,2200,2400,3700,4000,4100,4300,3900,3600,4200,5600,7100,7700,8200,4600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3000,4800,8100,7700,8700,8400,9200,9500,10200,10400,10900,11200,11400,11600,12000,12100,12200,12400,12500,12500,12400,12200,12100,11500,11300,11000,10400,10000,9500,9100,9300,9300,8600,5000,4600,2000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1300,2300,3200,3600,3100,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1200,1200,1200,1100,1000,1100,1100,1100,1100,1200,1200,1400,2200,2400,2000,1800,1600,1600,1600,1600,1500,1500,1600,1800,1700,1700,1600,1800,1700,1700,1600,1500,1500,1600,1500,2100,2300,2300,2400,2400,2100,2200,2100,1900,1700,1500,1400,1400,1500,1500,1600,1600,1700,2300,2500,2400,2500,2100,2400,2500,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,2600,2100,1200,1200,1200,1200,1100,1200,1200,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][73]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1700,1900,2100,2100,2300,2500,2300,2000,1800,2100,1200,1200,1000,1200,1000,1600,1800,1800,1900,1500,1000,1400,1300,1700,1700,1800,2300,2100,2400,2600,2300,2300,2400,2300,2000,2500,2600,2800,2900,4000,5300,5000,5000,7300,7600,8300,7700,5100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2000,4700,5900,8200,8900,9600,9600,9500,10000,10500,11100,11300,11500,11600,11900,12100,12100,12300,12500,12500,12300,12000,11800,11400,11300,11100,10500,10000,9900,9000,9000,8100,7300,7100,5700,5000,3100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,3800,5000,4600,4800,3000,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1100,1000,1000,1000,1000,1000,1000,1000,1000,1100,1600,2000,2300,2100,2100,1800,1900,1700,1900,2200,2400,1900,2500,2900,2700,2900,3000,1700,1600,1800,1700,1700,1700,1600,1700,1600,2200,1600,1500,1200,1300,1300,1300,1300,1400,1600,1800,1600,1400,1400,1200,1000,1100,1100,1100,1100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1700,1000,1000,1500,1500,1700,1700,1900,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}
values["MSAtable"][74]= { 1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1200,1600,2000,2200,2000,1900,2500,2300,2100,2300,2100,2100,2100,1900,1700,1700,1300,1500,1300,1000,1000,1000,1000,1000,1000,1100,1800,1900,1500,1700,2100,2100,1800,2200,2400,2500,2600,3300,3500,3500,3500,3900,5100,5100,4000,1600,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2900,3900,4500,5800,8000,8600,9500,9600,9500,9900,10500,11100,11300,11500,11500,11600,11700,11700,11700,11700,11700,11500,11300,11000,10500,10300,10000,9600,9500,9200,8700,8100,8500,8600,8200,7400,7000,5000,4000,2200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,2400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,2300,3800,4800,4600,4100,2900,2100,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1600,1400,1300,1300,1400,1600,1800,2100,2200,2600,2400,2700,3000,3000,3100,3700,2700,3000,2900,3100,3000,3000,2100,2900,2400,3100,2400,1700,1900,1900,1700,1400,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1500,1400,1300,2100,1700,1100,1100,1200,1000,1000,1000,1000,1300,1200,1200,1200,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,}


local controls = {}
controls["lselect"] = 0
controls["rselect"] = 0
controls["lCRSR"] = 0
controls["rCRSR"] = 0
controls["lsCRSR"] = 0
controls["rsCRSR"] = 0
controls["WPTCRSR"] = 0
controls["rCRSRchar"] = 0
controls["lCRSRchar"] = 0
controls["lknobl"] = 0
controls["lknobs"] = 0
controls["rknobl"] = 0
controls["rknobs"] = 0
controls["rknobsangle"] = 0
controls["lknobsangle"] = 0
controls["brknobsangle"] = 0
controls["blknobsangle"] = 0


controls["rsCRSRchar"] = 0
controls["lsCRSRchar"] = 0
controls["lsknobl"] = 0
controls["lsknobs"] = 0
controls["rsknobl"] = 0
controls["rsknobs"] = 0
controls["lsselect"] = 0
controls["rsselect"] = 0
--the view values are used for lists
controls["rview"] = 0
controls["lview"] = 0
controls["SIDSTARview"] = 0

--use these if you want to confirm something etc.
controls["rstate"] = 0
controls["FPLstate"] = 0

--1 DTO, 2 Multi, 3 ALT
controls["lspage"] = 0
--1 WPT, 2, create 3 ALT
controls["rspage"] = 0


controls["MSG"] = 0
controls["ALT"] = 0
controls["DCT"] = 0
controls["SCAN"] = 0
controls["ENT"] = 0
controls["CLR"] = 0

local gline = {"", "", "", "", "", "", ""}
local bline = {"", "", "", "", "", "", ""}
local reset_timer=0

local function kln_sc_text_state()
	return {
		gline = gline,
		bline = bline,
		scaleline = values["scaleline"],
		cagevisible = cagevisible,
	}
end

local function kln_sc_local_screen_state()
	return {
		text_state = kln_sc_text_state(),
		nav5_comp = Nav5Comp,
		apt3_comp = APT3Comp,
		parsed_map_items = nil,
	}
end

--this reads the config file
--luckily, we still have default values if the file is not present
local filename = sasl.getAircraftPath () .. "/KLNconfig.txt"
local file = io.open(filename, "a+")

while true do
local line = file:read("*line")
if line == nil then break end
if string.find(line, "#1") then
values["welcome1"] = string.sub(line, 3)
elseif string.find(line, "#2") then
values["welcome2"] = string.sub(line, 3)
elseif string.find(line, "#3") then
values["welcome3"] = string.sub(line, 3)
elseif string.find(line, "#4") then
values["welcome4"] = string.sub(line, 3)
elseif string.find(line, "#Timezone") then
values["time"]["zone"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#Barounit") then
values["barounit"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#Lasttype") then
values["lasttype"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#Lastident") then
values["lastident"] = string.sub(line, 11)
elseif string.find(line, "#LastLon") then
values["initlon"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#LastLat") then
values["initlat"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#GPSHobbs") then
values["GPSHobbs"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#GPSTurnons") then
values["GPSTurnons"] = tonumber(string.sub(line, 12))
elseif string.find(line, "#LastAPT") then
values["lastAPT"] = string.sub(line, 9)
elseif string.find(line, "#RWYminlength") then
values["RWYminlength"] = tonumber(string.sub(line, 14))
elseif string.find(line, "#RWYsurface") then
values["RWYsurface"] = tonumber(string.sub(line, 12))
elseif string.find(line, "#RealGPS") then
values["realGPS"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#Fuelunit") then
values["fuelunit"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#Primary") then
values["primary"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#Timerstart") then
values["timerstart"] = tonumber(string.sub(line, 12))
elseif string.find(line, "#Turnanti") then
values["turnanticipation"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#HSIinterf") then
values["HSIinterf"] = tonumber(string.sub(line, 11))
elseif string.find(line, "#Volume") then
values["volume"] = tonumber(string.sub(line, 8))
setSampleGain(alert, values["volume"]*10)
setSampleGain(alertl, values["volume"]*10)
elseif string.find(line, "#VNV GS") then
values["VNVgs"] = tonumber(string.sub(line, 8))
elseif string.find(line, "#NAV5RNG") then
values["NAV5RNG"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#NAV5BRNG") then
values["NAV5RNG2"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#NAV5LNS") then
values["NAV5LNS"] = string.sub(line, 9)
elseif string.find(line, "#NAV5SHOW") then
values["NAV5SHOW"] = string.sub(line, 10)
elseif string.find(line, "#NAV5Clut") then
values["NAV5Clut"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#NAV5ORI") then
values["NAV5ORI"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#NAV5ORI2") then
values["NAV5ORI2"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#NAV5ORIS") then
values["NAV5ORIS"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#SHOWHELI") then
values["showheli"] = tonumber(string.sub(line, 10))
elseif string.find(line, "#SHOWWAT") then
values["showwat"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#NAVSYNC") then
values["NAVSYNC"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#GPSRATE") then
values["GPSrate"] = tonumber(string.sub(line, 9))
elseif string.find(line, "#PWRKNOB") then
power_knob = tonumber(string.sub(line, 9))


end
end
file:close()

if values["barounit"] == 0 then
values["baro"] = 2992
values["cal1baro"] = 2992
else
values["baro"] = 1013
values["cal1baro"] = 1013
end


function numbertomonth(month2)
local months = "___"
if month2 == 1 then
months = "JAN"
elseif month2 == 2 then
months = "FEB"
elseif month2 == 3 then
months = "MAR"
elseif month2 == 4 then
months = "APR"
elseif month2 == 5 then
months = "MAY"
elseif month2 == 6 then
months = "JUN"
elseif month2 == 7 then
months = "JUL"
elseif month2 == 8 then
months = "AUG"
elseif month2 == 9 then
months = "SEP"
elseif month2 == 10 then
months = "OCT"
elseif month2 == 11 then
months = "NOV"
elseif month2 == 12 then
months = "DEC"
end
return months
end

function parse_apt(path, data)
local filename = path .. "apt.dat"
local file = io.open(filename, "r")

if file == nil then
return false
end
print("Parsing APT file: " .. filename)
local line = file:read("*line")
local words = {nil, nil, nil, nil, nil, nil, nil}
while true do
::continue::
if line == nil or line == "99" then break end

local icao_code = ""

words[1], words[2] = line:match("(%w+)(.+)")
if line == '\r' or line == '' then
while true do
line = file:read("*line")

if line == "" or line == nil then
break
end

words[1], words[2] = line:match("(%w+)(.+)")
if words[1] == nil or words[2] == nil then print("APT Parsing ERROR in " .. filename .. "\r" .. "LINE: " ..  line ) goto continue end
if words[1] == "1" or words[1] == "16" or words[1] == "17"then
words[3], words[4], words[5], words[6], words[7] = words[2]:match("(%w+) (%w+) (%w+) (%w+) (.+)")
for i=3, 7, 1 do if words[i] == nil then print("APT Parsing ERROR in " .. filename .. "\r" .. "CASE " .. words[1] .. " FIELD: " ..  i-1  .. " LINE: " ..  line ) goto continue end end --check if correct format was read
if string.len(words[6]) > 4 then print("APT Parsing: Skipping: " .. words[6] .. " - ICAO code longer than 4 digits" ) goto continue end
--icao 1, name 2, amsl 3, lat 4, lon 5, rwy{} 6, atis{} 7, type 8
icao_code = words[6]
data["airport"][icao_code] = {
words[6], --icao
words[7]:upper():gsub("[^A-Za-z0-9 ]",""):gsub(" +"," "), --name
words[3], --amsl
"", --lat
"", --lon
{}, -- rwy{}
{}, --atis{}
words[1], --type
}

elseif words[1] == "1302" then
local id, lat_lon= words[2]:match("(%w+%p+%w+) (.+)")
if tonumber(lat_lon) then
if id == "datum_lat" then
--(data["airport"][icao_code][1])
--print(id, lat_lon)
lat_lon = string.format("%.6f", lat_lon)
data["airport"][icao_code][4] = lat_lon;
elseif id == "datum_lon" then
lat_lon = string.format("%.6f", lat_lon)
data["airport"][icao_code][5] = lat_lon;
end
end

elseif words[1] == "100" then
local fields = {}

for w in words[2]:gmatch("([^%s]+)") do fields[#fields + 1] = w end
for i=1, 19, 1 do if fields[i] == nil then print("APT Parsing ERROR in " .. filename .. "\r" .. "CASE " .. words[1] .. " FIELD: " ..  i+1  .. " LINE: " ..  line ) goto continue end end --check if correct format was read
if fields[8]:len() < 2 then
fields[8] = "0" .. fields[8]
elseif fields[8]:len() < 3 and tonumber(string.sub(fields[8], -1)) == nil then
fields[8] = "0" .. fields[8]
end

if fields[17]:len() < 2 then
fields[17] = "0" .. fields[17]
elseif fields[17]:len() < 3 and tonumber(string.sub(fields[17], -1)) == nil then
fields[17] = "0" .. fields[17]
end

fields[9] = string.format("%.6f", fields[9])
fields[10] = string.format("%.6f", fields[10])
fields[18] = string.format("%.6f", fields[18])
fields[19] = string.format("%.6f", fields[19])

local lenght = math.floor(distance(fields[9], fields[10], fields[18], fields[19])*6076.11549)

data["airport"][icao_code][6][#data["airport"][icao_code][6] + 1] = {
fields[2],
fields[5],
lenght,
fields[8],
fields[9],
fields[10],
fields[17],
fields[18],
fields[19]
}


elseif words[1] == "102"  then
local fields = {}

for w in words[2]:gmatch("([^%s]+)") do fields[#fields + 1] = w end
for i=1, 11, 1 do if fields[i] == nil then print("APT Parsing ERROR in " .. filename .. "\r" .. "CASE " .. words[1] .. " FIELD: " ..  i+1  .. " LINE: " ..  line ) goto continue end end --check if correct format was read
fields[2] = string.format("%.6f", fields[2])
fields[3] = string.format("%.6f", fields[3])


data["airport"][icao_code][6][#data["airport"][icao_code][6] + 1] = {
fields[7],
fields[11],
math.floor(fields[5]*3.2808399),
fields[1],
fields[2],
fields[3]
}

elseif words[1] == "101"  then
local fields = {}

for w in words[2]:gmatch("([^%s]+)") do fields[#fields + 1] = w end
for i=1, 8, 1 do if fields[i] == nil then print("APT Parsing ERROR in " .. filename .. "\r" .. "CASE " .. words[1] .. " FIELD: " ..  i-1  .. " LINE: " ..  line ) goto continue end end --check if correct format was read
if fields[3]:len() < 2 then
fields[3] = "0" .. fields[3]
elseif fields[3]:len() < 3 and tonumber(string.sub(fields[3], -1)) == nil then
fields[3] = "0" .. fields[3]
end

if fields[6]:len() < 2 then
fields[6] = "0" .. fields[6]
elseif fields[6]:len() < 3 and tonumber(string.sub(fields[6], -1)) == nil then
fields[6] = "0" .. fields[6]
end

fields[4] = string.format("%.6f", fields[4])
fields[5] = string.format("%.6f", fields[5])
fields[7] = string.format("%.6f", fields[7])
fields[8] = string.format("%.6f", fields[8])

local lenght = math.floor(distance(fields[4], fields[5], fields[7], fields[8])*6076.11549)


data["airport"][icao_code][6][#data["airport"][icao_code][6] + 1] = {
"13",
fields[2],
lenght,
fields[3],
fields[4],
fields[5],
fields[6],
fields[7],
fields[8]
}
--surf 1, light 2, lenght 3, rwy 4, lat 5, lon 6, rwy2 7, lat2 8, lon2 9
elseif words[1] == "1050" or words[1] == "1051" or words[1] == "1052" or words[1] == "1053" or words[1] == "1054" or words[1] == "1055" or words[1] == "1056" then -- or (words[1] >= "50" and words[1] <= 56)  then
local frq =  words[2]:match("(%w+) (.+)")
--service 1, frq 2
if frq then
data["airport"][icao_code][7][#data["airport"][icao_code][7]+1] = {words[1],frq}
end
elseif words[1] == "1050" or words[1] == "1051" or words[1] == "1052" or words[1] == "1053" or words[1] == "1054" or words[1] == "1055" or words[1] == "1056" then -- or (words[1] >= "50" and words[1] <= 56)  then
local frq =  words[2]:match("(%w+) (.+)")
--service 1, frq 2
if frq then
data["airport"][icao_code][7][#data["airport"][icao_code][7]+1] = {words[1],frq}
end
end
end

else
line = file:read("*line")
end

end
file:close()

return true
end

function parse_fix(path, data)
local filename = path .. "earth_fix.dat"
local file = io.open(filename, "r")

if file == nil then
print("earth_fix.dat file not found")
return
end
print("Parsing FIX file: " .. filename)
local line = file:read("*line")
while true do
line = file:read("*line")
if line == '\r' or line == '' then break end
end

while true do
::continue::
line = file:read("*line")
if line == nil or line == "99\r" or line == "99" then break end

local fields = {}
for w in line:gmatch("([^%s]+)") do
fields[#fields+1] = w
end
for i=1,5,1 do --check if correct format was read
if fields[i] == nil then print("FIX Parsing ERROR in " .. filename .. "\r" .. " FIELD: " ..  i  .. " LINE: " ..  line ) goto continue end
end
fields[1] = string.format("%.6f", fields[1])
fields[2] = string.format("%.6f", fields[2])

data["fix"][#data["fix"]+1] = {
fields[1], --lat
fields[2], --lon
fields[3], --name
fields[5], --code
fields = nil
}
end
file:close()

end

function parse_nav(path, data)
local filename = path .. "earth_nav.dat"
local file = io.open(filename, "r")

if file == nil then
return
end
print("Parsing NAV file: " .. filename)
local line = file:read("*line")

while true do

line = file:read("*line")
if line:sub(1,2) == "11" or  line:sub(1,2) == "12" then
data["cycle"] = line
elseif line == '\r' or line == '' then break
end
end
local words = {}
local cnt = 0
local ind = 0
while true do
::continue::
line = file:read("*line")
if line == nil or line == "99\r" or line == "99" then break end
words[1], words[2] = line:match("(%w+)(.+)")
if words[1] == nil or words[2] == nil then print("NAV Parsing ERROR in " .. filename .. "\r" .. "LINE: " ..  line ) goto continue end
if words[1] == "2" then
local fields = {}
for w in words[2]:gmatch("([^%s]+)") do fields[#fields + 1] = w end
for i=1,10,1 do if fields[i] == nil then print("NAV Parsing ERROR in " .. filename .. "\r" .. "CASE " .. words[1] .. " FIELD: " ..  i  .. " LINE: " ..  line ) goto continue end end --check format
fields[1] = string.format("%.6f", fields[1])
fields[2] = string.format("%.6f", fields[2])
if #fields > 10 then
for var=11,#fields,1 do
fields[10] = fields[10] .. " " .. fields[var]
end
end
local tid = fields[7] .. fields[9] .. fields[4]
data["nav"][tid] = {
fields[1], --lat
fields[2], --lon
fields[7],  				--id
fields[10], 				--name
fields[9],  				--code
fields[3],  				--elev
fields[4] .. "000",   	--frq
fields[5],				--class
0,						--vorndb
0,						--dme
" "
}
elseif words[1] == "3" then
local fields = {}
for w in words[2]:gmatch("([^%s]+)") do fields[#fields + 1] = w end
for i=1,10,1 do if fields[i] == nil then print("NAV Parsing ERROR in " .. filename .. "\r" .. "CASE " .. words[1] .. " FIELD: " ..  i  .. " LINE: " ..  line ) goto continue end end --check format

fields[1] = string.format("%.6f", fields[1])
fields[2] = string.format("%.6f", fields[2])
if #fields > 10 then
for var=11,#fields,1 do
fields[10] = fields[10] .. " " .. fields[var]
end
end
local tid = fields[7] .. fields[9] .. fields[4]
data["nav"][tid] = {
fields[1],  --lat
fields[2],  --lon
fields[7],                 --id
fields[10],              --name
fields[9],               --code
fields[3],               --elev
fields[4] .. "0",         --frq
fields[5],              --class
1,                     --vorndb
0,                        --dme
string.format("%.1f", fields[6])	--magvar
}

end
end
file:close()

end

function create_wptdb(path, data)

local filename = path .. "waypoints.txt"
local file = io.open(filename, "w")
local count = 0
table.sort(data["fix"], function(a,b) return a[3] < b[3] end)
for k, v in ipairs(data["fix"]) do
file:write(v[3] .. "|" .. v[1] .. "|" .. v[2] .. "|" .. v[4] .. "\n")
count = count+1
end
print(count .. " waypoints added to the database")
file:close()

end

function create_navidsdb(path, data)

local filename = path .. "navaids.txt"
local file = io.open(filename, "w")
local count = 0
--lat 1, lon 2, id 3, name 4, code 5, elev 6, frq 7, class 8, vorndb 9, dme 10
for k, v in pairsByKeys(data["nav"]) do
file:write(v[3] .. "|" .. v[4].. "|" .. v[7].. "|" .. v[9].. "|" .. v[10].. "|" .. v[8] .. "|" .. v[1] .. "|" .. v[2].. "|" .. v[6] .. "|" .. v[5] .. "|" .. v[11] .. "\n")
count = count+1
end
print(count .. " navaids added to the database")
file:close()

filename = path .. "database.txt"
file = io.open(filename, "w")
file:write(data["cycle"] .. "\n" .. "#Database generated form x-plane nav data on user pc by KLN90B plugin.\n")
file:close()

end

function create_aptdb(path, data)
local filename = path .. "airports.txt"
local file = io.open(filename, "w")
local count = 0

local fields = {}
for w in data["cycle"]:gmatch("([^%s]+)") do fields[#fields + 1] = w end
local airac_cycle = fields[6]
local airac_year = 2000 + tonumber(airac_cycle:sub(1, 2))
local cycle_num = tonumber(airac_cycle:sub(3, 4))
local exp_date = os.time { year = 1998, month = 1, day = 29, hour = 0 }
local days28 = 28 * 24 * 60 * 60
while tonumber(os.date("%Y", exp_date)) < airac_year do
exp_date = exp_date + days28
end
exp_date = exp_date + days28 * cycle_num
exp_date = os.date("%d%b/%y", exp_date):upper() -- e.g. 21MAR/24
--icao 1, name 2, amsl 3, lat 4, lon 5, rwy{} 6, atis{} 7, type 8
file:write("X|" .. fields[6]:sub(1,4) .. "|" .. "XXXXX" .. exp_date .. "|XXXXXXXXXXXXXXXXXX\n\n")
for k, v in pairsByKeys(data["airport"]) do
if v[2] == nil then break end
count = count + 1
if v[4] == "" then
local lat = "0"
local lon = "0"
for k1, v1 in pairs(v[6]) do
lat = lat + v1[5]
lon = lon + v1[6]
end
v[4] = string.format("%.6f", lat/#v[6])
v[5] = string.format("%.6f", lon/#v[6])
end
if v[8] == "1" then
file:write("A|" .. v[1] .. "|" .. v[2] .. "|" .. v[4] .. "|" .. v[5] .. "|" .. v[3] .. "\n")
elseif v[8] == "16" then
file:write("WP|" .. v[1] .. "|" .. v[2] .. "|" .. v[4] .. "|" .. v[5] .. "|" .. v[3] .. "\n")
elseif v[8] == "17" then
file:write("HP|" .. v[1] .. "|" .. v[2] .. "|" .. v[4] .. "|" .. v[5] .. "|" .. v[3] .. "\n")
end
--surf 1, light 2, lenght 3, rwy 4, lat 5, lon 6, rwy2 7, lat2 8, lon2 9
for k1, v1 in pairs(v[6]) do
local light = " "
if v1[2] == "1" then light = "L" end

local surf = v1[1]
if surf == "1" then
surf = "HRD"
elseif surf == "2" then
surf = "HRD"
elseif surf == "15" then
surf = "HRD"
elseif surf == "3" then
surf = "TRF"
elseif surf == "4" then
surf = "DRT"
elseif surf == "5" then
surf = "GRV"
elseif surf == "12" then
surf = "SND"
elseif surf == "14" then
surf = "SNW"
elseif surf == "13" then
surf = "WAT"
else
surf = "   "
end
--surf 1, light 2, lenght 3, rwy 4, lat 5, lon 6, rwy2 7, lat2 8, lon2 9
if string.sub(v1[4], 1 , 1) == "H" then
file:write("H|" .. v1[4] .. "|" .. v1[5] .. "|" .. v1[6] .. "|" .. v1[3] .. "|" .. surf .. "|" .. light .. "\n")
elseif surf == "WAT" then
file:write("W|" .. v1[4] .. "|" .. v1[5] .. "|" .. v1[6] .. "|" .. v1[7] .. "|" .. v1[8] .. "|" .. v1[9].. "|" .. v1[3] .. "|" .. surf .. "|" .. light .. "\n")
else
file:write("R|" .. v1[4] .. "|" .. v1[5] .. "|" .. v1[6] .. "|" .. v1[7] .. "|" .. v1[8] .. "|" .. v1[9].. "|" .. v1[3] .. "|" .. surf .. "|" .. light .. "\n")
end


end

for k1, v1 in pairs(v[7]) do

local station = "     "
if v1[1] == "1050" then
station = "ATIS"
elseif v1[1] == "1051" then
station = "UNIC"
elseif v1[1] == "1052" then
station = "CLR "
elseif v1[1] == "1053" then
station = "GRND"
elseif v1[1] == "1054" then
station = "TWR "
elseif v1[1] == "1055" then
station = "APR "
elseif v1[1] == "1056" then
station = "DEP "
end
file:write("F|" .. station .. string.format("%.3f", v1[2]/1000) .. "\n")

end

file:write("\n")
end
print(count .. " airports added to the database")
file:close()

end

function pairsByKeys (t, f)
local a = {}
local ind = 0
for n in pairs(t) do
ind = ind + 1
a[ind] = n
end
table.sort(a, f)
local i = 0      -- iterator variable
local iter = function ()   -- iterator function
i = i + 1
if a[i] == nil then return nil
else return a[i], t[a[i]]
end
end
return iter
end

function makelength(strings, lengths, beforeafter)
local length = lengths - string.len(strings)
if beforeafter == 0 then
strings = strings .. (" "):rep(length)
elseif beforeafter == 1 then
strings = (" "):rep(length) .. strings
elseif beforeafter == 2 then
if string.find(strings, "-") then
strings = "-" .. ("0"):rep(length) .. string.sub(strings, 2)
else
strings = ("0"):rep(length) .. strings
end
end
return strings
end
-- function makelength(strings, lengths, beforeafter)

-- local length = string.len(strings)

-- while length < lengths do
-- if beforeafter == 0 then
-- strings = strings .. " "
-- elseif beforeafter == 1 then
-- strings = " " .. strings
-- elseif beforeafter == 2 then
-- if string.find(strings, "-") then
-- strings = "-0" .. string.sub(strings, 2)

-- else
-- strings = "0" .. strings
-- end
-- end
-- length = length + 1
-- end
-- return strings
-- end

--to0, from1
function scale(dev, range, tofrom)
dev = dev / range
if dev > 1 then dev = 1
elseif dev < -1 then dev = -1 end


local Scales = "qqqqqiqqqqq"

--calculate here if flag should be shown!


if tofrom == 2 then
Scales = "qqqqqjqqqqq"
end

--this shows the character to replace (1-11)
local char = math.floor((dev*5.5)+6.5)
-- gline[2] = char
--this is the letter to replace(1-10)
local letter = math.floor((dev*55)+66-char*10)
if char == 12 then
char = 11
letter = 10
end
-- gline[3] = letter
-- gline[4] = dev


--print(scale, char, letter)
local a = "q"
if letter == 1 then
a = "À"
elseif letter == 2 then
a = "Á"
elseif letter == 3 then
a = "Â"
elseif letter == 4 then
a = "Ã"
elseif letter == 5 then
a = "Ä"
elseif letter == 6 then
a = "Å"
elseif letter == 7 then
a = "Æ"
elseif letter == 8 then
a = "Ç"
elseif letter == 9 then
a = "È"
elseif letter == 10 then
a = "É"
end


if char == 6 and tofrom == 1 then
if letter == 1 then
a = "Ê"
elseif letter == 2 then
a = "Ë"
elseif letter == 3 then
a = "Ì"
elseif letter == 4 then
a = "Í"
elseif letter == 5 then
a = "Î"
elseif letter == 6 then
a = "Ï"
elseif letter == 7 then
a = "Ð"
elseif letter == 8 then
a = "Ñ"
elseif letter == 9 then
a = "Ò"
elseif letter == 10 then
a = "Ó"
end
elseif char == 6 and tofrom == 2 then
if letter == 1 then
a = "Ô"
elseif letter == 2 then
a = "Õ"
elseif letter == 3 then
a = "Ö"
elseif letter == 4 then
a = "×"
elseif letter == 5 then
a = "Ø"
elseif letter == 6 then
a = "Ù"
elseif letter == 7 then
a = "Ú"
elseif letter == 8 then
a = "Û"
elseif letter == 9 then
a = "Ü"
elseif letter == 10 then
a = "Ý"
end
end





if letter == 10 and char ~= 11 then
if char == 5 and tofrom == 1 then

Scales = replaceChar(Scales,char+1,"Ê")
elseif char == 5 and tofrom == 2 then
Scales = replaceChar(Scales,char+1,"Ô")

else
Scales = replaceChar(Scales,char+1,"À")
end
-- gline[7] = "À"
end


Scales = replaceChar(Scales,char,a)
--print("1", Scales)

--I need to workaround a Unicode bug

if letter == 1 and char ~= 1 then
if char == 7 and tofrom == 1 then

local scales1 = string.sub(Scales, 1, char-2)
local scales2 = string.sub(Scales, char)
Scales = scales1 .. "Ó" .. scales2
elseif char == 7 and tofrom == 2 then
local scales1 = string.sub(Scales, 1, char-2)
local scales2 = string.sub(Scales, char)
Scales = scales1 .. "Ý" .. scales2
else
local scales1 = string.sub(Scales, 1, char-2)
local scales2 = string.sub(Scales, char)
Scales = scales1 .. "É" .. scales2
end
--print("2", Scales, scales1, scales2)
end

return Scales
end

function reset()
local filename = sasl.getAircraftPath () .. "/KLNconfig.txt"
local file = io.open(filename, "w")
file:write("###########################\n  DO NOT MODIFY THIS FILE!\nYOU SHOULDN'T EVEN READ IT!\n###########################\n")
file:write("#1" .. values["welcome1"] .. "\n" )
file:write("#2" .. values["welcome2"] .. "\n" )
file:write("#3" .. values["welcome3"] .. "\n" )
file:write("#4" .. values["welcome4"] .. "\n" )
file:write("#Timezone" .. values["time"]["zone"] .. "\n" )
file:write("#Barounit" .. values["barounit"] .. "\n" )
file:write("#GPSHobbs" .. values["GPSHobbs"] .. "\n" )
file:write("#GPSTurnons" .. values["GPSTurnons"] .. "\n" )
if values["APTpage"] ~= nil then
file:write("#LastAPT" .. values["APTpage"][1]["ident"] .. "\n" )
else
file:write("#LastAPT" .. "----" .. "\n" )
end
if values["activeWPT"]["length"] > 0 then
file:write("#Lasttype" .. values["activeWPT"][values["activeWPT"]["length"]]["types"] .. "\n" )
file:write("#Lastident" .. values["activeWPT"][values["activeWPT"]["length"]]["ident"] .. "\n" )
end
file:write("#LastLat" .. values["GPSlat"] .. "\n" )
file:write("#LastLon" .. values["GPSlon"] .. "\n" )
file:write("#RWYminlength" .. values["RWYminlength"] .. "\n" )
file:write("#RWYsurface" .. values["RWYsurface"] .. "\n" )
file:write("#Fuelunit" .. values["fuelunit"] .. "\n" )
file:write("#Primary" .. values["primary"] .. "\n" )
file:write("#RealGPS" .. values["realGPS"] .. "\n" )
file:write("#Timerstart" .. values["timerstart"] .. "\n" )
file:write("#Turnanti" .. values["turnanticipation"] .. "\n" )
file:write("#HSIinterf" .. values["HSIinterf"] .. "\n" )
file:write("#Volume" .. values["volume"] .. "\n" )
file:write("#VNV GS" .. values["VNVgs"] .. "\n" )
file:write("#NAV5RNG" .. values["NAV5RNG"] .. "\n" )
file:write("#NAV5BRNG" .. values["NAV5RNG2"] .. "\n" )
file:write("#NAV5LNS" .. values["NAV5LNS"] .. "\n" )
file:write("#NAV5SHOW" .. values["NAV5SHOW"] .. "\n" )
file:write("#NAV5Clut" .. values["NAV5Clut"] .. "\n" )
file:write("#NAV5ORIS" .. values["NAV5ORIS"] .. "\n" )
file:write("#SHOWHELI" .. values["showheli"] .. "\n" )
file:write("#SHOWWAT" .. values["showwat"] .. "\n" )
file:write("#NAVSYNC" .. values["NAVSYNC"] .. "\n" )
file:write("#GPSRATE" .. values["GPSrate"] .. "\n" )
file:write("#PWRKNOB" .. 0 .. "\n" )









lpage = -5
rpage = -6
set(overrideNAV1, 0)
set(overrideGPS, 0)

--SID/STAR are removed on power off
while FPlan[0]["SIDend"] >= FPlan[0]["SIDstart"] and FPlan[0]["SIDstart"] < 50 do
table.remove(FPlan[0], FPlan[0]["SIDend"])
FPlan[0]["length"] = FPlan[0]["length"] - 1
FPlan[0]["SIDend"] = FPlan[0]["SIDend"] - 1
end
while FPlan[0]["STARend"] >= FPlan[0]["STARstart"] and FPlan[0]["STARstart"] < 50 do
table.remove(FPlan[0], FPlan[0]["STARend"])
FPlan[0]["length"] = FPlan[0]["length"] - 1
FPlan[0]["STARend"] = FPlan[0]["STARend"] - 1
end
while FPlan[0]["APPend"] >= FPlan[0]["APPstart"] and FPlan[0]["APPstart"] < 50 do
table.remove(FPlan[0], FPlan[0]["APPend"])
FPlan[0]["length"] = FPlan[0]["length"] - 1
FPlan[0]["APPend"] = FPlan[0]["APPend"] - 1
end

FPlan[0]["SIDident"] = ""
FPlan[0]["SIDstart"] = 99
FPlan[0]["SIDend"] = 99
FPlan[0]["STARident"] = ""
FPlan[0]["STARstart"] = 99
FPlan[0]["STARend"] = 99
FPlan[0]["APPident"] = ""
FPlan[0]["APPstart"] = 99
FPlan[0]["APPend"] = 99
FPlan[0]["APPMAP"] = 99

values["VNVSEL"] = "00000"
values["VNVOFFS"] = "00"
values["VNVANG"] = "0.0"
values["VNVstat"] = {}
values["VNVstat"][0] = -1
values["VNVstat"][1] = {}
values["VNVstat"][1]["ident"] = "     "
values["CALC3timer"] = 0
values["CALC1timer"] = 0
values["CALCtimer"] = 0
values["GPSrate"] = 1
values["HTAPT"] = 0
values["HTlevel"] = 0

values["fuelused1"] = 0
values["fuelused2"] = 0
values["fuelused3"] = 0
values["fuelused4"] = 0
values["fuelused5"] = 0
values["fuelused6"] = 0
values["fuelused7"] = 0
values["fuelused8"] = 0
values["reserve"] = "00030"
values["statusmessage"] = "           "
values["statustimer"] = 0

if values["activeWPT"]["length"] > 0 then
values["lasttype"] = values["activeWPT"][values["activeWPT"]["length"]]["types"]
values["lastident"] = values["activeWPT"][values["activeWPT"]["length"]]["ident"]
end
values["activeWPT"] = {}
values["activeWPT"]["length"] = 0
values["activeWPT"]["active"] = 0


values["leditstate"] = 0
values["reditstate"] = 0
values["lseditstate"] = 0
values["rseditstate"] = 0

values["altalert"] = 0
values["alertlevel"] = 0
values["altwarn"] = "300"
values["INTref"] = {}
values["INTref"]["ident"] = "_____"

values["INTrad"] = "____"
values["INTdist"] = "____"
values["soundtest"] = 0


values["cal1ind"] = "00000"
values["cal1temp"] = "000"
values["cal2CAS"] = "000"
values["cal2TAS"] = 0
values["cal2temp"] = "000"
values["cal4GS"] = "175"
values["cal4FPM"] = "0800"
values["cal4ANG"] = "2.6"
values["cal5C"] = "000"
values["cal5F"] = "032"
values["cal5KT"] = "100"
values["cal5MPH"] = "115"
values["DCTload"] = 0
values["warnnum"] = 0

values["direct"] = {}
values["direct"]["ident"] = "     "
values["APTnearestlist"] = {}
values["VORnearestlist"] = {}
values["NDBnearestlist"] = {}
values["APTnearestnum"] = 0
values["NDBnearestnum"] = 0
values["VORnearestnum"] = 0
values["TRI0TAS"] = "150"
values["TRI0WHead"] = "210"
values["TRI0WSpeed"] = "018"
values["TRIFF"] = "00032.0"
values["TRIRES"] = "00032.0"
values["TRI1SPD"] = "175"
values["TRI1"] = {}
values["TRI1"][1] = {}
values["TRI1"][1]["ident"] = "P.POS"
values["TRI1"][2] = {}
values["TRI1"][2]["ident"] = "     "
values["TRI3SPD"] = "175"
values["TRI3"] = {}
values["TRI3"][1] = {}
values["TRI3"][1]["ident"] = "     "
values["TRI3"][2] = {}
values["TRI3"][2]["ident"] = "     "
values["TRI5SPD"] = "175"
values["TRI5num"] = 0

values["FPLREF"] = {}
values["FPLREF"]["ident"] = "     "
values["magvar"] = 0
values["GPSSPD"] = 0
values["GPSTRK"] = 0
values["MSGSTAT"] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}
values["MSGLIST"] = {}
values["MSGLIST"]["length"] = 0
--values["NAV5RNG"] = 0
-- values["NAV5LNS"] = "111"
--values["NAV5SHOW"] = "0000"
--values["NAV5Clut"] = 0
values["NAV5ORI"] = 0
values["NAV5DCT"] = {}
values["NAV5DCT"]["ident"] = "     "
values["lreturn"] = 0
values["rreturn"] = 0
values["lsreturn"] = 0
values["rsreturn"] = 0

values["rgstring"] = " "
values["rbstring"] = " "
values["lgstring"] = " "
values["lbstring"] = " "
values["rsgstring"] = " "
values["rsbstring"] = " "
values["lsgstring"] = " "
values["lsbstring"] = " "

values["WPTalertdist2"] = 0
values["XTK"] = 0
values["dist"] = 0
values["DTK"] = 0
values["scalefactor"] = 5
values["scaleline"] = ""
values["HSIOBS"] = 0
values["tofrom"] = 0
values["autoscale"] = 0
values["VNVpause"] = 0

controls["lselect"] = 0
controls["rselect"] = 0
controls["lCRSR"] = 0
controls["rCRSR"] = 0
controls["rCRSRchar"] = 0
controls["lCRSRchar"] = 0
controls["lknobl"] = 0
controls["lknobs"] = 0
controls["rknobl"] = 0
controls["rknobs"] = 0
controls["rknobsangle"] = 0
controls["lknobsangle"] = 0
controls["brknobsangle"] = 0
controls["blknobsangle"] = 0

controls["lsCRSR"] = 0
controls["rsCRSR"] = 0

controls["rsCRSRchar"] = 0
controls["lsCRSRchar"] = 0
controls["lsknobl"] = 0
controls["lsknobs"] = 0
controls["rsknobl"] = 0
controls["rsknobs"] = 0
controls["lsselect"] = 0
controls["rsselect"] = 0
controls["rview"] = 0
controls["lview"] = 0
controls["SIDSTARview"] = 0
controls["rstate"] = 0
controls["FPLstate"] = 0
controls["lspage"] = 0
controls["rspage"] = 0


controls["MSG"] = 0
controls["ALT"] = 0
controls["DCT"] = 0
controls["ENT"] = 0
controls["CLR"] = 0
controls["SCAN"] = 0

gline = {"", "", "", "", "", "", ""}
bline = {"", "", "", "", "", "", ""}
set(GPSmode, 1)
set(OBSreq, 0)

values["wptsubpage"] = 10
values["GPStime"] = 0

values["GPSnum"] = 0
values["GPSSAT"] = {}

values["flightimer"] = 0
lsubpage = {0, 10, 0, 20, 10, 10, 10, 10}
rsubpage = {10, 10, 10, 10, 10, 10, 10, 10, 10, 10}
cagevisible = 0
end

function tprint (tbl, indent) --debug
if not indent then indent = 0 end
for k, v in pairs(tbl) do
formatting = string.rep("  ", indent) .. k .. ": "
if type(v) == "table" then
print(formatting)
tprint(v, indent+1)
elseif type(v) == 'boolean' then
print(formatting .. tostring(v))
else
print(formatting .. v)
end
end
end


function getImage(idx)
if idx == "0" then
return mapVOR
elseif idx == "1" then
return mapquad
elseif idx == "2" then
return mapplane
elseif idx == "3" then
return mapdiamond
elseif idx == "4" then
return mapstar
elseif idx == "5" then
return mapAPT
elseif idx == "6" then
return mapNDB
elseif idx == "7" then
return mapplus
else
return mappixel
end
end

function resolveMapImage(idx)
return get(getImage(idx))
end

--function WrapTextLit(p1, p2, p3, p4, p5 )
--  return "1;"..p1..";"..p2..";"..p3..";"..p4..";"..p5..";"
--end
--
--function WrapLine(p1, p2, p3, p4, p5)
--  return "2;".. round(p1) .. ";" .. round(p2) .. ";" ..round(p3) .. ";" ..round(p4) .. ";" .. p5[1].. ";" .. p5[2]..";"..p5[3].. ";" .. p5[4]
--end
--
--function WrapString2tex(p1, p2, p3, p4)
--  return "3;"..p1..";"..round(p2)..";"..round(p3)..";"..p4[1]..";"..p4[2].. ";" .. p4[3]..";"..p4[4]
--end

function string2value(strings)
local value = -1
if strings == " " then
value = 0
elseif strings == "0" then
value = 1
elseif strings == "1" then
value = 2
elseif strings == "2" then
value = 3
elseif strings == "3" then
value = 4
elseif strings == "4" then
value = 5
elseif strings == "5" then
value = 6
elseif strings == "6" then
value = 7
elseif strings == "7" then
value = 8
elseif strings == "8" then
value = 9
elseif strings == "9" then
value = 10
elseif strings == "A" then
value = 11
elseif strings == "B" then
value = 12
elseif strings == "C" then
value = 13
elseif strings == "D" then
value = 14
elseif strings == "E" then
value = 15
elseif strings == "F" then
value = 16
elseif strings == "G" then
value = 17
elseif strings == "H" then
value = 18
elseif strings == "I" then
value = 19
elseif strings == "J" then
value = 20
elseif strings == "K" then
value = 21
elseif strings == "L" then
value = 22
elseif strings == "M" then
value = 23
elseif strings == "N" then
value = 24
elseif strings == "O" then
value = 25
elseif strings == "P" then
value = 26
elseif strings == "Q" then
value = 27
elseif strings == "R" then
value = 28
elseif strings == "S" then
value = 29
elseif strings == "T" then
value = 30
elseif strings == "U" then
value = 31
elseif strings == "V" then
value = 32
elseif strings == "W" then
value = 33
elseif strings == "X" then
value = 34
elseif strings == "Y" then
value = 35
elseif strings == "Z" then
value = 36
end
return value
end

function value2string(value)
local strings = " "
if value == 0 then
strings = " "
elseif value == 1 then
strings = "0"
elseif value == 2 then
strings = "1"
elseif value == 3 then
strings = "2"
elseif value == 4 then
strings = "3"
elseif value == 5 then
strings = "4"
elseif value == 6 then
strings = "5"
elseif value == 7 then
strings = "6"
elseif value == 8 then
strings = "7"
elseif value == 9 then
strings = "8"
elseif value == 10 then
strings = "9"
elseif value == 11 then
strings = "A"
elseif value == 12 then
strings = "B"
elseif value == 13 then
strings = "C"
elseif value == 14 then
strings = "D"
elseif value == 15 then
strings = "E"
elseif value == 16 then
strings = "F"
elseif value == 17 then
strings = "G"
elseif value == 18 then
strings = "H"
elseif value == 19 then
strings = "I"
elseif value == 20 then
strings = "J"
elseif value == 21 then
strings = "K"
elseif value == 22 then
strings = "L"
elseif value == 23 then
strings = "M"
elseif value == 24 then
strings = "N"
elseif value == 25 then
strings = "O"
elseif value == 26 then
strings = "P"
elseif value == 27 then
strings = "Q"
elseif value == 28 then
strings = "R"
elseif value == 29 then
strings = "S"
elseif value == 30 then
strings = "T"
elseif value == 31 then
strings = "U"
elseif value == 32 then
strings = "V"
elseif value == 33 then
strings = "W"
elseif value == 34 then
strings = "X"
elseif value == 35 then
strings = "Y"
elseif value == 36 then
strings = "Z"
end
return strings
end

function split(str, pat)
local t = {}
local fpat = "(.-)" .. pat
local last_end = 1
local s, e, cap = str:find(fpat, 1)
while s do
if s ~= 1 or cap ~= "" then
table.insert(t,cap)
end
last_end = e+1
s, e, cap = str:find(fpat, last_end)
end
if last_end <= #str then
cap = str:sub(last_end)
table.insert(t, cap)
end
return t
end

function readdatabase(str, pos)
pat=("|[%w%s%-%./]*"):rep(pos-1)
str2 = string.sub(str, string.find(str, pat))
pat=("|[%w%s%-%./]*"):rep(pos-2)
local a = 0
local b = 0
a, b = string.find(str2, pat)
str2 = string.sub(str2, b+2)

return str2
end

local pi = math.pi
local asin = math.asin
local sqrt = math.sqrt
local sin = math.sin
local cos = math.cos

function getmagvar(lat, lon)
if lat < 74 and lat > -60 then
local lo_lat = math.floor(lat / 5) * 5
local lo_lon = math.floor(lon / 5) * 5
local lat_index = ( lo_lat + 90 ) / 5 + 1
local lon_index = ( lo_lon + 180 ) / 5 + 1
local var1 = values["magtable"][lat_index  ][lon_index  ]
local var2 = values["magtable"][lat_index+1][lon_index  ]
local var3 = values["magtable"][lat_index  ][lon_index+1]
local var4 = values["magtable"][lat_index+1][lon_index+1]

local var12 = ((lat - lo_lat)*(var2-var1))/(lo_lat + 5 - lo_lat) + var1
local var34 = ((lat - lo_lat)*(var4-var3))/(lo_lat + 5 - lo_lat) + var3
return ((lon - lo_lon)*(var34-var12))/(lo_lon + 5 - lo_lon) + var12
else
return values["magvar"]
end
end

function intermediat(lat1, lon1, lat2, lon2, f)
lat1 =  lat1 * pi / 180
lon1 =  lon1 * pi / -180
lat2 =  lat2 * pi / 180
lon2 =  lon2 * pi / -180
d = distance(lat1, lon1, lat2, lon2) * pi/(180*60)
local A=sin((1-f)*d)/sin(d)
local B=sin(f*d)/sin(d)
local x = A*cos(lat1)*cos(lon1) +  B*cos(lat2)*cos(lon2)
local y = A*cos(lat1)*sin(lon1) +  B*cos(lat2)*sin(lon2)
local z = A*sin(lat1)           +  B*sin(lat2)
local lat=math.atan2(z,sqrt(x^2+y^2))/pi*180
local lon=math.atan2(y,x)/pi*-180
return lat, lon
end

function getMSA(lat1, lon1, lat2, lon2)
if lat1 >= 75 or lat1 < -56 or lat2 >= 75 or lat2 < -56 then
return "-----"
else
if lat1 == lat2 and lon1 == lon2 then
return makelength(values["MSAtable"][math.floor(lat1)][math.floor(lon1+181)], 5, 1)
else
local lat = lat1
local lon = lon1
local elev = 0
local f1 = 0
local f2 = 40/ distance(lat1, lon1, lat2, lon2)
while f1 <= 1 do
lat, lon = intermediat(lat1, lon1, lat2, lon2, f1)
elev1 = values["MSAtable"][math.floor(lat)][math.floor(lon+181)]
if elev1 > elev then
elev = elev1
end
f1 = f1 + f2
end
return makelength(elev, 5, 1)
end
end
end

function num2range(num)
if num == 1 then
return 1
elseif num == 2 then
return 2
elseif num == 3 then
return 3
elseif num == 4 then
return 5
elseif num == 5 then
return 7
elseif num == 6 then
return 10
elseif num == 7 then
return 12
elseif num == 8 then
return 15
elseif num == 9 then
return 17
elseif num == 10 then
return 20
elseif num == 11 then
return 25
elseif num == 12 then
return 30
elseif num == 13 then
return 40
elseif num == 14 then
return 60
elseif num == 15 then
return 80
elseif num == 16 then
return 100
elseif num == 17 then
return 120
elseif num == 18 then
return 160
elseif num == 19 then
return 240
elseif num == 20 then
return 320
elseif num == 21 then
return 480
elseif num == 22 then
return 1000
else return 0
end
end

function invalid_latlon(lat_or_lon)
return lat_or_lon == "_" or lat_or_lon == nil
end

function distance(lat1, lon1, lat2, lon2)
--workaround for displaying undefined WPTS.
if invalid_latlon(lat1) or invalid_latlon(lon1) or invalid_latlon(lat2) or invalid_latlon(lon2) then
return 99999
end
-- elseif lat1 == nil or lon1 == nil or lat2 == nil or lon2 == nil then
-- return 99999
-- end


lat1 =  lat1 * pi / 180
lon1 =  lon1 * pi / -180
lat2 =  lat2 * pi / 180
lon2 =  lon2 * pi / -180
local dist = (2 * asin(sqrt((sin((lat1 - lat2) / 2)) ^ 2 + cos(lat1) * cos(lat2) * (sin((lon1 - lon2) / 2)) ^ 2)))
dist = dist * 10800 / pi
return dist
end

function course(lat1, lon1, lat2, lon2)
if invalid_latlon(lat1) or invalid_latlon(lon1) or invalid_latlon(lat2) or invalid_latlon(lon2) then
return 0
end
--local magvar = getmagvar(lat1, lon1)
lat1 =  lat1 * pi / 180
lon1 =  lon1 * pi / -180
lat2 =  lat2 * pi / 180
lon2 =  lon2 * pi / -180
local course = math.fmod(math.atan2(sin(lon1 - lon2) * cos(lat2), cos(lat1) * sin(lat2) - sin(lat1) * cos(lat2) * cos(lon1 - lon2)), 2 * pi)
course = (course * 180 / pi) + get(MAGVARin)
if course < 0 then
course = course + 360
elseif course > 360 then
course = course - 360
end
return course
end

function raddist(lat1, lon1, tc, d)
lat =asin(sin(lat1*pi/180)*cos(d*pi/10800)+cos(lat1*pi/180)*sin(d*pi/10800)*cos(tc*pi/180))
dlon=math.atan2(sin(tc*pi/180)*sin(d*pi/10800)*cos(lat1*pi/180),cos(d*pi/10800)-sin(lat1*pi/180)*sin(lat))
lon=math.fmod( lon1*pi/180+dlon +pi,2*pi )-pi
return lat/pi*180, lon/pi*180
end

--this function is only used for the FPLN!
--It adds the length of each leg!
--only pass over the current FPLN, not all
--page 0: from current position else: numbered FPLN
function distanceFPLN(FPLN, start, finish, page)
local dist = 0


if page == 0 then
if(FPLN[start]) ~= nil then --fix for nil error if no fpl present and select wpt in vnv page
dist = distance(values["GPSlat"], values["GPSlon"], FPLN[start]["lat"], FPLN[start]["lon"])
else
dist = 0
end
--  start = start + 1
end

while start < finish do
dist = dist + distance(FPLN[start]["lat"], FPLN[start]["lon"], FPLN[start+1]["lat"], FPLN[start+1]["lon"])
start = start + 1
end
return dist
end

function courseFPLN(FPLN, to)
if to == 1 then
return course(values["GPSlat"], values["GPSlon"], FPLN[1]["lat"], FPLN[1]["lon"])
end
return course(FPLN[to-1]["lat"], FPLN[to-1]["lon"], FPLN[to]["lat"], FPLN[to]["lon"])
end

--This function converts and formats time
--seconds to hours and minutes
function convtime (seconds)
local minutes = seconds / 60
local hours = math.floor (minutes / 60)
if hours > 24 then
return "--:--"
end
minutes = (minutes / 60 - hours) * 60
if hours == 0 then
return string.format("  :%02d", minutes)
else
return string.format("%s:%02d", makelength(hours, 2, 1), minutes)
end
end

--This function can calculate ETA
--Seconds is seconds to waypoint
function FplnETA (seconds)
local minutes = seconds / 60
local hours = math.floor (minutes / 60)
if hours > 24 then
return "--:--"
end
minutes = (minutes / 60 - hours) * 60 + values["time"]["minute"]
if minutes > 60 then
hours = hours + 1
minutes = minutes - 60
end

hours = hours + values["time"]["hour"] + values["time"]["zonediff"]

if hours > 23 then hours = hours - 24
elseif hours < 0 then hours = hours + 24 end
return string.format("%02d:%02d", hours, minutes)
end

--this returns a float with the given number of decimals
function float(num, dec)
num = round(num, dec)
num = string.format("%f", num)
local x = string.find(num, "%.")
return string.sub(num, 1, x+dec)
end

function FMS()
if values["primary"] == 1 then
commandOnce(findCommand("sim/FMS/init"))

local num = 1
while num <= FPlan[0]["length"] do
if FPlan[0][num]["types"] == 4 or FPlan[0][num]["types"] == 5 or FPlan[0][num]["USR"] == 1 then
commandOnce(findCommand("sim/FMS/type_latlon"))

local lat = FPlan[0][num]["lat"]
if lat < 0 then
commandOnce(findCommand("sim/FMS/sign"))
lat = math.abs(lat)
else
commandOnce(findCommand("sim/FMS/key_space"))
end

lat = string.format("%.03f", lat)
local dec = string.find(lat, "%.")
lat = ("0"):rep(3-dec) .. lat



local num2 = 1
while num2 <= 6 do
local str = string.sub(lat, num2, num2)
if str == "." then str = "period" --workaround error sim/FMS/key_. does not exsist
elseif str == "" then break end --workaround error sim/FMS/key_ does not exsist
--print(str)
commandOnce(findCommand("sim/FMS/key_" .. str))
num2 = num2 + 1
end

local lon = FPlan[0][num]["lon"]
if lon < 0 then
commandOnce(findCommand("sim/FMS/sign"))
lon = math.abs(lon)
else
commandOnce(findCommand("sim/FMS/key_space"))
end
lon = string.format("%.03f", lon)
local dec = string.find(lon, "%.")
lon = ("0"):rep(4-dec) .. lon
num2 = 1
while num2 <= 7 do
local str = string.sub(lat, num2, num2)
if str == "." then str = "period" --workaround error sim/FMS/key_. does not exsist
elseif str == "" then break end --workaround error sim/FMS/key_ does not exsist
commandOnce(findCommand("sim/FMS/key_" .. str))
num2 = num2 + 1
end

else
if FPlan[0][num]["types"] == 0 then
commandOnce(findCommand("sim/FMS/type_apt"))
elseif FPlan[0][num]["types"] == 1 then
commandOnce(findCommand("sim/FMS/type_vor"))
elseif FPlan[0][num]["types"] == 2 then
commandOnce(findCommand("sim/FMS/type_ndb"))
elseif FPlan[0][num]["types"] == 3 then
commandOnce(findCommand("sim/FMS/type_fix"))
end

local num2 = 1
while num2 <= 5 do
local str = string.sub(FPlan[0][num]["ident"], num2, num2)
if str == " " then str = "space" end--workaround sim/FMS/key_  does not exsist
commandOnce(findCommand("sim/FMS/key_" .. str))
num2 = num2 + 1
end
end
commandOnce(findCommand("sim/FMS/next"))

num = num + 1
end
end
end

function drawline(tables, x1, y1, x2, y2, size)
--1 sup, 2 left, 3 righ, 4apt
KLN90_SC.capture_line(x1, y1, x2, y2, size)
KLN90_RENDER.for_each_line_pixel(x1, y1, x2, y2, size, function(px, py)
table.insert(tables, textureLit2 {
position = {round(px-0.5), round(py-0.5), 1, 1},
image = get(mappixel),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
end)
end

function notoccupied(tables, x, y, size)
for i,v in ipairs(tables) do
local size2 = v["position"]["v"] --component["position"]["value"] does not exsist in sasl3 replaced with "v"
if not (x > size2[1] + size2[3] or x + size < size2[1] or y + 7 < size2[2] or y > size2[2] + size2[4])then
return false
end

end

return true

end

function string2tex(tables, strings, x, y, size)
local num1 = 1
local length = string.find(strings, " ")
if length == nil then
length = 4
else
length = length - 2
end
length = length * 6

local num2 = 1
local switchx = {6, 6, 6, - length / 2, -6 - length, -6 - length, -6 - length, - length / 2, 6}
local switchy = {-7, 0, 7, 7, 7, 0, -7, -7, -7}
--print(strings, x, switchx[1], switchx[4], switchx[5], length)
--we check all eight positions if they are free! (we don't even need to check 9)
while num2 <= 8 do
if notoccupied (tables, round(x - 2.5 + switchx[num2]), round(y - 3.5 + switchy[num2]), length) == true and round(x - 2.5 + switchx[num2]) > size[1] and  round(x + length + 2.5 + switchx[num2]) < size[1]+size[3] and round(y - 3.5 + switchy[num2]) > size[2] and round(y + 3.5 + switchy[num2]) < size[2]+size[4] then break end
num2 = num2 + 1
end

x = x + switchx[num2]
y = y + switchy[num2]
KLN90_SC.capture_string(strings, x, y, size)

while num1 <= 5 do
local strings_loc = string.sub(strings, num1, num1)
if round(x-2.5) > size[1] and round(x+2.5) < size[1]+size[3] and round(y-3.5) > size[2] and round(y+3.5) < size[2]+size[4] and strings_loc ~= " " then
local file = get(Atex)
if strings_loc == "B" then
file = get(Btex)
elseif strings_loc == "C" then
file = get(Ctex)
elseif strings_loc == "D" then
file = get(Dtex)
elseif strings_loc == "E" then
file = get(Etex)
elseif strings_loc == "F" then
file = get(Ftex)
elseif strings_loc == "G" then
file = get(Gtex)
elseif strings_loc == "H" then
file = get(Htex)
elseif strings_loc == "I" then
file = get(Itex)
elseif strings_loc == "J" then
file = get(Jtex)
elseif strings_loc == "K" then
file = get(Ktex)
elseif strings_loc == "L" then
file = get(Ltex)
elseif strings_loc == "M" then
file = get(Mtex)
elseif strings_loc == "N" then
file = get(Ntex)
elseif strings_loc == "O" then
file = get(Otex)
elseif strings_loc == "P" then
file = get(Ptex)
elseif strings_loc == "Q" then
file = get(Qtex)
elseif strings_loc == "R" then
file = get(Rtex)
elseif strings_loc == "S" then
file = get(Stex)
elseif strings_loc == "T" then
file = get(Ttex)
elseif strings_loc == "U" then
file = get(Utex)
elseif strings_loc == "V" then
file = get(Vtex)
elseif strings_loc == "W" then
file = get(Wtex)
elseif strings_loc == "X" then
file = get(Xtex)
elseif strings_loc == "Y" then
file = get(Ytex)
elseif strings_loc == "Z" then
file = get(Ztex)
elseif strings_loc == "0" then
file = get(ö0tex)
elseif strings_loc == "1" then
file = get(ö1tex)
elseif strings_loc == "2" then
file = get(ö2tex)
elseif strings_loc == "3" then
file = get(ö3tex)
elseif strings_loc == "4" then
file = get(ö4tex)
elseif strings_loc == "5" then
file = get(ö5tex)
elseif strings_loc == "6" then
file = get(ö6tex)
elseif strings_loc == "7" then
file = get(ö7tex)
elseif strings_loc == "8" then
file = get(ö8tex)
elseif strings_loc == "9" then
file = get(ö9tex)
end

table.insert(tables, textureLit2 {
position = {round(x-2.5), round(y-3.5), 5, 7},
image = file,
brt2 = function()
return brt
end,
visible = function()
return true
end,
})

end
x = x + 6
num1 = num1 + 1
end
end

function renderCapturedString(strings, x, y, size)
local tables = {}
local num1 = 1

while num1 <= 5 do
local strings_loc = string.sub(strings, num1, num1)
if round(x-2.5) > size[1] and round(x+2.5) < size[1]+size[3] and round(y-3.5) > size[2] and round(y+3.5) < size[2]+size[4] and strings_loc ~= " " then
local file = get(Atex)
if strings_loc == "B" then
file = get(Btex)
elseif strings_loc == "C" then
file = get(Ctex)
elseif strings_loc == "D" then
file = get(Dtex)
elseif strings_loc == "E" then
file = get(Etex)
elseif strings_loc == "F" then
file = get(Ftex)
elseif strings_loc == "G" then
file = get(Gtex)
elseif strings_loc == "H" then
file = get(Htex)
elseif strings_loc == "I" then
file = get(Itex)
elseif strings_loc == "J" then
file = get(Jtex)
elseif strings_loc == "K" then
file = get(Ktex)
elseif strings_loc == "L" then
file = get(Ltex)
elseif strings_loc == "M" then
file = get(Mtex)
elseif strings_loc == "N" then
file = get(Ntex)
elseif strings_loc == "O" then
file = get(Otex)
elseif strings_loc == "P" then
file = get(Ptex)
elseif strings_loc == "Q" then
file = get(Qtex)
elseif strings_loc == "R" then
file = get(Rtex)
elseif strings_loc == "S" then
file = get(Stex)
elseif strings_loc == "T" then
file = get(Ttex)
elseif strings_loc == "U" then
file = get(Utex)
elseif strings_loc == "V" then
file = get(Vtex)
elseif strings_loc == "W" then
file = get(Wtex)
elseif strings_loc == "X" then
file = get(Xtex)
elseif strings_loc == "Y" then
file = get(Ytex)
elseif strings_loc == "Z" then
file = get(Ztex)
elseif strings_loc == "0" then
file = get(Г¶0tex)
elseif strings_loc == "1" then
file = get(Г¶1tex)
elseif strings_loc == "2" then
file = get(Г¶2tex)
elseif strings_loc == "3" then
file = get(Г¶3tex)
elseif strings_loc == "4" then
file = get(Г¶4tex)
elseif strings_loc == "5" then
file = get(Г¶5tex)
elseif strings_loc == "6" then
file = get(Г¶6tex)
elseif strings_loc == "7" then
file = get(Г¶7tex)
elseif strings_loc == "8" then
file = get(Г¶8tex)
elseif strings_loc == "9" then
file = get(Г¶9tex)
end

table.insert(tables, textureLit2 {
position = {round(x-2.5), round(y-3.5), 5, 7},
image = file,
brt2 = function()
return brt
end,
visible = function()
return true
end,
})

end
x = x + 6
num1 = num1 + 1
end

drawAll(tables)
end

function renderCapturedString(strings, x, y, size)
local tables = {}
local num1 = 1

while num1 <= 5 do
local strings_loc = string.sub(strings, num1, num1)
if round(x-2.5) > size[1] and round(x+2.5) < size[1]+size[3] and round(y-3.5) > size[2] and round(y+3.5) < size[2]+size[4] and strings_loc ~= " " then
local glyph = mapGlyphTex[strings_loc]
local file = get(glyph or Atex)

table.insert(tables, textureLit2 {
position = {round(x-2.5), round(y-3.5), 5, 7},
image = file,
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
end
x = x + 6
num1 = num1 + 1
end

drawAll(tables)
end

function turnanti(bearing)

local CRS1 = bearing --values["DTK"]
local CRS2 = course(values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"], values["activeWPT"][3]["lat"], values["activeWPT"][3]["lon"])

local gspeed = values["GPSSPD"]*1.94384449
local b = 57.3*math.atan(gspeed/362.1) --why?
local blim = get(APBankLim)
if blim ~= 0 then
--limit bank to dataref set limit
if b > blim*5 then b = blim*5 end
end
--radius
local r = (gspeed)^2/((math.tan(math.rad(b)))*68625.4)
--turn angle
local a = math.rad(math.abs(CRS2-CRS1))-- * pi / 180

return r * math.tan(a/2) + (gspeed/3600)*(b/roll_rate)
end

function namelines (str)
str = str .. " "
local name1 = "           "
local name2 = "           "
local len = string.len(str)
local c = nil
local b = string.find(str, "[ /-]", 1)
if b == nil then b = len + 1 end
if b > 11 then b = 12 end
name1 = string.sub(str, 1, b-1)
while string.len(name1) <= 11 do
c = string.find(str, "[ /-]", b+1)
if c ~= nil and (c-b+string.len(name1) <= 11) then
name1 = name1 .. " " .. string.sub(str, b+1, c-1)
b = c
else break
end
end
name2 = string.sub(str, b+1, b+11)
name1 = makelength(name1, 11, 0)
name2 = makelength(name2, 11, 0)

return name1, name2
end

function search_nav_paths()
local folders = {}
folders["apt"] = {}
folders["nav"] = {}

local path = "Custom Scenery/"
local files = sasl.listFiles(path)
if #files  > 0 then
local found = 0
for i = 3, #files  do
if files[i].type == "directory" then
local folder1 = sasl.listFiles(path .. files[i].name)

if #folder1 > 0 then
for j = 1, #folder1  do
if folder1[j].name == "Earth nav data" then
local files2 = sasl.listFiles(path .. files[i].name .. "/" .. folder1[j].name )
if #files2  > 0 then
for y = 1, #files2  do
if files2[y].name == "apt.dat" and files[i].name ~= "Global Airports" then	folders["apt"][#folders["apt"]+1] = path .. files[i].name .. "/" .. folder1[j].name .. "/" end
if files2[y].name == "earth_nav.dat" then	folders["nav"][#folders["nav"]+1] = path .. files[i].name .. "/" .. folder1[j].name .. "/" end
end
end

end

end
end

end

end

end
files = nil
path = nil

return folders
end

function update_nav_database()
print("Updating NAV database")
local data = {}

data["airport"] = {}
data["airport"]["icao"] = {}
data["fix"] = {}
data["nav"] = {}
data["cycle"] = ""

local folders = search_nav_paths()
print("XP version is " .. sasl.getXPVersion ())
if sasl.getXPVersion () < 12000 then
parse_apt("Custom Scenery/Global Airports/Earth nav data/", data)
else
parse_apt("Global Scenery/Global Airports/Earth nav data/", data)
end

for k,v in pairs(folders["apt"]) do
parse_apt(v, data)
end
local path = "Custom Data/"
if isFileExists(path .. "earth_nav.dat") then
for k,v in pairs(folders["nav"]) do
parse_nav(v, data)
end
parse_nav(path, data)
else
path = "Resources/default data/"
parse_nav(path, data)
local nav_cycle = data["cycle"]
for k,v in pairs(folders["nav"]) do
parse_nav(v, data)
end
data["cycle"] = nav_cycle
end

path = "Custom Data/"
if not isFileExists(path .. "earth_fix.dat") then
path = "Resources/default data/"
end

parse_fix(path, data)
print("Creating aptdb...")
create_aptdb("Custom Data/KLN90B_Navdata/", data)
print("Creating navaidsdb...")
create_navidsdb("Custom Data/KLN90B_Navdata/", data)
print("Creating wptdb...")
create_wptdb("Custom Data/KLN90B_Navdata/", data)
print("Database update complete. Reboot plugin.")


data["airport"]["icao"] = nil
data["airport"] = nil
data["fix"] = nil
data["nav"] = nil
data["cycle"] = nil
data = nil

end
--we preprocess all navdata
function check_files()
local found = 0
local files = sasl.listFiles("Custom Data/KLN90B_Navdata/")
if #files  > 0 then
for i = 1, #files  do
if files[i].type == "file" then
if files[i].name == "airports.txt" or files[i].name == "navaids.txt" or files[i].name == "waypoints.txt" then found = found + 1 end
end
end
else
os.execute("mkdir " .. "\"Custom Data/KLN90B_Navdata\"")
end

if found < 3 then
print("Creating new database...")
update_nav_database()
end

found = 0
files = nil
files = sasl.listFiles("Output/FMS plans/")
if #files  > 0 then
for i = 1, #files  do
if files[i].type == "directory" then
if files[i].name == "KLN 90B" then found = found + 1 end
end
end
if found == 0 then
os.execute("mkdir " .. "\"Output/FMS plans/KLN 90B\"")
end
end

end

check_files()

--first airports by ident
filename = "Custom Data/KLN90B_Navdata/airports.txt"
file = io.open(filename, "r")
local WPTlength = 0
local WPTtable = {}
local RWYtable = {}
while true do
local line = file:read("*line")
if line == nil then break end

local fields = {}
for w in line:gmatch("([^|]+)") do fields[#fields + 1] = w end

if fields[1] == "A" then
WPTlength = WPTlength + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 0
WPTtable[WPTlength]["USR"] = 0

WPTtable[WPTlength]["ident"] = makelength(fields[2], 5, 0)

WPTtable[WPTlength]["name1"], WPTtable[WPTlength]["name2"] = namelines(fields[3])


WPTtable[WPTlength]["lat"] = tonumber(fields[4])
WPTtable[WPTlength]["lon"] = tonumber(fields[5])
WPTtable[WPTlength]["elev"] = fields[6]
WPTtable[WPTlength]["freqlen"] = 0
WPTtable[WPTlength]["freqlist"] = {}
WPTtable[WPTlength]["country"] = " "

WPTtable[WPTlength]["RWYs"] = 0
RWYtable[WPTtable[WPTlength]["ident"]] = {}
elseif fields[1] == "HP" and values["showheli"] == 1 then
WPTlength = WPTlength + 1
WPTtable[WPTlength] = {}

WPTtable[WPTlength]["types"] = 0
WPTtable[WPTlength]["USR"] = 0

WPTtable[WPTlength]["ident"] = makelength(fields[2], 5, 0)

WPTtable[WPTlength]["name1"], WPTtable[WPTlength]["name2"] = namelines(fields[3])


WPTtable[WPTlength]["lat"] = tonumber(fields[4])
WPTtable[WPTlength]["lon"] = tonumber(fields[5])
WPTtable[WPTlength]["elev"] = fields[6]
WPTtable[WPTlength]["freqlen"] = 0
WPTtable[WPTlength]["freqlist"] = {}
WPTtable[WPTlength]["country"] = " "

WPTtable[WPTlength]["RWYs"] = 0
RWYtable[WPTtable[WPTlength]["ident"]] = {}
elseif fields[1] == "WP" and values["showwat"] == 1 then
WPTlength = WPTlength + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 0
WPTtable[WPTlength]["USR"] = 0

WPTtable[WPTlength]["ident"] = makelength(fields[2], 5, 0)

WPTtable[WPTlength]["name1"], WPTtable[WPTlength]["name2"] = namelines(fields[3])


WPTtable[WPTlength]["lat"] = tonumber(fields[4])
WPTtable[WPTlength]["lon"] = tonumber(fields[5])
WPTtable[WPTlength]["elev"] = fields[6]
WPTtable[WPTlength]["freqlen"] = 0
WPTtable[WPTlength]["freqlist"] = {}
WPTtable[WPTlength]["country"] = " "

WPTtable[WPTlength]["RWYs"] = 0
RWYtable[WPTtable[WPTlength]["ident"]] = {}
elseif fields[1] == "R" then

local ident = WPTtable[WPTlength]["ident"]

local number1 = makelength(fields[2], 3, 0)
local number2 = makelength(fields[5], 3, 0)

WPTtable[WPTlength]["RWYs"] = WPTtable[WPTlength]["RWYs"] + 1
local c = WPTtable[WPTlength]["RWYs"]
RWYtable[ident][c] = {}
RWYtable[ident][c]["number1"] = number1
RWYtable[ident][c]["number2"] = number2

RWYtable[ident][c]["length"] = tonumber(fields[8])
RWYtable[ident][c]["lat"] = tonumber(fields[3])
RWYtable[ident][c]["lon"] = tonumber(fields[4])
RWYtable[ident][c]["lat2"] = tonumber(fields[6])
RWYtable[ident][c]["lon2"] = tonumber(fields[7])

RWYtable[ident][c]["surf"] = fields[9]
RWYtable[ident][c]["light"] = fields[10]
elseif fields[1] == "W" and values["showwat"] == 1 then

local ident = WPTtable[WPTlength]["ident"]

local number1 = makelength(fields[2], 3, 0)
local number2 = makelength(fields[5], 3, 0)

WPTtable[WPTlength]["RWYs"] = WPTtable[WPTlength]["RWYs"] + 1
local c = WPTtable[WPTlength]["RWYs"]
RWYtable[ident][c] = {}
RWYtable[ident][c]["number1"] = number1
RWYtable[ident][c]["number2"] = number2

RWYtable[ident][c]["length"] = tonumber(fields[8])
RWYtable[ident][c]["lat"] = tonumber(fields[3])
RWYtable[ident][c]["lon"] = tonumber(fields[4])
RWYtable[ident][c]["lat2"] = tonumber(fields[6])
RWYtable[ident][c]["lon2"] = tonumber(fields[7])

RWYtable[ident][c]["surf"] = fields[9]
RWYtable[ident][c]["light"] = fields[10]
elseif fields[1] == "H" and values["showheli"] == 1 then
local ident = WPTtable[WPTlength]["ident"]

WPTtable[WPTlength]["RWYs"] = WPTtable[WPTlength]["RWYs"] + 1
local c = WPTtable[WPTlength]["RWYs"]
RWYtable[ident][c] = {}
RWYtable[ident][c]["number1"] = makelength(fields[2], 3, 0)
RWYtable[ident][c]["number2"] = "   "

RWYtable[ident][c]["length"] = tonumber(fields[5])
RWYtable[ident][c]["lat"] = tonumber(fields[3])
RWYtable[ident][c]["lon"] = tonumber(fields[4])
RWYtable[ident][c]["lat2"] = tonumber(fields[3])
RWYtable[ident][c]["lon2"] = tonumber(fields[4])

RWYtable[ident][c]["surf"] = fields[6]
RWYtable[ident][c]["light"] = fields[7]
elseif fields[1] == "F" then
--frequencies
WPTtable[WPTlength]["freqlen"] = WPTtable[WPTlength]["freqlen"] + 1
WPTtable[WPTlength]["freqlist"][WPTtable[WPTlength]["freqlen"]] = fields[2]
elseif fields[1] == "X" then
nav_cycle = line
end

end
file:close()

local num = 1
while num <= WPTlength do
--we use this place to sort the runways by length
table.sort(RWYtable[WPTtable[num]["ident"]],
function(a, b)
a = a["length"]
b = b["length"]
return a>b
end)
num = num + 1
end

--#############################VOR
--first by ident
filename = "Custom Data/KLN90B_Navdata/navaids.txt"
file = io.open(filename, "r")

while true do
local line = file:read("*line")

if line == nil then break end

local fields = {}
for w in line:gmatch("([^|]+)") do fields[#fields + 1] = w end

if fields[4] == "1" then
WPTlength = WPTlength + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 1
WPTtable[WPTlength]["USR"] = 0
WPTtable[WPTlength]["ident"] = makelength(fields[1], 5, 0)


local name  = fields[2]
WPTtable[WPTlength]["name1"], WPTtable[WPTlength]["name2"] = namelines(name)

WPTtable[WPTlength]["freq"] = fields[3]
WPTtable[WPTlength]["VORNDB"] = fields[4]
WPTtable[WPTlength]["DME"] = fields[5]
WPTtable[WPTlength]["range"] = tonumber(fields[6])
WPTtable[WPTlength]["lat"] = tonumber(fields[7])
WPTtable[WPTlength]["lon"] = tonumber(fields[8])
WPTtable[WPTlength]["elev"] = fields[9]
WPTtable[WPTlength]["country"] = fields[10]
WPTtable[WPTlength]["magvar"] = tonumber(fields[11])

--NDB
elseif fields[4] == "0" and fields[5] == "0" and not string.find(line, "ILS/C") then
WPTlength = WPTlength + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 2
WPTtable[WPTlength]["USR"] = 0
WPTtable[WPTlength]["ident"] = makelength(fields[1], 5, 0)

local name  = string.gsub(fields[2], "[/.]", " ")
WPTtable[WPTlength]["name1"], WPTtable[WPTlength]["name2"] = namelines(name)
WPTtable[WPTlength]["freq"] = fields[3]
WPTtable[WPTlength]["VORNDB"] = fields[4]
WPTtable[WPTlength]["DME"] = fields[5]
WPTtable[WPTlength]["range"] = tonumber(fields[6])
WPTtable[WPTlength]["lat"] = tonumber(fields[7])
WPTtable[WPTlength]["lon"] = tonumber(fields[8])
WPTtable[WPTlength]["elev"] = fields[9]
WPTtable[WPTlength]["country"] = fields[10]

end
end
file:close()

--#############################INT
--first by ident
filename = "Custom Data/KLN90B_Navdata/waypoints.txt"
file = io.open(filename, "r")
while true do
local line = file:read("*line")
if line == nil then break end

local fields = {}
for w in line:gmatch("([^|]+)") do fields[#fields + 1] = w end

WPTlength = WPTlength + 1

WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 3
WPTtable[WPTlength]["USR"] = 0
WPTtable[WPTlength]["ident"] = makelength(fields[1], 5, 0)
WPTtable[WPTlength]["name1"] = "ZZZZZ"
WPTtable[WPTlength]["lat"]= tonumber(fields[2])
WPTtable[WPTlength]["lon"] = tonumber(fields[3])
WPTtable[WPTlength]["country"] = fields[4]
end
file:close()

local USRlen = 0

filename = "Custom Data/KLN90B_Navdata/User.txt"
file = io.open(filename, "a+")
while true do
local line = file:read("*line")
if line == nil then break end
if string.sub(line, 1,1 ) == "A" then
WPTlength = WPTlength + 1
USRlen = USRlen + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 0
WPTtable[WPTlength]["USR"] = 1
local a = string.find(line, "|")
local b = string.find(line, "|", a+1)
WPTtable[WPTlength]["ident"] = makelength(string.sub(line, a+1, b-1), 5, 0)
WPTtable[WPTlength]["name1"] = "ZZZZZ"
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["lat"] = tonumber(string.sub(line, b+1, a-1))
b = string.find(line, "|", a+1)
WPTtable[WPTlength]["lon"] = tonumber(string.sub(line, a+1, b-1))
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["elev"] = string.sub(line, b+1, a-1)
b = string.find(line, "|", a+1)
WPTtable[WPTlength]["LRWY"] = string.sub(line, a+1, b-1)
WPTtable[WPTlength]["surface"] = string.sub(line, b+1)
WPTtable[WPTlength]["freqlen"] = 0
WPTtable[WPTlength]["RWYs"] = 0
WPTtable[WPTlength]["country"] = " "
elseif string.sub(line, 1,1 ) == "V" then
WPTlength = WPTlength + 1
USRlen = USRlen + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 1
WPTtable[WPTlength]["USR"] = 1
local a = string.find(line, "|")
local b = string.find(line, "|", a+1)
WPTtable[WPTlength]["ident"] = makelength(string.sub(line, a+1, b-1), 5, 0)
WPTtable[WPTlength]["name1"] = "ZZZZZ"
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["lat"] = tonumber(string.sub(line, b+1, a-1))
b = string.find(line, "|", a+1)
WPTtable[WPTlength]["lon"] = tonumber(string.sub(line, a+1, b-1))
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["freq"] = string.sub(line, b+1, a-1)
WPTtable[WPTlength]["magvar"] = string.sub(line, a+1)
WPTtable[WPTlength]["range"] = 0
WPTtable[WPTlength]["country"] = " "
elseif string.sub(line, 1,1 ) == "N" then
WPTlength = WPTlength + 1
USRlen = USRlen + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 2
WPTtable[WPTlength]["USR"] = 1
local a = string.find(line, "|")
local b = string.find(line, "|", a+1)
WPTtable[WPTlength]["ident"] = makelength(string.sub(line, a+1, b-1), 5, 0)
WPTtable[WPTlength]["name1"] = "ZZZZZ"
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["lat"] = tonumber(string.sub(line, b+1, a-1))
b = string.find(line, "|", a+1)
WPTtable[WPTlength]["lon"] = tonumber(string.sub(line, a+1, b-1))
WPTtable[WPTlength]["freq"] = string.sub(line, b+1)
WPTtable[WPTlength]["country"] = " "
elseif string.sub(line, 1,1 ) == "I" then
WPTlength = WPTlength + 1
USRlen = USRlen + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 3
WPTtable[WPTlength]["USR"] = 1
local a = string.find(line, "|")
local b = string.find(line, "|", a+1)
WPTtable[WPTlength]["ident"] = makelength(string.sub(line, a+1, b-1), 5, 0)
WPTtable[WPTlength]["name1"] = "ZZZZZ"
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["lat"] = tonumber(string.sub(line, b+1, a-1))
WPTtable[WPTlength]["lon"] = tonumber(string.sub(line, a+1))
WPTtable[WPTlength]["country"] = " "
elseif string.sub(line, 1,1 ) == "S" then
WPTlength = WPTlength + 1
USRlen = USRlen + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = 4
WPTtable[WPTlength]["USR"] = 1
local a = string.find(line, "|")
local b = string.find(line, "|", a+1)
WPTtable[WPTlength]["ident"] = makelength(string.sub(line, a+1, b-1), 5, 0)
WPTtable[WPTlength]["name1"] = "ZZZZZ"
a = string.find(line, "|", b+1)
WPTtable[WPTlength]["lat"] = tonumber(string.sub(line, b+1, a-1))
WPTtable[WPTlength]["lon"] = tonumber(string.sub(line, a+1))
WPTtable[WPTlength]["country"] = " "
end
end
file:close()


--this list contains all remarks. Pretty cool, eh?
filename = "Custom Data/KLN90B_Navdata/Remarks.txt"
file = io.open(filename, "a+")
local RMKtable = {}
while true do
local line = file:read("*line")
if line == nil then break end
local ident = string.sub(line, 1, 5)
RMKtable[ident] = {}
RMKtable[ident][1] = string.sub(line, 7, 17)
RMKtable[ident][2] = string.sub(line, 19, 29)
RMKtable[ident][3] = string.sub(line, 31, 41)
--print(RMKtable[RMKlength][1])
end
file:close()


function table.copy(t)
local t2 = {}
for k,v in pairs(t) do
t2[k] = v
end
return t2
end

--this copys a table inverted
--only for FPlan and might not be as efficient
function table.copyi(t)
local length = t["length"]
local n = 0
local t2 = {}
t2["length"] = t["length"]
t2["SIDident"] = ""
t2["SIDstart"] = 99
t2["SIDend"] = 99
t2["STARident"] = ""
t2["STARstart"] = 99
t2["STARend"] = 99
t2["SIDAPT"] = {}
t2["STARAPT"] = {}
t2["APPident"] = ""
t2["APPstart"] = 99
t2["APPend"] = 99
t2["APPMAP"] = 99
t2["APPAPT"] = {}

while length > 0 do
n = n + 1
t2[n] = t[length]
length = length - 1
end
return t2
end
--this function generates a nice name for approaches

function appname(names, rwy, mode)
local names2 = ""
if mode == 0 then
if string.sub(names, 1, 1) == "R" then
names2 = "RNV"
elseif string.sub(names, 1, 1) == "Q" then
names2 = "NDB"
elseif string.sub(names, 1, 1) == "N" then
names2 = "NDB"
elseif string.sub(names, 1, 1) == "D" then
names2 = "VOR"
elseif string.sub(names, 1, 1) == "C" then
names2 = "VOR"
elseif string.sub(names, 1, 1) == "S" then
names2 = "VOR"
elseif string.sub(names, 1, 1) == "I" then
names2 = "ILS"
elseif string.sub(names, 1, 1) == "P" then
names2 = "GPS"
elseif string.sub(names, 1, 1) == "R" then
names2 = "GPS"
elseif string.sub(names, 1, 1) == "J" then
names2 = "GPS"
elseif string.sub(names, 1, 1) == "U" then
names2 = "RNV"
elseif string.sub(names, 1, 1) == "V" then
names2 = "RNV"
elseif string.sub(names, 1, 1) == "T" then
names2 = "DME"
elseif string.sub(names, 1, 1) == "L" then
names2 = "LOC"
elseif string.sub(names, 1, 1) == "W" then
names2 = "GPS"
end
if string.sub(names, string.len(names))  >= "W" then
names2 = names2 .. string.sub(names, string.len(names))
else
names2 = names2 .. " "
end

return names2 .. " " .. string.sub(rwy, 3)
else
if string.sub(names, 1, 1) == "R" then
names2 = "R"
elseif string.sub(names, 1, 1) == "Q" then
names2 = "N"
elseif string.sub(names, 1, 1) == "N" then
names2 = "N"
elseif string.sub(names, 1, 1) == "D" then
names2 = "V"
elseif string.sub(names, 1, 1) == "C" then
names2 = "V"
elseif string.sub(names, 1, 1) == "S" then
names2 = "V"
elseif string.sub(names, 1, 1) == "I" then
names2 = "I"
elseif string.sub(names, 1, 1) == "P" then
names2 = "G"
elseif string.sub(names, 1, 1) == "R" then
names2 = "G"
elseif string.sub(names, 1, 1) == "J" then
names2 = "G"
elseif string.sub(names, 1, 1) == "U" then
names2 = "R"
elseif string.sub(names, 1, 1) == "V" then
names2 = "R"
elseif string.sub(names, 1, 1) == "T" then
names2 = "D"
elseif string.sub(names, 1, 1) == "L" then
names2 = "L"
elseif string.sub(names, 1, 1) == "W" then
names2 = "G"
end
return names2 .. string.sub(rwy, 3)
end


end

function createSIDSTAR(name)
local num = 1
values["SIDSTARsel"]["num"] = 0

if name == "SID" then
while num <= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTARsel"][name .. "RWY"]]["num"] do
local waypoint = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTARsel"][name .. "RWY"]][num]
local flyo = waypoint["flyo"]
waypoint = enterident(makelength(waypoint["ident"], 5, 0), 9, 0, 5, 0, waypoint["lat"], waypoint["lon"])
if waypoint["length"] > 0 then
values["SIDSTARsel"]["num"] = values["SIDSTARsel"]["num"] + 1
values["SIDSTARsel"][values["SIDSTARsel"]["num"]] = table.copy(waypoint[1])
values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["flyo"] = flyo
end
num = num + 1
end
end
if values["SIDSTARsel"][name .. "TRANS"] ~= 0 then
num = 1
while num <= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][values["SIDSTARsel"][name .. "TRANS"]]["num"] do
local waypoint = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][values["SIDSTARsel"][name .. "TRANS"]][num]
local flyo = waypoint["flyo"]
waypoint = enterident(makelength(waypoint["ident"], 5, 0), 9, 0, 5, 0, waypoint["lat"], waypoint["lon"])
if waypoint["length"] > 0 then
values["SIDSTARsel"]["num"] = values["SIDSTARsel"]["num"] + 1
values["SIDSTARsel"][values["SIDSTARsel"]["num"]] = table.copy(waypoint[1])
values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["flyo"] = flyo
end
num = num + 1
end
end
if name == "STAR" or name == "APP" then
num = 1
while num <= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTARsel"][name .. "RWY"]]["num"] do
local waypoint = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTARsel"][name .. "RWY"]][num]
local flyo = waypoint["flyo"]
waypoint = enterident(makelength(waypoint["ident"], 5, 0), 9, 0, 5, 0, waypoint["lat"], waypoint["lon"])
if name == "APP" and string.sub(waypoint[1]["ident"], 1, 2) == "RW" then
createWPT(5, waypoint[1]["ident"], 0)
waypoint = enterident(waypoint[1]["ident"], 5, 0, 5, 0)
waypoint[1]["lat"]= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTARsel"][name .. "RWY"]][num]["lat"]
waypoint[1]["lon"]= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTARsel"][name .. "RWY"]][num]["lon"]
values["SIDSTARsel"]["num"] = values["SIDSTARsel"]["num"] + 1
values["SIDSTARsel"][values["SIDSTARsel"]["num"]] = table.copy(waypoint[1])
values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["flyo"] = flyo
if values["SIDSTARsel"]["MAP"] >= 99 then
values["SIDSTARsel"]["MAP"] = values["SIDSTARsel"]["num"]
end
elseif waypoint["length"] > 0 then
if string.sub(waypoint[1]["ident"], 1, 1) == "M" and string.find(waypoint[1]["ident"], string.sub(values["SIDSTARsel"][name .. "RWY"], 3)) ~= nil then
values["SIDSTARsel"]["MAP"] = values["SIDSTARsel"]["num"] + 1
--       print(values["SIDSTARsel"]["MAP"])
end
if values["SIDSTARsel"]["MAP"] ~= 100 then
if num == 1 and values["SIDSTARsel"]["num"] > 0 then
if not( values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["types"] == waypoint[1]["types"] and values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["ident"] == waypoint[1]["ident"] and values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["lat"] == waypoint[1]["lat"]) then
values["SIDSTARsel"]["num"] = values["SIDSTARsel"]["num"] + 1
values["SIDSTARsel"][values["SIDSTARsel"]["num"]] = table.copy(waypoint[1])
values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["flyo"] = flyo
end
else
values["SIDSTARsel"]["num"] = values["SIDSTARsel"]["num"] + 1
values["SIDSTARsel"][values["SIDSTARsel"]["num"]] = table.copy(waypoint[1])
values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["flyo"] = flyo
end
if string.sub(waypoint[1]["ident"], 1, 1) == "F" and string.find(waypoint[1]["ident"], string.sub(values["SIDSTARsel"][name .. "RWY"], 3)) ~= nil and values["SIDSTARsel"]["MAP"] == 99 then
values["SIDSTARsel"]["MAP"] = 100
end
end
end

num = num + 1
end
end



end

function replaceChar(str,idx,rep)
local pat
if idx==1 then
pat="^.(.*)$"
return string.gsub(str,pat,rep.."%1") -- %1 because in this case there is only one capture
else
pat="^(" .. ("."):rep(idx-1) .. ").(.*)$"
return string.gsub(str,pat,"%1"..rep.."%2")
end
end

function round(num, idp)
--workaround for the SASL bug
local mult = string.format("%f", 10^(idp or 0))
--local mult = 10^(idp or 0)
return math.floor(num * mult + 0.5) / mult
end

function highlightchar(strings, char)
local strings2 = ""
local length = string.len(strings)
local num = 0
while num < length do
strings2 = strings2 .. " "
num = num + 1
end

local strings3 = string.sub(strings, char, char)
if strings3 == " " then strings3 = "#" end
strings2 = replaceChar(strings2,char,strings3)

return strings2

end

--this functions round like this:
--3:
-->=10     99
-->=1   9.9
--<1    .99
--4:
-->=1000   999
-->=100   99.9
--The last one seems to be only for XTK
--Don't implement it
-->=10    9.99
function dynaround(num, len)
local idp = string.find(num, "%.")
if idp == nil then idp = string.len(num) + 1 end
--print(idp)
if idp > len - 1 then
num = makelength(round(num), len, 1)
if string.len(num) > len then
return ("9"):rep(len)
else
return num
end
else
if len == 3 then
if math.floor(num) == 0 then
return string.sub(float(num, 2), 2)
else
return float(num, 1)
end
else
-- workaround for 99.95 - 99.999 rounding to "100.0" instead of "100"
floatnum = float(num, 1)
if floatnum:len() == 5 then
floatnum = floatnum:sub(1, 3)
end
return makelength(floatnum, 4, 1)
end
end
end

--this function tells which WPT should be active!
function findnearestleg(num2, lat, lon)
local num = 2
local nummin = 2
local distmin = 99999
while num <= FPlan[0]["length"] do

local f1 = 0
--print(FPlan[0][num-1]["ident"], FPlan[0][num]["ident"])
local f2 = 5/ distance(FPlan[num2 or 0][num-1]["lat"], FPlan[num2 or 0][num-1]["lon"], FPlan[num2 or 0][num]["lat"], FPlan[num2 or 0][num]["lon"])
--print(f2)
--this increases the accuracy
if f2 > 0.1 then f2 = 0.1 end
--  local f2 = 0.1
while f1 <= 1 do
local dist = 99999
if lat then
dist = distance(lat, lon, intermediat(FPlan[num2][num-1]["lat"], FPlan[num2][num-1]["lon"], FPlan[num2][num]["lat"], FPlan[num2][num]["lon"], f1))
else
dist = distance(values["GPSlat"], values["GPSlon"], intermediat(FPlan[0][num-1]["lat"], FPlan[0][num-1]["lon"], FPlan[0][num]["lat"], FPlan[0][num]["lon"], f1))
end
if dist <= distmin then
distmin = dist
nummin = num
end
f1 = f1 + f2
end
--local dist = distance(values["GPSlat"], values["GPSlon"], FPlan[0][num-1]["lat"], FPlan[0][num-1]["lon"]) + distance(values["GPSlat"], values["GPSlon"], FPlan[0][num]["lat"], FPlan[0][num]["lon"])

num = num + 1
end
return nummin
end

function FplanArrows(line, num)
--if FPlan[0][num]["types"] == values["direct"]["types"] and FPlan[0][num]["numi"] == values["direct"]["numi"] then
--only for 0
if lsubpage[3] ~= 0 then
return " "
end
if line == 6 then
if FPlan[0]["length"] == values["activeWPT"]["active"] and controls["lCRSRchar"] == 0 and controls["FPLstate"] == 0 then
if get(WPTalert) == 1 and values["flash"] == 0 then
return " "
else
if values["activeWPT"][1]["ident"] == "    $" or values["activeWPT"][1]["ident"] == "     " then
return "="
else
return "<"
end
end
else
return " "
end
else
if num == values["activeWPT"]["active"]-1  and controls["lCRSRchar"] == 0 and controls["FPLstate"] == 0 and values["activeWPT"][1] ~= nil then
if values["activeWPT"][1]["ident"] == "    $" or values["activeWPT"][1]["ident"] == "     "  then
return " "
else
--if FPlan[0][controls["lview"]+line-1]["types"] == values["activeWPT"][1]["types"] and FPlan[0][controls["lview"]+line-1]["numi"] == values["activeWPT"][1]["numi"] then
return ";"
end
--elseif FPlan[0][controls["lview"]+line-1]["types"] == values["activeWPT"][2]["types"] and FPlan[0][controls["lview"]+line-1]["numi"] == values["activeWPT"][2]["numi"] then
elseif  num == values["activeWPT"]["active"] and controls["lCRSRchar"] == 0 and controls["FPLstate"] == 0 then
if get(WPTalert) == 1 and values["flash"] == 0 then
return " "
else
if values["activeWPT"][1]["ident"] == "    $" or values["activeWPT"][1]["ident"] == "     " then
return "="
else
return "<"
end
end
else
return " "
end
end
end

--types 0 APT, 1 VOR, 2NDB
function nearestlist(types)
local table2 = {}
local num = 1
local dist1 = {9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999, 9999}
while num < WPTlength do
if WPTtable[num]["types"] == types then
local num2 = 1
if WPTtable[num]["lat"] ~= "_" and WPTtable[num]["lon"] ~= "_" then
local dist2 = distance(values["GPSlat"], values["GPSlon"], WPTtable[num]["lat"], WPTtable[num]["lon"])
while num2 <= 9 do
-- print(WPTtable[num]["ident"])
if dist2 < dist1[num2] then
if types == 0 then
local longestRWY = 0
--1 SFT, 2 HRD
local surf = 0
if WPTtable[num]["USR"] == 0  then
if RWYtable[WPTtable[num]["ident"]][1] ~= nil then -- workaround for x-plane databse errors
longestRWY = RWYtable[WPTtable[num]["ident"]][1]["length"]
--print(WPTtable[num]["ident"], longestRWY)
if RWYtable[WPTtable[num]["ident"]][1]["surf"] == "HRD" then
surf = 2
elseif RWYtable[WPTtable[num]["ident"]][1]["surf"] == "WAT" then
surf = 0
else
surf = 1
end
end
else
if WPTtable[num]["LRWY"] ~= "_____" then
longestRWY = tonumber(WPTtable[num]["LRWY"])
end
if WPTtable[num]["surface"] == "SFT" then
surf = 1
elseif WPTtable[num]["surface"] == "HRD" then
surf = 2
end
end

if longestRWY >= values["RWYminlength"] and surf > values["RWYsurface"] then
table.insert(table2, num2,  WPTtable[num])
table.insert(dist1, num2, dist2)
--print(dist1[num2])
end
num2 = 10
else

table.insert(table2, num2,  WPTtable[num])
table.insert(dist1, num2, dist2)

-- dist[num2] = dist2
-- table2[num2] = WPTtable[num]
num2 = 10
end
end
num2 = num2 + 1
end
end
end
num = num + 1
end
--after the list is complete, we reassing the indexes
-- num = 1
-- while num <= 9 do
-- table2[num]["numi"] = -num
-- num = num + 1
-- end

if types == 0 then
values["APTnearestlist"] = table2
elseif types == 1 then
values["VORnearestlist"] = table2
elseif types == 2 then
values["NDBnearestlist"] = table2
end

end

function onModuleDone()
set(overrideGPS, 0)
set(overrideNAV1, 0)

local filename = sasl.getAircraftPath () .. "/KLNconfig.txt"
local file = io.open(filename, "w")
file:write("###########################\n  DO NOT MODIFY THIS FILE!\nYOU SHOULDN'T EVEN READ IT!\n###########################\n")
file:write("#1" .. values["welcome1"] .. "\n" )
file:write("#2" .. values["welcome2"] .. "\n" )
file:write("#3" .. values["welcome3"] .. "\n" )
file:write("#4" .. values["welcome4"] .. "\n" )
file:write("#Timezone" .. values["time"]["zone"] .. "\n" )
file:write("#Barounit" .. values["barounit"] .. "\n" )
file:write("#GPSHobbs" .. values["GPSHobbs"] .. "\n" )
file:write("#GPSTurnons" .. values["GPSTurnons"] .. "\n" )
if values["APTpage"] ~= nil then
file:write("#LastAPT" .. values["APTpage"][1]["ident"] .. "\n" )
else
file:write("#LastAPT" .. "----" .. "\n" )
end
if values["activeWPT"]["length"] > 0 then
file:write("#Lasttype" .. values["activeWPT"][values["activeWPT"]["length"]]["types"] .. "\n" )
file:write("#Lastident" .. values["activeWPT"][values["activeWPT"]["length"]]["ident"] .. "\n" )
end
file:write("#LastLat" .. values["GPSlat"] .. "\n" )
file:write("#LastLon" .. values["GPSlon"] .. "\n" )
file:write("#RWYminlength" .. values["RWYminlength"] .. "\n" )
file:write("#RWYsurface" .. values["RWYsurface"] .. "\n" )
file:write("#Fuelunit" .. values["fuelunit"] .. "\n" )
file:write("#Primary" .. values["primary"] .. "\n" )
file:write("#RealGPS" .. values["realGPS"] .. "\n" )
file:write("#Timerstart" .. values["timerstart"] .. "\n" )
file:write("#Turnanti" .. values["turnanticipation"] .. "\n" )
file:write("#HSIinterf" .. values["HSIinterf"] .. "\n" )
file:write("#Volume" .. values["volume"] .. "\n" )
file:write("#VNV GS" .. values["VNVgs"] .. "\n" )
file:write("#NAV5RNG" .. values["NAV5RNG"] .. "\n" )
file:write("#NAV5BRNG" .. values["NAV5RNG2"] .. "\n" )
file:write("#NAV5LNS" .. values["NAV5LNS"] .. "\n" )
file:write("#NAV5SHOW" .. values["NAV5SHOW"] .. "\n" )
file:write("#NAV5Clut" .. values["NAV5Clut"] .. "\n" )
file:write("#NAV5ORIS" .. values["NAV5ORIS"] .. "\n" )
file:write("#SHOWHELI" .. values["showheli"] .. "\n" )
file:write("#SHOWWAT" .. values["showwat"] .. "\n" )
file:write("#NAVSYNC" .. values["NAVSYNC"] .. "\n" )
file:write("#GPSRATE" .. values["GPSrate"] .. "\n" )
file:write("#PWRKNOB" .. 0 .. "\n" )

file:write("Ok, here's something\nto keep you entertained:\nGo to the STA 4 page\nand turn the left CRSR on")

file:close()
--now we write the USERDB
filename = "Custom Data/KLN90B_Navdata/User.txt"

file = io.open(filename, "w")
local num = 1
while num <= WPTlength do
if WPTtable[num]["USR"] == 1 then
if WPTtable[num]["lat"] ~= "_" and WPTtable[num]["lon"] ~= "_" then
if WPTtable[num]["types"] == 0 then
file:write(string.format("A|%s|%s|%s|%s|%s|%s\n", WPTtable[num]["ident"], WPTtable[num]["lat"], WPTtable[num]["lon"], WPTtable[num]["elev"], WPTtable[num]["LRWY"], WPTtable[num]["surface"]))
elseif WPTtable[num]["types"] == 1 then
file:write(string.format("V|%s|%s|%s|%s|%s\n", WPTtable[num]["ident"], WPTtable[num]["lat"], WPTtable[num]["lon"], WPTtable[num]["freq"], WPTtable[num]["magvar"]))
elseif WPTtable[num]["types"] == 2 then
file:write(string.format("N|%s|%s|%s|%s\n", WPTtable[num]["ident"], WPTtable[num]["lat"], WPTtable[num]["lon"], WPTtable[num]["freq"]))
elseif WPTtable[num]["types"] == 3 then
file:write(string.format("I|%s|%s|%s\n", WPTtable[num]["ident"], WPTtable[num]["lat"], WPTtable[num]["lon"]))
elseif WPTtable[num]["types"] == 4 then
file:write(string.format("S|%s|%s|%s\n", WPTtable[num]["ident"], WPTtable[num]["lat"], WPTtable[num]["lon"]))
end
end
end
num = num + 1

end
file:close()

--remarks
filename = "Custom Data/KLN90B_Navdata/Remarks.txt"


file = io.open(filename, "w")
for i,v in pairs(RMKtable) do
if v[1] ~= "           " or v[2] ~= "           " or v[3] ~= "           " then
file:write(string.format("%s|%s|%s|%s\n",i, v[1], v[2], v[3]))
end
end
file:close()

--finally we rewrite the FLPN!
local num1 = 0
while num1 <= 25 do
local filename = "Output/FMS plans/KLN 90B/" .. num1 .. ".fms"


if FPlan[num1]["length"] == 0 then
os.remove(filename)
else
local file = io.open(filename, "w")
file:write("I\n3 version\n1 \n1 \n")
local num2 = 1
while num2 <= FPlan[num1]["length"] do
--  print(FPlan[num1][num2]["ident"], num2, FPlan[num1]["SIDstart"], FPlan[num1]["SIDend"], FPlan[num1]["STARstart"], FPlan[num1]["STARend"], num2 < FPlan[num1]["SIDstart"], num2 > FPlan[num1]["SIDend"], num2 < FPlan[num1]["STARstart"], num2 > FPlan[num1]["STARend"])
if FPlan[num1][num2]["ident"] ~= "     " and (num2 < FPlan[num1]["SIDstart"] or num2 > FPlan[num1]["SIDend"]) and (num2 < FPlan[num1]["STARstart"] or num2 > FPlan[num1]["STARend"]) and (num2 < FPlan[num1]["APPstart"] or num2 > FPlan[num1]["APPend"]) then
if string.find(FPlan[num1][num2]["ident"], " ") then
local a = string.find(FPlan[num1][num2]["ident"], " ")
FPlan[num1][num2]["ident"] = string.sub(FPlan[num1][num2]["ident"], 1, a-1)
end
--  print(num1, num2, FPlan[num1][num2]["types"], FPlan[num1][num2]["ident"])
local x = 28
if FPlan[num1][num2]["types"] == 0 then
x = 1
elseif FPlan[num1][num2]["types"] == 1 then
x = 3
elseif FPlan[num1][num2]["types"] == 2 then
x = 2
elseif FPlan[num1][num2]["types"] == 3 then
x = 11
elseif FPlan[num1][num2]["types"] == 4 then
x = 28
end
--print("x", num2, FPlan[num1][num2]["types"], FPlan[num1][num2]["ident"])

file:write(string.format("%s %s %s %s %s\n",x, FPlan[num1][num2]["ident"], 0, FPlan[num1][num2]["lat"], FPlan[num1][num2]["lon"] ))
end
num2 = num2 + 1
end
file:close()
end
num1 = num1 + 1

end
--- file:close() --error on init -attempting to use closed file --fix moved in while loop where used
end



function save_all()
local values_sve=values
local WPTlength_sve=WPTlength
local WPTtable_sve=WPTtable
local FPlan_sve=FPlan
local RMKtable_sve=RMKtable
local filename_sve = sasl.getAircraftPath () .. "/KLNconfig.txt"
local file_sve = io.open(filename_sve, "w")
file_sve:write("###########################\n  DO NOT MODIFY THIS FILE!\nYOU SHOULDN'T EVEN READ IT!\n###########################\n")
file_sve:write("#1" .. values_sve["welcome1"] .. "\n" )
file_sve:write("#2" .. values_sve["welcome2"] .. "\n" )
file_sve:write("#3" .. values_sve["welcome3"] .. "\n" )
file_sve:write("#4" .. values_sve["welcome4"] .. "\n" )
file_sve:write("#Timezone" .. values_sve["time"]["zone"] .. "\n" )
file_sve:write("#Barounit" .. values_sve["barounit"] .. "\n" )
file_sve:write("#GPSHobbs" .. values_sve["GPSHobbs"] .. "\n" )
file_sve:write("#GPSTurnons" .. values_sve["GPSTurnons"] .. "\n" )
if values_sve["APTpage"] ~= nil then
file_sve:write("#LastAPT" .. values_sve["APTpage"][1]["ident"] .. "\n" )
else
file_sve:write("#LastAPT" .. "----" .. "\n" )
end
if values_sve["activeWPT"]["length"] > 0 then
file_sve:write("#Lasttype" .. values_sve["activeWPT"][values_sve["activeWPT"]["length"]]["types"] .. "\n" )
file_sve:write("#Lastident" .. values_sve["activeWPT"][values_sve["activeWPT"]["length"]]["ident"] .. "\n" )
end
file_sve:write("#LastLat" .. values_sve["GPSlat"] .. "\n" )
file_sve:write("#LastLon" .. values_sve["GPSlon"] .. "\n" )
file_sve:write("#RWYminlength" .. values_sve["RWYminlength"] .. "\n" )
file_sve:write("#RWYsurface" .. values_sve["RWYsurface"] .. "\n" )
file_sve:write("#Fuelunit" .. values_sve["fuelunit"] .. "\n" )
file_sve:write("#Primary" .. values_sve["primary"] .. "\n" )
file_sve:write("#RealGPS" .. values_sve["realGPS"] .. "\n" )
file_sve:write("#Timerstart" .. values_sve["timerstart"] .. "\n" )
file_sve:write("#Turnanti" .. values_sve["turnanticipation"] .. "\n" )
file_sve:write("#HSIinterf" .. values_sve["HSIinterf"] .. "\n" )
file_sve:write("#Volume" .. values_sve["volume"] .. "\n" )
file_sve:write("#VNV GS" .. values_sve["VNVgs"] .. "\n" )
file_sve:write("#NAV5RNG" .. values_sve["NAV5RNG"] .. "\n" )
file_sve:write("#NAV5BRNG" .. values_sve["NAV5RNG2"] .. "\n" )
file_sve:write("#NAV5LNS" .. values_sve["NAV5LNS"] .. "\n" )
file_sve:write("#NAV5SHOW" .. values_sve["NAV5SHOW"] .. "\n" )
file_sve:write("#NAV5Clut" .. values_sve["NAV5Clut"] .. "\n" )
file_sve:write("#NAV5ORIS" .. values_sve["NAV5ORIS"] .. "\n" )
file_sve:write("#SHOWHELI" .. values_sve["showheli"] .. "\n" )
file_sve:write("#SHOWWAT" .. values_sve["showwat"] .. "\n" )
file_sve:write("#NAVSYNC" .. values_sve["NAVSYNC"] .. "\n" )
file_sve:write("#GPSRATE" .. values_sve["GPSrate"] .. "\n" )
file_sve:write("#PWRKNOB" .. 0 .. "\n" )

file_sve:write("Ok, here's something\nto keep you entertained:\nGo to the STA 4 page\nand turn the left CRSR on")

file_sve:close()
--now we write the USERDB
filename_sve = "Custom Data/KLN90B_Navdata/User.txt"

file_sve = io.open(filename_sve, "w")
local numbr = 1
while numbr <= WPTlength_sve do
if WPTtable_sve[numbr]["USR"] == 1 then
if WPTtable_sve[numbr]["lat"] ~= "_" and WPTtable_sve[numbr]["lon"] ~= "_" then
if WPTtable_sve[numbr]["types"] == 0 then
file_sve:write(string.format("A|%s|%s|%s|%s|%s|%s\n", WPTtable_sve[numbr]["ident"], WPTtable_sve[numbr]["lat"], WPTtable_sve[numbr]["lon"], WPTtable_sve[numbr]["elev"], WPTtable_sve[numbr]["LRWY"], WPTtable_sve[numbr]["surface"]))
elseif WPTtable_sve[numbr]["types"] == 1 then
file_sve:write(string.format("V|%s|%s|%s|%s|%s\n", WPTtable_sve[numbr]["ident"], WPTtable_sve[numbr]["lat"], WPTtable_sve[numbr]["lon"], WPTtable_sve[numbr]["freq"], WPTtable_sve[numbr]["magvar"]))
elseif WPTtable_sve[numbr]["types"] == 2 then
file_sve:write(string.format("N|%s|%s|%s|%s\n", WPTtable_sve[numbr]["ident"], WPTtable_sve[numbr]["lat"], WPTtable_sve[numbr]["lon"], WPTtable_sve[numbr]["freq"]))
elseif WPTtable_sve[numbr]["types"] == 3 then
file_sve:write(string.format("I|%s|%s|%s\n", WPTtable_sve[numbr]["ident"], WPTtable_sve[numbr]["lat"], WPTtable_sve[numbr]["lon"]))
elseif WPTtable_sve[numbr]["types"] == 4 then
file_sve:write(string.format("S|%s|%s|%s\n", WPTtable_sve[numbr]["ident"], WPTtable_sve[numbr]["lat"], WPTtable_sve[numbr]["lon"]))
end
end
end
numbr = numbr + 1

end
file_sve:close()

--remarks
filename_sve = "Custom Data/KLN90B_Navdata/Remarks.txt"


file_sve = io.open(filename_sve, "w")
for i,v in pairs(RMKtable_sve) do
if v[1] ~= "           " or v[2] ~= "           " or v[3] ~= "           " then
file_sve:write(string.format("%s|%s|%s|%s\n",i, v[1], v[2], v[3]))
end
end
file_sve:close()

--finally we rewrite the FLPN!
local numbr1 = 0
while numbr1 <= 25 do
local filename_sve = "Output/FMS plans/KLN 90B/" .. numbr1 .. ".fms"


if FPlan_sve[numbr1]["length"] == 0 then
os.remove(filename_sve)
else
local file_sve = io.open(filename_sve, "w")
file_sve:write("I\n3 version\n1 \n1 \n")
local numbr2 = 1
while numbr2 <= FPlan_sve[numbr1]["length"] do
--  print(FPlan_sve[numbr1][numbr2]["ident"], numbr2, FPlan_sve[numbr1]["SIDstart"], FPlan_sve[numbr1]["SIDend"], FPlan_sve[numbr1]["STARstart"], FPlan_sve[numbr1]["STARend"], numbr2 < FPlan_sve[numbr1]["SIDstart"], numbr2 > FPlan_sve[numbr1]["SIDend"], numbr2 < FPlan_sve[numbr1]["STARstart"], numbr2 > FPlan_sve[numbr1]["STARend"])
if FPlan_sve[numbr1][numbr2]["ident"] ~= "     " and (numbr2 < FPlan_sve[numbr1]["SIDstart"] or numbr2 > FPlan_sve[numbr1]["SIDend"]) and (numbr2 < FPlan_sve[numbr1]["STARstart"] or numbr2 > FPlan_sve[numbr1]["STARend"]) and (numbr2 < FPlan_sve[numbr1]["APPstart"] or numbr2 > FPlan_sve[numbr1]["APPend"]) then
if string.find(FPlan_sve[numbr1][numbr2]["ident"], " ") then
local a_sve = string.find(FPlan_sve[numbr1][numbr2]["ident"], " ")
FPlan_sve[numbr1][numbr2]["ident"] = string.sub(FPlan_sve[numbr1][numbr2]["ident"], 1, a_sve-1)
end
--  print(numbr1, numbr2, FPlan_sve[numbr1][numbr2]["types"], FPlan_sve[numbr1][numbr2]["ident"])
local x_sve = 28
if FPlan_sve[numbr1][numbr2]["types"] == 0 then
x_sve = 1
elseif FPlan_sve[numbr1][numbr2]["types"] == 1 then
x_sve = 3
elseif FPlan_sve[numbr1][numbr2]["types"] == 2 then
x_sve = 2
elseif FPlan_sve[numbr1][numbr2]["types"] == 3 then
x_sve = 11
elseif FPlan_sve[numbr1][numbr2]["types"] == 4 then
x_sve = 28
end
--print("x", numbr2, FPlan_sve[numbr1][numbr2]["types"], FPlan_sve[numbr1][numbr2]["ident"])

file_sve:write(string.format("%s %s %s %s %s\n",x_sve, FPlan_sve[numbr1][numbr2]["ident"], 0, FPlan_sve[numbr1][numbr2]["lat"], FPlan_sve[numbr1][numbr2]["lon"] ))
end
numbr2 = numbr2 + 1
end
file_sve:close()
end
numbr1 = numbr1 + 1

end
--- file_sve:close() --error on init -attempting to use closed file --fix moved in while loop where used
end








-- function onModuleDone()
-- set(overrideGPS, 0)
-- set(overrideNAV1, 0)
-- end

function closestVOR(lat, lon)
local table2 = {}
local num = 1
local dist = 99999
while num < WPTlength do
if WPTtable[num]["types"] == 1 then
if WPTtable[num]["lat"] ~= "_" and WPTtable[num]["lon"] ~= "_" then
local dist2 = distance(lat, lon, WPTtable[num]["lat"], WPTtable[num]["lon"])
if dist2 < dist then
if WPTtable[num]["range"] > 25 then
dist = dist2
table2 = table.copy(WPTtable[num])
end
end
end
end
num = num + 1

end
return table2
end

--riseset 0 rise, 1 set
--definitely working.
function sunriseset(lat, lon, riseset)
local N = monthstodays(numbertomonth(values["sundate"]["month"]), values["sundate"]["days"])
local lngHour = lon / 15
local t = 0
if riseset == 0 then
t = N + ((6 - lngHour) / 24)
else
t = N + ((18 - lngHour) / 24)
end
local M = ((0.9856 * t) - 3.289)
local L = M + (1.916 * sin(M * pi / 180)) + (0.020 * sin(2 * M * pi / 180)) + 282.634
if L > 360 then L = L - 360
elseif L < 0 then L = L + 360 end
local RA = math.atan(0.91764 * math.tan(L* pi / 180)) * 180 / pi
local Lquadrant  = (math.floor( L/90)) * 90
local RAquadrant = (math.floor(RA/90)) * 90
RA = RA + (Lquadrant - RAquadrant)
RA = RA / 15
local sinDec = 0.39782 * sin(L * pi / 180)
local cosDec = cos(asin(sinDec))
local cosH = (-0.01454 - (sinDec * sin(lat * pi / 180))) / (cosDec * cos(lat * pi / 180))
if cosH > 1 or cosH < -1 then
return "--:--"
end
local H = 0
if riseset == 0 then
H = 360 - ( math.acos(cosH) * 180 / pi)
else
H = math.acos(cosH) * 180 / pi
end
H = H / 15
local T = H + RA - (0.06571 * t) - 6.622
local UT = T - lngHour
if UT > 24 then UT = UT - 24
elseif UT < 0 then UT = UT + 24 end
local hours = math.floor(UT) +  values["suntime"]["zonediff"]
if hours > 23 then hours = hours - 24
elseif hours < 0 then hours = hours + 24 end
minutes = (UT - math.floor(UT)) * 60
return string.format("%02d:%02d", hours, minutes)
end

function drawmap (size, orientation, range, mode)

KLN90_SC.begin_map_capture("nav5")


--###############################################SUP NAV 5 map!!!!!!!!!!!!!!!!!####################

--values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]
--values["NAV5RNG"]
--The ACF is in the center
--values["GPSlat"], values["GPSlon"]
--values["GPSlat"] = 137
--values["GPSlon"] = 75

local nametable = {}
local PXnm = size[4] / 2 / range
local cx = size[1] + (size[3]/2)
local cy = size[2] + (size[4]/2)

if orientation ~= 0 then
PXnm = size[4] / 3 * 2 / range
cy = size[2] + (size[4]/3)
end




if # Nav5Comp == 0 and values["GPSnum"] >= 4 then
local orient = 0
if orientation == 1 then
orient = values["DTK"]
elseif orientation == 2 then
orient = values["GPSTRK"]
elseif orientation == 3 then
orient = get(PSIin)
end


-- local x0 = 184
-- local y0 = 40

--window 137, 75
--center 37, 75 (perfect!)
--orientation = 0


if mode == 1 then
if string.sub(values["NAV5SHOW"], 1, 1) ~= "0" and values["NAV5Clut"] == 0 then
nearestlist(1)
local num = 1
local VORrange = 0
if string.sub(values["NAV5SHOW"], 1, 1) == "2" then
VORrange = 25
elseif string.sub(values["NAV5SHOW"], 1, 1) == "3" then
VORrange = 40
end
while num <=9 do

local num2 = 1
local show = 1
while num2 <= FPlan[0]["length"] do
if values["VORnearestlist"][num]["types"] == FPlan[0][num2]["types"] and values["VORnearestlist"][num]["ident"] == FPlan[0][num2]["ident"] and values["VORnearestlist"][num]["lat"] == FPlan[0][num2]["lat"] then
show = 0
end
num2 = num2 + 1
end


if show == 1 then
if values["VORnearestlist"][num]["range"] > VORrange then
local dist1 = distance(values["GPSlat"], values["GPSlon"], values["VORnearestlist"][num]["lat"], values["VORnearestlist"][num]["lon"])*PXnm
if dist1 < 90 then
local CRS1 = course(values["GPSlat"], values["GPSlon"], values["VORnearestlist"][num]["lat"], values["VORnearestlist"][num]["lon"]) - orient

local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1

if x1-2.5 > size[1] and x1+2.5 < size[1]+size[3] and y1-2.5 > size[2] and y1+2.5 < size[2]+size[4] then
table.insert(Nav5Comp, textureLit2 {
position = {round(x1-2.5), round(y1-2.5), 5, 5},
image = get(mapVOR),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(x1-2.5),round(y1-2.5),5,5,0,brt,1) )
KLN90_SC.capture_icon("0", x1-2.5, y1-2.5, 5, 5)
table.insert(nametable, {values["VORnearestlist"][num]["ident"], x1, y1, size})

-- string2tex(Nav5Comp, values["VORnearestlist"][num]["ident"], x1, y1, size)
end
end
end
end
num = num + 1
end
end
if string.sub(values["NAV5SHOW"], 2, 2) ~= "0" and values["NAV5Clut"] == 0 then
nearestlist(2)
local num = 1
while num <=9 do
local num2 = 1
local show = 1
while num2 <= FPlan[0]["length"] do
if values["NDBnearestlist"][num]["types"] == FPlan[0][num2]["types"] and values["NDBnearestlist"][num]["ident"] == FPlan[0][num2]["ident"] and values["NDBnearestlist"][num]["lat"] == FPlan[0][num2]["lat"] then
show = 0
end
num2 = num2 + 1
end
if show == 1 then
local dist1 = distance(values["GPSlat"], values["GPSlon"], values["NDBnearestlist"][num]["lat"], values["NDBnearestlist"][num]["lon"])*PXnm
if dist1 < 90 then
local CRS1 = course(values["GPSlat"], values["GPSlon"], values["NDBnearestlist"][num]["lat"], values["NDBnearestlist"][num]["lon"]) - orient
local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1

if x1-2 > size[1] and x1+2 < size[1]+size[3] and y1-2 > size[2] and y1+2 < size[2]+size[4] then
table.insert(Nav5Comp, textureLit2 {
position = {round(x1-2), round(y1-2), 4, 4},
image = get(mapNDB),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(x1-2),round(y1-2),4,4,6,brt,1) )
KLN90_SC.capture_icon("6", x1-2, y1-2, 4, 4)
table.insert(nametable, {values["NDBnearestlist"][num]["ident"], x1, y1, size})
end
end
end
num = num + 1
end

end
if string.sub(values["NAV5SHOW"], 3, 3) ~= "0" and values["NAV5Clut"] == 0 then
nearestlist(0)
local num = 1
while num <=9 do
local num2 = 1
local show = 1
while num2 <= FPlan[0]["length"] do
if values["APTnearestlist"][num]["types"] == FPlan[0][num2]["types"] and values["APTnearestlist"][num]["ident"] == FPlan[0][num2]["ident"] and values["APTnearestlist"][num]["lat"] == FPlan[0][num2]["lat"] then
show = 0
end
num2 = num2 + 1
end
if show == 1 then
local dist1 = distance(values["GPSlat"], values["GPSlon"], values["APTnearestlist"][num]["lat"], values["APTnearestlist"][num]["lon"])*PXnm
if dist1 < 90 then
local CRS1 = course(values["GPSlat"], values["GPSlon"],values["APTnearestlist"][num]["lat"], values["APTnearestlist"][num]["lon"]) - orient

local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1


if x1-2.5 > size[1] and x1+2.5 < size[1]+size[3] and y1-2.5 > size[2] and y1+2.5 < size[2]+size[4] then
table.insert(Nav5Comp, textureLit2 {
position = {round(x1-2.5), round(y1-2.5), 5, 5},
image = get(mapAPT),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(x1-2.5),round(y1-2.5),5,5,5,brt,1) )
KLN90_SC.capture_icon("5", x1-2.5, y1-2.5, 5, 5)
table.insert(nametable, {values["APTnearestlist"][num]["ident"], x1, y1, size})
end
end
end
num = num + 1
end

end
end

if rpage >= 6 and rpage <= 10 then
local WPT = values["APTpage"]
if rpage == 7 then
WPT = values["VORpage"]
elseif rpage == 8 then
WPT = values["NDBpage"]
elseif rpage == 9 then
WPT = values["INTpage"]
elseif rpage == 10 then
WPT = values["SUPpage"]
end
if WPT["length"] ~= 0 then
local dist1 = distance(values["GPSlat"], values["GPSlon"], WPT[1]["lat"], WPT[1]["lon"])*PXnm
local CRS1 = course(values["GPSlat"], values["GPSlon"], WPT[1]["lat"], WPT[1]["lon"]) - orient

local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1
if x1-1.5 > size[1] and x1+1.5 < size[1]+size[3] and y1-1.5 > size[2] and y1+1.5 < size[2]+size[4] then
table.insert(Nav5Comp, textureLit2 {
position = {round(x1-1.5), round(y1-1.5), 3, 3},
image = get(mapplus),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(x1-1.5),round(y1-1.5),3,3,5) )
KLN90_SC.capture_icon("7", x1-1.5, y1-1.5, 3, 3)
end
end
end



--direct to
if values["activeWPT"]["active"] == 0 and values["activeWPT"]["length"] == 2 then

local dist1 = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])*PXnm
local CRS1 = course(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]) - orient

local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1
dist1 = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"])*PXnm
CRS1 = course(values["GPSlat"], values["GPSlon"], values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"]) - orient

local y2 = cy + cos((CRS1)*pi/180) * dist1
local x2 = cx + cos((CRS1-90)*pi/180) * dist1


drawline(Nav5Comp, x1, y1, x2, y2, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x2, y2, size  ) )
local dist2 = 7
local CRS3 = math.atan2(x1-x2, y1-y2)/pi*180
local CRS2 = CRS3 + 225
local y3 = y1 + cos((CRS2)*pi/180) * dist2
local x3 = x1 + cos((CRS2-90)*pi/180) * dist2
drawline(Nav5Comp, x1, y1, x3, y3, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x3, y3, size  ) )
CRS2 = CRS3 + 135
y3 = y1 + cos((CRS2)*pi/180) * dist2
x3 = x1 + cos((CRS2-90)*pi/180) * dist2
drawline(Nav5Comp, x1, y1, x3, y3, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x3, y3, size  ) )
if x1-2.5 > size[1] and x1+2.5 < size[1]+size[3] and y1-2.5 > size[2] and y1+2.5 < size[2]+size[4] then
table.insert(Nav5Comp, textureLit2 {
position = {round(x1-2.5), round(y1-2.5), 5, 5},
image = get(mapstar),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(x1-2.5),round(y1-2.5),5,5,4,brt,1) )
KLN90_SC.capture_icon("4", x1-2.5, y1-2.5, 5, 5)
if mode == 1 then
table.insert(nametable, {values["activeWPT"][2]["ident"], x1, y1, size})
end
end
if mode == 1 then
if range <= 2 and values["activeWPT"][2]["types"] == 0 then
local RWYnum = 1
while RWYnum <= values["activeWPT"][2]["RWYs"] do
--workaround for EDDF
if RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lat2"] then
local dist1 = distance(values["GPSlat"], values["GPSlon"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lat"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lon"])*PXnm
local CRS1 = course(values["GPSlat"], values["GPSlon"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lat"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lon"]) - orient
local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1
dist1 = distance(values["GPSlat"], values["GPSlon"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lat2"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lon2"])*PXnm
CRS1 = course(values["GPSlat"], values["GPSlon"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lat2"], RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["lon2"]) - orient

local y2 = cy + cos((CRS1)*pi/180) * dist1
local x2 = cx + cos((CRS1-90)*pi/180) * dist1
drawline(Nav5Comp, x1, y1, x2, y2, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x2, y2, size  ) )
if range == 1 or RWYnum == 1 then
if x1-0.5 > size[1] and x1+0.5 < size[1]+size[3] and y1-0.5 > size[2] and y1+0.5 < size[2]+size[4] then
table.insert(nametable, {makelength(RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["number1"], 5, 0), x1, y1, size})
end
if x2-0.5 > size[1] and x2+0.5 < size[1]+size[3] and y2-0.5 > size[2] and y2+0.5 < size[2]+size[4] then
table.insert(nametable, {makelength(RWYtable[values["activeWPT"][2]["ident"]][RWYnum]["number2"], 5, 0), x2, y2, size})
end
end
end
--end

RWYnum = RWYnum + 1
--end

end
end

end
end



local WPTnum = 1
local x2 = 0
local y2 = 0
while WPTnum <= FPlan[0]["length"] do
if FPlan[0][WPTnum]["lat"] ~= nil and FPlan[0][WPTnum]["lon"] ~= nil then
local dist1 = distance(values["GPSlat"], values["GPSlon"], FPlan[0][WPTnum]["lat"], FPlan[0][WPTnum]["lon"])*PXnm
local CRS1 = course(values["GPSlat"], values["GPSlon"], FPlan[0][WPTnum]["lat"], FPlan[0][WPTnum]["lon"]) - orient

local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1


--print("aa",WPTnum, x1, y1, x2, y2)
if values["activeWPT"]["active"] > 0 then
if values["activeWPT"][1]["ident"] == "    $" and WPTnum > values["activeWPT"]["active"] and (WPTnum < FPlan[0]["APPMAP"] or values["activeWPT"]["active"] > FPlan[0]["APPMAP"]) and WPTnum > 1 then
drawline(Nav5Comp, x1, y1, x2, y2, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x2, y2, size  ) )
elseif values["activeWPT"][1]["ident"] ~= "    $" and values["activeWPT"][1]["ident"] ~= "     "  and (WPTnum < FPlan[0]["APPMAP"] or values["activeWPT"]["active"] > FPlan[0]["APPMAP"]) and WPTnum > 1 then
drawline(Nav5Comp, x1, y1, x2, y2, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x2, y2, size  ) )
end
--arrow:
if WPTnum == values["activeWPT"]["active"] then
if values["activeWPT"][1]["ident"] == "    $" or values["activeWPT"][1]["ident"] == "     " then
local dist1 = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"])*PXnm
local CRS1 = course(values["GPSlat"], values["GPSlon"], values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"]) - orient

local y2 = cy + cos((CRS1)*pi/180) * dist1
local x2 = cx + cos((CRS1-90)*pi/180) * dist1

drawline(Nav5Comp, x1, y1, x2, y2, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x2, y2, size  ) )
local dist2 = 7
local CRS3 = math.atan2(x1-x2, y1-y2)/pi*180
local CRS2 = CRS3 + 225
local y3 = y1 + cos((CRS2)*pi/180) * dist2
local x3 = x1 + cos((CRS2-90)*pi/180) * dist2
drawline(Nav5Comp, x1, y1, x3, y3, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x3, y3, size  ) )
CRS2 = CRS3 + 135
y3 = y1 + cos((CRS2)*pi/180) * dist2
x3 = x1 + cos((CRS2-90)*pi/180) * dist2
drawline(Nav5Comp, x1, y1, x3, y3, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x3, y3, size  ) )
else
local dist2 = 7
local CRS3 = math.atan2(x1-x2, y1-y2)/pi*180
local CRS2 = CRS3 + 225
local y3 = y1 + cos((CRS2)*pi/180) * dist2
local x3 = x1 + cos((CRS2-90)*pi/180) * dist2
drawline(Nav5Comp, x1, y1, x3, y3, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x3, y3, size  ) )
CRS2 = CRS3 + 135
y3 = y1 + cos((CRS2)*pi/180) * dist2
x3 = x1 + cos((CRS2-90)*pi/180) * dist2
drawline(Nav5Comp, x1, y1, x3, y3, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x3, y3, size  ) )
end
end





end
x2 = x1
y2 = y1
if x1-1.5 > size[1] and x1+1.5 < size[1]+size[3] and y1-1.5 > size[2] and y1+1.5 < size[2]+size[4] then
table.insert(Nav5Comp, textureLit2 {
position = {round(x1-1.5), round(y1-1.5), 3, 3},
image = get(mapquad),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(x1-1.5),round(y1-1.5),3,3,1,brt,1) )
KLN90_SC.capture_icon("1", x1-1.5, y1-1.5, 3, 3)
if mode == 1 then
table.insert(nametable, {FPlan[0][WPTnum]["ident"], x1, y1, size})
else
--string2tex(Nav5Comp, WPTnum, x1-5, y1+7, size)
table.insert(nametable, {makelength(WPTnum, 5, 0), x1, y1, size})
end

end

if mode == 1 then
if range <= 2 and FPlan[0][WPTnum]["types"] == 0 then

local RWYnum = 1
while RWYnum <= FPlan[0][WPTnum]["RWYs"] do
--workaround for EDDF
if RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lat2"] then
local dist1 = distance(values["GPSlat"], values["GPSlon"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lat"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lon"])*PXnm
local CRS1 = course(values["GPSlat"], values["GPSlon"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lat"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lon"]) - orient
local y1 = cy + cos((CRS1)*pi/180) * dist1
local x1 = cx + cos((CRS1-90)*pi/180) * dist1
dist1 = distance(values["GPSlat"], values["GPSlon"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lat2"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lon2"])*PXnm
CRS1 = course(values["GPSlat"], values["GPSlon"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lat2"], RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["lon2"]) - orient

local y2 = cy + cos((CRS1)*pi/180) * dist1
local x2 = cx + cos((CRS1-90)*pi/180) * dist1
if range == 1 or RWYnum == 1 then
--We only want to show them if we can actually see them
if x1-0.5 > size[1] and x1+0.5 < size[1]+size[3] and y1-0.5 > size[2] and y1+0.5 < size[2]+size[4] then
table.insert(nametable, {makelength(RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["number1"], 5, 0), x1, y1, size})
end
if x2-0.5 > size[1] and x2+0.5 < size[1]+size[3] and y2-0.5 > size[2] and y2+0.5 < size[2]+size[4] then
table.insert(nametable, {makelength(RWYtable[FPlan[0][WPTnum]["ident"]][RWYnum]["number2"], 5, 0), x2, y2, size})
end
end
drawline(Nav5Comp, x1, y1, x2, y2, size)
--table.insert ( Nav5Comp_Serializer, WrapLine( x1, y1, x2, y2, size  ) )
end
--end

RWYnum = RWYnum + 1
--end
end

end

end
end
WPTnum = WPTnum + 1
end

if orientation <= 1 then
table.insert(Nav5Comp, textureLit2 {
position = {round(cx-2.5), round(cy-2.5), 5, 5},
image = get(mapdiamond),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(cx-2.5),round(cy-2.5),5,5,3,brt,1) )
KLN90_SC.capture_icon("3", cx-2.5, cy-2.5, 5, 5)
else

table.insert(Nav5Comp, textureLit2 {
position = {round(cx-2.5), round(cy-2), 5, 4},
image = get(mapplane),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(cx-2.5),round(cy-2),5,4,2,brt,1) )
KLN90_SC.capture_icon("2", cx-2.5, cy-2, 5, 4)

end
for i,v in ipairs(nametable) do
string2tex(Nav5Comp, v[1],  v[2],  v[3], v[4])
--table.insert ( Nav5Comp_Serializer, WrapString2tex( v[1],  v[2],  v[3], v[4] ) )

end

-- Multicrew hook: publish the rendered map payload at the natural end of drawmap().
KLN90_SC.publish_map(Nav5Comp, APT3Comp, {
	size = size,
	orientation = orientation,
	range = range,
	mode = mode,
})


end
end

function activateFPLN0()
if values["GPSnum"] >= 4 then
local num = findnearestleg()
local num2 = num - 1
values["activeWPT"] = {}
values["activeWPT"]["length"] = 0
--             for k, v in pairs(FPlan[0]) do
--               print(k, v["ident"])
--             end
while num2 <= FPlan[0]["length"] do
values["activeWPT"]["length"] = values["activeWPT"]["length"] + 1
values["activeWPT"][values["activeWPT"]["length"]] = FPlan[0][num2]
num2 = num2 + 1
end
values["activeWPT"]["active"] = num
--FMS()
--ACT page won't freeze:
controls["rview"] = num
end
end

function suffix(pos, sub)
if sub ~= 0 then
return " "
end
if pos == FPlan[0]["APPMAP"] - 1 then
return string.char(31)
elseif pos == FPlan[0]["APPMAP"] - 2 then
return string.char(29)
elseif pos == FPlan[0]["APPstart"] then
return string.char(28)
elseif pos == FPlan[0]["APPend"] then
return string.char(30)
end
return " "
end

function type2typename(types)
local typename = ""

if types == 0 then
typename = "APT"
elseif types == 1 then
typename = "VOR"
elseif types == 2 then
typename = "NDB"
elseif types == 3 then
typename = "INT"
elseif types == 4 then
typename = "SUP"
elseif types == 5 then
typename = "TER"
end
return typename
end

--this function should be used whenever something can be edited with controls["ENT"] and controls["CLR"].
function editvalue(mode, side, value)
-- print("mode " ..  mode)
-- print("side " .. side)
--dump(value)
--print("EDITSTATE = " .. values[side .. "editstate"])
local ent = "ENT"
local clr = "CLR"
if string.sub(side, 2, 2) == "s" then
ent = "sENT"
clr = "sCLR"
end
-- mode: 1 WPT 2, date, 3 time, 4 free text, 5 lat, 6 lon, 7, free num, 8 VORfreq, 9 MAGVAR, 10 NDBfreq, 11 Rad
if controls["SCAN"] == 1 and mode == 1 and FPlan[0][controls["rview"]]~= nil then
values[side .."editvalue"] = {}
values[side .."editvalue"][1] = FPlan[0][controls["rview"]]
values[side .."editvalue"]["length"] = 1
end
if values[side .. "editstate"] == 0 then
if controls[side .. "knobl"] == -1 then
if controls[side .. "CRSRchar"] == 0 then
controls[side .."select"] = controls[side .."select"] - 1
elseif controls[side .. "CRSRchar"] ~= 0 then
controls[side .. "CRSRchar"] = controls[side .. "CRSRchar"] - 1
if controls[side .. "CRSRchar"] < 1 then
if mode == 1 then controls[side .. "CRSRchar"] = 5
elseif mode == 2 then controls[side .. "CRSRchar"] = 4
elseif mode == 3 then controls[side .. "CRSRchar"] = 3
elseif mode == 4 then controls[side .. "CRSRchar"] = string.len(value)
elseif mode == 5 then controls[side .. "CRSRchar"] = 7
elseif mode == 6 then controls[side .. "CRSRchar"] = 7
elseif mode == 7 then controls[side .. "CRSRchar"] = string.len(value)
elseif mode == 8 then controls[side .. "CRSRchar"] = 5
elseif mode == 9 then controls[side .. "CRSRchar"] = 3
elseif mode == 10 then controls[side .. "CRSRchar"] = 5
elseif mode == 11 then controls[side .. "CRSRchar"] = 5 end
end
end
controls[side .. "knobl"] = 0
elseif controls[side .. "knobl"] == 1 then

if controls[side .. "CRSRchar"] == 0 then
controls[side .."select"] = controls[side .."select"] + 1
elseif controls[side .. "CRSRchar"] ~= 0 then
controls[side .. "CRSRchar"] = controls[side .. "CRSRchar"] + 1
if mode == 1 and controls[side .. "CRSRchar"] > 5 then controls[side .. "CRSRchar"] = 1 end
if mode == 2 and controls[side .. "CRSRchar"] > 4 then controls[side .. "CRSRchar"] = 1 end
if mode == 3 and controls[side .. "CRSRchar"] > 3 then controls[side .. "CRSRchar"] = 1 end
if mode == 4 and controls[side .. "CRSRchar"] > string.len(value) then controls[side .. "CRSRchar"] = 1 end
if mode == 5 and controls[side .. "CRSRchar"] > 7 then controls[side .. "CRSRchar"] = 1 end
if mode == 6 and controls[side .. "CRSRchar"] > 7 then controls[side .. "CRSRchar"] = 1 end
if mode == 7 and controls[side .. "CRSRchar"] > string.len(value) then controls[side .. "CRSRchar"] = 1 end
if mode == 8 and controls[side .. "CRSRchar"] > 5 then controls[side .. "CRSRchar"] = 1 end
if mode == 9 and controls[side .. "CRSRchar"] > 3 then controls[side .. "CRSRchar"] = 1 end
if mode == 10 and controls[side .. "CRSRchar"] > 5 then controls[side .. "CRSRchar"] = 1 end
if mode == 11 and controls[side .. "CRSRchar"] > 1 and controls[side .. "CRSRchar"] < 5 then controls[side .. "CRSRchar"] = 4
elseif mode == 11 and controls[side .. "CRSRchar"] > 5 then controls[side .. "CRSRchar"] = 1 end
end
controls[side .. "knobl"] = 0
elseif controls[side .."knobs"] == -1 then
if controls[side .. "CRSRchar"] == 0 then
controls[side .. "CRSRchar"] = 1
if mode == 1 then
if controls["SCAN"] == 1 then
controls[side .. "CRSRchar"] = 0
controls["rview"] = controls["rview"] - 1
if controls["rview"] < 1 then controls["rview"] = FPlan[0]["length"] end
values[side .."editvalue"] = {}
values[side .."editvalue"][1] = FPlan[0][controls["rview"]]
values[side .."editvalue"]["length"] = 1
else
values[side .."editvalue"] = enterident("A    ", 9, 0, 1, -1)
end
elseif mode == 2 then
values[side .."editvalue"] = {}
values[side .."editvalue"]["days"] = 31
values[side .."editvalue"]["month"] = 0
values[side .."editvalue"]["year"] = "__"
elseif mode == 3 then
values[side .."editvalue"] = {}
values[side .."editvalue"]["hour"] = 23 - value["zonediff"]
if values[side .."editvalue"]["hour"] > 23 then values[side .."editvalue"]["hour"] = values[side .."editvalue"]["hour"] - 24 end

values[side .."editvalue"]["minute"] = "__"
elseif mode == 4 then
values[side .."editvalue"] = "9" .. ("_"):rep(string.len(value)-1)
elseif mode == 5 then


values[side .."editvalue"] = "S __*__.__'"
elseif mode == 6 then
values[side .."editvalue"] = "E___*__.__'"
elseif mode == 7 then
values[side .."editvalue"] = "9" .. ("_"):rep(string.len(value)-1)
elseif mode == 8 then
values[side .."editvalue"] = "1____"
elseif mode == 9 then
values[side .."editvalue"] = "9__"
elseif mode == 10 then
values[side .."editvalue"] = "1____"
elseif mode == 11 then
values[side .."editvalue"] = "3590"
end
elseif mode == 1 then
values[side .."editvalue"] = enterident(values[side .."editvalue"][1]["ident"], 9, 0, controls[side .. "CRSRchar"], -1)
elseif mode == 2 then
if controls[side .. "CRSRchar"] == 1 then
values[side .."editvalue"]["days"] = values[side .."editvalue"]["days"] -1
if values[side .."editvalue"]["days"] < 1 then values[side .."editvalue"]["days"] = 31 end
elseif controls[side .. "CRSRchar"] == 2 then
values[side .."editvalue"]["month"] = values[side .."editvalue"]["month"] -1
if values[side .."editvalue"]["month"] < 1 then values[side .."editvalue"]["month"] = 12 end
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"]["year"], 1, 1)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"]["year"] = replaceChar(values[side .."editvalue"]["year"],1,value2string(x))
elseif controls[side .. "CRSRchar"] == 4 then
x = string2value(string.sub(values[side .."editvalue"]["year"], 2, 2)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"]["year"] = replaceChar(values[side .."editvalue"]["year"],2,value2string(x))
end
elseif mode == 3 then
if controls[side .. "CRSRchar"] == 1 then
values[side .."editvalue"]["hour"] = values[side .."editvalue"]["hour"] - 1
if values[side .."editvalue"]["hour"] < 0 then values[side .."editvalue"]["hour"] = 23 end
elseif controls[side .. "CRSRchar"] == 2 then
x = string2value(string.sub(values[side .."editvalue"]["minute"], 1, 1)) - 1
if x < 1 then x = 6 end
values[side .."editvalue"]["minute"] = replaceChar(values[side .."editvalue"]["minute"],1,value2string(x))
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"]["minute"], 2, 2)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"]["minute"] = replaceChar(values[side .."editvalue"]["minute"],2,value2string(x))
end
elseif mode == 4 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) - 1
if x < 0 then x = 36 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 5 then
if controls[side .. "CRSRchar"] == 1 then
if string.sub(values[side .."editvalue"], 1, 1) == "S" then values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"N")
else values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"S") end
elseif controls[side .. "CRSRchar"] == 2 then
x = string2value(string.sub(values[side .."editvalue"], 3, 3)) - 1
if x < 1 then x = 9 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,value2string(x))
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"], 4, 4)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],4,value2string(x))
elseif controls[side .. "CRSRchar"] == 4 then
x = string2value(string.sub(values[side .."editvalue"], 6, 6)) - 1
if x < 1 then x = 6 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],6,value2string(x))
elseif controls[side .. "CRSRchar"] == 5 then
x = string2value(string.sub(values[side .."editvalue"], 7, 7)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],7,value2string(x))
elseif controls[side .. "CRSRchar"] == 6 then
x = string2value(string.sub(values[side .."editvalue"], 9, 9)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],9,value2string(x))
elseif controls[side .. "CRSRchar"] == 7 then
x = string2value(string.sub(values[side .."editvalue"], 10, 10)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],10,value2string(x))
end
elseif mode == 6 then
if controls[side .. "CRSRchar"] == 1 then
if string.sub(values[side .."editvalue"], 1, 1) == "E" then values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"W")
else values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"E") end
elseif controls[side .. "CRSRchar"] == 2 then
x = string.sub(values[side .."editvalue"], 2, 3)
if x == "__" then x = 0 end
x = tonumber(x) - 1
if x < 0 then x = 17 end
if string.len(x) == 1 then
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,"0")
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,string.sub(x, 1, 1))
else
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,string.sub(x, 1, 1))
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,string.sub(x, 2, 2))
end
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"], 4, 4)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],4,value2string(x))
elseif controls[side .. "CRSRchar"] == 4 then
x = string2value(string.sub(values[side .."editvalue"], 6, 6)) - 1
if x < 1 then x = 6 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],6,value2string(x))
elseif controls[side .. "CRSRchar"] == 5 then
x = string2value(string.sub(values[side .."editvalue"], 7, 7)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],7,value2string(x))
elseif controls[side .. "CRSRchar"] == 6 then
x = string2value(string.sub(values[side .."editvalue"], 9, 9)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],9,value2string(x))
elseif controls[side .. "CRSRchar"] == 7 then
x = string2value(string.sub(values[side .."editvalue"], 10, 10)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],10,value2string(x))
end
elseif mode == 7 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 8 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) - 1
if x < 2 and controls[side .. "CRSRchar"] == 1 then x = 2 end
if x < 1 and controls[side .. "CRSRchar"] == 2 then x = 2 end
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 9 then
if controls[side .. "CRSRchar"] == 3 then
if string.sub(values[side .."editvalue"], 3, 3) == "W" then
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,"E")
else
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,"W")
end
else
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
end
elseif mode == 10 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) - 1
if x < 1 and controls[side .. "CRSRchar"] == 1 then x = 2 end
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 11 then

if controls[side .. "CRSRchar"] == 1 then
x = string.sub(values[side .."editvalue"], 1, 2)
if x == "__" then x = 0 end
x = tonumber(x) - 1
if x < 0 then x = 35 end
if string.len(x) == 1 then
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"0")
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,string.sub(x, 1, 1))
else
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,string.sub(x, 1, 1))
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,string.sub(x, 2, 2))
end
else
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"]-1, controls[side .. "CRSRchar"]-1)) - 1
if x < 1 then x = 10 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"]-1,value2string(x)) -- values[side .."editvalue"]-1
end
end
controls[side .."knobs"] = 0
elseif controls[side .."knobs"] == 1 then
if controls[side .. "CRSRchar"] == 0 then
controls[side .. "CRSRchar"] = 1
if mode == 1 then
if controls["SCAN"] == 1 then
controls[side .. "CRSRchar"] = 0
controls["rview"] = controls["rview"] + 1
if controls["rview"] > FPlan[0]["length"] then controls["rview"] = 1 end
values[side .."editvalue"] = {}
values[side .."editvalue"][1] = FPlan[0][controls["rview"]]
values[side .."editvalue"]["length"] = 1
else
values[side .."editvalue"] = enterident("9    ", 9, 0, 1, 1)
end
elseif mode == 2 then
values[side .."editvalue"] = {}
values[side .."editvalue"]["days"] = 1
values[side .."editvalue"]["month"] = 0
values[side .."editvalue"]["year"] = "__"
elseif mode == 3 then
values[side .."editvalue"] = {}
values[side .."editvalue"]["hour"] = 0 - value["zonediff"]
values[side .."editvalue"]["minute"] = "__"
elseif mode == 4 then
values[side .."editvalue"] = "A" .. ("_"):rep(string.len(value)-1)
elseif mode == 5 then

values[side .."editvalue"] = "N __*__.__'"
elseif mode == 6 then
values[side .."editvalue"] = "W___*__.__'"
elseif mode == 7 then
values[side .."editvalue"] = "0" .. ("_"):rep(string.len(value)-1)
elseif mode == 8 then
values[side .."editvalue"] = "1____"
elseif mode == 9 then
values[side .."editvalue"] = "0__"
elseif mode == 10 then
values[side .."editvalue"] = "0____"
elseif mode == 11 then
values[side .."editvalue"] = "0000"
end
elseif mode == 1 then
values[side .."editvalue"] = enterident(values[side .."editvalue"][1]["ident"], 9, 0, controls[side .. "CRSRchar"], 1)
elseif mode == 2 then
if controls[side .. "CRSRchar"] == 1 then
values[side .."editvalue"]["days"] = values[side .."editvalue"]["days"] + 1
if values[side .."editvalue"]["days"] > 31 then values[side .."editvalue"]["days"] = 1 end

elseif controls[side .. "CRSRchar"] == 2 then
values[side .."editvalue"]["month"] = values[side .."editvalue"]["month"] + 1
if values[side .."editvalue"]["month"] > 12 then values[side .."editvalue"]["month"] = 1 end
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"]["year"], 1, 1)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"]["year"] = replaceChar(values[side .."editvalue"]["year"],1,value2string(x))
elseif controls[side .. "CRSRchar"] == 4 then
x = string2value(string.sub(values[side .."editvalue"]["year"], 2, 2)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"]["year"] = replaceChar(values[side .."editvalue"]["year"],2,value2string(x))
end

elseif mode == 3 then
if controls[side .. "CRSRchar"] == 1 then
values[side .."editvalue"]["hour"] = values[side .."editvalue"]["hour"] + 1
if values[side .."editvalue"]["hour"] > 23 then values[side .."editvalue"]["hour"] = 0 end
elseif controls[side .. "CRSRchar"] == 2 then
x = string2value(string.sub(values[side .."editvalue"]["minute"], 1, 1)) + 1
if x > 6 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"]["minute"] = replaceChar(values[side .."editvalue"]["minute"],1,value2string(x))
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"]["minute"], 2, 2)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"]["minute"] = replaceChar(values[side .."editvalue"]["minute"],2,value2string(x))
end
elseif mode == 4 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) + 1
if x > 36 then x = 0 end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 5 then
if controls[side .. "CRSRchar"] == 1 then
if string.sub(values[side .."editvalue"], 1, 1) == "S" then values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"N")
else values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"S") end
elseif controls[side .. "CRSRchar"] == 2 then
x = string2value(string.sub(values[side .."editvalue"], 3, 3)) + 1
if x > 9 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,value2string(x))
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"], 4, 4)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],4,value2string(x))
elseif controls[side .. "CRSRchar"] == 4 then
x = string2value(string.sub(values[side .."editvalue"], 6, 6)) + 1
if x > 6 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],6,value2string(x))
elseif controls[side .. "CRSRchar"] == 5 then
x = string2value(string.sub(values[side .."editvalue"], 7, 7)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],7,value2string(x))
elseif controls[side .. "CRSRchar"] == 6 then
x = string2value(string.sub(values[side .."editvalue"], 9, 9)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],9,value2string(x))
elseif controls[side .. "CRSRchar"] == 7 then
x = string2value(string.sub(values[side .."editvalue"], 10, 10)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],10,value2string(x))
end
elseif mode == 6 then
if controls[side .. "CRSRchar"] == 1 then
if string.sub(values[side .."editvalue"], 1, 1) == "E" then values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"W")
else values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"E") end
elseif controls[side .. "CRSRchar"] == 2 then
x = string.sub(values[side .."editvalue"], 2, 3)
if x == "__" then x = 0 end
x = tonumber(x) + 1
if x > 17 then x = 0 end
if string.len(x) == 1 then
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,"0")
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,string.sub(x, 1, 1))
else
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,string.sub(x, 1, 1))
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,string.sub(x, 2, 2))
end
elseif controls[side .. "CRSRchar"] == 3 then
x = string2value(string.sub(values[side .."editvalue"], 4, 4)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end           values[side .."editvalue"] = replaceChar(values[side .."editvalue"],4,value2string(x))
elseif controls[side .. "CRSRchar"] == 4 then
x = string2value(string.sub(values[side .."editvalue"], 6, 6)) + 1
if x > 6 then x = 1
elseif x == 0 then x = 1
end           values[side .."editvalue"] = replaceChar(values[side .."editvalue"],6,value2string(x))
elseif controls[side .. "CRSRchar"] == 5 then
x = string2value(string.sub(values[side .."editvalue"], 7, 7)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end           values[side .."editvalue"] = replaceChar(values[side .."editvalue"],7,value2string(x))
elseif controls[side .. "CRSRchar"] == 6 then
x = string2value(string.sub(values[side .."editvalue"], 9, 9)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end           values[side .."editvalue"] = replaceChar(values[side .."editvalue"],9,value2string(x))
elseif controls[side .. "CRSRchar"] == 7 then
x = string2value(string.sub(values[side .."editvalue"], 10, 10)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],10,value2string(x))
end
elseif mode == 7 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 8 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) + 1
if x > 2 and controls[side .. "CRSRchar"] == 1 then x = 2
elseif x > 2 and controls[side .. "CRSRchar"] == 2 then x = 1 end
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 9 then
if controls[side .. "CRSRchar"] == 3 then
if string.sub(values[side .."editvalue"], 3, 3) == "E" then
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,"W")
else
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],3,"E")
end
else
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
end
elseif mode == 10 then
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"], controls[side .. "CRSRchar"])) + 1
if x > 2 and controls[side .. "CRSRchar"] == 1 then x = 1 end
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"],value2string(x))
elseif mode == 11 then

if controls[side .. "CRSRchar"] == 1 then
x = string.sub(values[side .."editvalue"], 1, 2)
if x == "__" then x = 0 end
x = tonumber(x) + 1
if x > 35 then x = 0 end
if string.len(x) == 1 then
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,"0")
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,string.sub(x, 1, 1))
else
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],1,string.sub(x, 1, 1))
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],2,string.sub(x, 2, 2))
end
else
x = string2value(string.sub(values[side .."editvalue"], controls[side .. "CRSRchar"]-1, controls[side .. "CRSRchar"]-1)) + 1
if x > 10 then x = 1
elseif x == 0 then x = 1
end
values[side .."editvalue"] = replaceChar(values[side .."editvalue"],controls[side .. "CRSRchar"]-1,value2string(x)) -- values[side .."editvalue"]-1
end
end
controls[side .."knobs"] = 0
--when we use ENT, we'll need to return the results!
elseif controls[ent] == 1 and controls[side .. "CRSRchar"] == 0 and mode == 1  and controls["SCAN"] == 1 then --new for scan selecting wpt from fpl
if values[side .."editvalue"]["length"] == 1 then
values[side .. "editstate"] = 3
end
elseif controls[ent] == 1 and controls[side .. "CRSRchar"] == 0 and mode == 1 and controls["SCAN"] ~= 1 then
if rpage == 6 then
controls[side .. "CRSRchar"] = 5
values[side .. "editvalue"] = values["APTpage"]
values[side .. "editstate"] = 3
elseif rpage == 7 then
controls[side .. "CRSRchar"] = 5
values[side .. "editvalue"] = values["VORpage"]
values[side .. "editstate"] = 3
elseif rpage == 8 then
controls[side .. "CRSRchar"] = 5
values[side .. "editvalue"] = values["NDBpage"]
values[side .. "editstate"] = 3
elseif rpage == 9 then
controls[side .. "CRSRchar"] = 5
values[side .. "editvalue"] = values["INTpage"]
values[side .. "editstate"] = 3
elseif rpage == 10 then
controls[side .. "CRSRchar"] = 5
values[side .. "editvalue"] = values["SUPpage"]
values[side .. "editstate"] = 3
end
controls[ent] = 0

elseif controls[ent] == 1 and controls[side .. "CRSRchar"] ~= 0 then
if mode == 1 then
if values[side .."editvalue"]["length"] == 0 then
if side == "r" or side == "rs" then
values["statusmessage"] = "NO#SUCH#WPT"
values["statustimer"] = 5
else
--we need to create a User WPT
controls["rsselect"] = 3
controls["WPTCRSR"]  = 1
values[side .."editvalue"][1]["types"] = 4
values[side .. "editstate"] = 3
end
elseif values[side .."editvalue"]["length"] > 1 then
--if this happens, we need to display the duplicate waypoint page and/or the waypoint page!
--the handler for this must go here, if I put it somewhere else, it'll get messy!
values[side .. "editstate"] = 2
controls["lsCRSR"]  = 1
table.sort(values[side .."editvalue"],
function(a, b)
a = distance(values["GPSlat"], values["GPSlon"], a["lat"], a["lon"])
b = distance(values["GPSlat"], values["GPSlon"], b["lat"], b["lon"])
return a<b
end)
values["multipleWPT"] = values[side .."editvalue"]
controls["multiselect"] = 1
controls["sview"] = 1
elseif values[side .."editvalue"]["length"] == 1 then
values[side .. "editstate"] = 3
--  value = values[side .."editvalue"]
--we need to show the waypoint confirm page
--for this page, we could simply insert the waypoint to pos1
--Be carefull, this page could also be shown by other pages!
--when done, we remove it again and the old waypoint will be shown!
end


elseif mode == 2 then
if values[side .."editvalue"]["month"] == 0 then  values[side .."editvalue"]["month"] = 1 end
if string.sub(values[side .."editvalue"]["year"], 1, 1) == "_" then
values[side .."editvalue"]["year"] = replaceChar(values[side .."editvalue"]["year"],1,"0")
end
if string.sub(values[side .."editvalue"]["year"], 2, 2) == "_" then
values[side .."editvalue"]["year"] = replaceChar(values[side .."editvalue"]["year"],2,"0")
end

if values[side .."editvalue"]["days"] > values["monthdays"][values[side .."editvalue"]["month"]] then
values["statusmessage"] = "INVALID#ENT"
values["statustimer"] = 5
else
value["days"] = values[side .."editvalue"]["days"]
value["month"] = values[side .."editvalue"]["month"]
value["year"] = tonumber(values[side .."editvalue"]["year"])
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
end
elseif mode == 3 then
if string.sub(values[side .."editvalue"]["minute"], 1, 1) == "_" then
values[side .."editvalue"]["minute"] = replaceChar(values[side .."editvalue"]["minute"],1,"0")
end
if string.sub(values[side .."editvalue"]["minute"], 2, 2) == "_" then
values[side .."editvalue"]["minute"] = replaceChar(values[side .."editvalue"]["minute"],2,"0")
end

value["hour"] = values[side .."editvalue"]["hour"]
value["minute"] = tonumber(values[side .."editvalue"]["minute"])
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
elseif mode == 4 then
value = string.gsub(values[side .."editvalue"], "_", " ")
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
controls[side .."select"] = controls[side .."select"] + 1
elseif mode == 5 then
values[side .."editvalue"] = string.gsub(values[side .."editvalue"], "_", "0")
local hours = tonumber(string.sub(values[side .."editvalue"], 2, 4))
local a = string.sub(values[side .."editvalue"], 1, 1)

local minutes = tonumber(string.sub(values[side .."editvalue"], 6, 7))
local seconds = tonumber(string.sub(values[side .."editvalue"], 9, 10))

value = hours+(minutes+seconds/100)/60
if a == "S" then
value = -value
end
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
elseif mode == 6 then
values[side .."editvalue"] = string.gsub(values[side .."editvalue"], "_", "0")
local hours = tonumber(string.sub(values[side .."editvalue"], 2, 4))
local a = string.sub(values[side .."editvalue"], 1, 1)

local minutes = tonumber(string.sub(values[side .."editvalue"], 6, 7))
local seconds = tonumber(string.sub(values[side .."editvalue"], 9, 10))

value = hours+(minutes+seconds/100)/60
if a == "W" then
value = -value
end
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
elseif mode == 7 then
value = string.gsub(values[side .."editvalue"], "_", "0")
value = makelength(tonumber(value),string.len(value),1) --fix remove leading 0s
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
elseif mode == 8 then
local test =  string.gsub(values[side .."editvalue"], "_", "0")
if tonumber(test) > 11795 or tonumber(test) < 10800 then
values["statusmessage"] = "INVALID#ENT"
values["statustimer"] = 5
else
value = string.gsub(values[side .."editvalue"], "_", "0")
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
end
elseif mode == 9 then
if string.sub(values[side .."editvalue"], 3, 3) == "W" then
value = -tonumber(string.sub(string.gsub(values[side .."editvalue"], "_", "0"), 1, 2))
else
value = tonumber(string.sub(string.gsub(values[side .."editvalue"], "_", "0"), 1, 2))
end
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
elseif mode == 10 then
local test =  string.gsub(values[side .."editvalue"], "_", "0")
if tonumber(test) > 17500 or tonumber(test) < 1900 then
values["statusmessage"] = "INVALID#ENT"
values["statustimer"] = 5
else
--this replaces leading 0s by spaces
value = makelength(tonumber(test), 5, 1)
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
end
elseif mode == 11 then
value = string.gsub(values[side .."editvalue"], "_", "0")
values[side .."editvalue"] = nil
controls[side .. "CRSRchar"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
end

--don't make editvalue nil, because not everything passes the checks!
controls[ent] = 0
elseif controls[clr] == 1 then
if controls[side .. "CRSRchar"] > 0 then
controls[side .. "CRSRchar"] = 0
values[side .."editvalue"] = nil
controls[clr] = 0
end
end

--here comes the clue: We also assemble a string which can the be displayed by the page.
-- It should be shown if rCRSR == 1 and Rselect == the according value, else we show something normal
if mode == 1 then
if controls["SCAN"] == 1 and values[side .."editvalue"] ~= nil and values[side .."editvalue"][1] ~= nil then
if values["flash"] == 1 then
values[side .."bstring"] = string.gsub(values[side .."editvalue"][1]["ident"], " ", "#")
else
values[side .."bstring"] = ""
end
values[side .."gstring"] = values[side .."editvalue"][1]["ident"]
else
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = "     "
values[side .."bstring"] = string.gsub(value["ident"], " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"][1]["ident"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"][1]["ident"]
if values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]," ")
end
end
end
elseif mode == 2 then
if controls[side .. "CRSRchar"] == 0 then
local months = numbertomonth(value["month"])
values[side .."gstring"] = string.format("%02d#%s#%02d", value["days"], months, value["year"])
values[side .."bstring"] = values[side .."gstring"]
else
values["MSGENT"] = 2
local months = numbertomonth(values[side .."editvalue"]["month"])
values[side .."gstring"] = string.format("%02d#%s#%s", values[side .."editvalue"]["days"], months, values[side .."editvalue"]["year"])
values[side .."bstring"] = values[side .."gstring"]
if controls[side .. "CRSRchar"] == 1 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],1," ")
values[side .."bstring"] = replaceChar(values[side .."bstring"],2," ")
elseif controls[side .. "CRSRchar"] == 2 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],4," ")
values[side .."bstring"] = replaceChar(values[side .."bstring"],5," ")
values[side .."bstring"] = replaceChar(values[side .."bstring"],6," ")

elseif controls[side .. "CRSRchar"] == 3 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],8," ")
elseif controls[side .. "CRSRchar"] == 4 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],9," ")
end
end

elseif mode == 3 then
if controls[side .. "CRSRchar"] == 0 then
local hour2 = value["hour"] + value["zonediff"]
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
values[side .."gstring"] = string.format("%02d:%02d", hour2, value["minute"])
values[side .."bstring"] = values[side .."gstring"]
else
values["MSGENT"] = 2
local hour2 = values[side .."editvalue"]["hour"] + value["zonediff"]
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
values[side .."gstring"] = string.format("%02d:%s", hour2, values[side .."editvalue"]["minute"])
values[side .."bstring"] = values[side .."gstring"]
if controls[side .. "CRSRchar"] == 1 and values["flash"] == 0 then
values[side .."bstring"]  = replaceChar(values[side .."bstring"] , 1, " ")
values[side .."bstring"]  = replaceChar(values[side .."bstring"] , 2, " ")
elseif controls[side .. "CRSRchar"] == 2 and values["flash"] == 0 then
values[side .."bstring"]  = replaceChar(values[side .."bstring"] , 4, " ")
elseif controls[side .. "CRSRchar"] == 3 and values["flash"] == 0 then
values[side .."bstring"]  = replaceChar(values[side .."bstring"] , 5, " ")
end
end


elseif mode == 4 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = value
values[side .."bstring"] = string.gsub(value, " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"]
if values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]," ")
end
end

elseif mode == 5 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = "           "
values[side .."bstring"] = string.gsub(string.format("%s", convertLatLon(value, 0)), " ", "#")
else
values["MSGENT"] = 2
values[side .."gstring"] = string.format("%s", values[side .."editvalue"])
values[side .."bstring"] = string.gsub(values[side .."gstring"], " ", "#")
if controls[side .. "CRSRchar"] == 1 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],1," ")
elseif controls[side .. "CRSRchar"] == 2 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],3," ")
elseif controls[side .. "CRSRchar"] == 3 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],4," ")
elseif controls[side .. "CRSRchar"] == 4 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],6," ")
elseif controls[side .. "CRSRchar"] == 5 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],7," ")
elseif controls[side .. "CRSRchar"] == 6 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],9," ")
elseif controls[side .. "CRSRchar"] == 7 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],10," ")
end
end

elseif mode == 6 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = "           "
values[side .."bstring"] = string.gsub(string.format("%s", convertLatLon(value, 1)), " ", "#")
else
values["MSGENT"] = 2
values[side .."gstring"] = string.format("%s", values[side .."editvalue"])
values[side .."bstring"] = string.gsub(values[side .."gstring"], " ", "#")
if controls[side .. "CRSRchar"] == 1 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],1," ")
elseif controls[side .. "CRSRchar"] == 2 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],2," ")
values[side .."bstring"] = replaceChar(values[side .."bstring"],3," ")
elseif controls[side .. "CRSRchar"] == 3 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],4," ")
elseif controls[side .. "CRSRchar"] == 4 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],6," ")
elseif controls[side .. "CRSRchar"] == 5 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],7," ")
elseif controls[side .. "CRSRchar"] == 6 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],9," ")
elseif controls[side .. "CRSRchar"] == 7 and values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],10," ")
end
end
elseif mode == 7 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = value
values[side .."bstring"] = string.gsub(value, " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"]
if values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]," ")
end
end
elseif mode == 8 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = value
values[side .."bstring"] = string.gsub(value, " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"]
if values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]," ")
end
end
elseif mode == 9 then
if controls[side .. "CRSRchar"] == 0 then
if value == "__" then
values[side .."gstring"] = "___"
elseif tonumber(value) < 0 then
values[side .."gstring"] = makelength(math.abs(tonumber(value)), 2, 1) .. "W"
else
values[side .."gstring"] = makelength(value, 2, 1) .. "E"
end
values[side .."bstring"] = string.gsub(values[side .."gstring"] , " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"]
if values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]," ")
end
end
elseif mode == 10 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = value
values[side .."bstring"] = string.gsub(value, " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"]
if values["flash"] == 0 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]," ")
end
end
elseif mode == 11 then
if controls[side .. "CRSRchar"] == 0 then
values[side .."gstring"] = value
values[side .."bstring"] = string.gsub(value, " ", "#")
else
values["MSGENT"] = 2
values[side .."bstring"] = string.gsub(values[side .."editvalue"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"]
if values["flash"] == 0 then
if controls[side .. "CRSRchar"] == 1 then
values[side .."bstring"] = replaceChar(values[side .."bstring"],1," ")
values[side .."bstring"] = replaceChar(values[side .."bstring"],2," ")

else
values[side .."bstring"] = replaceChar(values[side .."bstring"],controls[side .. "CRSRchar"]-1," ")
end
end
end



end
elseif values[side .. "editstate"] == 3 then -- and values[side .."editvalue"]~=nil
controls["rspage"] = 1

values["wpteditvalue"] = values[side .."editvalue"]
--display is later, as usual
values[side .."bstring"] = string.gsub(values[side .."editvalue"][1]["ident"], " ", "#")
values[side .."gstring"] = values[side .."editvalue"][1]["ident"]
if values["flash"] == 0 and values[side .."editvalue"][1]["lat"] ~= "_" and values[side .."editvalue"][1]["lon"] ~= "_" and values[side .."editvalue"][1]["lat"] ~= nil and values[side .."editvalue"][1]["lon"] ~= nil then
values[side .."bstring"] = "     "
end
if values[side .."editvalue"][1]["lat"] ~= "_" and values[side .."editvalue"][1]["lon"] ~= "_" and values[side .."editvalue"][1]["lat"] ~= nil and values[side .."editvalue"][1]["lon"] ~= nil then
values["MSGENT"] = 2
controls["WPTCRSR"] = 0
if side == "l" then
controls["rsselect"] = 0
end
end
controls[side .."knobl"] = 0
if controls[side .."knobs"] == -1 then
values[side .. "editstate"] = 0
controls["WPTCRSR"] = 0
values[side .."editvalue"] = enterident("A    ", 9, 0, 1, -1)
controls[side .."knobs"] = 0
elseif controls[side .."knobs"] == 1 then
values[side .. "editstate"] = 0
controls["WPTCRSR"] = 0
values[side .."editvalue"] = enterident("9    ", 9, 0, 1, 1)
controls[side .."knobs"] = 0
elseif controls["sCLR"] == 1 then
values[side .. "editstate"] = 0
controls["WPTCRSR"] = 0
controls["sCLR"] = 0
if values[side .."editvalue"]["length"] > 1 then
values[side .."editvalue"] = enterident(values[side .."editvalue"][1]["ident"], 9, 0, 5, 0)
values[side .. "editstate"] = 2
controls["lsCRSR"]  = 1
table.sort(values[side .."editvalue"],
function(a, b)
a = distance(values["GPSlat"], values["GPSlon"], a["lat"], a["lon"])
b = distance(values["GPSlat"], values["GPSlon"], b["lat"], b["lon"])
return a<b
end)
values["multipleWPT"] = values[side .."editvalue"]
controls["multiselect"] = 1
controls["sview"] = 1
end
elseif controls["sENT"] == 1 and values[side .."editvalue"][1]["lat"] ~= "_" and values[side .."editvalue"][1]["lon"] ~= "_" and values[side .."editvalue"][1]["lat"] ~= nil and values[side .."editvalue"][1]["lon"] ~= nil then
values[side .. "editstate"] = 0
value = values[side .."editvalue"][1]
values[side .."editvalue"] = nil
controls[side .."CRSRchar"] = 0
controls["sENT"] = 0
values[side .. "return"] = 1
controls[side .."select"] = controls[side .."select"] + 1
end


elseif values[side .. "editstate"] == 2 then

controls["lspage"] = 2
--here we only control, display will be seperate!
--this is the duplicate waypoint Page
--it can only occur with editvalue!!
--we first need to sort the results!

controls["lsknobs"] = 0
if controls["lsknobl"] == -1 then
controls["multiselect"] = controls["multiselect"] - 1
elseif controls["lsknobl"] == 1 then
controls["multiselect"] = controls["multiselect"] + 1
elseif controls["sENT"] == 1 then
values[side .. "editstate"] = 3
controls["sENT"] = 0
local WPT = values[side .."editvalue"][controls["multiselect"]]
local len = values[side .."editvalue"]["length"]
values[side .."editvalue"] = {}
values[side .."editvalue"][1] = WPT
values[side .."editvalue"]["length"] = len
controls["lsCRSR"]  = 0
elseif controls["sCLR"] == 1 then
values[side .. "editstate"] = 0
controls["sCLR"] = 0
controls["lsCRSR"]  = 0
end
if controls["multiselect"] < 1 then controls["multiselect"] = values["multipleWPT"]["length"]
elseif controls["multiselect"] > values["multipleWPT"]["length"] then controls["multiselect"] = 1
end
if controls["multiselect"] < controls["sview"] then controls["sview"] = controls["multiselect"]
elseif controls["multiselect"] > controls["sview"] + 3 then controls["sview"] = controls["multiselect"] - 3
end


if controls["sview"] < 1 then controls["sview"] = values["multipleWPT"]["length"]
elseif controls["sview"] > values["multipleWPT"]["length"] then controls["sview"] =  1
end


controls[side .."knobl"] = 0
--we need to show the duplicate waypoint Page
--the page should make the correct waypoint position 1 and set length to 1!
end
--we return the value back, either changed or unchanged
return value
--3: time
end

--mode 0: normal, 1: ACT, 2:Confirm
function WPTpage(types, mode, subpage)

local typesname = "   "
local typeslength = 0
if types == 0 then
typesname = "APT"
typeslength = 4
elseif types == 1 then
typesname = "VOR"
typeslength = 3
elseif types == 2 then
typesname = "NDB"
typeslength = 3
elseif types == 3 then
typesname = "INT"
typeslength = 5
elseif types == 4 then
typesname = "SUP"
typeslength = 5
end
local waypoint = {}
local page = "r"
local ent = "ENT"
local clr = "CLR"
local CRSR = "rCRSR"
if mode == 0 then
waypoint = values[typesname.."page"]
elseif mode == 1 then
if controls["rview"] == 0 then
waypoint[1] = values["activeWPT"][2]
else
waypoint[1] = FPlan[0][controls["rview"]]
end
waypoint["length"] = 1
elseif mode == 2 then
page = "rs"
ent = "sENT"
clr = "sCLR"
CRSR = "WPTCRSR"
waypoint = values["wpteditvalue"]
--waypoint["length"] = 1
end
gline[1] = string.sub(gline[1], 1, 12)
if lpage == 4 and lsubpage[4] == 10 then
--unicode bug
gline[2] = string.sub(gline[2], 1, string.len(scale(values["XTK"], values["scalefactor"], values["tofrom"]))+1)
else
gline[2] = string.sub(gline[2], 1, 12)
end
gline[3] = string.sub(gline[3], 1, 12)
gline[4] = string.sub(gline[4], 1, 12)
gline[5] = string.sub(gline[5], 1, 12)
gline[6] = string.sub(gline[6], 1, 12)
gline[7] = string.sub(gline[7], 1, 18)
bline[1] = string.sub(bline[1], 1, 12)
bline[2] = string.sub(bline[2], 1, 12)
bline[3] = string.sub(bline[3], 1, 12)
bline[4] = string.sub(bline[4], 1, 12)
bline[5] = string.sub(bline[5], 1, 12)
bline[6] = string.sub(bline[6], 1, 12)

if types ~= 0 then subpage = 10 end
if subpage == 30 then controls[CRSR]  = 0 end
--if controls[page .. "CRSR"]  == 1 then
if controls[CRSR]  == 1 then
--should I restric this to user only??
if waypoint["length"] ~= 0 then
if controls[page .. "CRSRchar"] == 0 and (controls[page .. "select"] == 0 or controls[page .. "select"] == 2)then controls[page .. "CRSRchar"] = 1 end
if controls[page .. "select"] == 10 and subpage < 70 then
waypoint[1]["lat"] = editvalue(5, page, waypoint[1]["lat"])
elseif controls[page .. "select"] == 11 and subpage < 70 then
waypoint[1]["lon"] = editvalue(6, page, waypoint[1]["lon"])
end
if types == 0 and subpage == 20 and controls[page .. "select"] == 3 then
waypoint[1]["elev"] = editvalue(7, page, waypoint[1]["elev"])
elseif types == 0 and subpage == 31 and controls[page .. "select"] == 3 then
waypoint[1]["LRWY"] = editvalue(7, page, waypoint[1]["LRWY"])
elseif types == 0 and subpage == 50 and controls[page .. "select"] == 3 then
RMKtable[waypoint[1]["ident"]][1] = editvalue(4, page, RMKtable[waypoint[1]["ident"]][1])
elseif types == 0 and subpage == 50 and controls[page .. "select"] == 4 then
RMKtable[waypoint[1]["ident"]][2] = editvalue(4, page, RMKtable[waypoint[1]["ident"]][2])
elseif types == 0 and subpage == 50 and controls[page .. "select"] == 5 then
RMKtable[waypoint[1]["ident"]][3] = editvalue(4, page, RMKtable[waypoint[1]["ident"]][3])
elseif types == 1 and controls[page .. "select"] == 3 then
waypoint[1]["freq"] = editvalue(8, page, waypoint[1]["freq"])
elseif types == 1 and controls[page .. "select"] == 4 then
if controls[page .. "knobs"] ~= 0 and values["activeWPT"][2]["types"] == waypoint[1]["types"] and values["activeWPT"][2]["ident"] == waypoint[1]["ident"] and  values["activeWPT"][2]["lat"] == waypoint[1]["lat"] then
controls[page .. "knobs"] = 0
values["statusmessage"] = "IN#ACT#LIST"
values["statustimer"] = 5
end
waypoint[1]["magvar"] = editvalue(9, page, waypoint[1]["magvar"])
elseif types == 2 and controls[page .. "select"] == 3 then
waypoint[1]["freq"] = editvalue(10, page, waypoint[1]["freq"])
elseif (types == 3 or types == 4) and controls[page .. "select"] == 3 then
values["INTref"] = editvalue(1, page, values["INTref"])
if values[page .. "return"] == 1 and waypoint[1]["USR"] == 0 then
values["INTrad"] = "____"
end
elseif (types == 3 or types == 4) and controls[page .. "select"] == 4 then
values["INTrad"] = editvalue(11, page, values["INTrad"])
elseif (types == 3 or types == 4) and controls[page .. "select"] == 5 then
values["INTdist"] = editvalue(7, page,  values["INTdist"])
end
end

--if this is true, we got a R/D
if values[page .. "return"] == 1 and (types == 3 or types == 4) and values["INTref"] ~= "_____" and values["INTrad"] ~= "____" and values["INTdist"] ~= "____" and controls[page .. "select"] < 10 then
waypoint[1]["lat"], waypoint[1]["lon"] = raddist(values["INTref"]["lat"], values["INTref"]["lon"], values["INTrad"]/10, values["INTdist"]/10)


elseif values[page .. "return"] == 1 and (types == 3 or types == 4) and waypoint[1]["lat"] ~= "_" and waypoint[1]["lon"] ~= "_" and controls[page .. "select"] >= 10 then
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
end

--the user wants to look for the previous airport
if controls[page .. "knobs"] == -1 then
if controls[page .. "select"] == 0 then
if controls["SCAN"] == 0 then
waypoint = enterident(waypoint[1]["ident"], types, 0, controls[page .. "CRSRchar"], -1)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
----APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
else
sorttable(0)
--we enter the current WPT to get the new num
waypoint = enterident(waypoint[1]["ident"], types, 0, 5, 0, waypoint[1]["lat"], waypoint[1]["lon"])
nextWPT(waypoint, types,-2)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
end
elseif controls[page .. "select"] == 2 then
if controls["SCAN"] == 0 then
waypoint = enterident(waypoint[1]["name1"], types, 1, controls[page .. "CRSRchar"], -1)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
else
--we sort the APT table for names
sorttable(1)
waypoint = enterident(waypoint[1]["name1"], types, 1, 11, 0, waypoint[1]["lat"], waypoint[1]["lon"])
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
nextWPT(waypoint, types,-2)
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
end
elseif controls[page .. "select"] == 4 and subpage == 31 then
if waypoint[1]["surface"] == "SFT" then
waypoint[1]["surface"] = "HRD"
else
waypoint[1]["surface"] = "SFT"
end
end
if waypoint["length"] > 1 then
values["statusmessage"] = "#DUP#IDENT#"
values["statustimer"] = 5
elseif values["statusmessage"] == "#DUP#IDENT#" then
values["statustimer"] = 0

end
controls[page .. "knobs"] = 0
--the user wants to look for the next airport
elseif controls[page .. "knobs"] == 1 then
if controls[page .. "select"] == 0 then
if controls["SCAN"] == 0 then
waypoint = enterident(waypoint[1]["ident"], types, 0, controls[page .. "CRSRchar"], 1)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
else
sorttable(0)
waypoint = enterident(waypoint[1]["ident"], types, 0, 5, 0, waypoint[1]["lat"], waypoint[1]["lon"])
nextWPT(waypoint, types,2)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
end
elseif controls[page .. "select"] == 2 then
if controls["SCAN"] == 0 then

waypoint = enterident(waypoint[1]["name1"], types, 1, controls[page .. "CRSRchar"], 1)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
else
sorttable(1)
waypoint = enterident(waypoint[1]["name1"], types, 1, 11, 0, waypoint[1]["lat"], waypoint[1]["lon"])
nextWPT(waypoint, types,2)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
end
elseif controls[page .. "select"] == 4 and subpage == 31 then
if waypoint[1]["surface"] == "HRD" then
waypoint[1]["surface"] = "SFT"
else
waypoint[1]["surface"] = "HRD"
end
end
if waypoint["length"] > 1 then
values["statusmessage"] = "#DUP#IDENT#"
values["statustimer"] = 5
elseif values["statusmessage"] == "#DUP#IDENT#" then
values["statustimer"] = 0
end
controls[page .. "knobs"] = 0
end
--move to the previous character

if controls[page .. "knobl"] == -1 then
controls[page .. "CRSRchar"] = controls[page .. "CRSRchar"] -1
if controls[page .. "select"] == 0 and controls[page .. "CRSRchar"] < 1 then
if subpage == 50 then
controls[page .. "select"] = 5
controls[page .. "CRSRchar"] = 0
if not RMKtable[waypoint[1]["ident"]] then
if # RMKtable >= 100 then
values["statusmessage"] = "#RMKS#FULL#"
values["statustimer"] = 5
controls[page .. "CRSRchar"] = typeslength
controls[page .. "select"] = 0
else
RMKtable[waypoint[1]["ident"]] = {}
RMKtable[waypoint[1]["ident"]][1] = "           "
RMKtable[waypoint[1]["ident"]][2] = "           "
RMKtable[waypoint[1]["ident"]][3] = "           "
end
end
elseif subpage == 70 then
controls[page .. "select"] = values["SIDSTAR"]["SID"]["num"]
controls[page .. "CRSRchar"] = 0
elseif subpage == 71 then
controls[page .. "select"] = values["SIDSTAR"]["STAR"]["num"]
controls[page .. "CRSRchar"] = 0
elseif subpage == 80 then
controls[page .. "select"] = values["SIDSTAR"]["APP"]["num"]
controls[page .. "CRSRchar"] = 0
else
if waypoint["length"] == 0 then
controls[page .. "select"] = 4
else
if waypoint[1]["USR"] == 1 then
if types == 0 then
if subpage == 10 then
controls[page .. "select"] = 11
controls[page .. "CRSRchar"] = 0
elseif subpage == 20 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
elseif subpage == 31 then
controls[page .. "select"] = 4
controls[page .. "CRSRchar"] = 0
end
else

controls[page .. "select"] = 11
controls[page .. "CRSRchar"] = 0
end
else
if subpage <= 20 and types < 3 then
controls[page .. "CRSRchar"] = 11
controls[page .. "select"] = 2
else
if types == 3 or types == 4 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
else
controls[page .. "CRSRchar"] = typeslength
controls[page .. "select"] = 0
end
end
end
end
end
elseif (subpage == 70 or subpage == 71 or subpage == 80 ) and controls[page .. "select"] ~= 0 then
controls[page .. "select"] = controls[page .. "select"] - 1
controls[page .. "CRSRchar"] = 0
elseif controls[page .. "select"] == 1 then
controls[page .. "CRSRchar"] = typeslength
controls[page .. "select"] = 0
elseif controls[page .. "select"] == 2 then
if controls[page .. "CRSRchar"] < 1 then
if waypoint["length"] == -1 then
controls[page .. "select"] = 1
else
controls[page .. "CRSRchar"] = typeslength
controls[page .. "select"] = 0
end
end
elseif controls[page .. "select"] == 3 then
if mode == 0 then
controls[page .. "CRSRchar"] = typeslength
controls[page .. "select"] = 0
else
controls[page .. "select"] = 4
end
elseif controls[page .. "select"] == 4 then
if waypoint["length"] == 0 or waypoint["length"] == -10 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
end
end

--  enterident(waypoint[1]["ident"], 0, 0, controls["rCRSRchar"], 1)
controls[page .. "knobl"] = 0
--move to the next character
elseif controls[page .. "knobl"] == 1 then
controls[page .. "CRSRchar"] = controls[page .. "CRSRchar"] + 1
if controls[page .. "select"] == 0 and controls[page .. "CRSRchar"] > typeslength then
if waypoint["length"] == 0 then
controls[page .. "select"] = 3
elseif subpage == 50 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
if not RMKtable[waypoint[1]["ident"]] then
if # RMKtable >= 100 then
values["statusmessage"] = "#RMKS#FULL#"
values["statustimer"] = 5
controls[page .. "CRSRchar"] = typeslength
controls[page .. "select"] = 0
else
RMKtable[waypoint[1]["ident"]] = {}
RMKtable[waypoint[1]["ident"]][1] = "           "
RMKtable[waypoint[1]["ident"]][2] = "           "
RMKtable[waypoint[1]["ident"]][3] = "           "
end
end
elseif subpage == 70 or subpage == 71 or subpage == 80 then
controls[page .. "select"] = 1
controls[page .. "CRSRchar"] = 0
else
if waypoint["length"] == -1 then
controls[page .. "select"] = 1
else
if waypoint[1]["USR"] == 1 then
if types == 0 then
if subpage == 10 then
controls[page .. "select"] = 10
controls[page .. "CRSRchar"] = 0
elseif subpage == 20 or subpage == 31 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
end
elseif types == 1 or types == 2 or types == 3 or types == 4 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
else

controls[page .. "select"] = 10
controls[page .. "CRSRchar"] = 0
end
else
if subpage <= 20 and types < 3 then
controls[page .. "CRSRchar"] = 1
controls[page .. "select"] = 2
else
if types == 3 or types == 4 then
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
else
controls[page .. "CRSRchar"] = 1
controls[page .. "select"] = 0
end
end
end
end
end
elseif (subpage == 70 or subpage == 71 or subpage == 80) and controls[page .. "select"] ~= 0 then
controls[page .. "select"] = controls[page .. "select"] + 1
controls[page .. "CRSRchar"] = 0
elseif controls[page .. "select"] == 1 then
controls[page .. "CRSRchar"] = 1
controls[page .. "select"] = 2
elseif controls[page .. "select"] == 2 then
if controls[page .. "CRSRchar"] > 11 then
controls[page .. "CRSRchar"] = 1
controls[page .. "select"] = 0
end
elseif controls[page .. "select"] == 3 then
controls[page .. "select"] = 4
elseif controls[page .. "select"] == 4 then
--if waypoint["length"] == 0 or waypoint[1]["USR"] == 1 then
if mode == 0 then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = 1
else
controls[page .. "select"] = 3
end

--  end
end
controls[page .. "knobl"] = 0
elseif controls[ent] == 1 and waypoint["length"] == 0 then
if controls[page .. "select"] == 3 then
if USRlen >= 250 then
values["statusmessage"] = "USR#DB#FULL"
values["statustimer"] = 5
else
createWPT(types, waypoint[1]["ident"], 0)
--workaround for mode 2
waypoint2 = enterident(waypoint[1]["ident"], types, 0, 5, 0)
waypoint[1] = waypoint2[1]
waypoint["length"] = waypoint2["length"]
waypoint["num"] = waypoint2["num"]
controls[page .. "CRSRchar"] = 0
values["statusmessage"] = "ENT#LAT/LON"
values["statustimer"] = 5
if types == 3 or types == 4 then
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
values["INTrad"] = "____"
values["INTdist"] = "____"
controls[page .. "select"] = 3
else
controls[page .. "select"] = 10
end
subpage = 10
end
elseif controls[page .. "select"] == 4 then
if USRlen >= 250 then
values["statusmessage"] = "USR#DB#FULL"
values["statustimer"] = 5
else
createWPT(types, waypoint[1]["ident"], 1)
waypoint2 = enterident(waypoint[1]["ident"], types, 0, 5, 0)
waypoint[1] = waypoint2[1]
waypoint["length"] = waypoint2["length"]
waypoint["num"] = waypoint2["num"]
if types == 1 then
waypoint[1]["magvar"] = round(-getmagvar(waypoint[1]["lat"], waypoint[1]["lat"]))
end
subpage = 10
-- -10 is usr wpt
controls[CRSR]  = 0
controls[page .. "select"] = 0
end
end
controls[ent] = 0
elseif controls[ent] == 1 and (subpage == 70 or subpage == 71 or subpage == 80) then
local name = "SID"
if subpage == 71 then
name = "STAR"
elseif subpage == 80 then
name = "APP"
end
if values["SIDSTARsel"][name] == nil then
values["SIDSTARsel"]["MAP"] = 99

local month2 = string.sub(nav_cycle, 15, 17)
local days = tonumber(string.sub(nav_cycle, 13, 14))
local year2 = tonumber(string.sub(nav_cycle, 19, 20))

days2 = monthstodays(month2, days)
local days3 = monthstodays(numbertomonth(values["date"]["month"]), values["date"]["days"])
local expired = 0
if year2 < values["date"]["year"] then
expired = 1
elseif year2 == values["date"]["year"] and days2 < days3 then
expired = 1
end
if expired == 1 then
values["statusmessage"] = "OUTDATED#DB"
values["statustimer"] = 5
end

if controls[page .. "select"] > 0 then
values["SIDSTARsel"][name] = values["SIDSTAR"][name][controls[page .. "select"]]
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
values["SIDSTARsel"]["stat"] = 0
--only 1 RWY?: skip this step
if values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] == 1 then
values["SIDSTARsel"][name .. "RWY"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][1]
if values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] == 1 then
values["SIDSTARsel"][name .. "TRANS"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][1]
createSIDSTAR(name)
elseif values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] == 0 then
values["SIDSTARsel"][name .. "TRANS"] = 0
createSIDSTAR(name)
--    print(values["SIDSTARsel"]["MAP"])
end
end
end
elseif values["SIDSTARsel"][name .. "RWY"] == nil then
values["SIDSTARsel"][name .. "RWY"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][controls[page .. "select"]]
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
if values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] == 1 then
values["SIDSTARsel"][name .. "TRANS"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][1]
createSIDSTAR(name)
elseif values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] == 0 then
values["SIDSTARsel"][name .. "TRANS"] = 0
createSIDSTAR(name)
end


--values["SIDSTARsel"]["stat"] = 0
elseif values["SIDSTARsel"][name .. "TRANS"] == nil then
values["SIDSTARsel"][name .. "TRANS"]= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][controls[page .. "select"]]
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
--we now generate a list of WPTs which can be inserted into the FPLN
--They are entered by enterident to remove unofficial WPTs.
createSIDSTAR(name)
--values["SIDSTARsel"]["stat"] = 0
elseif values["SIDSTARsel"]["stat"] == 0 and controls[page .. "select"] == values["SIDSTARsel"]["num"] + 1 then
local num = 1
while num <= FPlan[0]["length"] do
if FPlan[0][num]["types"] == 0 and  FPlan[0][num]["ident"] == waypoint[1]["ident"] then
break end
num = num + 1
end

if FPlan[0][name .. "start"] > 50 then
if num <= FPlan[0]["length"] then
values["SIDSTARsel"]["stat"] = 1
else
values["SIDSTARsel"]["stat"] = 3
end
--0: display1:all good 2: replace, 3: insert FPLN
else
values["SIDSTARsel"]["stat"] = 2
end

elseif values["SIDSTARsel"]["stat"] == 2 then
--we remove the existing SID
while FPlan[0][name .. "end"] >= FPlan[0][name .. "start"] and FPlan[0][name .. "start"] > 50 do
table.remove(FPlan[0], FPlan[0][name .. "end"])
FPlan[0]["length"] = FPlan[0]["length"] - 1
FPlan[0][name .. "end"] = FPlan[0][name .. "end"] - 1
end
FPlan[0][name .. "ident"] = ""
FPlan[0][name .. "start"] = 99
FPlan[0][name .. "end"] = 99

local num = 1
while num <= FPlan[0]["length"] do
if FPlan[0][num]["types"] == 0 and  FPlan[0][num]["ident"] == waypoint[1]["ident"] then
break end
num = num + 1
end
if num <= FPlan[0]["length"] then
values["SIDSTARsel"]["stat"] = 1
else
values["SIDSTARsel"]["stat"] = 3
end
elseif values["SIDSTARsel"]["stat"] == 3 then
--We insert the airport at 1
--For STAR it should go to the end
FPlan[0]["length"] = FPlan[0]["length"] + 1
if subpage == 70 then
table.insert(FPlan[0], 1, waypoint[1])
else
table.insert(FPlan[0], FPlan[0]["length"], waypoint[1])
end

values["SIDSTARsel"]["stat"] = 1
end
--when everything is done, we do this:
-- Flightplan insertion here!!!
if values["SIDSTARsel"]["stat"] == 1 then
if FPlan[0]["length"] + values["SIDSTARsel"]["num"] > 30 then
values["statusmessage"] = "#FPL#FULL##"
values["statustimer"] = 5
values["SIDSTARsel"]["stat"] = 0
else
local num = 1
while num <= FPlan[0]["length"] do
if FPlan[0][num]["types"] == 0 and  FPlan[0][num]["ident"] == waypoint[1]["ident"] then
break end
num = num + 1
end
if subpage == 71 or subpage == 80 then
num = num -1
if subpage == 71 and FPlan[0]["APPstart"] < 50 then
num = FPlan[0]["APPstart"] - 1
end
end
if subpage == 80 then
FPlan[0]["APPident"] = appname(values["SIDSTARsel"]["APP"], values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["RWY"][1], 1)
FPlan[0]["APPMAP"] = values["SIDSTARsel"]["MAP"] + num + 1
else
FPlan[0][name .. "ident"] = values["SIDSTARsel"][name]
end

FPlan[0][name .. "APT"] = waypoint[1]
FPlan[0][name .. "start"] = num + 1
FPlan[0][name .. "end"] = num + values["SIDSTARsel"]["num"]

--if the first WPT of the STAR is the same as the one in the FPLN, we'll skip the one from the FPLN
-- if subpage == 71 and num > 0 then
-- if values["SIDSTARsel"][1]["types"] == FPlan[0][num]["types"] and values["SIDSTARsel"][1]["ident"] == FPlan[0][num]["ident"] and values["SIDSTARsel"][1]["lat"] == FPlan[0][num]["lat"] then
-- table.remove(FPlan[0], num)
-- FPlan[0]["length"] = FPlan[0]["length"] - 1
-- if num <= FPlan[0]["SIDstart"] then
-- FPlan[0]["SIDstart"] = FPlan[0]["SIDstart"] - 1
-- end
-- if num <= FPlan[0]["SIDend"] then
-- FPlan[0]["SIDend"] = FPlan[0]["SIDend"] - 1
-- end
-- if num+1 <= FPlan[0]["APPstart"] then
-- FPlan[0]["APPstart"] = FPlan[0]["APPstart"] - 1
-- end
-- if num+1 <= FPlan[0]["APPend"] then
-- FPlan[0]["APPend"] = FPlan[0]["APPend"] - 1
-- end
-- num = num - 1
-- FPlan[0]["STARstart"] = FPlan[0]["STARstart"] - 1
-- FPlan[0]["STARend"] = FPlan[0]["STARend"] - 1
-- end
-- elseif subpage == 80 and num > 0 then
-- if values["SIDSTARsel"][1]["types"] == FPlan[0][num]["types"] and values["SIDSTARsel"][1]["ident"] == FPlan[0][num]["ident"] and values["SIDSTARsel"][1]["lat"] == FPlan[0][num]["lat"] then
-- table.remove(FPlan[0], num)
-- FPlan[0]["length"] = FPlan[0]["length"] - 1
-- if num <= FPlan[0]["SIDstart"] then
-- FPlan[0]["SIDstart"] = FPlan[0]["SIDstart"] - 1
-- end
-- if num <= FPlan[0]["SIDend"] then
-- FPlan[0]["SIDend"] = FPlan[0]["SIDend"] - 1
-- end
-- if num+1 <= FPlan[0]["STARstart"] then
-- FPlan[0]["STARstart"] = FPlan[0]["STARstart"] - 1
-- end
-- if num+1 <= FPlan[0]["STARend"] then
-- FPlan[0]["STARend"] = FPlan[0]["STARend"] - 1
-- end
-- num = num - 1
-- FPlan[0]["APPstart"] = FPlan[0]["APPstart"] - 1
-- FPlan[0]["APPend"] = FPlan[0]["APPend"] - 1
-- end
-- elseif subpage == 70 and num+1 <= FPlan[0]["length"] then
-- if values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["types"] == FPlan[0][num+1]["types"] and values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["ident"] == FPlan[0][num+1]["ident"] and values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["lat"] == FPlan[0][num+1]["lat"] then
-- table.remove(FPlan[0], num+1)
-- FPlan[0]["length"] = FPlan[0]["length"] - 1
-- if num+1 <= FPlan[0]["STARstart"] then
-- FPlan[0]["STARstart"] = FPlan[0]["STARstart"] - 1
-- end
-- if num+1 <= FPlan[0]["STARend"] then
-- FPlan[0]["STARend"] = FPlan[0]["STARend"] - 1
-- end
-- if num+1 <= FPlan[0]["APPstart"] then
-- FPlan[0]["APPstart"] = FPlan[0]["APPstart"] - 1
-- end
-- if num+1 <= FPlan[0]["APPend"] then
-- FPlan[0]["APPend"] = FPlan[0]["APPend"] - 1
-- end
-- end
-- end
--after this is done, we check for redundant WPTs:
local num2 = 1
while num2 <= FPlan[0]["length"] and values["MSGSTAT"][8] == 0 do
local num3 = 1
while num3 <= values["SIDSTARsel"]["num"] and values["MSGSTAT"][8] == 0 do
if values["SIDSTARsel"][num3]["types"] == FPlan[0][num2]["types"] and values["SIDSTARsel"][num3]["ident"] == FPlan[0][num2]["ident"] and values["SIDSTARsel"][num3]["lat"] == FPlan[0][num2]["lat"] then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "  AS NECESSARY")
table.insert(values["MSGLIST"], 1, " EDIT ENROUTE WPTS")
table.insert(values["MSGLIST"], 1, "REDUNDANT WPTS IN FPL")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 4
values["MSGSTAT"][8] = 1
end
num3 = num3 + 1
end
num2 = num2 + 1
end
values["MSGSTAT"][8] = 0

num2 = 1
--num = 2
--print(num, values["SIDSTARsel"]["num"], FPlan[0][num]["ident"])
while num2 <= values["SIDSTARsel"]["num"] do
num = num + 1
FPlan[0]["length"] = FPlan[0]["length"] + 1
if subpage == 70 then
if num <= FPlan[0]["STARstart"] then
FPlan[0]["STARstart"] = FPlan[0]["STARstart"] + 1
end
if num <= FPlan[0]["STARend"] then
FPlan[0]["STARend"] = FPlan[0]["STARend"] + 1
end
if num <= FPlan[0]["APPstart"] then
FPlan[0]["APPstart"] = FPlan[0]["APPstart"] + 1
end
if num <= FPlan[0]["APPend"] then
FPlan[0]["APPend"] = FPlan[0]["APPend"] + 1
end
elseif subpage == 71 then
if num <= FPlan[0]["SIDstart"] then
FPlan[0]["SIDstart"] = FPlan[0]["SIDstart"] + 1
end
if num <= FPlan[0]["SIDend"] then
FPlan[0]["SIDend"] = FPlan[0]["SIDend"] + 1
end
if num <= FPlan[0]["APPstart"] then
FPlan[0]["APPstart"] = FPlan[0]["APPstart"] + 1
end
if num <= FPlan[0]["APPend"] then
FPlan[0]["APPend"] = FPlan[0]["APPend"] + 1
end
elseif subpage == 80 then
if num <= FPlan[0]["SIDstart"] then
FPlan[0]["SIDstart"] = FPlan[0]["SIDstart"] + 1
end
if num <= FPlan[0]["SIDend"] then
FPlan[0]["SIDend"] = FPlan[0]["SIDend"] + 1
end
if num <= FPlan[0]["STARstart"] then
FPlan[0]["STARstart"] = FPlan[0]["STARstart"] + 1
end
if num <= FPlan[0]["STARend"] then
FPlan[0]["STARend"] = FPlan[0]["STARend"] + 1
end
end
table.insert(FPlan[0], num, values["SIDSTARsel"][num2])
--print(values["SIDSTARsel"][num2]["ident"])
--print("x", FPlan[0][num]["ident"], num, num2)
num2 = num2 + 1
end
activateFPLN0()
if subpage == 80 and distance(FPlan[0]["APPAPT"]["lat"], FPlan[0]["APPAPT"]["lon"], values["GPSlat"], values["GPSlon"]) <= 30 then
set(APR, 1)
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "PRESS ALT TO SET BARO")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
values["autoscale"] = 1
end
values["SIDSTARsel"][name] = nil
values["SIDSTARsel"][name .. "RWY"] = nil
values["SIDSTARsel"][name .. "TRANS"] = nil
values["SIDSTARsel"]["num"] = 0
controls[CRSR] = 0
end
end


controls[ent] = 0
elseif controls[clr] == 1 and (subpage == 70 or subpage == 71 or subpage == 80) then
local name = "SID"
if subpage == 71 then
name = "STAR"
elseif subpage == 80 then
name ="APP"
end
if values["SIDSTARsel"][name .. "RWY"] == nil then
values["SIDSTARsel"][name] = nil
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
elseif values["SIDSTARsel"][name .. "TRANS"] == nil then
values["SIDSTARsel"][name .. "RWY"] = nil
if values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] == 1 then
values["SIDSTARsel"][name] = nil
end
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
elseif values["SIDSTARsel"]["stat"] == 0 then
values["SIDSTARsel"][name .. "TRANS"] = nil
if values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] <= 1 then
values["SIDSTARsel"][name .. "RWY"] = nil
if values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] == 1 then
values["SIDSTARsel"][name] = nil
end
end
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
values["SIDSTARsel"]["num"] = 0
else
values["SIDSTARsel"]["stat"] = 0
controls[page .. "select"] = 1
controls["SIDSTARview"] = 0
end
controls[clr] = 0
end
elseif controls["SCAN"] == 1 then
if mode == 0 then
controls[page .. "knobl"] = 0
if controls[page .. "knobs"] == -1 then
if values[typesname.."nearestnum"] > 0 then
nearestlist(types)
values[typesname.."nearestnum"] = values[typesname.."nearestnum"]- 1
if values[typesname.."nearestnum"] == 0 then values[typesname.."nearestnum"] = 1 end
waypoint[1] = values[typesname.."nearestlist"][values[typesname.."nearestnum"]]
if waypoint[1]["USR"] == 1 and subpage == 30 then subpage = 31 end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
waypoint["length"] = -1
else
sorttable(0)
waypoint = enterident(waypoint[1]["ident"], types, 0, 5, 0, waypoint[1]["lat"], waypoint[1]["lon"])
local num = waypoint["num"]
-- if num == nil then return end --workaround for empty tables
nextWPT(waypoint, types,-1)
if waypoint[1]["USR"] == 1 and subpage == 30 then subpage = 31 end
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
--if the new WPT is the same as the old one, we are at the beginning
if num == waypoint["num"] and (types == 0 or types == 1 or types == 2) then
nearestlist(types)
waypoint[1] = values[typesname.."nearestlist"][9]
if waypoint[1]["USR"] == 1 and subpage == 30 then subpage = 31 end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
values[typesname.."nearestnum"] = 9
waypoint["length"] = -1
end
end
controls[page .. "knobs"] = 0
elseif controls[page .. "knobs"] == 1 then
if values[typesname.."nearestnum"] > 0 then
nearestlist(types)
values[typesname.."nearestnum"] = values[typesname.."nearestnum"]+ 1
if values[typesname.."nearestnum"] == 10 then
values[typesname.."nearestnum"] = 0
waypoint["num"] = 1
sorttable(0)
nextWPT(waypoint, types,1)
if waypoint[1]["USR"] == 1 and subpage == 30 then subpage = 31 end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
else
waypoint[1] = values[typesname.."nearestlist"][values[typesname.."nearestnum"]]
if waypoint[1]["USR"] == 1 and subpage == 30 then subpage = 31 end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
waypoint["length"] = -1
end
else
sorttable(0)
waypoint = enterident(waypoint[1]["ident"], types, 0, 5, 0, waypoint[1]["lat"], waypoint[1]["lon"])
nextWPT(waypoint, types,1)
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
if waypoint[1]["USR"] == 1 and subpage == 30 then subpage = 31 end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
end
controls[page .. "knobs"] = 0

end
elseif mode == 1 then
controls[page .. "knobl"] = 0
if controls[page .. "knobs"] == -1 then
controls["rview"] = controls["rview"] - 1
if controls["rview"] < 1 then controls["rview"] = FPlan[0]["length"] end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
controls[page .. "knobs"] = 0
elseif controls[page .. "knobs"] == 1 then
controls["rview"] = controls["rview"] + 1
if controls["rview"] > FPlan[0]["length"] then controls["rview"] = 1 end
if subpage == 30 then APT3Comp = {}
--APT3Comp_Serializer = {}
elseif math.floor(subpage/10) == 3 then subpage = 31
elseif math.floor (subpage/10) == 4 then subpage = 40 end
controls[page .. "knobs"] = 0
end
end
end
--done with all controls


if subpage == 70 or subpage == 71 or subpage == 80 then
local name = "SID"
if subpage == 71 then
name = "STAR"
elseif subpage == 80 then
name = "APP"
end
if controls[CRSR] == 1 and controls[page .. "select"] > 0 then
values["MSGENT"] = 2
end
if subpage ~= 80 or values["SIDSTARsel"]["APPTRANS"] ~= nil then
if controls[page .. "select"] > controls["SIDSTARview"] + 3 then controls["SIDSTARview"] = controls[page .. "select"] - 3 end
else
if controls[page .. "select"] > controls["SIDSTARview"] + 4 then controls["SIDSTARview"] = controls[page .. "select"] - 4 end
end
if controls[page .. "select"] < controls["SIDSTARview"]+1 then controls["SIDSTARview"] = controls[page .. "select"]-1 end
if values["SIDSTARsel"][name] == nil then
if controls[page .. "select"] == 0 and controls[page .. "CRSRchar"] == 0 then
if mode == 1 then
controls[page .. "select"] = values["SIDSTAR"][name]["num"]
else
controls[page .. "CRSRchar"] = typeslength
end
elseif controls[page .. "select"] > values["SIDSTAR"][name]["num"] then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = 1
end
if controls["SIDSTARview"] > values["SIDSTAR"][name]["num"] - 4 then controls["SIDSTARview"] = values["SIDSTAR"][name]["num"] - 4 end
elseif values["SIDSTARsel"][name .. "RWY"] == nil then
if controls[page .. "select"] == 0 then
controls[page .. "select"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"]
elseif controls[page .. "select"] > values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] then
controls[page .. "select"] = 1
end
if controls["SIDSTARview"] > values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] - 4 then controls["SIDSTARview"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] - 4 end
elseif values["SIDSTARsel"][name .. "TRANS"] == nil then
if controls[page .. "select"] == 0 then
controls[page .. "select"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"]
elseif controls[page .. "select"] > values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] then
controls[page .. "select"] = 1
end
if controls["SIDSTARview"] > values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] - 4 then controls["SIDSTARview"] = values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] - 4 end
else
if controls[page .. "select"] == 0 then
controls[page .. "select"] = values["SIDSTARsel"]["num"] + 1
elseif controls[page .. "select"] > values["SIDSTARsel"]["num"] + 1 then
controls[page .. "select"] = 1
end
if controls[page .. "select"] < values["SIDSTARsel"]["num"] then
if controls["SIDSTARview"] > values["SIDSTARsel"]["num"] - 3 then controls["SIDSTARview"] = values["SIDSTARsel"]["num"] - 3 end
else
if controls["SIDSTARview"] > values["SIDSTARsel"]["num"] - 4 then controls["SIDSTARview"] = values["SIDSTARsel"]["num"] - 4 end
end
end
if controls["SIDSTARview"] < 0 then controls["SIDSTARview"] = 0 end
elseif controls[page .. "select"] == 9 then
if types == 1 then
controls[page .. "select"] = 4
elseif types == 2 then
controls[page .. "select"] = 3
else
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = typeslength
end
elseif controls[page .. "select"] == 12 then
if mode == 1 then
if types == 1 and waypoint[1]["magvar"] == "__" and waypoint[1]["lat"] ~= "_" and waypoint[1]["lon"] ~= "_" then
waypoint[1]["magvar"] = round(getmagvar(waypoint[1]["lat"], waypoint[1]["lat"]))
end
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = 0
else
controls[page .. "select"] = 3
controls[page .. "CRSRchar"] = 0
end
elseif controls[page .. "select"] == 2 and waypoint[1]["USR"] == 1 then
if mode == 1 then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = typeslength
else
controls[page .. "select"] = 11
controls[page .. "CRSRchar"] = 0
end
elseif controls[page .. "select"] == 2 and (types == 3 or types == 4) then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = typeslength
elseif controls[page .. "select"] == 4 and (types == 3 or types == 4) and waypoint[1]["USR"] == 0 then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = 0
elseif controls[page .. "select"] == 4 and subpage == 20 then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = 0
elseif controls[page .. "select"] == 4 and types == 2 and waypoint["length"] ~= 0 then
controls[page .. "select"] = 10
controls[page .. "CRSRchar"] = 0
elseif controls[page .. "select"] == 5 and types == 1 then
controls[page .. "select"] = 10
controls[page .. "CRSRchar"] = 0
elseif controls[page .. "select"] == 6 then
controls[page .. "select"] = 10
controls[page .. "CRSRchar"] = 0
elseif subpage == 50 and controls[page .. "select"] == 2 then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = typeslength
elseif subpage == 50 and controls[page .. "select"] == 6 then
controls[page .. "select"] = 0
controls[page .. "CRSRchar"] = 0
end

if mode == 1 and controls[page .. "select"] == 0 then
controls[page .. "select"] = 1
controls[page .. "CRSRchar"] = 0
end

if controls[page .. "select"] == 0 and controls[CRSR] == 1 then
if controls["SCAN"] == 0 then
bline[1] = bline[1] .. " " .. highlightchar(waypoint[1]["ident"], controls[page .. "CRSRchar"])
else
bline[1] = bline[1] .. " " .. makelength(string.gsub(string.sub(waypoint[1]["ident"], controls[page .. "CRSRchar"], typeslength),  " ", "#"), typeslength, 1)

end
elseif controls[page .. "select"] == 2 and subpage ~= 70 and subpage ~= 71 and subpage ~= 80 then
if controls["SCAN"] == 0 then
bline[2] = bline[2] .. highlightchar(waypoint[1]["name1"], controls[page .. "CRSRchar"])

else
-- we do this if we scan!
bline[2] = bline[2] .. makelength(string.gsub(string.sub(waypoint[1]["name1"], controls[page .. "CRSRchar"], 11),  " ", "#"), 11, 1)
end
end

--SID/STAR
if types == 0 then
if values["SIDSTAR"]["ident"] ~= waypoint[1]["ident"] then
values["SIDSTAR"] = {}
values["SIDSTAR"]["ident"] = waypoint[1]["ident"]
values["SIDSTAR"]["SID"] = {}
values["SIDSTAR"]["SID"]["num"] = 0
values["SIDSTAR"]["STAR"] = {}
values["SIDSTAR"]["STAR"]["num"] = 0
values["SIDSTAR"]["APP"] = {}
values["SIDSTAR"]["APP"]["num"] = 0
values["SIDSTAR"]["maxap"] = 0

if waypoint[1]["ident"] ~= nil then
local filename = cifp_path .. string.sub(waypoint[1]["ident"], 1, 4) .. ".dat"


local file = io.open(filename, "r")
if file and RWYtable[waypoint[1]["ident"]] then
while true do

local line = file:read("*line")
if line == nil then break end

local fields = {}
for w in line:gmatch("([^,]+)") do fields[#fields + 1] = w end
local name
name, fields[1] = fields[1]:match("(%w+):(.+)")
if name == "RWY" then break
elseif name == "APPCH" then name = "APP"
end

local SIDident = fields[3]
local TRANSident = fields[4]

if name == "SID" or name == "STAR" then
local RWY = fields[4]
local WPTs = {}
WPTs["ident"] = fields[5]
local flyo = 0

if fields[9]:sub(2,2) == "E" then flyo = 1 end
WPTs["flyo"] = flyo
if WPTs["ident"] ~= " " then

if SIDident ~= values["SIDSTAR"][name][values["SIDSTAR"][name]["num"]] then
--we generate a new SIDname
values["SIDSTAR"][name]["num"] = values["SIDSTAR"][name]["num"] + 1
values["SIDSTAR"][name][values["SIDSTAR"][name]["num"]] = SIDident
values["SIDSTAR"][name][SIDident] = {}
values["SIDSTAR"][name][SIDident]["RWY"] = {}
values["SIDSTAR"][name][SIDident]["RWY"]["num"] = 0
values["SIDSTAR"][name][SIDident]["TRANS"] = {}
values["SIDSTAR"][name][SIDident]["TRANS"]["num"] = 0
end

if RWY:sub(1,2) == "RW" or RWY == "ALL" then
if RWY ~= values["SIDSTAR"][name][SIDident]["RWY"][values["SIDSTAR"][name][SIDident]["RWY"]["num"]] then
--we generate a new runway
values["SIDSTAR"][name][SIDident]["RWY"]["num"] = values["SIDSTAR"][name][SIDident]["RWY"]["num"] + 1
values["SIDSTAR"][name][SIDident]["RWY"][values["SIDSTAR"][name][SIDident]["RWY"]["num"]] = RWY
values["SIDSTAR"][name][SIDident]["RWY"][RWY] = {}
values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] = 0
end

--  print(SIDident, RWY, values["SIDSTAR"]["SID"][SIDident]["RWY"][values["SIDSTAR"]["SID"][SIDident]["RWY"]["num"]], values["SIDSTAR"]["SID"][SIDident]["RWY"]["num"])
if values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] == 0 then
local num = values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] + 1
values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] = num
values["SIDSTAR"][name][SIDident]["RWY"][RWY][num] = WPTs
elseif WPTs["ident"] ~= values["SIDSTAR"][name][SIDident]["RWY"][RWY][values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"]]["ident"] then
local num = values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] + 1
values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] = num
values["SIDSTAR"][name][SIDident]["RWY"][RWY][num] = WPTs
end
else
if values["SIDSTAR"][name][SIDident] then
if TRANSident ~= values["SIDSTAR"][name][SIDident]["TRANS"][values["SIDSTAR"][name][SIDident]["TRANS"]["num"]] then
--we generate a new transition
values["SIDSTAR"][name][SIDident]["TRANS"]["num"] = values["SIDSTAR"][name][SIDident]["TRANS"]["num"] + 1
values["SIDSTAR"][name][SIDident]["TRANS"][values["SIDSTAR"][name][SIDident]["TRANS"]["num"]] = TRANSident
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident] = {}
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] = 0
end

if values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] == 0 then
local num1 = values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] + 1
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] = num1
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident][num1] = WPTs
elseif WPTs["ident"] ~= values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident][values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"]]["ident"] then
local num = values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] + 1
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] = num
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident][num] = WPTs
end
end
end
end

elseif name == "APP" then
local RWY = "RW" .. fields[3]:sub(2,4):gsub("-", "")
if tonumber(RWY:sub(3,4)) == nil then RWY = "RWCTL" end
if fields[2] == "I" then
values["SIDSTAR"]["maxap"] = 2
elseif values["SIDSTAR"]["maxap"] == 0 then
values["SIDSTAR"]["maxap"] = 1
end

local WPTs = {}
WPTs["ident"] = fields[5]
local flyo = 0

WPTs["flyo"] = flyo

if WPTs["ident"]:sub(1,2) == "RW" then
if fields[9]:sub(1,1) == "G" then flyo = 1 end
local rwid = makelength(WPTs["ident"]:sub(3), 3, 0)
local lat, lon

for k,v in pairs(RWYtable[waypoint[1]["ident"]]) do

if v["number1"] == rwid then
lat = v["lat"]
lon = v["lon"]
elseif v["number2"] == rwid then
lat = v["lat2"]
lon = v["lon2"]
end
end
WPTs["lat"] = lat

WPTs["lon"] = lon

end
WPTs["flyo"] = flyo
--print(SIDident, values["SIDSTAR"][name][values["SIDSTAR"][name]["num"]])
if SIDident ~= values["SIDSTAR"][name][values["SIDSTAR"][name]["num"]] then
--we generate a new SIDname
values["SIDSTAR"][name]["num"] = values["SIDSTAR"][name]["num"] + 1
values["SIDSTAR"][name][values["SIDSTAR"][name]["num"]] = SIDident
values["SIDSTAR"][name][SIDident] = {}
values["SIDSTAR"][name][SIDident]["RWY"] = {}
values["SIDSTAR"][name][SIDident]["RWY"]["num"] = 0
values["SIDSTAR"][name][SIDident]["TRANS"] = {}
values["SIDSTAR"][name][SIDident]["TRANS"]["num"] = 0
end
if fields[2] ~= "A" then
if RWY ~= values["SIDSTAR"][name][SIDident]["RWY"][values["SIDSTAR"][name][SIDident]["RWY"]["num"]] then
--we generate a new runway
values["SIDSTAR"][name][SIDident]["RWY"]["num"] = values["SIDSTAR"][name][SIDident]["RWY"]["num"] + 1
values["SIDSTAR"][name][SIDident]["RWY"][values["SIDSTAR"][name][SIDident]["RWY"]["num"]] = RWY
values["SIDSTAR"][name][SIDident]["RWY"][RWY] = {}
values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] = 0
end

--  print(SIDident, RWY, values["SIDSTAR"]["SID"][SIDident]["RWY"][values["SIDSTAR"]["SID"][SIDident]["RWY"]["num"]], values["SIDSTAR"]["SID"][SIDident]["RWY"]["num"])
if values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] == 0 then
local num = values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] + 1
values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] = num
values["SIDSTAR"][name][SIDident]["RWY"][RWY][num] = WPTs
elseif WPTs["ident"] ~= values["SIDSTAR"][name][SIDident]["RWY"][RWY][values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"]]["ident"] then
local num = values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] + 1
values["SIDSTAR"][name][SIDident]["RWY"][RWY]["num"] = num
values["SIDSTAR"][name][SIDident]["RWY"][RWY][num] = WPTs
end
else
if values["SIDSTAR"][name][SIDident] then
if TRANSident ~= values["SIDSTAR"][name][SIDident]["TRANS"][values["SIDSTAR"][name][SIDident]["TRANS"]["num"]] then
--we generate a new transition
values["SIDSTAR"][name][SIDident]["TRANS"]["num"] = values["SIDSTAR"][name][SIDident]["TRANS"]["num"] + 1
values["SIDSTAR"][name][SIDident]["TRANS"][values["SIDSTAR"][name][SIDident]["TRANS"]["num"]] = TRANSident
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident] = {}
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] = 0
end

if values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] == 0 then
local num1 = values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] + 1
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] = num1
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident][num1] = WPTs
elseif WPTs["ident"] ~= values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident][values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"]]["ident"] then
local num = values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] + 1
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident]["num"] = num
values["SIDSTAR"][name][SIDident]["TRANS"][TRANSident][num] = WPTs
end
end
end

end


end
--tprint(values["SIDSTAR"]["SID"])
file:close()
end
end
end
end
--gline[1]=gline[1] .. values[typesname.."page"][1]["numi"]
if waypoint["length"] == 0 then
if  controls[page .. "select"] == 2 then
gline[1] =gline[1] .. "----"
gline[2] =gline[2] .. waypoint[1]["name1"]
else
if waypoint[1]["ident"] == nil then waypoint[1]["ident"] = "----" end
gline[1] = gline[1] .. " " .. waypoint[1]["ident"]
gline[3] = gline[3] .. "CREATE NEW"
gline[4] = gline[4] .. "WPT AT:"
gline[5] = gline[5] .. "USER POS?"
gline[6] = gline[6] .. "PRES POS?"
subpage = 10
--print(controls[page .. "select"])
--print(subpage)
if controls[page .. "select"] == 3 then
if values["flash"] == 1 then
bline[5] = bline[5] .. "USER#POS?"
end
values["MSGENT"] = 2
elseif controls[page .. "select"] == 4 then
if values["flash"] == 1 then
bline[6] = bline[6] .. "PRES#POS?"
end
values["MSGENT"] = 2
end
end
else
--normal display

if mode == 0 or mode == 2 then
if values["activeWPT"]["length"] >= 2 then
if  waypoint[1]["types"] == values["activeWPT"][2]["types"] and waypoint[1]["ident"] == values["activeWPT"][2]["ident"] and waypoint[1]["lat"] == values["activeWPT"][2]["lat"] then
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. " " .. waypoint[1]["ident"]
else
gline[1] = gline[1] .. "=" .. waypoint[1]["ident"]
end
else
gline[1] = gline[1] .. " " .. waypoint[1]["ident"]
end
else
gline[1] = gline[1] .. " " .. waypoint[1]["ident"]
end
elseif mode == 1 then
if controls["rview"] == 0 then
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. " "
else
gline[1] = gline[1] .. "="
end
else
if  FPlan[0][controls["rview"]]["types"] == values["activeWPT"][2]["types"] and FPlan[0][controls["rview"]]["ident"] == values["activeWPT"][2]["ident"] and FPlan[0][controls["rview"]]["lat"] == values["activeWPT"][2]["lat"] then
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. " "
else
gline[1] = gline[1] .. "="
end
else
gline[1] = gline[1] .. " "
end

end
local typename = "A"
if types == 1 then
typename = "V"
elseif types == 2 then
typename = "N"
elseif types == 3 then
typename = "I"
elseif types == 4 then
typename = "S"
elseif types == 5 then
typename = "T"
end
local xyz = controls["rview"]
if xyz == 0 then xyz = " " end
gline[1] =gline[1] .. makelength(xyz, 2, 1)  .. " " .. waypoint[1]["ident"] .. " " .. typename
end
if ((types == 0 and subpage == 10) or (types == 0 and subpage == 20)) or types == 1 or types == 2 then
if waypoint[1]["USR"] == 0 then
gline[2] =gline[2] .. waypoint[1]["name1"]
end
end
end


if waypoint["length"] == -1 and values["flash"] == 1 then
gline[1] = gline[1] .. " nr " .. values[typesname .. "nearestnum"]
end

--we update the nearestlist
--if the CRSR is on 1, we stay at the same position, else we move the WPT
if  values["CALC3timer"] > 3 and waypoint["length"] == -1 then
local test = waypoint[1]
nearestlist(types)
waypoint[1] = values[typesname.."nearestlist"][values[typesname.."nearestnum"]]

if controls[page .. "select"] ~= 1 or  subpage >= 70 then
if test["ident"] ~= waypoint[1]["ident"] then
values[typesname.."nearestnum"] = 0
while test["ident"] ~= waypoint[1]["ident"] do
values[typesname.."nearestnum"] = values[typesname.."nearestnum"] + 1
if values[typesname.."nearestnum"] == 10 then
values[typesname.."nearestnum"] = 0
sorttable(0)
waypoint = enterident(test["ident"], types, 0, 5, 0, test["lat"], test["lon"])
break end
waypoint[1] = values[typesname.."nearestlist"][values[typesname.."nearestnum"]]
end
end

end
end


if controls[page .. "select"] == 1 and waypoint["length"] == -1 and subpage < 70 then
bline[1] = bline[1] .. "       nr#" .. values[typesname .. "nearestnum"]
end
if waypoint[1]["USR"] == 1 and subpage == 10 then

if controls[page .. "select"] == 10 then
gline[5] = gline[5] .. values[page .. "gstring"]
bline[5] = bline[5] .. values[page .. "bstring"]
else
gline[5] = gline[5] .. convertLatLon(waypoint[1]["lat"], 0)
end
if controls[page .. "select"] == 11 then
gline[6] = gline[6] .. values[page .. "gstring"]
bline[6] = bline[6] .. values[page .. "bstring"]
else
gline[6] = gline[6] .. convertLatLon(waypoint[1]["lon"], 1)
end
end
if mode == 0 then
values[typesname.."page"] = waypoint
end

if types == 0 then
--custom handler here:
if subpage == 20 and waypoint[1]["USR"] == 1 then
if controls[page .. "knobs"] == 1 then
subpage = 31
controls[page .. "knobs"] = 0
end
elseif subpage >= 30 and subpage < 40 then
if controls[page .. "knobs"] == -1 then
if subpage == 30 then
subpage = subpage - 10
else
if waypoint[1]["USR"] == 1 then
subpage = 20
else
subpage = subpage - 1
end
end
controls[page .. "knobs"] = 0
elseif controls[page .. "knobs"] == 1 then
if waypoint[1]["RWYs"] > (subpage-30)*2 then
subpage = subpage + 1
else
subpage = 40
end
controls[page .. "knobs"] = 0
end
elseif subpage >= 40 and subpage < 50 then
if controls[page .. "knobs"] == -1 then
if subpage == 40 then
if waypoint[1]["USR"] == 1 then
subpage = 31
else
subpage = 30 + math.ceil(waypoint[1]["RWYs"]/2)
end
else
subpage = subpage - 1
end
controls[page .. "knobs"] = 0
elseif controls[page .. "knobs"] == 1 then
if waypoint[1]["freqlen"] > (subpage-39)*5 then
subpage = subpage + 1
else
subpage = 50
end
controls[page .. "knobs"] = 0
end
elseif subpage == 50 then
if controls[page .. "knobs"] == -1 then
subpage = 39 + math.ceil(waypoint[1]["freqlen"]/5)
if subpage == 39 then subpage = 40 end
controls[page .. "knobs"] = 0
end
elseif subpage == 70 then
if controls[page .. "knobs"] == 1 then
if values["SIDSTAR"]["STAR"]["num"] == 0 then
subpage = 80
else
subpage = 71
end
controls[page .. "knobs"] = 0
end
elseif subpage == 71 then
if controls[page .. "knobs"] == -1 then
subpage = 70
controls[page .. "knobs"] = 0
elseif controls[page .. "knobs"] == 1 then
subpage = 80
controls[page .. "knobs"] = 0
end
elseif subpage == 80 then
if controls[page .. "knobs"] == -1 then
subpage = 71
controls[page .. "knobs"] = 0
end
end
if subpage == 10 then

--here we create the page
if waypoint["length"] > 0 then
if waypoint[1]["USR"] == 0 then
gline[3] = gline[3] .. waypoint[1]["name2"]
gline[4] = gline[4] --.. waypoint[1]["name2"]
gline[5] = gline[5] .. convertLatLon(waypoint[1]["lat"], 0)
gline[6] = gline[6] .. convertLatLon(waypoint[1]["lon"], 1)
end
--nearestlist
elseif  waypoint["length"] == -1 then

if waypoint[1]["USR"] == 1 then --fix to usr airports not shown correctly in nearest list and nil errors
gline[2] = gline[2] .. "USER APT"
gline[4] = string.format("%s %s' %s", gline[4],   waypoint[1]["LRWY"], waypoint[1]["surface"])
gline[5] = string.format("%s     %03d*to",  string.sub(gline[5], 0, 12), course(values["GPSlat"], values["GPSlon"], waypoint[1]["lat"], waypoint[1]["lon"]))
gline[6] = string.format("%s     %snm", string.sub(gline[6], 0, 12),dynaround(distance(waypoint[1]["lat"], waypoint[1]["lon"], values["GPSlat"], values["GPSlon"]), 4))
else
gline[4] = string.format("%s %s' %s", gline[4], makelength(RWYtable[waypoint[1]["ident"]][1]["length"], 5, 1), RWYtable[waypoint[1]["ident"]][1]["surf"])
gline[5] = string.format("%s%s    %03d*to", gline[5], RWYtable[waypoint[1]["ident"]][1]["light"], course(values["GPSlat"], values["GPSlon"], waypoint[1]["lat"], waypoint[1]["lon"]))
gline[6] = string.format("%s     %snm", gline[6],dynaround(distance(waypoint[1]["lat"], waypoint[1]["lon"], values["GPSlat"], values["GPSlon"]), 4))
end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT 1"
else
gline[7] = gline[7] .. "APT 1"
end
elseif subpage == 20 then
if waypoint["length"] ~= 0 then
if waypoint[1]["USR"] == 0 then
gline[3] = gline[3] .. string.sub(waypoint[1]["name2"], 1, 11)
gline[4] = gline[4] .. "ELV" .. makelength(waypoint[1]["elev"], 6, 1) .. "ft"
local offset = string.format("%03d", math.floor((waypoint[1]["lon"]+7.5)/15))
if string.sub(offset, 1, 1) == "0" then offset = replaceChar(offset, 1,"+") end
gline[5] = gline[5] .. "Z" .. offset
if values["SIDSTAR"]["maxap"] == 2 then
gline[6] = gline[6] .. "ILS"
elseif values["SIDSTAR"]["maxap"] == 1 then
gline[6] = gline[6] .. "NP APR"
else
gline[6] = gline[6] .. "NO APR"
end
else
if controls[page .. "select"] == 3 then
gline[4] = gline[4] .. "ELV " .. values[page .. "gstring"] .. "ft"
bline[4] = bline[4] .. "    " .. values[page .. "bstring"]
else
gline[4] = gline[4] .. "ELV " .. waypoint[1]["elev"] .. "ft"
end
end
end

if mode == 1 then
gline[7] = gline[7] .. "ACT 2"
else
gline[7] = gline[7] .. "APT 2"
end
elseif subpage == 30 then
gline[1] = string.sub(gline[1], 1, 12)
if # APT3Comp == 0 then
--we first calulate the range
local RWYnum = 1
--  local PXnm = 75 / ((RWYtable[waypoint[1]["ident"]][1]["length"]*0.000164578834)+waypoint[1]["RWYs"]-0.5)
local PXnm = 0

while RWYnum <= waypoint[1]["RWYs"] do
if RWYtable[waypoint[1]["ident"]][RWYnum]["lat2"] then
local dist1 = distance(waypoint[1]["lat"], waypoint[1]["lon"], RWYtable[waypoint[1]["ident"]][RWYnum]["lat"], RWYtable[waypoint[1]["ident"]][RWYnum]["lon"])
if dist1 > PXnm then PXnm = dist1 end
dist1 = distance(waypoint[1]["lat"], waypoint[1]["lon"], RWYtable[waypoint[1]["ident"]][RWYnum]["lat2"], RWYtable[waypoint[1]["ident"]][RWYnum]["lon2"])
if dist1 > PXnm then PXnm = dist1 end
end
RWYnum = RWYnum + 1
--end
end
--print(PXnm*2)
PXnm = 70 / (PXnm*2.3)

RWYnum = 1

while RWYnum <= waypoint[1]["RWYs"] do
--workaround for EDDF
if RWYtable[waypoint[1]["ident"]][RWYnum]["lat2"] then
local dist1 = distance(waypoint[1]["lat"], waypoint[1]["lon"], RWYtable[waypoint[1]["ident"]][RWYnum]["lat"], RWYtable[waypoint[1]["ident"]][RWYnum]["lon"])*PXnm
local CRS1 = course(waypoint[1]["lat"], waypoint[1]["lon"], RWYtable[waypoint[1]["ident"]][RWYnum]["lat"], RWYtable[waypoint[1]["ident"]][RWYnum]["lon"])
local y1 = 61 + cos((CRS1)*pi/180) * dist1
local x1 = 156.5 + cos((CRS1-90)*pi/180) * dist1
dist1 = distance(waypoint[1]["lat"], waypoint[1]["lon"], RWYtable[waypoint[1]["ident"]][RWYnum]["lat2"], RWYtable[waypoint[1]["ident"]][RWYnum]["lon2"])*PXnm
CRS1 = course(waypoint[1]["lat"], waypoint[1]["lon"], RWYtable[waypoint[1]["ident"]][RWYnum]["lat2"], RWYtable[waypoint[1]["ident"]][RWYnum]["lon2"])

local y2 = 61 + cos((CRS1)*pi/180) * dist1
local x2 = 156.5 + cos((CRS1-90)*pi/180) * dist1
local size = {105, 28, 103, 66}
local cx = size[1] + (size[3]/2)
local cy = size[2] + (size[4]/2)

drawline(APT3Comp, x1, y1, x2, y2, size)
--table.insert ( APT3Comp_Serializer, WrapLine(x1, y1, x2, y2, size))
string2tex(APT3Comp, makelength(RWYtable[waypoint[1]["ident"]][RWYnum]["number1"], 5, 0), x1, y1, size)
--table.insert ( APT3Comp_Serializer, WrapString2tex( makelength(RWYtable[waypoint[1]["ident"]][RWYnum]["number1"], 5, 0),  x1,  y1, size ) )
string2tex(APT3Comp, makelength(RWYtable[waypoint[1]["ident"]][RWYnum]["number2"], 5, 0), x2, y2, size)
--table.insert ( APT3Comp_Serializer, WrapString2tex( makelength(RWYtable[waypoint[1]["ident"]][RWYnum]["number2"], 5, 0),  x2,  y2, size ) )
else
values["statusmessage"] = "RWY#MISSING"
values["statustimer"] = 5
end
--end

RWYnum = RWYnum + 1
--end
end
end



if mode == 1 then
gline[7] = gline[7] .. "ACT+3"
else
gline[7] = gline[7] .. "APT+3"
end
elseif subpage > 30 and subpage < 40 then
if waypoint["length"] ~= 0 then
if waypoint[1]["USR"] == 0 then

gline[3] = gline[3] .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2-1]["number1"] .. "/" .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2-1]["number2"] .. "  " .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2-1]["light"]
gline[4] = gline[4] .. makelength(RWYtable[waypoint[1]["ident"]][(subpage-30)*2-1]["length"], 6, 1) .. "' " .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2-1]["surf"]
if waypoint[1]["RWYs"] >= (subpage-30)*2 then
gline[5] = gline[5] .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2]["number1"] .. "/" .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2]["number2"] .. "  " .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2]["light"]
gline[6] = gline[6] .. makelength(RWYtable[waypoint[1]["ident"]][(subpage-30)*2]["length"], 6, 1) .. "' " .. RWYtable[waypoint[1]["ident"]][(subpage-30)*2]["surf"]
end
else
gline[3] = gline[3] .. "RWY LEN"
if controls[page .. "select"] == 3 then
gline[4] = gline[4] .. " " .. values[page .. "gstring"] .. "' " .. waypoint[1]["surface"]
bline[4] = bline[4] .. " " .. values[page .. "bstring"]
else
if controls[page .. "select"] == 4 then
bline[4] = bline[4] .. "        " .. waypoint[1]["surface"]
end
gline[4] = gline[4] .. " " .. waypoint[1]["LRWY"] .. "' " .. waypoint[1]["surface"]
end
end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT+3"
else
gline[7] = gline[7] .. "APT+3"
end

elseif subpage >= 40 and subpage < 50 then
if values["APTpage"]["length"] ~= 0 then
if waypoint[1]["freqlen"] >= (subpage-39)*5-4 then
gline[2] = gline[2] ..waypoint[1]["freqlist"][(subpage-39)*5-4]
if waypoint[1]["freqlen"] >= (subpage-39)*5-3 then
gline[3] = gline[3] ..waypoint[1]["freqlist"][(subpage-39)*5-3]
if waypoint[1]["freqlen"] >= (subpage-39)*5-2 then
gline[4] = gline[4] ..waypoint[1]["freqlist"][(subpage-39)*5-2]
if waypoint[1]["freqlen"] >= (subpage-39)*5-1 then
gline[5] = gline[5] ..waypoint[1]["freqlist"][(subpage-39)*5-1]
if waypoint[1]["freqlen"] >= (subpage-39)*5 then
gline[6] = gline[6] ..waypoint[1]["freqlist"][(subpage-39)*5]
end
end
end
end
else
gline[3] = gline[3] .. " COMM FREQ"
gline[4] = gline[4] .. " DATA NOT"
gline[5] = gline[5] .. " AVAILABLE"
end


if waypoint[1]["freqlen"] > 5 then
if mode == 1 then
gline[7] = gline[7] .. "ACT+4"
else
gline[7] = gline[7] .. "APT+4"
end
else
if mode == 1 then
gline[7] = gline[7] .. "ACT 4"
else
gline[7] = gline[7] .. "APT 4"
end
end
else
if mode == 1 then
gline[7] = gline[7] .. "ACT 4"
else
gline[7] = gline[7] .. "APT 4"
end
end
elseif subpage == 50 then
if values["APTpage"]["length"] ~= 0 then
gline[2] = gline[2] .. "REMARKS:"
if RMKtable[waypoint[1]["ident"]] then

if controls[page .. "select"] == 3 then
gline[3] = gline[3] .. values[page .. "gstring"]
bline[3] = bline[3] .. values[page .. "bstring"]
else
gline[3] = gline[3] .. RMKtable[waypoint[1]["ident"]][1]
end
if controls[page .. "select"] == 4 then
gline[4] = gline[4] .. values[page .. "gstring"]
bline[4] = bline[4] .. values[page .. "bstring"]
else
gline[4] = gline[4] .. RMKtable[waypoint[1]["ident"]][2]
end
if controls[page .. "select"] == 5 then
gline[5] = gline[5] .. values[page .. "gstring"]
bline[5] = bline[5] .. values[page .. "bstring"]
else
gline[5] = gline[5] .. RMKtable[waypoint[1]["ident"]][3]
end
end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT 5"
else
gline[7] = gline[7] .. "APT 5"
end
elseif subpage == 60 then
if values["APTpage"]["length"] ~= 0 then
gline[3] = gline[3] .. "NO FUEL"
gline[5] = gline[5] .. "NO OXYGEN"
gline[6] = gline[6] .. "NO FEE INFO"
end
if mode == 1 then
gline[7] = gline[7] .. "ACT 6"
else
gline[7] = gline[7] .. "APT 6"
end
elseif subpage == 70 or subpage == 71 then
if values["APTpage"]["length"] ~= 0 then
if values["SIDSTAR"]["SID"]["num"] == 0 then
subpage = 71
end
if values["SIDSTAR"]["STAR"]["num"] == 0 then
subpage = 70
end
local name = "SID"
if subpage == 71 then
name = "STAR"
end

if values["SIDSTAR"]["SID"]["num"] == 0 and subpage == 70 then
gline[2] = gline[2] .. "NO SID/STAR"
gline[3] = gline[3] .. "FOR THIS"
gline[4] = gline[4] .. "AIRPORT"
gline[5] = gline[5] .. "IN DATABASE"
else
-- values["SIDSTARsel"]["SID"] = "PORTE3"
-- values["SIDSTARsel"]["RWY"] = "01L"
if values["SIDSTARsel"][name] == nil then
if subpage == 70 then
gline[2] = gline[2] .. "SELECT SID"
else
gline[2] = gline[2] .. "SELECT STAR"
end

local line = 3
while line <= 5 do
if controls["SIDSTARview"]+line-2 <=  values["SIDSTAR"][name]["num"] then
gline[line] = gline[line] .. makelength(controls["SIDSTARview"]+line-2, 2, 1) .. " " .. makelength(values["SIDSTAR"][name][controls["SIDSTARview"]+line-2], 8, 0)
if controls["rselect"] == controls["SIDSTARview"]+line-2 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. string.gsub(string.sub(gline[line], 13, 23), " ", "#")
end
end
line = line + 1
end
if controls["SIDSTARview"]+4 <= values["SIDSTAR"][name]["num"] then
gline[6] = gline[6] .. makelength(values["SIDSTAR"][name]["num"], 2, 1) .. " " .. makelength(values["SIDSTAR"][name][values["SIDSTAR"][name]["num"]], 8, 0)
if controls["rselect"] == controls["SIDSTARview"]+4 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[6] = bline[6] .. string.gsub(string.sub(gline[6], 13, 23), " ", "#")
end
end
elseif values["SIDSTARsel"][name .. "RWY"] == nil then
if subpage == 70 then
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["SID"] .. "-SID"
else
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["STAR"] .. "-xyz"
end
gline[2] = gline[2] .. "RUNWAY"
local line = 3
while line <= 5 do
if controls["SIDSTARview"]+line-2 <=  values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] then
gline[line] = gline[line] .. makelength(controls["SIDSTARview"]+line-2, 2, 1) .. " " .. makelength(values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][controls["SIDSTARview"]+line-2], 5, 0)
if controls["rselect"] == controls["SIDSTARview"]+line-2 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. string.gsub(string.sub(gline[line], 13, 23), " ", "#")
end
end
line = line + 1
end
if controls["SIDSTARview"]+4 <= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"] then
gline[6] = gline[6] .. makelength(values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"], 2, 1) .. " " .. makelength(values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"][values["SIDSTAR"][name][values["SIDSTARsel"][name]]["RWY"]["num"]], 5, 0)
if controls["rselect"] == controls["SIDSTARview"]+4 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[6] = bline[6] .. string.gsub(string.sub(gline[6], 13, 23), " ", "#")
end
end
elseif values["SIDSTARsel"][name .. "TRANS"] == nil then
if subpage == 70 then
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["SID"] .. "-SID"
else
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["STAR"] .. "-xyz"
end
gline[2] = gline[2] .. "TRANSITION"
local line = 3
while line <= 5 do
if controls["SIDSTARview"]+line-2 <=  values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] then
gline[line] = gline[line] .. makelength(controls["SIDSTARview"]+line-2, 2, 1) .. " " .. makelength(values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][controls["SIDSTARview"]+line-2], 5, 0)
if controls["rselect"] == controls["SIDSTARview"]+line-2 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. string.gsub(string.sub(gline[line], 13, 23), " ", "#")
end
end
line = line + 1
end
if controls["SIDSTARview"]+4 <= values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"] then
gline[6] = gline[6] .. makelength(values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"], 2, 1) .. " " .. makelength(values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"][values["SIDSTAR"][name][values["SIDSTARsel"][name]]["TRANS"]["num"]], 5, 0)
if controls["rselect"] == controls["SIDSTARview"]+4 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[6] = bline[6] .. string.gsub(string.sub(gline[6], 13, 23), " ", "#")
end
end
elseif values["SIDSTARsel"]["stat"] == 0 then
if subpage == 70 then
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["SID"] .. "-SID"
else
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["STAR"] .. "-xyz"
end
local line = 2
while line <= 4 do
if controls["SIDSTARview"]+line-1 <=  values["SIDSTARsel"]["num"] then
gline[line] = gline[line] .. makelength(controls["SIDSTARview"]+line-1, 2, 1) .. " " .. makelength(values["SIDSTARsel"][controls["SIDSTARview"]+line-1]["ident"], 8, 0)
if controls["rselect"] == controls["SIDSTARview"]+line-1 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. string.gsub(string.sub(gline[line], -11), " ", "#")
end
end
line = line + 1
end
if controls["SIDSTARview"]+4 <= values["SIDSTARsel"]["num"] then
gline[5] = gline[5] .. makelength(values["SIDSTARsel"]["num"], 2, 1) .. " " ..  makelength(values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["ident"], 8, 0)
if controls["rselect"] == controls["SIDSTARview"]+4 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[5] = bline[5] .. string.gsub(string.sub(gline[5], 13, 23), " ", "#")
end
end
gline[6] = gline[6] .. "LOAD IN FPL"
if controls["rselect"] == values["SIDSTARsel"]["num"] + 1 and values["flash"] == 1 and controls[CRSR] == 1 then
bline[6] = bline[6] .. "LOAD#IN#FPL"
end
elseif values["SIDSTARsel"]["stat"] == 2 then
if subpage == 70 then
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["SID"] .. "-SID"
gline[5] = gline[5] .. "SID"
else
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["STAR"] .. "-xyz"
gline[5] = gline[5] .. "STAR"
end

gline[2] = gline[2] .. "PRESS ENT"
gline[3] = gline[3] .. "TO REPLACE"
gline[4] = gline[4] .. "EXISTING"
gline[6] = gline[6] .. "  APPROVE?"
if values["flash"] == 1 then
bline[6] = bline[6] .. "##APPROVE?#"
end

elseif values["SIDSTARsel"]["stat"] == 3 then
if subpage == 70 then
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["SID"] .. "-SID"
gline[4] = gline[4] .. "AND SID TO"
else
gline[1] = string.sub(gline[1], 1, 12) .. values["SIDSTARsel"]["STAR"] .. "-xyz"
gline[4] = gline[4] .. "AND STAR TO"
end

gline[2] = gline[2] .. "PRESS ENT"
gline[3] = gline[3] .. "TO ADD " .. waypoint[1]["ident"]
gline[5] = gline[5] .. "FPL 0"
gline[6] = gline[6] .. "  APPROVE?"
if values["flash"] == 1 then
bline[6] = bline[6] .. "##APPROVE?#"
end

--gline[6] = gline[6] .. controls["rselect"] .. " " .. controls["SIDSTARview"]

end
end
end
if subpage == 70 then
if mode == 1 then
if values["SIDSTAR"]["STAR"]["num"] == 0 then
gline[7] = gline[7] .. "ACT 7"
else
gline[7] = gline[7] .. "ACT+7"
end
else
if values["SIDSTAR"]["STAR"]["num"] == 0 then
gline[7] = gline[7] .. "APT 7"
else
gline[7] = gline[7] .. "APT+7"
end
end
else
if mode == 1 then
if values["SIDSTAR"]["SID"]["num"] == 0 then
gline[7] = gline[7] .. "ACT 7"
else
gline[7] = gline[7] .. "ACT+7"
end
else
if values["SIDSTAR"]["SID"]["num"] == 0 then
gline[7] = gline[7] .. "APT 7"
else
gline[7] = gline[7] .. "APT+7"
end
end
end

elseif subpage == 80 then
if values["APTpage"]["length"] ~= 0 then
if values["SIDSTAR"]["APP"]["num"] == 0 then
gline[2] = gline[2] .. "NO APPROACH"
gline[3] = gline[3] .. "FOR THIS"
gline[4] = gline[4] .. "AIRPORT"
gline[5] = gline[5] .. "IN DATABASE"
else
if values["SIDSTARsel"]["APP"] == nil then
if mode ~= 1 and waypoint["length"] > 0 then
gline[1] = gline[1] .. "IAP"
end
local line = 2
while line <= 5 do
if controls["SIDSTARview"]+line-1 <=  values["SIDSTAR"]["APP"]["num"] then
gline[line] = gline[line] .. makelength(controls["SIDSTARview"]+line-1, 2, 1) .. " " .. makelength(appname(values["SIDSTAR"]["APP"][controls["SIDSTARview"]+line-1], values["SIDSTAR"]["APP"][values["SIDSTAR"]["APP"][controls["SIDSTARview"]+line-1]]["RWY"][1], 0), 8, 0)
if controls["rselect"] == controls["SIDSTARview"]+line-1 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. string.gsub(string.sub(gline[line], -11), " ", "#")
end
end
line = line + 1
end
if controls["SIDSTARview"]+5 <= values["SIDSTAR"]["APP"]["num"] then
gline[6] = gline[6] .. makelength(values["SIDSTAR"]["APP"]["num"], 2, 1) .. " " .. makelength(appname(values["SIDSTAR"]["APP"][values["SIDSTAR"]["APP"]["num"]], values["SIDSTAR"]["APP"][values["SIDSTAR"]["APP"][values["SIDSTAR"]["APP"]["num"]]]["RWY"][1], 0), 8, 0)
if controls["rselect"] == controls["SIDSTARview"]+5 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[6] = bline[6] .. string.gsub(string.sub(gline[6], 13, 23), " ", "#")
end
end
elseif values["SIDSTARsel"]["APPTRANS"] == nil then

gline[1] = string.sub(gline[1], 1, 12) .. appname(values["SIDSTARsel"]["APP"], values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["RWY"][1], 1) .. "-" .. waypoint[1]["ident"]

local line = 2
while line <= 5 do
if controls["SIDSTARview"]+line-1 <=  values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["TRANS"]["num"] then
local iaf = "   "
if line == 2 then
iaf = "IAF"
end
gline[line] = gline[line] .. iaf .. makelength(controls["SIDSTARview"]+line-1, 2, 1) .. " " .. makelength(values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["TRANS"][controls["SIDSTARview"]+line-1], 5, 0)
if controls["rselect"] == controls["SIDSTARview"]+line-1 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. "   " .. string.gsub(string.sub(gline[line], -8), " ", "#")
end
end
line = line + 1
end


if controls["SIDSTARview"]+5 <= values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["TRANS"]["num"] then
gline[6] = gline[6] .. "   " .. makelength(values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["TRANS"]["num"], 2, 1) .. " " .. makelength(values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["TRANS"][values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["TRANS"]["num"]], 5, 0)
if controls["rselect"] == controls["SIDSTARview"]+5 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[6] = bline[6] .. "   " .. string.gsub(string.sub(gline[6], 16, 23), " ", "#")
end
end
elseif values["SIDSTARsel"]["stat"] == 0 then
gline[1] = string.sub(gline[1], 1, 12) .. appname(values["SIDSTARsel"]["APP"], values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["RWY"][1], 1) .. "-" .. waypoint[1]["ident"]
local line = 2
while line <= 4 do
if controls["SIDSTARview"]+line-1 <=  values["SIDSTARsel"]["num"] then
gline[line] = gline[line] .. makelength(controls["SIDSTARview"]+line-1, 2, 1) .. " " .. makelength(values["SIDSTARsel"][controls["SIDSTARview"]+line-1]["ident"], 5, 0)
if controls["SIDSTARview"]+line-1 == values["SIDSTARsel"]["MAP"] then
gline[line] = gline[line] .. string.char(31) .. "  "
elseif controls["SIDSTARview"]+line == values["SIDSTARsel"]["MAP"] then
gline[line] = gline[line] .. string.char(29) .. "  "
elseif controls["SIDSTARview"]+line-1 == 1 then
gline[line] = gline[line] .. string.char(28) .. "  "
else
gline[line] = gline[line] .. "   "
end
if controls["rselect"] == controls["SIDSTARview"]+line-1 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[line] = bline[line] .. string.gsub(string.sub(gline[line], -11), " ", "#")
end
end
line = line + 1
end
if controls["SIDSTARview"]+4 <= values["SIDSTARsel"]["num"] then
gline[5] = gline[5] .. makelength(values["SIDSTARsel"]["num"], 2, 1) .. " " ..  makelength(values["SIDSTARsel"][values["SIDSTARsel"]["num"]]["ident"], 5, 0) .. string.char(30) .. "  "
if controls["rselect"] == controls["SIDSTARview"]+4 and controls[CRSR] == 1 and values["flash"] == 1 then
bline[5] = bline[5] .. string.gsub(string.sub(gline[5], 13, 23), " ", "#")
end
end
gline[6] = gline[6] .. "LOAD IN FPL"
if controls["rselect"] == values["SIDSTARsel"]["num"] + 1 and values["flash"] == 1 and controls[CRSR] == 1 then
bline[6] = bline[6] .. "LOAD#IN#FPL"
end
elseif values["SIDSTARsel"]["stat"] == 2 then
gline[1] = string.sub(gline[1], 1, 12) .. appname(values["SIDSTARsel"]["APP"], values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["RWY"][1], 1) .. "-" .. waypoint[1]["ident"]
gline[2] = gline[2] .. "PRESS ENT"
gline[3] = gline[3] .. "TO REPLACE"
gline[4] = gline[4] .. "EXISTING"
gline[5] = gline[5] .. "APPR"
gline[6] = gline[6] .. "  APPROVE?"
if values["flash"] == 1 then
bline[6] = bline[6] .. "##APPROVE?#"
end

elseif values["SIDSTARsel"]["stat"] == 3 then
gline[1] = string.sub(gline[1], 1, 12) .. appname(values["SIDSTARsel"]["APP"], values["SIDSTAR"]["APP"][values["SIDSTARsel"]["APP"]]["RWY"][1], 1) .. "-" .. waypoint[1]["ident"]
gline[2] = gline[2] .. "PRESS ENT"
gline[3] = gline[3] .. "TO ADD " .. waypoint[1]["ident"]
gline[4] = gline[4] .. "AND APPR TO"
gline[5] = gline[5] .. "FPL 0"
gline[6] = gline[6] .. "  APPROVE?"
if values["flash"] == 1 then
bline[6] = bline[6] .. "##APPROVE?#"
end
end
end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT 8"
else
gline[7] = gline[7] .. "APT 8"
end
end
elseif types == 1 then
if values["VORpage"]["length"] ~= 0 then
if waypoint[1]["USR"] == 0 then

if waypoint[1]["DME"] == 1 then
if mode == 0 then
gline[1] = replaceChar(gline[1],18,"D")
else
gline[1] = replaceChar(gline[1],21,"D")
end
end

local class = waypoint[1]["range"]
if class <= 25 then
class = "T"
elseif class <= 40 then
class = "L"
else
class = "H"
end
gline[3] = gline[3] .. "          " .. class
local magvar = waypoint[1]["magvar"]
if magvar < 0 then
magvar = string.format(" %s*W", makelength(round(math.abs(magvar)), 2, 1))
else
magvar = string.format(" %s*E", makelength(round(magvar), 2, 1))
end

gline[4] = gline[4] .. string.sub(waypoint[1]["freq"], 1, 3).. "." .. string.sub(waypoint[1]["freq"], 4, 5) .. magvar
if values["VORpage"]["length"] > 0 then

gline[5] = gline[5] .. convertLatLon(waypoint[1]["lat"], 0)
gline[6] = gline[6] .. convertLatLon(waypoint[1]["lon"], 1)
else
local radial = course(values["GPSlat"], values["GPSlon"], waypoint[1]["lat"], waypoint[1]["lon"])
gline[5] = string.format("%s     %03d*to", gline[5], radial)
local dist = distance(waypoint[1]["lat"], waypoint[1]["lon"], values["GPSlat"], values["GPSlon"])
gline[6] = string.format("%s     %snm", gline[6], dynaround(dist, 4))

end
--      end
else
gline[3] = gline[3] .. "          U"
if controls[page .. "select"] == 3 then
gline[4] = gline[4] .. string.sub(values[page .. "gstring"], 1, 3) .. "."  .. string.sub(values[page .. "gstring"], 4, 5)
if waypoint[1]["magvar"] == "__" then
gline[4] = gline[4] ..  " __*_"
elseif tonumber(waypoint[1]["magvar"]) < 0 then
gline[4] = gline[4] ..  makelength(math.abs(tonumber(waypoint[1]["magvar"])), 3, 1) .. "*W"
else
gline[4] = gline[4] ..  makelength(waypoint[1]["magvar"], 3, 1) .. "*E"
end
bline[4] = bline[4] .. string.sub(values[page .. "bstring"], 1, 3) .. "."  .. string.sub(values[page .. "bstring"], 4, 5)
elseif controls[page .. "select"] == 4 then
gline[4] = gline[4] .. string.sub(waypoint[1]["freq"], 1, 3) .. "."  .. string.sub(waypoint[1]["freq"], 4, 5) .. " " .. string.sub(values[page .. "gstring"], 1, 2) .. "*" .. string.sub(values[page .. "gstring"], 3, 3)
bline[4] = bline[4] .. "       " .. string.sub(values[page .. "bstring"], 1, 2) .. "*" .. string.sub(values[page .. "bstring"], 3, 3)
else
gline[4] = gline[4] .. string.sub(waypoint[1]["freq"], 1, 3) .. "."  .. string.sub(waypoint[1]["freq"], 4, 5)

if waypoint[1]["magvar"] == "__" then
gline[4] = gline[4] ..  " __*_"
elseif tonumber(waypoint[1]["magvar"]) < 0 then
gline[4] = gline[4] ..  makelength(math.abs(tonumber(waypoint[1]["magvar"])), 3, 1) .. "*W"
else
gline[4] = gline[4] ..  makelength(waypoint[1]["magvar"], 3, 1) .. "*E"
end
end

end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT  "
else
gline[7] = gline[7] .. "VOR  "
end
elseif types == 2 then
if waypoint["length"] ~= 0 then
if waypoint[1]["USR"] == 0 then
gline[4] = gline[4] .. "FREQ   " .. makelength(math.floor(waypoint[1]["freq"]/1000), 4, 1)
if values["NDBpage"]["length"] > 0 then
gline[5] = gline[5] .. convertLatLon(waypoint[1]["lat"], 0)
gline[6] = gline[6] .. convertLatLon(waypoint[1]["lon"], 1)
else
local radial = course(values["GPSlat"], values["GPSlon"], waypoint[1]["lat"], waypoint[1]["lon"])
gline[5] = string.format("%s     %03d*to", gline[5], radial)
local dist = distance(waypoint[1]["lat"], waypoint[1]["lon"], values["GPSlat"], values["GPSlon"])
gline[6] = string.format("%s     %snm", gline[6], dynaround(dist, 4))
end
else
if controls[page .. "select"] == 3 then
gline[4] = gline[4] .. "FREQ " .. string.sub(values[page .. "gstring"], 1, 4) .. "."  .. string.sub(values[page .. "gstring"], 5, 5)
bline[4] = bline[4] .. "     " .. string.sub(values[page .. "bstring"], 1, 4) .. "."  .. string.sub(values[page .. "bstring"], 5, 5)
else
gline[4] = gline[4] .. "FREQ " .. string.sub(waypoint[1]["freq"], 1, 4) .. "."  .. string.sub(waypoint[1]["freq"], 5, 5)
end
end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT  "
else
gline[7] = gline[7] .. "NDB  "
end
elseif types == 3 or types == 4 or types == 5 then
--no nearestlist!
if types == 4 and waypoint["length"] == 0 then --was commented
values["statusmessage"] = "NO#SUP#WPTS"
values["statustimer"] = 1 --was 5 but too long
end                                            --to here
if waypoint["length"] ~= 0 then
if controls[page .. "select"] == 3 then
gline[2] = gline[2] .. "REF:  " .. values[page .. "gstring"]
bline[2] = bline[2] .. "      " .. values[page .. "bstring"]
else
gline[2] = gline[2] .. "REF:  " .. values["INTref"]["ident"]
end
if values["INTref"]["ident"] == "_____" and waypoint[1]["lat"] ~= "_" and waypoint[1]["lon"] ~= "_" then
gline[3] = gline[3] .. "RAD: ___._*"
gline[4] = gline[4] .. "DIS:___._nm"

if values["CALC3timer"] > 3  then
values["INTref"]= closestVOR( waypoint[1]["lat"], waypoint[1]["lon"])
values["INTdist"] = makelength(math.floor(distance(values["INTref"]["lat"], values["INTref"]["lon"], waypoint[1]["lat"], waypoint[1]["lon"])*10), 4, 1)
values["INTrad"] = string.format("%04d", course(values["INTref"]["lat"], values["INTref"]["lon"], waypoint[1]["lat"], waypoint[1]["lon"])*10)

end
elseif values["INTrad"] == "____" and waypoint[1]["lat"] ~= "_" and waypoint[1]["lon"] ~= "_" then
gline[3] = gline[3] .. "RAD: ___._*"
gline[4] = gline[4] .. "DIS:___._nm"
values["INTdist"] = makelength(math.floor(distance(values["INTref"]["lat"], values["INTref"]["lon"], waypoint[1]["lat"], waypoint[1]["lon"])*10), 4, 1)
values["INTrad"] = string.format("%04d", course(values["INTref"]["lat"], values["INTref"]["lon"], waypoint[1]["lat"], waypoint[1]["lon"])*10)

--elseif waypoint[1]["lat"] == "_" or waypoint[1]["lon"] == "_" then
else
if controls[page .. "select"] == 4 then
gline[3] = gline[3] .. "RAD: " .. string.sub(values[page .. "gstring"], 1, 3) .. "." .. string.sub(values[page .. "gstring"], 4, 4) .. "*"
bline[3] = bline[3] .. "     " .. string.sub(values[page .. "bstring"], 1, 3) .. "." .. string.sub(values[page .. "bstring"], 4, 4)
else
gline[3] = gline[3] .. "RAD: " .. string.sub(values["INTrad"], 1, 3) .. "." .. string.sub(values["INTrad"], 4, 4) .. "*"
end
if controls[page .. "select"] == 5 then
gline[4] = gline[4] .. "DIS:" .. string.sub(values[page .. "gstring"], 1, 3) .. "." .. string.sub(values[page .. "gstring"], 4, 4) .. "nm"
bline[4] = bline[4] .. "    " .. string.sub(values[page .. "bstring"], 1, 3) .. "." .. string.sub(values[page .. "bstring"], 4, 4)
else
gline[4] = gline[4] .. "DIS:" .. string.sub(values["INTdist"], 1, 3) .. "." .. string.sub(values["INTdist"], 4, 4) .. "nm"
end


--  gline[4] = gline[4] .. "DIS: " .. dynaround(values["INTdist"], 4) .. "nm"

end
if waypoint[1]["USR"] == 0 then
gline[5] = gline[5] .. convertLatLon(waypoint[1]["lat"], 0)
gline[6] = gline[6] .. convertLatLon(waypoint[1]["lon"], 1)
end
end
if mode == 1 then
gline[7] = gline[7] .. "ACT  "
else
gline[7] = gline[7] .. typesname .. "  "
end
end
--we need to fix the length, so that the pages are not shown twice.
gline[1] = makelength(gline[1], 23, 0)
gline[2] = makelength(gline[2], 23, 0)
gline[3] = makelength(gline[3], 23, 0)
gline[4] = makelength(gline[4], 23, 0)
gline[5] = makelength(gline[5], 23, 0)
gline[6] = makelength(gline[6], 23, 0)
bline[1] = makelength(bline[1], 23, 0)
bline[2] = makelength(bline[2], 23, 0)
bline[3] = makelength(bline[3], 23, 0)
bline[4] = makelength(bline[4], 23, 0)
bline[5] = makelength(bline[5], 23, 0)
bline[6] = makelength(bline[6], 23, 0)

if mode == 2 then
if controls["rsknobs"] == -1 then
subpage = subpage - 10
elseif controls["rsknobs"] == 1 then
subpage = subpage + 10
end
end
--I return the subpage because I may handle it in a special way
return subpage
end


function ICAOtocountry(ICAO)
local country = "   "
if ICAO == "AG" then
country = "SLB"
elseif ICAO == "AN" then
country = "NRU"
elseif ICAO == "AY" then
country = "PNG"
elseif ICAO == "BG" then
country = "GRL"
elseif ICAO == "BI" then
country = "ISL"
elseif ICAO == "BK" then
country = "UNK"
elseif ICAO == "CY" then
country = "CAN"
elseif ICAO == "DA" then
country = "DZA"
elseif ICAO == "DB" then
country = "BEN"
elseif ICAO == "DF" then
country = "BFA"
elseif ICAO == "DG" then
country = "GHA"
elseif ICAO == "DI" then
country = "CIV"
elseif ICAO == "DN" then
country = "NGA"
elseif ICAO == "DR" then
country = "NER"
elseif ICAO == "DT" then
country = "TUN"
elseif ICAO == "DX" then
country = "TGO"
elseif ICAO == "EB" then
country = "BEL"
elseif ICAO == "ED" then
country = "DEU"
elseif ICAO == "EE" then
country = "EST"
elseif ICAO == "EF" then
country = "FIN"
elseif ICAO == "EG" then
country = "GBR"
elseif ICAO == "EH" then
country = "NLD"
elseif ICAO == "EI" then
country = "IRL"
elseif ICAO == "EK" then
country = "DNK"
elseif ICAO == "EL" then
country = "LUX"
elseif ICAO == "EN" then
country = "NOR"
elseif ICAO == "EP" then
country = "POL"
elseif ICAO == "ES" then
country = "SWE"
elseif ICAO == "ET" then
country = "DEU"
elseif ICAO == "EV" then
country = "LVA"
elseif ICAO == "EY" then
country = "LTU"
elseif ICAO == "FA" then
country = "ZAF"
elseif ICAO == "FB" then
country = "BWA"
elseif ICAO == "FC" then
country = "COG"
elseif ICAO == "FD" then
country = "SWZ"
elseif ICAO == "FE" then
country = "CAF"
elseif ICAO == "FG" then
country = "GNQ"
elseif ICAO == "FH" then
country = "SHN"
elseif ICAO == "FI" then
country = "MUS"
elseif ICAO == "FJ" then
country = "IOT"
elseif ICAO == "FK" then
country = "CMR"
elseif ICAO == "FL" then
country = "ZMB"
elseif ICAO == "FM" then
country = "MDG"
elseif ICAO == "FN" then
country = "AGO"
elseif ICAO == "FO" then
country = "GAB"
elseif ICAO == "FP" then
country = "STP"
elseif ICAO == "FQ" then
country = "MOZ"
elseif ICAO == "FS" then
country = "SYC"
elseif ICAO == "FT" then
country = "TCD"
elseif ICAO == "FV" then
country = "ZWE"
elseif ICAO == "FW" then
country = "MWI"
elseif ICAO == "FX" then
country = "LSO"
elseif ICAO == "FY" then
country = "NAM"
elseif ICAO == "FZ" then
country = "COD"
elseif ICAO == "GA" then
country = "MLI"
elseif ICAO == "GB" then
country = "GMB"
elseif ICAO == "GC" then
country = "ESP"
elseif ICAO == "GE" then
country = "ESP"
elseif ICAO == "GF" then
country = "SLE"
elseif ICAO == "GG" then
country = "GNB"
elseif ICAO == "GL" then
country = "LBR"
elseif ICAO == "GM" then
country = "MAR"
elseif ICAO == "GO" then
country = "SEN"
elseif ICAO == "GQ" then
country = "MRT"
elseif ICAO == "GS" then
country = "ESH"
elseif ICAO == "GU" then
country = "GIN"
elseif ICAO == "GV" then
country = "CPV"
elseif ICAO == "HA" then
country = "ETH"
elseif ICAO == "HB" then
country = "BDI"
elseif ICAO == "HC" then
country = "SOM"
elseif ICAO == "HD" then
country = "DJI"
elseif ICAO == "HE" then
country = "EGY"
elseif ICAO == "HF" then
country = "DJI"
elseif ICAO == "HH" then
country = "ERI"
elseif ICAO == "HK" then
country = "KEN"
elseif ICAO == "HL" then
country = "LBY"
elseif ICAO == "HR" then
country = "RWA"
elseif ICAO == "HS" then
country = "SDN"
elseif ICAO == "HT" then
country = "TZA"
elseif ICAO == "HU" then
country = "UGA"
elseif string.sub(ICAO, 1, 1) == "K" then
country = "USA"
elseif ICAO == "LA" then
country = "ALB"
elseif ICAO == "LB" then
country = "BGR"
elseif ICAO == "LC" then
country = "CYP"
elseif ICAO == "LD" then
country = "HRV"
elseif ICAO == "LE" then
country = "ESP"
elseif ICAO == "LF" then
country = "FRA"
elseif ICAO == "LG" then
country = "GRC"
elseif ICAO == "LH" then
country = "HUN"
elseif ICAO == "LI" then
country = "ITA"
elseif ICAO == "LJ" then
country = "SVN"
elseif ICAO == "LK" then
country = "CZE"
elseif ICAO == "LL" then
country = "ISR"
elseif ICAO == "LM" then
country = "MLT"
elseif ICAO == "LN" then
country = "MCO"
elseif ICAO == "LO" then
country = "AUT"
elseif ICAO == "LP" then
country = "PRT"
elseif ICAO == "LQ" then
country = "BIH"
elseif ICAO == "LR" then
country = "ROU"
elseif ICAO == "LS" then
country = "CHE"
elseif ICAO == "LT" then
country = "TUR"
elseif ICAO == "LU" then
country = "MDA"
elseif ICAO == "LV" then
country = "PSE"
elseif ICAO == "LW" then
country = "MKD"
elseif ICAO == "LX" then
country = "GIB"
elseif ICAO == "LY" then
country = "SCG"
elseif ICAO == "LZ" then
country = "SVK"
elseif ICAO == "MB" then
country = "TCA"
elseif ICAO == "MD" then
country = "DOM"
elseif ICAO == "MG" then
country = "GTM"
elseif ICAO == "MH" then
country = "HND"
elseif ICAO == "MK" then
country = "JAM"
elseif ICAO == "MM" then
country = "MEX"
elseif ICAO == "MN" then
country = "NIC"
elseif ICAO == "MP" then
country = "PAN"
elseif ICAO == "MR" then
country = "CRI"
elseif ICAO == "MS" then
country = "SLV"
elseif ICAO == "MT" then
country = "HTI"
elseif ICAO == "MU" then
country = "CUB"
elseif ICAO == "MW" then
country = "CYM"
elseif ICAO == "MY" then
country = "BHS"
elseif ICAO == "MZ" then
country = "BLZ"
elseif ICAO == "NC" then
country = "COK"
elseif ICAO == "NF" then
country = "FJI"
elseif ICAO == "NG" then
country = "KIR"
elseif ICAO == "NI" then
country = "NIU"
elseif ICAO == "NL" then
country = "WLF"
elseif ICAO == "NS" then
country = "WSM"
elseif ICAO == "NT" then
country = "PYF"
elseif ICAO == "NV" then
country = "VUT"
elseif ICAO == "NW" then
country = "NCL"
elseif ICAO == "NZ" then
country = "NZL"
elseif ICAO == "OA" then
country = "AFG"
elseif ICAO == "OB" then
country = "BHR"
elseif ICAO == "OE" then
country = "SAU"
elseif ICAO == "OI" then
country = "IRN"
elseif ICAO == "OJ" then
country = "JOR"
elseif ICAO == "OK" then
country = "KWT"
elseif ICAO == "OL" then
country = "LBN"
elseif ICAO == "OM" then
country = "ARE"
elseif ICAO == "OO" then
country = "OMN"
elseif ICAO == "OP" then
country = "PAK"
elseif ICAO == "OR" then
country = "IRQ"
elseif ICAO == "OS" then
country = "SYR"
elseif ICAO == "OT" then
country = "WAT"
elseif ICAO == "OY" then
country = "YEM"
elseif ICAO == "PA" then
country = "USA"
elseif ICAO == "PB" then
country = "USA"
elseif ICAO == "PC" then
country = "KIR"
elseif ICAO == "PF" then
country = "USA"
elseif ICAO == "PG" then
country = "GUM"
elseif ICAO == "PH" then
country = "USA"
elseif ICAO == "PJ" then
country = "USA"
elseif ICAO == "PK" then
country = "USA"
elseif ICAO == "PL" then
country = "KIR"
elseif ICAO == "PM" then
country = "USA"
elseif ICAO == "PO" then
country = "USA"
elseif ICAO == "PP" then
country = "USA"
elseif ICAO == "PT" then
country = "FSM"
elseif ICAO == "PW" then
country = "USA"
elseif ICAO == "RC" then
country = "TWN"
elseif ICAO == "RJ" then
country = "JPN"
elseif ICAO == "RK" then
country = "KOR"
elseif ICAO == "RO" then
country = "JPN"
elseif ICAO == "RP" then
country = "PHL"
elseif ICAO == "SA" then
country = "ARG"
elseif ICAO == "SB" then
country = "BRA"
elseif ICAO == "SC" then
country = "CHL"
elseif ICAO == "SD" then
country = "BRA"
elseif ICAO == "SE" then
country = "ECU"
elseif ICAO == "SF" then
country = "FLK"
elseif ICAO == "SG" then
country = "PRY"
elseif ICAO == "SI" then
country = "BRA"
elseif ICAO == "SJ" then
country = "BRA"
elseif ICAO == "SK" then
country = "COL"
elseif ICAO == "SL" then
country = "BOL"
elseif ICAO == "SM" then
country = "SUR"
elseif ICAO == "SN" then
country = "BRA"
elseif ICAO == "SO" then
country = "GUF"
elseif ICAO == "SP" then
country = "PER"
elseif ICAO == "SS" then
country = "BRA"
elseif ICAO == "SU" then
country = "URY"
elseif ICAO == "SV" then
country = "VEN"
elseif ICAO == "SW" then
country = "BRA"
elseif ICAO == "SY" then
country = "GUY"
elseif ICAO == "TA" then
country = "ATG"
elseif ICAO == "TB" then
country = "BRB"
elseif ICAO == "TD" then
country = "DMA"
elseif ICAO == "TF" then
country = "GLP"
elseif ICAO == "TG" then
country = "GRD"
elseif ICAO == "TI" then
country = "VIR"
elseif ICAO == "TJ" then
country = "PRI"
elseif ICAO == "TK" then
country = "KNA"
elseif ICAO == "TL" then
country = "LCA"
elseif ICAO == "TN" then
country = "ANT"
elseif ICAO == "TQ" then
country = "AIA"
elseif ICAO == "TR" then
country = "MSR"
elseif ICAO == "TT" then
country = "TTO"
elseif ICAO == "TU" then
country = "VGB"
elseif ICAO == "TV" then
country = "VCT"
elseif ICAO == "TX" then
country = "BMU"
elseif ICAO == "UA" then
country = "KAZ"
elseif ICAO == "UB" then
country = "AZE"
elseif ICAO == "UD" then
country = "ARM"
elseif ICAO == "UG" then
country = "GEO"
elseif ICAO == "UK" then
country = "UKR"
elseif ICAO == "UM" then
country = "BLR"
elseif ICAO == "UT" then
country = "TJK"
elseif string.sub(ICAO, 1, 1) == "U" then
country = "RUS"
elseif ICAO == "VA" then
country = "IND"
elseif ICAO == "VC" then
country = "LKA"
elseif ICAO == "VD" then
country = "KHM"
elseif ICAO == "VE" then
country = "IND"
elseif ICAO == "VG" then
country = "BGD"
elseif ICAO == "VH" then
country = "HKG"
elseif ICAO == "VI" then
country = "IND"
elseif ICAO == "VL" then
country = "LAO"
elseif ICAO == "VM" then
country = "MAC"
elseif ICAO == "VN" then
country = "NPL"
elseif ICAO == "VO" then
country = "IND"
elseif ICAO == "VQ" then
country = "BTN"
elseif ICAO == "VR" then
country = "MDV"
elseif ICAO == "VT" then
country = "THA"
elseif ICAO == "VV" then
country = "VNM"
elseif ICAO == "VY" then
country = "MMR"
elseif string.sub(ICAO, 1, 1) == "Y" then
country = "AUS"
elseif ICAO == "ZK" then
country = "PRK"
elseif ICAO == "ZM" then
country = "MNG"
elseif string.sub(ICAO, 1, 1) == "Z" then
country = "CHN"
end
return country
end

-- function shellsort( a, mode )
-- local inc = math.ceil( #a / 2 )
-- while inc > 0 do
-- for i = inc, #a do
-- local tmp = a[i]
-- local j = i
-- if j-inc > 0 then

-- end
-- while j > inc and a[j-inc][mode] > tmp[mode] do
-- a[j] = a[j-inc]
-- j = j - inc
-- end
-- a[j] = tmp
-- end
-- inc = math.floor( 0.5 + inc / 2.2 )
-- end
-- return a
-- end

function heapsort(n, ra, mode)
local j, i, rra
local l = math.floor(n/2) + 1
local ir = n;
while 1 do
if l > 1 then
l = l - 1
rra = ra[l]
else
rra = ra[ir]
ra[ir] = ra[1]
ir = ir - 1
if (ir == 1) then
ra[1] = rra
return
end
end
i = l
j = l * 2
while j <= ir do
if (j < ir) and (ra[j][mode] < ra[j+1][mode]) then
j = j + 1
end
if rra[mode] < ra[j][mode] then
ra[i] = ra[j]
i = j
j = j + i
else
j = ir + 1
end
end
ra[i] = rra
end
end

function sorttable(name)
-- local x = os.clock()
if name == 1 and values["sort"] == 0 then
heapsort(WPTlength, WPTtable, "name1")
values["sort"] = 1
-- print(string.format("name elapsed time: %s, %s, %s", os.clock() - x, x, os.clock()))
elseif name == 0 and values["sort"] == 1 then
heapsort(WPTlength, WPTtable, "ident")
values["sort"] = 0
-- print(string.format("ident elapsed time: %s, %s, %s", os.clock() - x, x, os.clock()))
end
end

-- function sorttable(name)
-- local x = os.clock()
-- if name == 1 and values["sort"] == 0 then
-- shellsort(WPTtable, "name1")
-- values["sort"] = 1
-- print(string.format("name elapsed time: %s, %s, %s", os.clock() - x, x, os.clock()))
-- elseif name == 0 and values["sort"] == 1 then

-- table.sort(WPTtable,
-- function(a, b)
-- a = a["ident"]
-- b = b["ident"]
-- return a<b
-- end)
-- values["sort"] = 0
-- print(string.format("ident elapsed time: %s, %s, %s", os.clock() - x, x, os.clock()))
-- end
-- end



--types: 0 APT, 1 VOR, 2 NDB, 3 INT, 4 SUP, 9 unknown (only when name == 0 )
--character: -1 prev, 1 next 0 search for this
--name: 0 ICAO, 1:Name
--lat lon can optionally be specified to get the closest WPT to a position first
function enterident(ident, types, name, character, prevnext, lat, lon) --enterident("A    ", 9, 0, 1, -1) (values["lastAPT"], 0, 0, 5, 0)
local found = 0
-- I generate a second table with all waypoints that fit.
local table2 = {}
local nameident = "ident"
if name == 1 then

nameident = "name1"
end
local length2 = 0
--if necessesary, we sort the table
sorttable(name)
if prevnext == -1 then
local x = string2value(string.sub(ident, character , character)) - 1
if x < 0 then x = 36 end
x =value2string(x)
ident = string.sub(ident, 1, character - 1) .. x
elseif prevnext == 1 then
local x = string2value(string.sub(ident, character, character)) + 1
if x > 36 then x = 0 end
x =value2string(x)
ident = string.sub(ident, 1, character - 1) .. x
end
--this is the precheck
local num = 1

--first were should we start
while num <= WPTlength do
local first = string2value(string.sub(WPTtable[num][nameident], 1, 1))
if first >= string2value(string.sub(ident, 1, 1)) then break end

num = num + 1000
end
num = num - 1000
if num < 1 then num = 1 end
--second, were should we stop
y = num + 1000
while y <= WPTlength do
local first = string2value(string.sub(WPTtable[y][nameident], 1, 1))
if first > string2value(string.sub(ident, 1, 1)) then break end

y = y + 1000
end
while num <= WPTlength and num < y and found == 0 do
if WPTtable[num]["types"] == types or types == 9 then
local line = WPTtable[num][nameident]
if length2 > 0 and line ~= dup then
found = 1
end
if string.sub(line, 1, character) == string.sub(ident, 1, character) and found == 0 then
length2 = length2 + 1
table2[length2] = WPTtable[num]
-- we temporarily assign a num to the WPT, it should never really be used
table2[length2]["num"] = num
if length2 == 1 then
dup = line
end
end
end
num = num + 1
end

--if we found something, we pass over the data
--It's possible that the output needs to be sorted by distance??
table.sort(table2,
function(a, b)
a = distance(lat or values["GPSlat"], lon or values["GPSlon"], a["lat"], a["lon"])
b = distance(lat or values["GPSlat"], lon or values["GPSlon"], b["lat"], b["lon"])
return a<b
end)

--If we found nothing, we return 0 and the input
if length2 == 0 then
table2[1] = {}
if name == 0 then
table2[1]["ident"] = makelength(ident, 5, 0)
else
table2[1]["name1"] = makelength(ident, 11, 0)
end
end
table2["length"] = length2
table2["num"] = table2[1]["num"]

--here we return the position of the waypoint (for scanning) and the waypoints itself
return table2

end

-- +-1 for simply next, +-2 for exact until char
function nextWPT(page, types, prevnext)
local num = page["num"]
if num == nil then return end --workaround for empty tables
local found = 1
local test = {}
test[1] = {}
test[1]["types"] = 5
while test[1]["types"] ~= types do
if prevnext > 0 then
num = num + 1
else
num = num - 1
end
if num > WPTlength then found = 0 break end
if num <= 0 then found = 0 break end
test[1] = WPTtable[num]
end
if (prevnext == 2 or prevnext == -2) then
if controls["rselect"] == 0 and string.sub(WPTtable[num]["ident"], 1, controls["rCRSRchar"]-1) ~= string.sub(page[1]["ident"], 1, controls["rCRSRchar"]-1) then
found = 0
elseif controls["rselect"] == 2 and string.sub(WPTtable[num]["name1"], 1, controls["rCRSRchar"]-1) ~= string.sub(page[1]["name1"], 1, controls["rCRSRchar"]-1) then
found = 0
end
end
if found == 1 then
page[1] = test[1]
page["length"] = 1
page["num"] = num
end
end

function timezone(zone)
local zonename = "UTC"
local   zonediff = 0
local   zonenamel = "CORD UNIV/Z "

if zone == 1 then
zonename = "UTC"
zonediff = 0
zonenamel = "CORD UNIV/Z"
elseif zone == 2 then
zonename = "GST"
zonediff = -3
zonenamel = "GREENL STD "
elseif zone == 3 then
zonename = "GDT"
zonediff = -2
zonenamel = "GREENL DAY "
elseif zone == 4 then
zonename = "ATS"
zonediff = -4
zonenamel = "ATLANT STD "
elseif zone == 5 then
zonename = "ATD"
zonediff = -3
zonenamel = "ATLANT DAY "
elseif zone == 6 then
zonename = "EST"
zonediff = -5
zonenamel = "EASTERN STD"
elseif zone == 7 then
zonename = "EDT"
zonediff = -4
zonenamel = "EASTERN DAY"
elseif zone == 8 then
zonename = "CST"
zonediff = -6
zonenamel = "CENTRAL STD"
elseif zone == 9 then
zonename = "CDT"
zonediff = -5
zonenamel = "CENTRAL DAY"
elseif zone == 10 then
zonename = "MST"
zonediff = -7
zonenamel = "MOUNT STD  "
elseif zone == 11 then
zonename = "MDT"
zonediff = -6
zonenamel = "MOUNT DAY  "
elseif zone == 12 then
zonename = "PST"
zonediff = -8
zonenamel = "PACIFIC STD"
elseif zone == 13 then
zonename = "PDT"
zonediff = -7
zonenamel = "PACIFIC DAY"
elseif zone == 14 then
zonename = "AKS"
zonediff = -9
zonenamel = "ALASKA STD "
elseif zone == 15 then
zonename = "AKD"
zonediff = -8
zonenamel = "ALASKA DAY "
elseif zone == 16 then
zonename = "HAS"
zonediff = -10
zonenamel = "HAWAII STD "
elseif zone == 17 then
zonename = "HAD"
zonediff = -9
zonenamel = "HAWAII DAY "
elseif zone == 18 then
zonename = "SST"
zonediff = -11
zonenamel = "SAMOA STD  "
elseif zone == 19 then
zonename = "SDT"
zonediff = -10
zonenamel = "SAMOA DAY  "
end
return zonename, zonediff, zonenamel

end

function monthstodays(month2, days2)
local months2 = 1
if month2 == "JAN" then
months2 = 1
elseif month2 == "FEB" then
months2 = 2
elseif month2 == "MAR" then
months2 = 3
elseif month2 == "APR" then
months2 = 4
elseif month2 == "MAY" then
months2 = 5
elseif month2 == "JUN" then
months2 = 6
elseif month2 == "JUL" then
months2 = 7
elseif month2 == "AUG" then
months2 = 8
elseif month2 == "SEP" then
months2 = 9
elseif month2 == "OCT" then
months2 = 10
elseif month2 == "NOV" then
months2 = 11
elseif month2 == "DEC" then
months2 = 12
end

while months2 > 1 do
days2 = days2 + values["monthdays"][months2]
months2 = months2 - 1
end
return days2
end

--this function makes Lat and Lon readable (lat = 0, lon = 1)
function convertLatLon(conlatlon, latlon)


if conlatlon == "_" then
if latlon == 0 then
return "_ __*__.__'"
else

return "____*__.__'"
end
end

local SE = 0
if string.find(conlatlon, "-") == 1 then
SE = 1
conlatlon = string.sub(conlatlon, 2)
else SE = 0
end
local hour =  math.floor(conlatlon)
local minute =  (conlatlon - hour) * 60
local second =  round((minute - math.floor(minute)) * 100)
if second == 100 then second = 0 end
--  local second =  round(((conlatlon - hour) * 60 - minute) * 60)

conlatlon = string.format ("%s*%02d.%02d'", makelength(hour, 3, 1), minute, second)

--  conlatlon = string.format ("%s*%02d.%02d'", spacer, (conlatlon - math.floor(conlatlon)) * 60, (((conlatlon - math.floor(conlatlon)) * 60) - math.floor(((conlatlon - math.floor(conlatlon)) * 60)))*100)

if latlon == 0 then
if SE == 1 then
conlatlon = "S" .. conlatlon
else
conlatlon = "N" .. conlatlon
end
else
if SE == 1 then
conlatlon = "W" .. conlatlon
else
conlatlon = "E" .. conlatlon
end
end
return conlatlon
end

--Use this function to create a UserWPT
--The waypoint is sorted into the table and the function return the position of the new WPT
function createWPT(types, ident, PPOS)
WPTlength = WPTlength + 1
USRlen = USRlen + 1
WPTtable[WPTlength] = {}
WPTtable[WPTlength]["types"] = types
WPTtable[WPTlength]["ident"] = makelength(ident, 5, 0)
WPTtable[WPTlength]["USR"] = 1
WPTtable[WPTlength]["name1"] = "ZZZZZ"
WPTtable[WPTlength]["country"] = " "

if PPOS == 1 then
WPTtable[WPTlength]["lat"] = values["GPSlat"]
WPTtable[WPTlength]["lon"] = values["GPSlon"]
else
WPTtable[WPTlength]["lat"] = "_"
WPTtable[WPTlength]["lon"] = "_"
end

if types == 0 then
WPTtable[WPTlength]["elev"] = "_____"
WPTtable[WPTlength]["LRWY"] = "_____"
WPTtable[WPTlength]["surface"] = "___"
WPTtable[WPTlength]["freqlen"] = 0
WPTtable[WPTlength]["RWYs"] = 0
elseif types == 1 then
WPTtable[WPTlength]["freq"] = "_____"
WPTtable[WPTlength]["magvar"] = "__"
WPTtable[WPTlength]["range"] = 0

elseif types == 2 then
WPTtable[WPTlength]["freq"] = "_____"
end
values["sort"] = 1
sorttable(0)

end

--here we read the FPlans
function readFpl(phase)
if phase ~= 2 then return end
local num1 = 0
while num1 <= 25 do
FPlan[num1] = {}
FPlan[num1]["length"] = 0
local filename = "Output/FMS plans/KLN 90B/" .. num1 .. ".fms"
local file = io.open(filename, "r")
local num2 = 0

if file then
local rewritten = true
while true do
local line = file:read("*line")
--print(line)
if line == nil then break end
if string.sub(line, 0, 6) == "NUMENR" then
rewritten = false
end
if (rewritten and string.find(line, "%d+%s+[%w%p]+%s+%d+")) or (not rewritten and string.find(line, "%d+%s+[%w%p]+%s+[%w%p]+%s+%d+")) then
local a = string.find(line, "%d")
local b = string.find(line, " ", a+1)
local types = tonumber(string.sub(line, a, b-1))
if types ~= 0 then
num2 = num2 + 1
if num2 <= 30 then
FPlan[num1]["length"] = num2
a = string.find(line, " ", b+1)
local ident = makelength(string.sub(line, b+1, a-1), 5, 0)
if (not rewritten) then
a = string.find(line, " ", a+1)
end
b = string.find(line, " ", a+1)
--  print(a, b)
local alt = tonumber(string.sub(line, a+1, b-1))
--print(a, b, alt)

a = string.find(line, " ", b+1)
local lat = tonumber(string.sub(line, b+1, a-1))
local lon = tonumber(string.sub(line, a+1))

local WPT = {}

if types == 1 then
types = 0
elseif types == 3 then
types = 1
elseif types == 11 then
types = 3
elseif types == 28 then
types = 4
end
--print(num1, num2, types, ident, alt, lat, lon)
WPT = enterident(ident, types, 0, 5, 0, lat, lon)
--print(ident, types, WPT["length"])
if WPT["length"] == 0 then
--don't remove it, better create a user WPT, you know the type and everything!
if string.len(ident) > 5 or string.find(ident, "[+-.]") then
--This seems to be working!
local found = 1
local num3 = 1
while found ~= 0 do
ident = string.format("WPT%02d", num3)
WPT2 = enterident(ident, types, 0, 5, 0)
found = WPT2["length"]
--  WPT = enterident(ident, 0, 0, 4, 0)
num3 = num3 + 1
end
end
--print(num1, ident)
local x = 0
createWPT(types, ident, 0)
WPT = enterident(ident, types, 0, 5, 0)
WPT[1]["lat"]= lat
WPT[1]["lon"]= lon
if types == 1 then
WPT[1]["magvar"] = round(-getmagvar(lat, lon))
end
end
FPlan[num1][num2] = WPT[1]
end
end
end
end
file:close()
end
FPlan[num1][num2+1] = {}
FPlan[num1][num2+1]["ident"] = "     "
FPlan[num1]["SIDident"] = ""
FPlan[num1]["SIDstart"] = 99
FPlan[num1]["SIDend"] = 99
FPlan[num1]["STARident"] = ""
FPlan[num1]["STARstart"] = 99
FPlan[num1]["STARend"] = 99
FPlan[num1]["APPident"] = ""
FPlan[num1]["APPstart"] = 99
FPlan[num1]["APPend"] = 99
FPlan[num1]["APPMAP"] = 99
num1 = num1 + 1
end
return false
end
readFpl(2)
sasl.registerCommandHandler(sasl.createCommand("custom/KLN90/reload_fpl", "Reload all flight plan(.fms) files"), 0, readFpl)


values["activeWPT"] = {}
values["activeWPT"]["length"] = 0
values["activeWPT"]["active"] = 0

for i=1,3 do collectgarbage() end
local power_on=0
local power_154=0
local power_prev=0
function update()
-- checking aircraft power
local passd=get(frame_time)
if get(kln_pow)>0 and power_knob>0 then
if power_on<1 then
power_on=power_on+passd/7
else
power_on=1
power_154=1
end
else
power_on=0
power_154=0
end
if power_154>0 then
if power_timer<1 then
power_timer=power_timer+passd/5
else
power_timer=1
end
else
power_timer=0
end

--end
set(kln_power, power_154)
set(power, power_knob * get(kln_power))
-- if power_knob * power_154<power_prev then
-- --save_all()
-- end
-- power_prev=power_knob * power_154

--##############################################################################################################################This is the power off page
if get(power) == 0 then
-- if sved==0 then
-- --save_Config()
-- sved=1
-- end
if rpage ~= -6 then
reset()
end
controls["ALT"] = 0
controls["MSG"] = 0
controls["DCT"] = 0
controls["lCRSR"] = 0
controls["rCRSR"] = 0
controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
set(MD41test, 0)
--this happens when we turn on the device
elseif rpage ==-6 then
-- if values["primary"] == 1 then
-- set(overrideGPS, 0)
-- --commandOnce(findCommand("sim/FMS/type_vor"))
-- end
rpage = -5
values["timer"] = 15
end



if values["CALC1timer"] > 1 or not((lpage == 4 and lsubpage[4] == 50) or (rpage == 5 and rsubpage[5] == 50)) then
Nav5Comp = {}
----Nav5Comp_Serializer = {}
end
if not(rpage == 6 and rsubpage[6] == 30) or (rpage == 3 and rsubpage[3] == 30)  then
APT3Comp = {}
--APT3Comp_Serializer = {}
end
if controls["lspage"] == 1 or controls["lspage"] == 2 or controls["lspage"] == 3 or controls["lspage"] == 4 or controls["rspage"] == 1 or controls["rspage"] == 2 or controls["rspage"] == 3 or controls["rspage"] == 4 then
controls["sENT"] = controls["ENT"]
controls["sCLR"] = controls["CLR"]
controls["ENT"] = 0
controls["CLR"] = 0
end

if controls["lspage"] == 1 or controls["lspage"] == 2 or controls["lspage"] == 3 or controls["lspage"] == 4 then
controls["lsknobs"] = controls["lknobs"]
controls["lsknobl"] = controls["lknobl"]
controls["lknobs"] = 0
controls["lknobl"] = 0

end

controls["lspage"] = 0
if controls["rspage"] == 1 or controls["rspage"] == 2 or controls["rspage"] == 3 or controls["rspage"] == 4 then
APT3Comp = {}
--APT3Comp_Serializer = {}
controls["rsknobs"] = controls["rknobs"]
controls["rsknobl"] = controls["rknobl"]
controls["rknobs"] = 0
controls["rknobl"] = 0
end
controls["rspage"] = 0
local time_now = get(sim_run_time)
local passed = math.abs(time_now - values["timelast"])
if passed > 0.1 then passed = 0.1 end
values["timelast"] = time_now

--we simulate that the ALT input is pressure alt!
local PressALT = get(ALTin)*3.2808399 + (145442.2*(1- (get(BAROin)/29.92126)^0.190261))
local baro = 0
if values["barounit"] == 1 then
baro = values["baro"] * 0.0295301
else
baro = values["baro"] / 100
end
local IndALT = round(PressALT - (145442.2*(1- (baro/29.92126)^0.190261)), -2)
if values["altalert"] == 1 then
if values["alertlevel"] == 0 then
if IndALT <= values["VNVSEL"] + 1000 and IndALT >= values["VNVSEL"] - 1000 then
values["warnnum"] = 3
values["alertlevel"] = 1
end
elseif values["alertlevel"] == 1 then
if IndALT == tonumber(values["VNVSEL"]) then
values["warnnum"] = 2
values["alertlevel"] = 2
end
elseif values["alertlevel"] == 2 then
if IndALT >= values["VNVSEL"] + values["altwarn"] or IndALT <= values["VNVSEL"] - values["altwarn"] then
values["warnnum"] = 4
values["alertlevel"] = 3
end
elseif values["alertlevel"] == 3 then
if IndALT < values["VNVSEL"] + values["altwarn"] and IndALT > values["VNVSEL"] - values["altwarn"] then
values["alertlevel"] = 1
end
end
end
if values["HTAPT"] ~= 0 then
if values["HTlevel"] == 0 then
if values["activeWPT"]["length"] >= 2 then
if values["activeWPT"][2]["types"] == 0 and values["dist"] <= 5 then
if values["activeWPT"][2]["elev"] ~= "_____" then
local h = values["activeWPT"][2]["elev"] + values["HTAPT"]
if IndALT <= h then
values["HTlevel"] = 1
values["warnnum"] = 1
end
end
end
end
elseif values["HTlevel"] == 1 and isSamplePlaying(alert) == false then
--sasl.al.playSample(alertl, false)
values["HTlevel"] = 2
elseif values["HTlevel"] == 2 and isSamplePlaying(alertl) == false then
values["HTlevel"] = 3
values["warnnum"] = 1
elseif values["HTlevel"] == 3 and values["dist"] > 5 then
values["HTlevel"] = 0
end
end
if FPlan[0]["APPstart"] < 50 then
local dist = distance(FPlan[0]["APPAPT"]["lat"], FPlan[0]["APPAPT"]["lon"], values["GPSlat"], values["GPSlon"])

if get(APR) == 0 then
if dist <= 30 and dist > 29.5 then --and toto == 0 then -- patch toto 30072014
set(APR, 1)
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "PRESS ALT TO SET BARO")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
values["autoscale"] = 1
end
if values["activeWPT"]["active"] == FPlan[0]["APPMAP"] - 2 and values["dist"] <= 3 and values["MSGSTAT"][2] == 0 then

table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "ARM GPS APPROACH")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
values["MSGSTAT"][2] = 1
end


elseif get(APR) == 1 then
if values["autoscale"] == 0 then
if dist <= 30 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "PRESS ALT TO SET BARO")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
values["autoscale"] = 1
end
end

if get(GPSmode) == 1 and values["activeWPT"]["active"] == FPlan[0]["APPMAP"] - 2 then
local CRS = values["bearing"] - values["GPSTRK"]
if CRS < -180 then CRS = CRS + 360
elseif CRS > 180 then CRS = CRS - 360 end
if (CRS > -90 or CRS < 90 ) and values["dist"] <= 2 then
set(APR, 2)

end
end
elseif get(APR) == 2 then
if values["activeWPT"]["active"] == FPlan[0]["APPMAP"] - 2 then
values["scalefactor"] = round(values["dist"] * 0.7 + 0.3, 2)
elseif values["activeWPT"]["active"] > FPlan[0]["APPMAP"] - 2 then
values["scalefactor"] = 0.3
end
--OBS: Back to ARM
if get(GPSmode) == 2 then
set(APR, 1)
values["scalefactor"] = 1
end
end
end


if get(APR) == 0 and values["autoscale"] ~= 0 then
values["scalefactor"] = 5
values["autoscale"] = 0
end

if values["autoscale"] == 1 and values["scalefactor"] > 1 then
values["scalefactor"] = values["scalefactor"] - (4 / 30 * passed)
if values["scalefactor"] < 1 then values["scalefactor"] = 1 end
end



if values["warnnum"] > 0 then
if isSamplePlaying(alert) == false then
values["warnnum"] = values["warnnum"] - 1
--sasl.al.playSample(alert, false)
end
end

if not values["date"] then
values["time"]["hour"] = get(hourin)
values["time"]["minute"] = get(minutein)
values["time"]["second"] = get(secondin)
values["date"] = {}
values["date"]["days"] = get(dayin)
values["date"]["month"] = get(monthin)
values["date"]["year"] = tonumber(os.date("%y"))
end
if not values["initlat"] then
values["initlat"] = get(LATin)
values["initlon"] = get(LONin)
end

--if the HSI and the GPS are interfaced, we synchronize
if values["HSIinterf"] >= 1 then
if values["NAVSYNC"] == 1 then
if values["HSIOBS"] ~= get(HSIOBS) then
values["HSIOBS"] = get(HSIOBS)
set(NAVOBS, values["HSIOBS"])
elseif values["HSIOBS"] ~= get(NAVOBS) then
values["HSIOBS"] = get(NAVOBS)
set(HSIOBS, values["HSIOBS"])
end
else
values["HSIOBS"] = get(HSIOBS)
end
end

if get(GPSmode) == 2 and values["activeWPT"][2]~=nil then
local old = values["activeWPT"][2]
local active = values["activeWPT"]["active"]
values["activeWPT"] = {}
values["activeWPT"]["length"] = 2
values["activeWPT"]["active"] = active
values["activeWPT"][2] = old
local new = {}
--the ident tells it's direct
new["ident"] = "     "
local cour = values["HSIOBS"] - 180 - get(MAGVARin) -- getmagvar(values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]) --error if fpln is deleted while in obs fix in fplan delete
--For VORs, we use the published magvar.
if values["activeWPT"][2]["types"] == 1 and get(GPSmode) == 2 then
cour = values["HSIOBS"] - 180 + values["activeWPT"][2]["magvar"]
end
new["lat"], new["lon"] = raddist(old["lat"], old["lon"], cour, 1500)
values["activeWPT"][1] = new




end

if get(OBSreq) == 1 then
set(GPSmode, 1)
set(OBSreq, 0)
if values["tofrom"] == 1 then
local new = {}
local active = values["activeWPT"]["active"]
--We bring back the FPLN, but with a direct from a new position
values["direct"] = values["activeWPT"][2]
if FPlan[0][2] ~= nil then
values["activeWPT"] = table.copy(FPlan[0])
end
values["activeWPT"]["active"] = active
new["ident"] = "    $"

local cour = values["HSIOBS"]-180- get(MAGVARin) --getmagvar(values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
--For VORs, we use the published magvar.
if values["activeWPT"][2]["types"] == 1 and get(GPSmode) == 2 then
cour = values["HSIOBS"] - 180 + values["activeWPT"][2]["magvar"]
end
new["lat"], new["lon"] = raddist(values["direct"]["lat"], values["direct"]["lon"], cour, values["dist"])

local num = FPlan[0]["length"] - values["activeWPT"]["length"] + 1
--while num <= FPlan[0]["length"] do
--if FPlan[0][num]["types"] == values["direct"]["types"] and FPlan[0][num]["numi"] == values["direct"]["numi"] then
local found = 0
values["activeWPT"] = table.copy(FPlan[0])
values["activeWPT"]["active"] = 0
--end
--end
while found == 0 do
if values["activeWPT"]["length"] > 0 then
values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
if values["activeWPT"][1]["types"] == values["direct"]["types"] and values["activeWPT"][1]["ident"] == values["direct"]["ident"] and values["activeWPT"][1]["lat"] == values["direct"]["lat"] then
table.insert(values["activeWPT"], 1, new)
values["activeWPT"]["length"] = values["activeWPT"]["length"] + 1
--values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
found = 1
--if this is the case, we can rewrite active
else
--if the waypoint is not the same, we remove it
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = values["activeWPT"]["length"] - 1
end
else
values["activeWPT"]["length"] = 2
table.insert(values["activeWPT"], 1, new)
table.insert(values["activeWPT"], 2, values["direct"])
values["activeWPT"]["active"] = 0
found = 1
end
end
else
--else we rejoin the FPLN normally
activateFPLN0()
end

--if values["tofrom"] == 1 then
--values["DTK"] = values["HSIOBS"]
--else
--values["DTK"] = course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
--end

elseif get(OBSreq) == 2 then
set(OBSreq, 0)
if values["activeWPT"]["length"] >= 2 then
set(GPSmode, 2)
if values["HSIinterf"] ~= 1 then
values["HSIOBS"] = values["DTK"]
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
else
values["statusmessage"] = "NO#ACT#WPT#"
values["statustimer"] = 5
end
end
if get(APR) == 1 then
if FPlan[0]["APPstart"] > 50 then
set(APR, 0)
values["statusmessage"] = "NO#APPROACH"
values["statustimer"] = 5
end
end
--if rpage == -100 then
--#########################################################################This is the welcome page
if rpage > - 5 then
cagevisible = 1
end
values["scaleline"] = ""


if rpage == -5 then
-- if values["primary"] == 1 then
-- -- commandOnce(findCommand("sim/FMS/clear"))
-- set(overrideGPS, 1)
-- end
controls["rCRSR"] = 0
cagevisible = 0

gline[1] = " GPS             ORS 20"
gline[2] = " c1994 ALLIEDSIGNAL INC"

gline[3] = values["welcome1"]
gline[4] = values["welcome2"]
gline[5] = values["welcome3"]
gline[6] = values["welcome4"]

bline[3] = ""
bline[4] = ""
bline[5] = ""
bline[6] = ""
gline[7] = ""
bline[7] = "#SELF#TEST#IN#PROGRESS#"
controls["rknobs"] = 0
controls["rknobl"] = 0

if controls["lCRSR"] == 1 then
--  values["MSGENT"] = 2
values["timer"] = 99
if controls["lselect"] == 0 then
values["welcome1"] = editvalue(4, "l", values["welcome1"])
gline[3] = values["lgstring"]
bline[3] = values["lbstring"]
else
gline[3] = values["welcome1"]
bline[3] = ""
end
if controls["lselect"] == 1 then
values["welcome2"] = editvalue(4, "l", values["welcome2"])
gline[4] = values["lgstring"]
bline[4] = values["lbstring"]
else
gline[4] = values["welcome2"]
bline[4] = ""
end
if controls["lselect"] == 2 then
values["welcome3"] = editvalue(4, "l", values["welcome3"])
gline[5] = values["lgstring"]
bline[5] = values["lbstring"]
else
gline[5] = values["welcome3"]
bline[5] = ""
end
if controls["lselect"] == 3 then
values["welcome4"] = editvalue(4, "l", values["welcome4"])
gline[6] = values["lgstring"]
bline[6] = values["lbstring"]
else
gline[6] = values["welcome4"]
bline[6] = ""
end
if controls["lselect"] < 0 then controls["lselect"] = 3
elseif controls["lselect"] > 3 then controls["lselect"] = 0 end
elseif values["timer"] > 50 then
values["timer"] = 0
end
controls["rknobs"] = 0
controls["rknobl"] = 0

if values["timer"] > 0 then
values["timer"] = values["timer"] - passed
else
values["GPSTurnons"] = values["GPSTurnons"] + 1
sorttable(0)
values["APTpage"] = {}
values["APTpage"][1] = WPTtable[1]
values["APTpage"]["num"] = 1
nextWPT(values["APTpage"], 0, 1)
values["VORpage"] = {}
values["VORpage"][1] = WPTtable[1]
values["VORpage"]["num"] = 1
nextWPT(values["VORpage"], 1, 1)

values["NDBpage"] = {}
values["NDBpage"][1] = WPTtable[1]
values["NDBpage"]["num"] = 1
nextWPT(values["NDBpage"], 2, 1)

values["INTpage"] = {}
values["INTpage"][1] = WPTtable[1]
values["INTpage"]["num"] = 1
nextWPT(values["INTpage"], 3, 1)

values["SUPpage"] = {}
values["SUPpage"][1] = WPTtable[1]
values["SUPpage"]["num"] = 1
nextWPT(values["SUPpage"], 4, 1)

bline[3] = ""
bline[4] = ""
bline[5] = ""
bline[6] = ""
controls["lCRSRchar"] = 0
rpage = -4
controls["rCRSRchar"] = 0
controls["rselect"] = 3
controls["rCRSR"]  = 1
end

--#########################################################################This is the selftest page
--Bug: When local time is < 0 then date still remains unchaged
--Bug: Altimer displays 99 when it should show 100
elseif rpage == -4 then
controls["rCRSR"]  = 1
controls["lCRSR"]  = 0
set(MD41test, 1)
gline[1] = "DIS  34.5NM|DATE/TIME"
controls["lknobs"] = 0
controls["lknobl"] = 0
gline[7] = "     "
if controls["rselect"] == 0 then
editvalue(2, "r", values["date"])
elseif controls["rselect"] == 1 then
editvalue(3, "r", values["time"])
end


if controls["rknobl"] == -1 then
controls["rselect"] = controls["rselect"] - 1
controls["rknobl"] = 0
elseif controls["rknobl"] == 1 then
controls["rselect"] = controls["rselect"] + 1
controls["rknobl"] = 0
elseif controls["rknobs"] == -1 then
if controls["rselect"] == 2 then
values["time"]["zone"] = values["time"]["zone"] - 1
if values["time"]["zone"] < 1 then values["time"]["zone"] = 19 end
elseif controls["rselect"] == 3 then
values["baro"] = values["baro"] -100
elseif controls["rselect"] == 4 then
local y = 3
if string.len(values["baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["baro"], y, y)) - 1
if x < 1 then x = 10 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
elseif controls["rselect"] == 5 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["baro"], y, y)) - 1
if x < 1 then x = 10 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
if controls["rselect"] == 2 then
values["time"]["zone"] = values["time"]["zone"] + 1
if values["time"]["zone"] > 19 then values["time"]["zone"] = 1 end
elseif controls["rselect"] == 3 then
values["baro"] = values["baro"] + 100
elseif controls["rselect"] == 4 then
local y = 3
if string.len(values["baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["baro"], y, y)) + 1
if x > 10 then x = 1 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
elseif controls["rselect"] == 5 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end

x = string2value(string.sub(values["baro"], y, y)) + 1
if x > 10 then x = 1 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
end
controls["rknobs"] = 0
elseif controls["ENT"] == 1 and controls["rselect"] == 6 then
rpage = -3
set(MD41test, 0)
end



if controls["rselect"] < 0 then controls["rselect"] = 6
elseif controls["rselect"] > 6 then controls["rselect"] = 0
end



if controls["rselect"] == 0 and controls["rCRSRchar"] ~= 0 then
if values["GPSnum"] ~= 0 then
values["editvalue"] = nil
controls["rCRSRchar"] = 0
end
elseif controls["rselect"] == 1 and controls["rCRSRchar"] ~= 0 then
if values["GPSnum"] ~= 0 then
values["editvalue"] = nil
controls["rCRSRchar"] = 0
end
end




if controls["rselect"] == 0 then
gline[2] = "qqqqqjqÉÀqq|  " .. values["rgstring"]
bline[2] = "              " .. values["rbstring"]
else
local months = numbertomonth(values["date"]["month"])
gline[2] = string.format("qqqqqjqÉÀqq|  %02d %s %02d", values["date"]["days"], months, values["date"]["year"])
bline[2] = ""
end



values["time"]["zonename"], values["time"]["zonediff"], values["time"]["zonenamel"] = timezone(values["time"]["zone"])

if controls["rselect"] == 2 then
bline[3] = string.format("                    %s", values["time"]["zonename"])
else
bline[3] = ""
end
if values["HSIinterf"] == 2 then
set(HSIOBS, 315)
if values["NAVSYNC"] == 1 then
set(NAVOBS, 315)
end
end

if controls["rselect"] == 1 then
if values["HSIinterf"] == 0 then
gline[3] = string.format("OBS IN ---*|%s:%02d%s", values["rgstring"], values["time"]["second"], values["time"]["zonename"])
else
gline[3] = string.format("OBS IN %03d*|%s:%02d%s", values["HSIOBS"], values["rgstring"], values["time"]["second"], values["time"]["zonename"])
end
bline[3] = "            " .. values["rbstring"]
else
local hour2 = values["time"]["hour"] + values["time"]["zonediff"]
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
if values["HSIinterf"] == 0 then
gline[3] = string.format("OBS IN ---*|%02d:%02d:%02d%s", hour2, values["time"]["minute"], values["time"]["second"], values["time"]["zonename"])
else
gline[3] = string.format("OBS IN %03d*|%02d:%02d:%02d%s", values["HSIOBS"], hour2, values["time"]["minute"], values["time"]["second"], values["time"]["zonename"])

end

end

gline[4] = string.format("   OUT 315*|ALT %05dFT", IndALT)
if values["barounit"] == 0 then
if controls["rselect"] == 3 then
bline[5] = string.format("                 %s",  string.sub(values["baro"], 1, 2))
else
bline[5] = ""
end

if controls["rselect"] == 4 then
bline[5] = string.format("                    %s",  string.sub(values["baro"], 3, 3))
end

if controls["rselect"] == 5 then
bline[5] = string.format("                     %s",  string.sub(values["baro"], 4, 4))
end

gline[5] = string.format("RMI    130*|BARO:%s.%s@",  string.sub(values["baro"], 1, 2), string.sub(values["baro"], 3, 4))
else
if controls["rselect"] == 3 then
if string.len(values["baro"]) == 4 then
bline[5] = string.format("                 %s",  string.sub(values["baro"], 1, 2))
else
bline[5] = string.format("                  %s",  string.sub(values["baro"], 1, 1))
end
else
bline[5] = ""
end

if controls["rselect"] == 4 then
if string.len(values["baro"]) == 4 then
bline[5] = string.format("                   %s",  string.sub(values["baro"], 3, 3))
else
bline[5] = string.format("                   %s",  string.sub(values["baro"], 2, 2))
end
end

if controls["rselect"] == 5 then
if string.len(values["baro"]) == 4 then
bline[5] = string.format("                    %s",  string.sub(values["baro"], 4, 4))
else
bline[5] = string.format("                    %s",  string.sub(values["baro"], 3, 3))
end
end
gline[5] = string.format("RMI    130*|BARO:%sMB",  makelength(values["baro"], 4, 1))
end



if controls["rselect"] == 6 then
values["MSGENT"] = 2
if values["flash"] == 1 then
bline[6] = "              APPROVE?"
else
bline[6] = ""
end
else
bline[6] = ""
end

gline[6] = "ANNUN    ON|  APPROVE?"

set(GPSDMEout, 34.5)
if values["NAVSYNC"] == 1 then
set(NAVDMEout, 34.5)
end


--#########################################################################This is the database page
elseif rpage == -3 then
if values["soundtest"] == 0 then
values["warnnum"] = 5
values["soundtest"] = 1
end
controls["rCRSR"]  = 1
controls["lCRSR"]  = 0
values["MSGENT"] = 2

controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rselect"] = 0

gline[1] = "     INTERNATIONAL"
gline[7] = "     "


local month2 = string.sub(nav_cycle, 15, 17)
local days = tonumber(string.sub(nav_cycle, 13, 14))
local year2 = tonumber(string.sub(nav_cycle, 19, 20))

days2 = monthstodays(month2, days)
local days3 = monthstodays(numbertomonth(values["date"]["month"]), values["date"]["days"])
local expired = 0
-- print(days2, days3)
if year2 < values["date"]["year"] then
expired = 1
elseif year2 == values["date"]["year"] and days2 < days3 then
expired = 1
end
gline[3] = string.format("       %02d %s %02d", days, month2, year2)

if expired == 0 then
gline[2] = "   DATA BASE EXPIRES"
gline[4] = ""
gline[5] = ""
else
gline[2] = "   DATA BASE EXPIRED"
gline[4] = "   ALL DATA MUST BE"
gline[5] = " CONFIRMED BEFORE USE"
end
gline[6] = "     ACKNOWLEDGE?"

if values["flash"] == 1 then
bline[6] = "     ACKNOWLEDGE?"

else
bline[6] = ""
end

if controls["ENT"] == 1 then
if values["primary"] == 1 then
set(overrideGPS, 1)
end
rpage = 6
local test = {}
test["length"] = 0
if values["lasttype"] ~= nil then
test = enterident(values["lastident"], values["lasttype"], 0, 5, 0)
end
if test["length"] > 0 then
if values["lasttype"] == 0 then
values["APTpage"] = test
rsubpage[6] = 40
elseif values["lasttype"] == 1 then
rpage = 7
values["VORpage"] = test
elseif values["lasttype"] == 2 then
rpage = 8
values["NDBpage"] = test
elseif values["lasttype"] == 3 then
rpage = 9
values["INTpage"] = test
elseif values["lasttype"] == 4 then
rpage = 10
values["SUPpage"] = test
end
if values["lasttype"] ~= 0 then
test = enterident(values["lastAPT"], 0, 0, 4, 0)
values["APTpage"] = test
end
-- end
else
test = enterident(values["lastAPT"], 0, 0, 4, 0)
values["APTpage"] = test
end
lpage = 4
lsubpage[4] = 20
-- rpage = 5
-- rsubpage[5] = 50
controls["rCRSR"]  = 0
end
end
--*************************************************************************Lpage begins here
--#########################################################################This is the TRI page
if lpage == 1 then
--all working apart from ESA
if lsubpage[1] == 0 then

if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 2
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 2 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["TRI0TAS"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRI0TAS"] = replaceChar(values["TRI0TAS"],controls["lCRSRchar"],value2string(x))
values["TRI1SPD"] = -1
values["TRI3SPD"] = -1
values["TRI5SPD"] = -1
elseif controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
values["TRI0WHead"] = values["TRI0WHead"] - 10
if values["TRI0WHead"] < 0 then values["TRI0WHead"] = values["TRI0WHead"] + 360 end
values["TRI0WHead"] = makelength(values["TRI0WHead"], 3, 2)
else
x = string2value(string.sub(values["TRI0WHead"], 3, 3)) - 1
if x < 1 then x = 10 end
values["TRI0WHead"] = replaceChar(values["TRI0WHead"],3,value2string(x))
end
values["TRI1SPD"] = -1
values["TRI3SPD"] = -1
values["TRI5SPD"] = -1
elseif controls["lselect"] == 2 then
x = string2value(string.sub(values["TRI0WSpeed"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRI0WSpeed"] = replaceChar(values["TRI0WSpeed"],controls["lCRSRchar"],value2string(x))
values["TRI1SPD"] = -1
values["TRI3SPD"] = -1
values["TRI5SPD"] = -1
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["TRI0TAS"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRI0TAS"] = replaceChar(values["TRI0TAS"],controls["lCRSRchar"],value2string(x))
values["TRI1SPD"] = -1
values["TRI3SPD"] = -1
values["TRI5SPD"] = -1
elseif controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
values["TRI0WHead"] = values["TRI0WHead"] + 10
if values["TRI0WHead"] > 359 then values["TRI0WHead"] = values["TRI0WHead"] - 360 end
values["TRI0WHead"] = makelength(values["TRI0WHead"], 3, 2)
else
x = string2value(string.sub(values["TRI0WHead"], 3, 3)) + 1
if x > 10 then x = 1 end
values["TRI0WHead"] = replaceChar(values["TRI0WHead"],3,value2string(x))
end
values["TRI1SPD"] = -1
values["TRI3SPD"] = -1
values["TRI5SPD"] = -1
elseif controls["lselect"] == 2 then
x = string2value(string.sub(values["TRI0WSpeed"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRI0WSpeed"] = replaceChar(values["TRI0WSpeed"],controls["lCRSRchar"],value2string(x))
values["TRI1SPD"] = -1
values["TRI3SPD"] = -1
values["TRI5SPD"] = -1
end
controls["lknobs"] = 0
end
end


gline[1] = " TRIP PLAN |"
gline[2] = " ESTIMATES |"
gline[3] = "           |"
gline[4] = "TAS:  " .. values["TRI0TAS"] .. "kt|"
bline[4]  = "            "

if controls["lselect"] == 0 and controls["lCRSR"]  == 1 then
bline[4] =  highlightchar(gline[4], controls["lCRSRchar"] + 6)
end


gline[5] = "WIND: " .. values["TRI0WHead"] .. "*~|"
bline[5]  = "            "
if controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
bline[5] =  "      " .. string.sub(gline[5], 7, 8) .. "    "
else
bline[5] =  highlightchar(gline[5], 9)
end
end


gline[6] = "      " .. values["TRI0WSpeed"] .. "kt|"
bline[6]  = "            "

if controls["lselect"] == 2 then
bline[6] =  highlightchar(gline[6], controls["lCRSRchar"] + 6)
end
gline[7] = "TRI 0"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "

elseif lsubpage[1] == 10 then
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 and controls["lselect"] > 0 then
if controls["lselect"] == 3 then
controls["lCRSRchar"] = 6
else
controls["lCRSRchar"] = 1
end
end
if controls["lselect"] == 0 then
values["TRI1"][2] = editvalue(1, "l", values["TRI1"][2])
end

if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 3 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 6
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 1 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 6 then
controls["lselect"] = 3
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 3 and controls["lCRSRchar"] > 6 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 1 then
x = string2value(string.sub(values["TRI1SPD"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRI1SPD"] = replaceChar(values["TRI1SPD"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIFF"], 7, 7)) - 1
if x < 1 then x = 10 end
values["TRIFF"] = replaceChar(values["TRIFF"],7,value2string(x))
else
x = string2value(string.sub(values["TRIFF"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRIFF"] = replaceChar(values["TRIFF"],controls["lCRSRchar"],value2string(x))
end
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIRES"], 7, 7)) - 1
if x < 1 then x = 10 end
values["TRIRES"] = replaceChar(values["TRIRES"],7,value2string(x))
else
x = string2value(string.sub(values["TRIRES"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRIRES"] = replaceChar(values["TRIRES"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then

if controls["lselect"] == 1 then
x = string2value(string.sub(values["TRI1SPD"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRI1SPD"] = replaceChar(values["TRI1SPD"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIFF"], 7, 7)) + 1
if x > 10 then x = 1 end
values["TRIFF"] = replaceChar(values["TRIFF"],7,value2string(x))
else
x = string2value(string.sub(values["TRIFF"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRIFF"] = replaceChar(values["TRIFF"],controls["lCRSRchar"],value2string(x))
end
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIRES"], 7, 7)) + 1
if x > 10 then x = 1 end
values["TRIRES"] = replaceChar(values["TRIRES"],7,value2string(x))
else
x = string2value(string.sub(values["TRIRES"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRIRES"] = replaceChar(values["TRIRES"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
end
end
if controls["lselect"] < 0 then controls["lselect"] = 3 end

values["TRI1"][1]["lat"] = values["GPSlat"]
values["TRI1"][1]["lon"] = values["GPSlon"]

if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[1] = values["TRI1"][1]["ident"] .. "-" .. values["lgstring"] .. "|"
bline[1] = "      " .. values["lbstring"] .. " "
else
gline[1] = values["TRI1"][1]["ident"] .. "-" .. values["TRI1"][2]["ident"] .. "|"
bline[1] = "            "
end

if values["TRI1"][2]["ident"] == "     " then
if values["TRI1SPD"] == -1 then
values["TRI1SPD"] = "175"
end
gline[2] = "----nm ---*|"
gline[3] = values["TRI1SPD"] .. "kt --:--|"
bline[3] = "            "
if controls["lselect"] == 1 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"])
end
gline[6] = "F REQ ---.-|"
else
local dist = distance(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"], values["TRI1"][2]["lat"], values["TRI1"][2]["lon"])
local crs = course(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"], values["TRI1"][2]["lat"], values["TRI1"][2]["lon"])
gline[2] = string.format("%snm %03d*|", makelength(round(dist),4, 1),crs)
if values["TRI1SPD"] == -1 or values["lreturn"] == 1 then
--local SWC=(values["TRI0WSpeed"]/values["TRI0TAS"])*sin((values["TRI0WHead"]-crs-getmagvar(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"]))*pi/180)
local SWC=(values["TRI0WSpeed"]/values["TRI0TAS"])*sin((values["TRI0WHead"]-crs)*pi/180)

if (math.abs(SWC)>1) then
else
values["TRI1SPD"]=round(values["TRI0TAS"]*math.sqrt(1-SWC^2)-values["TRI0WSpeed"]*cos((values["TRI0WHead"]-crs)*pi/180))
--  values["TRI1SPD"]=round(values["TRI0TAS"]*math.sqrt(1-SWC^2)-values["TRI0WSpeed"]*cos((values["TRI0WHead"]-crs-getmagvar(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"]))*pi/180))
end
end

gline[3] = values["TRI1SPD"] .. "kt " .. convtime (dist / tonumber(values["TRI1SPD"])*3600) .. "|"
bline[3] = "            "
if controls["lselect"] == 1 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"])
end
local FREQ = dist / tonumber(values["TRI1SPD"])*tonumber(values["TRIFF"])+tonumber(values["TRIRES"])
if FREQ > 100 then
gline[6] = "F REQ" .. makelength(round(FREQ), 6, 1) .. "|"
else
gline[6] = "F REQ" .. makelength(float(FREQ, 1), 6, 1) .. "|"
end
end
gline[4] = "FF: " .. values["TRIFF"] .. "|"
bline[4] = "            "
if controls["lselect"] == 2 then
if controls["lCRSRchar"] == 6 then
bline[4] =  highlightchar(gline[4], 11)
else
bline[4] =  highlightchar(gline[4], controls["lCRSRchar"] + 4)
end
end

gline[5] = "RES:" .. values["TRIRES"] .. "|"
bline[5] = "            "
if controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
bline[5] =  highlightchar(gline[5], 11)
else
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 4)
end
end


gline[7] = "TRI 1"

bline[2] = "            "
bline[6] = "            "
elseif lsubpage[1] == 20 then


if controls["lCRSR"]  == 1 then
values["TRI1"][2] = editvalue(1, "l", values["TRI1"][2])
gline[1] = values["TRI1"][1]["ident"] .. "-" .. values["lgstring"] .. "|"
bline[1] = "      " .. values["lbstring"] .. " "
if values["lreturn"] == 1 then
values["TRI1SPD"] = -1
end
else
gline[1] = values["TRI1"][1]["ident"] .. "-" .. values["TRI1"][2]["ident"] .. "|"
bline[1] = "            "

end
controls["lselect"] = 0
if values["TRI1"][2]["ident"] == "     " then
gline[2] = "ESA -----ft|"

else
gline[2] = "ESA " .. getMSA(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"], values["TRI1"][2]["lat"], values["TRI1"][2]["lon"]) .. "ft|"
end
gline[3] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "TRI 2"

bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[1] == 30 then
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 and controls["lselect"] > 1 then
if controls["lselect"] == 4 then
controls["lCRSRchar"] = 6
else
controls["lCRSRchar"] = 1
end
end
if controls["lselect"] == 0 then
values["TRI3"][1] = editvalue(1, "l", values["TRI3"][1])
elseif controls["lselect"] == 1 then
values["TRI3"][2] = editvalue(1, "l", values["TRI3"][2])
end

if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 0
elseif controls["lselect"] == 3 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 4 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 3
controls["lCRSRchar"] = 6
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 2 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 3
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 3 and controls["lCRSRchar"] > 6 then
controls["lselect"] = 4
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 4 and controls["lCRSRchar"] > 6 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 2 then
x = string2value(string.sub(values["TRI3SPD"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRI3SPD"] = replaceChar(values["TRI3SPD"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIFF"], 7, 7)) - 1
if x < 1 then x = 10 end
values["TRIFF"] = replaceChar(values["TRIFF"],7,value2string(x))
else
x = string2value(string.sub(values["TRIFF"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRIFF"] = replaceChar(values["TRIFF"],controls["lCRSRchar"],value2string(x))
end
elseif controls["lselect"] == 4 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIRES"], 7, 7)) - 1
if x < 1 then x = 10 end
values["TRIRES"] = replaceChar(values["TRIRES"],7,value2string(x))
else
x = string2value(string.sub(values["TRIRES"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRIRES"] = replaceChar(values["TRIRES"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then

if controls["lselect"] == 2 then
x = string2value(string.sub(values["TRI3SPD"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRI3SPD"] = replaceChar(values["TRI3SPD"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIFF"], 7, 7)) + 1
if x > 10 then x = 1 end
values["TRIFF"] = replaceChar(values["TRIFF"],7,value2string(x))
else
x = string2value(string.sub(values["TRIFF"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRIFF"] = replaceChar(values["TRIFF"],controls["lCRSRchar"],value2string(x))
end
elseif controls["lselect"] == 4 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIRES"], 7, 7)) + 1
if x > 10 then x = 1 end
values["TRIRES"] = replaceChar(values["TRIRES"],7,value2string(x))
else
x = string2value(string.sub(values["TRIRES"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRIRES"] = replaceChar(values["TRIRES"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
end
end
if controls["lselect"] < 0 then controls["lselect"] = 4 end

if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[1] = values["lgstring"] .. "-" .. values["TRI3"][2]["ident"] .. "|"
bline[1] = values["lbstring"] .. "       "
elseif controls["lselect"] == 1 then
gline[1] = values["TRI3"][1]["ident"] .. "-" .. values["lgstring"] .. "|"
bline[1] = "      " .. values["lbstring"] .. " "
else
gline[1] = values["TRI3"][1]["ident"] .. "-" .. values["TRI3"][2]["ident"] .. "|"
bline[1] = "            "
end

if values["TRI3"][1]["ident"] == "     " or values["TRI3"][2]["ident"] == "     " then
if values["TRI3SPD"] == -1 then
values["TRI3SPD"] = "175"
end
gline[2] = "----nm ---*|"
gline[3] = values["TRI3SPD"] .. "kt --:--|"
bline[3] = "            "
if controls["lselect"] == 2 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"])
end
gline[6] = "F REQ ---.-|"
else
local dist = distance(values["TRI3"][1]["lat"], values["TRI3"][1]["lon"], values["TRI3"][2]["lat"], values["TRI3"][2]["lon"])
local crs = course(values["TRI3"][1]["lat"], values["TRI3"][1]["lon"], values["TRI3"][2]["lat"], values["TRI3"][2]["lon"])
gline[2] = string.format("%snm %03d*|", makelength(round(dist),4, 1),crs)
if values["TRI3SPD"] == -1 or values["lreturn"] == 1 then
--local SWC=(values["TRI0WSpeed"]/values["TRI0TAS"])*sin((values["TRI0WHead"]-crs-getmagvar(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"]))*pi/180)
local SWC=(values["TRI0WSpeed"]/values["TRI0TAS"])*sin((values["TRI0WHead"]-crs)*pi/180)

if (math.abs(SWC)>1) then
else
values["TRI3SPD"]=round(values["TRI0TAS"]*math.sqrt(1-SWC^2)-values["TRI0WSpeed"]*cos((values["TRI0WHead"]-crs)*pi/180))
--  values["TRI1SPD"]=round(values["TRI0TAS"]*math.sqrt(1-SWC^2)-values["TRI0WSpeed"]*cos((values["TRI0WHead"]-crs-getmagvar(values["TRI1"][1]["lat"], values["TRI1"][1]["lon"]))*pi/180))
end
end

gline[3] = values["TRI3SPD"] .. "kt " .. convtime (dist / tonumber(values["TRI3SPD"])*3600) .. "|"
bline[3] = "            "
if controls["lselect"] == 2 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"])
end
local FREQ = dist / tonumber(values["TRI3SPD"])*tonumber(values["TRIFF"])+tonumber(values["TRIRES"])
if FREQ > 100 then
gline[6] = "F REQ" .. makelength(round(FREQ), 6, 1) .. "|"
else
gline[6] = "F REQ" .. makelength(float(FREQ, 1), 6, 1) .. "|"
end
end
gline[4] = "FF: " .. values["TRIFF"] .. "|"
bline[4] = "            "
if controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
bline[4] =  highlightchar(gline[4], 11)
else
bline[4] =  highlightchar(gline[4], controls["lCRSRchar"] + 4)
end
end

gline[5] = "RES:" .. values["TRIRES"] .. "|"
bline[5] = "            "
if controls["lselect"] == 4 then
if controls["lCRSRchar"] == 6 then
bline[5] =  highlightchar(gline[5], 11)
else
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 4)
end
end


gline[7] = "TRI 3"

bline[2] = "            "
bline[6] = "            "
elseif lsubpage[1] == 40 then


if controls["lCRSR"]  == 1 then
if controls["lselect"] == 0 then
values["TRI3"][1] = editvalue(1, "l", values["TRI3"][1])
elseif controls["lselect"] == 1 then
values["TRI3"][2] = editvalue(1, "l", values["TRI3"][2])
end
if values["lreturn"] == 1 and values["TRI3"][1]["ident"] ~= "     " and values["TRI3"][2]["ident"] ~= "     " then
values["TRI3SPD"] = -1
end

end
if controls["lselect"] < 0 then controls["lselect"] = 1
elseif controls["lselect"] > 1 then controls["lselect"] = 0 end

if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[1] = values["lgstring"] .. "-" .. values["TRI3"][2]["ident"] .. "|"
bline[1] = values["lbstring"] .. "       "
elseif controls["lselect"] == 1 then
gline[1] = values["TRI3"][1]["ident"] .. "-" .. values["lgstring"] .. "|"
bline[1] = "      " .. values["lbstring"] .. " "
else
gline[1] = values["TRI3"][1]["ident"] .. "-" .. values["TRI3"][2]["ident"] .. "|"
bline[1] = "            "
end



if values["TRI3"][2]["ident"] == "     " then
gline[2] = "ESA -----ft|"
else
gline[2] = "ESA " .. getMSA(values["TRI3"][1]["lat"], values["TRI3"][1]["lon"], values["TRI3"][2]["lat"], values["TRI3"][2]["lon"]) .. "ft|"
end
gline[3] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "TRI 4"

bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[1] == 50 then
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then  controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 3
controls["lCRSRchar"] = 6
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 3 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 6
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 6 then
controls["lselect"] = 3
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 3 and controls["lCRSRchar"] > 6 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
values["TRI5num"] = values["TRI5num"] - 1
if values["TRI5num"] < 0 then values["TRI5num"] = 25 end
values["lreturn"] = 1
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["TRI5SPD"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRI5SPD"] = replaceChar(values["TRI5SPD"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIFF"], 7, 7)) - 1
if x < 1 then x = 10 end
values["TRIFF"] = replaceChar(values["TRIFF"],7,value2string(x))
else
x = string2value(string.sub(values["TRIFF"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRIFF"] = replaceChar(values["TRIFF"],controls["lCRSRchar"],value2string(x))
end
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIRES"], 7, 7)) - 1
if x < 1 then x = 10 end
values["TRIRES"] = replaceChar(values["TRIRES"],7,value2string(x))
else
x = string2value(string.sub(values["TRIRES"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["TRIRES"] = replaceChar(values["TRIRES"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
values["TRI5num"] = values["TRI5num"] + 1
if values["TRI5num"] > 25 then values["TRI5num"] = 0 end
values["lreturn"] = 1
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["TRI5SPD"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRI5SPD"] = replaceChar(values["TRI5SPD"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIFF"], 7, 7)) + 1
if x > 10 then x = 1 end
values["TRIFF"] = replaceChar(values["TRIFF"],7,value2string(x))
else
x = string2value(string.sub(values["TRIFF"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRIFF"] = replaceChar(values["TRIFF"],controls["lCRSRchar"],value2string(x))
end
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
x = string2value(string.sub(values["TRIRES"], 7, 7)) + 1
if x > 10 then x = 1 end
values["TRIRES"] = replaceChar(values["TRIRES"],7,value2string(x))
else
x = string2value(string.sub(values["TRIRES"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["TRIRES"] = replaceChar(values["TRIRES"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
end
end


if FPlan[values["TRI5num"]]["length"] < 2 then
if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[1] = "FP" .. makelength(values["TRI5num"], 2, 1) .. " ----nm|"
bline[1] = "  " .. makelength(values["TRI5num"], 2, 1) .. "        "
else
gline[1] = "FP" .. makelength(values["TRI5num"], 2, 1) .. " ----nm|"
bline[1] = "            "
end
if values["TRI5SPD"] == -1 then
values["TRI5SPD"] = "175"
end
gline[2] = "     -     |"
gline[3] = values["TRI5SPD"] .. "kt --:--|"
bline[3] = "            "
if controls["lselect"] == 1 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"])
end
gline[6] = "F REQ ---.-|"
else
local dist = distanceFPLN(FPlan[values["TRI5num"]], 1, FPlan[values["TRI5num"]]["length"], 1)

--  local dist = distance(FPlan[values["TRI5num"]][1]["lat"],FPlan[values["TRI5num"]][1]["lon"], FPlan[values["TRI5num"]][FPlan[values["TRI5num"]]["length"]]["lat"], FPlan[values["TRI5num"]][FPlan[values["TRI5num"]]["length"]]["lon"])
local crs = course(FPlan[values["TRI5num"]][1]["lat"], FPlan[values["TRI5num"]][1]["lon"], FPlan[values["TRI5num"]][FPlan[values["TRI5num"]]["length"]]["lat"], FPlan[values["TRI5num"]][FPlan[values["TRI5num"]]["length"]]["lon"])
if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[1] = "FP" .. makelength(values["TRI5num"], 2, 1) .. makelength(round(dist), 5, 1) .. "nm|"
bline[1] = "  " .. makelength(values["TRI5num"], 2, 1) .. "       "
else
gline[1] = "FP" .. makelength(values["TRI5num"], 2, 1) .. makelength(round(dist), 5, 1) .. "nm|"
bline[1] = "            "
end
gline[2] = FPlan[values["TRI5num"]][1]["ident"] .. "-" .. FPlan[values["TRI5num"]][FPlan[values["TRI5num"]]["length"]]["ident"] .. "|"
if  values["TRI5SPD"] == -1 then
local SWC=(values["TRI0WSpeed"]/values["TRI0TAS"])*sin((values["TRI0WHead"]-crs)*pi/180)

if (math.abs(SWC)>1) then
else
values["TRI5SPD"]=round(values["TRI0TAS"]*math.sqrt(1-SWC^2)-values["TRI0WSpeed"]*cos((values["TRI0WHead"]-crs)*pi/180))
end
end

gline[3] = values["TRI5SPD"] .. "kt " .. convtime (dist / tonumber(values["TRI5SPD"])*3600) .. "|"
bline[3] = "            "
if controls["lselect"] == 1 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"])
end
local FREQ = dist / tonumber(values["TRI5SPD"])*tonumber(values["TRIFF"])+tonumber(values["TRIRES"])
if FREQ > 100 then
gline[6] = "F REQ" .. makelength(round(FREQ), 6, 1) .. "|"
else
gline[6] = "F REQ" .. makelength(float(FREQ, 1), 6, 1) .. "|"
end
end
gline[4] = "FF: " .. values["TRIFF"] .. "|"
bline[4] = "            "
if controls["lselect"] == 2 then
if controls["lCRSRchar"] == 6 then
bline[4] =  highlightchar(gline[4], 11)
else
bline[4] =  highlightchar(gline[4], controls["lCRSRchar"] + 4)
end
end

gline[5] = "RES:" .. values["TRIRES"] .. "|"
bline[5] = "            "
if controls["lselect"] == 3 then
if controls["lCRSRchar"] == 6 then
bline[5] =  highlightchar(gline[5], 11)
else
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 4)
end
end


gline[7] = "TRI 5"

bline[2] = "            "
bline[6] = "            "
elseif lsubpage[1] == 60 then


if controls["lCRSR"]  == 1 then
gline[1] = "FP" .. makelength(values["TRI5num"], 2, 1) .. "       |"
bline[1] = "  " .. makelength(values["TRI5num"], 2, 1) .. "        "
controls["lknobl"] = 0
if controls["lknobs"] == -1 then
values["TRI5num"] = values["TRI5num"] - 1
if values["TRI5num"] < 0 then values["TRI5num"] = 25 end
values["TRI5SPD"] = -1
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
values["TRI5num"] = values["TRI5num"] + 1
if values["TRI5num"] > 25 then values["TRI5num"] = 0 end
values["TRI5SPD"] = -1
controls["lknobs"] = 0
end
else
gline[1] = "FP" .. makelength(values["TRI5num"], 2, 1) .. "       |"
bline[1] = "            "

end


controls["lselect"] = 0

if FPlan[values["TRI5num"]]["length"] < 2 then
gline[2] = "ESA -----ft|"
else
local wptnum = 2
local ESA = 0
while wptnum <= FPlan[values["TRI5num"]]["length"] do
local ESA1 = 0
ESA1 = getMSA(FPlan[values["TRI5num"]][wptnum-1]["lat"], FPlan[values["TRI5num"]][wptnum-1]["lon"], FPlan[values["TRI5num"]][wptnum]["lat"], FPlan[values["TRI5num"]][wptnum]["lon"])
if ESA1 ~= "-----" then
--print(wptnum, ESA1, ESA)
if tonumber(ESA1) > tonumber(ESA) then
ESA = ESA1
end
end
wptnum = wptnum + 1
end
if ESA == 0 then
gline[2] = "ESA -----ft|"
else
gline[2] = "ESA " ..  ESA .. "ft|"
end
end
gline[3] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "TRI 6"

bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
end
--#########################################################################This is the MOD page
elseif lpage == 2 then
if lsubpage[2] == 10 then
bline[6] = "            "
if controls["lCRSR"] == 1 then
bline[6] = "     " .. float(values["scalefactor"], 2) .. "   "
controls["lknobl"] = 0
if controls["lknobs"] == -1 then
if values["scalefactor"] == 0.3 then
if values["autoscale"] == 1 then
values["scalefactor"] = 1
else
values["scalefactor"] = 5
end
elseif values["scalefactor"] == 1 then
values["scalefactor"] = 0.3
else
values["scalefactor"] = 1
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if values["scalefactor"] == 0.3 then
values["scalefactor"] = 1
elseif values["scalefactor"] == 1 then
if values["autoscale"] == 1 then
values["scalefactor"] = 0.3
else
values["scalefactor"] = 5
end
else
values["scalefactor"] = 0.3
end
controls["lknobs"] = 0
end
elseif get(GPSmode) ~= 1 and controls["ENT"] == 1 then
set(GPSmode, 1)
controls["ENT"] = 0
-- if values["tofrom"] == 1 then
-- values["DTK"] = values["HSIOBS"]
-- else
-- values["DTK"] = course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
-- end

end
if get(GPSmode) == 1 then
gline[1] = "ACTIVE MODE|"
gline[2] = "           |"
else
values["MSGENT"] = 2
gline[1] = "PRESS ENT  |"
gline[2] = "TO ACTIVATE|"
end
gline[3] = "           |"
gline[4] = "LEG        |"


gline[5] = "           |"
gline[6] = "CDI:&" .. float(values["scalefactor"], 2) .. "NM|"

gline[7] = "MOD 1"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "

elseif lsubpage[2] == 20 then

bline[6] = "            "
bline[4] = "            "
if controls["lCRSR"] == 1 then
if values["HSIinterf"] == 1 or get(GPSmode) == 1 then
controls["lselect"] = 1
end
if controls["lselect"] == 0 then
bline[4] = string.format("    %03d*    ", round(values["HSIOBS"]))
elseif controls["lselect"] == 1 then

bline[6] = "     " .. float(values["scalefactor"], 2) .. "   "
end
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
values["HSIOBS"] = values["HSIOBS"] - 1
if values["HSIOBS"] < 1 then values["HSIOBS"] = values["HSIOBS"] + 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
elseif controls["lselect"] == 1 then
if values["scalefactor"] == 0.3 then
values["scalefactor"] = 5
elseif values["scalefactor"] == 1 then
values["scalefactor"] = 0.3
else
values["scalefactor"] = 1
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
values["HSIOBS"] = values["HSIOBS"] + 1
if values["HSIOBS"] > 360 then values["HSIOBS"] = values["HSIOBS"] - 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
elseif controls["lselect"] == 1 then
if values["scalefactor"] == 0.3 then
values["scalefactor"] = 1
elseif values["scalefactor"] == 1 then
values["scalefactor"] = 5
else
values["scalefactor"] = 0.3
end
end
controls["lknobs"] = 0
end
elseif get(GPSmode) ~= 2 and controls["ENT"] == 1 then
set(GPSmode, 2)



if values["activeWPT"]["length"] >= 2 then
if values["HSIinterf"] ~= 1 then
values["HSIOBS"] = values["DTK"]
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
end
controls["ENT"] = 0
end
if controls["lselect"] < 0 then controls["lselect"] = 1
elseif controls["lselect"] > 1 then controls["lselect"] = 0 end

if get(GPSmode) == 2 then
gline[1] = "ACTIVE MODE|"
gline[2] = "           |"
else
values["MSGENT"] = 2
gline[1] = "PRESS ENT  |"
gline[2] = "TO ACTIVATE|"
end
gline[3] = "           |"
if get(GPSmode) == 1 then
if values["HSIinterf"] == 1 then
gline[4] = "OBS ---*   |"
else
gline[4] = "OBS:---*   |"
end
else
if values["HSIinterf"] == 1 then
gline[4] = string.format("OBS %03d*   |", round(values["HSIOBS"]))

else
gline[4] = string.format("OBS:%03d*   |", round(values["HSIOBS"]))
end
end

gline[5] = "           |"
gline[6] = "CDI:&" .. float(values["scalefactor"], 2) .. "NM|"
gline[7] = "MOD 2"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[5] = "            "
end
--#########################################################################This is the FPL page
elseif lpage == 3 then
--this tells which number of the FPLN is actually selected
--2 actually means 1
local WPTselect = controls["lselect"]
local maxlen = FPlan[lsubpage[3]/10]["length"]
if FPlan[lsubpage[3]/10]["SIDstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["STARstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPstart"] < 50 then
maxlen = maxlen + 2
end
if WPTselect == FPlan[lsubpage[3]/10]["SIDstart"] + 1 then
WPTselect = 200
else
if WPTselect > FPlan[lsubpage[3]/10]["SIDstart"] + 1 then
WPTselect = WPTselect - 1
end
if WPTselect == FPlan[lsubpage[3]/10]["STARstart"] + 1 then
WPTselect = 300
else
if WPTselect > FPlan[lsubpage[3]/10]["STARstart"] + 1 then
WPTselect = WPTselect - 1
end
if WPTselect == FPlan[lsubpage[3]/10]["APPstart"] + 1 then
WPTselect = 400
else
if WPTselect > FPlan[lsubpage[3]/10]["APPstart"] + 1 then
WPTselect = WPTselect - 1
end
if WPTselect > FPlan[lsubpage[3]/10]["APPMAP"] + 1 then
WPTselect = WPTselect - 1
end
end
end
end
--print(WPTselect)
--print(controls["lselect"], WPTselect, FPlan[lsubpage[3]/10]["SIDstart"], FPlan[lsubpage[3]/10]["STARstart"])
--  print(maxlen, FPlan[lsubpage[3]/10]["SIDstart"])
if controls["lCRSR"] == 1 then
if controls["FPLstate"] > 0 then
values["MSGENT"] = 2
controls["lknobl"] = 0
end
if WPTselect < 2 then
controls["lknobs"] = 0
values["MSGENT"] = 2
else
if controls["ENT"] == 1 and controls["FPLstate"]  == 1 then
--print(controls["lselect"], WPTselect, FPlan[lsubpage[3]/10]["APPstart"])
if WPTselect == 200 then
while FPlan[lsubpage[3]/10]["SIDend"] >= FPlan[lsubpage[3]/10]["SIDstart"] do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["SIDend"])
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end

FPlan[lsubpage[3]/10]["SIDident"] = ""
FPlan[lsubpage[3]/10]["SIDstart"] = 99
FPlan[lsubpage[3]/10]["SIDend"] = 99
FPlan[lsubpage[3]/10]["SIDAPT"] = {}
activateFPLN0()
elseif WPTselect == 300 then
while FPlan[lsubpage[3]/10]["STARend"] >= FPlan[lsubpage[3]/10]["STARstart"] do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["STARend"])
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end

FPlan[lsubpage[3]/10]["STARident"] = ""
FPlan[lsubpage[3]/10]["STARstart"] = 99
FPlan[lsubpage[3]/10]["STARend"] = 99
FPlan[lsubpage[3]/10]["STARAPT"] = {}
activateFPLN0()
elseif WPTselect == 400 then
while FPlan[lsubpage[3]/10]["APPend"] >= FPlan[lsubpage[3]/10]["APPstart"] do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["APPend"])
if FPlan[lsubpage[3]/10]["APPend"] < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if FPlan[lsubpage[3]/10]["APPend"] <= FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if FPlan[lsubpage[3]/10]["APPend"] < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if FPlan[lsubpage[3]/10]["APPend"] <= FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["APPident"] = ""
FPlan[lsubpage[3]/10]["APPstart"] = 99
FPlan[lsubpage[3]/10]["APPend"] = 99
FPlan[lsubpage[3]/10]["APPAPT"] = {}
FPlan[lsubpage[3]/10]["APPMAP"] = 99
activateFPLN0()
else
table.remove(FPlan[lsubpage[3]/10], WPTselect-1)
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
if lsubpage[3] == 0 then
if FPlan[0]["length"] < 2 then
values["activeWPT"] = {}
values["activeWPT"]["length"] = 0
values["activeWPT"]["active"] = 0
else
activateFPLN0()
end
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
end
controls["FPLstate"]  = 0
controls["ENT"] = 0
end

--this should work
if controls["lCRSRchar"] == 0 and controls["lknobs"] ~= 0 then
if FPlan[lsubpage[3]/10]["length"] == 30 then
values["statusmessage"] = "#FPL#FULL##"
values["statustimer"] = 5
controls["lknobs"] = 0
elseif WPTselect > FPlan[lsubpage[3]/10]["APPstart"] and WPTselect <= FPlan[lsubpage[3]/10]["APPend"] + 1 then
values["statusmessage"] = "INVALID#ADD"
values["statustimer"] = 5
controls["lknobs"] = 0
else
if WPTselect == 200 then
WPTselect = FPlan[lsubpage[3]/10]["SIDstart"] + 1
elseif WPTselect == 300 then
WPTselect = FPlan[lsubpage[3]/10]["STARstart"] + 1
elseif WPTselect == 400 then
WPTselect = FPlan[lsubpage[3]/10]["APPstart"] + 1
end

table.insert(FPlan[lsubpage[3]/10], WPTselect-1, {})
FPlan[lsubpage[3]/10][WPTselect-1]["ident"] = "     "
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] + 1
if WPTselect-1 <= FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] + 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] + 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] + 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] + 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] + 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] + 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] + 1
end
-- if lsubpage[3] == 0 then
-- if values["activeWPT"]["active"] > WPTselect-1 then values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1 end
-- end
end
elseif controls["lCRSRchar"] > 0 and controls["CLR"] == 1   and values["leditstate"] ~= 2 then
table.remove(FPlan[lsubpage[3]/10], WPTselect-1)
controls["lCRSRchar"] = 0
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
if WPTselect-1 < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
-- if lsubpage[3] == 0 then
-- if values["activeWPT"]["active"] > WPTselect-1 then values["activeWPT"]["active"] = values["activeWPT"]["active"] - 1 end
-- end
controls["CLR"] = 0
activateFPLN0()
end

if controls["lknobl"] == 1 and WPTselect == FPlan[lsubpage[3]/10]["APPMAP"] then
controls["lselect"] = controls["lselect"] + 1
elseif controls["lknobl"] == -1 and WPTselect == FPlan[lsubpage[3]/10]["APPMAP"] + 1 then
controls["lselect"] = controls["lselect"] - 1
end

if WPTselect == 200 then
if controls["ENT"] == 1  then
rpage = 6
rsubpage[6] = 70
values["APTpage"][1] = FPlan[0]["SIDAPT"]
controls["rCRSR"]  = 1
controls["rselect"] = 1
controls["SIDSTARview"] = 0
controls["ENT"] = 0
controls["lCRSR"]  = 0
while FPlan[lsubpage[3]/10]["SIDend"] >= FPlan[lsubpage[3]/10]["SIDstart"] do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["SIDend"])
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if FPlan[lsubpage[3]/10]["SIDend"] < FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end

FPlan[lsubpage[3]/10]["SIDident"] = ""
FPlan[lsubpage[3]/10]["SIDstart"] = 99
FPlan[lsubpage[3]/10]["SIDend"] = 99
FPlan[lsubpage[3]/10]["SIDAPT"] = {}
activateFPLN0()
end
elseif WPTselect == 300 then
if controls["ENT"] == 1  then
rpage = 6
rsubpage[6] = 71
values["APTpage"][1] = FPlan[0]["STARAPT"]
controls["rCRSR"]  = 1
controls["rselect"] = 1
controls["SIDSTARview"] = 0
controls["ENT"] = 0
controls["lCRSR"]  = 0
while FPlan[lsubpage[3]/10]["STARend"] >= FPlan[lsubpage[3]/10]["STARstart"] do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["STARend"])
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if FPlan[lsubpage[3]/10]["STARend"] < FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end

FPlan[lsubpage[3]/10]["STARident"] = ""
FPlan[lsubpage[3]/10]["STARstart"] = 99
FPlan[lsubpage[3]/10]["STARend"] = 99
FPlan[lsubpage[3]/10]["STARAPT"] = {}
activateFPLN0()
end
elseif WPTselect == 400 then
if controls["ENT"] == 1  then
rpage = 6
rsubpage[6] = 80
values["APTpage"][1] = FPlan[0]["APPAPT"]
controls["rCRSR"]  = 1
controls["rselect"] = 1
controls["SIDSTARview"] = 0
controls["ENT"] = 0
controls["lCRSR"]  = 0
while FPlan[lsubpage[3]/10]["APPend"] >= FPlan[lsubpage[3]/10]["APPstart"] do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["APPend"])
if FPlan[lsubpage[3]/10]["APPend"] < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if FPlan[lsubpage[3]/10]["APPend"] <= FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if FPlan[lsubpage[3]/10]["APPend"] < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if FPlan[lsubpage[3]/10]["APPend"] <= FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["APPident"] = ""
FPlan[lsubpage[3]/10]["APPstart"] = 99
FPlan[lsubpage[3]/10]["APPend"] = 99
FPlan[lsubpage[3]/10]["APPAPT"] = {}
FPlan[lsubpage[3]/10]["APPMAP"] = 99
activateFPLN0()
end

else
if FPlan[lsubpage[3]/10][WPTselect-1] ~= nil then
FPlan[lsubpage[3]/10][WPTselect-1] = editvalue(1, "l", FPlan[lsubpage[3]/10][WPTselect-1])
end
end
if values["lreturn"] == 1 and lsubpage[3] == 0 and FPlan[0]["length"] > 2 then
activateFPLN0()
end
end
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["CLR"] == 1 then
if WPTselect > FPlan[lsubpage[3]/10]["APPstart"] and WPTselect <= FPlan[lsubpage[3]/10]["APPend"] + 1 then
values["statusmessage"] = "INVALID#DEL"
values["statustimer"] = 5
else
if controls["FPLstate"]  == 1 then
controls["FPLstate"]  = 0
elseif controls["FPLstate"]  == 2 then
controls["FPLstate"] = 0
controls["lCRSR"] = 0
else
if controls["lselect"] > 1 then
controls["FPLstate"]  = 1
end
end
end
controls["CLR"] = 0
elseif controls["ENT"] == 1 then

if controls["FPLstate"]  == 2 then
FPlan[lsubpage[3]/10] = {}
FPlan[lsubpage[3]/10]["length"] = 0
FPlan[lsubpage[3]/10][1] = {}
FPlan[lsubpage[3]/10][1]["ident"] = "     "
FPlan[lsubpage[3]/10]["SIDident"] = ""
FPlan[lsubpage[3]/10]["SIDstart"] = 99
FPlan[lsubpage[3]/10]["SIDend"] = 99
FPlan[lsubpage[3]/10]["SIDAPT"] = {}
FPlan[lsubpage[3]/10]["STARident"] = ""
FPlan[lsubpage[3]/10]["STARstart"] = 99
FPlan[lsubpage[3]/10]["STARend"] = 99
FPlan[lsubpage[3]/10]["STARAPT"] = {}
FPlan[lsubpage[3]/10]["APPident"] = ""
FPlan[lsubpage[3]/10]["APPstart"] = 99
FPlan[lsubpage[3]/10]["APPend"] = 99
FPlan[lsubpage[3]/10]["APPMAP"] = 99
FPlan[lsubpage[3]/10]["APPAPT"] = {}
--fix for errors if fpland deleted while in obs mode
if  get(GPSmode) == 2 then
set(GPSmode, 1)
end
if get(APR) >= 1 then
set(APR,1)
end
if lsubpage[3] == 0 then
values["activeWPT"] = table.copy(FPlan[0])
values["activeWPT"]["active"] = 0
end
controls["FPLstate"]  = 0
controls["ENT"] = 0
controls["lCRSR"] = 0
elseif WPTselect  == 0 then
FPlan[0] = table.copy(FPlan[lsubpage[3]/10])
activateFPLN0()
lsubpage[3] = 0
controls["ENT"] = 0
controls["lCRSR"] = 0
elseif WPTselect  == 1 then
if FPlan[lsubpage[3]/10]["length"] == 0 then
FPlan[lsubpage[3]/10] = table.copy(FPlan[0])
--You gotta remove SID and STAR here!
while FPlan[lsubpage[3]/10]["SIDend"] >= FPlan[lsubpage[3]/10]["SIDstart"] and FPlan[lsubpage[3]/10]["SIDstart"] < 50 do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["SIDend"])
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
while FPlan[lsubpage[3]/10]["STARend"] >= FPlan[lsubpage[3]/10]["STARstart"] and FPlan[lsubpage[3]/10]["STARstart"] < 50 do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["STARend"])
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
while FPlan[lsubpage[3]/10]["APPend"] >= FPlan[lsubpage[3]/10]["APPstart"] and FPlan[lsubpage[3]/10]["APPstart"] < 50 do
table.remove(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["APPend"])
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
FPlan[lsubpage[3]/10]["SIDident"] = ""
FPlan[lsubpage[3]/10]["SIDstart"] = 99
FPlan[lsubpage[3]/10]["SIDend"] = 99
FPlan[lsubpage[3]/10]["STARident"] = ""
FPlan[lsubpage[3]/10]["STARstart"] = 99
FPlan[lsubpage[3]/10]["STARend"] = 99
FPlan[lsubpage[3]/10]["SIDAPT"] = {}
FPlan[lsubpage[3]/10]["STARAPT"] = {}
FPlan[lsubpage[3]/10]["APPident"] = ""
FPlan[lsubpage[3]/10]["APPstart"] = 99
FPlan[lsubpage[3]/10]["APPend"] = 99
FPlan[lsubpage[3]/10]["APPMAP"] = 99
FPlan[lsubpage[3]/10]["APPAPT"] = {}
--  lsubpage[3] = 0
controls["ENT"] = 0
controls["lCRSR"] = 0
else
FPlan[0] = table.copyi(FPlan[lsubpage[3]/10])
activateFPLN0()
lsubpage[3] = 0
controls["ENT"] = 0
controls["lCRSR"] = 0
end
end
end
if controls["lselect"] < 0 then controls["lselect"] = maxlen+2
elseif controls["lselect"] > maxlen+2 then
if FPlan[lsubpage[3]/10]["length"] == 0 then
controls["lselect"] = 1
elseif lsubpage[3] == 0 then
controls["lselect"] = 2
else
controls["lselect"] = 0
end
end
if controls["lselect"] < controls["lview"]+2 then controls["lview"] = controls["lselect"]-1
if controls["lview"] < 0 then controls["lview"] = 0 end
end

if controls["lselect"] < maxlen+2 then
if controls["lselect"] > controls["lview"] + 5 then controls["lview"] = controls["lselect"] - 5 end
else
if controls["lselect"] > controls["lview"] + 6 then controls["lview"] = controls["lselect"] - 6 end
end
if FPlan[lsubpage[3]/10]["length"] == 0 and controls["lselect"] == 0 then
controls["lselect"] = 2
elseif lsubpage[3] == 0 and controls["lselect"] == 0 and controls["FPLstate"] ~= 2 then
controls["lselect"] = 2
elseif lsubpage[3] == 0 and controls["lselect"] == 1 then
controls["lselect"] = maxlen+2
end
elseif controls["CLR"] == 1 and FPlan[lsubpage[3]/10]["length"] ~= 0 and controls["rCRSR"]  == 0 then
controls["FPLstate"]  = 2
controls["lCRSR"] = 1
controls["CLR"] = 0
controls["lview"] = 0
controls["lselect"] = 0
else
if  controls["lCRSRchar"] > 0 then
table.remove(FPlan[lsubpage[3]/10], WPTselect-1)
controls["lCRSRchar"] = 0
controls["WPTCRSR"] = 0
values["leditstate"] = 0
FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] - 1
if WPTselect-1 < FPlan[lsubpage[3]/10]["SIDstart"] then
FPlan[lsubpage[3]/10]["SIDstart"] = FPlan[lsubpage[3]/10]["SIDstart"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["SIDend"] then
FPlan[lsubpage[3]/10]["SIDend"] = FPlan[lsubpage[3]/10]["SIDend"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["STARstart"] then
FPlan[lsubpage[3]/10]["STARstart"] = FPlan[lsubpage[3]/10]["STARstart"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["STARend"] then
FPlan[lsubpage[3]/10]["STARend"] = FPlan[lsubpage[3]/10]["STARend"] - 1
end
if WPTselect-1 < FPlan[lsubpage[3]/10]["APPstart"] then
FPlan[lsubpage[3]/10]["APPstart"] = FPlan[lsubpage[3]/10]["APPstart"] - 1
FPlan[lsubpage[3]/10]["APPMAP"] = FPlan[lsubpage[3]/10]["APPMAP"] - 1
end
if WPTselect-1 <= FPlan[lsubpage[3]/10]["APPend"] then
FPlan[lsubpage[3]/10]["APPend"] = FPlan[lsubpage[3]/10]["APPend"] - 1
end
end
if values["activeWPT"]["active"] ~= 0  and lsubpage[3] == 0 then
controls["lview"] = values["activeWPT"]["active"] - 2
if values["activeWPT"]["active"] >= FPlan[lsubpage[3]/10]["SIDstart"] then
controls["lview"] = controls["lview"] + 1
end
if values["activeWPT"]["active"] >= FPlan[lsubpage[3]/10]["STARstart"] then
controls["lview"] = controls["lview"] + 1
end
if values["activeWPT"]["active"] >= FPlan[lsubpage[3]/10]["APPstart"] then
controls["lview"] = controls["lview"] + 1
end
if values["activeWPT"]["active"] >= FPlan[lsubpage[3]/10]["APPMAP"] then
controls["lview"] = controls["lview"] + 1
end
end
controls["FPLstate"]  = 0
end

if controls["lview"] < 0 then controls["lview"] = maxlen+2
elseif controls["lview"] > maxlen+2 then controls["lview"] =  0
end

if controls["lview"] == 0 then

if controls["FPLstate"]  == 2 then
gline[1] = "DELETE FPL?|"
elseif lsubpage[3] == 0 then
gline[1] = "           |"
elseif FPlan[lsubpage[3]/10]["length"] == 0 then
gline[1] = "LOAD FPL 0?|"
else
gline[1] = "USE? INVRT?|"
end
end
local line = 1
local WPTnum = 0
while line <= 5 do
WPTnum = controls["lview"]+line-1
if WPTnum == FPlan[lsubpage[3]/10]["SIDstart"] then
if WPTnum == values["activeWPT"]["active"] and controls["lCRSRchar"] == 0 and controls["FPLstate"] == 0 and values["activeWPT"][1]["ident"] ~= "    $" and values["activeWPT"][1]["ident"] ~= "     " then
gline[line] = '"' .. makelength(FPlan[lsubpage[3]/10]["SIDident"] .. "-SID", 10, 0) .. "|"
else
gline[line] = " " .. makelength(FPlan[lsubpage[3]/10]["SIDident"] .. "-SID", 10, 0) .. "|"
end
if controls["lselect"] == controls["lview"]+line and controls["lCRSR"] == 1 then
if controls["FPLstate"]  == 1 then
gline[line] = "DELETE SID?|"
if values["flash"] == 1 then
bline[line] = "DELETE#SID? "
else
bline[line] = "            "
end
else
gline[line] = "CHANGE SID?|"
if values["flash"] == 1 then
bline[line] = "CHANGE#SID? "
else
bline[line] = "            "
end
end
else
bline[line] = "            "
end
else
if WPTnum > FPlan[lsubpage[3]/10]["SIDstart"] then
WPTnum = WPTnum - 1
end
if WPTnum == FPlan[lsubpage[3]/10]["STARstart"] then
if WPTnum == values["activeWPT"]["active"] and controls["lCRSRchar"] == 0 and controls["FPLstate"] == 0 and values["activeWPT"][1]["ident"] ~= "    $" and values["activeWPT"][1]["ident"] ~= "     " then
gline[line] = '"' .. makelength(FPlan[lsubpage[3]/10]["STARident"] .. "-xyz", 10, 0) .. "|"
else
gline[line] = " " .. makelength(FPlan[lsubpage[3]/10]["STARident"] .. "-xyz", 10, 0) .. "|"
end
if controls["lselect"] == controls["lview"]+line and controls["lCRSR"] == 1 then
if controls["FPLstate"]  == 1 then
gline[line] = "DELETE xyz?|"
if values["flash"] == 1 then
bline[line] = "DELETE#xyz? "
else
bline[line] = "            "
end
else
gline[line] = "CHANGE xyz?|"
if values["flash"] == 1 then
bline[line] = "CHANGE#xyz? "
else
bline[line] = "            "
end
end
else
bline[line] = "            "
end
else
if WPTnum > FPlan[lsubpage[3]/10]["STARstart"] then
WPTnum = WPTnum - 1
end
if WPTnum == FPlan[lsubpage[3]/10]["APPstart"] then
if WPTnum == values["activeWPT"]["active"] and controls["lCRSRchar"] == 0 and controls["FPLstate"] == 0 and values["activeWPT"][1]["ident"] ~= "    $" and values["activeWPT"][1]["ident"] ~= "     " then
gline[line] = '"' .. makelength(FPlan[lsubpage[3]/10]["APPident"] .. "-" .. FPlan[lsubpage[3]/10]["APPAPT"]["ident"], 10, 0) .. "|"
else
gline[line] = " " .. makelength(FPlan[lsubpage[3]/10]["APPident"] .. "-" .. FPlan[lsubpage[3]/10]["APPAPT"]["ident"], 10, 0) .. "|"
end
if controls["lselect"] == controls["lview"]+line and controls["lCRSR"] == 1 then
if controls["FPLstate"]  == 1 then
gline[line] = "DELETE APR?|"
if values["flash"] == 1 then
bline[line] = "DELETE#APR? "
else
bline[line] = "            "
end
else
gline[line] = "CHANGE APR?|"
if values["flash"] == 1 then
bline[line] = "CHANGE#APR? "
else
bline[line] = "            "
end
end
else
bline[line] = "            "
end
else

if WPTnum > FPlan[lsubpage[3]/10]["APPstart"] then
WPTnum = WPTnum - 1
end
if WPTnum == FPlan[lsubpage[3]/10]["APPMAP"] then
gline[line] = "^NO WPT SEQ|"
bline[line] = "            "
else
if WPTnum > FPlan[lsubpage[3]/10]["APPMAP"] then
WPTnum = WPTnum - 1
end
local dot = ":"
if WPTnum >= FPlan[lsubpage[3]/10]["SIDstart"] and WPTnum <= FPlan[0]["SIDend"] then
dot = "."
end
if WPTnum >= FPlan[lsubpage[3]/10]["STARstart"] and WPTnum <= FPlan[0]["STARend"] then
dot = "."
end
if WPTnum >= FPlan[lsubpage[3]/10]["APPstart"] and WPTnum <= FPlan[0]["APPend"] then
dot = " "
end


-- FPlan[0]["SID"]["ident"] = values["SIDSTARsel"]["SID"]
-- FPlan[0]["SID"]["start"] = num + 1
-- FPlan[0]["SID"]["end"] = num + 1 + values["SIDSTARsel"]["num"]
if WPTnum > 0 then
if controls["lselect"] == controls["lview"]+line and controls["lCRSR"] == 1 then
if controls["FPLstate"]  == 1 then
if FPlan[lsubpage[3]/10] and FPlan[lsubpage[3]/10][WPTnum] then
gline[line] = "DEL " .. FPlan[lsubpage[3]/10][WPTnum]["ident"] .. " ?|"
if values["flash"] == 1 then
bline[line] = string.gsub(string.sub(gline[line], 1, 11), " ", "#") .. "  "
else
bline[line] = "            "
end
end
else
gline[line] = FplanArrows(line, WPTnum) .. makelength(WPTnum, 2, 1) ..dot .. values["lgstring"] .. suffix(WPTnum, lsubpage[3]) .. " |"
bline[line] = "    " .. values["lbstring"] .. suffix(WPTnum, lsubpage[3]) .. "  "
end
else
bline[line] = "            "
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
gline[line] = FplanArrows(line, WPTnum) .. makelength(WPTnum, 2, 1) .. dot .. FPlan[lsubpage[3]/10][WPTnum]["ident"] .. suffix(WPTnum, lsubpage[3]) .. " |"
elseif WPTnum == FPlan[lsubpage[3]/10]["length"] + 1 then
gline[line] = " " .. makelength(WPTnum, 2, 1) .. ":       |"
else
gline[line] = "           |"
end
end
end
end
end
end
end
line = line + 1
end



if controls["lselect"] == controls["lview"]+6 then

if controls["FPLstate"]  == 1 then
gline[6] = "DEL " .. FPlan[lsubpage[3]/10][FPlan[lsubpage[3]/10]["length"]]["ident"] .. "? |"
if values["flash"] == 1 then
bline[6] = string.gsub(string.sub(gline[6], 1, 11), " ", "#") .. "  "
else
bline[6] = "            "
end
else
if controls["lview"]+5 <= maxlen then

gline[6] = FplanArrows(6) .. makelength(WPTnum+1, 2, 1) .. ":" .. values["lgstring"] .. "  |"
else
gline[6] = " " .. makelength(WPTnum+1, 2, 1) .. ":" .. values["lgstring"] .. "  |"
end
bline[6] = "    " .. values["lbstring"] .. "   "
end
else
bline[6] = "            "
if controls["lview"]+5 <= maxlen and FPlan[lsubpage[3]/10][FPlan[lsubpage[3]/10]] ~= nil then --fix for error on fpl deletion
gline[6] = FplanArrows(6) .. makelength(FPlan[lsubpage[3]/10]["length"], 2, 1) .. ":" .. FPlan[lsubpage[3]/10][FPlan[lsubpage[3]/10]["length"]]["ident"] .. "  |" --errors if active fplan deleted while in obs --no bad efects observed
elseif controls["lview"]+5 == maxlen + 1 then
gline[6] = " " .. makelength(WPTnum+1, 2, 1) .. ":       |"
else
gline[6] = "           |"
end
end


gline[7] = "FPL" .. makelength(lsubpage[3]/10, 2, 1)

if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
if FPlan[lsubpage[3]/10]["length"] == 0 then
bline[1] = "LOAD FPL 0?|"
else
if controls["FPLstate"]  == 2 then
if values["flash"] == 1 then
bline[1] = string.gsub(string.sub(gline[1], 1, 11), " ", "#") .. " "
else
bline[1] = "            "
end
else
if values["flash"] == 1 then
bline[1] = "USE?        "
else
bline[1] = "            "
end

end
end
elseif controls["lview"] == 0 then
bline[1] = "            "
end

if controls["lselect"] == 1 then
if values["flash"] == 1 then
if FPlan[lsubpage[3]/10]["length"] == 0 then
bline[1] = "LOAD#FPL#0? "
else
bline[1] = "USE?#INVRT? "
end
else
bline[1] = "            "
end
end

--gline[1] = gline[1] .. controls["lselect"] .. " " .. controls["lview"] .. " " .. controls["lCRSRchar"]
--#########################################################################This is the NAV2 page
elseif lpage == 4 then
if lsubpage[4] == 10 then
controls["lCRSR"] = 0
if values["GPSnum"] < 4 then
gline[4] = "GS    ---kt|"
else
gline[4] = "GS   " .. makelength(round(values["GPSSPD"]* 1.94384449), 4, 1) .. "kt|"
end

if values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[1] = "           |"
gline[2] = "qq       qq|"
gline[3] = "DIS  --.-nm|"
gline[5] = "ETE   --:--|"
gline[6] = "BRG    ---*|"


gline[7] = "NAV 1"
bline[1] = "            "
bline[2] = "  F#L#A#G   "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
else
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = values["activeWPT"][1]["ident"] .. " " .. values["activeWPT"][2]["ident"]  .."|"
else
gline[1] = values["activeWPT"][1]["ident"] .. "=" .. values["activeWPT"][2]["ident"]  .."|"
end
gline[2] = scale(values["XTK"], values["scalefactor"], values["tofrom"]) .. "|"
gline[3] = "DIS  " .. dynaround(values["dist"], 4) .. "nm|"
gline[5] = "ETE   " ..  convtime(values["dist"] / (values["GPSSPD"]* 1.94384449)*3600) .. "|"

--gline[5] = "ETE   " ..  convtime(distanceFPLN(values["activeWPT"], 1, values["activeWPT"]["length"], 0) / (get(SPEEDin)* 1.94384449)*3600) .. "|"
gline[6] = string.format("BRG    %03d*|", round(values["bearing"]))


gline[7] = "NAV 1"
bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
end
elseif lsubpage[4] == 20 then
controls["lCRSR"] = 0
gline[1] = "PRESENT POS|"
gline[2] = "           |"

if values["GPSnum"] >= 4 then
if values["CALC3timer"] > 3 or values["REFVOR"] == nil then
values["REFVOR"] = closestVOR(values["GPSlat"], values["GPSlon"])
end

gline[3] = string.format("%s%03d*fr|",  values["REFVOR"]["ident"], round(course(values["REFVOR"]["lat"], values["REFVOR"]["lon"], values["GPSlat"], values["GPSlon"])))
gline[4] = "     " .. dynaround(distance(values["REFVOR"]["lat"], values["REFVOR"]["lon"], values["GPSlat"], values["GPSlon"]), 4) .. "nm|"
gline[5] = convertLatLon(values["GPSlat"], 0) .. "|"
gline[6] = convertLatLon(values["GPSlon"], 1) .. "|"
else
gline[3] = "--- ---*fr |"
gline[4] = "  ---- -nm |"
gline[5] = "- --*--.--'|"
gline[6] = "----*--.--'|"
end

gline[7] = "NAV 2"
bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[4] == 30 then

gline[5] = "MSA " .. getMSA(values["GPSlat"], values["GPSlon"], values["GPSlat"], values["GPSlon"]) .. "ft|"
gline[7] = "NAV 3"
bline[1] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "

if values["GPSSPD"] > 1 then
gline[3] = string.format("TK     %03d*|", round(values["GPSTRK"]))
else
gline[3] = "TK     ---*|"
end

if values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[1] = "           |"
gline[2] = "DTK    ---*|"
gline[4] = "FLY - -.-nm|"
gline[6] = "ESA -----ft|"

bline[2] = "            "
else
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = values["activeWPT"][1]["ident"] .. " " .. values["activeWPT"][2]["ident"]  .."|"
else
gline[1] = values["activeWPT"][1]["ident"] .. "=" .. values["activeWPT"][2]["ident"]  .."|"
end
bline[2] = "            "
if controls["lCRSR"]  == 1 then
if values["HSIinterf"] == 1 or get(GPSmode) == 1 then
controls["lCRSR"]  = 0
else
bline[2] = string.format("       %03d* ", round(values["HSIOBS"]))

end
controls["lknobl"] = 0
if controls["lknobs"] == -1 then
values["HSIOBS"] = values["HSIOBS"] - 1
if values["HSIOBS"] < 1 then values["HSIOBS"] = values["HSIOBS"] + 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
values["HSIOBS"] = values["HSIOBS"] + 1
if values["HSIOBS"] > 360 then values["HSIOBS"] = values["HSIOBS"] - 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
controls["lknobs"] = 0
end

end




if get(GPSmode) == 2 then
if values["HSIinterf"] == 2 or values["HSIinterf"] == 0 then

gline[2] = string.format("OBS:   %03d*|", round(values["HSIOBS"]))
else
gline[2] = string.format("OBS    %03d*|", round(values["HSIOBS"]))
end

else
if values["HSIinterf"] == 1 then
local diff = values["HSIOBS"] - values["DTK"]
if diff < -180 then diff = diff + 360
elseif diff > 180 then diff = diff - 360 end
if (diff > 10 or diff < -10) and values["flash"] == 0 then
gline[2]= "DTK        |"
else

gline[2] = string.format("DTK    %03d*|", round(values["DTK"]))
end
else
gline[2] = string.format("DTK    %03d*|", round(values["DTK"]))
end
end

if values["XTK"] >= 0 then
gline[4] = "FLY R " .. dynaround(values["XTK"], 3) .. "nm|"
else
gline[4] = "FLY L " .. dynaround(math.abs(values["XTK"]), 3) .. "nm|"
end
if get(GPSmode) == 1 then
local wptnum = 3
local ESA = getMSA(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
while wptnum <= values["activeWPT"]["length"] do
local ESA1 = 0
ESA1 = getMSA(values["activeWPT"][wptnum-1]["lat"], values["activeWPT"][wptnum-1]["lon"], values["activeWPT"][wptnum]["lat"], values["activeWPT"][wptnum]["lon"])
if ESA1 ~= "-----" then
--print(wptnum, ESA1, ESA)
if tonumber(ESA1) > tonumber(ESA) then
ESA = ESA1
end
end
wptnum = wptnum + 1
end
if ESA == 0 then
gline[6] = "ESA -----ft|"
else
gline[6] = "ESA " ..  ESA .. "ft|"
end
else
gline[6] = "ESA " ..   getMSA(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]).. "ft|"

end
end
elseif lsubpage[4] == 40 then
if values["VNVstat"][1]["ident"] == "     " then
values["VNVstat"][0] = -1
end

if values["VNVstat"][0] == -1 then
--0 inactiv, 1 armed, 2 active
values["VNVstat"][0] = 0
values["VNVstat"][2] = -1
if values["activeWPT"]["length"] >= 2 then
values["VNVstat"][1] = values["activeWPT"][values["activeWPT"]["length"]]
--values["VNVstat"][2] = values["activeWPT"]["length"]
else
values["VNVstat"][1] = {}
values["VNVstat"][1]["ident"] = "     "
end
end

if controls["lCRSR"]  == 1 then

if controls["lCRSRchar"] == 0 and controls["lselect"] ~= 1 then
-- if controls["lselect"] == 0 then
-- controls["lCRSRchar"] = 5
-- else
controls["lCRSRchar"] = 1
--  end
end
if controls["lselect"] == 1 then
if controls["sENT"] == 1 and values["leditstate"] == 3 then
--we check if the enter is legal
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["leditvalue"][1]["types"] and  values["activeWPT"][WPTnum]["ident"] == values["leditvalue"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["leditvalue"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end

if WPTfound == 0 then
values["statusmessage"] = "INVALID#VNV"
values["statustimer"] = 5
controls["sENT"] = 0
end
end
values["VNVstat"][1] = editvalue(1, "l", values["VNVstat"][1])
if values["lreturn"] == 1 and values["VNVstat"][0] == 2 then
values["VNVstat"][0] = 1
end
end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 3
controls["lCRSRchar"] = 2
if values["VNVstat"][0] == 0 then
values["VNVstat"][0] = 1
end
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 0
elseif controls["lselect"] == 3 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 2
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 5 then
controls["lselect"] = 1
controls["lCRSRchar"] = 0
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 2 then
controls["lselect"] = 3
controls["lCRSRchar"] = 1
if values["VNVstat"][0] == 0 then
values["VNVstat"][0] = 1
end
elseif controls["lselect"] == 3 and controls["lCRSRchar"] > 2 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then

if controls["lselect"] == 0 then
x = string2value(string.sub(values["VNVSEL"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["VNVSEL"] = replaceChar(values["VNVSEL"],controls["lCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["lselect"] == 2 then
x = string2value(string.sub(values["VNVOFFS"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["VNVOFFS"] = replaceChar(values["VNVOFFS"],controls["lCRSRchar"],value2string(x))
--use FPLN distance
--values["VNVANG"] = float(math.atan((IndALT-values["VNVSEL"])/((distance(values["GPSlat"], values["GPSlon"], values["VNVstat"][2]["lat"], values["VNVstat"][2]["lon"])-values["VNVOFFS"])*6076.11549)*pi/180), 1)/pi*180
values["VNVstat"][0] = 0
elseif controls["lselect"] == 3 then
local y = controls["lCRSRchar"]
if y == 1 then y = 2
elseif y == 2 then y = 4 end
x = string2value(string.sub(values["VNVANG"], y, y)) - 1
if x < 1 then x = 10 end
values["VNVANG"] = replaceChar(values["VNVANG"],y,value2string(x))
values["VNVstat"][0] = 1
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["VNVSEL"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["VNVSEL"] = replaceChar(values["VNVSEL"],controls["lCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["lselect"] == 2 then
x = string2value(string.sub(values["VNVOFFS"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["VNVOFFS"] = replaceChar(values["VNVOFFS"],controls["lCRSRchar"],value2string(x))
--values["VNVANG"] = float(math.atan((IndALT-values["VNVSEL"])/((distance(values["GPSlat"], values["GPSlon"], values["VNVstat"][2]["lat"], values["VNVstat"][2]["lon"])-values["VNVOFFS"])*6076.11549)*pi/180), 1)/pi*180
values["VNVstat"][0] = 0
elseif controls["lselect"] == 3 then
local y = controls["lCRSRchar"]
if y == 1 then y = 2
elseif y == 2 then y = 4 end
x = string2value(string.sub(values["VNVANG"], y, y)) + 1
if x > 10 then x = 1 end
values["VNVANG"] = replaceChar(values["VNVANG"],y,value2string(x))
values["VNVstat"][0] = 1
end
controls["lknobs"] = 0
end
end

if values["VNVstat"][0] == 0 then
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["VNVstat"][1]["types"] and  values["activeWPT"][WPTnum]["ident"] == values["VNVstat"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["VNVstat"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end
WPTnum = WPTnum - 1
gline[1] = "VNV INACTV |"
if WPTnum == 1 then
values["VNVANG"] = " 0.0"
else
values["VNVANG"] = makelength(float(-math.atan((IndALT-values["VNVSEL"])*0.000164578834/(distanceFPLN(values["activeWPT"], 2, WPTnum, 0)-values["VNVOFFS"]))/pi * 180, 1), 4, 1)
end
elseif values["VNVstat"][0] == 1 then
if  values["VNVstat"][2] == -1 then
gline[1] = "VNV ARMED  |"
else
gline[1] = "VNV IN" .. values["VNVstat"][2] .. "|"
end
elseif values["VNVstat"][0] == 2 then
gline[1] = "VNV" ..  makelength(round(values["VNVstat"][2], -2), 6, 1)  .. "ft|"
end
gline[2] = "           |"

gline[3] = string.format("IND %05dft|", IndALT)

gline[4] = "SEL:" .. values["VNVSEL"] .. "ft|"
bline[4]  = "            "
if controls["lCRSR"]  == 1 and controls["lselect"] == 0 then
bline[4] =  highlightchar(gline[4], controls["lCRSRchar"] + 4)
end

if controls["lselect"] == 1 then
gline[5] = values["lgstring"] .. ":-" .. values["VNVOFFS"] .. "nm|"
bline[5] = values["lbstring"] .. "       "
else
gline[5] = values["VNVstat"][1]["ident"] .. ":-" .. values["VNVOFFS"] .. "nm|"
bline[5]  = "            "
if controls["lselect"] == 2 then
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 7)
end
end

gline[6] = "ANGLE:" .. values["VNVANG"] .. "*|"
bline[6]  = "            "
if controls["lselect"] == 3 then
if controls["lCRSRchar"] == 1 then
bline[6] =  highlightchar(gline[6], 8)
else
bline[6] =  highlightchar(gline[6], 10)
end
end


gline[7] = "NAV 4"
bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
elseif lsubpage[4] == 50 then
if not (rpage == 5 and rsubpage[5] == 50) or controls["DCT"] ~= 0 then

if controls["lCRSR"]  == 1 then
if controls["lknobl"] == -1 then
if controls["lselect"] == 0 then controls["lselect"] = 1
else controls["lselect"] = 0 end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
if controls["lselect"] == 0 then controls["lselect"] = 1
else controls["lselect"] = 0 end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
values["NAV5ORIS"] = values["NAV5ORIS"] - 1
if values["NAV5ORIS"] < 0 then values["NAV5ORIS"] = 3 end
elseif controls["lselect"] == 1 then
values["NAV5RNG2"] = values["NAV5RNG2"] - 1
if values["NAV5RNG2"] < 1 then values["NAV5RNG2"] = 22 end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
values["NAV5ORIS"] = values["NAV5ORIS"] + 1
if values["NAV5ORIS"] > 3 then values["NAV5ORIS"] = 0 end
elseif controls["lselect"] == 1 then
values["NAV5RNG2"] = values["NAV5RNG2"] + 1
if values["NAV5RNG2"] > 22 then values["NAV5RNG2"] = 1 end
end
controls["lknobs"] = 0
end
end
local strin = "N!  "
values["NAV5ORI2"] = 0
if values["NAV5ORIS"] == 1 then
strin = "DTK!"
values["NAV5ORI2"] = values["DTK"]
elseif values["NAV5ORIS"] == 2 then
strin = "TK! "
values["NAV5ORI2"] = values["GPSTRK"]

elseif values["NAV5ORIS"] == 3 then
strin = "HDG!"
values["NAV5ORI2"] = get(PSIin)

end


if values["NAV5ORIS"] == 0 then
gline[6] = strin .. "   " .. makelength(num2range(values["NAV5RNG2"]), 4, 1) .. "|"
else
gline[6] = string.format("%03d*   %s", values["NAV5ORI2"], makelength(num2range(values["NAV5RNG2"]), 4, 1)) .. "|"
end
if controls["lselect"] == 0 and controls["lCRSR"]  == 1 then
bline[6] = string.gsub(strin, " ", "#") .. "        "
elseif controls["lselect"] == 1 then
bline[6] = "       " .. string.gsub(makelength(num2range(values["NAV5RNG2"]), 4, 1), " ", "#") .. " "
else
bline[6] = "            "
end
if controls["DCT"] == 0 then
local size = {0, 28, 103, 66}
drawmap (size, values["NAV5ORIS"], num2range(values["NAV5RNG2"]), 2)
end
gline[1] = "           |"
gline[2] = "           |"
gline[3] = "           |"
gline[4] = "           |"
gline[5] = "           |"


gline[7] = "NAV 5"
bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
end
end
--#########################################################################This is the CAL page
elseif lpage == 5 then
--should be working
if lsubpage[5] == 10 then
gline[1] = "  ALTITUDE |"
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["cal1ind"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal1ind"] = replaceChar(values["cal1ind"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
values["cal1baro"] = values["cal1baro"] -100
elseif controls["lCRSRchar"] == 2 then
local y = 3
if string.len(values["cal1baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["cal1baro"], y, y)) - 1
if x < 1 then x = 10 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
elseif controls["lCRSRchar"] == 3 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["cal1baro"], y, y)) - 1
if x < 1 then x = 10 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
end
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal1temp"], 1, 1) == "0" then values["cal1temp"] = replaceChar(values["cal1temp"],1,"-")
else values["cal1temp"] = replaceChar(values["cal1temp"],1,"0") end
else
x = string2value(string.sub(values["cal1temp"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal1temp"] = replaceChar(values["cal1temp"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["cal1ind"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal1ind"] = replaceChar(values["cal1ind"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
values["cal1baro"] = values["cal1baro"] + 100
elseif controls["lCRSRchar"] == 2 then
local y = 3
if string.len(values["cal1baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["cal1baro"], y, y)) + 1
if x > 10 then x = 1 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
elseif controls["lCRSRchar"] == 3 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["cal1baro"], y, y)) + 1
if x > 10 then x = 1 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
end
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal1temp"], 1, 1) == "0" then values["cal1temp"] = replaceChar(values["cal1temp"],1,"-")
else values["cal1temp"] = replaceChar(values["cal1temp"],1,"0") end
else
x = string2value(string.sub(values["cal1temp"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal1temp"] = replaceChar(values["cal1temp"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
end
end


local baro = 0
if values["barounit"] == 1 then
baro = values["cal1baro"] * 0.0295301
else
baro = values["cal1baro"] / 100
end

local PressALT =values["cal1ind"] + (145442.2*(1- (baro/29.92126)^0.190261))
--local PressALT =baro


local DensALT = PressALT+118.6*(values["cal1temp"]-(15-0.0019812*PressALT))


gline[2] = string.format("IND:%sft|", values["cal1ind"])
bline[2]  = "            "
if controls["lCRSR"]  == 1 and controls["lselect"] == 0 then
bline[2] =  highlightchar(gline[2], controls["lCRSRchar"] + 4)
end

if values["barounit"] == 0 then
if controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
bline[3] = string.format("     %s    ",  string.sub(values["cal1baro"], 1, 2))
elseif controls["lCRSRchar"] == 2 then
bline[3] = string.format("        %s  ",  string.sub(values["cal1baro"], 3, 3))
elseif controls["lCRSRchar"] == 3 then
bline[3] = string.format("         %s ",  string.sub(values["cal1baro"], 4, 4))
end

else
bline[3] = "            "
end
gline[3] = string.format("BARO:%s.%s'|",  string.sub(values["cal1baro"], 1, 2), string.sub(values["cal1baro"], 3, 4))
else
if controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
if string.len(values["cal1baro"]) == 4 then
bline[3] = string.format("     %s     ",  string.sub(values["cal1baro"], 1, 2))
else
bline[3] = string.format("      %s     ",  string.sub(values["cal1baro"], 1, 1))
end
elseif controls["lCRSRchar"] == 2 then
if string.len(values["cal1baro"]) == 4 then
bline[3] = string.format("       %s   ",  string.sub(values["cal1baro"], 3, 3))
else
bline[3] = string.format("       %s   ",  string.sub(values["cal1baro"], 2, 2))
end
elseif controls["lCRSRchar"] == 3 then
if string.len(values["cal1baro"]) == 4 then
bline[3] = string.format("        %s  ",  string.sub(values["cal1baro"], 4, 4))
else
bline[3] = string.format("        %s  ",  string.sub(values["cal1baro"], 3, 3))
end
end
else
bline[3] = "            "
end
gline[3] = string.format("BARO:%sMB|",  makelength(values["cal1baro"], 4, 1))
end

gline[5] = string.format("TEMP: %s*C|", values["cal1temp"])
bline[5]  = "            "

if controls["lselect"] == 2 then
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 6)

end

gline[4] = string.format("PRS %sft|", makelength(round(PressALT, -2), 5, 1))
gline[6] = string.format("DEN %sft|", makelength(round(DensALT, -2), 5, 1))
gline[7] = "CAL 1"

bline[1] = "            "
bline[4] = "            "
bline[6] = "            "
--#########################################################################This is the TAS calc page
--not finished!
elseif lsubpage[5] == 20 then
gline[1] = "    TAS    |"
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
--0: CAS, 1 ALT, 2, Baro 3, Temp
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 3
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 3 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 3
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 3
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 3 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["cal2CAS"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal2CAS"] = replaceChar(values["cal2CAS"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["cal1ind"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal1ind"] = replaceChar(values["cal1ind"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
values["cal1baro"] = values["cal1baro"] -100
elseif controls["lCRSRchar"] == 2 then
local y = 3
if string.len(values["cal1baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["cal1baro"], y, y)) - 1
if x < 1 then x = 10 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
elseif controls["lCRSRchar"] == 3 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["cal1baro"], y, y)) - 1
if x < 1 then x = 10 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
end
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal2temp"], 1, 1) == "0" then values["cal2temp"] = replaceChar(values["cal2temp"],1,"-")
else values["cal2temp"] = replaceChar(values["cal2temp"],1,"0") end
else
x = string2value(string.sub(values["cal2temp"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal2temp"] = replaceChar(values["cal2temp"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["cal2CAS"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal2CAS"] = replaceChar(values["cal2CAS"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["cal1ind"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal1ind"] = replaceChar(values["cal1ind"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
values["cal1baro"] = values["cal1baro"] +100
elseif controls["lCRSRchar"] == 2 then
local y = 3
if string.len(values["cal1baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["cal1baro"], y, y)) + 1
if x > 10 then x = 1 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
elseif controls["lCRSRchar"] == 3 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["cal1baro"], y, y)) + 1
if x > 10 then x = 1 end
values["cal1baro"] = replaceChar(values["cal1baro"],y,value2string(x))
end
elseif controls["lselect"] == 3 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal2temp"], 1, 1) == "0" then values["cal2temp"] = replaceChar(values["cal2temp"],1,"-")
else values["cal2temp"] = replaceChar(values["cal2temp"],1,"0") end
else
x = string2value(string.sub(values["cal2temp"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal2temp"] = replaceChar(values["cal2temp"],controls["lCRSRchar"],value2string(x))
end
end
controls["lknobs"] = 0
end
end

gline[2] = string.format("CAS:  %skt|", values["cal2CAS"])
bline[2]  = "            "
if controls["lCRSR"]  == 1 and controls["lselect"] == 0 then
bline[2] =  highlightchar(gline[2], controls["lCRSRchar"] + 6)
end



gline[3] = string.format("ALT:%sft|", values["cal1ind"])
bline[3]  = "            "
if controls["lselect"] == 1 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"] + 4)
end

if values["barounit"] == 0 then
if controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
bline[4] = string.format("     %s    ",  string.sub(values["cal1baro"], 1, 2))
elseif controls["lCRSRchar"] == 2 then
bline[4] = string.format("        %s  ",  string.sub(values["cal1baro"], 3, 3))
elseif controls["lCRSRchar"] == 3 then

bline[4] = string.format("         %s ",  string.sub(values["cal1baro"], 4, 4))
end

else
bline[4] = "            "
end
gline[4] = string.format("BARO:%s.%s@|",  string.sub(values["cal1baro"], 1, 2), string.sub(values["cal1baro"], 3, 4))
else
if controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
if string.len(values["baro"]) == 4 then
bline[4] = string.format("     %s     ",  string.sub(values["cal1baro"], 1, 2))
else
bline[4] = string.format("     %s      ",  string.sub(values["cal1baro"], 1, 1))
end
elseif controls["lCRSRchar"] == 2 then
if string.len(values["baro"]) == 4 then
bline[4] = string.format("       %s   ",  string.sub(values["cal1baro"], 3, 3))
else
bline[4] = string.format("       %s   ",  string.sub(values["cal1baro"], 2, 2))
end
elseif controls["lCRSRchar"] == 3 then
if string.len(values["baro"]) == 4 then
bline[4] = string.format("        %s  ",  string.sub(values["cal1baro"], 4, 4))
else
bline[4] = string.format("        %s  ",  string.sub(values["cal1baro"], 3, 3))
end
end
else
bline[4] = "            "
end
gline[4] = string.format("BARO:%sMB|",  makelength(values["cal1baro"], 4, 1))
end

gline[5] = string.format("TEMP: %s*C|", values["cal2temp"])
bline[5]  = "            "

if controls["lselect"] == 3 then
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 6)

end

--here we calculate TAS (quite complex stuff!)
local DP=29.92126*((1 + 0.2*(values["cal2CAS"]/661.4786)^2)^3.5 -1)
local baro = 0
if values["barounit"] == 1 then
baro = values["cal1baro"] * 0.0295301
else
baro = values["cal1baro"] / 100
end
local PA =values["cal1ind"] + (145442.2*(1- (baro/29.92126)^0.190261))
local P= 29.92126*(1-6.8755856*10^-6*PA)^5.2558797
local M=(5*( (DP/P + 1)^(2/7) -1) )^0.5
--K is recovery factor, seems to be 1 in the KLN 90
local K = 1
local OAT=(values["cal2temp"]+273.15)/ (1 + 0.2*K*M^2) - 273.15
local CS= 38.967854*math.sqrt(OAT+273.15)
values["cal2TAS"] = round(M*CS)

gline[6] = string.format("TAS  %skt|", makelength(values["cal2TAS"], 4, 1))
gline[7] = "CAL 2"

bline[1] = "            "
bline[6] = "            "
elseif lsubpage[5] == 30 then
gline[1] = "   WIND    |"
--we make TAS a string
values["cal2TAS"] = makelength(values["cal2TAS"], 3, 2)

if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lCRSRchar"] < 1 then
controls["lCRSRchar"] = 3
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lCRSRchar"] > 3 then
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
x = string2value(string.sub(values["cal2TAS"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal2TAS"] = replaceChar(values["cal2TAS"],controls["lCRSRchar"],value2string(x))
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
x = string2value(string.sub(values["cal2TAS"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal2TAS"] = replaceChar(values["cal2TAS"],controls["lCRSRchar"],value2string(x))
controls["lknobs"] = 0
end
end
gline[2] = string.format("TAS   %skt|", values["cal2TAS"])
bline[2]  = "            "
if controls["lCRSR"]  == 1 then
bline[2] =  highlightchar(gline[2], controls["lCRSRchar"] + 6)
end

gline[3] = "           |"

--We blank gline 3, as we assume that HDG input is there, because it's available on OTH9
--gline[3] = string.format("HDG   %03d*|",  values["cal3HDG"])
local WS=math.sqrt((values["cal2TAS"]/1.94384-values["GPSSPD"])^2+ 4*(values["cal2TAS"]/1.94384*values["GPSSPD"])*(sin((get(PSIin)*pi/180-values["GPSTRK"]*pi/180)/2))^2 )
local WD=values["GPSTRK"]*pi/180 + math.atan2(values["cal2TAS"]/1.94384*sin(get(PSIin)*pi/180-values["GPSTRK"]*pi/180), values["cal2TAS"]/1.94384*cos(get(PSIin)*pi/180-values["GPSTRK"]*pi/180)-values["GPSSPD"])

local HW = (WS)*cos(WD-(get(PSIin)*pi/180))

--WD =  WD *180/pi + get(MAGVARin) - getmagvar(values["GPSlat"], values["GPSlon"])
WD =  WD *180/pi + get(MAGVARin)

if WD > 360 then WD = WD - 360
elseif WD < 0 then WD = WD + 360 end
gline[5] = string.format("WIND  %03d*~|", round(WD))
gline[6] = string.format("      %skt|",  makelength(round(WS*1.94384), 3, 1))


if HW < 0 then
HW = -HW
gline[4] = string.format("TLWND %skt|",  makelength(round(HW*1.94384), 3, 1))
else
gline[4] = string.format("HDWND %skt|",  makelength(round(HW*1.94384), 3, 1))
end
gline[7] = "CAL 3"

bline[1] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[5] == 40 then
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
--0: CAS, 1 ALT, 2, Baro 3, Temp
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 2
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 2
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 2 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 2 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["cal4GS"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal4GS"] = replaceChar(values["cal4GS"],controls["lCRSRchar"],value2string(x))
if values["cal4GS"] == "000" then
values["cal4ANG"] = "0.0"
else
values["cal4ANG"] = float(math.atan(values["cal4FPM"]/(values["cal4GS"]*6076/60))*180/pi, 1)

--  values["cal4ANG"] = string.sub(string.format("%f", round((math.atan(values["cal4FPM"]/(values["cal4GS"]*6076/60))*180/pi), 1)), 1, 3)
end
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["cal4FPM"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal4FPM"] = replaceChar(values["cal4FPM"],controls["lCRSRchar"],value2string(x))
if values["cal4GS"] == "000" then
values["cal4ANG"] = "0.0"
else
values["cal4ANG"] = float(math.atan(values["cal4FPM"]/(values["cal4GS"]*6076/60))*180/pi, 1)
end
elseif controls["lselect"] == 2 then
local y = controls["lCRSRchar"]
if y == 2 then y = 3 end
x = string2value(string.sub(values["cal4ANG"], y, y)) - 1
if x < 1 then x = 10 end
values["cal4ANG"] = replaceChar(values["cal4ANG"],y,value2string(x))
values["cal4FPM"] = makelength(round((values["cal4GS"]*6076/60)*math.tan(values["cal4ANG"]*pi/180), -2), 4, 2)
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
x = string2value(string.sub(values["cal4GS"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal4GS"] = replaceChar(values["cal4GS"],controls["lCRSRchar"],value2string(x))
if values["cal4GS"] == "000" then
values["cal4ANG"] = "0.0"
else
values["cal4ANG"] = float(math.atan(values["cal4FPM"]/(values["cal4GS"]*6076/60))*180/pi, 1)
end
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["cal4FPM"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal4FPM"] = replaceChar(values["cal4FPM"],controls["lCRSRchar"],value2string(x))
if values["cal4GS"] == "000" then
values["cal4ANG"] = "0.0"
else
values["cal4ANG"] = float(math.atan(values["cal4FPM"]/(values["cal4GS"]*6076/60))*180/pi, 1)
end
elseif controls["lselect"] == 2 then
local y = controls["lCRSRchar"]
if y == 2 then y = 3 end
x = string2value(string.sub(values["cal4ANG"], y, y)) + 1
if x > 10 then x = 1 end
values["cal4ANG"] = replaceChar(values["cal4ANG"],y,value2string(x))
values["cal4FPM"] = makelength(round((values["cal4GS"]*6076/60)*math.tan(values["cal4ANG"]*pi/180), -2), 4, 2)
end
controls["lknobs"] = 0
end
end

gline[1] = " VNV ANGLE |"
gline[2] = "           |"

gline[3] = string.format("GS:   %skt|", values["cal4GS"])
bline[3]  = "            "
if controls["lCRSR"]  == 1 and controls["lselect"] == 0 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"] + 6)
end
gline[4] = string.format("FPM:   %s|", values["cal4FPM"])
bline[4]  = "            "
if controls["lselect"] == 1 then
bline[4] =  highlightchar(gline[4], controls["lCRSRchar"] + 7)
end
gline[5] = string.format("ANGLE: %s*|", values["cal4ANG"])
bline[5]  = "            "
if controls["lselect"] == 2 then
if controls["lCRSRchar"] == 1 then
bline[5] =  highlightchar(gline[5], 8)
else
bline[5] =  highlightchar(gline[5], 10)
end
end


gline[6] = "           |"
gline[7] = "CAL 4"

bline[1] = "            "
bline[2] = "            "
bline[6] = "            "
elseif lsubpage[5] == 50 then
if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 0 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 3
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 2 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 3 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 2
controls["lCRSRchar"] = 3
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 2
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 2 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 3
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 3 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal5C"], 1, 1) == "0" then values["cal5C"] = replaceChar(values["cal5C"],1,"-")
else values["cal5C"] = replaceChar(values["cal5C"],1,"0") end
else
x = string2value(string.sub(values["cal5C"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal5C"] = replaceChar(values["cal5C"],controls["lCRSRchar"],value2string(x))
end
values["cal5F"] = makelength(round(values["cal5C"] * 9 / 5 + 32), 3, 2)
elseif controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal5F"], 1, 1) == "0" then values["cal5F"] = replaceChar(values["cal5F"],1,"-")
elseif string.sub(values["cal5F"], 1, 1) == "1" then values["cal5F"] = replaceChar(values["cal5F"],1,"0")
else values["cal5F"] = replaceChar(values["cal5F"],1,"1") end
else
x = string2value(string.sub(values["cal5F"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal5F"] = replaceChar(values["cal5F"],controls["lCRSRchar"],value2string(x))
end

values["cal5C"] = makelength(round((values["cal5F"]-32)*5/9), 3, 2)
elseif controls["lselect"] == 2 then
x = string2value(string.sub(values["cal5KT"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if controls["lCRSRchar"] == 1 then
if x < 1 then x = 8 end
else
if x < 1 then x = 10 end
end
values["cal5KT"] = replaceChar(values["cal5KT"],controls["lCRSRchar"],value2string(x))
values["cal5MPH"] = makelength(round(values["cal5KT"] * 1.15077945), 3, 2)
elseif controls["lselect"] == 3 then
x = string2value(string.sub(values["cal5MPH"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["cal5MPH"] = replaceChar(values["cal5MPH"],controls["lCRSRchar"],value2string(x))
values["cal5KT"] = makelength(round(values["cal5MPH"] * 0.868976242), 3, 2)
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal5C"], 1, 1) == "0" then values["cal5C"] = replaceChar(values["cal5C"],1,"-")
else values["cal5C"] = replaceChar(values["cal5C"],1,"0") end
else
x = string2value(string.sub(values["cal5C"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal5C"] = replaceChar(values["cal5C"],controls["lCRSRchar"],value2string(x))
end
values["cal5F"] = makelength(round(values["cal5C"] * 9 / 5 + 32), 3, 2)
elseif controls["lselect"] == 1 then
if controls["lCRSRchar"] == 1 then
if string.sub(values["cal5F"], 1, 1) == "0" then values["cal5F"] = replaceChar(values["cal5F"],1,"1")
elseif string.sub(values["cal5F"], 1, 1) == "-" then values["cal5F"] = replaceChar(values["cal5F"],1,"0")
else values["cal5F"] = replaceChar(values["cal5F"],1,"-") end
else
x = string2value(string.sub(values["cal5F"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal5F"] = replaceChar(values["cal5F"],controls["lCRSRchar"],value2string(x))
end
values["cal5C"] = makelength(round((values["cal5F"]-32)*5/9), 3, 2)
elseif controls["lselect"] == 2 then
x = string2value(string.sub(values["cal5KT"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if controls["lCRSRchar"] == 1 then
if x > 8 then x = 1 end
else
if x > 10 then x = 1 end
end
values["cal5KT"] = replaceChar(values["cal5KT"],controls["lCRSRchar"],value2string(x))
values["cal5MPH"] = makelength(round(values["cal5KT"] * 1.15077945), 3, 2)
elseif controls["lselect"] == 3 then
x = string2value(string.sub(values["cal5MPH"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["cal5MPH"] = replaceChar(values["cal5MPH"],controls["lCRSRchar"],value2string(x))
values["cal5KT"] = makelength(round(values["cal5MPH"] * 0.868976242), 3, 2)
end
controls["lknobs"] = 0
end
end


gline[2] = string.format("   %s*C   |", values["cal5C"])
bline[2]  = "            "
if controls["lCRSR"]  == 1 and controls["lselect"] == 0 then
bline[2] =  highlightchar(gline[2], controls["lCRSRchar"] + 3)
end

gline[3] = string.format("   %s*F   |", values["cal5F"])
bline[3]  = "            "
if controls["lselect"] == 1 then
bline[3] =  highlightchar(gline[3], controls["lCRSRchar"] + 3)
end

gline[5] = string.format("   %skt   |", values["cal5KT"])
bline[5]  = "            "
if controls["lselect"] == 2 then
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 3)
end

gline[6] = string.format("   %smph  |", values["cal5MPH"])
bline[6]  = "            "
if controls["lselect"] == 3 then
bline[6] =  highlightchar(gline[6], controls["lCRSRchar"] + 3)
end

gline[1] = "TEMP/SPEED |"
gline[4] = "           |"
gline[7] = "CAL 5"
bline[1] = "            "
bline[4] = "            "
elseif lsubpage[5] == 60 then
--working, only the long timezone names are not verified!
if not values["timeconftime"] then
values["timeconftime"] = table.copy(values["time"])
values["timeconftime"]["zone2"] = 1
end
local z = ""

local name1 = ""
local name2 = ""
local diff1 = 0
local diff2 = 0
local name1l = ""
local name2l = ""
name1, diff1, name1l = timezone(values["timeconftime"]["zone"])
name2, diff2, name2l = timezone(values["timeconftime"]["zone2"])



if controls["lCRSR"]  == 1 then
if controls["lselect"] == 0 then
values["timeconftime"]["zonediff"]= diff1
editvalue(3, "l", values["timeconftime"])
elseif controls["lselect"] == 2 then
values["timeconftime"]["zonediff"]= diff2
editvalue(3, "l", values["timeconftime"])
end
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 1 then
values["timeconftime"]["zone"] = values["timeconftime"]["zone"] - 1
if values["timeconftime"]["zone"] < 1 then values["timeconftime"]["zone"] = 19 end
elseif controls["lselect"] == 3 then
values["timeconftime"]["zone2"] = values["timeconftime"]["zone2"] - 1
if values["timeconftime"]["zone2"] < 1 then values["timeconftime"]["zone2"] = 19 end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 1 then
values["timeconftime"]["zone"] = values["timeconftime"]["zone"] + 1
if values["timeconftime"]["zone"] > 19 then values["timeconftime"]["zone"] = 1 end
elseif controls["lselect"] == 3 then
values["timeconftime"]["zone2"] = values["timeconftime"]["zone2"] + 1
if values["timeconftime"]["zone2"] > 19 then values["timeconftime"]["zone2"] = 1 end
end
controls["lknobs"] = 0
end
end

if controls["lselect"] < 0 then controls["lselect"] = 3
elseif controls["lselect"] > 3 then controls["lselect"] = 0
end

gline[1] = " TIME CONV |"
if controls["lselect"] == 1 then
bline[2] = string.format("       %s ", name1)
else
bline[2] = "            "
end
if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[2] = string.format(" %s %s |", values["lgstring"], name1)
bline[2] =  " " .. values["lbstring"] .. "      "
else
local hour2 = values["timeconftime"]["hour"] + diff1
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
gline[2] = string.format(" %02d:%02d %s |", hour2, values["timeconftime"]["minute"], name1)
end

if controls["lselect"] == 3 then
bline[5] = string.format("       %s ", name2)
else
bline[5] = "            "
end
gline[3] = name1l.."|"
gline[6] = name2l.."|"

if controls["lselect"] == 2 then
gline[5] = string.format(" %s %s |", values["lgstring"], name2)
bline[5] =  " " .. values["lbstring"] .. "      "
else
local hour2 = values["timeconftime"]["hour"] + diff2
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
gline[5] = string.format(" %02d:%02d %s |", hour2, values["timeconftime"]["minute"], name2)
end

gline[4] = "           |"
gline[7] = "CAL 6"
bline[1] = "            "
bline[3] = "            "
bline[4] = "            "
bline[6] = "            "
elseif lsubpage[5] == 70 then
--fully working.
gline[1] = "SUNRISE/SET|"
if not values["sunzone"] then
values["sunwpt"] = {}
values["sundate"] = table.copy(values["date"])
values["suntime"] = {}
values["sunzone"] = values["time"]["zone"]
if values["activeWPT"]["length"] > 0 then
values["sunwpt"] =  values["activeWPT"][values["activeWPT"]["length"]]
--  values["sunwpt"] = FPlan[0][FPlan[0]["length"]]
else
values["sunwpt"]["ident"] = "     "
end
end



if controls["lCRSR"]  == 1 then
if controls["lselect"] == 0 then
values["sunwpt"] = editvalue(1, "l", values["sunwpt"])
elseif controls["lselect"] == 1 then
values["sundate"] = editvalue(2, "l", values["sundate"])
end
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 2 then
values["sunzone"] = values["sunzone"] - 1
if values["sunzone"] < 1 then values["sunzone"] = 19 end
controls["rknobs"] = 0
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 2 then
values["sunzone"] = values["sunzone"] + 1
if values["sunzone"] > 19 then values["sunzone"] = 1 end
controls["rknobs"] = 0
end
controls["lknobs"] = 0
end
end
if controls["lselect"] < 0 then controls["lselect"] = 2
elseif controls["lselect"] > 2 then controls["lselect"] = 0
end
values["suntime"]["zonename"], values["suntime"]["zonediff"], values["suntime"]["sunzonenamel"] = timezone(values["sunzone"])

if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[2] = "WPT: " .. values["lgstring"] .. " |"
bline[2] = "     " .. values["lbstring"] .. "  "
else
gline[2] = "WPT: " .. values["sunwpt"]["ident"] .. " |"
bline[2] = "            "
end
--print(gline[2])


if controls["lselect"] == 1 then
gline[3] = "  " .. values["lgstring"] .. "|"
bline[3] = "  " .. values["lbstring"] .. " "
else
local months = numbertomonth(values["sundate"]["month"])
gline[3] = string.format("  %02d %s %02d|", values["sundate"]["days"], months, values["sundate"]["year"])
bline[3] = "            "
end

if controls["lselect"] == 2 then
gline[4] = "        " .. values["suntime"]["zonename"]  .. "|"
bline[4] = "        " .. values["suntime"]["zonename"]  .. " "
else
gline[4] = "        " .. values["suntime"]["zonename"]  .. "|"
bline[4] = "            "
end

if values["sunwpt"]["ident"] == "     " then
gline[5] = "RISE  --:--|"
gline[6] = "SET   --:--|"
else
local sunrise = sunriseset(values["sunwpt"]["lat"], values["sunwpt"]["lon"], 0)
local sunset  = sunriseset(values["sunwpt"]["lat"], values["sunwpt"]["lon"], 1)
gline[5] = "RISE  " .. sunrise .. "|"
gline[6] = "SET   " .. sunset .. "|"
end
gline[7] = "CAL 7"

bline[1] = "            "

bline[5] = "            "
bline[6] = "            "
end
--#########################################################################This is the STATUS page
--all pages should be complete and bug free
elseif lpage == 6 then
if lsubpage[6] == 10 then
controls["lCRSR"]  = 0
gline[7] = "STA 1"

if values["GPSnum"] == 0 then
gline[1] = "STATE  INIT|"
elseif values["GPSnum"] < 4 then
gline[1] = "STATE   ACQ|"
elseif values["GPSnum"] == 4 then
gline[1] = "STATE NAV D|"
elseif values["GPSnum"] < 8 then
gline[1] = "STATE NAV D|"
gline[7] = "STA+1"
elseif values["GPSnum"] == 8 then
gline[1] = "STATE   NAV|"
gline[7] = "STA+1"
end


gline[2] = " SV SNR ELE|"

local line = 3
while line <= 6 do
if values["GPSSAT"][line-2] == nil then
gline[line] = "           |"
else
gline[line] = string.format("%s%02d%s %02d %02d*|",  values["GPSSAT"][line-2][0], values["GPSSAT"][line-2][1], values["GPSSAT"][line-2][2], values["GPSSAT"][line-2][3], values["GPSSAT"][line-2][4])
end
line = line + 1
end

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "

elseif lsubpage[6] == 11 then
controls["lCRSR"]  = 0

local line = 1
while line <= 4 do
if values["GPSSAT"][line+4] == nil then
gline[line] = "           |"
else
gline[line] = string.format("%s%02d%s %02d %02d*|",  values["GPSSAT"][line+4][0], values["GPSSAT"][line+4][1], values["GPSSAT"][line+4][2], values["GPSSAT"][line+4][3], values["GPSSAT"][line+4][4])
end
line = line + 1
end

gline[5] = "           |"
gline[6] = "           |"
gline[7] = "STA+1"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "


elseif lsubpage[6] == 20 then
controls["lCRSR"]  = 0
gline[1] = "ESTIMATED  |"
gline[2] = "POSN ERROR |"
if values["GPSnum"] < 4 then
gline[3] = "     -.--nm|"
else
local poserror = 0
local num = 1
while num < values["GPSnum"] do
poserror = poserror + values["GPSSAT"][num][7]
num = num + 1
end
poserror = -poserror/1600 + 0.25
gline[3] = string.format("      .%02dnm|",  string.sub(poserror, 3, 4))
end
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "STA 2"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[6] == 30 then
controls["lCRSR"]  = 0
gline[1] = "HOST SW  20|"
gline[2] = "RCVR SW  20|"
gline[3] = "OBS CAL 100|"
gline[4] = "           |"
gline[5] = "V1.01      |"
gline[6] = "           |"
gline[7] = "STA 3"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[6] == 40 then
if controls["lCRSR"]  == 0 then
gline[1] = "TOTAL TIME |"
gline[2] = string.format("  %s HR|",  makelength(math.floor(values["GPSHobbs"]/3600), 6, 1))
gline[3] = "PWR CYCLES |"
gline[4] = string.format("  %s   |",  makelength(values["GPSTurnons"], 6, 1))
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "STA 4"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
else
if not values["PONG"] then
values["PONG"] = {}
values["PONG"]["ScoreL"] = 0
values["PONG"]["ScoreR"] = 0
values["PONG"]["x"] = 103
values["PONG"]["y"] = 61
values["PONG"]["vx"] = 21
values["PONG"]["vy"] = math.random(-20, 20)
values["PONG"]["lpad"] = 52
values["PONG"]["rpad"] = 52
end

if controls["lknobl"] == -1 or controls["lknobs"] == -1 then
values["PONG"]["lpad"] = values["PONG"]["lpad"] - 200 * passed
if values["PONG"]["lpad"] < 28 then values["PONG"]["lpad"] = 28 end
elseif controls["lknobl"] == 1 or controls["lknobs"] == 1 then
values["PONG"]["lpad"] = values["PONG"]["lpad"] + 200 * passed
if values["PONG"]["lpad"] > 74 then values["PONG"]["lpad"] = 74 end
end
controls["lknobl"] = 0
controls["lknobs"] = 0




gline[1] = "     " .. makelength(values["PONG"]["ScoreL"], 4, 1) .. "  |  " .. values["PONG"]["ScoreR"]
gline[2] = "           |"
gline[3] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "PONG "

values["PONG"]["x"] = values["PONG"]["x"] + (values["PONG"]["vx"] * passed)
values["PONG"]["y"] = values["PONG"]["y"] + (values["PONG"]["vy"] * passed)
if values["PONG"]["y"] > 94  then
values["PONG"]["vy"] = -values["PONG"]["vy"]
values["PONG"]["y"] = 94
elseif values["PONG"]["y"] < 28  then
values["PONG"]["vy"] = -values["PONG"]["vy"]
values["PONG"]["y"] = 28
end
--enemy here!
if values["PONG"]["vx"] < 0 then
if values["PONG"]["rpad"] < 52 then
values["PONG"]["rpad"] = values["PONG"]["rpad"] + 40 * passed
elseif values["PONG"]["rpad"] > 52 then
values["PONG"]["rpad"] = values["PONG"]["rpad"] - 40 * passed
end
else
if values["PONG"]["rpad"] + 10 < values["PONG"]["y"] then
values["PONG"]["rpad"] = values["PONG"]["rpad"] + 40 * passed
elseif values["PONG"]["rpad"] + 10 > values["PONG"]["y"] then
values["PONG"]["rpad"] = values["PONG"]["rpad"] - 40 * passed
end
end

if values["PONG"]["rpad"] < 28 then values["PONG"]["rpad"] = 28
elseif values["PONG"]["rpad"] > 74 then values["PONG"]["rpad"] = 74 end

--player (5 pixels cheat)
if values["PONG"]["x"] < 10 then
if values["PONG"]["y"] < values["PONG"]["lpad"] + 22.5 and values["PONG"]["y"] > values["PONG"]["lpad"] - 2.5 then
values["PONG"]["vx"] = -values["PONG"]["vx"] * 1.05
values["PONG"]["vy"] = (values["PONG"]["y"] - values["PONG"]["lpad"] - 10) * 15
else
values["PONG"]["ScoreR"] = values["PONG"]["ScoreR"] + 1
values["PONG"]["x"] = 103
values["PONG"]["y"] = 61
values["PONG"]["vx"] = 21
values["PONG"]["vy"] = math.random(-20, 20)
end
end
--enemy
if values["PONG"]["x"] > 196 then
if values["PONG"]["y"] < values["PONG"]["rpad"] + 20 and values["PONG"]["y"] > values["PONG"]["rpad"] then
values["PONG"]["vx"] = -values["PONG"]["vx"] * 1.05
values["PONG"]["vy"] = (values["PONG"]["y"] - values["PONG"]["rpad"] - 10) * 15
else
values["PONG"]["ScoreL"] = values["PONG"]["ScoreL"] + 1
values["PONG"]["x"] = 103
values["PONG"]["y"] = 61
values["PONG"]["vx"] = 21
values["PONG"]["vy"] = math.random(-20, 20)
end
end
local size = {0, 28, 206, 66}

Nav5Comp = {}
--Nav5Comp_Serializer = {}

table.insert(Nav5Comp, textureLit2 {
position = {round(values["PONG"]["x"]-1.5), round(values["PONG"]["y"]-1.5), 3, 3},
image = get(mapquad),
brt2 = function()
return brt
end,
visible = function()
return true
end,
})
--table.insert ( Nav5Comp_Serializer, WrapTextLit(round(values["PONG"]["x"]-1.5),round(values["PONG"]["y"]-1.5),3,3,1,brt,1) )

drawline(Nav5Comp, 10, round(values["PONG"]["lpad"]), 10, round(values["PONG"]["lpad"] + 20), size)
--table.insert ( Nav5Comp_Serializer, WrapLine(15, round(values["PONG"]["lpad"]), 15, round(values["PONG"]["lpad"] + 20), size) )
drawline(Nav5Comp, 196, round(values["PONG"]["rpad"]), 196, round(values["PONG"]["rpad"] + 20), size)
--table.insert ( Nav5Comp_Serializer, WrapLine(196, round(values["PONG"]["rpad"]), 196, round(values["PONG"]["rpad"] + 20), size) )

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
end
elseif lsubpage[6] == 50 then
--not operational yet (use } for raim avail)
if not values["RAIMtime"] then
values["RAIMtime"] = table.copy(values["time"])
values["RAIMtime"]["hour"] = 25
values["RAIMwpt"] = {}
values["RAIMSTA"] = 0
if values["activeWPT"]["length"] > 0 then
values["RAIMwpt"] =  values["activeWPT"][values["activeWPT"]["length"]]
--  values["sunwpt"] = FPlan[0][FPlan[0]["length"]]
else
values["RAIMwpt"]["ident"] = "     "
end
end

if controls["lCRSR"]  == 1 then
if controls["lselect"] == 0 then
values["RAIMwpt"] = editvalue(1, "l", values["RAIMwpt"])
elseif controls["lselect"] == 1 then
editvalue(3, "l", values["RAIMtime"])
end
if values["lreturn"] == 1 and values["RAIMtime"]["hour"] ~= 25 then
values["RAIMSTA"] = 1
end
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 2 then
values["RAIMtime"]["zone"] = values["RAIMtime"]["zone"] - 1
if values["RAIMtime"]["zone"] < 1 then values["RAIMtime"]["zone"] = 19 end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 2 then
values["RAIMtime"]["zone"] = values["RAIMtime"]["zone"] + 1
if values["RAIMtime"]["zone"] > 19 then values["RAIMtime"]["zone"] = 1 end
end
controls["lknobs"] = 0
end
end
if values["RAIMSTA"] > 0 and values["RAIMSTA"] < 10 then
values["RAIMSTA"] = values["RAIMSTA"] + passed
end
if controls["lselect"] < 0 then controls["lselect"] = 2
elseif controls["lselect"] > 2 then controls["lselect"] = 0
end

values["RAIMtime"]["zonename"], values["RAIMtime"]["zonediff"], values["RAIMtime"]["zonenamel"] = timezone(values["RAIMtime"]["zone"])


gline[1] = "RAIM STATUS|"
if controls["lselect"] == 0 and controls["lCRSR"]  == 1 then
gline[2] = "DEST: " .. values["lgstring"] .. "|"
bline[2] = "      " .. values["lbstring"] .. " "
else
gline[2] = "DEST: " .. values["RAIMwpt"]["ident"] .. "|"
bline[2] = "            "
end

if  values["RAIMtime"]["hour"] == 25 and not (controls["lCRSRchar"] ~= 0 and controls["lselect"] == 1) then
gline[3] = "ETA:  --:--|"
if controls["lselect"] == 1 then
bline[3] = "      --:-- "
else
bline[3] = "            "
end
else
if controls["lselect"] == 1 then
gline[3] = string.format("ETA:  %s|", values["lgstring"])
bline[3] =  "      " .. values["lbstring"] .. " "
else
local hour2 = values["RAIMtime"]["hour"] + values["RAIMtime"]["zonediff"]
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
gline[3] = string.format("ETA:  %02d:%02d|", hour2, values["RAIMtime"]["minute"])
bline[3] = "            "
end
end

gline[4] =  "        " .. values["RAIMtime"]["zonename"] .."|"
if controls["lselect"] == 2 then
bline[4] = "        " .. values["RAIMtime"]["zonename"] .. " "
else
bline[4] = "            "
end
if values["RAIMSTA"] == 0 then
gline[5] = "  {{{{{{{  |"
elseif values["RAIMSTA"] < 10 then
gline[5] = " COMPUTING |"
else
gline[5] = "  }}}}}}}  |"
end

gline[6] = "-15  0  +15|"
gline[7] = "STA 5"

bline[1] = "            "
bline[5] = "            "
bline[6] = "            "
end
if values["GPSnum"] > 4 then
if controls["lknobs"] == 1 then
if lsubpage[6] == 10 then
lsubpage[6] = 11
controls["lknobs"] = 0
elseif lsubpage[6] == 11 then
lsubpage[6] = 20
controls["lknobs"] = 0
end
elseif controls["lknobs"] == -1 then
if lsubpage[6] == 20 then
lsubpage[6] = 11
controls["lknobs"] = 0
elseif lsubpage[6] == 11 then
lsubpage[6] = 10
controls["lknobs"] = 0
end
end
end
elseif lpage == 7 then
--#########################################################################This is the SET0 page
if lsubpage[7] == 0 then
if controls["lCRSR"] == 0 then
gline[1] = "      U P D A T E"
gline[2] = "   D A T A   B A S E"
gline[3] = ""
gline[4] = "   O N   G R O U N D"
gline[5] = "        O N L Y"
gline[6] = ""
gline[7] = "SET 0"

bline[1] = ""
bline[2] = ""
bline[3] = ""
bline[4] = ""
bline[5] = ""
bline[6] = ""
else
values["MSGENT"] = 2
controls["lknobs"] = 0
controls["lknobl"] = 0
if controls["ENT"] == 1 then
lsubpage[7] = 1
elseif controls["CLR"] == 1 then
controls["lCRSR"] = 0
end
gline[1] = "      U P D A T E"
gline[2] = "   D A T A   B A S E"
gline[3] = ""
gline[4] = "  UPDATE PUBLISHED DB"
gline[5] = ""
gline[6] = ""

gline[7] = "SET 0"
bline[6] = ""

if values["flash"] == 1 then
bline[4] = "  UPDATE#PUBLISHED#DB"
else
bline[4] = ""
end
end
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rCRSR"] = 0


elseif lsubpage[7] == 1 then
values["MSGENT"] = 2
controls["lCRSR"] = 1
controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rCRSR"] = 0


if controls["ENT"] == 1 then
lsubpage[7] = 2
elseif controls["CLR"] == 1 then
lsubpage[7] = 0
end
gline[1] = "      U P D A T E"
gline[2] = ""
gline[3] = "     INTERNATIONAL"

local month2 = string.sub(nav_cycle, 15, 17)
local days = tonumber(string.sub(nav_cycle, 13, 14))
local year2 = tonumber(string.sub(nav_cycle, 19, 20))

--############################# consider rewriting this!

days2 = monthstodays(month2, days)
local days3 = monthstodays(numbertomonth(values["date"]["month"]), values["date"]["days"])
local expired = 0
-- print(days2, days3)
if year2 < values["date"]["year"] then
expired = 1
elseif days2 < days3 then
expired = 1
end
gline[5] = string.format("       %02d %s %02d", days, month2, year2)

if expired == 0 then
gline[4] = "   DATA BASE EXPIRES"
else
gline[4] = "   DATA BASE EXPIRED"
end


gline[6] = "     U P D A T E ?"

gline[7] = "SET 0"


bline[4] = ""
if values["flash"] == 1 then
bline[6] = "     U#P#D#A#T#E#?"
else
bline[6] = ""
end
elseif lsubpage[7] == 2 then
values["MSGENT"] = 2
controls["lCRSR"] = 1
controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rCRSR"] = 0

gline[1] = "      U P D A T E"
gline[2] = "   D A T A   B A S E"
gline[3] = ""
gline[4] = "   E S T .   L O A D"
gline[5] = "   T I M E :    1 MIN"
gline[6] = "    A P P R O V E ?"
gline[7] = "SET 0"

if values["flash"] == 1 then
bline[6] = "    A#P#P#R#O#V#E#?"
else
bline[6] = ""
end

if controls["ENT"] == 1 then
lsubpage[7] = 3
values["MSGENT"] = 0
gline[1] = "      U P D A T E"
gline[2] = "   D A T A   B A S E"
gline[3] = ""
gline[4] = "     E R A S I N G"
gline[5] = "   D A T A   B A S E"
gline[6] = ""
gline[7] = "SET 0"
bline[6] = ""
controls["lCRSR"] = 0

elseif controls["CLR"] == 1 then
lsubpage[7] = 1
end


elseif lsubpage[7] == 3 then -- or lsubpage[7] == 4 then

-- gline[7] = "SET 0"


controls["lCRSR"] = 0
controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rCRSR"] = 0


--now do lotsa calculations

os.remove ("Custom Data/KLN90B_Navdata/airports.txt")
os.remove ("Custom Data/KLN90B_Navdata/APTSUP.txt")
os.remove ("Custom Data/KLN90B_Navdata/navaids.txt")
os.remove ("Custom Data/KLN90B_Navdata/magvar.txt")
os.remove ("Custom Data/KLN90B_Navdata/waypoints.txt")

lsubpage[7] = 4
update_nav_database()
values["timer"] = 10
--end
elseif lsubpage[7] == 4 then
controls["lCRSR"] = 0
controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rCRSR"] = 0

if values["timer"] > 0 then
values["timer"] = values["timer"] - passed
gline[4] = string.format("  %02d PERCENT COMPLETE", 100 - values["timer"]*10)
gline[5] = ""
gline[7] = "SET 0"
else
--sasl.commandOnce(sasl.findCommand("sasl/reload/" .. sasl.getProjectName ()))
lsubpage[7] = 5
controls["lCRSR"] = 1
end
elseif lsubpage[7] == 5 then
values["MSGENT"] = 2
controls["lknobs"] = 0
controls["lknobl"] = 0
controls["rknobs"] = 0
controls["rknobl"] = 0
controls["rCRSR"] = 0

if controls["ENT"] == 1 then
sasl.scheduleProjectReboot ()
end

gline[1] = "      U P D A T E"
gline[2] = "   D A T A   B A S E"
gline[3] = ""
gline[4] = "  UPDATE PUBLISHED DB"
gline[5] = "       COMPLETED"
gline[6] = "      ACKNOWLEDGE?"
gline[7] = "SET 0"
if values["flash"] == 1 then
bline[6] = "      ACKNOWLEDGE?"
else
bline[6] = ""
end
--#########################################################################This is the SET1 page

elseif lsubpage[7] == 10 then

if controls["lCRSR"]  == 1 then
if controls["lselect"] == 0 then
values["initwpt"] = editvalue(1, "l", values["initwpt"])
if values["lreturn"] == 1 then
values["initlat"] = values["initwpt"]["lat"]
values["initlon"] = values["initwpt"]["lon"]
values["initconf"] = true
controls["lselect"] = 3
end
elseif controls["lselect"] == 1 then
values["initlat"] = editvalue(5, "l", values["initlat"])
if values["lreturn"] == 1 then
values["initconf"] = true
end
elseif controls["lselect"] == 2 then
values["initlon"] = editvalue(6, "l", values["initlon"])
if values["lreturn"] == 1 then
values["initconf"] = true
end
elseif controls["lselect"] == 3 then
controls["lknobs"]  = 0
values["MSGENT"] = 2
if controls["lknobl"] == -1 then
controls["lselect"] = 2
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = 0
controls["lknobl"] = 0
elseif controls["ENT"] == 1 then
controls["ENT"] = 0
controls["lCRSR"]  = 0
values["initconf"] = nil
end
end
end
if values["initconf"] == true then
if controls["lselect"] < 0 then controls["lselect"] = 3
elseif controls["lselect"] > 3 then controls["lselect"] = 0 end
if controls["lselect"] == 3 and values["flash"] == 1 then
bline[6] = "CONFIRM?    "
else
bline[6] = "            "
end
gline[6] = "CONFIRM?   |"
else
gline[6] = "           |"
bline[6] = "            "
if controls["lselect"] < 0 then controls["lselect"] = 2
elseif controls["lselect"] > 2 then controls["lselect"] = 0 end
end

gline[1] = "INIT POSN  |"

if controls["lCRSR"] == 1 and controls["lselect"] == 0 then
gline[2] = "WPT: " .. values["lgstring"] .. " |"
bline[2] = "     " .. values["lbstring"] .. "  "
else
gline[2] = "WPT: " .. values["initwpt"]["ident"] .. " |"
bline[2] = "            "
end
--print(gline[2])


if controls["lselect"] == 1 then
gline[3] = values["lgstring"] .. "|"
bline[3] = values["lbstring"] .. " "
else
gline[3] = convertLatLon(values["initlat"], 0) .. "|"
bline[3] = "            "
end

if controls["lselect"] == 2 then
gline[4] = values["lgstring"] .. "|"
bline[4] = values["lbstring"] .. " "
else
gline[4] = convertLatLon(values["initlon"], 1)  .. "|"
bline[4] = "            "
end



gline[5] = string.format("%s KT %03d*|",makelength(round(values["GPSSPD"]* 1.94384449), 3, 1), values["GPSTRK"])
gline[7] = "SET 1"

bline[1] = "            "
bline[5] = "            "

--#########################################################################This is the SET2 page
--Bug: When local time is < 0 then date still remains unchaged
elseif lsubpage[7] == 20 then
if controls["lCRSR"]  == 1 then
if controls["lselect"] == 0 then
editvalue(2, "l", values["date"])
elseif controls["lselect"] == 1 then
editvalue(3, "l", values["time"])
end
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 2 then
values["time"]["zone"] = values["time"]["zone"] - 1
if values["time"]["zone"] < 1 then values["time"]["zone"] = 19 end
elseif controls["lselect"] == 3 then
values["magvar"] = values["magvar"] - 1
if values["magvar"] < -99 then values["magvar"] = -99 end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 2 then
values["time"]["zone"] = values["time"]["zone"] + 1
if values["time"]["zone"] > 19 then values["time"]["zone"] = 1 end
elseif controls["lselect"] == 3 then
values["magvar"] = values["magvar"] + 1
if values["magvar"] > 99 then values["magvar"] = 99 end
end
controls["lknobs"] = 0
end
end
if values["GPSlat"] > 74 or values["GPSlat"] < -60 then
if controls["lselect"] < 0 then controls["lselect"] = 3
elseif controls["lselect"] > 3 then controls["lselect"] = 0 end
else
if controls["lselect"] < 0 then controls["lselect"] = 2
elseif controls["lselect"] > 2 then controls["lselect"] = 0 end
end

if controls["lCRSR"]  == 1 and controls["lselect"] == 0 and controls["lCRSRchar"] ~= 0 then
values["MSGENT"] = 2
if values["GPSnum"] ~= 0 then
values["editvalue"] = nil
controls["lCRSRchar"] = 0
end
elseif controls["lCRSR"]  == 1 and controls["lselect"] == 1 and controls["lCRSRchar"] ~= 0 then
values["MSGENT"] = 2
if values["GPSnum"] ~= 0 then
values["editvalue"] = nil
controls["lCRSRchar"] = 0
end
end



gline[1] = " DATE/TIME |"
gline[2] = "           |"
values["time"]["zonename"], values["time"]["zonediff"], values["time"]["zonenamel"] = timezone(values["time"]["zone"])

if controls["lCRSR"]  == 1 and controls["lselect"] == 0 then
gline[3] = "  " .. values["lgstring"] .. "|"
bline[3] = "  " .. values["lbstring"] .. " "
else
local months = numbertomonth(values["date"]["month"])
gline[3] = string.format("  %02d %s %02d|", values["date"]["days"], months, values["date"]["year"])
bline[3] = "            "
end

if controls["lselect"] == 2 then
bline[4] = string.format("        %s ", values["time"]["zonename"])
else
bline[4] = "            "
end

if controls["lselect"] == 1 then
gline[4] = string.format("%s:%02d%s|", values["lgstring"], values["time"]["second"], values["time"]["zonename"])
bline[4] =  values["lbstring"] .. "       "
else
local hour2 = values["time"]["hour"] + values["time"]["zonediff"]
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
gline[4] = string.format("%02d:%02d:%02d%s|", hour2, values["time"]["minute"], values["time"]["second"], values["time"]["zonename"])
end


gline[5] = values["time"]["zonenamel"].."|"
if values["GPSlat"] > 74 or values["GPSlat"] < -60 then
if values["magvar"] < 0 then
gline[6] = "MAG V" .. makelength(math.abs(values["magvar"]), 4, 1) .. "*W|"
else
gline[6] = "MAG V" .. makelength(values["magvar"], 4, 1) .. "*E|"
end
else
gline[6] = "           |"
end
if controls["lselect"] == 3 then
bline[6] = "     " .. makelength(math.abs(values["magvar"]), 4, 1) .. "   "

else
bline[6] = "            "
end

gline[7] = "SET 2"

bline[1] = "            "
bline[2] = "            "
bline[5] = "            "

--#########################################################################This is the SET3 page
elseif lsubpage[7] == 30 then
if controls["lCRSR"] == 1 then
if controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
values["RWYminlength"] = values["RWYminlength"] - 100
if values["RWYminlength"] < 1000 then values["RWYminlength"] = 5000 end
elseif controls["lselect"] == 1 then
if values["RWYsurface"] == 1 then values["RWYsurface"] = 0
else values["RWYsurface"] = 1 end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
values["RWYminlength"] = values["RWYminlength"] + 100
if values["RWYminlength"] > 5000 then values["RWYminlength"] = 1000 end
elseif controls["lselect"] == 1 then
if values["RWYsurface"] == 0 then values["RWYsurface"] = 1
else values["RWYsurface"] = 0 end
end
controls["lknobs"] = 0
elseif controls["lknobl"] == -1 or controls["lknobl"] == 1 then
if controls["lselect"] == 0 then
controls["lselect"] = 1
else
controls["lselect"] = 0
end
controls["lknobl"] = 0

end
end


gline[1] = "NEAREST APT|"
gline[2] = " CRITERIA  |"
gline[3] = "MIN LENGTH:|"
bline[4] = "            "

gline[4] = string.format("      %4d'|",  values["RWYminlength"])
if  controls["lCRSR"] == 1 and controls["lselect"] == 0 then
bline[4] = string.format("      %4d' ",  values["RWYminlength"])
end


gline[5] = "SURFACE:   |"
if values["RWYsurface"] == 0 then
gline[6] = "    HRD SFT|"
if controls["lselect"] == 1 then
bline[6] = "####HRD#SFT "
else
bline[6] = "            "
end
elseif values["RWYsurface"] == 1 then
gline[6] = "   HRD     |"
if controls["lselect"] == 1 then
bline[6] = "####HRD#### "
else
bline[6] = "            "
end
end
gline[7] = "SET 3"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[5] = "            "
--#########################################################################This is the SET4 page
elseif lsubpage[7] == 40 then

if controls["lCRSR"] == 1 then
if controls["lknobs"] == -1 then
values["timerstart"] = values["timerstart"] - 1
elseif controls["lknobs"] == 1 then
values["timerstart"] = values["timerstart"] + 1
end
controls["lknobs"] = 0
controls["lknobl"] = 0
end
if values["timerstart"] < 0 then values["timerstart"] = 1
elseif values["timerstart"] > 1 then values["timerstart"] = 0 end



gline[1] = "  FLIGHT   |"
gline[2] = "  TIMER    |"
gline[3] = " OPERATION |"
gline[4] = "           |"
gline[5] = "RUN WHEN   |"
if values["timerstart"] == 0 then
gline[6] = "GS > 30kt  |"
else
gline[6] = "POWER IS ON|"
end
gline[7] = "SET 4"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "

if controls["lCRSR"] == 1 then
if values["timerstart"] == 0 then
bline[6] = "GS#>#30kt   "
else
bline[6] = "POWER#IS#ON "
end
end

--#########################################################################This is the SET5 page
elseif lsubpage[7] == 50 then
if controls["lCRSR"] == 1 then

if controls["lknobl"] == -1 then
if values["HTAPT"] ~= 0 then
controls["lselect"] = controls["lselect"] - 1
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
if values["HTAPT"] ~= 0 then
controls["lselect"] = controls["lselect"] + 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
if values["HTAPT"] == 0 then
values["HTAPT"] = 800
else
values["HTAPT"] = 0
end
elseif controls["lselect"] == 1 then
values["HTAPT"] = values["HTAPT"] - 100
if values["HTAPT"] < 800 then values["HTAPT"] = 2000 end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
if values["HTAPT"] == 0 then
values["HTAPT"] = 800
else
values["HTAPT"] = 0
end
elseif controls["lselect"] == 1 then
values["HTAPT"] = values["HTAPT"] + 100
if values["HTAPT"] > 2000 then values["HTAPT"] = 800 end
end
controls["lknobs"] = 0

end
end


if controls["lselect"] < 0 then controls["lselect"] = 1
elseif controls["lselect"] > 1 then controls["lselect"] = 0
end

gline[1] = " HT ABOVE  |"
gline[2] = " APT ALERT |"
if values["HTAPT"] == 0 then
gline[3] = "    OFF    |"
if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
bline[3] = "    OFF     "
else
bline[3] = "            "
end
gline[5] = "           |"
gline[6] = "           |"
bline[6] = "            "
else
gline[3] = "    ON     |"
if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
bline[3] = "    ON      "
else
bline[3] = "            "
end
gline[5] = " APT ELEV  |"
gline[6] = "  +" .. makelength(values["HTAPT"], 4, 1) .. "ft  |"
if controls["lselect"] == 1 then
bline[6] = "   " .. string.gsub(string.sub(gline[6], 4, 5), " ", "#") .. "       "
else
bline[6] = "            "
end
end
gline[4] = "           |"

gline[7] = "SET 5"

bline[1] = "            "
bline[2] = "            "
bline[4] = "            "
bline[5] = "            "
--#########################################################################This is the SET6 page
elseif lsubpage[7] == 60 then

if controls["lCRSR"] == 1 then
if controls["lknobs"] == -1 then
values["turnanticipation"] = values["turnanticipation"] - 1
elseif controls["lknobs"] == 1 then
values["turnanticipation"] = values["turnanticipation"] + 1
end
controls["lknobs"] = 0
controls["lknobl"] = 0
end
if values["turnanticipation"] < 0 then values["turnanticipation"] = 1
elseif values["turnanticipation"] > 1 then values["turnanticipation"] = 0 end

if values["turnanticipation"] == 0 then
gline[4] = " DISABLE   |"
else
gline[4] = "  ENABLE   |"
end


gline[1] = "   TURN    |"
gline[2] = "ANTICIPATE |"
gline[3] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "SET 6"
bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
if controls["lCRSR"] == 1 then
if values["turnanticipation"] == 0 then
bline[4] = " DISABLE    "
else
bline[4] = "  ENABLE    "
end
end
--#########################################################################This is the SET7 page
elseif lsubpage[7] == 70 then

if controls["lCRSR"] == 1 then
if controls["lknobs"] == -1 then
values["barounit"] = values["barounit"] - 1
if values["barounit"] == -1 then
values["barounit"] = 1
values["baro"] = round(values["baro"] * 0.338637526)
values["cal1baro"] = round(values["cal1baro"] * 0.338637526)
elseif values["barounit"] == 0 then
values["baro"] = round(values["baro"] * 2.95333727)
values["cal1baro"] = round(values["cal1baro"] * 2.95333727)

end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
values["barounit"] = values["barounit"] + 1
if values["barounit"] == 1 then
values["baro"] = round(values["baro"] * 0.338637526)
values["cal1baro"] = round(values["cal1baro"] * 0.338637526)


elseif values["barounit"] == 2 then
values["baro"] = round(values["baro"] * 2.95333727)
values["cal1baro"] = round(values["cal1baro"] * 2.95333727)
values["barounit"] = 0

end
controls["lknobs"] = 0
elseif controls["lknobl"] ~= 0 then
controls["lknobl"] = 0
end
end

gline[1] = " BARO SET  |"
gline[2] = "  UNITS    |"
gline[3] = "           |"

if values["barounit"] == 0 then
gline[4] = "    @      |"
gline[6] = "  INCHES   |"
else
gline[4] = "    MB     |"
gline[6] = " MILLIBARS |"
end
gline[5] = "           |"
gline[7] = "SET 7"
bline[6] = "            "
if controls["lCRSR"] == 1 then
bline[6] = string.sub(gline[6], 1, 10) .. " "
end

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
--#########################################################################This is the SET8 page
elseif lsubpage[7] == 80 then
controls["lCRSR"] = 0
gline[1] = " AIRSPACE  |"
gline[2] = "  ALERT    |"
gline[3] = " DISABLE   |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "SET 8"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
--#########################################################################This is the SET9 page
elseif lsubpage[7] == 90 then

if controls["lCRSR"] == 1 then
if controls["lknobs"] == -1 then
values["volume"] = values["volume"] - 1
if values["volume"] < 0 then values["volume"] = 0 end
setSampleGain(alert, values["volume"]*10)
setSampleGain(alertl, values["volume"]*10)
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
values["volume"] = values["volume"] + 1
if values["volume"] > 99 then values["volume"] = 99 end
setSampleGain(alert, values["volume"]*10)
setSampleGain(alertl, values["volume"]*10)
controls["lknobs"] = 0
elseif controls["lknobl"] ~= 0 then
controls["lknobl"] = 0
end
end


gline[1] = "ALTITUDE   |"
gline[2] = "  ALERT    |"
gline[3] = " VOLUME:   |"
gline[4] = "           |"
gline[5] = string.format("    %02d     |", values["volume"])
if controls["lCRSR"] == 1 then
bline[5] = string.sub(gline[5], 1, 10) .. " "
else
bline[5] = "            "
end
gline[6] = "           |"
gline[7] = "SET 9"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[6] = "            "
--#########################################################################This is the fictional SET10 page

elseif lsubpage[7] == 100 then

if controls["lCRSR"] == 1 then

if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
if values["primary"] == 0 and controls["lselect"] == 1 then controls["lselect"] = 0 end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
if values["primary"] == 0 and controls["lselect"] == 1 then controls["lselect"] = 2 end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
if values["primary"] == 0 then values["primary"] = 1 else
values["primary"] = 0
values["HSIinterf"] = 0
end
elseif controls["lselect"] == 1 then
values["HSIinterf"] = values["HSIinterf"] - 1
if values["HSIinterf"] < 0 then values["HSIinterf"] = 2 end
elseif controls["lselect"] == 2 then
if values["realGPS"] == 0 then
values["realGPS"] = 15
else
values["realGPS"] = 0
end
elseif controls["lselect"] == 3 then
values["fuelunit"] = values["fuelunit"] - 1
if values["fuelunit"] < 1 then values["fuelunit"] = 5 end
elseif controls["lselect"] == 4 then
if values["VNVpause"] == 0 then
values["VNVpause"] = 1
else
values["VNVpause"] = 0
end
elseif controls["lselect"] == 5 then
if values["VNVgs"] == 0 then
values["VNVgs"] = 1
else
values["VNVgs"] = 0
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
if values["primary"] == 0 then values["primary"] = 1 else
values["primary"] = 0
values["HSIinterf"] = 0
end
elseif controls["lselect"] == 1 then
values["HSIinterf"] = values["HSIinterf"] + 1
if values["HSIinterf"] > 2 then values["HSIinterf"] = 0 end
elseif controls["lselect"] == 2 then
if values["realGPS"] == 0 then
values["realGPS"] = 15
else
values["realGPS"] = 0
end
elseif controls["lselect"] == 3 then
values["fuelunit"] = values["fuelunit"] + 1
if values["fuelunit"] > 5 then values["fuelunit"] = 1 end
elseif controls["lselect"] == 4 then
if values["VNVpause"] == 0 then
values["VNVpause"] = 1
else
values["VNVpause"] = 0
end
elseif controls["lselect"] == 5 then
if values["VNVgs"] == 0 then
values["VNVgs"] = 1
else
values["VNVgs"] = 0
end
end
controls["lknobs"] = 0

end
end


if controls["lselect"] < 0 then controls["lselect"] = 5
elseif controls["lselect"] > 5 then controls["lselect"] = 0
end







if values["primary"] == 0 then
gline[1] = "KLN90B: SEC|"
gline[2] = "HSI      - |"
bline[2] = "            "
if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
bline[1] = "        SEC "
else
bline[1] = "            "
end
else
gline[1] = "KLN90B: PRI|"
if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
bline[1] = "        PRI "
else
bline[1] = "            "
end
end


if values["HSIinterf"] == 0 and values["primary"] == 1 then
gline[2] = "HSI:     - |"
if controls["lselect"] == 1 then
bline[2] = "         -  "
else
bline[2] = "            "
end
elseif values["HSIinterf"] == 1 and values["primary"] == 1 then
gline[2] = "HSI:     -=|"
if controls["lselect"] == 1 then
bline[2] = "         -= "
else
bline[2] = "            "
end
elseif values["HSIinterf"] == 2 and values["primary"] == 1 then
gline[2] = "HSI:    `-=|"
if controls["lselect"] == 1 then
bline[2] = "        `-= "
else
bline[2] = "            "
end
end

if values["realGPS"] == 0 then
gline[3] = "GPS:   FAST|"
if controls["lselect"] == 2 then
bline[3] = "       FAST "
else
bline[3] = "            "
end
else
gline[3] = "GPS:   REAL|"
if controls["lselect"] == 2 then
bline[3] = "       REAL "
else
bline[3] = "            "
end
end

if values["fuelunit"] == 1 then
gline[4] = "F UNIT: GAL|"
if controls["lselect"] == 3 then
bline[4] = "        GAL "
else
bline[4] = "            "
end
elseif values["fuelunit"] == 2 then
gline[4] = "F UNIT: IMP|"
if controls["lselect"] == 3 then
bline[4] = "        IMP "
else
bline[4] = "            "
end
elseif values["fuelunit"] == 3 then
gline[4] = "F UNIT:   L|"
if controls["lselect"] == 3 then
bline[4] = "          L "
else
bline[4] = "            "
end
elseif values["fuelunit"] == 4 then
gline[4] = "F UNIT:  KG|"
if controls["lselect"] == 3 then
bline[4] = "         KG "
else
bline[4] = "            "
end
elseif values["fuelunit"] == 5 then
gline[4] = "F UNIT:  LB|"
if controls["lselect"] == 3 then
bline[4] = "         LB "
else
bline[4] = "            "
end
end
if values["VNVpause"] == 0 then
gline[5] = "VNV PS: OFF|"
if controls["lselect"] == 4 then
bline[5] = "        OFF "
else
bline[5] = "            "
end
else
gline[5] = "VNV PS:  ON|"
if controls["lselect"] == 4 then
bline[5] = "         ON "
else
bline[5] = "            "
end
end
if values["VNVgs"] == 0 then
gline[6] = "VNV GS: OFF|"
if controls["lselect"] == 5 then
bline[6] = "        OFF "
else
bline[6] = "            "
end
else
gline[6] = "VNV GS:  ON|"
if controls["lselect"] == 5 then
bline[6] = "         ON "
else
bline[6] = "            "
end
end
--gline[6] = "           |"
gline[7] = "SET10"

-- bline[6] = "            "
--#########################################################################This is the fictional SET11 page

elseif lsubpage[7] == 110 then

if controls["lCRSR"] == 1 then

if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
if values["showheli"] == 0 then values["showheli"] = 1 else
values["showheli"] = 0
end
elseif controls["lselect"] == 1 then
if values["showwat"] == 0 then values["showwat"] = 1 else
values["showwat"] = 0
end
elseif controls["lselect"] == 2 then
if values["NAVSYNC"] == 0 then values["NAVSYNC"] = 1 set(overrideNAV1, 1) else
values["NAVSYNC"] = 0 set(overrideNAV1, 0)
end
elseif controls["lselect"] == 3 then
values["GPSrate"] = math.max(1, round((values["GPSrate"] - 5)/5)*5)
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
if values["showheli"] == 0 then values["showheli"] = 1 else
values["showheli"] = 0
end
elseif controls["lselect"] == 1 then
if values["showwat"] == 0 then values["showwat"] = 1 else
values["showwat"] = 0
end
elseif controls["lselect"] == 2 then
if values["NAVSYNC"] == 0 then values["NAVSYNC"] = 1 set(overrideNAV1, 1) else
values["NAVSYNC"] = 0 set(overrideNAV1, 0)
end
elseif controls["lselect"] == 3 then
values["GPSrate"] = math.min(10, round((values["GPSrate"] + 5)/5)*5)
end
controls["lknobs"] = 0

end
end


if controls["lselect"] < 0 then controls["lselect"] = 3
elseif controls["lselect"] > 3 then controls["lselect"] = 0
end

gline[1] = "NAV OPTIONS|"
gline[2] = "           |"
if values["showheli"] == 0 then
gline[3] = "HELI:   OFF|"
if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
bline[3] = "        OFF "
else
bline[3] = "            "
end
else
gline[3] = "HELI:    ON|"
if controls["lselect"] == 0 and controls["lCRSR"] == 1 then
bline[3] = "         ON "
else
bline[3] = "            "
end
end


if values["showwat"] == 0 then
gline[4] = "WATER:  OFF|"
if controls["lselect"] == 1 and controls["lCRSR"] == 1 then
bline[4] = "        OFF "
else
bline[4] = "            "
end
else
gline[4] = "WATER:   ON|"
if controls["lselect"] == 1 and controls["lCRSR"] == 1 then
bline[4] = "         ON "
else
bline[4] = "            "
end
end

if values["NAVSYNC"] == 0 then
gline[5] = "NAVSYNC:OFF|"
if controls["lselect"] == 2 and controls["lCRSR"] == 1 then
bline[5] = "        OFF "
else
bline[5] = "            "
end
else
gline[5] = "NAVSYNC: ON|"
if controls["lselect"] == 2 and controls["lCRSR"] == 1 then
bline[5] = "         ON "
else
bline[5] = "            "
end
end
if values["GPSrate"] == 1 then
gline[6] = "GPSRAT: 1HZ|"
if controls["lselect"] == 3 and controls["lCRSR"] == 1 then
bline[6] = "        1HZ "
else
bline[6] = "            "
end
elseif values["GPSrate"] == 5 then
gline[6] = "GPSRAT: 5HZ|"
if controls["lselect"] == 3 and controls["lCRSR"] == 1 then
bline[6] = "        5HZ "
else
bline[6] = "            "
end
elseif values["GPSrate"] == 10 then
gline[6] = "GPSRAT:10HZ|"
if controls["lselect"] == 3 and controls["lCRSR"] == 1 then
bline[6] = "       10HZ "
else
bline[6] = "            "
end
end
gline[7] = "SET11"


end

--#########################################################################This is the OTH page
elseif lpage == 8 then
--1 and 2 show FSS and CTR, I don't have a database :-(
if lsubpage[8] == 10 then
controls["lCRSR"] = 0
gline[1] = "           |"
gline[2] = "    NOT    |"
gline[3] = " SIMULATED |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "OTH 1"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[8] == 20 then
controls["lCRSR"] = 0
gline[1] = "           |"
gline[2] = "    NOT    |"
gline[3] = " SIMULATED |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = "           |"
gline[7] = "OTH 2"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[8] == 30 then
local num = 1
local Usertable = {}
local Userlength = 0

while num <= WPTlength do
if WPTtable[num]["USR"] == 1 then
Userlength = Userlength + 1
Usertable[Userlength] = WPTtable[num]
end
num = num + 1
end


--we first need to check if the waypoints are in the FPlan!

local num1 = 0
local FPLNused = {}
local num = 1
while num <= Userlength do
FPLNused[num] = -1
num = num + 1
end


while num1 <= 25 do
if FPlan[num1]["length"] > 0 then
local num2 = 1
while num2 <= FPlan[num1]["length"] do
local num3 = 1
while num3 <= Userlength do
if FPlan[num1][num2]["types"] == Usertable[num3]["types"] and FPlan[num1][num2]["ident"] == Usertable[num3]["ident"] and  FPlan[num1][num2]["lat"] == Usertable[num3]["lat"] then
FPLNused[num3] = num1
end
num3 = num3 + 1
end
num2 = num2 + 1
end
end
num1 = num1 + 1
end


if controls["lCRSR"] == 1 then
if controls["FPLstate"] == 1 then
values["MSGENT"] = 2
controls["lknobl"] = 0
end
controls["lknobs"] = 0
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["CLR"] == 1 then
--here I'll need to delete the WPT. The WPT page must appear on the right
if FPLNused[controls["lselect"]+1] ~= -1 then
values["statusmessage"] = "USED#IN#FPL"
values["statustimer"] = 5
elseif values["activeWPT"]["length"] > 2 then
if values["activeWPT"][2]["types"] == Usertable[controls["lselect"]+1]["types"] and values["activeWPT"][2]["ident"] == Usertable[controls["lselect"]+1]["ident"] and  values["activeWPT"][2]["lat"] == Usertable[controls["lselect"]+1]["lat"] then
values["statusmessage"] = "ACTIVE#WPT#"
values["statustimer"] = 5
else

controls["FPLstate"] = 1
end
else
controls["FPLstate"] = 1
end
controls["CLR"] = 0
elseif controls["sCLR"] == 1 then
controls["FPLstate"] = 0
controls["sCLR"] = 0
elseif controls["sENT"] == 1 then
--find and kill
sorttable(0)
RMKtable[Usertable[controls["lselect"]+1]["ident"]] = nil
local waypoint = enterident(Usertable[controls["lselect"]+1]["ident"], Usertable[controls["lselect"]+1]["types"], 0, 5, 0, Usertable[controls["lselect"]+1]["lat"], Usertable[controls["lselect"]+1]["lon"])
table.remove(WPTtable, waypoint["num"])
USRlen = USRlen - 1
WPTlength = WPTlength - 1
controls["sENT"] = 0
controls["FPLstate"] = 0
end
if controls["lselect"] < 0 then controls["lselect"] = Userlength-1
elseif controls["lselect"] > Userlength-1 then controls["lselect"] = 0
end
if controls["lselect"] < controls["lview"] then controls["lview"] = controls["lselect"]
elseif controls["lselect"] > controls["lview"] + 4 then controls["lview"] = controls["lselect"] - 4
end


if controls["lview"] < 0 then controls["lview"] = Userlength-1
elseif controls["lview"] > Userlength-1 then controls["lview"] =  0
end
else
controls["FPLstate"]  = 0
end

if controls["FPLstate"]  == 1 then
controls["rspage"] = 1
local tables = {}
tables[1] = Usertable[controls["lselect"]+1]
tables["length"] = 1
values["wpteditvalue"] = tables
end

gline[1] = " USER WPTS |"
--  local num = math.ceil((controls["lselect"]+1)/5)
--print(num, controls["lselect"])

local line = 2
while line <= 6 do
if controls["lview"]-1+line <= Userlength then
if FPLNused[controls["lview"]-1+line] == -1 then
gline[line] = string.format("%s %s    |", Usertable[controls["lview"]-1+line]["ident"], string.sub(type2typename(Usertable[controls["lview"]-1+line]["types"]), 1, 1))
else
gline[line] = string.format("%s %s  %s|", Usertable[controls["lview"]-1+line]["ident"], string.sub(type2typename(Usertable[controls["lview"]-1+line]["types"]), 1, 1), makelength(FPLNused[controls["lview"]-1+line], 2, 1))
end
else
gline[line] = "           |"
end

if controls["lselect"] == controls["lview"]-2+line and controls["lCRSR"] == 1 then
if controls["FPLstate"] == 0 then
bline[line] = string.gsub(string.sub(gline[line], 1, 11), " ", "#") .. " "
else
gline[line] = "DEL " .. Usertable[controls["lview"]-1+line]["ident"] .. " ?|"
if values["flash"] == 1 then
bline[line] = string.gsub(string.sub(gline[line], 1, 11), " ", "#") .. "  "
else
bline[line] = "            "
end
end
else
bline[line] = "            "
end

line = line + 1
end



gline[7] = "OTH 3"

bline[1] = "            "

elseif lsubpage[8] == 40 then
local RMKlength = 0
local RMKtab2 = {}
for i,v in pairs(RMKtable) do
RMKlength = RMKlength + 1
RMKtab2[RMKlength] = i
end
table.sort(RMKtab2)

if controls["lCRSR"] == 1 then
if controls["FPLstate"] == 1 then
values["MSGENT"] = 2
controls["lknobl"] = 0
end
controls["lknobs"] = 0
if controls["lknobl"] == -1 then
controls["lselect"] = controls["lselect"] - 1
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lselect"] = controls["lselect"] + 1
controls["lknobl"] = 0
elseif controls["CLR"] == 1 then
if controls["FPLstate"] == 1 then
controls["FPLstate"] = 0
else
controls["FPLstate"] = 1
end
controls["CLR"] = 0
elseif controls["ENT"] == 1 and controls["FPLstate"] == 1 then
RMKtable[RMKtab2[controls["lview"]+1]] = nil
controls["ENT"] = 0
controls["FPLstate"] = 0
end
if controls["lselect"] < 0 then controls["lselect"] = RMKlength-1
elseif controls["lselect"] > RMKlength-1 then controls["lselect"] = 0
end
if controls["lselect"] < controls["lview"] then controls["lview"] = controls["lselect"]
elseif controls["lselect"] > controls["lview"] + 4 then controls["lview"] = controls["lselect"] - 4
end


if controls["lview"] < 0 then controls["lview"] = RMKlength-1
elseif controls["lview"] > RMKlength-1 then controls["lview"] =  0
end
else
controls["FPLstate"]  = 0
end

gline[1] = "APTS W/RMKS|"
--print(num, controls["lselect"])

local line = 2
while line <= 6 do
if controls["lview"]-1+line <= RMKlength then
gline[line] = RMKtab2[controls["lview"]-1+line] .. "      |"
else
gline[line] = "           |"

end
if controls["lselect"] == controls["lview"]-2+line and controls["lCRSR"] == 1 then
if controls["FPLstate"] == 0 then
bline[line] = string.gsub(string.sub(gline[line], 1, 11), " ", "#") .. " "
else
gline[line] = "DEL " .. RMKtab2[controls["lview"]-1+line] .. " ?|"
if values["flash"] == 1 then
bline[line] = string.gsub(string.sub(gline[line], 1, 11), " ", "#") .. "  "
else
bline[line] = "            "
end
end
else
bline[line] = "            "
end

line = line + 1
end


gline[7] = "OTH 4"

bline[1] = "            "


elseif lsubpage[8] == 50 then
gline[5] = string.format("RES:  %s|", values["reserve"])
bline[5] = "            "

if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
bline[5] =  highlightchar(gline[5], controls["lCRSRchar"] + 6)
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lCRSRchar"] < 1 then
controls["lCRSRchar"] = 5
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lCRSRchar"] > 5 then
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
x = string2value(string.sub(values["reserve"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["reserve"] = replaceChar(values["reserve"],controls["lCRSRchar"],value2string(x))
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
x = string2value(string.sub(values["reserve"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["reserve"] = replaceChar(values["reserve"],controls["lCRSRchar"],value2string(x))
controls["lknobs"] = 0
end
end



if values["activeWPT"]["length"] >= 2 then
if values["activeWPT"]["length"] == 2 then

if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = " " .. values["activeWPT"][values["activeWPT"]["length"]]["ident"]
else
gline[1] = "=" .. values["activeWPT"][values["activeWPT"]["length"]]["ident"]
end
else
gline[1] = " " .. values["activeWPT"][values["activeWPT"]["length"]]["ident"]
end
else
gline[1] = "      "
end

local AVGAS = 0
if get(Enginestype) == 0 or get(Enginestype) == 1 then
AVGAS = 1
end
local multi = 1
--gallons
if values["fuelunit"] == 1 then
gline[1] = gline[1] .. "  GAL|"
if AVGAS == 1 then
multi = 1 / 0.721 * 0.264172052
else
multi = 1 / 0.8075 * 0.264172052
end
--imperial gallons

elseif values["fuelunit"] == 2 then
gline[1] = gline[1] .. "  IMP|"

if AVGAS == 1 then
multi = 1 / 0.721 * 0.219969157
else
multi = 1 / 0.8075  * 0.219969157
end
--liters

elseif values["fuelunit"] == 3 then
gline[1] = gline[1] .. "    L|"

if AVGAS == 1 then
multi = 1 / 0.721
else
multi = 1 / 0.8075
end
--kg
elseif values["fuelunit"] == 4 then
gline[1] = gline[1] .. "   KG|"

-- multi = 1
--lb
elseif values["fuelunit"] == 5 then
gline[1] = gline[1] .. "   LB|"
multi = 2.20462262

end




gline[2] = string.format("FOB%s|",  makelength(round(get(FuelTOT)*multi), 8, 1))

if values["activeWPT"]["length"] >= 2 then
local REQ = distanceFPLN(values["activeWPT"], 2, values["activeWPT"]["length"], 0)
local endurance = get(FuelTOT) / (get(FuelFlow1)+get(FuelFlow2)+get(FuelFlow3)+get(FuelFlow4)+get(FuelFlow5)+get(FuelFlow6)+get(FuelFlow7)+get(FuelFlow8))
--print("1", endurance)
if endurance > 356400 or endurance < 0 then
gline[3] = "REQD  -----|"
gline[4] = "L FOB -----|"
gline[6] = "EXTRA -----|"
else
local range = endurance * values["GPSSPD"] * 0.000539956803
REQ =REQ / (range / get(FuelTOT))
if REQ > 99999 then
gline[3] = "REQD  -----|"
gline[4] = "L FOB -----|"
gline[6] = "EXTRA -----|"
else

gline[3] = "REQD" .. makelength(round(REQ*multi), 7, 1) .. "|"
gline[4] = "L FOB" .. makelength(round((get(FuelTOT)-REQ)*multi), 6, 1) .. "|"
gline[6] = "EXTRA" .. makelength(round((get(FuelTOT)-REQ)*multi-tonumber(values["reserve"])), 6, 1) .. "|"
end
end
else
gline[3] = "REQD  -----|"
gline[4] = "L FOB -----|"
gline[6] = "EXTRA -----|"
end
gline[7] = "OTH 5"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[6] = "            "
elseif lsubpage[8] == 60 then
gline[1] = " FUEL DATA |"
gline[2] = "           |"
gline[6] = string.format(" RES: %s|", values["reserve"])
bline[6] = "            "

if controls["lCRSR"]  == 1 then
if controls["lCRSRchar"] == 0 then controls["lCRSRchar"] = 1 end
bline[6] =  highlightchar(gline[6], controls["lCRSRchar"] + 6)
if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lCRSRchar"] < 1 then
controls["lCRSRchar"] = 5
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lCRSRchar"] > 5 then
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
x = string2value(string.sub(values["reserve"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 1 then x = 10 end
values["reserve"] = replaceChar(values["reserve"],controls["lCRSRchar"],value2string(x))
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
x = string2value(string.sub(values["reserve"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 10 then x = 1 end
values["reserve"] = replaceChar(values["reserve"],controls["lCRSRchar"],value2string(x))
controls["lknobs"] = 0
end
end
local AVGAS = 0
if get(Enginestype) == 0 or get(Enginestype) == 1 then
AVGAS = 1
end
local multi = 1
--gallons
if values["fuelunit"] == 1 then
if AVGAS == 1 then
multi = 1 / 0.721 * 0.264172052
else
multi = 1 / 0.8075 * 0.264172052
end
--imperial gallons

elseif values["fuelunit"] == 2 then
if AVGAS == 1 then
multi = 1 / 0.721 * 0.219969157
else
multi = 1 / 0.8075  * 0.219969157
end
--liters

elseif values["fuelunit"] == 3 then
if AVGAS == 1 then
multi = 1 / 0.721
else
multi = 1 / 0.8075
end
--kg
-- elseif values["fuelunit"] == 4 then
-- multi = 1
--lb
elseif values["fuelunit"] == 5 then
multi = 2.20462262

end
--this is how many seconds we can run
local endurance = (get(FuelTOT)-tonumber(values["reserve"])/multi) / (get(FuelFlow1)+get(FuelFlow2)+get(FuelFlow3)+get(FuelFlow4)+get(FuelFlow5)+get(FuelFlow6)+get(FuelFlow7)+get(FuelFlow8))
--print("1", endurance)

if endurance > 356400 or endurance < 0 then
gline[3] = " ENDUR -:--|"
gline[4] = " RANGE  ---|"
if values["fuelunit"] == 1 then
gline[5] = " NM/GAL -.-|"
elseif values["fuelunit"] == 2 then
gline[5] = " NM/IMP -.-|"
elseif values["fuelunit"] == 3 then
gline[5] = " NM/L   -.-|"
elseif values["fuelunit"] == 4 then
gline[5] = " NM/KG  -.-|"
elseif values["fuelunit"] == 5 then
gline[5] = " NM/LB  -.-|"
end
else
--print("2", endurance)
local endur1 = math.floor(endurance/3600)
local endur2 = math.floor((endurance/3600 - endur1)*60)
gline[3] = string.format(" ENDUR%s:%02d|", makelength(endur1, 2, 1), endur2)
local range = endurance * values["GPSSPD"] * 0.000539956803
gline[4] = string.format(" RANGE %s|",  makelength(round(range), 4, 1))





if values["fuelunit"] == 1 then
gline[5] = string.format(" NM/GAL%s|",  makelength(float(range / (get(FuelTOT)*multi), 1), 4, 1))
elseif values["fuelunit"] == 2 then
gline[5] = string.format(" NM/IMP%s|",  makelength(float(range / (get(FuelTOT)*multi), 1), 4, 1))
elseif values["fuelunit"] == 3 then
gline[5] = string.format(" NM/L  %s|",  makelength(float(range / (get(FuelTOT)*multi), 1), 4, 1))
elseif values["fuelunit"] == 4 then
gline[5] = string.format(" NM/KG %s|",  makelength(float(range / (get(FuelTOT)*multi), 1), 4, 1))
elseif values["fuelunit"] == 5 then
gline[5] = string.format(" NM/LB %s|",  makelength(float(range / (get(FuelTOT)*multi), 1), 4, 1))
end
end
gline[7] = "OTH 6"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
elseif lsubpage[8] == 70 then
controls["lCRSR"] = 0
gline[1] = " FUEL FLOW |"
gline[3] = "      KG/HR|"
local AVGAS = 0
if get(Enginestype) == 0 or get(Enginestype) == 1 then
AVGAS = 1
end
local multi = 1
--gallons
if values["fuelunit"] == 1 then
gline[3] = "     GAL/HR|"
if AVGAS == 1 then
multi = 1 / 0.721 * 0.264172052
else
multi = 1 / 0.8075 * 0.264172052
end
--imperial gallons

elseif values["fuelunit"] == 2 then
gline[3] = "     IMP/HR|"

if AVGAS == 1 then
multi = 1 / 0.721 * 0.219969157
else
multi = 1 / 0.8075  * 0.219969157
end
--liters

elseif values["fuelunit"] == 3 then
gline[3] = "       L/HR|"

if AVGAS == 1 then
multi = 1 / 0.721
else
multi = 1 / 0.8075
end
--kg
-- elseif values["fuelunit"] == 4 then
-- multi = 1
--lb
elseif values["fuelunit"] == 5 then
gline[3] = "      LB/HR|"
multi = 2.20462262

end
if get(EnginesNum) == 1 then
gline[2] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = string.format("     %s|",  makelength(makelength(round(get(FuelFlow1)*3600*multi), 5, 0), 6, 1))
--  gline[4] = gline[4] ..  makelength(makelength(round(d                          ist), 3, 1), 4, 0) .. "  " .. convtime (dist / (get(SPEEDin)* 1.94384449)*3600)

elseif get(EnginesNum) == 2 then
gline[2] = "           |"
gline[4] = string.format("ENG 1%s|",   makelength(makelength(round(get(FuelFlow1)*3600*multi), 5, 0), 6, 1))
gline[5] = string.format("ENG 2%s|",   makelength(makelength(round(get(FuelFlow2)*3600*multi), 5, 0), 6, 1))
gline[6] = string.format("TOTAL%s|",   makelength(makelength(round((get(FuelFlow1)+get(FuelFlow2))*3600*multi), 5, 0), 6, 1))
elseif get(EnginesNum) == 3 then
gline[2] = gline[3]
gline[3] = string.format("ENG 1%s|",  makelength(makelength(round(get(FuelFlow1)*3600*multi), 5, 0), 6, 1))
gline[4] = string.format("ENG 2%s|",  makelength(makelength(round(get(FuelFlow2)*3600*multi), 5, 0), 6, 1))
gline[5] = string.format("ENG 3%s|",  makelength(makelength(round(get(FuelFlow3)*3600*multi), 5, 0), 6, 1))
gline[6] = string.format("TOTAL%s|",  makelength(makelength(round((get(FuelFlow1)+get(FuelFlow2)+get(FuelFlow3))*3600*multi), 5, 0), 6, 1))
else
gline[2] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = string.format("     %s|",  makelength(makelength(round((get(FuelFlow1)+get(FuelFlow2)+get(FuelFlow3)+get(FuelFlow4)+get(FuelFlow5)+get(FuelFlow6)+get(FuelFlow7)+get(FuelFlow8))*3600*multi), 5, 0), 6, 1))
end
gline[7] = "OTH 7"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[8] == 80 then
controls["lCRSR"] = 0
gline[1] = " FUEL USED |"
gline[3] = "         KG|"
local AVGAS = 0
if get(Enginestype) == 0 or get(Enginestype) == 1 then
AVGAS = 1
end
local multi = 1
--gallons
if values["fuelunit"] == 1 then
gline[3] = "        GAL|"
if AVGAS == 1 then
multi = 1 / 0.721 * 0.264172052
else
multi = 1 / 0.8075 * 0.264172052
end
--imperial gallons

elseif values["fuelunit"] == 2 then
gline[3] = "        IMP|"

if AVGAS == 1 then
multi = 1 / 0.721 * 0.219969157
else
multi = 1 / 0.8075  * 0.219969157
end
--liters

elseif values["fuelunit"] == 3 then
gline[3] = "          L|"

if AVGAS == 1 then
multi = 1 / 0.721
else
multi = 1 / 0.8075
end
--kg
-- elseif values["fuelunit"] == 4 then
-- multi = 1
--lb
elseif values["fuelunit"] == 5 then
gline[3] = "         LB|"
multi = 2.20462262
end


if get(EnginesNum) == 1 then
gline[2] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = string.format("     %s|",  makelength(round(values["fuelused1"]*multi), 6, 1))
elseif get(EnginesNum) == 2 then
gline[2] = "           |"
gline[4] = string.format("ENG 1%s|",  makelength(round(values["fuelused1"]*multi), 6, 1))
gline[5] = string.format("ENG 2%s|",  makelength(round(values["fuelused2"]*multi), 6, 1))
gline[6] = string.format("TOTAL%s|",  makelength(round((values["fuelused1"]+values["fuelused2"])*multi), 6, 1))
elseif get(EnginesNum) == 3 then
gline[2] = gline[3]
gline[3] = string.format("ENG 1%s|",  makelength(round(values["fuelused1"]*multi), 6, 1))
gline[4] = string.format("ENG 2%s|",  makelength(round(values["fuelused2"]*multi), 6, 1))
gline[5] = string.format("ENG 3%s|",  makelength(round(values["fuelused3"]*multi), 6, 1))
gline[6] = string.format("TOTAL%s|",  makelength(round((values["fuelused1"]+values["fuelused2"]+values["fuelused3"])*multi), 6, 1))
else
gline[2] = "           |"
gline[4] = "           |"
gline[5] = "           |"
gline[6] = string.format("     %s|",  makelength(round((values["fuelused1"]+values["fuelused2"]+values["fuelused3"]+values["fuelused4"]+values["fuelused5"]+values["fuelused6"]+values["fuelused7"]+values["fuelused8"])*multi), 6, 1))
end
gline[7] = "OTH 8"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[8] == 90 then
controls["lCRSR"] = 0
gline[1] = " AIR DATA  |"
gline[2] = string.format("TAS  %skt|", makelength(round(get(TASin)*1.94384), 4, 1))
gline[3] = string.format("MACH    .%s|",  string.sub(float(get(MACHin), 2), 3, 4))

local WS=math.sqrt((get(TASin)-values["GPSSPD"])^2+ 4*(get(TASin)*values["GPSSPD"])*(sin((get(PSIin)*pi/180-values["GPSTRK"]*pi/180)/2))^2 )
local WD=values["GPSTRK"]*pi/180 + math.atan2(get(TASin)*sin(get(PSIin)*pi/180-values["GPSTRK"]*pi/180), get(TASin)*cos(get(PSIin)*pi/180-values["GPSTRK"]*pi/180)-values["GPSSPD"])
local HW = (WS)*cos(WD-(get(PSIin)*pi/180))
WD =  WD *180/pi + get(MAGVARin)
--WD =  WD *180/pi

if WD > 360 then WD = WD - 360
elseif WD < 0 then WD = WD + 360 end
gline[5] = string.format("WIND  %03d*~|", round(WD))
gline[6] = string.format("      %skt|",  makelength(round(WS*1.94384), 3, 1))
if HW < 0 then
HW = -HW
gline[4] = string.format("TLWND %skt|",  makelength(round(HW*1.94384), 3, 1))
else
gline[4] = string.format("HDWND %skt|",  makelength(round(HW*1.94384), 3, 1))
end
gline[7] = "OTH 9"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
elseif lsubpage[8] == 100 then
controls["lCRSR"] = 0
gline[1] = " AIR DATA  |"
gline[2] = "           |"
gline[3] = string.format("SAT   %s*C|", makelength(round(get(SATin)), 3, 1))
gline[4] = string.format("TAT   %s*C|", makelength(round(get(TATin)), 3, 1))
gline[5] = string.format("PRS %sft|", makelength(round(PressALT, -2), 5, 1))
local DensALT = PressALT+118.6*(get(SATin)-(15-0.0019812*PressALT))
gline[6] = string.format("DEN %sft|", makelength(round(DensALT, -2), 5, 1))
gline[7] = "OTH10"

bline[1] = "            "
bline[2] = "            "
bline[3] = "            "
bline[4] = "            "
bline[5] = "            "
bline[6] = "            "
end
end

--We start to assemble line 7
if rpage > -5 then
if controls["lCRSR"]  == 1 or controls["lsCRSR"] == 1 then
bline[7] = " CRSR"
gline[7] = "     "
else
bline[7] = "     "
end

local modename = get(GPSmode)
if modename == 1 then
if get(APR) == 0 then
modename = "enr-leg"
elseif get(APR) == 1 then
modename = "arm-leg"
elseif get(APR) == 2 then
modename = "apr-leg"
end

elseif modename == 2 then
if get(APR) == 0 then
modename = string.format("enr:%03d", round(values["HSIOBS"]))
elseif get(APR) == 1 then
modename = string.format("arm:%03d", round(values["HSIOBS"]))
end
end
--gline[7] = string.format("%s|%s    |", gline[7],modename)
gline[7] = string.format("%s%%%s    %%", gline[7],modename)

--end

if values["statustimer"] <= 0 then
bline[7] = bline[7] .. "             "
else
values["statustimer"] = values["statustimer"] - passed
bline[7] = string.format("%s %s ", bline[7], values["statusmessage"])
end
end



--values["return"] = 0

--*************************************************************************Rpage begins here
--#########################################################################This is the CTR page
if not (lpage == 7 and lsubpage[7] < 10) and not (lpage == 6 and lsubpage[6] == 40 and controls["lCRSR"]  == 1) then
if rpage == 1 then
controls["rCRSR"] = 0
if lpage == 3 then
gline[2] = gline[2] .. "    NOT"
gline[3] = gline[3] .. " SIMULATED"
else
gline[2] = gline[2] .. "DISPLAY"
gline[3] = gline[3] .. "DESIRED"
gline[4] = gline[4] .. "FPL ON"
gline[5] = gline[5] .. "LEFT PAGE"
end
if rsubpage[1] == 10 then
gline[7] = gline[7] .. "CTR 1"
elseif rsubpage[1] == 20 then
gline[7] = gline[7] .. "CTR 2"
end

--#########################################################################This is the REF page
elseif rpage == 2 then
if lpage == 3 then
gline[3] = gline[3] .. "ENTER REF"

if controls["rCRSR"]  == 1 and FPlan[lsubpage[3]/10]["length"]>1 then
values["FPLREF"] = editvalue(1, "r", values["FPLREF"])
gline[4] = gline[4] .. "WPT:  " .. values["rgstring"]
bline[4] = bline[4] .. "      " .. values["rbstring"]

if values["reditstate"] == 3 then
--here you need to check each waypoint in the FPLAN if you can create an abeam WPT.

local near = findnearestleg(lsubpage[3]/10, values["reditvalue"][1]["lat"], values["reditvalue"][1]["lon"])

local lat2 = FPlan[lsubpage[3]/10][near-1]["lat"]*pi/180
local lon2 = FPlan[lsubpage[3]/10][near-1]["lon"]*pi/-180
local lat1 = values["reditvalue"][1]["lat"]*pi/180
local lon1 = values["reditvalue"][1]["lon"]*pi/-180
local crs23 = courseFPLN(FPlan[lsubpage[3]/10], near)*pi/180
local crs13 = crs23+0.5*pi

local dst12=2*asin(sqrt((sin((lat1-lat2)/2))^2+cos(lat1)*cos(lat2)*sin((lon1-lon2)/2)^2))
local crs12 = 0
local crs21 = 0

if sin(lon2-lon1)<0 then
crs12=math.acos((sin(lat2)-sin(lat1)*cos(dst12))/(sin(dst12)*cos(lat1)))
crs21=2*pi-math.acos((sin(lat1)-sin(lat2)*cos(dst12))/(sin(dst12)*cos(lat2)))
else
crs12=2*pi-math.acos((sin(lat2)-sin(lat1)*cos(dst12))/(sin(dst12)*cos(lat1)))
crs21=math.acos((sin(lat1)-sin(lat2)*cos(dst12))/(sin(dst12)*cos(lat2)))
end

local ang1=math.fmod(crs13-crs12+pi,2*pi)-pi
local ang2=math.fmod(crs21-crs23+pi,2*pi)-pi


local ang1=math.abs(ang1)
local ang2=math.abs(ang2)
local ang3=math.acos(-cos(ang1)*cos(ang2)+sin(ang1)*sin(ang2)*cos(dst12))
local dst13=math.atan2(sin(dst12)*sin(ang1)*sin(ang2),cos(ang2)+cos(ang1)*cos(ang3))
local lat3=asin(sin(lat1)*cos(dst13)+cos(lat1)*sin(dst13)*cos(crs13))
local dlon=math.atan2(sin(crs13)*sin(dst13)*cos(lat1),cos(dst13)-sin(lat1)*sin(lat3))
local lon3=math.fmod(lon1-dlon+pi,2*pi)-pi


--we now know the position of the waypoint, we need to check if it's still on the route.
local dist1 = distance(FPlan[lsubpage[3]/10][near-1]["lat"], FPlan[lsubpage[3]/10][near-1]["lon"], FPlan[lsubpage[3]/10][near]["lat"], FPlan[lsubpage[3]/10][near]["lon"])
local dist2 = dst13 / pi*10800
--If it's farther than 12, then it's invalid
if dist1 < dist2 then
values["statusmessage"] = "INVALID#REF"
values["statustimer"] = 5
values["reditstate"] = 0

else
--this WPT is valid, we now create it
--We need a unique ident
local WPTend = string.find(values["reditvalue"][1]["ident"], " ")
if WPTend == nil then WPTend = 5 end


local ident2 = string.sub(values["reditvalue"][1]["ident"], 1, WPTend-1)
local letter = "A"

local found = 1
while true do
local ident = ident2 .. letter
WPT2 = enterident(ident, 4, 0, 5, 0)
if WPT2["length"] == 0 then
break end
letter = string2value(letter) + 1
if letter > 36 then letter = 0 end
letter = value2string(letter)
end

local ident = makelength(ident2 .. letter, 5, 0)
createWPT(4, ident, 0)
local WPT = enterident(ident, 4, 0, 5, 0)
WPT[1]["lat"]= lat3 /pi*180
WPT[1]["lon"]= lon3 /pi*-180
--values["reditvalue"] = WPT

--The ref will be the entered WPT
values["INTref"] = values["reditvalue"][1]
values["INTdist"] = makelength(math.floor(distance(values["INTref"]["lat"], values["INTref"]["lon"], WPT[1]["lat"], WPT[1]["lon"])*10), 4, 1)
values["INTrad"] = string.format("%04d", course(values["INTref"]["lat"], values["INTref"]["lon"], WPT[1]["lat"], WPT[1]["lon"])*10)

--we simulate that a waypoint is entered normally into the FPLAN

table.insert(FPlan[lsubpage[3]/10], near, {})
FPlan[lsubpage[3]/10][near]["ident"] = "     "

FPlan[lsubpage[3]/10]["length"] = FPlan[lsubpage[3]/10]["length"] + 1

controls["lselect"] = near + 1
controls["lCRSR"]  = 1
controls["lCRSRchar"] = 5
--values["leditvalue"] = {}
values["leditvalue"] = WPT
-- if lsubpage[3] == 0 then
-- activateFPLN0()
-- end
values["leditstate"] = 3
--The WPT is handed over to the left (FPLN), we don't need it on the right anymore.
values["reditstate"] = 0
--values["reditvalue"] = nil
controls["rCRSRchar"] = 0
--  values["FPLREF"] = table.copy(values["FPLREF"])
--  values["FPLREF"] = {}
--  values["FPLREF"]["ident"] = "     "
end
end

else
gline[4] = gline[4] .. "WPT:  "  .. values["FPLREF"]["ident"]
end
controls["rselect"] = 0
else
controls["rCRSR"] = 0
gline[2] = gline[2] .. "DISPLAY"
gline[3] = gline[3] .. "DESIRED"
gline[4] = gline[4] .. "FPL ON"
gline[5] = gline[5] .. "LEFT PAGE"
end
gline[7] = gline[7] .. "REF"

--#########################################################################This is the ACT page
elseif rpage == 3 then
--should be working
if rsubpage[3] < 70 then controls["rCRSR"] = 0 end
if values["activeWPT"]["length"] >= 2 then
if controls["rview"] == 0 then
controls["rknobs"] = 0
rsubpage[3] = WPTpage(values["activeWPT"][2]["types"], 1, rsubpage[3])
else
if lpage == 3 and (controls["lCRSRchar"] ~= 0 or controls["FPLstate"] ~= 0) then
gline[3] = gline[3] .. " NO ACTIVE"
gline[4] = gline[4] .. " WAYPOINTS"
gline[7] = gline[7] .. "ACT"
else
rsubpage[3] = WPTpage(FPlan[0][controls["rview"]]["types"], 1, rsubpage[3])
end
end
else
gline[3] = gline[3] .. " NO ACTIVE"
gline[4] = gline[4] .. " WAYPOINTS"
gline[7] = gline[7] .. "ACT"

end


--#########################################################################This is the D/T page
elseif rpage == 4 then
if rsubpage[4] == 10 then
controls["rCRSR"] = 0
if lpage == 3 then
controls["rCRSR"] = 0
gline[1] = gline[1] .. "DIS     ETE"
local line = 2
local WPTnum = 0
local stop = 0
if lsubpage[3] == 0 and values["activeWPT"]["active"] == 0 and values["activeWPT"]["length"] == 2 then
line = 10
end
while line <= 5 do
WPTnum = controls["lview"]+line-1
if WPTnum ~= FPlan[lsubpage[3]/10]["SIDstart"] and WPTnum > 1 then
--gline[line] = gline[line] .. "----  --:--"
if WPTnum > FPlan[lsubpage[3]/10]["SIDstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["STARstart"] then
if WPTnum > FPlan[lsubpage[3]/10]["STARstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["APPstart"] then
if WPTnum > FPlan[lsubpage[3]/10]["APPstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["APPMAP"] then
if WPTnum > FPlan[lsubpage[3]/10]["APPMAP"] then
WPTnum = WPTnum - 1
end
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
if lsubpage[3] == 0 and values["activeWPT"]["active"] == 0 then
gline[line] = gline[line] .. "----  --:--"
end
end
if lsubpage[3] == 0 and stop == 0 then
if values["activeWPT"]["active"] > 0 then
if WPTnum <= FPlan[0]["length"] and WPTnum >= values["activeWPT"]["active"] then
if FPlan[0][WPTnum]["ident"] ~= "     " then
local dist = distanceFPLN(FPlan[0], values["activeWPT"]["active"], WPTnum, 0)
gline[line] = string.sub(gline[line], 1, 12) .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "  " .. convtime (dist / (values["GPSSPD"]* 1.94384449)*3600)
else
stop = 1
end
end
end
elseif stop == 0 then
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
if FPlan[lsubpage[3]/10][WPTnum]["ident"] ~= "     " then
gline[line] = string.sub(gline[line], 1, 12) .. makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], 1, WPTnum, 1)), 3, 1)
end
else
stop = 1
end
end
end
end
end
end
line = line + 1
end
if line < 10 then
local maxlen = FPlan[lsubpage[3]/10]["length"]
if FPlan[lsubpage[3]/10]["SIDstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["STARstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPMAP"] < 50 then
maxlen = maxlen + 1
end
if controls["lview"]+5 <= maxlen then
if lsubpage[3] == 0 then
gline[6] = gline[6] .. "----  --:--"
else
gline[6] = gline[6] .. "----       "
end
end
if stop == 0 then
if lsubpage[3] == 0 then
--if FPlan[0][FPlan[0]["length"]["ident"] ~= "     " then
if controls["lview"]+5 <= maxlen and values["activeWPT"]["active"] > 0 then
local dist = distanceFPLN(FPlan[0], values["activeWPT"]["active"], FPlan[0]["length"], 0)
gline[6] = string.sub(gline[6], 1, 12)  .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "  " .. convtime (dist / (values["GPSSPD"]* 1.94384449)*3600)
end
--end
else
--  if FPlan[lsubpage[3]/10][FPlan[lsubpage[3]/10]["length"]]["ident"] ~= "     " then
if controls["lview"]+5 <= maxlen then
gline[6] = string.sub(gline[6], 1, 12) .. makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], 1, FPlan[lsubpage[3]/10]["length"], 1)), 3, 1)
end
--  end
end
end
end
else
if values["activeWPT"] ~= nil and values["activeWPT"][1] ~= nil and values["activeWPT"]["active"] >= 2 and values["activeWPT"][1]["ident"] ~= "" then
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. "  " .. makelength(values["activeWPT"]["active"], 2, 1) .. " " .. values["activeWPT"][2]["ident"]
else
gline[1] = gline[1] .. " =" .. makelength(values["activeWPT"]["active"], 2, 1) .. " " .. values["activeWPT"][2]["ident"]
end

local dist = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
gline[2] = gline[2] .. "DIS  " .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "NM"
gline[3] = gline[3] .. "ETE   " .. convtime (dist / (values["GPSSPD"]* 1.94384449)*3600)

local dest = values["activeWPT"]["length"]
if FPlan[0]["APPstart"] < 50 and values["activeWPT"]["active"] <= FPlan[0]["APPMAP"] then
dest = FPlan[0]["APPMAP"] - values["activeWPT"]["active"] + 1
end
if dest > 2 then
gline[4] = gline[4] .. "  " .. makelength(dest+values["activeWPT"]["active"]-2, 2, 1) .. " " .. values["activeWPT"][dest]["ident"]
dist = distanceFPLN(values["activeWPT"], 2, dest, 0)
gline[5] = gline[5] .. "DIS  " .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "NM"
gline[6] = gline[6] .. "ETE   " .. convtime (dist / (values["GPSSPD"]* 1.94384449)*3600)
end
end
end
gline[7] = gline[7] .. "D/T 1"
elseif rsubpage[4] == 20 then
if lpage == 3 then

if controls["rCRSR"]  == 1 then
controls["rknobl"] = 0
if controls["rknobs"] == -1 then
values["time"]["zone"] = values["time"]["zone"] - 1
if values["time"]["zone"] < 1 then values["time"]["zone"] = 19 end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
values["time"]["zone"] = values["time"]["zone"] + 1
if values["time"]["zone"] > 19 then values["time"]["zone"] = 1 end
controls["rknobs"] = 0
end
end

values["time"]["zonename"], values["time"]["zonediff"], values["time"]["zonenamel"] = timezone(values["time"]["zone"])


gline[1] = gline[1] .. "DIS     " .. values["time"]["zonename"]

if controls["rCRSR"]  == 1 then
bline[1] = bline[1] .. "        " .. values["time"]["zonename"]
end

local line = 2
local WPTnum = 0
local stop = 0
if lsubpage[3] == 0 and values["activeWPT"]["active"] == 0 and values["activeWPT"]["length"] == 2 then
line = 10
end
while line <= 5 do
WPTnum = controls["lview"]+line-1
if WPTnum ~= FPlan[lsubpage[3]/10]["SIDstart"] and WPTnum > 1 then
--gline[line] = gline[line] .. "----  --:--"
if WPTnum > FPlan[lsubpage[3]/10]["SIDstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["STARstart"] then
if WPTnum > FPlan[lsubpage[3]/10]["STARstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["APPstart"] then
if WPTnum > FPlan[lsubpage[3]/10]["APPstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["APPMAP"] then
if WPTnum > FPlan[lsubpage[3]/10]["APPMAP"] then
WPTnum = WPTnum - 1
end
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
if lsubpage[3] == 0 and values["activeWPT"]["active"] == 0 then
gline[line] = gline[line] .. "----  --:--"
end
end
if lsubpage[3] == 0 and stop == 0 then
if values["activeWPT"]["active"] > 0 then
if WPTnum <= FPlan[0]["length"] and WPTnum >= values["activeWPT"]["active"] then
if FPlan[0][WPTnum]["ident"] ~= "     " then
local dist = distanceFPLN(FPlan[0], values["activeWPT"]["active"], WPTnum, 0)
gline[line] = string.sub(gline[line], 1, 12) .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "  " .. FplnETA (dist / (values["GPSSPD"]* 1.94384449)*3600)
else
stop = 1
end
end
end
elseif stop == 0 then
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
if FPlan[lsubpage[3]/10][WPTnum]["ident"] ~= "     " then
gline[line] = string.sub(gline[line], 1, 12) .. makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], 1, WPTnum, 1)), 3, 1)
end
else
stop = 1
end
end
end
end
end
end
line = line + 1
end
if line < 10 then

local maxlen = FPlan[lsubpage[3]/10]["length"]
if FPlan[lsubpage[3]/10]["SIDstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["STARstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPMAP"] < 50 then
maxlen = maxlen + 1
end
if controls["lview"]+5 <= maxlen then
if lsubpage[3] == 0 then
gline[6] = gline[6] .. "----  --:--"
else
gline[6] = gline[6] .. "----       "
end
end
if stop == 0 then
if lsubpage[3] == 0 then
--if FPlan[0][FPlan[0]["length"]["ident"] ~= "     " then
if controls["lview"]+5 <= maxlen and values["activeWPT"]["active"] > 0 then
local dist = distanceFPLN(FPlan[0], values["activeWPT"]["active"], FPlan[0]["length"], 0)
gline[6] = string.sub(gline[6], 1, 12) .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "  " .. FplnETA (dist / (values["GPSSPD"]* 1.94384449)*3600)
end
--end
else
--  if FPlan[lsubpage[3]/10][FPlan[lsubpage[3]/10]["length"]]["ident"] ~= "     " then
if controls["lview"]+5 <= maxlen then
gline[6] = string.sub(gline[6], 1, 12) .. makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], 1, FPlan[lsubpage[3]/10]["length"], 1)), 3, 1)
end
--  end
end
end
end
else
if values["activeWPT"] ~= nil and values["activeWPT"][1] ~= nil and values["activeWPT"]["active"] >= 2 and values["activeWPT"][1]["ident"] ~= "" then
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. "  " .. makelength(values["activeWPT"]["active"], 2, 1) .. " " .. values["activeWPT"][2]["ident"]
else
gline[1] = gline[1] .. " =" .. makelength(values["activeWPT"]["active"], 2, 1) .. " " .. values["activeWPT"][2]["ident"]
end
local dist = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
gline[2] = gline[2] .. "DIS  " .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "NM"
gline[3] = gline[3] .. "   " .. FplnETA (dist / (values["GPSSPD"]* 1.94384449)*3600) .. values["time"]["zonename"]
local dest = values["activeWPT"]["length"]
if FPlan[0]["APPstart"] < 50 and values["activeWPT"]["active"] <= FPlan[0]["APPMAP"] then
dest = FPlan[0]["APPMAP"] - values["activeWPT"]["active"] + 1
end
if dest > 2 then
gline[4] = gline[4] .. "  " .. makelength(dest+values["activeWPT"]["active"]-2, 2, 1) .. " " .. values["activeWPT"][dest]["ident"]
dist = distanceFPLN(values["activeWPT"], 2, dest, 0)
gline[5] = gline[5] .. "DIS  " .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "NM"
gline[6] = gline[6] .. "   " .. FplnETA (dist / (values["GPSSPD"]* 1.94384449)*3600) .. values["time"]["zonename"]
end
end
end
gline[7] = gline[7] .. "D/T 2"
elseif rsubpage[4] == 30 then
controls["rCRSR"] = 0
if lpage == 3 then
controls["rCRSR"] = 0
gline[1] = gline[1] .. "DIS     DTK"
local line = 2
local WPTnum = 0
local stop = 0
if lsubpage[3] == 0 and values["activeWPT"]["active"] == 0 and values["activeWPT"]["length"] == 2 then
line = 10
end
while line <= 5 do
WPTnum = controls["lview"]+line-1
if WPTnum ~= FPlan[lsubpage[3]/10]["SIDstart"] and WPTnum > 1 then
--gline[line] = gline[line] .. "----  --:--"
if WPTnum > FPlan[lsubpage[3]/10]["SIDstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["STARstart"] then
if WPTnum > FPlan[lsubpage[3]/10]["STARstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["APPstart"] then
if WPTnum > FPlan[lsubpage[3]/10]["APPstart"] then
WPTnum = WPTnum - 1
end
if WPTnum ~= FPlan[lsubpage[3]/10]["APPMAP"] then
if WPTnum > FPlan[lsubpage[3]/10]["APPMAP"] then
WPTnum = WPTnum - 1
end
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
if lsubpage[3] == 0 and values["activeWPT"]["active"] == 0 then
gline[line] = gline[line] .. "----  --:--"
end
end
if lsubpage[3] == 0 and stop == 0 then
if values["activeWPT"]["active"] > 0 then
if WPTnum <= FPlan[0]["length"] and WPTnum >= values["activeWPT"]["active"] then
if FPlan[0][WPTnum]["ident"] ~= "     " then
gline[line] = string.format("%s%s   %03d*", string.sub(gline[line], 1, 12), makelength(makelength(round(distanceFPLN(FPlan[0], values["activeWPT"]["active"], WPTnum, 0)), 3, 1), 4, 0), round(courseFPLN(FPlan[0], WPTnum)))
else
stop = 1
end
end
end
elseif stop == 0 then
if WPTnum <= FPlan[lsubpage[3]/10]["length"] then
if FPlan[lsubpage[3]/10][WPTnum]["ident"] ~= "     " then
gline[line] = string.format("%s%s   %03d*", string.sub(gline[line], 1, 12), makelength(makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], 1, WPTnum, 1)), 3, 1), 4, 0), round(courseFPLN(FPlan[lsubpage[3]/10], WPTnum)))
end
else
stop = 1
end
end
end
end
end
end
line = line + 1
end
if line < 10 then
local maxlen = FPlan[lsubpage[3]/10]["length"]
if FPlan[lsubpage[3]/10]["SIDstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["STARstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPstart"] < 50 then
maxlen = maxlen + 1
end
if FPlan[lsubpage[3]/10]["APPMAP"] < 50 then
maxlen = maxlen + 1
end
if controls["lview"]+5 <= maxlen then
gline[6] = gline[6] .. "----   ---*"
end
if stop == 0 then
if lsubpage[3] == 0 then
--if FPlan[0][FPlan[0]["length"]["ident"] ~= "     " then
if controls["lview"]+5 <= maxlen and values["activeWPT"]["active"] > 0 then
gline[6] = string.format("%s%s   %03d*", string.sub(gline[6], 1, 12), makelength(makelength(round(distanceFPLN(FPlan[0], values["activeWPT"]["active"], FPlan[0]["length"], 0)), 3, 1), 4, 0), round(courseFPLN(FPlan[0], FPlan[0]["length"])))
end
--end
else
--  if FPlan[lsubpage[3]/10][FPlan[lsubpage[3]/10]["length"]]["ident"] ~= "     " then
if controls["lview"]+5 <= maxlen then
gline[6] = string.format("%s%s   %03d*", string.sub(gline[6], 1, 12), makelength(makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], 1, FPlan[lsubpage[3]/10]["length"], 1)), 3, 1), 4, 0), round(courseFPLN(FPlan[lsubpage[3]/10], FPlan[lsubpage[3]/10]["length"])))
end
--  end
end
end
end
else
if values["activeWPT"] ~= nil and values["activeWPT"][1] ~= nil and values["activeWPT"]["active"] >= 2 and values["activeWPT"][1]["ident"] ~= "" then
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. "  " .. makelength(values["activeWPT"]["active"], 2, 1) .. " " .. values["activeWPT"][2]["ident"]
else
gline[1] = gline[1] .. " =" .. makelength(values["activeWPT"]["active"], 2, 1) .. " " .. values["activeWPT"][2]["ident"]
end
local dist = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
gline[2] = gline[2] .. "DIS  " .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "NM"
gline[3] = string.format("%sDTK    %03d*", gline[3], round(values["DTK"]))
if values["activeWPT"]["length"] >= 3 then
gline[4] = gline[4] .. "  " .. makelength(values["activeWPT"]["active"]+1, 2, 1) .. " " .. values["activeWPT"][3]["ident"]
dist = distanceFPLN(values["activeWPT"], 2, 3, 0)
gline[5] = gline[5] .. "DIS  " .. makelength(makelength(round(dist), 3, 1), 4, 0) .. "NM"
gline[6] = string.format("%sDTK    %03d*", gline[6], round(courseFPLN(values["activeWPT"], 3)))
end
end
end
gline[7] = gline[7] .. "D/T 3"
elseif rsubpage[4] == 40 then

if controls["rCRSR"]  == 1 then
controls["rknobl"] = 0
if controls["rknobs"] == -1 then
values["time"]["zone"] = values["time"]["zone"] - 1
if values["time"]["zone"] < 1 then values["time"]["zone"] = 19 end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
values["time"]["zone"] = values["time"]["zone"] + 1
if values["time"]["zone"] > 19 then values["time"]["zone"] = 1 end
controls["rknobs"] = 0
end
end

values["time"]["zonename"], values["time"]["zonediff"], values["time"]["zonenamel"] = timezone(values["time"]["zone"])
local dest = values["activeWPT"]["length"]
if FPlan[0]["APPstart"] < 50 and values["activeWPT"]["active"] <= FPlan[0]["APPMAP"] and values["activeWPT"][1]["ident"] ~= "     " then
dest = FPlan[0]["APPMAP"] - values["activeWPT"]["active"] + 1
end

if values["activeWPT"]["length"] > 0 then
gline[1] = gline[1] .. "  " .. values["activeWPT"][dest]["ident"] .. " " .. values["time"]["zonename"]
else
gline[1] = gline[1] .. "        " .. values["time"]["zonename"]

end
if controls["rCRSR"]  == 1 then
bline[1] = bline[1] .. "        " .. values["time"]["zonename"]
end


if not values["DT4DEP"] then
gline[2] = gline[2] .. "DEP   --:--"
else
local hours = values["DT4DEP"]["hour"] + values["time"]["zonediff"]

if hours > 23 then hours = hours - 24
elseif hours < 0 then hours = hours + 24 end
gline[2] = gline[2] .. string.format("DEP   %02d:%02d", hours , values["DT4DEP"]["minute"])
end
local hour2 = values["time"]["hour"] + values["time"]["zonediff"]
if hour2 > 23 then hour2 = hour2 - 24
elseif hour2 < 0 then hour2 = hour2 + 24 end
gline[3] = gline[3] .. string.format("TIME  %02d:%02d", hour2, values["time"]["minute"])
--local dist = makelength(makelength(round(distanceFPLN(FPlan[lsubpage[3]/10], values["active"], FPlan[lsubpage[3]/10]["length"], 0)), 3, 1), 4, 0)
if values["activeWPT"]["length"] > 1 then

gline[4] = gline[4] .."ETA   " .. FplnETA (distanceFPLN(values["activeWPT"], 2, dest, 0) / (values["GPSSPD"]* 1.94384449)*3600)
gline[6] = gline[6] .."ETE   " ..  convtime(distanceFPLN(values["activeWPT"], 2, dest, 0) / (values["GPSSPD"]* 1.94384449)*3600)
--  gline[4] = distanceFPLN(values["activeWPT"], 1, values["activeWPT"]["length"], 0) .. "  " .. values["activeWPT"]["length"]
else
gline[4] = gline[4] .."ETA   --:--"
gline[6] = gline[6] .."ETE   --:--"
end
gline[5] = gline[5] .."FLT   " ..  convtime(values["flightimer"])
gline[7] = gline[7] .. "D/T 4"
end

--#########################################################################This is the NAV page
elseif rpage == 5 then
--super nav!
if rsubpage[5] == 10 then
controls["rCRSR"] = 0
if lpage == 4 and lsubpage[4] == 10 and controls["DCT"] == 0 then
if values["GPSnum"] < 4 then
gline[5] = "GS    ---kt"
else
gline[5] = "GS   " .. makelength(round(values["GPSSPD"]* 1.94384449), 4, 1) .. "kt"
end


if values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[1] = ""
values["scaleline"] = "qqF L A Gqq"
gline[2] = ""
gline[3] = ""
gline[4] = "DIS  --.-nm   ETE --:--"
gline[5] = gline[5] .. "   BRG  ---*"
gline[6] = ""
gline[7] = gline[7] .. "NAV 1"
bline[1] = ""
bline[2] = ""
bline[3] = ""
bline[4] = ""
bline[5] = ""
bline[6] = ""
else

if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = "      " .. values["activeWPT"][1]["ident"] .. " " .. values["activeWPT"][2]["ident"] .. suffix(values["activeWPT"]["active"], 0)
else
gline[1] = "      " .. values["activeWPT"][1]["ident"] .. "=" .. values["activeWPT"][2]["ident"] .. suffix(values["activeWPT"]["active"], 0)
end

values["scaleline"] = scale(values["XTK"], values["scalefactor"], values["tofrom"])
gline[2] = ""
gline[3] = ""
gline[4] = "DIS  " .. dynaround(values["dist"], 4) .. "nm   ETE " ..  convtime(values["dist"] / (values["GPSSPD"]* 1.94384449)*3600)
--  gline[4] = "DIS  " .. makelength(round(values["dist"]), 4, 1) .. "nm   ETE " ..  convtime(distanceFPLN(values["activeWPT"], 1, values["activeWPT"]["length"], 0) / (get(SPEEDin)* 1.94384449)*3600)
gline[5] =  gline[5] .. string.format("   BRG  %03d*", round(values["bearing"]))
gline[6] = ""

gline[7] = gline[7] .. "NAV 1"
bline[1] = ""
bline[2] = ""
bline[3] = ""
bline[4] = ""
bline[5] = ""
bline[6] = ""
end
else
if values["GPSnum"] < 4 then
gline[4] = gline[4] .. "GS    ---kt"
else
gline[4] = gline[4] .. "GS   " .. makelength(round(values["GPSSPD"]* 1.94384449), 4, 1) .. "kt"
end
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[2] = gline[2] .. "qq       qq"
gline[3] = gline[3] .. "DIS  --.-nm"
gline[5] = gline[5] .. "ETE   --:--"
gline[6] = gline[6] .. "BRG    ---*"
gline[7] = gline[7] .. "NAV 1"
bline[2] = bline[2] .. "  F#L#A#G"
else

if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. values["activeWPT"][1]["ident"] .. " " .. values["activeWPT"][2]["ident"]
else
gline[1] = gline[1] .. values["activeWPT"][1]["ident"] .. "=" .. values["activeWPT"][2]["ident"]
end

gline[2] = gline[2] .. scale(values["XTK"], values["scalefactor"], values["tofrom"])
gline[3] = gline[3] .. "DIS  " .. dynaround(values["dist"], 4) .. "nm"
gline[5] = gline[5] .. "ETE   " ..  convtime(values["dist"] / (values["GPSSPD"]* 1.94384449)*3600)

--gline[5] = gline[5] .. "ETE   " ..  convtime(distanceFPLN(values["activeWPT"], 1, values["activeWPT"]["length"], 0) / (get(SPEEDin)* 1.94384449)*3600)
gline[6] = gline[6] .. string.format("BRG    %03d*", round(values["bearing"]))
gline[7] = gline[7] .. "NAV 1"
end
end
elseif rsubpage[5] == 20 then
controls["rCRSR"] = 0
gline[1] = gline[1] .. "PRESENT POS"

if values["GPSnum"] >= 4 then
if values["CALC3timer"] > 3 or values["REFVOR"] == nil then
values["REFVOR"] = closestVOR(values["GPSlat"], values["GPSlon"])
end


gline[3] = gline[3] .. string.format("%s%03d*fr",  values["REFVOR"]["ident"],  round(course(values["REFVOR"]["lat"], values["REFVOR"]["lon"], values["GPSlat"], values["GPSlon"])))
gline[4] = gline[4] .. "     " .. dynaround(distance(values["REFVOR"]["lat"], values["REFVOR"]["lon"], values["GPSlat"], values["GPSlon"]), 4) .. "nm"
gline[5] = gline[5] .. convertLatLon(values["GPSlat"], 0)
gline[6] = gline[6] .. convertLatLon(values["GPSlon"], 1)
else
gline[3] = gline[3] .. "--- ---*fr"
gline[4] = gline[4] .. "  ---- -nm"
gline[5] = gline[5] .. "- --*--.--'"
gline[6] = gline[6] ..  "----*--.--'"
end

gline[7] = gline[7] .. "NAV 2"

elseif rsubpage[5] == 30 then

gline[5] = gline[5] .. "MSA " .. getMSA(values["GPSlat"], values["GPSlon"], values["GPSlat"], values["GPSlon"]) .. "ft"
gline[7] = gline[7] .. "NAV 3"

if values["GPSSPD"] > 1 then
gline[3] = gline[3] .. string.format("TK     %03d*", round(values["GPSTRK"]))
else
gline[3] = gline[3] .. "TK     ---*"
end
if values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[2] = gline[2] .. "DTK    ---*"
gline[4] = gline[4] .. "FLY - -.-nm"
gline[6] = gline[6] .. "ESA -----ft"

else
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[1] = gline[1] .. values["activeWPT"][1]["ident"] .. " " .. values["activeWPT"][2]["ident"]
else
gline[1] = gline[1] .. values["activeWPT"][1]["ident"] .. "=" .. values["activeWPT"][2]["ident"]
end
if controls["rCRSR"]  == 1 then
if values["HSIinterf"] == 1 or get(GPSmode) == 1 then
controls["rCRSR"]  = 0
else
bline[2] = bline[2] .. string.format("       %03d*", round(values["HSIOBS"]))

end
controls["rknobl"] = 0
if controls["rknobs"] == -1 then
values["HSIOBS"] = values["HSIOBS"] - 1
if values["HSIOBS"] < 1 then values["HSIOBS"] = values["HSIOBS"] + 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
values["HSIOBS"] = values["HSIOBS"] + 1
if values["HSIOBS"] > 360 then values["HSIOBS"] = values["HSIOBS"] - 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
controls["rknobs"] = 0
end

end


if get(GPSmode) == 2 then
if values["HSIinterf"] == 2 or values["HSIinterf"] == 0 then

gline[2] = gline[2] .. string.format("OBS:   %03d*", round(values["HSIOBS"]))
else
gline[2] = gline[2] ..  string.format("OBS    %03d*", round(values["HSIOBS"]))
end

else
if values["HSIinterf"] == 1 then
local diff = values["HSIOBS"] - values["DTK"]
if diff < -180 then diff = diff + 360
elseif diff > 180 then diff = diff - 360 end
if (diff > 10 or diff < -10) and values["flash"] == 0 then
gline[2]= gline[2] .. "DTK"
else

gline[2] = gline[2] .. string.format("DTK    %03d*", round(values["DTK"]))
end
else
gline[2] = gline[2] .. string.format("DTK    %03d*", round(values["DTK"]))
end
end

if values["XTK"] >= 0 then
gline[4] = gline[4] .. "FLY R" .. dynaround(values["XTK"], 3) .. "nm"
else
gline[4] = gline[4] .. "FLY L" .. dynaround(math.abs(values["XTK"]), 3) .. "nm"
end
if get(GPSmode) == 1 then
local wptnum = 3
local ESA = getMSA(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
while wptnum <= values["activeWPT"]["length"] do
local ESA1 = 0
ESA1 = getMSA(values["activeWPT"][wptnum-1]["lat"], values["activeWPT"][wptnum-1]["lon"], values["activeWPT"][wptnum]["lat"], values["activeWPT"][wptnum]["lon"])
if ESA1 ~= "-----" then
--print(wptnum, ESA1, ESA)
if tonumber(ESA1) > tonumber(ESA) then
ESA = ESA1
end
end
wptnum = wptnum + 1
end
if ESA == 0 then
gline[6] = gline[6] .. "ESA -----ft"
else
gline[6] = gline[6] .. "ESA " ..  ESA .. "ft"
end
else
gline[6] = gline[6] .. "ESA " ..   getMSA(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]).. "ft"

end

end
elseif rsubpage[5] == 40 then
if values["VNVstat"][1]["ident"] == "     " then
values["VNVstat"][0] = -1
end

if values["VNVstat"][0] == -1 then
--0 inactiv, 1 armed, 2 active
values["VNVstat"][0] = 0
values["VNVstat"][2] = -1
if values["activeWPT"]["length"] >= 2 then
values["VNVstat"][1] = values["activeWPT"][values["activeWPT"]["length"]]
--values["VNVstat"][2] = values["activeWPT"]["length"]
else
values["VNVstat"][1] = {}
values["VNVstat"][1]["ident"] = "     "
end
end

if controls["rCRSR"]  == 1 then
if controls["rCRSRchar"] == 0 and controls["rselect"] ~= 1 then
-- if controls["lselect"] == 0 then
-- controls["lCRSRchar"] = 5
-- else
controls["rCRSRchar"] = 1
--  end
end
if controls["rselect"] == 1 then
if controls["sENT"] == 1 and values["reditstate"] == 3 then
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["reditvalue"][1]["types"] and values["activeWPT"][WPTnum]["ident"] == values["reditvalue"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["reditvalue"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end
if WPTfound == 0 then
values["statusmessage"] = "INVALID#VNV"
values["statustimer"] = 5
controls["sENT"] = 0
end
end
values["VNVstat"][1] = editvalue(1, "r", values["VNVstat"][1])
if values["rreturn"] == 1 and values["VNVstat"][0] == 2 then
values["VNVstat"][0] = 1
end
end

if controls["rknobl"] == -1 then
controls["rCRSRchar"] = controls["rCRSRchar"] - 1
if controls["rselect"] == 0 and controls["rCRSRchar"] < 1 then
controls["rselect"] = 3
controls["rCRSRchar"] = 2
if values["VNVstat"][0] == 0 then
values["VNVstat"][0] = 1
end
elseif controls["rselect"] == 2 and controls["rCRSRchar"] < 1 then
controls["rselect"] = 1
controls["rCRSRchar"] = 0
elseif controls["rselect"] == 3 and controls["rCRSRchar"] < 1 then
controls["rselect"] = 2
controls["rCRSRchar"] = 2
end
controls["rknobl"] = 0
elseif controls["rknobl"] == 1 then
controls["rCRSRchar"] = controls["rCRSRchar"] + 1
if controls["rselect"] == 0 and controls["rCRSRchar"] > 5 then
controls["rselect"] = 1
controls["rCRSRchar"] = 0
elseif controls["rselect"] == 2 and controls["rCRSRchar"] > 2 then
controls["rselect"] = 3
controls["rCRSRchar"] = 1
if values["VNVstat"][0] == 0 then
values["VNVstat"][0] = 1
end
elseif controls["rselect"] == 3 and controls["rCRSRchar"] > 2 then
controls["rselect"] = 0
controls["rCRSRchar"] = 1
end
controls["rknobl"] = 0
elseif controls["rknobs"] == -1 then
if controls["rselect"] == 0 then
x = string2value(string.sub(values["VNVSEL"], controls["rCRSRchar"], controls["rCRSRchar"])) - 1
if x < 1 then x = 10 end
values["VNVSEL"] = replaceChar(values["VNVSEL"],controls["rCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["rselect"] == 2 then
x = string2value(string.sub(values["VNVOFFS"], controls["rCRSRchar"], controls["rCRSRchar"])) - 1
if x < 1 then x = 10 end
values["VNVOFFS"] = replaceChar(values["VNVOFFS"],controls["rCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["rselect"] == 3 then
local y = controls["rCRSRchar"]
if y == 1 then y = 2
elseif y == 2 then y = 4 end
x = string2value(string.sub(values["VNVANG"], y, y)) - 1
if x < 1 then x = 10 end
values["VNVANG"] = replaceChar(values["VNVANG"],y,value2string(x))
values["VNVstat"][0] = 1
end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
if controls["rselect"] == 0 then
x = string2value(string.sub(values["VNVSEL"], controls["rCRSRchar"], controls["rCRSRchar"])) + 1
if x > 10 then x = 1 end
values["VNVSEL"] = replaceChar(values["VNVSEL"],controls["rCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["rselect"] == 2 then
x = string2value(string.sub(values["VNVOFFS"], controls["rCRSRchar"], controls["rCRSRchar"])) + 1
if x > 10 then x = 1 end
values["VNVOFFS"] = replaceChar(values["VNVOFFS"],controls["rCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["rselect"] == 3 then
local y = controls["rCRSRchar"]
if y == 1 then y = 2
elseif y == 2 then y = 4 end
x = string2value(string.sub(values["VNVANG"], y, y)) + 1
if x > 10 then x = 1 end
values["VNVANG"] = replaceChar(values["VNVANG"],y,value2string(x))
values["VNVstat"][0] = 1
end
controls["rknobs"] = 0
end
end

if values["VNVstat"][0] == 0 then
gline[1] = gline[1].. "VNV INACTV"
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["VNVstat"][1]["types"] and  values["activeWPT"][WPTnum]["ident"] == values["VNVstat"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["VNVstat"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end
WPTnum = WPTnum - 1
if WPTnum == 1 then
values["VNVANG"] = " 0.0"
else
values["VNVANG"] = makelength(float(-math.atan((IndALT-values["VNVSEL"])*0.000164578834/(distanceFPLN(values["activeWPT"], 2, WPTnum, 0)-values["VNVOFFS"]))/pi * 180, 1), 4, 1)
end
elseif values["VNVstat"][0] == 1 then
if  values["VNVstat"][2] == -1 then
gline[1] = gline[1].. "VNV ARMED"
else
gline[1] = gline[1].. "VNV IN" .. values["VNVstat"][2]
end
elseif values["VNVstat"][0] == 2 then
gline[1] = gline[1].. "VNV" ..  makelength(round(values["VNVstat"][2], -2), 6, 1)  .. "ft"
end

gline[3] = gline[3] .. string.format("IND %05dft", IndALT)

gline[4] = gline[4] .. "SEL:" .. values["VNVSEL"] .. "ft"
if controls["rCRSR"]  == 1 and controls["rselect"] == 0 then
bline[4] =  bline[4] .. highlightchar("    " .. values["VNVSEL"], controls["rCRSRchar"]+4)
end



if controls["rselect"] == 1 then
gline[5] = gline[5] .. values["rgstring"] .. ":-" .. values["VNVOFFS"] .. "nm"
bline[5] = bline[5] .. values["rbstring"]
else
gline[5] = gline[5] .. values["VNVstat"][1]["ident"] .. ":-" .. values["VNVOFFS"] .. "nm"
if controls["rselect"] == 2 then
bline[5] =  bline[5] .. highlightchar("       " .. values["VNVOFFS"], controls["rCRSRchar"]+7)
end
end




gline[6] = gline[6] .. "ANGLE:" .. values["VNVANG"] .. "*"
if controls["rselect"] == 3 then
if controls["rCRSRchar"] == 1 then
bline[6] =  bline[6] .. highlightchar("      " .. values["VNVANG"], 8)
else
bline[6] =  bline[6] .. highlightchar("      " .. values["VNVANG"], 10)
end
end


gline[7] = gline[7] .. "NAV 4"
elseif rsubpage[5] == 50 then
cagevisible=0
if lpage == 4 and lsubpage[4] == 50 and controls["lspage"] == 0 and controls["DCT"] == 0 then
local rangenum = 1
if values["NAV5RNG"] == 0 then
local dist1 = 60
if values["activeWPT"]["length"] == 2 or values["activeWPT"]["active"] == FPlan[0]["APPMAP"] - 1 then
dist1 = distance(values["GPSlat"], values["GPSlon"],  values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])*1.05
elseif values["activeWPT"]["length"] > 2 then
dist1 = distance(values["GPSlat"], values["GPSlon"],  values["activeWPT"][3]["lat"], values["activeWPT"][3]["lon"])*1.05

end
while num2range(rangenum) < dist1 do
rangenum = rangenum + 1
if rangenum > 22 then
rangenum = 22
break end
end
end

if controls["lCRSR"]  == 1 then

if controls["lCRSRchar"] == 0 then
controls["lCRSRchar"] = 1
end

if controls["lknobl"] == -1 then
controls["lCRSRchar"] = controls["lCRSRchar"] - 1
if controls["lselect"] == 0 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 1 and controls["lCRSRchar"] == 2 and string.sub(values["NAV5LNS"], 2, 2) == "1" and get(GPSmode) == 2 and values["HSIinterf"] ~= 1 then
controls["lselect"] = 2
elseif controls["lselect"] == 2 then
controls["lselect"] = 1
controls["lCRSRchar"] = 2
elseif controls["lselect"] == 1 and controls["lCRSRchar"] < 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobl"] == 1 then
controls["lCRSRchar"] = controls["lCRSRchar"] + 1
if controls["lselect"] == 0 then
controls["lselect"] = 1
controls["lCRSRchar"] = 1
elseif controls["lselect"] == 1 and controls["lCRSRchar"] == 3 and string.sub(values["NAV5LNS"], 2, 2) == "1" and get(GPSmode) == 2 and values["HSIinterf"] ~= 1 then
controls["lselect"] = 2
elseif controls["lselect"] == 2 then
controls["lselect"] = 1
controls["lCRSRchar"] = 3
elseif controls["lselect"] == 1 and controls["lCRSRchar"] > 3 then
controls["lselect"] = 0
controls["lCRSRchar"] = 1
end
controls["lknobl"] = 0
elseif controls["lknobs"] == -1 then
if controls["lselect"] == 0 then
if values["NAV5RNG"] == 0 then
values["NAV5RNG"] = rangenum - 1
if rangenum == 1 then values["NAV5RNG"] = 22
elseif rangenum == 22 then values["NAV5RNG"] = 22 end
else
values["NAV5RNG"] = values["NAV5RNG"] - 1
end
if values["NAV5RNG"] < 0 then values["NAV5RNG"] = 22 end
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["NAV5LNS"], controls["lCRSRchar"], controls["lCRSRchar"])) - 1
if x < 2 then x = 4 end
values["NAV5LNS"] = replaceChar(values["NAV5LNS"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then

values["HSIOBS"] = values["HSIOBS"] - 1
if values["HSIOBS"] < 1 then values["HSIOBS"] = values["HSIOBS"] + 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
end
controls["lknobs"] = 0
elseif controls["lknobs"] == 1 then
if controls["lselect"] == 0 then
if values["NAV5RNG"] == 0 then
values["NAV5RNG"] = rangenum + 1
if rangenum == 1 then values["NAV5RNG"] = 1
elseif rangenum == 22 then values["NAV5RNG"] = 1 end
else
values["NAV5RNG"] = values["NAV5RNG"] + 1
end
if values["NAV5RNG"] > 22 then values["NAV5RNG"] = 0 end
elseif controls["lselect"] == 1 then
x = string2value(string.sub(values["NAV5LNS"], controls["lCRSRchar"], controls["lCRSRchar"])) + 1
if x > 4 then x = 2 end
values["NAV5LNS"] = replaceChar(values["NAV5LNS"],controls["lCRSRchar"],value2string(x))
elseif controls["lselect"] == 2 then
values["HSIOBS"] = values["HSIOBS"] + 1
if values["HSIOBS"] > 360 then values["HSIOBS"] = values["HSIOBS"] - 360 end
if values["HSIinterf"] == 2 then
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
end
end
controls["lknobs"] = 0
end
end

if get(GPSmode) == 1 then
if get(APR) == 0 then
gline[3] = "âã-ñò |"
elseif get(APR) == 1 then
gline[3] = "êë-ñò |"
elseif get(APR) == 2 then
gline[3] = "äå-ñò |"
end


elseif get(GPSmode) == 2 then
if get(APR) == 0 then
gline[3] = string.format("âã:%03d|", round(values["HSIOBS"]))
elseif get(APR) == 1 then
gline[3] = string.format("êë:%03d|", round(values["HSIOBS"]))
end
end
if values["GPSnum"] < 4 then
gline[4] = " --- àá"
else
gline[4] = makelength(round(values["GPSSPD"]* 1.94384449), 4, 1) .. " àá"
end


if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[1] = "--.- Þß"
gline[2] = "      |"
else
gline[1] = dynaround(values["dist"], 4) .. " Þß"
if get(WPTalert) == 1 and values["flash"] == 0 then
gline[2] = "      |"
else
gline[2] = values["activeWPT"][2]["ident"] .. suffix(values["activeWPT"]["active"], 0) .. "|"
end
end
bline[5] = "       "
bline[1] = ""
bline[2] = ""
bline[3] = ""
bline[4] = ""

if controls["lselect"] == 1 and controls["lCRSRchar"] == 1 then
gline[5] = "      |"
if string.sub(values["NAV5LNS"], 1, 1) == "1" then
bline[5] = "ETE### "
elseif string.sub(values["NAV5LNS"], 1, 1) == "2" then
bline[5] = "XTK### "
elseif string.sub(values["NAV5LNS"], 1, 1) == "3" then
bline[5] = "VNAV## "
end
else
if string.sub(values["NAV5LNS"], 1, 1) == "1" then
--ETE
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[5] = "èé-:--|"
else
local ETE = convtime(values["dist"] / (values["GPSSPD"]* 1.94384449)*3600)
if string.sub(ETE, 1, 1) ~= " " then
gline[5] = "èé-:--|"
else
gline[5] = "èé" .. string.sub(convtime(values["dist"] / (values["GPSSPD"]* 1.94384449)*3600), 2, 5) .. "|"
end
end
elseif string.sub(values["NAV5LNS"], 1, 1) == "2" then
--XTK
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[5] = ".--NM=|"
else
if values["XTK"] >= 0 then
--.32NM->
gline[5] = dynaround(values["XTK"], 3) .. "NM=|"
else
gline[5] = dynaround(math.abs(values["XTK"]), 3) .. "NM`|"
end
end
elseif string.sub(values["NAV5LNS"], 1, 1) == "3" then
--VNAV
if values["VNVstat"][0] <= 0 then
gline[5] = "V OFF |"
elseif values["VNVstat"][0] == 1 then
if  values["VNVstat"][2] == -1 then
gline[5] = "V ARM |"
else
gline[5] = "V" .. values["VNVstat"][2] .. "|"
end
elseif values["VNVstat"][0] == 2 then
gline[5] = "V" .. makelength(round(values["VNVstat"][2], -2), 5, 1) .. "|"
end

end
end
--DTK
bline[6] = "       "
if controls["lselect"] == 1 and controls["lCRSRchar"] == 2 then
if string.sub(values["NAV5LNS"], 2, 2) == "1" then
if get(GPSmode) == 1 then
bline[6] = "÷ø     "
else
bline[6] = "ïð     "
end
elseif string.sub(values["NAV5LNS"], 2, 2) == "2" then
bline[6] = "óô     "
elseif string.sub(values["NAV5LNS"], 2, 2) == "3" then
bline[6] = "õö     "
end
end
if string.sub(values["NAV5LNS"], 2, 2) == "1" then
if get(GPSmode) == 2 then
gline[6] = string.format("ïð%03d*|", round(values["HSIOBS"]))
else
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[6] = "÷ø---*|"
else
if values["HSIinterf"] == 1 then
local diff = values["HSIOBS"] - values["DTK"]
if diff < -180 then diff = diff + 360
elseif diff > 180 then diff = diff - 360 end
if (diff > 10 or diff < -10) and values["flash"] == 0 then
gline[6] = "÷ø    |"
else

gline[6] = string.format("÷ø%03d*|", round(values["DTK"]))
end
else
gline[6] = string.format("÷ø%03d*|", round(values["DTK"]))
end
end
end

elseif string.sub(values["NAV5LNS"], 2, 2) == "2" then
--BRG
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[6] = "óô---*|"
else
gline[6] = string.format("óô%03d*|", round(course(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])))
end
--RAD
elseif string.sub(values["NAV5LNS"], 2, 2) == "3" then
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[6] = "õö---*|"
else
gline[6] = string.format("õö%03d*|", round(course(values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"], values["GPSlat"], values["GPSlon"])))
end
end

if controls["lselect"] == 2 then
bline[6] = string.format("  %03d* ", round(values["HSIOBS"]))
end
bline[7] = "           "
if controls["lselect"] == 1 and controls["lCRSRchar"] == 3 then
if string.sub(values["NAV5LNS"], 3, 3) == "1" then
bline[7] = "úø    "
elseif string.sub(values["NAV5LNS"], 3, 3) == "2" then
bline[7] = "óô    "
elseif string.sub(values["NAV5LNS"], 3, 3) == "3" then
bline[7] = "õö    "
end
end
if string.sub(values["NAV5LNS"], 3, 3) == "1" then
--TK
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[7] = "úø---*%"
else
gline[7] = string.format("úø%03d*%%", round(values["GPSTRK"]))
end
elseif string.sub(values["NAV5LNS"], 3, 3) == "2" then
--BRG
--TK
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[7] = "óô---*%"
else
gline[7] = string.format("óô%03d*%%", round(values["bearing"]))
end
--RAD
elseif string.sub(values["NAV5LNS"], 3, 3) == "3" then
if  values["activeWPT"]["length"] < 2 or values["GPSnum"] < 4 then
gline[7] = "õö---*%"
else
gline[7] = string.format("õö%03d*%%", round(course(values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"], values["GPSlat"], values["GPSlon"])))
end
end


if values["NAV5RNG"] == 0 then
gline[7] = gline[7] .. num2range(rangenum)
else
gline[7] = gline[7] .. num2range(values["NAV5RNG"])
end
if controls["lselect"] == 0 and controls["lCRSR"]  == 1 then
if values["NAV5RNG"] == 0 then
bline[7] ="       " .. "AUTO"
else
bline[7] ="       " .. makelength(num2range(values["NAV5RNG"]),4, 0)
end
end

if values["MSGLIST"]["length"] > 1 then
gline[6] = gline[6] .. "msg"
if values["flash"] == 1 then
bline[6] = bline[6] .. "msg"
end
end
if string.sub(values["NAV5SHOW"], 4, 4) == "0" then
values["NAV5ORI"] = 0
elseif string.sub(values["NAV5SHOW"], 4, 4) == "1" then
values["NAV5ORI"] = values["DTK"]
elseif string.sub(values["NAV5SHOW"], 4, 4) == "2" then
values["NAV5ORI"] = values["GPSTRK"]
elseif string.sub(values["NAV5SHOW"], 4, 4) == "3" then
values["NAV5ORI"] = get(PSIin)
end
if controls["CLR"] == 1 then
if values["NAV5Clut"] == 0 then values["NAV5Clut"] = 1
else values["NAV5Clut"] = 0 end
controls["CLR"] = 0
end

if controls["rCRSR"]  == 1 then

if controls["rCRSRchar"] == 0 then
controls["rCRSRchar"] = 1
end

if controls["rknobl"] == -1 then
controls["rCRSRchar"] = controls["rCRSRchar"] - 1
if controls["rCRSRchar"] < 1 then
controls["rCRSRchar"] = 4
end
controls["rknobl"] = 0
elseif controls["rknobl"] == 1 then
controls["rCRSRchar"] = controls["rCRSRchar"] + 1
if controls["rCRSRchar"] > 4 then
controls["rCRSRchar"] = 1
end
controls["rknobl"] = 0
elseif controls["rknobs"] == -1 then
x = string2value(string.sub(values["NAV5SHOW"], controls["rCRSRchar"], controls["rCRSRchar"])) - 1
if controls["rCRSRchar"] == 1 and x < 1 then x = 4
elseif controls["rCRSRchar"] == 2 and x < 1 then x = 2
elseif controls["rCRSRchar"] == 3 and x < 1 then x = 2
elseif controls["rCRSRchar"] == 4 and x < 1 then x = 4 end
values["NAV5SHOW"] = replaceChar(values["NAV5SHOW"],controls["rCRSRchar"],value2string(x))
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
x = string2value(string.sub(values["NAV5SHOW"], controls["rCRSRchar"], controls["rCRSRchar"])) + 1
if controls["rCRSRchar"] == 1 and x > 4 then x = 1
elseif controls["rCRSRchar"] == 2 and x > 2 then x = 1
elseif controls["rCRSRchar"] == 3 and x > 2 then x = 1
elseif controls["rCRSRchar"] == 4 and x > 4 then x = 1 end
values["NAV5SHOW"] = replaceChar(values["NAV5SHOW"],controls["rCRSRchar"],value2string(x))
controls["rknobs"] = 0
end




bline[1] = ""
bline[2] = ""
bline[3] = ""
bline[4] = ""

if string.sub(values["NAV5SHOW"], 1, 1) == "0" then
gline[1] = gline[1] .. "       ÿ VOR:OFF"
if controls["rCRSRchar"] == 1 then
bline[1] = "                    OFF"
end
elseif string.sub(values["NAV5SHOW"], 1, 1) == "1" then
gline[1] = gline[1] .. "       ÿ VOR:TLH"
if controls["rCRSRchar"] == 1 then
bline[1] = "                    TLH"
end
elseif string.sub(values["NAV5SHOW"], 1, 1) == "2" then
gline[1] = gline[1] .. "       ÿ VOR: LH"
if controls["rCRSRchar"] == 1 then
bline[1] = "                     LH"
end
elseif string.sub(values["NAV5SHOW"], 1, 1) == "3" then
gline[1] = gline[1] .. "       ÿ VOR:  H"
if controls["rCRSRchar"] == 1 then
bline[1] = "                      H"
end
end
if string.sub(values["NAV5SHOW"], 2, 2) == "0" then
gline[2] = gline[2] .. "         NDB:OFF"
if controls["rCRSRchar"] == 2 then
bline[2] = "                    OFF"
end
else
gline[2] = gline[2] .. "         NDB: ON"
if controls["rCRSRchar"] == 2 then
bline[2] = "                     ON"
end
end
if string.sub(values["NAV5SHOW"], 3, 3) == "0" then
gline[3] = gline[3] .. "         APT:OFF"
if controls["rCRSRchar"] == 3 then
bline[3] = "                    OFF"
end
else
gline[3] = gline[3] .. "         APT: ON"
if controls["rCRSRchar"] == 3 then
bline[3] = "                     ON"
end
end
gline[4] = gline[4] .. string.format("         %03d", round(values["NAV5ORI"]))
if string.sub(values["NAV5SHOW"], 4, 4) == "0" then
gline[4] = gline[4] .. "* N!"
if controls["rCRSRchar"] == 4 then
bline[4] = "                     N!"
end
elseif string.sub(values["NAV5SHOW"], 4, 4) == "1" then
gline[4] = gline[4] .. "*÷ø!"
if controls["rCRSRchar"] == 4 then
bline[4] = "                    ÷ø!"
end
elseif string.sub(values["NAV5SHOW"], 4, 4) == "2" then
gline[4] = gline[4] .. "*úø!"
if controls["rCRSRchar"] == 4 then
bline[4] = "                    úø!"
end
elseif string.sub(values["NAV5SHOW"], 4, 4) == "3" then
gline[4] = gline[4] .. "*æç!"
if controls["rCRSRchar"] == 4 then
bline[4] = "                    æç!"
end
end
end

if controls["SCAN"] == 1 then
controls["rknobl"] = 0
if controls["rknobs"] == -1 then
controls["rview"] = controls["rview"] - 1
if controls["rview"] < 1 then controls["rview"] = FPlan[0]["length"] end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
controls["rview"] = controls["rview"] + 1
if controls["rview"] > FPlan[0]["length"] then controls["rview"] = 1 end
controls["rknobs"] = 0
end
if controls["rview"] == 0 then
values["NAV5DCT"] = values["activeWPT"][2]
else
values["NAV5DCT"] = FPlan[0][controls["rview"]]
end
if values["NAV5DCT"] ~= nil then

if values["NAV5DCT"]["ident"] == "     " then
bline[7] = bline[7] .. "      "..  "NO#WPT"
else
bline[7] = bline[7] .. "       "..  string.gsub(values["NAV5DCT"]["ident"], " ", "#")
end
else
bline[7] = bline[7] .. "      "..  "NO#WPT"
end

end

local range = 1
if values["NAV5RNG"] == 0 then
range = num2range(rangenum)
else
range = num2range(values["NAV5RNG"])
end
local size = {60, 15, 148, 79}
drawmap (size, tonumber(string.sub(values["NAV5SHOW"], 4, 4)), range, 1)

else
if controls["rCRSR"]  == 1 then
if controls["rknobl"] == -1 then
if controls["rselect"] == 0 then controls["rselect"] = 1
else controls["rselect"] = 0 end
controls["rknobl"] = 0
elseif controls["rknobl"] == 1 then
if controls["rselect"] == 0 then controls["rselect"] = 1
else controls["rselect"] = 0 end
controls["rknobl"] = 0
elseif controls["rknobs"] == -1 then
if controls["rselect"] == 0 then
values["NAV5ORIS"] = values["NAV5ORIS"] - 1
if values["NAV5ORIS"] < 0 then values["NAV5ORIS"] = 3 end
elseif controls["rselect"] == 1 then
values["NAV5RNG2"] = values["NAV5RNG2"] - 1
if values["NAV5RNG2"] < 1 then values["NAV5RNG2"] = 22 end
end
controls["rknobs"] = 0
elseif controls["rknobs"] == 1 then
if controls["rselect"] == 0 then
values["NAV5ORIS"] = values["NAV5ORIS"] + 1
if values["NAV5ORIS"] > 3 then values["NAV5ORIS"] = 0 end
elseif controls["rselect"] == 1 then
values["NAV5RNG2"] = values["NAV5RNG2"] + 1
if values["NAV5RNG2"] > 22 then values["NAV5RNG2"] = 1 end
end
controls["rknobs"] = 0
end
end
local strin = "N!  "
values["NAV5ORI2"] = 0
if values["NAV5ORIS"] == 1 then
strin = "DTK!"
values["NAV5ORI2"] = values["DTK"]
elseif values["NAV5ORIS"] == 2 then
strin = "TK! "
values["NAV5ORI2"] = values["GPSTRK"]

elseif values["NAV5ORIS"] == 3 then
strin = "HDG!"
values["NAV5ORI2"] = get(PSIin)

end


if values["NAV5ORIS"] == 0 then
gline[6] = gline[6] .. strin .. "   " .. makelength(num2range(values["NAV5RNG2"]), 4, 1)
else
gline[6] = string.format("%s%03d*   %s", gline[6], values["NAV5ORI2"], makelength(num2range(values["NAV5RNG2"]), 4, 1))
end
if controls["rselect"] == 0 and controls["rCRSR"]  == 1 then
bline[6] = bline[6] .. string.gsub(strin, " ", "#")
elseif controls["rselect"] == 1 then
bline[6] = bline[6] .. "       " .. string.gsub(makelength(num2range(values["NAV5RNG2"]), 4, 1), " ", "#")
end
local size = {105, 28, 103, 66}
drawmap (size, values["NAV5ORIS"], num2range(values["NAV5RNG2"]), 2)


gline[7] = gline[7] .. "NAV 5"
end
end
elseif rpage == 6 then
rsubpage[6] = WPTpage(0, 0, rsubpage[6])
--#########################################################################This is the APT1 page
--we search for airports


--#########################################################################This is the VOR page
elseif rpage == 7 then
WPTpage(1, 0, 10)

--#########################################################################This is the NDB page
elseif rpage == 8 then
WPTpage(2, 0, 10)


--#########################################################################This is the INT page
elseif rpage == 9 then
WPTpage(3, 0, 10)

--#########################################################################This is the SUP page
elseif rpage == 10 then
WPTpage(4, 0, 10)
--This page is only for testing
elseif rpage == 11 then
if values["activeWPT"]["length"] >= 1 then
gline[1] = gline[1] .. "1" ..  values["activeWPT"][1]["ident"]
end
if values["activeWPT"]["length"] >= 2 then
gline[2] = gline[2] .. "2" ..  values["activeWPT"][2]["ident"]
end
if values["activeWPT"]["length"] >= 3 then
gline[3] = gline[3] .. "3" ..  values["activeWPT"][3]["ident"]
end
if values["activeWPT"]["length"] >= 4 then
gline[4] = gline[4] .. "4" ..  values["activeWPT"][4]["ident"]
end
if values["activeWPT"]["length"] >= 5 then
gline[5] = gline[5] .. "5" ..  values["activeWPT"][5]["ident"]
end
if values["activeWPT"]["length"] >= 6 then
gline[6] = gline[6] .. "6" ..  values["activeWPT"][6]["ident"]
end
gline[7] = gline[7] .. values["activeWPT"]["active"] .. " " .. values["activeWPT"]["length"]
end
end


--final assembly of the seventh line
if values["MSGLIST"]["length"] > 1 and rpage > 0 then
values["MSGENT"] = 1
set(MSGalert, 1)
else
set(MSGalert, 0)
end

if get(GPSmode) == 2 and values["dist"] > 200 then
if values["MSGSTAT"][5] == 0 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "OBS WPT > 200NM")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
values["MSGSTAT"][5] = 1
end
elseif values["MSGSTAT"][5] == 1 then
values["MSGSTAT"][5] = 0
end

if values["GPSlat"] > 74 or values["GPSlat"] < -60 then
if values["MSGSTAT"][4] == 0 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "TO TRUE NORTH")
table.insert(values["MSGLIST"], 1, "ALL DATA REFERENCED")
table.insert(values["MSGLIST"], 1, "MAGNETIC VAR INVALID")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 4
values["MSGSTAT"][4] = 1
end
elseif values["MSGSTAT"][4] == 1 then
values["MSGSTAT"][4] = 0
end

--1 means armed, only then we check this


if values["VNVstat"][0] == 1 then
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["VNVstat"][1]["types"] and  values["activeWPT"][WPTnum]["ident"] == values["VNVstat"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["VNVstat"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end
WPTnum = WPTnum - 1
local dist = (distanceFPLN(values["activeWPT"], 2, WPTnum, 0)-values["VNVOFFS"])
local VNVAlt = math.tan(values["VNVANG"]*pi/-180)* dist*6076.11549 +values["VNVSEL"]
if (tonumber(values["VNVANG"]) < 0 and VNVAlt > IndALT) or (tonumber(values["VNVANG"]) > 0 and VNVAlt < IndALT) then
local reqdist = 1 / ((math.tan(values["VNVANG"]*pi/-180) / ((IndALT-values["VNVSEL"])*0.000164578834)))
local reqsec = (dist-reqdist)/ (values["GPSSPD"]* 1.94384449)*3600
if reqsec > 600 then
values["VNVstat"][2] = -1
else
values["VNVstat"][2] = convtime(reqsec*60)
end
if reqsec < 90 and values["MSGSTAT"][10] == 0 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "VNV ALERT")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
values["MSGSTAT"][10] = 1
if values["VNVpause"] == 1 and get(simspeed) ~= 0 then
set(simspeed, 0)
set(paused, 1)
--sasl.al.playSample(alertl, false)
end

elseif reqsec > 90 then
values["MSGSTAT"][10] = 0
end
else
values["VNVstat"][0] = 2
end
end
if values["VNVstat"][0] == 2 then
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["VNVstat"][1]["types"] and  values["activeWPT"][WPTnum]["ident"] == values["VNVstat"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["VNVstat"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end
WPTnum = WPTnum - 1
if WPTfound == 0 or (tonumber(values["VNVANG"]) < 0 and tonumber(values["VNVSEL"]) > IndALT) or (tonumber(values["VNVANG"]) > 0 and tonumber(values["VNVSEL"]) < IndALT) then
values["VNVstat"][0] = 0
end

local dist = (distanceFPLN(values["activeWPT"], 2, WPTnum, 0)-values["VNVOFFS"])
values["VNVstat"][2] = math.tan(values["VNVANG"]*pi/-180)* dist*6076.11549 +values["VNVSEL"]
end

if (controls["rCRSR"]  == 1 or controls["WPTCRSR"] == 1) and not(lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50) then
gline[7] = string.sub(gline[7], 1, 18)
bline[7] = bline[7] .. "CRSR"
end


--this is the message page
if controls["MSG"] == 1 then
controls["lspage"] = 4
controls["rspage"] = 4
Nav5Comp = {}
--Nav5Comp_Serializer = {}
APT3Comp = {}
--APT3Comp_Serializer = {}
if values["MSGLIST"]["length"] >= 1 then
gline[1] = values["MSGLIST"][1]
if values["MSGLIST"]["length"] >= 2 then
gline[2] = values["MSGLIST"][2]
if values["MSGLIST"]["length"] >= 3 then
gline[3] = values["MSGLIST"][3]
if values["MSGLIST"]["length"] >= 4 then
gline[4] = values["MSGLIST"][4]
if values["MSGLIST"]["length"] >= 5 then
gline[5] = values["MSGLIST"][5]
if values["MSGLIST"]["length"] >= 6 then
gline[6] = values["MSGLIST"][6]
else
gline[6] = ""
end
else
gline[5] = ""
gline[6] = ""
end
else
gline[4] = ""
gline[5] = ""
gline[6] = ""
end
else
gline[3] = ""
gline[4] = ""
gline[5] = ""
gline[6] = ""
end
else
gline[2] = ""
gline[3] = ""
gline[4] = ""
gline[5] = ""
gline[6] = ""
end
else
gline[1] = "NO MESSAGES"
gline[2] = ""
gline[3] = ""
gline[4] = ""
gline[5] = ""
gline[6] = ""
end


--  gline[7] = "      " .. values["GPSmode"]
bline[1] = ""
bline[2] = ""
bline[3] = ""
bline[4] = ""
bline[5] = ""
bline[6] = ""
bline[7] = "              msg"
cagevisible = 1

local modename = get(GPSmode)
if modename == 1 then
if get(APR) == 0 then
modename = "enr-leg"
elseif get(APR) == 1 then
modename = "arm-leg"
elseif get(APR) == 2 then
modename = "apr-leg"
end

elseif modename == 2 then
if get(APR) == 0 then
modename = string.format("enr:%03d", round(values["HSIOBS"]))
elseif get(APR) == 1 then
modename = string.format("arm:%03d", round(values["HSIOBS"]))
end
end
gline[7] = "     |" .. modename .. "    |"
values["scaleline"] = ""
--if we press controls["ENT"], then we go to emergency nearest
if controls["sENT"] == 1 then
controls["MSG"] = 0
nearestlist(0)
rpage = 6
rsubpage[6] = 10
values["APTpage"] = values["APTnearestlist"]
values["APTnearestnum"] = 1
values["APTpage"]["length"] = -1
end
elseif controls["ALT"] == 1 then

values["scaleline"] = ""
controls["lspage"] = 3
controls["rspage"] = 3
Nav5Comp = {}
--Nav5Comp_Serializer = {}
APT3Comp = {}
--APT3Comp_Serializer = {}
cagevisible = 1
if values["rseditstate"] ~= 2 then --fix for unable to move selecton on duplicate wpts in VNAV
gline[1] = " ALTITUDE  |"
if controls["lsknobl"] == -1 then
controls["lsselect"] = controls["lsselect"] - 1
if controls["lsselect"] == -1 then
if values["altalert"] == 0 then
controls["lsselect"] = 3
else
controls["lsselect"] = 4
end
end
controls["lsknobl"] = 0
elseif controls["lsknobl"] == 1 then
controls["lsselect"] = controls["lsselect"] + 1
if values["altalert"] == 0 and controls["lsselect"] == 4 then
controls["lsselect"] = 0
elseif values["altalert"] == 1 and controls["lsselect"] == 5 then
controls["lsselect"] = 0
end
controls["lsknobl"] = 0
elseif controls["lsknobs"] == -1 then
if controls["lsselect"] == 0 then
values["baro"] = values["baro"] -100
elseif controls["lsselect"] == 1 then
local y = 3
if string.len(values["baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["baro"], y, y)) - 1
if x < 1 then x = 10 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
elseif controls["lsselect"] == 2 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["baro"], y, y)) - 1
if x < 1 then x = 10 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
elseif controls["lsselect"] == 3 then
if values["altalert"] == 0 then values["altalert"] = 1 else values["altalert"] = 0 end
values["alertlevel"] = 0
elseif controls["lsselect"] == 4 then
x = string2value(string.sub(values["altwarn"], 1, 1)) - 1
if x < 3 then x = 10 end
values["altwarn"] = replaceChar(values["altwarn"],1,value2string(x))
end
controls["lsknobs"] = 0
elseif controls["lsknobs"] == 1 then
if controls["lsselect"] == 0 then
values["baro"] = values["baro"] + 100
elseif controls["lsselect"] == 1 then
local y = 3
if string.len(values["baro"]) == 3 then y = 2 end
x = string2value(string.sub(values["baro"], y, y)) + 1
if x > 10 then x = 1 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
elseif controls["lsselect"] == 2 then
local y = 4
if string.len(values["baro"]) == 3 then y = 3 end
x = string2value(string.sub(values["baro"], y, y)) + 1
if x > 10 then x = 1 end
values["baro"] = replaceChar(values["baro"],y,value2string(x))
elseif controls["lsselect"] == 3 then
if values["altalert"] == 0 then values["altalert"] = 1 else values["altalert"] = 0 end
values["alertlevel"] = 0
elseif controls["lsselect"] == 4 then
x = string2value(string.sub(values["altwarn"], 1, 1)) + 1
if x > 10 then x = 3 end
values["altwarn"] = replaceChar(values["altwarn"],1,value2string(x))
end
controls["lsknobs"] = 0
end

local baro = 0
if values["barounit"] == 1 then
baro = values["baro"] * 0.0295301
else
baro = values["baro"] / 100
end
--  print(PressALT, string.format("%05d", PressALT))
if values["altalert"] == 0 then
if values["barounit"] == 0 then
gline[2] = string.format("BARO:%s.%s@|",  string.sub(values["baro"], 1, 2), string.sub(values["baro"], 3, 4))
bline[2] = "            "
if controls["lsselect"] == 0 then
bline[2] = string.format("     %s     ",  string.sub(values["baro"], 1, 2))
elseif controls["lsselect"] == 1 then
bline[2] = string.format("        %s  ",  string.sub(values["baro"], 3, 3))
elseif controls["lsselect"] == 2 then
bline[2] = string.format("         %s ",  string.sub(values["baro"], 4, 4))
end
else
gline[2] = string.format("BARO:%sMB|",  makelength(values["baro"], 4, 1))
bline[2] = "            "
if controls["lsselect"] == 0 then
if string.len(values["baro"]) == 4 then
bline[2] = string.format("     %s    ",  string.sub(values["baro"], 1, 2))
else
bline[2] = string.format("      %s    ",  string.sub(values["baro"], 1, 1))
end
elseif controls["lsselect"] == 1 then
if string.len(values["baro"]) == 4 then
bline[2] = string.format("       %s    ",  string.sub(values["baro"], 3, 3))
else
bline[2] = string.format("       %s    ",  string.sub(values["baro"], 2, 2))
end
elseif controls["lsselect"] == 2 then
if string.len(values["baro"]) == 4 then
bline[2] = string.format("        %s   ",  string.sub(values["baro"], 4, 4))
else
bline[2] = string.format("        %s   ",  string.sub(values["baro"], 3, 3))
end
end
end
gline[3] = "ALERT:  OFF|"
if controls["lsselect"] == 3 then
bline[3] = "       #OFF "
else
bline[3] = "            "
end
gline[4] = "           |"
bline[4] = "            "
gline[5] = "           |"
bline[5] = "            "

else
gline[2] = "           |"
if values["barounit"] == 0 then
gline[3] = string.format("BARO:%s.%s@|",  string.sub(values["baro"], 1, 2), string.sub(values["baro"], 3, 4))
bline[3] = "            "
if controls["lsselect"] == 0 then
bline[3] = string.format("     %s     ",  string.sub(values["baro"], 1, 2))
elseif controls["lsselect"] == 1 then
bline[3] = string.format("        %s  ",  string.sub(values["baro"], 3, 3))
elseif controls["lsselect"] == 2 then
bline[3] = string.format("         %s ",  string.sub(values["baro"], 4, 4))
end
else
gline[3] = string.format("BARO:%sMB|",  makelength(values["baro"], 4, 1))
if controls["lsselect"] == 0 then
if string.len(values["baro"]) == 4 then
bline[3] = string.format("     %s    ",  string.sub(values["baro"], 1, 2))
else
bline[3] = string.format("      %s    ",  string.sub(values["baro"], 1, 1))
end
elseif controls["lsselect"] == 1 then
if string.len(values["baro"]) == 4 then
bline[3] = string.format("       %s    ",  string.sub(values["baro"], 3, 3))
else
bline[3] = string.format("       %s    ",  string.sub(values["baro"], 2, 2))
end
elseif controls["lsselect"] == 2 then
if string.len(values["baro"]) == 4 then
bline[3] = string.format("        %s   ",  string.sub(values["baro"], 4, 4))
else
bline[3] = string.format("        %s   ",  string.sub(values["baro"], 3, 3))
end
else
bline[3] = "            "
end

end
if controls["lsselect"] == 3 then
bline[4] = "       ON#= "
else
bline[4] = "            "
end

gline[4] = "ALERT: ON =|"
gline[5] = "WARN:&" .. values["altwarn"] .. "ft|"
if controls["lsselect"] == 4 then
bline[5] = highlightchar(gline[5], 7)
else
bline[5] = "            "
end
end
end --fix end here

gline[6] = "           |"
bline[1] = "            "
bline[6] = "            "
if values["VNVstat"][1]["ident"] == "     " then
values["VNVstat"][0] = -1
end

if values["VNVstat"][0] == -1 then
--0 inactiv, 1 armed, 2 active
values["VNVstat"][0] = 0
values["VNVstat"][2] = -1
if values["activeWPT"]["length"] >= 2 then
values["VNVstat"][1] = values["activeWPT"][values["activeWPT"]["length"]]
--values["VNVstat"][2] = values["activeWPT"]["length"]
else
values["VNVstat"][1] = {}
values["VNVstat"][1]["ident"] = "     "
end
end

--  if controls["rCRSR"]  == 1 then

if controls["rsCRSRchar"] == 0 and controls["rsselect"] ~= 1 then
-- if controls["lselect"] == 0 then
-- controls["lCRSRchar"] = 5
-- else
controls["rsCRSRchar"] = 1
--  end
end
if controls["rsselect"] == 1 then
if controls["sENT"] == 1 and values["rseditstate"] == 3 then
--we check if the enter is legal
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["rseditvalue"][1]["types"] and values["activeWPT"][WPTnum]["ident"] == values["rseditvalue"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["rseditvalue"][1]["lat"] then

WPTfound = 1
end
WPTnum = WPTnum + 1
end
if WPTfound == 0 then
values["statusmessage"] = "INVALID#VNV"
values["statustimer"] = 5
controls["sENT"] = 0
end
end
values["VNVstat"][1] = editvalue(1, "rs", values["VNVstat"][1])
if values["rsreturn"] == 1 and values["VNVstat"][0] == 2 then
values["VNVstat"][0] = 1
end
elseif  controls["rsselect"] > 3 then  controls["rsselect"] = 2 end --fix for rsselect returnig 11 after waypoint change if duplicate was found

if controls["rsknobl"] == -1 then
controls["rsCRSRchar"] = controls["rsCRSRchar"] - 1
if controls["rsselect"] == 0 and controls["rsCRSRchar"] < 1 then
controls["rsselect"] = 3
controls["rsCRSRchar"] = 2
if values["VNVstat"][0] == 0 then
values["VNVstat"][0] = 1
end
elseif controls["rsselect"] == 2 and controls["rsCRSRchar"] < 1 then
controls["rsselect"] = 1
controls["rsCRSRchar"] = 0
elseif controls["rsselect"] == 3 and controls["rsCRSRchar"] < 1 then
controls["rsselect"] = 2
controls["rsCRSRchar"] = 2
end
controls["rsknobl"] = 0
elseif controls["rsknobl"] == 1 then
controls["rsCRSRchar"] = controls["rsCRSRchar"] + 1
if controls["rsselect"] == 0 and controls["rsCRSRchar"] > 5 then
controls["rsselect"] = 1
controls["rsCRSRchar"] = 0
elseif controls["rsselect"] == 2 and controls["rsCRSRchar"] > 2 then
controls["rsselect"] = 3
controls["rsCRSRchar"] = 1
if values["VNVstat"][0] == 0 then
values["VNVstat"][0] = 1
end
elseif controls["rsselect"] == 3 and controls["rsCRSRchar"] > 2 then
controls["rsselect"] = 0
controls["rsCRSRchar"] = 1
end
controls["rsknobl"] = 0
elseif controls["rsknobs"] == -1 then
if controls["rsselect"] == 0 then
x = string2value(string.sub(values["VNVSEL"], controls["rsCRSRchar"], controls["rsCRSRchar"])) - 1
if x < 1 then x = 10 end
values["VNVSEL"] = replaceChar(values["VNVSEL"],controls["rsCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
values["alertlevel"] = 0
elseif controls["rsselect"] == 2 then
x = string2value(string.sub(values["VNVOFFS"], controls["rsCRSRchar"], controls["rsCRSRchar"])) - 1
if x < 1 then x = 10 end
values["VNVOFFS"] = replaceChar(values["VNVOFFS"],controls["rsCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["rsselect"] == 3 then
local y = controls["rsCRSRchar"]
if y == 1 then y = 2
elseif y == 2 then y = 4 end
x = string2value(string.sub(values["VNVANG"], y, y)) - 1
if x < 1 then x = 10 end
values["VNVANG"] = replaceChar(values["VNVANG"],y,value2string(x))
values["VNVstat"][0] = 1
end
controls["rsknobs"] = 0
elseif controls["rsknobs"] == 1 then
if controls["rsselect"] == 0 then
x = string2value(string.sub(values["VNVSEL"], controls["rsCRSRchar"], controls["rsCRSRchar"])) + 1
if x > 10 then x = 1 end
values["VNVSEL"] = replaceChar(values["VNVSEL"],controls["rsCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
values["alertlevel"] = 0
elseif controls["rsselect"] == 2 then
x = string2value(string.sub(values["VNVOFFS"], controls["rsCRSRchar"], controls["rsCRSRchar"])) + 1
if x > 10 then x = 1 end
values["VNVOFFS"] = replaceChar(values["VNVOFFS"],controls["rsCRSRchar"],value2string(x))
values["VNVstat"][0] = 0
elseif controls["rsselect"] == 3 then
local y = controls["rsCRSRchar"]
if y == 1 then y = 2
elseif y == 2 then y = 4 end
x = string2value(string.sub(values["VNVANG"], y, y)) + 1
if x > 10 then x = 1 end
values["VNVANG"] = replaceChar(values["VNVANG"],y,value2string(x))
values["VNVstat"][0] = 1
end
controls["rsknobs"] = 0
end
--end

if values["VNVstat"][0] == 0 then
gline[1] = gline[1].. "VNV INACTV"
local WPTnum = 2
local WPTfound = 0
while WPTnum <= values["activeWPT"]["length"] and WPTfound == 0 do
if values["activeWPT"][WPTnum]["types"] == values["VNVstat"][1]["types"] and  values["activeWPT"][WPTnum]["ident"] == values["VNVstat"][1]["ident"] and  values["activeWPT"][WPTnum]["lat"] == values["VNVstat"][1]["lat"] then
WPTfound = 1
end
WPTnum = WPTnum + 1
end
WPTnum = WPTnum - 1
if WPTnum == 1 then
values["VNVANG"] = " 0.0"
else
values["VNVANG"] = makelength(float(-math.atan((IndALT-values["VNVSEL"])*0.000164578834/(distanceFPLN(values["activeWPT"], 2, WPTnum, 0)-values["VNVOFFS"]))/pi * 180, 1), 4, 1)
end
elseif values["VNVstat"][0] == 1 then
if  values["VNVstat"][2] == -1 then
gline[1] = gline[1].. "VNV ARMED"
else
gline[1] = gline[1].. "VNV IN" .. values["VNVstat"][2]
end
elseif values["VNVstat"][0] == 2 then
gline[1] = gline[1].. "VNV" ..  makelength(round(values["VNVstat"][2], -2), 6, 1)  .. "ft"
end

gline[3] = gline[3] .. string.format("IND %05dft", IndALT)

gline[4] = gline[4] .. "SEL:" .. values["VNVSEL"] .. "ft"
if controls["rsselect"] == 0 then
bline[4] =  bline[4] .. highlightchar("    " .. values["VNVSEL"], controls["rsCRSRchar"]+4)
end



if controls["rsselect"] == 1 then
gline[5] = gline[5] .. values["rsgstring"] .. ":-" .. values["VNVOFFS"] .. "nm"
bline[5] = bline[5] .. values["rsbstring"]
else
gline[5] = gline[5] .. values["VNVstat"][1]["ident"] .. ":-" .. values["VNVOFFS"] .. "nm"
if controls["rsselect"] == 2 then
bline[5] =  bline[5] .. highlightchar("       " .. values["VNVOFFS"], controls["rsCRSRchar"]+7)
end
end




gline[6] = gline[6] .. "ANGLE:" .. values["VNVANG"] .. "*"
if controls["rsselect"] == 3 then
if controls["rsCRSRchar"] == 1 then
bline[6] =  bline[6] .. highlightchar("      " .. values["VNVANG"], 8)
else
bline[6] =  bline[6] .. highlightchar("      " .. values["VNVANG"], 10)
end
end


local modename = get(GPSmode)
if modename == 1 then
if get(APR) == 0 then
modename = "enr-leg"
elseif get(APR) == 1 then
modename = "arm-leg"
elseif get(APR) == 2 then
modename = "apr-leg"
end

elseif modename == 2 then
if get(APR) == 0 then
modename = string.format("enr:%03d", round(values["HSIOBS"]))
elseif get(APR) == 1 then
modename = string.format("arm:%03d", round(values["HSIOBS"]))
end
end
gline[7] = "     |" .. modename .. "    |"


bline[7] = " CRSR             CRSR"
if values["statustimer"] > 0 then
values["statustimer"] = values["statustimer"] - passed
bline[7] = string.sub(bline[7], 1, 6) ..  values["statusmessage"] .. string.sub(bline[7], 18)
end
elseif controls["DCT"] >= 1 then

controls["lspage"] = 1
if values["DCTload"] == 0 then
if lpage == 3 and lsubpage[3] == 0 and controls["lselect"] >= 2 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = {}
local WPTselect = controls["lselect"]-1
if WPTselect > FPlan[0]["SIDstart"] then
WPTselect = WPTselect - 1
end
if WPTselect > FPlan[0]["STARstart"] then
WPTselect = WPTselect - 1
end
if WPTselect > FPlan[0]["APPstart"] then
WPTselect = WPTselect - 1
end
if WPTselect > FPlan[0]["APPMAP"] then
WPTselect = WPTselect - 1
end
values["lseditvalue"][1] = table.copy(FPlan[0][WPTselect])
values["lseditvalue"]["length"] = 1
values["lseditstate"] = 3
--add Sup5 here!
elseif lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 and controls["SCAN"] == 1 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = {}
values["lseditvalue"][1] = table.copy(values["NAV5DCT"])
values["lseditstate"] = 3
elseif rpage == 6 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = table.copy(values["APTpage"])
values["lseditstate"] = 3
elseif rpage == 7 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = table.copy(values["VORpage"])
values["lseditstate"] = 3
elseif rpage == 8 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = table.copy(values["NDBpage"])
values["lseditstate"] = 3
elseif rpage == 9 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = table.copy(values["INTpage"])
values["lseditstate"] = 3
elseif rpage == 10 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = table.copy(values["SUPpage"])
values["lseditstate"] = 3
-- elseif values["direct"]["ident"] ~= "     " then
elseif values["activeWPT"]["length"] >= 2 then
controls["lsCRSRchar"] = 5
values["lseditvalue"] = {}
if values["activeWPT"]["active"] == FPlan[0]["APPMAP"] - 1 then
values["lseditvalue"][1] = table.copy(values["activeWPT"][3])
else
values["lseditvalue"][1] = table.copy(values["activeWPT"][2])
end
values["lseditvalue"]["length"] = 1
values["lseditstate"] = 3
end
values["DCTload"] = 1
end
controls["lsCRSR"] = 1
controls["lsselect"] = 0

if controls["sCLR"] == 1 and controls["lsCRSRchar"] == 0 then
controls["DCT"] = 0
controls["lsCRSR"] = 0
elseif controls["sCLR"] == 1 then
controls["lsCRSRchar"] = 0
values["direct"] = {}
values["direct"]["ident"] = ""
values["lseditstate"] = 0
controls["sCLR"] = 0
elseif controls["sENT"] == 1 and controls["lsCRSRchar"] == 0 and get(GPSmode) == 1 then
-- join the FPLN again
activateFPLN0()
controls["lsCRSR"] = 0
controls["DCT"] = 0
controls["sENT"] = 0
if not lpage == 4 and lsubpage[4] == 10 then
rpage = 5
rsubpage[5] = 10
end
end


values["direct"] = editvalue(1, "ls", values["direct"])
if values["lsreturn"] == 1 then
--here active is modified
-- I first need to check if the WPT is in the FPlan, else create a new active from scratch.
-- This decides if we are in direct mode or not
--num doesn't have to be 1 if active is not the first WPT in FPlan 0.
if get(GPSmode) == 1 then
if get(APR) == 2 then
set(APR, 1)
values["scalefactor"] = 1
end
local new = {}
--the ident tells it's direct
new["ident"] = "    $"
new["lat"] = values["GPSlat"]
new["lon"] = values["GPSlon"]
-- local num = FPlan[0]["length"] - values["activeWPT"]["length"] + 1
-- while num <= FPlan[0]["length"] do
-- if FPlan[0][num]["types"] == values["direct"]["types"] and FPlan[0][num]["numi"] == values["direct"]["numi"] then
local found = 0
values["activeWPT"] = table.copy(FPlan[0])
values["activeWPT"]["active"] = 0
while found == 0 do
if values["activeWPT"]["length"] > 0 then
values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
if values["activeWPT"][1]["types"] == values["direct"]["types"] and  values["activeWPT"][1]["ident"] == values["direct"]["ident"] and  values["activeWPT"][1]["lat"] == values["direct"]["lat"] then
table.insert(values["activeWPT"], 1, new)
values["activeWPT"]["length"] = values["activeWPT"]["length"] + 1
--values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
found = 1
--if this is the case, we can rewrite active
else
--if the waypoint is not the same, we remove it
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = values["activeWPT"]["length"] - 1
end
else
values["activeWPT"]["length"] = 2
table.insert(values["activeWPT"], 1, new)
table.insert(values["activeWPT"], 2, values["direct"])
values["activeWPT"]["active"] = 0
found = 1
end
end
else
values["activeWPT"][2] = values["direct"]
values["activeWPT"]["active"] = 0
local num = 1
while num < FPlan[0]["length"] do
if FPlan[0][num]["types"] == values["direct"]["types"] and FPlan[0][num]["ident"] == values["direct"]["ident"] and  FPlan[0][num]["lat"] == values["direct"]["lat"] then
values["activeWPT"]["active"] = num
break end
num = num + 1
end
if controls["DCT"] == 1 then
if values["HSIinterf"] ~= 1 then
values["HSIOBS"] = course(values["GPSlat"], values["GPSlon"], values["direct"]["lat"], values["direct"]["lon"])
set(HSIOBS, values["HSIOBS"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["HSIOBS"])
end
else
values["statusmessage"] = string.format("$=#CRS#%03d#", round(course(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])))
values["statustimer"] = 5
end
end
end
-- values["DTK"] = course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
controls["lsCRSR"] = 0
controls["DCT"] = 0
if not (lpage == 4 and lsubpage[4] == 10) then
rpage = 5
rsubpage[5] = 10
end
end

if controls["DCT"] == 1 then
gline[1] = "DIRECT TO: |" .. string.sub(gline[1], 13)
else
gline[1] = "ACTIVATE:  |" .. string.sub(gline[1], 13)
end

gline[2] = "           |".. string.sub(gline[2], 13)

gline[3] = "  " .. values["lsgstring"] .. "    |".. string.sub(gline[3], 13)
bline[3] = "  " .. values["lsbstring"] .. "     ".. string.sub(bline[3], 13)


gline[4] = "           |".. string.sub(gline[4], 13)
gline[5] = "           |".. string.sub(gline[5], 13)
gline[6] = "           |".. string.sub(gline[6], 13)
gline[7] = "     ".. string.sub(gline[7], 6)

bline[1] = "            ".. string.sub(bline[1], 13)
bline[2] = "            ".. string.sub(bline[2], 13)
bline[4] = "            ".. string.sub(bline[4], 13)
bline[5] = "            ".. string.sub(bline[5], 13)
bline[6] = "            ".. string.sub(bline[6], 13)
-- bline[7] = " CRSR".. string.sub(bline[7], 6)
values["scaleline"] = ""
else
values["DCTload"] = 0
end

--this is the display for the multiple WPT page.
--The handler is in editvalue
if  controls["lspage"] == 2 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
gline[1] = string.format("%s   %s|", makelength(values["multipleWPT"][1]["ident"], 5, 0), makelength(values["multipleWPT"]["length"], 3, 1)).. string.sub(gline[1], 13)
gline[2] = "  TYPE AREA|".. string.sub(gline[2], 13)
--local num = math.ceil(controls["lsselect"]/4)
--local num = controls["sview"]
if controls["sview"] <= values["multipleWPT"]["length"] then
gline[3] = string.format("%s %s %s?|", makelength(controls["sview"], 2, 1), type2typename(values["multipleWPT"][controls["sview"]]["types"]), ICAOtocountry(values["multipleWPT"][controls["sview"]]["country"])).. string.sub(gline[3], 13)
else
gline[3] = "           |".. string.sub(gline[3], 13)
end
if controls["sview"]+1 <= values["multipleWPT"]["length"] then
gline[4] = string.format("%s %s %s?|", makelength(controls["sview"]+1, 2, 1), type2typename(values["multipleWPT"][controls["sview"]+1]["types"]), ICAOtocountry(values["multipleWPT"][controls["sview"]+1]["country"])).. string.sub(gline[4], 13)
else
gline[4] = "           |".. string.sub(gline[4], 13)
end

if controls["sview"]+2 <= values["multipleWPT"]["length"] then
gline[5] = string.format("%s %s %s?|", makelength(controls["sview"]+2, 2, 1), type2typename(values["multipleWPT"][controls["sview"]+2]["types"]), ICAOtocountry(values["multipleWPT"][controls["sview"]+2]["country"])).. string.sub(gline[5], 13)
else
gline[5] = "           |".. string.sub(gline[5], 13)
end
if controls["sview"]+3 <= values["multipleWPT"]["length"] then
gline[6] = string.format("%s %s %s?|", makelength(controls["sview"]+3, 2, 1), type2typename(values["multipleWPT"][controls["sview"]+3]["types"]), ICAOtocountry(values["multipleWPT"][controls["sview"]+3]["country"])).. string.sub(gline[6], 13)
else
gline[6] = "           |".. string.sub(gline[6], 13)
end

gline[7] = "     ".. string.sub(gline[7], 6)

bline[1] = "            ".. string.sub(bline[1], 13)
bline[2] = "            ".. string.sub(bline[2], 13)
if controls["multiselect"] == controls["sview"] and values["flash"] == 1 then
bline[3] = string.gsub(string.sub(gline[3], 1, 11), " ", "#") .. " ".. string.sub(bline[3], 13)
else
bline[3] = "            ".. string.sub(bline[3], 13)
end
if controls["multiselect"] == controls["sview"]+1 and values["flash"] == 1 then
bline[4] = string.gsub(string.sub(gline[4], 1, 11), " ", "#") .. " ".. string.sub(bline[4], 13)
else
bline[4] = "            ".. string.sub(bline[4], 13)
end
if controls["multiselect"] == controls["sview"]+2 and values["flash"] == 1 then
bline[5] = string.gsub(string.sub(gline[5], 1, 11), " ", "#") .. " ".. string.sub(bline[5], 13)
else
bline[5] = "            ".. string.sub(bline[5], 13)
end
if controls["multiselect"] == controls["sview"]+3 and values["flash"] == 1 then
bline[6] = string.gsub(string.sub(gline[6], 1, 11), " ", "#") .. " ".. string.sub(bline[6], 13)
else
bline[6] = "            ".. string.sub(bline[6], 13)
end

end

if controls["rspage"] == 1 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
APT3Comp = {}
--APT3Comp_Serializer = {}
values["wptsubpage"] = WPTpage(values["wpteditvalue"][1]["types"], 2, values["wptsubpage"])
end

if values["MSGENT"] == 1 or values["MSGENT"] == 3 then
gline[7] = replaceChar(gline[7],15,"m")
gline[7] = replaceChar(gline[7],16,"s")
gline[7] = replaceChar(gline[7],17,"g")
end


if values["flash"] == 1 and values["MSGENT"] == 2 then
gline[7] = replaceChar(gline[7],15,"e")
gline[7] = replaceChar(gline[7],16,"n")
gline[7] = replaceChar(gline[7],17,"t")
end
if values["flash"] == 1 then
if values["statustimer"] <= 0 and values["MSGENT"] == 1 then
bline[7] = replaceChar(bline[7],15,"m")
bline[7] = replaceChar(bline[7],16,"s")
bline[7] = replaceChar(bline[7],17,"g")
end
end


--we move one page

if controls["lknobl"] == -1 then
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
lpage = lpage - 1
controls["lselect"] = 0
controls["lCRSRchar"] = 0
--controls["lCRSR"] = 0
controls["lview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
elseif controls["lknobl"] == 1 then
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
lpage = lpage + 1
controls["lselect"] = 0
controls["lCRSRchar"] = 0
--controls["lCRSR"] = 0
controls["lview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
end

if lpage > 8 and lpage < 100 then
lpage = 1
elseif lpage < 1 and lpage > -3 then
lpage = 8
end


values["lreturn"] = 0
values["rreturn"] = 0
values["lsreturn"] = 0
values["rsreturn"] = 0


if controls["rknobl"] == -1 then
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
rpage = rpage - 1
controls["rselect"] = 0
controls["rCRSRchar"] = 0
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
values["REFVOR"] = nil
--  controls["rCRSR"] = 0
controls["rview"] = values["activeWPT"]["active"]
controls["SIDSTARview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
elseif controls["rknobl"] == 1 then
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
rpage = rpage + 1
controls["rselect"] = 0
controls["rCRSRchar"] = 0
values["INTref"] = {}
values["INTref"]["ident"] = "_____"
values["REFVOR"] = nil
--  controls["rCRSR"] = 0
controls["rview"] = values["activeWPT"]["active"]
controls["SIDSTARview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
end



if controls["lCRSR"] == 0 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
controls["lview"] = 0
end
if controls["rCRSR"] == 0 then
controls["rselect"] = 0
controls["rCRSRchar"] = 0
controls["rselect"] = 0
--  controls["rview"] = 0
end




if rpage > 10 then
rpage = 1
elseif rpage < 1 and rpage > -3 then
rpage = 10
end
if lpage > 0 then
if controls["lknobs"] == -1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
--controls["lCRSR"] = 0
controls["lview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
lsubpage[lpage] = lsubpage[lpage] - 10
if lpage == 4 and lsubpage[4] == 0 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
elseif controls["lknobs"] == 1 then
controls["lselect"] = 0
controls["lCRSRchar"] = 0
--controls["lCRSR"] = 0
controls["lview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
lsubpage[lpage] = lsubpage[lpage] + 10
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
end
end



if lsubpage[1] < 0 then lsubpage[1] = 60
elseif lsubpage[1] > 60 then lsubpage[1] = 0 end


if lsubpage[2] < 10 then lsubpage[2] = 20
elseif lsubpage[2] > 20 then lsubpage[2] = 10 end

if lsubpage[3] < 0 then lsubpage[3] = 250
elseif lsubpage[3] > 250 then lsubpage[3] = 0 end

if lsubpage[4] < 10 then lsubpage[4] = 50
elseif lsubpage[4] > 50 then lsubpage[4] = 10 end


if lsubpage[5] < 10 then lsubpage[5] = 70
elseif lsubpage[5] > 70 then lsubpage[5] = 10 end

if lsubpage[6] < 10 then lsubpage[6] = 50
elseif lsubpage[6] > 50 then lsubpage[6] = 10 end

if lsubpage[7] < 0 then lsubpage[7] = 110
elseif lsubpage[7] > 110 then lsubpage[7] = 0 end

if lsubpage[8] < 10 then lsubpage[8] = 100
elseif lsubpage[8] > 100 then lsubpage[8] = 10 end



if rpage > 0 then
if controls["rknobs"] == -1 then
controls["rselect"] = 0
controls["rCRSRchar"] = 0
values["REFVOR"] = nil
--  controls["rCRSR"] = 0
--  controls["rview"] = values["active"]
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
rsubpage[rpage] = rsubpage[rpage] - 10
controls["SIDSTARview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 0 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
elseif controls["rknobs"] == 1 then
controls["rselect"] = 0
controls["rCRSRchar"] = 0
values["REFVOR"] = nil
--  controls["rCRSR"] = 0
--  controls["rview"] = values["active"]
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
rsubpage[rpage] = rsubpage[rpage] + 10
controls["SIDSTARview"] = 0
if lpage == 4 and lsubpage[4] == 50 and rpage == 5 and rsubpage[5] == 50 then
Nav5Comp = {}
--Nav5Comp_Serializer = {}
end
end
end

if rsubpage[1] < 10 then rsubpage[1] = 20
elseif rsubpage[1] > 20 then rsubpage[1] = 10 end
rsubpage[2] = 10


-- if rpage == 3 and controls["rview"] > 0 then
-- if FPlan[0][controls["rview"]]["types"] == 0 then
if rsubpage[3] < 10 then rsubpage[3] = 80
elseif rsubpage[3] > 80 then rsubpage[3] = 10 end
-- else
-- rsubpage[3] = 10
-- end
-- end

if values["wptsubpage"] < 10 then values["wptsubpage"] = 80
elseif values["wptsubpage"] > 80 then values["wptsubpage"] = 10 end



if rsubpage[4] < 10 then rsubpage[4] = 40
elseif rsubpage[4] > 40 then rsubpage[4] = 10 end
if rsubpage[5] < 10 then rsubpage[5] = 50
elseif rsubpage[5] > 50 then rsubpage[5] = 10 end
if rsubpage[6] < 10 then rsubpage[6] = 80
elseif rsubpage[6] > 80 then rsubpage[6] = 10 end
-- rsubpage[7] = 10
-- rsubpage[8] = 10
-- rsubpage[9] = 10
-- rsubpage[10] = 10

controls["ENT"] = 0
controls["CLR"] = 0
--controls["MSG"] = 0
--controls["DCT"] = 0
values["MSGENT"] = 0

controls["lknobl"] = 0
controls["rknobl"] = 0

controls["rknobs"] = 0
controls["lknobs"] = 0


--limit brighness
if brt < 0.1 then
brt = 0.1
elseif brt > 1 then
brt = 1
end



values["fuelused1"] = values["fuelused1"] + get(FuelFlow1) * passed
values["fuelused2"] = values["fuelused2"] + get(FuelFlow2) * passed
values["fuelused3"] = values["fuelused3"] + get(FuelFlow3) * passed
values["fuelused4"] = values["fuelused4"] + get(FuelFlow4) * passed
values["fuelused5"] = values["fuelused5"] + get(FuelFlow5) * passed
values["fuelused6"] = values["fuelused6"] + get(FuelFlow6) * passed
values["fuelused7"] = values["fuelused7"] + get(FuelFlow7) * passed
values["fuelused8"] = values["fuelused8"] + get(FuelFlow8) * passed



local timediff = 0

if get(power) == 1 then
values["GPSHobbs"] = values["GPSHobbs"] + passed

if values["timerstart"] == 0 then
if values["GPSSPD"]*1.94384449 > 30 then
if not values["DT4DEP"] then
values["DT4DEP"] = {}
values["DT4DEP"]["minute"] = values["time"]["minute"]
values["DT4DEP"]["hour"] = values["time"]["hour"]
end
values["flightimer"] = values["flightimer"] + passed
end
else
if not values["DT4DEP"] then
values["DT4DEP"] = {}
values["DT4DEP"]["minute"] = values["time"]["minute"]
values["DT4DEP"]["hour"] = values["time"]["hour"]
end
values["flightimer"] = values["flightimer"] + passed
end


--here we calculate the GPS satellites

--we acquire a new satellite
--are we looking for the first satellite?
if values["GPSnum"] < 8 then
if values["date"]["year"] ~= tonumber(os.date("%y")) then
timediff = 1000
else
local time1 = (((monthstodays(values["date"]["month"], values["date"]["days"])*24+values["time"]["hour"])*60)+values["time"]["minute"])*60 + values["time"]["second"]
local time2 = (((monthstodays(get(monthin),                        get(dayin))*24+get(hourin)           )*60)+get(minutein)           )*60 + get(secondin)

timediff = time1 - time2
end


local GPSdist = distance(values["initlat"], values["initlon"], get(LATin), get(LONin))
if GPSdist > 50 then
--12 to 15
--if position (100km) is off, then time == 12
values["GPStime"] = values["GPStime"] + passed / math.random(12, 15)
--elseif timediff < -120 or timediff > 120 then
elseif timediff < -600 or timediff > 600 then

--time (real: 20sek)are off, then time == 6
--3.75 to 4.5
values["GPStime"] = values["GPStime"] + passed / math.random(12, 15)
else
-- else we need only 1 to two minutes for everything
--1 to 2
values["GPStime"] = values["GPStime"] + passed / math.random(1, 2)
end
if get(ismaster)==1 then
values["GPStime"]=get(gps_time)
--values["GPSnum"]=get(n_sats)
end
--values["realGPS"]:average 15 (you can change it for testing!) seconds per sat
if values["GPStime"] > values["realGPS"] * (values["GPSnum"] + 1) then
--when the time is over, we add another satellite
values["GPSnum"] = values["GPSnum"] + 1
local GPSnum = 1
while GPSnum <= (values["GPSnum"]) do
if values["GPSSAT"][values["GPSnum"]] == nil then
values["GPSSAT"][values["GPSnum"]] = {}
values["GPSSAT"][values["GPSnum"]][0] = " "
values["GPSSAT"][values["GPSnum"]][1] = math.floor(math.random(2, 32))
--  we need to make sure this number is unique
local found = 1
while found == 1 do
local num2 = 0
found = 0
while num2 <= 10 do
if num2 ~= values["GPSnum"] and values["GPSSAT"][num2] ~= nil then
--  print(values["GPSSAT"][values["GPSnum"]][1], values["GPSSAT"][num2][1])
if values["GPSSAT"][values["GPSnum"]][1] == values["GPSSAT"][num2][1] then
values["GPSSAT"][values["GPSnum"]][1] = math.floor(math.random(2, 32))
found = 1
end
end
num2 = num2 + 1
end
end
values["GPSSAT"][values["GPSnum"]][2] = " "
values["GPSSAT"][values["GPSnum"]][7] = math.random(35, 50)
values["GPSSAT"][values["GPSnum"]][5] = math.random(-10800, 10800)
values["GPSSAT"][values["GPSnum"]][6] = math.random(0, 90)
values["GPSSAT"][values["GPSnum"]][4] = -(10/12960000)*values["GPSSAT"][values["GPSnum"]][5]^2+values["GPSSAT"][values["GPSnum"]][6]
values["GPSSAT"][values["GPSnum"]][3] = -(10/(2332800*(100000/(values["GPSSAT"][values["GPSnum"]][7]^2))))*values["GPSSAT"][values["GPSnum"]][5]^2+values["GPSSAT"][values["GPSnum"]][7]
table.sort(values["GPSSAT"],
function(a, b)
a = a[1]
b = b[1]
return a<b
end)
end
GPSnum = GPSnum + 1
end
end
if get(ismaster)~=1 then
-- if values["GPSnum"] then
-- set(n_sats,values["GPSnum"])
-- end
if values["GPStime"] then
set(gps_time,values["GPStime"])
end
end
end
local GPSnum = 1
--We update the GPS satellites
while GPSnum <= 8 do
if values["GPSSAT"][GPSnum] ~= nil then
if values["GPSSAT"][GPSnum][4] < 5 then
table.remove(values["GPSSAT"], GPSnum)
values["GPSnum"] = values["GPSnum"] - 1
else
values["GPSSAT"][GPSnum][5] =  values["GPSSAT"][GPSnum][5] + passed
values["GPSSAT"][GPSnum][4] = -(10/12960000)*values["GPSSAT"][GPSnum][5]^2+values["GPSSAT"][GPSnum][6]
values["GPSSAT"][GPSnum][3] = -(10/(2332800*(100000/(values["GPSSAT"][GPSnum][7]^2))))*values["GPSSAT"][GPSnum][5]^2+values["GPSSAT"][GPSnum][7]

end
end
GPSnum = GPSnum + 1
end
end
--  print(FPlan[0][values["active"]-1]["lat"])
--  values["tofrom"] = 0
if values["primary"] == 0 then
set(overrideGPS, 0)
set(overrideNAV1, 0)
end




--if we get a GPS signal, the date and time are updated automatically, else we have to calculate it
if values["GPSnum"] >= 1 then
--Calculations are done only every 1 seconds, as per C-129
if values["CALCtimer"] >= 1/values["GPSrate"] then
if timediff > 600 or timediff < -600 then
--values["MSGSTAT"][9] = 1
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "TO GPS TIME")
table.insert(values["MSGLIST"], 1, "SYSTEM TIME UPDATED")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 3
end


values["time"]["second"] = get(secondin)
values["time"]["minute"] = get(minutein)
values["time"]["hour"] = get(hourin)
values["date"]["days"] = get(dayin)
values["date"]["month"] = get(monthin)
values["date"]["year"] = tonumber(os.date("%y"))
if values["GPSnum"] >= 4 then
-- if values["activeWPT"]["length"] == 0 and FPlan[0]["length"] >= 2 and FPlan[0][1]["ident"] ~= "     " and FPlan[0][2]["ident"] ~= "     " and values["activeWPT"][1]["ident"] ~= "    $" then

-- if FPlan[0]["length"] < 2 then
-- values["activeWPT"] = FPlan[0]
-- end
if values["MSGSTAT"][6] == 0 then
if distance(values["GPSlat"], values["GPSlon"], get(LATin), get(LONin)) > 3 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, "LAST POSITION BY > 3NM")
table.insert(values["MSGLIST"], 1, "POSITION DIFFERS FROM")
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 3
end
values["MSGSTAT"][6] = 1
end

values["GPSlat"] = get(LATin)
values["GPSlon"] = get(LONin)
values["GPSSPD"] = get(SPEEDin)
--if values["GPSSPD"] > 1 then
values["GPSTRK"] = (get(HPATHin) + get(MAGVARin)) % 360
-- if values["GPSTRK"] > 360 then values["GPSTRK"] = values["GPSTRK"] - 360
-- elseif values["GPSTRK"] < 0 then values["GPSTRK"] = values["GPSTRK"] + 360 end
--end
if values["activeWPT"]["length"] == 0 and FPlan[0]["length"] >= 2 and FPlan[0][1]["ident"] ~= "     " and FPlan[0][2]["ident"] ~= "     " then
activateFPLN0()
end
--##############CAUTION, THIS IS EXPERIMENTAL!!
-- if values["CALC3timer"] > 3 then

-- values["GPSTRK"] = course(values["oldlat"], values["oldlon"], values["GPSlat"], values["GPSlon"])
-- values["GPSSPD"] = distance(values["oldlat"], values["oldlon"], values["GPSlat"], values["GPSlon"])/values["CALC3timer"]*3600*0.514444444
-- values["oldlat"] = values["GPSlat"]
-- values["oldlon"] = values["GPSlon"]
-- end

if values["activeWPT"]["length"] >= 2 then
if values["activeWPT"][1]["types"] == values["activeWPT"][2]["types"] and  values["activeWPT"][1]["ident"] == values["activeWPT"][2]["ident"] and values["activeWPT"][1]["lat"] == values["activeWPT"][2]["lat"] then
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = values["activeWPT"]["length"] - 1
values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
if values["activeWPT"]["length"] == 1 then
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = 0
values["activeWPT"]["active"] = 0
end
end
if values["activeWPT"]["length"] >= 2 then
end
--Be warned, everything here is done every frame!
-- values["XTK"] = asin(sin(distance(FPlan[0][values["active"]-1]["lat"], FPlan[0][values["active"]-1]["lon"], values["GPSlat"], values["GPSlon"])*pi/10800)*sin(course(FPlan[0][values["active"]-1]["lat"], FPlan[0][values["active"]-1]["lon"], values["GPSlat"], values["GPSlon"])*pi/180-courseFPLN(FPlan[0], values["active"])*pi/180))*10800/pi
local bearing = 0
local diff = 0

if values["activeWPT"] and values["activeWPT"][2] then
    bearing = course(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
    diff = bearing - values["HSIOBS"]
    if get(GPSmode) == 1 then
        diff = bearing - values["DTK"]
    end
end
--For VORs, we use the published magvar.

values["tofrom"] = 1
if diff < -180 then diff = diff + 360
elseif diff > 180 then diff = diff - 360 end
if (diff < -90 or diff > 90 ) and get(GPSmode) == 2 then
values["tofrom"] = 2
end
--  values["XTK"] = (distance(values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"], values["GPSlat"], values["GPSlon"]))*sin((diff)*pi/180)
--remember OBS
values["dist"] = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])

values["bearing"] = bearing



if get(GPSmode) == 1 then
values["XTK"] =asin(sin(distance(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["GPSlat"], values["GPSlon"])*pi/10800)*sin((course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["GPSlat"], values["GPSlon"])-course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]))*pi/180))/pi*-10800
--DTK doesn't change over great distances, therefore I need to calculate an interm point on the route to recalculate the DTK from that point.
local deslat = 0
local deslon = 0

local f1 = -values["dist"] / distance(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])+1

deslat, deslon = intermediat(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"], f1)
values["DTK"] = course(deslat, deslon, values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
-- gline[5] = diff .. "        " .. values["XTK"]
else
values["XTK"] =asin(sin(distance(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["GPSlat"], values["GPSlon"])*pi/10800)*sin((course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["GPSlat"], values["GPSlon"])-course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"]))*pi/180))/pi*-10800
end




if values["primary"] == 1 then

if get(HSIsource) == 2 then
if get(overrideNAV1) == 0 and values["NAVSYNC"] == 1 then
set(overrideNAV1, 1)
elseif get(overrideNAV1) == 0 and values["NAVSYNC"] == 0 then
set(overrideNAV1, 0)
end
local hdef = values["XTK"]--*get(GPSnmPdot)

if hdef < -2.5 then hdef = -2.5
elseif hdef > 2.5 then hdef = 2.5 end
if values["HSIinterf"] == 2 and get(GPSmode) == 1 then
set(HSIOBS, values["DTK"])
if values["NAVSYNC"] == 1 then
set(NAVOBS, values["DTK"])
end
end
if values["HSIinterf"] >= 1 then
set(GPShdefout, hdef)
set(GPSCourse, values["DTK"])
set(GPSRelBear, diff)
set(GPSfromtoout, values["tofrom"])
set(GPSDMEout, values["dist"])
if values["NAVSYNC"] == 1 then
set(NAVDMEout, values["dist"])
set(NAVhdefout, hdef)
set(NAVfromtoout, values["tofrom"])
end
local gspeed = values["GPSSPD"]* 1.94384449
set(GPSDMESPDout, gspeed)
local ete = (values["dist"] / gspeed)*60
if ete>99 then ete=99 end
set(GPSDMETIMEout, ete)
else
set(GPSfromtoout, 0)
set(GPShdefout, 0)
set(GPSvdefout, 0)
if values["NAVSYNC"] == 1 then
set(NAVhdefout, 0)
set(NAVvdefout, 0)
end
end
if values["VNVstat"][0] == 2 and values["VNVgs"] == 1 then
local InALT = PressALT - (145442.2*(1- (baro/29.92126)^0.190261)), -2
local vnvang = (InALT - values["VNVstat"][2]) / 100 --PressALT
--print(InALT)
--print(vnvang)
if vnvang>2.5 then vnvang=2.5
elseif vnvang<-2.5 then vnvang=-2.5
end
set(GPSvdefout, vnvang)
if values["NAVSYNC"] == 1 then
set(NAVvdefout, vnvang)
end
else
set(GPSvdefout, 0)
if values["NAVSYNC"] == 1 then
set(NAVvdefout, 0)
end
end
else
if get(overrideNAV1) == 1 then
set(overrideNAV1, 0)
end
end
end
--here we calculate when we switch to the next waypoint (Only leg!)
--It also work with DCT if the next WPT is a FPlan WPT
--turn anti off:
--print(values["activeWPT"][3])


--if pos == FPlan[0]["APPMAP"] - 1 then

if values["turnanticipation"] == 0 or values["activeWPT"]["length"] == 2 or values["activeWPT"]["active"] == FPlan[0]["APPMAP"] - 1 or values["activeWPT"][2]["flyo"] == 1 then
if values["dist"] / (values["GPSSPD"]* 1.94384449)*3600 <= 36 and get(WPTalert) == 0 then
set(WPTalert, 1)
values["WPTalertdist"] = values["dist"]
end
if get(WPTalert) == 1 then
--if the new distance is greater than the old distance and we are warning, the we switch to the next WPT!
--It should not switch when we are at the last WPT.
if values["dist"] > values["WPTalertdist"] then
set(WPTalert, 0)
values["WPTalertdist"] = 0
if values["activeWPT"]["length"] > 2 and values["activeWPT"]["active"] ~= FPlan[0]["APPMAP"] - 1 then
--remove the first WPT
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = values["activeWPT"]["length"] - 1
values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
if values["activeWPT"]["length"] == 1 then
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = 0
values["activeWPT"]["active"] = 0
else
values["dist"] = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
local CRS = course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
local CRS2 = CRS - values["DTK"]
if CRS2 < -180 then CRS2 = CRS2 + 360
elseif CRS2 > 180 then CRS2 = CRS2 - 360 end

if (CRS2 < -5 or CRS2 > 5) and values["HSIinterf"] < 2 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, string.format("ADJ NAV IND CRS TO %03d*", round(CRS)))
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
end
end
end
end
end
values["WPTalertdist"] = values["dist"]

else
--Do I need to calculate a position (LAT/LON) prior to WPT2 for turning or can I simply subtract the turn distance??
--print(turnanti(bearing), values["dist"])
local dist2 = values["dist"] - turnanti(bearing)
-- print(values["dist"],  turnanti(), dist2, dist2 / (values["GPSSPD"]* 1.94384449)*3600, values["WPTalertdist"], get(WPTalert), values["activeWPT"][2]["ident"])
if dist2 / (values["GPSSPD"]* 1.94384449)*3600 <= 20 and get(WPTalert) == 0 then
set(WPTalert, 1)
values["WPTalertdist"] = dist2
end
if get(WPTalert) == 1 then
--if the new distance is greater than the old distance and we are warning, the we switch to the next WPT!
if dist2 > values["WPTalertdist"] or dist2 < 0 then
table.remove(values["activeWPT"], 1)
values["activeWPT"]["length"] = values["activeWPT"]["length"] - 1
values["activeWPT"]["active"] = values["activeWPT"]["active"] + 1
set(WPTalert, 0)
values["dist"] = distance(values["GPSlat"], values["GPSlon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
local CRS = course(values["activeWPT"][1]["lat"], values["activeWPT"][1]["lon"], values["activeWPT"][2]["lat"], values["activeWPT"][2]["lon"])
local CRS2 = CRS - values["DTK"]
if CRS2 < -180 then CRS2 = CRS2 + 360
elseif CRS2 > 180 then CRS2 = CRS2 - 360 end

if (CRS2 < -5 or CRS2 > 5) and values["HSIinterf"] < 2 then
table.insert(values["MSGLIST"], 1, "")
table.insert(values["MSGLIST"], 1, string.format("ADJ NAV IND CRS TO %03d*", round(CRS)))
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] + 2
end
-- values["DTK"] = CRS
values["WPTalertdist"] = 0
end
end
values["WPTalertdist"] = dist2
end
else
if values["primary"] == 1 and get(overrideGPS) == 1 then
set(GPSfromtoout, 0)
set(GPShdefout, 0)
if values["NAVSYNC"] == 1 then
set(NAVfromtoout, 0)
set(NAVhdefout, 0)
end
-- if get(NavState) == 2 then
-- set(APState, 256)
-- end
end
end
end
end
else
if values["primary"] == 1 and get(overrideGPS) == 1 then
set(GPSfromtoout, 0)
set(GPShdefout, 0)
if values["NAVSYNC"] == 1 then
set(NAVfromtoout, 0)
set(NAVhdefout, 0)
end
end

values["GPSlat"] = values["initlat"]
values["GPSlon"] = values["initlon"]
values["time"]["second"] = values["time"]["second"] + passed
if values["time"]["second"] > 60 then
values["time"]["second"] = values["time"]["second"] - 60
values["time"]["minute"] = values["time"]["minute"] + 1
end
if values["time"]["minute"] > 60 then
values["time"]["minute"] = values["time"]["minute"] - 60
values["time"]["hour"] = values["time"]["hour"] +1
end
if values["time"]["hour"] > 23 then
values["time"]["hour"] = values["time"]["hour"] - 24
values["date"]["days"] = values["date"]["days"] + 1
end
if values["date"]["days"] > values["monthdays"][values["date"]["month"]] then
values["date"]["days"] = 1
values["date"]["month"] = values["date"]["month"] + 1
end
if values["date"]["month"] > 12 then
values["date"]["month"] = 1
values["date"]["year"] = values["date"]["year"] + 1
end
end

if rpage == -4 and get(overrideGPS) == 1 then
set(GPShdefout, 1.25)
set(GPSfromtoout, 2)
if values["NAVSYNC"] == 1 then
set(NAVfromtoout, 2)
set(NAVhdefout, 1,25)
end
end
--gline[1] = values["GPStime"]


values["flashtimer"] = values["flashtimer"] + passed
if values["flashtimer"] > 0.5 then
if values["flash"] == 0 then
values["flash"] = 1
set(Flash, 1)
else
values["flash"] = 0
set(Flash, 0)
end
values["flashtimer"] = 0
end

if values["CALC3timer"] > 3 then
values["CALC3timer"] = 0
end
if values["CALC1timer"] > 1 then
values["CALC1timer"] = 0
end
if values["CALCtimer"] >= 1/values["GPSrate"] then
values["CALCtimer"] = 0
end
values["CALCtimer"] = values["CALCtimer"] + passed
values["CALC1timer"] = values["CALC1timer"] + passed

values["CALC3timer"] = values["CALC3timer"] + passed
--gline[1] = scale(get(testdat), 1, 0)
if values["GPSnum"] < 4 then
fail=1
else
fail=0
end
local MASTER = get(ismaster) ~= 1
-- Multicrew hook: keep role detection separate from the core KLN logic.
KLN90_SC.begin_frame(not MASTER)
set(kln_fail,fail)
-- Multicrew hook: publish the text state after the original panel logic settles.
KLN90_SC.publish_text(gline, bline, values["scaleline"], cagevisible)
KLN90_SC.publish_mode(lpage, lsubpage[lpage] or 0, rpage, rsubpage[rpage] or 0)
-- set results for Tu154 ABSU
if get(power) == 1 then
set(kln_course, values["DTK"])
set(kln_dev, values["XTK"])
set(kln_flag, values["tofrom"])
else
set(kln_course, 0)
set(kln_dev, 0)
set(kln_flag, 0)
set(WPTalert, 0)
set(MSGalert, 0)
end
-- else
-- gline[1]=get(sc_gline_1)
-- gline[2]=get(sc_gline_2)
-- gline[3]=get(sc_gline_3)
-- gline[4]=get(sc_gline_4)
-- gline[5]=get(sc_gline_5)
-- gline[6]=get(sc_gline_6)
-- gline[7]=get(sc_gline_7)

-- bline[1]=get(sc_bline_1)
-- bline[2]=get(sc_bline_2)
-- bline[3]=get(sc_bline_3)
-- bline[4]=get(sc_bline_4)
-- bline[5]=get(sc_bline_5)
-- bline[6]=get(sc_bline_6)
-- bline[7]=get(sc_bline_7)
-- cagevisible=get(sc_cage)
--end

end --update


local KLNpowerc_command = sasl.createCommand("custom/KLN90/Toggle_Power_Switch", "Power switch ON/OFF")
function KLNpowerc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if power_knob  == 1 then
power_knob = 0
else power_knob = 1
end
set(power_but, power_knob);
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*300
gain_R=gain_R*300
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(power_click_L,gain_L*dist)
setSampleGain(power_click_R,gain_R*dist)
playSample(power_click_L, false)
playSample(power_click_R, false)


--sasl.al.playSample(power_click, false)
end
return false
end
sasl.registerCommandHandler(KLNpowerc_command, 0, KLNpowerc_handler)

local KLNincbrtc_command = sasl.createCommand("custom/KLN90/Increase_Brightness", "Increase Display Brightness")
function KLNincbrtc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
brt = brt + 0.1
if(brt<=1.0) then set(display_brughtness, brt)
end
end

return false
end
sasl.registerCommandHandler(KLNincbrtc_command, 0, KLNincbrtc_handler)

local KLNdecbrtc_command = sasl.createCommand("custom/KLN90/Decrease_Brightness", "Decrease Display Brightness")
function KLNdecbrtc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
brt = brt - 0.1
if(brt>0) then set(display_brughtness, brt);
end
end

return false
end

sasl.registerCommandHandler(KLNdecbrtc_command, 0, KLNdecbrtc_handler)
local KLNLCRSRc_command = sasl.createCommand("custom/KLN90/Toggle_Left_Cursor", "Toggle Left Cursor")
function KLNLCRSRc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if controls["lspage"] == 0 then
if controls["lCRSR"]  == 1 then	controls["lCRSR"] = 0
else controls["lCRSR"] = 1
end
end
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
end
return false
end

sasl.registerCommandHandler(KLNLCRSRc_command, 0, KLNLCRSRc_handler)
local KLNRCRSRc_command = sasl.createCommand("custom/KLN90/Toggle_Right_Cursor", "Toggle Right Cursor")
function KLNRCRSRc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if controls["rspage"] == 0 then
if controls["rCRSR"]  == 1 then	controls["rCRSR"] = 0
else controls["rCRSR"] = 1
end
end
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
end
return false
end

sasl.registerCommandHandler(KLNRCRSRc_command, 0, KLNRCRSRc_handler)
local function sc_block_local_kln_input()
return get(ismaster) == 1
end
local KLNSCANc_command = sasl.createCommand("custom/KLN90/Toggle_Scan_Mode", "Toggle Scan Mode")
function KLNSCANc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
if controls["SCAN"]  == 1 then controls["SCAN"] = 0
else controls["SCAN"] = 1

end
set(scan_mode, controls["SCAN"]);
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*500
gain_R=gain_R*500
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(pull_click_L,gain_L*dist)
setSampleGain(pull_click_R,gain_R*dist)
playSample(pull_click_L, false)
playSample(pull_click_R, false)
--sasl.al.playSample(pull_click, false)
end
return false
end

sasl.registerCommandHandler(KLNSCANc_command, 0, KLNSCANc_handler)
local KLNlknoblccc_command = sasl.createCommand("custom/KLN90/Turn_Left_Large_Knob_Counterclockwise", "Turn left large knob counterclockwise")
function KLNlknoblccc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["lknobl"] = -1

controls["blknobsangle"] = controls["blknobsangle"] - 1
set(B_L_Angle_3D , controls["blknobsangle"])
-- if controls["SCAN"]  == 1 then controls["SCAN"] = 0
-- else controls["SCAN"] = 1

-- end
-- set(scan_mode, controls["SCAN"]);
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end
sasl.registerCommandHandler(KLNlknoblccc_command, 0, KLNlknoblccc_handler)

local KLNlknobsccc_command = sasl.createCommand("custom/KLN90/Turn_Left_Small_Knob_Counterclockwise", "Turn left small knob counterclockwise")
function KLNlknobsccc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["lknobs"] = -1
controls["lknobsangle"] = controls["lknobsangle"] - 1
set(L_Angle_3D , controls["lknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end

sasl.registerCommandHandler(KLNlknobsccc_command, 0, KLNlknobsccc_handler)
local KLNlknobscc_command = sasl.createCommand("custom/KLN90/Turn_Left_Small_Knob_Clockwise", "Turn left small knob clockwise")
function KLNlknobscc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["lknobs"] = 1
controls["lknobsangle"] = controls["lknobsangle"] + 1
set(L_Angle_3D , controls["lknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end

sasl.registerCommandHandler(KLNlknobscc_command, 0, KLNlknobscc_handler)
local KLNlknoblcc_command = sasl.createCommand("custom/KLN90/Turn_Left_Large_Knob_Clockwise", "Turn left large knob clockwise")
function KLNlknoblcc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["lknobl"] = 1

controls["blknobsangle"] = controls["blknobsangle"] + 1
set(B_L_Angle_3D , controls["blknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end


sasl.registerCommandHandler(KLNlknoblcc_command, 0, KLNlknoblcc_handler)
local KLNMSGc_command = sasl.createCommand("custom/KLN90/Toggle_Message_Page", "Toggle MSG button")
function KLNMSGc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
if rpage > 0 then
if controls["MSG"]  == 1 then
if values["MSGLIST"]["length"] > 6 then
table.remove(values["MSGLIST"], 1)
table.remove(values["MSGLIST"], 1)
table.remove(values["MSGLIST"], 1)
table.remove(values["MSGLIST"], 1)
table.remove(values["MSGLIST"], 1)
table.remove(values["MSGLIST"], 1)
values["MSGLIST"]["length"] = values["MSGLIST"]["length"] - 6
else
controls["MSG"] = 0
values["MSGLIST"] = {}
values["MSGLIST"]["length"] = 0
end
else controls["MSG"] = 1
end
end
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
reset_timer=0
--sasl.al.playSample(button_click, false)
end
return false
end


sasl.registerCommandHandler(KLNMSGc_command, 0, KLNMSGc_handler)
local KLNALTc_command = sasl.createCommand("custom/KLN90/Toggle_Altitude_Page", "Toggle ALT button")
function KLNALTc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
if controls["ALT"] == 0 then
controls["ALT"] = 1
else
controls["ALT"] = 0
end
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
end
return false
end


sasl.registerCommandHandler(KLNALTc_command, 0, KLNALTc_handler)
local KLNDTOc_command = sasl.createCommand("custom/KLN90/Toggle_Direct_To_Page", "Toggle Direct To button")
function KLNDTOc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
if get(GPSmode) == 2 and controls["DCT"] == 1 then
controls["DCT"] = 2
else
controls["DCT"] = 1
end
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
end
return false
end


sasl.registerCommandHandler(KLNDTOc_command, 0, KLNDTOc_handler)
local KLNCLRc_command = sasl.createCommand("custom/KLN90/Press_CLR", "Toggle CLR button")
function KLNCLRc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["CLR"] = 1
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
end
return false
end


sasl.registerCommandHandler(KLNCLRc_command, 0, KLNCLRc_handler)
local KLNENTc_command = sasl.createCommand("custom/KLN90/Press_ENT", "Toggle ENT button")
function KLNENTc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["ENT"] = 1
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
elseif phase==1 then
if sc_block_local_kln_input() then
return false
end
reset_timer=reset_timer+get(frame_time)
if reset_timer>3 then
lpage=3
rpage=5
reset_timer=0
end
end
return false
end


sasl.registerCommandHandler(KLNENTc_command, 0, KLNENTc_handler)
local KLNrknoblccc_command = sasl.createCommand("custom/KLN90/Turn_Right_Large_Knob_Counterclockwise", "Turn right large knob counterclockwise")
function KLNrknoblccc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["rknobl"] = -1
controls["brknobsangle"] = controls["brknobsangle"] - 1
set(B_R_Angle_3D , controls["brknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end


sasl.registerCommandHandler(KLNrknoblccc_command, 0, KLNrknoblccc_handler)
local KLNrknobsccc_command = sasl.createCommand("custom/KLN90/Turn_Right_Small_Knob_Counterclockwise", "Turn right small knob counterclockwise")
function KLNrknobsccc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["rknobs"] = -1
controls["rknobsangle"] = controls["rknobsangle"] - 1
set(R_Angle_3D , controls["rknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end


sasl.registerCommandHandler(KLNrknobsccc_command, 0, KLNrknobsccc_handler)
local KLNrknobscc_command = sasl.createCommand("custom/KLN90/Turn_Right_Small_Knob_Clockwise", "Turn right small knob clockwise")
function KLNrknobscc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["rknobs"] = 1
controls["rknobsangle"] = controls["rknobsangle"] + 1
set(R_Angle_3D , controls["rknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end


sasl.registerCommandHandler(KLNrknobscc_command, 0, KLNrknobscc_handler)
local KLNrknoblcc_command = sasl.createCommand("custom/KLN90/Turn_Right_Large_Knob_Clockwise", "Turn right large knob clockwise")
function KLNrknoblcc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if sc_block_local_kln_input() then
return false
end
controls["rknobl"] = 1
controls["brknobsangle"] = controls["brknobsangle"] + 1
set(B_R_Angle_3D , controls["brknobsangle"])
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*60
gain_R=gain_R*60
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(rotary_click_L,gain_L*dist)
setSampleGain(rotary_click_R,gain_R*dist)
playSample(rotary_click_L, false)
playSample(rotary_click_R, false)
--sasl.al.playSample(rotary_click, false)
end
return false
end
sasl.registerCommandHandler(KLNrknoblcc_command, 0, KLNrknoblcc_handler)


MD41NAVGPSc_command = sasl.createCommand("custom/KLN90/MD_41_Toggle_NAV-GPS", "MD41 Toggle NAV/GPS button")
function MD41NAVGPSc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if get(HSIsource) ~= 0  then
set(HSIsource, 0)
set(overrideNAV1, 0)
else
set(HSIsource, 2)
if values["NAVSYNC"] == 1 then
set(overrideNAV1, 1)
end
end
sasl.al.playSample(md41_click, false)
end
return false
end
sasl.registerCommandHandler(MD41NAVGPSc_command, 0, MD41NAVGPSc_handler)

local MD41APRc_command = sasl.createCommand("custom/KLN90/MD_41_Toggle_Approach", "MD41 Toggle Approach button")
function MD41APRc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if get(APR) == 0  then
set(APR, 1)
else
set(APR, 0)
end
sasl.al.playSample(md41_click, false)
end
return false
end
sasl.registerCommandHandler(MD41APRc_command, 0, MD41APRc_handler)

local MD41OBSc_command = sasl.createCommand("custom/KLN90/MD_41_Toggle_OBS-LEG", "MD41 Toggle OBS/LEG button")
function MD41OBSc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
if get(OBS) == 1  then
set(OBSreq, 2)
else
set(OBSreq, 1)
end
sasl.al.playSample(md41_click, false)
end
return false
end
sasl.registerCommandHandler(MD41OBSc_command, 0, MD41OBSc_handler)

local MD41testc_command = sasl.createCommand("custom/KLN90/MD_41_Test_Lamps", "MD41 Toggle lamp test button")
function MD41testc_handler(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
if 0 == phase then
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
set(MD41test, 1)
elseif 2 == phase then
set(MD41test, 0)
local z_pos=get(pilot_Z)
local x_pos=get(pilot_X)
local plt_hdg=get(pilot_head)
local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
gain_L=gain_L*100
gain_R=gain_R*100
local dist=1
if z_pos-panel_z~=0 then
dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
end
setSampleGain(button_click_L,gain_L*dist)
setSampleGain(button_click_R,gain_R*dist)
playSample(button_click_L, false)
playSample(button_click_R, false)
--sasl.al.playSample(button_click, false)
end
return false
end
sasl.registerCommandHandler(MD41testc_command, 0, MD41testc_handler)





components2 = {
rectangle2 {
position = {0, 0, size[1], size[2]},
color = {0,0.85,0.05},
brt2 = function()
if get(power) == 0 then
return 0
else
return brt / 10
end
end,
},

texture {
position = { 0, 0, size[1], size[2]},
image = get(glass),
},
}

Nav5Comp = {}
--Nav5Comp_Serializer = {}
APT3Comp = {}
--APT3Comp_Serializer = {}


function draw()
local master_state = kln_sc_local_screen_state()
local is_slave = get(ismaster) == 1
local screen_state = is_slave and KLN90_SC.get_slave_screen_state(master_state) or master_state
local preview_state = KLN90_SC.get_preview_state(master_state)
if draw3d == true then
	sasl.gl.drawRectangle(0, 0, size[1], size[2], {0 ,0 ,0 ,1})
	KLN90_RENDER.draw_screen({
		screen_state = screen_state,
		font = font,
		fontb = fontb,
		fontl = fontl,
		color = {brt*power_timer, brt*power_timer, brt*power_timer},
		background_color = {0, 0, 0, 1},
		cage = cage,
		pixel_image = get(mappixel),
		image_resolver = resolveMapImage,
		label_renderer = renderCapturedString,
	})
	KLN90_SC.draw_debug_preview({
		size = size,
		font = font,
		fontb = fontb,
		fontl = fontl,
		cage = cage,
		screen_state = preview_state,
		frame_color = {1, 0.75, 0.1, 1},
		screen_color = {brt*power_timer, brt*power_timer, brt*power_timer},
		pixel_image = get(mappixel),
		image_resolver = resolveMapImage,
		label_renderer = renderCapturedString,
	})

	drawAll(components2)

	---------------------------draws 2D panel display---------------------------

	if KLN90B:isVisible () or KLN90B_DISPLAY:isVisible () then

	------------------------------------------------------------------------------------
	sasl.gl.getTargetTextureData(display , currentPosition[1], currentPosition[2], currentPosition[3], currentPosition[4])
	end
	else
	sasl.gl.setRenderTarget(display , true)

	if KLN90B:isVisible () or KLN90B_DISPLAY:isVisible () then
		sasl.gl.drawRectangle(0, 0, size[1], size[2], {0 ,0 ,0 ,1})

		KLN90_RENDER.draw_screen({
			screen_state = screen_state,
			font = font,
			fontb = fontb,
			fontl = fontl,
			color = {brt*power_timer, brt*power_timer, brt*power_timer},
			background_color = {0, 0, 0, 1},
			cage = cage,
			pixel_image = get(mappixel),
			image_resolver = resolveMapImage,
			label_renderer = renderCapturedString,
		})

		KLN90_SC.draw_debug_preview({
			size = size,
			font = font,
			fontb = fontb,
			fontl = fontl,
			cage = cage,
			screen_state = preview_state,
			frame_color = {1, 0.75, 0.1, 1},
			screen_color = {brt*power_timer, brt*power_timer, brt*power_timer, 1},
			pixel_image = get(mappixel),
			image_resolver = resolveMapImage,
			label_renderer = renderCapturedString,
		})

		drawAll(components2)
	end

	sasl.gl.restoreRenderTarget()

	end
end
