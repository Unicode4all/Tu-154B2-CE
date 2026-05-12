-- this is power counters logic


-- busses currents. results
defineProperty("bus27_amp_left", globalPropertyf("tu154b2/custom/elec/bus27_amp_left")) -- ток сети 27
defineProperty("bus27_amp_right", globalPropertyf("tu154b2/custom/elec/bus27_amp_right")) -- ток сети 27

defineProperty("bus36_amp_left", globalPropertyf("tu154b2/custom/elec/bus36_amp_left")) -- ток левой сети 36
defineProperty("bus36_amp_right", globalPropertyf("tu154b2/custom/elec/bus36_amp_right")) -- ток правой сети 36
defineProperty("bus36_amp_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_amp_pts250_1")) -- ток ПТС250 сети 36 1
defineProperty("bus36_amp_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_amp_pts250_2")) -- ток ПТС250 сети 36 2

defineProperty("bus115_1_amp_A", globalPropertyf("tu154b2/custom/elec/bus115_1_amp_A"))
defineProperty("bus115_2_amp_A", globalPropertyf("tu154b2/custom/elec/bus115_2_amp_A"))
defineProperty("bus115_3_amp_A", globalPropertyf("tu154b2/custom/elec/bus115_3_amp_A"))

defineProperty("bus115_1_amp_B", globalPropertyf("tu154b2/custom/elec/bus115_1_amp_B"))
defineProperty("bus115_2_amp_B", globalPropertyf("tu154b2/custom/elec/bus115_2_amp_B"))
defineProperty("bus115_3_amp_B", globalPropertyf("tu154b2/custom/elec/bus115_3_amp_B"))

defineProperty("bus115_1_amp_C", globalPropertyf("tu154b2/custom/elec/bus115_1_amp_C"))
defineProperty("bus115_2_amp_C", globalPropertyf("tu154b2/custom/elec/bus115_2_amp_C"))
defineProperty("bus115_3_amp_C", globalPropertyf("tu154b2/custom/elec/bus115_3_amp_C"))

--defineProperty("bus115_em_1_amp", globalPropertyf("tu154b2/custom/elec/bus115_em_1_amp"))
--defineProperty("bus115_em_2_amp", globalPropertyf("tu154b2/custom/elec/bus115_em_2_amp"))






-- sources
-- bus 27v
defineProperty("bat_amp_cc_1", globalPropertyf("tu154b2/custom/elec/bat_cc_1")) -- ток заряда батареи
defineProperty("bat_amp_cc_2", globalPropertyf("tu154b2/custom/elec/bat_cc_2")) -- ток заряда батареи
defineProperty("bat_amp_cc_3", globalPropertyf("tu154b2/custom/elec/bat_cc_3")) -- ток заряда батареи
defineProperty("bat_amp_cc_4", globalPropertyf("tu154b2/custom/elec/bat_cc_4")) -- ток заряда батареи
defineProperty("cockpit_light_cc_left", globalPropertyf("tu154b2/custom/elec/cockpit_light_cc_left"))-- нагрузка на левую сеть от освещения в кабине
defineProperty("cockpit_light_cc_right", globalPropertyf("tu154b2/custom/elec/cockpit_light_cc_right"))-- нагрузка на правую сеть от освещения в кабине
defineProperty("ext_light_cc_left", globalPropertyf("tu154b2/custom/elec/ext_light_cc_left"))-- нагрузка на левую сеть
defineProperty("ext_light_cc_right", globalPropertyf("tu154b2/custom/elec/ext_light_cc_right"))-- нагрузка на правую сеть
defineProperty("apu_start_cc", globalPropertyf("tu154b2/custom/elec/apu_start_cc")) -- потребление тока стартером ВСУ
defineProperty("fuel_pumps_27_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_27_cc")) -- нагрузка на сеть 27в от топливных насосо

defineProperty("ai_27_L_cc", globalPropertyf("tu154b2/custom/antiice/ai_27_L_cc")) -- нагрузка на сеть
defineProperty("ai_27_R_cc", globalPropertyf("tu154b2/custom/antiice/ai_27_R_cc")) -- нагрузка на сеть

defineProperty("ctr_27_L_cc", globalPropertyf("tu154b2/custom/control/ctr_27_L_cc")) -- нагрузка на сеть
defineProperty("ctr_27_R_cc", globalPropertyf("tu154b2/custom/control/ctr_27_R_cc")) -- нагрузка на сеть

defineProperty("msrp_27_L_cc", globalPropertyf("tu154b2/custom/msrp/msrp_27_L_cc")) -- нагрузка на сеть
defineProperty("msrp_27_R_cc", globalPropertyf("tu154b2/custom/msrp/msrp_27_R_cc")) -- нагрузка на сеть

defineProperty("svs27_cc", globalPropertyf("tu154b2/custom/svs/power_27cc")) -- потребление тока

defineProperty("auasp_pow27_cc", globalPropertyf("tu154b2/custom/elec/auasp_pow27_cc"))

defineProperty("rv_сс_1", globalPropertyf("tu154b2/custom/elec/rv5_left_cc"))  -- RV
defineProperty("rv_сс_2", globalPropertyf("tu154b2/custom/elec/rv5_right_cc"))  -- RV

defineProperty("taws_cc", globalPropertyf("tu154b2/custom/taws/taws_cc"))

defineProperty("fire_sys_cc", globalPropertyf("tu154b2/custom/fire/fire_sys_cc")) -- потребление тока пожарной системой

defineProperty("vhf1_cc", globalPropertyf("tu154b2/custom/radio/vhf1_cc"))
defineProperty("vhf2_cc", globalPropertyf("tu154b2/custom/radio/vhf2_cc"))

defineProperty("km5_1_cc", globalPropertyf("tu154b2/custom/tks/km5_1_cc")) -- потребление тока КМ5
defineProperty("km5_2_cc", globalPropertyf("tu154b2/custom/tks/km5_1_cc")) -- потребление тока КМ5

defineProperty("ga_1_cc", globalPropertyf("tu154b2/custom/tks/ga_1_cc")) -- потребление тока ГА осн
defineProperty("ga_2_cc", globalPropertyf("tu154b2/custom/tks/ga_2_cc")) -- потребление тока ГА контр
defineProperty("ga_heat_cc", globalPropertyf("tu154b2/custom/tks/ga_heat_cc")) -- потребление тока
defineProperty("tks_cc", globalPropertyf("tu154b2/custom/tks/tks_cc"))
defineProperty("bgmk_1_cc", globalPropertyf("tu154b2/custom/tks/bgmk_1_cc")) -- потребление тока БГМК
defineProperty("bgmk_2_cc", globalPropertyf("tu154b2/custom/tks/bgmk_2_cc")) -- потребление тока БГМК

defineProperty("ush_cc", globalPropertyf("tu154b2/custom/tks/ush_cc")) -- потребление тока УШ

defineProperty("agr_cc", globalPropertyf("tu154b2/custom/ahz/agr_cc")) -- ток
defineProperty("ark15_L_cc", globalPropertyf("tu154b2/custom/radio/ark15_L_cc")) -- потребление тока АРК
defineProperty("ark15_R_cc", globalPropertyf("tu154b2/custom/radio/ark15_R_cc")) -- потребление тока АРК

defineProperty("diss_cc", globalPropertyf("tu154b2/custom/nvu/diss_cc")) -- потребление от ДИСС
defineProperty("radar_cc", globalPropertyf("tu154b2/custom/radio/radar_cc")) -- потребление тока от РЛС Гроза
defineProperty("rsbn_cc", globalPropertyf("tu154b2/custom/radio/rsbn_cc")) -- потребление тока от РСБН


-- bus 36v
defineProperty("ctr_36L_cc", globalPropertyf("tu154b2/custom/control/ctr_36L_cc")) -- нагрузка на сеть
defineProperty("ctr_36R_cc", globalPropertyf("tu154b2/custom/control/ctr_36R_cc")) -- нагрузка на сеть

defineProperty("svs36_cc", globalPropertyf("tu154b2/custom/svs/power_36cc")) -- потребление тока
defineProperty("absu_power_cc", globalPropertyf("tu154b2/custom/absu_power_cc")) -- потребление тока АБСУ
absu_power_27 = globalPropertyi("tu154b2/custom/absu_power_27")

defineProperty("pkp_left_power_cc", globalPropertyf("tu154b2/custom/bkk/pkp_left_power_cc")) -- отребление тока ПКП
defineProperty("pkp_right_power_cc", globalPropertyf("tu154b2/custom/bkk/pkp_right_power_cc")) -- отребление тока ПКП
defineProperty("mgv_ctr_power_cc", globalPropertyf("tu154b2/custom/bkk/mgv_ctr_power_cc")) -- отребление тока ПКП

defineProperty("absu_at_power_cc", globalPropertyf("tu154b2/custom/absu_at_power_cc")) -- потребление тока АБСУ
defineProperty("nvu_cc", globalPropertyf("tu154b2/custom/nvu/nvu_cc")) -- потребление тока НВУ

defineProperty("nav1_pow_cc", globalPropertyf("tu154b2/custom/radio/nav1_pow_cc")) -- потребление тока от КурсМП
defineProperty("nav2_pow_cc", globalPropertyf("tu154b2/custom/radio/nav2_pow_cc")) -- потребление тока от КурсМП


-- bus 115v
defineProperty("vu1_amp", globalPropertyf("tu154b2/custom/elec/vu1_amp")) -- работа ВУ
defineProperty("vu2_amp", globalPropertyf("tu154b2/custom/elec/vu2_amp")) -- работа ВУ
defineProperty("vu3_amp", globalPropertyf("tu154b2/custom/elec/vu_res_amp")) -- работа ВУ
defineProperty("cockpit_light_cc_115", globalPropertyf("tu154b2/custom/elec/cockpit_light_cc_115"))-- нагрузка на сеть 115 от освещения в кабине
defineProperty("fuel_pumps_115_1_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_115_1_cc")) -- нагрузка на сеть 1 от топливных насосов
defineProperty("fuel_pumps_115_3_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_115_3_cc")) -- нагрузка на сеть 3 от топливных насосов
defineProperty("gs_pump_2_cc", globalPropertyf("tu154b2/custom/hydro/gs_pump_2_cc")) -- ток насосной станции
defineProperty("gs_pump_3_cc", globalPropertyf("tu154b2/custom/hydro/gs_pump_3_cc")) -- ток насосной станции

defineProperty("ai_115_1_cc", globalPropertyf("tu154b2/custom/antiice/ai_115_1_cc")) -- нагрузка на сеть
defineProperty("ai_115_2_cc_A", globalPropertyf("tu154b2/custom/antiice/ai_115_2_cc_A")) -- нагрузка на сеть
defineProperty("ai_115_2_cc_B", globalPropertyf("tu154b2/custom/antiice/ai_115_2_cc_B")) -- нагрузка на сеть
defineProperty("ai_115_2_cc_C", globalPropertyf("tu154b2/custom/antiice/ai_115_2_cc_C")) -- нагрузка на сеть
defineProperty("ai_115_3_cc", globalPropertyf("tu154b2/custom/antiice/ai_115_3_cc")) -- нагрузка на сеть

defineProperty("ctr_115_1_cc", globalPropertyf("tu154b2/custom/control/ctr_115_1_cc")) -- нагрузка на сеть
defineProperty("ctr_115_3_cc", globalPropertyf("tu154b2/custom/control/ctr_115_3_cc")) -- нагрузка на сеть

defineProperty("svs115_cc", globalPropertyf("tu154b2/custom/svs/power_115cc")) -- потребление тока

defineProperty("auasp_pow115_cc", globalPropertyf("tu154b2/custom/elec/auasp_pow115_cc"))

defineProperty("window_heat_1", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_1")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_2", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_2")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_3", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_3")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно

defineProperty("sim_beacon", globalPropertyf("sim/cockpit2/switches/beacon_on")) -- beacon lights

defineProperty("tcas", globalPropertyi("tu154b2/custom/switchers/ovhd/tcas_on"))
defineProperty("tcas_xpdr", globalPropertyi("tu154b2/custom/switchers/ovhd/tra_67_on"))

defineProperty("micron_1_on", globalPropertyi("tu154b2/custom/switchers/ovhd/micron_1_on"))  -- микрон 1
defineProperty("micron_2_on", globalPropertyi("tu154b2/custom/switchers/ovhd/micron_2_on"))  -- микрон 2
defineProperty("spu_on", globalPropertyi("tu154b2/custom/switchers/ovhd/spu_on"))  -- СПУ
defineProperty("sd75_1_on", globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_1_on"))  -- СД75 1
defineProperty("sd75_2_on", globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_2_on"))  -- СД75 2
defineProperty("ovhd_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/transponder_mode"))

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

--defineProperty("uns_1", globalPropertyi("tu154b2/custom/uns1_on"))
--defineProperty("uns_2", globalPropertyi("tu154b2/custom/uns2_on"))
defineProperty("mfi_1", globalPropertyi("sim/custom/kontur/left_power"))
defineProperty("mfi_2", globalPropertyi("sim/custom/kontur/right_power"))
defineProperty("ubs_1", globalPropertyi("sim/custom/ubs/left_power"))
defineProperty("ubs_2", globalPropertyi("sim/custom/ubs/right_power"))
defineProperty("absu_speed_prepare", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_prepare")) -- подготовка
defineProperty("gps_power", globalPropertyi("sim/cockpit2/radios/actuators/gps_power"))
defineProperty("wx_pow", globalPropertyi("sim/custom/kontur/weather_sys"))

defineProperty("gear_fan", globalPropertyi("tu154b2/custom/switchers/eng/gear_fan"))

defineProperty("pts1", globalPropertyi("tu154b2/custom/elec/bus36_pts1_work"))
defineProperty("pts2", globalPropertyi("tu154b2/custom/elec/bus36_pts2_work"))
defineProperty("vu_res_to_L", globalPropertyi("tu154b2/custom/elec/vu_res_to_L")) -- резервное ВУ подключено на лев сеть
defineProperty("vu_res_to_R", globalPropertyi("tu154b2/custom/elec/vu_res_to_R")) -- резервное ВУ подключено на прав сеть

defineProperty("svet_bort_1", globalPropertyi("sim/custom/cabin/side_light1"))
defineProperty("svet_bort_2", globalPropertyi("sim/custom/cabin/side_light2"))
defineProperty("svet_zent_1", globalPropertyi("sim/custom/cabin/cent_light1"))
defineProperty("svet_zent_2", globalPropertyi("sim/custom/cabin/cent_light2"))
defineProperty("svet_dezh_1", globalPropertyf("sim/custom/cabin/dezhur_cabin_light1"))
defineProperty("svet_dezh_2", globalPropertyf("sim/custom/cabin/dezhur_cabin_light2"))
defineProperty("svet_vest_1", globalPropertyi("sim/custom/cabin/vest_light1"))
defineProperty("svet_kuch_1", globalPropertyi("sim/custom/cabin/vest_light2"))
defineProperty("svet_vest_2", globalPropertyi("sim/custom/cabin/vest_light3"))
defineProperty("svet_kuch_2", globalPropertyi("sim/custom/cabin/kitchen_light1"))

defineProperty("kip_0", globalPropertyi("sim/custom/cabin/lamp7"))
defineProperty("kip_1", globalPropertyi("sim/custom/cabin/lamp8"))
defineProperty("kip_2", globalPropertyi("sim/custom/cabin/lamp9"))
defineProperty("kip_3", globalPropertyi("sim/custom/cabin/lamp10"))
defineProperty("kip_4", globalPropertyi("sim/custom/cabin/lamp11"))
defineProperty("kip_5", globalPropertyi("sim/custom/cabin/lamp12"))
defineProperty("kruzh", globalPropertyi("sim/custom/cabin/lamp13"))

-- defineProperty("avtoL_load_A", globalPropertyf("tu154b2/custom/elec/avto_L_amp_A"))
-- defineProperty("avtoL_load_B", globalPropertyf("tu154b2/custom/elec/avto_L_amp_B"))
-- defineProperty("avtoL_load_C", globalPropertyf("tu154b2/custom/elec/avto_L_amp_C"))
-- defineProperty("avtoR_load_A", globalPropertyf("tu154b2/custom/elec/avto_R_amp_A"))
-- defineProperty("avtoR_load_B", globalPropertyf("tu154b2/custom/elec/avto_R_amp_B"))
-- defineProperty("avtoR_load_C", globalPropertyf("tu154b2/custom/elec/avto_R_amp_C"))

defineProperty("emerg_inv115", globalPropertyi("tu154b2/custom/switchers/eng/emerg_inv115"))
defineProperty("inv115_fail", globalPropertyf("tu154b2/custom/failures/inv115_fail"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("tvg1", globalPropertyi("sim/custom/gauges/eng/eng1_temp_ctrl"))
defineProperty("tvg2", globalPropertyi("sim/custom/gauges/eng/eng2_temp_ctrl"))
defineProperty("tvg3", globalPropertyi("sim/custom/gauges/eng/eng3_temp_ctrl"))

com_64_pwr = globalPropertyi("sim/custom/co63_pwr")
com_64_mode = globalPropertyi("sim/custom/co63_mode")
co_70_pwr = globalPropertyi("sim/custom/co70_pwr")
co_70_mode = globalPropertyi("sim/custom/co70_mode")
uvid_pwr = globalPropertyi("tu154b2/custom/switchers/ovhd/uvid_on")
panel_80 = globalPropertyi("sim/custom/b2/kontur_70th")
vbe_1 = globalPropertyi("tu154b2/custom/switchers/ovhd/vbe_1_on")
vbe_2 = globalPropertyi("tu154b2/custom/switchers/ovhd/vbe_2_on")
source_36_left = globalPropertyi("tu154b2/custom/elec/bus36_source_left")
source_36_right = globalPropertyi("tu154b2/custom/elec/bus36_source_right")
wxr_mode = globalProperty("sim/cockpit2/EFIS/EFIS_weather_mode")

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

defineProperty("heat", globalPropertyf("tu154b2/custom/engines/heater_current"))
-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local po_start=0
local po_prev=0
local po=0
local slat_prev=0

function update()

local MASTER = get(ismaster) ~= 1	

if MASTER then	
	local passed = get(frame_time)
	local rad_cc=bool2int(get(radar_cc)>0)

	po=get(emerg_inv115)*bool2int(get(bus27_volt_left)>16)*(1-get(inv115_fail))
	if po>po_prev then
		po_start=100
	end
	po_prev=po
	if po_start>0 then
		po_start=po_start-passed*200
		if po_start<0 or po==0 then
			po_start=0
		end
	end
	local po_load=po*(5+get(tvg1)*1+get(tvg2)*1+get(tvg3)*1+10*get(micron_1_on))
	-- bus 27v
	local bus27_L = get(bat_amp_cc_1) + get(bat_amp_cc_3) + get(cockpit_light_cc_left) + get(ext_light_cc_left) + get(fuel_pumps_27_cc) * 140/27/15*(2-bool2int(get(bus27_volt_right)>18)) + get(ai_27_L_cc)  + get(ctr_27_L_cc)*1 + get(msrp_27_L_cc)*50/27
	bus27_L = bus27_L + get(svs27_cc)*1 + get(rv_сс_1) * 10/27 + get(taws_cc) * 25/27/1.5 + get(vhf1_cc) * 1 + get(km5_1_cc) * 15/27  + get(bgmk_1_cc) *5/27 + get(agr_cc) * 10/27
	bus27_L = bus27_L + get(nvu_cc) * 400/27 + get(ark15_L_cc)*54/27 + get(diss_cc)*30/27 + get(rsbn_cc) * 75/27 + get(absu_at_power_cc) *1.5*get(absu_speed_prepare)+get(absu_power_27)*680/27
	bus27_L = bus27_L + get(sd75_1_on)*100/27*bool2int(get(bus27_volt_left)>22) + get(tcas)*60/27*bool2int(get(bus27_volt_left)>22)+ get(tcas_xpdr)*65/27*bool2int(get(bus27_volt_left)>22)+ get(spu_on)*50/27*bool2int(get(bus27_volt_left)>22)+get(micron_1_on)*100/27*bool2int(get(bus27_volt_left)>22)+bool2int(get(ovhd_mode)>1 or get(co_70_pwr)>1)*100/27*bool2int(get(bus27_volt_left)>22)+150/27*bool2int(get(bus27_volt_left)>22)
	bus27_L = bus27_L + get(mfi_1)*30/27*bool2int(get(bus27_volt_left)>22)+get(ubs_1)*30/27*bool2int(get(bus27_volt_left)>22)+po_load+po_start+get(com_64_pwr)*50/27*bool2int(get(bus27_volt_left)>22) + rad_cc * 120/27
	--bus27_L = bus27_L + get(uns_1)60/27*bool2int(get(bus27_volt_left)>22)+ get(mfi_1)30/27*bool2int(get(bus27_volt_left)>22)+get(ubs_1)30/27*bool2int(get(bus27_volt_left)>22)
	--
	local bus27_R = get(bat_amp_cc_2) + get(bat_amp_cc_4) + get(cockpit_light_cc_right) + get(ext_light_cc_right) + get(fuel_pumps_27_cc) * 140/27/15*(2-bool2int(get(bus27_volt_left)>18))  + get(ctr_27_R_cc)*1 + get(msrp_27_R_cc)*50/27 + get(ai_27_R_cc)
	bus27_R = bus27_R + get(auasp_pow27_cc) + get(rv_сс_2) * 10/27 + get(fire_sys_cc) + get(vhf2_cc) * 1 + get(km5_2_cc) * 15/27 + get(bgmk_2_cc) *5/27 + get(ush_cc) + get(ark15_R_cc) *54/27 
	bus27_R = bus27_R + get(sd75_2_on)*100/27*bool2int(get(bus27_volt_right)>22)+get(micron_2_on)*100/27*bool2int(get(bus27_volt_right)>22)+150/27*bool2int(get(bus27_volt_right)>22) + get(ga_heat_cc) +get(tks_cc)
	bus27_R = bus27_R + get(mfi_2)*30/27*bool2int(get(bus27_volt_right)>22)+get(ubs_2)*30/27*bool2int(get(bus27_volt_right)>22) + get(gps_power)*1*bool2int(get(bus27_volt_right)>22)	
	-- cabin lights
	bus27_R=bus27_R+7*2*bool2int(get(svet_dezh_1)>0)*0.18+10*2*bool2int(get(svet_dezh_2)>0)*0.18
	-- Starter heat
	bus27_R=bus27_R+get(heat)
	
	
	-- bus 36v
	local bus36_pts_1 =  get(agr_cc) * 16/36 + rad_cc * 36/36 + get(mgv_ctr_power_cc) *29/36 + get(ark15_L_cc) * 1
	
	local bus36_pts_2 = get(km5_1_cc) * 25/36 + get(ga_1_cc) + get(bgmk_1_cc) * 20/36 

	local bus36_L = get(pkp_left_power_cc)*29/36  + get(ctr_36L_cc) + get(svs36_cc)*1 + get(absu_power_cc) * 800/36 + get(absu_at_power_cc)*get(absu_speed_prepare) + get(nvu_cc) * 300/36 + get(ark15_R_cc) * 1 + get(nav1_pow_cc) * 25/36
	
	local bus36_R = get(ctr_36R_cc) + get(pkp_right_power_cc)*29/36 + get(km5_2_cc) * 25/36 + get(ga_2_cc) + get(bgmk_2_cc) * 20/36 + get(nav2_pow_cc) * 25/36 + bus36_pts_2*(1-get(pts2))
	
	
	local load_36_L = bus36_L  * (1 - get(source_36_left)) + bus36_R * get(source_36_right)
	local load_36_R = bus36_L  * get(source_36_left) + bus36_R  * (1 - get(source_36_right))
	
	bus27_L = bus27_L + get(pts1)*bus36_pts_1*2.9
	bus27_R = bus27_R + get(pts2)*bus36_pts_2*2.9	
	
	set(bus27_amp_left, bus27_L)
	set(bus27_amp_right, bus27_R)
	
	set(bus36_amp_left, bus36_L)
	set(bus36_amp_right, bus36_R)
	set(bus36_amp_pts250_1, bus36_pts_1)
	set(bus36_amp_pts250_2, bus36_pts_2*get(pts2))
	
	

	-- bus 115v
	-- local avt_L=get(vu1_amp) *27/200/1.7/0.8 +get(avtoL_load)
	-- local avt_R=get(vu1_amp) *27/200/1.7/0.8 +get(avtoL_load)
	local bus115_1 =  get(vu3_amp) *27/200/1.7/0.8*bool2int(get(bus115_1_volt)>105)*get(vu_res_to_L)/(1+get(vu_res_to_R)) + get(fuel_pumps_115_1_cc) + get(gs_pump_2_cc)*0.78 + get(ai_115_1_cc) + get(ctr_115_1_cc)
	bus115_1 = bus115_1 + get(svs115_cc)*1 + get(rv_сс_1)*95/115 + get(taws_cc) * 0.2 + get(absu_power_cc)*123/115 + get(absu_power_cc)*400/200 + get(absu_at_power_cc)*get(absu_speed_prepare) + get(diss_cc) * 260/115 + get(nav1_pow_cc) * 180/115 + get(rsbn_cc) * 750/115
	bus115_1 = bus115_1+ get(sd75_1_on)*90/115*bool2int(get(bus115_1_volt)>100)+get(micron_1_on)*250/200*bool2int(get(bus115_1_volt)>100)+bool2int(get(ovhd_mode)>1 or get(co_70_pwr)>1)*50/115*bool2int(get(bus115_1_volt)>100) 
	bus115_1 = bus115_1+get(uvid_pwr)*30/115*bool2int(get(bus115_1_volt)>100)+ get(gear_fan)*0.9*12/math.sqrt(3)/0.8*bool2int(get(bus115_1_volt)>100)/2+get(com_64_pwr)*150/115*bool2int(get(bus115_1_volt)>100) + load_36_L*36/115
	--cabin lights
	bus115_1 = bus115_1+23*0.3/3*get(svet_zent_1)+32*0.3/3*get(svet_zent_2)+35*0.3/3*get(svet_bort_1)+29*0.3/3*get(svet_bort_2)+1*0.3/3*get(svet_vest_1)+1*0.3/3*get(svet_vest_2)+2*0.3/3*get(svet_kuch_1)+2*0.3/3*get(svet_kuch_2)
	--
	local bus115_2_A = get(ai_115_2_cc_A)
	local bus115_2_B = get(ai_115_2_cc_B)
	local bus115_2_C = get(ai_115_2_cc_C)
	
	--
	local bus115_3 = get(vu2_amp) *27/200/1.7/0.8 + get(vu3_amp) *27/200/1.7/0.8*bool2int(get(bus115_3_volt)>105)*get(vu_res_to_R)/(1+get(vu_res_to_L)) + get(fuel_pumps_115_3_cc) + get(gs_pump_3_cc)*0.78 + get(ai_115_3_cc) + get(ctr_115_3_cc)
	bus115_3 = bus115_3 + get(auasp_pow115_cc) + get(rv_сс_2)*95/115 + get(nav2_pow_cc) * 180/115 + load_36_R*36/115 + rad_cc * 230/115 * (0.5 + 0.5*math.min(get(wxr_mode),1))
	bus115_3 = bus115_3 + get(sim_beacon)*266/200+ get(sd75_2_on)*90/115*bool2int(get(bus115_3_volt)>100)+get(micron_2_on)*250/200*bool2int(get(bus115_3_volt)>100) + get(gear_fan)*0.9*12/math.sqrt(3)/0.8*bool2int(get(bus115_3_volt)>100)/2 + get(vbe_1)*(1-get(panel_80))*30/115*bool2int(get(bus115_3_volt)>100)
	-- kitchen
	bus115_3 = bus115_3+(get(kip_0)+get(kip_1)+get(kip_2)+get(kip_3)+get(kip_4)+get(kip_5))*2
	set(bus115_1_amp_A, bus115_1)
	set(bus115_2_amp_A, bus115_2_A)
	set(bus115_3_amp_A, bus115_3)
	
	set(bus115_1_amp_B, bus115_1)
	set(bus115_2_amp_B, bus115_2_B)
	set(bus115_3_amp_B, bus115_3)
	
	set(bus115_1_amp_C, bus115_1)
	set(bus115_2_amp_C, bus115_2_C)
	set(bus115_3_amp_C, bus115_3)
	
end
	
end