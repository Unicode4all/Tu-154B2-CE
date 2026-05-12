-- this is the logic of 27v buses
--each bus has several sources. 2 batteries, VU, VU aux and other bus, if it has its own sources

-- createGlobalPropertyf("tu154b2/custom/elec/bus27_debug_val1", 0)
-- defineProperty("bus27_debug_val1", globalPropertyf("tu154b2/custom/elec/bus27_debug_val1"))
-- createGlobalPropertyf("tu154b2/custom/elec/bus27_debug_val2", 0)
-- defineProperty("bus27_debug_val2", globalPropertyf("tu154b2/custom/elec/bus27_debug_val2"))
-- createGlobalPropertyf("tu154b2/custom/elec/bus27_debug_val3", 0)
-- defineProperty("bus27_debug_val3", globalPropertyf("tu154b2/custom/elec/bus27_debug_val3"))

-- controll
defineProperty("bus27_connect", globalPropertyi("tu154b2/custom/switchers/eng/bus27_connect")) -- соединение сетей 27в
defineProperty("bus27_vu1", globalPropertyi("tu154b2/custom/switchers/eng/bus27_vu1")) -- ВУ1. -1 - резерв, 0 - выкл, +1 - вкл.
defineProperty("bus27_vu2", globalPropertyi("tu154b2/custom/switchers/eng/bus27_vu2")) -- ВУ2. -1 - резерв, 0 - выкл, +1 - вкл.
defineProperty("bat1_on", globalPropertyi("tu154b2/custom/switchers/eng/bat1_on")) -- батарея 1
defineProperty("bat2_on", globalPropertyi("tu154b2/custom/switchers/eng/bat2_on")) -- батарея 2
defineProperty("bat3_on", globalPropertyi("tu154b2/custom/switchers/eng/bat3_on")) -- батарея 3
defineProperty("bat4_on", globalPropertyi("tu154b2/custom/switchers/eng/bat4_on")) -- батарея 4

-- sources
defineProperty("bat_volt_1", globalPropertyf("tu154b2/custom/elec/bat_volt_1")) -- напряжение батареи
defineProperty("bat_volt_2", globalPropertyf("tu154b2/custom/elec/bat_volt_2")) -- напряжение батареи
defineProperty("bat_volt_3", globalPropertyf("tu154b2/custom/elec/bat_volt_3")) -- напряжение батареи
defineProperty("bat_volt_4", globalPropertyf("tu154b2/custom/elec/bat_volt_4")) -- напряжение батареи

defineProperty("bat_amp_1", globalPropertyf("tu154b2/custom/elec/bat_amp_1")) -- ток батареи
defineProperty("bat_amp_2", globalPropertyf("tu154b2/custom/elec/bat_amp_2")) -- ток батареи
defineProperty("bat_amp_3", globalPropertyf("tu154b2/custom/elec/bat_amp_3")) -- ток батареи
defineProperty("bat_amp_4", globalPropertyf("tu154b2/custom/elec/bat_amp_4")) -- ток батареи

defineProperty("bat_1_kz", globalPropertyi("tu154b2/custom/failures/bat_1_kz")) -- тепловой разгон
defineProperty("bat_2_kz", globalPropertyi("tu154b2/custom/failures/bat_2_kz")) -- тепловой разгон
defineProperty("bat_3_kz", globalPropertyi("tu154b2/custom/failures/bat_3_kz")) -- тепловой разгон
defineProperty("bat_4_kz", globalPropertyi("tu154b2/custom/failures/bat_4_kz")) -- тепловой разгон

defineProperty("bat_fail_1", globalPropertyi("tu154b2/custom/failures/bat_1_fail")) -- отказ батареи
defineProperty("bat_fail_2", globalPropertyi("tu154b2/custom/failures/bat_2_fail")) -- отказ батареи
defineProperty("bat_fail_3", globalPropertyi("tu154b2/custom/failures/bat_3_fail")) -- отказ батареи
defineProperty("bat_fail_4", globalPropertyi("tu154b2/custom/failures/bat_4_fail")) -- отказ батареи

defineProperty("bat_source_1", globalPropertyi("tu154b2/custom/elec/bat_is_source_1")) -- батарея является источником
defineProperty("bat_source_2", globalPropertyi("tu154b2/custom/elec/bat_is_source_2")) -- батарея является источником
defineProperty("bat_source_3", globalPropertyi("tu154b2/custom/elec/bat_is_source_3")) -- батарея является источником
defineProperty("bat_source_4", globalPropertyi("tu154b2/custom/elec/bat_is_source_4")) -- батарея является источником

defineProperty("apu_system_on", globalPropertyi("tu154b2/custom/eng/apu_system_on"))
defineProperty("apu_start_seq", globalPropertyi("tu154b2/custom/elec/apu_start_seq")) -- идет процесс запуска ВСУ

defineProperty("vu1_volt", globalPropertyf("tu154b2/custom/elec/vu1_volt")) -- работа ВУ
defineProperty("vu2_volt", globalPropertyf("tu154b2/custom/elec/vu2_volt")) -- работа ВУ
defineProperty("vu_res_volt", globalPropertyf("tu154b2/custom/elec/vu_res_volt")) -- работа ВУ

defineProperty("vu1_amp", globalPropertyf("tu154b2/custom/elec/vu1_amp")) -- работа ВУ
defineProperty("vu2_amp", globalPropertyf("tu154b2/custom/elec/vu2_amp")) -- работа ВУ
defineProperty("vu3_amp", globalPropertyf("tu154b2/custom/elec/vu_res_amp")) -- работа ВУ

defineProperty("vu1_fail", globalPropertyi("tu154b2/custom/failures/vu1_fail")) -- отказ ВУ
defineProperty("vu2_fail", globalPropertyi("tu154b2/custom/failures/vu2_fail")) -- отказ ВУ
defineProperty("vu3_fail", globalPropertyi("tu154b2/custom/failures/vu3_fail")) -- отказ ВУ

-- aux source
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("apu_start_bus", globalPropertyf("tu154b2/custom/elec/apu_start_bus")) -- напряжение в сети ВСУ
defineProperty("apu_start_cc", globalPropertyf("tu154b2/custom/elec/apu_start_cc")) -- потребление тока стартером ВСУ

defineProperty("apu_main_switch", globalPropertyi("tu154b2/custom/switchers/eng/apu_main_switch")) -- выключатель ВСУ

defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- проседание стойки шасси
--defineProperty("gear_defl", globalPropertyf("tu154b2/custom/controlls/debug1")) -- проседание стойки шасси
-- results
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus27_amp_left", globalPropertyf("tu154b2/custom/elec/bus27_amp_left")) -- ток сети 27
defineProperty("bus27_amp_right", globalPropertyf("tu154b2/custom/elec/bus27_amp_right")) -- ток сети 27

defineProperty("bus27_source_left", globalPropertyf("tu154b2/custom/elec/bus27_source_left")) -- источник сети. 0 - ничего. 1 - ВУ1, 2 - ВУрезерв, 3 - батареи 1 и 3, 6 - соседняя сеть
defineProperty("bus27_source_right", globalPropertyf("tu154b2/custom/elec/bus27_source_right")) -- источник сети. 0 - ничего. 1 - ВУ2, 2 - ВУрезерв, 3 - батареи 2 и 4, 6 - соседняя сеть

defineProperty("buses_connected", globalPropertyi("tu154b2/custom/elec/bus_connected"))

defineProperty("vu_res_to_L", globalPropertyi("tu154b2/custom/elec/vu_res_to_L")) -- резервное ВУ подключено на лев сеть
defineProperty("vu_res_to_R", globalPropertyi("tu154b2/custom/elec/vu_res_to_R")) -- резервное ВУ подключено на прав сеть
defineProperty("vu_res_test", globalPropertyi("sim/custom/gauges/elec/vu_res_test"))
-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment
defineProperty("fan_volume_ratio", globalPropertyf("sim/operation/sound/fan_volume_ratio")) -- 
defineProperty("apu_apd_working", globalPropertyi("tu154b2/custom/elec/apu_apd_working"))


-- gens
defineProperty("gen1_work", globalPropertyi("tu154b2/custom/elec/gen1_work")) --
defineProperty("gen2_work", globalPropertyi("tu154b2/custom/elec/gen2_work")) --
defineProperty("gen3_work", globalPropertyi("tu154b2/custom/elec/gen3_work")) --
defineProperty("gen4_work", globalPropertyi("tu154b2/custom/elec/gen4_work")) --
defineProperty("gen5_work", globalPropertyi("tu154b2/custom/elec/gpu_work")) --

--defineProperty("freq_115", globalPropertyi("tu154b2/custom/elec/bus115_freq")) --

defineProperty("avtoL_volt", globalPropertyf("tu154b2/custom/elec/avto_L_volt"))
-- defineProperty("avtoL_amp", globalPropertyf("tu154b2/custom/elec/avto_L_amp"))

defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door"))
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))
defineProperty("apu_airstart", globalPropertyi("tu154b2/custom/elec/apu_airstart"))
defineProperty("freq_115_1", globalPropertyf("tu154b2/custom/elec/bus115_1_freq")) 
defineProperty("freq_115_3", globalPropertyf("tu154b2/custom/elec/bus115_3_freq")) 
defineProperty("freq_avt_1", globalPropertyf("tu154b2/custom/elec/bus115_avt_l_freq"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

local inverter1_L = loadSample(moduleDirectory .. '/Custom Sounds/inverters_L.wav') --
local inverter2_L = loadSample(moduleDirectory .. '/Custom Sounds/inverters_L.wav') --
local inverter3_L = loadSample(moduleDirectory .. '/Custom Sounds/inverters_res_L.wav') --
local inverter1_R = loadSample(moduleDirectory .. '/Custom Sounds/inverters_R.wav') --
local inverter2_R = loadSample(moduleDirectory .. '/Custom Sounds/inverters_R.wav') --
local inverter3_R = loadSample(moduleDirectory .. '/Custom Sounds/inverters_res_R.wav') --

local vu1_run_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_run_L.wav') --
local vu2_run_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_run_L.wav') --
local vu3_run_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_run_L.wav') --
local vu1_run_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_run_R.wav') --
local vu2_run_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_run_R.wav') --
local vu3_run_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_run_R.wav') --

local vu1_start_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_start_L.wav') --
local vu2_start_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_start_L.wav') --
local vu3_start_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_start_L.wav') --
local vu1_start_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_start_R.wav') --
local vu2_start_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_start_R.wav') --
local vu3_start_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/vu6_start_R.wav') --

local invert_counter1 = 0
local invert_counter2 = 0
local invert_counter3 = 0

local power_vu1_prev = 0
local power_vu2_prev = 0
local power_vu3_prev = 0

local rabota_apd_vsu=0

local invert_count_last = 0
local invert_count = get(gen1_work) + get(gen2_work)+ get(gen3_work)+ get(gen4_work)+ get(gen5_work)
local invert_changed = 0
local invert_load = 0

local panel_x_1=-0.9388807
local panel_z_1=-22.29871
local panel_x_2=0.9388807
local panel_z_2=-22.29871
local panel_x_3=-0.9388807
local panel_z_3=-22.02056
local dist_gain=1
local vu3_connR=0

sasl.al.playSample(inverter1_L, true)
sasl.al.playSample(inverter1_R, true)
sasl.al.setSampleGain(inverter1_R, 0)
sasl.al.setSampleGain(inverter1_L, 0)
sasl.al.playSample(inverter2_L, true)
sasl.al.playSample(inverter2_R, true)
sasl.al.setSampleGain(inverter2_R, 0)
sasl.al.setSampleGain(inverter2_L, 0)
sasl.al.playSample(inverter3_L, true)
sasl.al.playSample(inverter3_R, true)
sasl.al.setSampleGain(inverter3_R, 0)
sasl.al.setSampleGain(inverter3_L, 0)
-- sasl.al.playSample(inverter2, 1)
-- sasl.al.setSampleGain(inverter2, 0)

-- sasl.al.playSample(inverter3, 1)
-- sasl.al.setSampleGain(inverter3, 0)





-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local source_L = 0 -- lets calculate the source first and then divide the loads between sources
local source_R = 0

-- во время запуска ВСУ, сети объединятся. при этом 3 и 4 батареи переключаются на запуск, а 1 и 2 продолжают питать сети 27в. 
-- в случае, если имеется напряжение на шинах 115/200 - автоматически включаются все три ВУ.

function bool2int(var)
	if var then return 1
	else return 0 end
end

local function int2bool(var)
	if math.abs(var) ~= 0 then return true
	else return false end
end

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

local vu_overload_1 = false
local vu_overload_2 = false
local vu_overload_3 = false

local vu1_work = false
local vu2_work = false
local vu3_work = false

local inv_gain1=0
local inv_gain2=0
local inv_gain3=0


function update()
	if get(frame_time) > 0 then
	
		local vu1_sw = get(bus27_vu1)
		local vu2_sw = get(bus27_vu2)
		
		local bus_volt_L = 0
		local bus_volt_R = 0
		
		local bat1 = get(bat1_on)
		local bat2 = get(bat2_on)
		local bat3 = get(bat3_on)
		local bat4 = get(bat4_on)
		
		local bat_works_1 = bat1 * (1 - get(bat_1_kz)) * (1 - get(bat_fail_1))
		local bat_works_2 = bat2 * (1 - get(bat_2_kz)) * (1 - get(bat_fail_2))
		local bat_works_3 = bat3 * (1 - get(bat_3_kz)) * (1 - get(bat_fail_3))
		local bat_works_4 = bat4 * (1 - get(bat_4_kz)) * (1 - get(bat_fail_4))
		
		rabota_apd_vsu=get(apu_apd_working)+get(apu_start_seq)
		local airstart=0
		-- check if VU can produce power
		vu1_work = get(avtoL_volt) >= 100 and get(vu1_fail) == 0 and not vu_overload_1 and vu1_sw == 1
		vu2_work = get(bus115_3_volt) >= 100 and get(vu2_fail) == 0 and not vu_overload_2 and vu2_sw == 1
		-- Vu3 will not work on ground, except via test switch and will power only the left DC bus.
		vu3_work = (get(bus115_1_volt) >= 100 or get(bus115_3_volt) >= 100) and get(vu3_fail) == 0 and not vu_overload_3 and ((get(gear_defl) < 0.05 and (vu1_sw == -1 or vu2_sw == -1 or not vu1_work or not vu2_work)) or get(vu_res_test)~=0 or (rabota_apd_vsu>0 and (vu1_work or vu2_work)))
		
		-- if vu1_work then
			-- vu1_timer<1 then
				-- vu1_timer=vu1_timer+passed*1.25
			-- end
		-- else
			-- vu1_timer=0
		-- end
		-- if vu1_timer>1 then
			-- vu1_timer=1
		-- end
		if vu1_work and invert_counter1>0.1 then set(vu1_volt, 28.5) else set(vu1_volt, 0) end
		if vu2_work and invert_counter2>0.1 then set(vu2_volt, 28.5) else set(vu2_volt, 0) end
		if vu3_work and invert_counter3>0.1 then set(vu_res_volt, 28.5) else set(vu_res_volt, 0) end
		
		local vu1 = bool2int(vu1_work)
		local vu2 = bool2int(vu2_work)
		local vu3 = bool2int(vu3_work)
		
		local vu1_conn = 0
		if vu1_work and vu1_sw == 1 and  invert_counter1>0.1 then vu1_conn = 1 end
		
		local vu2_conn = 0
		if vu2_work and vu2_sw == 1 and  invert_counter2>0.1 then vu2_conn = 1 end
		
		local vu3_connL = 0
		if vu3_work and (((vu1_sw == -1 or not vu1_work) and get(gear_defl) < 0.05) or get(vu_res_test)==-1) and  invert_counter3>0.1 then vu3_connL = 1 end
		
		vu3_connR = 0
		if vu3_work and (((vu2_sw == -1 or not vu2_work) and get(gear_defl) < 0.05) or get(vu_res_test)==1) and  invert_counter3>0.1 then vu3_connR = 1 end
		
		-- check load on VU and set overloading flag
		if get(vu1_amp) > 450 then vu_overload_1 = true
		elseif vu1_sw < 1 then vu_overload_1 = false 
		end

		if get(vu2_amp) > 450 then vu_overload_2 = true
		elseif vu2_sw < 1 then vu_overload_2 = false 
		end	
		
		if get(vu3_amp) > 450 then vu_overload_3 = true
		elseif vu1_sw > -1 and vu2_sw > -1 then vu_overload_3 = false 
		end
		
		local bus_amp_L = get(bus27_amp_left)
		local bus_amp_R = get(bus27_amp_right)
		local apu_amp = get(apu_start_cc)
		local apu_volt = get(apu_start_bus)
		
		--if get(apu_system_on) == 1 then -- APU start mode
		if get(apu_start_seq) == 1 then -- APU starter work
			set(buses_connected, 1)
			if (vu1_conn == 1 or vu2_conn == 1 or vu3_work) and (get(gear_defl) > 0.05 or get(gen1_work)==0 or get(gen2_work)==0 or get(gen3_work)==0) then -- VU source 
				local n_sources=bool2int(vu1_conn >0)+bool2int(vu2_conn >0)+bool2int(vu3_work)+bool2int(bat_works_1>0)+bool2int(bat_works_2>0) -- number of power sources for APU start
				local n_sources_aux=bool2int(bat_works_3>0)+bool2int(bat_works_4>0)
				source_L = 1
				source_R = 1
				bus_volt_L = 28.5
				bus_volt_R = 28.5
				apu_volt = 28.5
				set(bat_source_1, bat_works_1)
				set(bat_source_2, bat_works_2)
				set(bat_source_3, bat_works_3)
				set(bat_source_4, bat_works_4)
				-- set currents
				set(vu1_amp, (bus_amp_L + bus_amp_R) * vu1_conn / (vu1_conn + vu2_conn + vu3) + (apu_amp/n_sources+apu_amp*(1-math.max(n_sources_aux,0))/20)* vu1_conn)
				set(vu2_amp, (bus_amp_L + bus_amp_R) * vu2_conn / (vu1_conn + vu2_conn + vu3) + (apu_amp/n_sources+apu_amp*(1-math.max(n_sources_aux,0))/20)* vu2_conn)
				set(vu3_amp, (bus_amp_L + bus_amp_R) * vu3 / (vu1_conn + vu2_conn + vu3) + (apu_amp/n_sources+apu_amp*(1-math.max(n_sources_aux,0))/20)* vu3)
				set(bat_amp_1, apu_amp/n_sources*bool2int(bat_works_1>0))
				set(bat_amp_2, apu_amp/n_sources*bool2int(bat_works_2>0))
				set(bat_amp_3, apu_amp*(3-n_sources_aux)/20*bool2int(bat_works_3>0))
				set(bat_amp_4, apu_amp*(3-n_sources_aux)/20*bool2int(bat_works_4>0))
				
				if vu3_work and  invert_counter3>0.1 then 
					--vu3_connL = 1
					vu3_connR = 1
				end
			
			elseif get(gear_defl) > 0.05 then -- battery source for starting APU on ground 
				if (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4) > 0 then
					source_L = 3
					source_R = 3
					bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3 + get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4)
					bus_volt_R = bus_volt_L
					apu_volt = bus_volt_L
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
					-- set currents
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
					set(bat_amp_1, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_1 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_2, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_2 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_3, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_3 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R + apu_amp) * bat_works_4 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
				else 
					source_L = 0
					source_R = 0
					bus_volt_L = 0
					bus_volt_R = 0
					apu_volt = 0
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
				end
			elseif get(gen1_work)==0 and get(gen2_work)==0 and get(gen3_work)==0 and get(gear_defl) < 0.05 then -- airstart from batteries only
				source_L = 3
				source_R = 3
				airstart=1
				if bat_works_3 + bat_works_4 > 0 then -- only bat 3 and bat 4 gives power to buses. bat 1 and bat 2 gives power for APU starter
					bus_volt_L = (get(bat_volt_3) * bat_works_3 + get(bat_volt_4) * bat_works_4) / (bat_works_3 + bat_works_4)
					bus_volt_R = bus_volt_L
					set(bat_amp_3, (bus_amp_L + bus_amp_R) * bat_works_3 / (bat_works_3 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R) * bat_works_4 / (bat_works_2 + bat_works_4))
				else 
					bus_volt_L = 0 
					bus_volt_R = 0
					-- set(vu1_amp, 0)
					-- set(vu2_amp, 0)
					-- set(vu3_amp, 0)
					set(bat_amp_3, 0)
					set(bat_amp_4, 0)				
				end
				set(bat_source_1,bat_works_1)
				set(bat_source_2,bat_works_2)
				set(bat_source_3, bat_works_3)
				set(bat_source_4, bat_works_4)	
				-- set currents for APU
				if bat_works_1 + bat_works_2 > 0 then
					apu_volt = (get(bat_volt_1) * bat_works_1 + get(bat_volt_2) * bat_works_2) / (bat_works_1 + bat_works_2)
					set(bat_amp_1, (apu_amp * bat_works_1 / (bat_works_1 + bat_works_2)))
					set(bat_amp_2, (apu_amp * bat_works_2 / (bat_works_1 + bat_works_2)))
				else
					apu_volt = 0
					set(bat_amp_1, 0)
					set(bat_amp_2, 0)
				end
			else -- battery source in flight for starting APU (shouldn't be used anymore)
				source_L = 3
				source_R = 3
				if bat_works_2 + bat_works_4 > 0 then -- only bat 3 and bat 4 gives power to buses. bat 1 and bat 2 gives power for APU starter
					bus_volt_L = (get(bat_volt_3) * bat_works_3 + get(bat_volt_4) * bat_works_4) / (bat_works_3 + bat_works_4)
					bus_volt_R = bus_volt_L
					set(bat_amp_3, (bus_amp_L + bus_amp_R) * bat_works_3 / (bat_works_3 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R) * bat_works_4 / (bat_works_2 + bat_works_4))
				else 
					bus_volt_L = 0 
					bus_volt_R = 0
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
					set(bat_amp_1, 0)
					set(bat_amp_2, 0)				
				end
				set(bat_source_1, bat_works_1)
				set(bat_source_2, bat_works_2)
				set(bat_source_3, bat_works_3)
				set(bat_source_4, bat_works_4)	
				-- set currents for APU
				if bat_works_1 + bat_works_2 > 0 then
					apu_volt = (get(bat_volt_1) * bat_works_1 + get(bat_volt_2) * bat_works_2) / (bat_works_1 + bat_works_2)
					set(bat_amp_1, (apu_amp * bat_works_1 / (bat_works_1 + bat_works_2)))
					set(bat_amp_2, (apu_amp * bat_works_2 / (bat_works_1 + bat_works_2)))
				else
					apu_volt = 0
					set(bat_amp_1, 0)
					set(bat_amp_2, 0)
				end
			end
		elseif get(bus27_connect) == 1 or get(apu_system_on) == 1 then -- if busses connected or APU main switcher is ON
			set(buses_connected, 1)
			if ((vu1_work and vu1_conn == 1) or (vu2_work and vu2_conn == 1) or (vu3_work and vu3_connL + vu3_connR > 0)) then
				source_L = 1
				source_R = 1
				bus_volt_L = 28.5
				bus_volt_R = 28.5
				apu_volt = 28.5
				set(bat_source_1, 0)
				set(bat_source_2, 0)
				set(bat_source_3, 0)
				set(bat_source_4, 0)
				-- set currents
				if vu1_conn+vu2_conn==2 and vu3_connL + vu3_connR==0 then
					set(vu1_amp, bus_amp_L)
					set(vu2_amp, bus_amp_R)
					set(vu3_amp,0)
				elseif vu1_conn==1 and vu2_conn==0 and vu3_connL + vu3_connR==0 then
					set(vu1_amp, bus_amp_L+bus_amp_R)
					set(vu2_amp,0)
					set(vu3_amp,0)
				elseif vu1_conn==0 and vu2_conn==1 and vu3_connL + vu3_connR==0 then
					set(vu2_amp, bus_amp_L+bus_amp_R)
					set(vu1_amp,0)
					set(vu3_amp,0)
				elseif vu1_conn+vu2_conn==0 and vu3_connL + vu3_connR>0 then
					set(vu3_amp, bus_amp_L+bus_amp_R)
					set(vu1_amp,0)
					set(vu2_amp,0)
				elseif vu1_conn==1 and vu2_conn==0 and vu3_connL + vu3_connR > 0 then
					set(vu1_amp, (bus_amp_L+bus_amp_R)/2)
					set(vu2_amp,0)
					set(vu3_amp,(bus_amp_L+bus_amp_R)/2)
				-- elseif vu1_conn==1 and vu2_conn==0 and vu3_connL ==0 and vu3_connR==1 then
					-- set(vu1_amp, bus_amp_L)
					-- set(vu2_amp,0)
					-- set(vu3_amp,bus_amp_R)
				-- elseif vu1_conn==0 and vu2_conn==1 and vu3_connL ==0 and vu3_connR==1 then
					-- set(vu2_amp, (bus_amp_L+bus_amp_R)/2)
					-- set(vu1_amp,0)
					-- set(vu3_amp,(bus_amp_L+bus_amp_R)/2)
				elseif vu1_conn==0 and vu2_conn==1 and vu3_connL + vu3_connR > 0 then
					set(vu2_amp, bus_amp_R)
					set(vu1_amp,0)
					set(vu3_amp,bus_amp_L)
				elseif vu1_conn==1 and vu2_conn==1 and vu3_connL + vu3_connR > 0 then
					set(vu1_amp, (bus_amp_L+bus_amp_R)/3)
					set(vu2_amp,(bus_amp_L+bus_amp_R)/3)
					set(vu3_amp,(bus_amp_L+bus_amp_R)/3)
				-- elseif vu1_conn==1 and vu2_conn==1 and vu3_connL ==0 and vu3_connR==1 then
					-- set(vu1_amp, bus_amp_L)
					-- set(vu2_amp,bus_amp_R/2)
					-- set(vu3_amp,bus_amp_R/2)
				-- set(vu1_amp, (bus_amp_L + bus_amp_R) * vu1_conn / (vu1_conn + vu2_conn + vu3_connL + vu3_connR))
				-- set(vu2_amp, (bus_amp_L + bus_amp_R) * vu2_conn / (vu1_conn + vu2_conn + vu3_connL + vu3_connR))
				-- set(vu3_amp, (bus_amp_L + bus_amp_R) * (vu3_connL + vu3_connR) / (vu1_conn + vu2_conn + vu3_connL + vu3_connR))
				end
				set(bat_amp_1, 0)
				set(bat_amp_2, 0)
				set(bat_amp_3, 0)
				set(bat_amp_4, 0)
			else
				if (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4) > 0 then
					source_L = 3
					source_R = 3
					bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3 + get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4)
					bus_volt_R = bus_volt_L
					apu_volt = bus_volt_L
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
					-- set currents
					set(vu1_amp, 0)
					set(vu2_amp, 0)
					set(vu3_amp, 0)
					set(bat_amp_1, (bus_amp_L + bus_amp_R) * bat_works_1 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_2, (bus_amp_L + bus_amp_R) * bat_works_2 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_3, (bus_amp_L + bus_amp_R) * bat_works_3 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
					set(bat_amp_4, (bus_amp_L + bus_amp_R) * bat_works_4 / (bat_works_1 + bat_works_3 + bat_works_2 + bat_works_4))
				else 
					source_L = 0
					source_R = 0
					bus_volt_L = 0
					bus_volt_R = 0
					apu_volt = 0
					set(bat_source_1, bat_works_1)
					set(bat_source_2, bat_works_2)
					set(bat_source_3, bat_works_3)
					set(bat_source_4, bat_works_4)
				end
				
			end
		
		else -- normal work
		set(buses_connected, 0)
		apu_volt = 0
		-- left bus calc. check sources, cals voltage
			if vu1_work and vu1_sw == 1 then -- VU1 works. connect doesn't matter
				--print(get(bus27_volt_left))
				source_L = 1
				bus_volt_L =  28.5
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, bus_amp_L)
				set(vu3_amp, 0)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			elseif vu3_work and vu1_sw == -1 then -- VU res works. connect doesn't matter
				source_L = 2
				bus_volt_L = 28.5
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, bus_amp_L)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			elseif bat_works_1 + bat_works_3 > 0 then
				bus_volt_L = (get(bat_volt_1) * bat_works_1 + get(bat_volt_3) * bat_works_3) / (bat_works_1 + bat_works_3)
				source_L = 3
				set(bat_source_1, bat_works_1)
				set(bat_source_3, bat_works_3)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, 0)
				set(bat_amp_1, bus_amp_L * bat_works_1 / (bat_works_1 + bat_works_3))
				set(bat_amp_3, bus_amp_L * bat_works_3 / (bat_works_1 + bat_works_3))
			else
				source_L = 0
				bus_volt_L = 0
				set(bat_source_1, 0)
				set(bat_source_3, 0)
				-- set currents
				set(vu1_amp, 0)
				set(vu3_amp, 0)
				set(bat_amp_1, 0)
				set(bat_amp_3, 0)
			end
			

			-- right bus calc. check sources, cals voltage
			if vu2_work and vu2_sw == 1 then -- VU2 works. connect doesn't matter
				source_R = 1
				bus_volt_R =  28.5
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, bus_amp_R)
				--set(vu3_amp, 0)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			elseif vu3_work and vu2_sw == -1 then -- VU res works. connect doesn't matter
				source_R = 2
				bus_volt_R = 28.5
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, 0)
				set(vu3_amp, get(vu3_amp) + bus_amp_R)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			elseif bat_works_2 + bat_works_4 > 0 then
				bus_volt_R = (get(bat_volt_2) * bat_works_2 + get(bat_volt_4) * bat_works_4) / (bat_works_2 + bat_works_4)
				source_R = 3
				set(bat_source_2, bat_works_2)
				set(bat_source_4, bat_works_4)
				-- set currents
				set(vu2_amp, 0)
				--set(vu3_amp, 0)
				set(bat_amp_2, bus_amp_R * bat_works_2 / (bat_works_2 + bat_works_4))
				set(bat_amp_4, bus_amp_R * bat_works_4 / (bat_works_2 + bat_works_4))
			else
				source_R = 0
				bus_volt_R = 0
				set(bat_source_2, 0)
				set(bat_source_4, 0)
				-- set currents
				set(vu2_amp, 0)
				--set(vu3_amp, 0)
				set(bat_amp_2, 0)
				set(bat_amp_4, 0)
			end
			
		end

		--print(get(bat_amp_2))
		
		-- set results 
		set(bus27_volt_left, bus_volt_L)
		set(bus27_volt_right, bus_volt_R)

		set(bus27_source_left, source_L)
		set(bus27_source_right, source_R)
		
		set(vu_res_to_L, vu3_connL)
		set(vu_res_to_R, vu3_connR)
		
		set(apu_start_bus, apu_volt)
	
	end
	
	local passed = get(frame_time)
	
	local run = bool2int(passed ~= 0)
	
	local external = bool2int(get(external_view) > 0 or math.abs(get(pilot_X)) > 1.41 or get(vr_outside)==1)
	
	------------------
	-- power noise --
	-----------------
	local z_pos=get(pilot_Z)
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_head)
	local inv_gain=300
	local gain_L_1, gain_R_1 = inn_balance (panel_x_1, panel_z_1, x_pos, z_pos , plt_hdg)
	local dist_1=1
	if z_pos-panel_z_1~=0 then
		dist_1=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z_1,2)+math.pow(x_pos-panel_x_1,2))/dist_gain)
	end
	gain_L_1=gain_L_1*inv_gain*dist_1
	gain_R_1=gain_R_1*inv_gain*dist_1
	local gain_L_2, gain_R_2 = inn_balance (panel_x_2, panel_z_2, x_pos, z_pos , plt_hdg)
	local dist_2=1
	if z_pos-panel_z_2~=0 then
		dist_2=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z_2,2)+math.pow(x_pos-panel_x_2,2))/dist_gain)
	end
	gain_L_2=gain_L_2*inv_gain*dist_2
	gain_R_2=gain_R_2*inv_gain*dist_2
	local gain_L_3, gain_R_3 = inn_balance (panel_x_3, panel_z_3, x_pos, z_pos , plt_hdg)
	local dist_3=1
	if z_pos-panel_z_3~=0 then
		dist_3=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z_3,2)+math.pow(x_pos-panel_x_3,2))/dist_gain)
	end
	gain_L_3=gain_L_3*inv_gain*dist_3
	gain_R_3=gain_R_3*inv_gain*dist_3
	local fan_vl = get(fan_volume_ratio)
	
	
	local vu1_switch = bool2int(vu1_work)-power_vu1_prev
	power_vu1_prev= bool2int(vu1_work)
	
	local vu2_switch = bool2int(vu2_work)-power_vu2_prev
	power_vu2_prev= bool2int(vu2_work)
	
	local vu3_switch = bool2int(vu3_work)-power_vu3_prev
	power_vu3_prev= bool2int(vu3_work)
	-- -- Tone pitch change with load change
	-- if get(vu1_amp)-vu1_amp_prev>5 and vu1_work then
		-- vu1_amp_gain=math.max(0.8,1-get(gain_test)*(get(vu1_amp)-vu1_amp_prev)/100)
	-- end
	-- set(gain_test3,vu1_amp_gain)
	-- if vu1_amp_gain<1 then
		-- vu1_amp_gain=vu1_amp_gain+passed*get(gain_test2)
	-- elseif vu1_amp_gain>1 then
		-- vu1_amp_gain=1
	-- end
	-- vu1_amp_prev=get(vu1_amp)
	
	-- if get(vu2_amp)-vu2_amp_prev>5 and vu2_work then
		-- vu2_amp_gain=math.max(0.8,1-get(gain_test)*(get(vu2_amp)-vu2_amp_prev)/100)
	-- end
	-- --set(gain_test3,vu1_amp_gain)
	-- if vu2_amp_gain<1 then
		-- vu2_amp_gain=vu2_amp_gain+passed*get(gain_test2)
	-- elseif vu2_amp_gain>1 then
		-- vu2_amp_gain=1
	-- end
	-- vu2_amp_prev=get(vu2_amp)
	
	if vu1_work then 
		invert_counter1 = invert_counter1 + passed
	else 
		invert_counter1 = invert_counter1 - passed  
	end
	
	if invert_counter1 > 1 then 
		invert_counter1 = 1
	elseif invert_counter1<0 then
		sasl.al.stopSample(vu1_run_L)
		sasl.al.stopSample(vu1_run_R)
		invert_counter1 = 0 
	end
	
	if vu2_work then 
		invert_counter2 = invert_counter2 + passed
	else 
		invert_counter2 = invert_counter2 - passed
	end
	
	if invert_counter2 > 1 then 
		invert_counter2 = 1
	elseif invert_counter2 < 0 then 
		sasl.al.stopSample(vu2_run_L)
		sasl.al.stopSample(vu2_run_R)
		invert_counter2 = 0 
	end
	
	if vu3_work then 
		invert_counter3 = invert_counter3 + passed
	else 
		invert_counter3 = invert_counter3 - passed
	end
	
	if invert_counter3 > 1 then 
		invert_counter3 = 1
	elseif invert_counter3 < 0 then 
		sasl.al.stopSample(vu3_run_L)
		sasl.al.stopSample(vu3_run_R)
		invert_counter3 = 0 
	end
	
	local dist = -get(pilot_Z)-1.42 + 8
	local door=1	
	if get(pilot_Z)+1.42>-19 then
		door=0.05+0.95*get(cockpit_door)
	end
	-- VU1 Sound
	if vu1_switch==1 then
		sasl.al.playSample(vu1_start_L,false)
		sasl.al.playSample(vu1_start_R,false)
		sasl.al.setSampleGain(vu1_start_L, gain_L_1 * (1 - external) * run*door)
		sasl.al.setSampleGain(vu1_start_R, gain_R_1 * (1 - external) * run*door)
	elseif not vu1_work and sasl.al.isSamplePlaying(vu1_start_L) then
		sasl.al.setSampleGain(vu1_start_L, fan_vl * math.max(0,invert_counter1) * gain_L_1 * (1 - external) * run*door)
		sasl.al.setSampleGain(vu1_start_R, fan_vl * math.max(0,invert_counter1) * gain_R_1 * (1 - external) * run*door)
	end
	
	if vu1_work and not sasl.al.isSamplePlaying(vu1_start_L) and not sasl.al.isSamplePlaying(vu1_run_L) then
		sasl.al.playSample(vu1_run_L,true)
		sasl.al.playSample(vu1_run_R,true)
	end
	if invert_counter1==1 then
		if inv_gain1<1 then
			inv_gain1=inv_gain1+passed*8
		else
			inv_gain1=1
		end
	else
		inv_gain1=0
	end
	-- VU2 Sound
	if vu2_switch==1 then
		sasl.al.playSample(vu2_start_L,false)
		sasl.al.playSample(vu2_start_R,false)
		sasl.al.setSampleGain(vu2_start_L, gain_L_2 * (1 - external) * run*door)
		sasl.al.setSampleGain(vu2_start_R, gain_R_2 * (1 - external) * run*door)
	elseif not vu2_work and sasl.al.isSamplePlaying(vu2_start_L) then
		sasl.al.setSampleGain(vu2_start_L, fan_vl * math.max(0,invert_counter2) * gain_L_2 * (1 - external) * run*door)
		sasl.al.setSampleGain(vu2_start_R, fan_vl * math.max(0,invert_counter2) * gain_R_2 * (1 - external) * run*door)
	end
	
	if vu2_work and not sasl.al.isSamplePlaying(vu2_start_L) and not sasl.al.isSamplePlaying(vu2_run_L) then
		sasl.al.playSample(vu2_run_L,true)
		sasl.al.playSample(vu2_run_R,true)
	end
	if invert_counter2==1 then
		if inv_gain2<1 then
			inv_gain2=inv_gain2+passed*8
		else
			inv_gain2=1
		end
	else
		inv_gain2=0
	end
	
	-- -- VU res Sound
	if vu3_switch==1 then
		sasl.al.playSample(vu3_start_L,false)
		sasl.al.playSample(vu3_start_R,false)
		sasl.al.setSampleGain(vu3_start_L, gain_L_3 * (1 - external) * run*door)
		sasl.al.setSampleGain(vu3_start_R, gain_R_3 * (1 - external) * run*door)
	elseif not vu3_work and sasl.al.isSamplePlaying(vu3_start_L) then
		sasl.al.setSampleGain(vu3_start_L, fan_vl * math.max(0,invert_counter3) * gain_L_3 * (1 - external) * run*door)
		sasl.al.setSampleGain(vu3_start_R, fan_vl * math.max(0,invert_counter3) * gain_R_3 * (1 - external) * run*door)
	end
	
	if vu3_work and not sasl.al.isSamplePlaying(vu3_start_L) and not sasl.al.isSamplePlaying(vu3_run_L) then
		sasl.al.playSample(vu3_run_L,true)
		sasl.al.playSample(vu3_run_R,true)
	end
	if invert_counter3==1 then
		if inv_gain3<1 then
			inv_gain3=inv_gain3+passed*8
		else
			inv_gain3=1
		end
	else
		inv_gain3=0
	end
	
	-- Pitch change calculations
	local bus_115_1_freq = get(freq_115_1)
	
	local inv_pitch_1=995+(bus_115_1_freq-400)*2.5
	if bus_115_1_freq<300 then
		inv_pitch_1=995+(get(freq_avt_1)-400)*2.5
	end
	
	local inv_pitch_2=1005+(get(freq_115_3)-400)*2.5
	local inv_pitch_3=inv_pitch_1+5
	if vu3_connR==1 then
		inv_pitch_3=inv_pitch_2
	end
		
	-- local invert_count = get(gen1_work) + get(gen2_work)+ get(gen3_work)+ get(gen4_work)+ get(gen5_work)
    
    
    -- if invert_count-invert_count_last > 0.2 then
        -- if invert_changed > 0.98  then
            -- invert_changed = invert_changed -passed*0.5
        -- end
        -- invert_count_last = invert_count_last + passed*1.3
    -- elseif invert_count-invert_count_last < -0.2 then
        -- if invert_changed > 0.97  then
            -- invert_changed = invert_changed -passed*0.5
        -- end
        -- invert_count_last = invert_count_last - passed*1.3
    -- else
        -- if invert_changed < 1  then
            -- invert_changed = invert_changed +passed*0.5
        -- end
    -- end
	
	
    -- sasl.al.setSampleGain(vu1_run, fan_vl * math.max(0,invert_counter1) * 200 * (1 - external) * math.max(dist - 25, 0) * 0.2 * run*1.5*door)
	-- sasl.al.setSampleGain(vu2_run, fan_vl * math.max(0,invert_counter2) * 200 * (1 - external) * math.max(dist - 25, 0) * 0.2 * run*1.5*door)
	-- sasl.al.setSampleGain(vu3_run, fan_vl * math.max(0,invert_counter2) * 200 * (1 - external) * math.max(dist - 25, 0) * 0.2 * run*1.5*door)
    
	--sasl.al.setSampleGain(inverter1, fan_vl * (math.max(0,inv_gain1)+math.max(0,inv_gain2)+math.max(0,inv_gain3)) * 100 * (1 - external) * math.max(dist - 25, 0) * 0.2 * run*1.5*door)
	sasl.al.setSampleGain(inverter1_L, fan_vl * math.max(0,inv_gain1) * gain_L_1 * (1 - external) * run*door)
	sasl.al.setSampleGain(inverter1_R, fan_vl * math.max(0,inv_gain1) * gain_R_1 * (1 - external) * run*door)
	sasl.al.setSampleGain(vu1_run_L, fan_vl * math.max(0,invert_counter1) * gain_L_1 * (1 - external) * run*door)
	sasl.al.setSampleGain(vu1_run_R, fan_vl * math.max(0,invert_counter1) * gain_R_1 * (1 - external) * run*door)
	sasl.al.setSampleGain(inverter2_L, fan_vl * math.max(0,inv_gain2) * gain_L_2 * (1 - external) * run*door)
	sasl.al.setSampleGain(inverter2_R, fan_vl * math.max(0,inv_gain2) * gain_R_2 * (1 - external) * run*door)
	sasl.al.setSampleGain(vu2_run_L, fan_vl * math.max(0,invert_counter2) * gain_L_2 * (1 - external) * run*door)
	sasl.al.setSampleGain(vu2_run_R, fan_vl * math.max(0,invert_counter2) * gain_R_2 * (1 - external) * run*door)
	sasl.al.setSampleGain(inverter3_L, fan_vl * math.max(0,inv_gain3) * gain_L_3 * (1 - external) * run*door)
	sasl.al.setSampleGain(inverter3_R, fan_vl * math.max(0,inv_gain3) * gain_R_3 * (1 - external) * run*door)
	sasl.al.setSampleGain(vu3_run_L, fan_vl * math.max(0,invert_counter3) * gain_L_3 * (1 - external) * run*door)
	sasl.al.setSampleGain(vu3_run_R, fan_vl * math.max(0,invert_counter3) * gain_R_3 * (1 - external) * run*door)
	sasl.al.setSamplePitch(inverter1_L, inv_pitch_1)
	sasl.al.setSamplePitch(inverter1_R, inv_pitch_1)
	sasl.al.setSamplePitch(inverter2_L, inv_pitch_2)
	sasl.al.setSamplePitch(inverter2_R, inv_pitch_2)
	sasl.al.setSamplePitch(inverter3_L, inv_pitch_3)
	sasl.al.setSamplePitch(inverter3_R, inv_pitch_3)
	--sasl.al.setSamplePitch(inverter1, math.max(math.max(invert_counter1,invert_counter2),invert_counter3) * invert_changed *invert_load * 800 + 200)
	-- sasl.al.setSampleGain(inverter2, fan_vl * math.max(0,inv_gain2) * 200 * (1 - external) * math.max(dist - 25, 0) * 0.2 * run*1.5)
	-- sasl.al.setSamplePitch(inverter2, 1000*vu2_amp_gain)
	-- sasl.al.setSampleGain(inverter3, fan_vl * math.max(0,inv_gain3) * 200 * (1 - external) * math.max(dist - 25, 0) * 0.2 * run*1.5)
	-- sasl.al.setSamplePitch(inverter3, 1000)
	
	--set(apu_airstart,airstart)
	-- if passed == 0 or external == 1 then
		-- sasl.al.setSampleGain(inverter1, 0)
	-- end	

end

