-- this is fuel to engines logic

-- controls
fire_valve_1 = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_1") -- пожарный кран
fire_valve_2 = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_2") -- пожарный кран
fire_valve_3 = globalPropertyi("tu154b2/custom/switchers/fuel/fire_valve_3") -- пожарный кран

-- mixture hamdles
eng_mix_1 = globalProperty("sim/cockpit2/engine/actuators/mixture_ratio[0]") -- положение рычагов смеси в симе
eng_mix_2 = globalProperty("sim/cockpit2/engine/actuators/mixture_ratio[1]") -- положение рычагов смеси в симе
eng_mix_3 = globalProperty("sim/cockpit2/engine/actuators/mixture_ratio[2]") -- положение рычагов смеси в симе

-- animation
fuel_cutoff_1 = globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_1") -- рычаг пожарного крана
fuel_cutoff_2 = globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_2") -- рычаг пожарного крана
fuel_cutoff_3 = globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_3") -- рычаг пожарного крана

-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

-- results
eng_fuel_press_1 = globalPropertyi("tu154b2/custom/fuel/eng_fuel_press_1") -- топливо может быть подано в двигатель. без учета стоп-кранов
eng_fuel_press_2 = globalPropertyi("tu154b2/custom/fuel/eng_fuel_press_2") -- топливо может быть подано в двигатель. без учета стоп-кранов
eng_fuel_press_3 = globalPropertyi("tu154b2/custom/fuel/eng_fuel_press_3") -- топливо может быть подано в двигатель. без учета стоп-кранов

fire_vlv_open_1 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_1") -- пожарный кран открыт
fire_vlv_open_2 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_2") -- пожарный кран открыт
fire_vlv_open_3 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_3") -- пожарный кран открыт

engine_1_fuel = globalPropertyf("sim/operation/failures/rel_fuepmp0") -- полное перекрытие топлива в двигатели
engine_2_fuel = globalPropertyf("sim/operation/failures/rel_fuepmp1") -- полное перекрытие топлива в двигатели
engine_3_fuel = globalPropertyf("sim/operation/failures/rel_fuepmp2") -- полное перекрытие топлива в двигатели

engine_1_fuel2 = globalPropertyf("sim/operation/failures/rel_ele_fuepmp0") -- полное перекрытие топлива в двигатели
engine_2_fuel2 = globalPropertyf("sim/operation/failures/rel_ele_fuepmp1") -- полное перекрытие топлива в двигатели
engine_3_fuel2 = globalPropertyf("sim/operation/failures/rel_ele_fuepmp2") -- полное перекрытие топлива в двигатели


rt1_stop = globalPropertyi("tu154b2/custom/SC/engine/rt_stop1")
rt2_stop = globalPropertyi("tu154b2/custom/SC/engine/rt_stop2")
rt3_stop = globalPropertyi("tu154b2/custom/SC/engine/rt_stop3")


-- failures
eng_fuel_pmp_fail_1 = globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_1")
eng_fuel_pmp_fail_2 = globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_2")
eng_fuel_pmp_fail_3 = globalPropertyi("tu154b2/custom/failures/eng_fuel_pmp_fail_3")


--igniter_on_1 = globalPropertyi("sim/cockpit2/engine/actuators/igniter_on[0]")

fuel_in_1 = globalPropertyi("tu154b2/custom/start/fuel_in_1") -- подача топлива от системы запуска
fuel_in_2 = globalPropertyi("tu154b2/custom/start/fuel_in_2") -- подача топлива от системы запуска
fuel_in_3 = globalPropertyi("tu154b2/custom/start/fuel_in_3") -- подача топлива от системы запуска

pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")

FF_1 = globalProperty("tu154b2/custom/engines/FuelFlow_1")
FF_2 = globalProperty("tu154b2/custom/engines/FuelFlow_2")
FF_3 = globalProperty("tu154b2/custom/engines/FuelFlow_3")

rpm1 = globalProperty("sim/flightmodel2/engines/N2_percent[0]")
rpm2 = globalProperty("sim/flightmodel2/engines/N2_percent[1]")
rpm3 = globalProperty("sim/flightmodel2/engines/N2_percent[2]")

p_amb = globalPropertyf("sim/weather/aircraft/barometer_current_pas")
t_amb = globalPropertyf("sim/weather/aircraft/temperature_ambient_deg_c")

thro_1 = globalProperty("sim/flightmodel/engine/ENGN_thro_use[0]")
thro_2 = globalProperty("sim/flightmodel/engine/ENGN_thro_use[1]")
thro_3 = globalProperty("sim/flightmodel/engine/ENGN_thro_use[2]")

tank1_w = globalProperty("sim/flightmodel/weight/m_fuel[0]") -- fuel weight
flt_idle = globalPropertyf("tu154b2/custom/engines/flight_idle")

db1 = globalPropertyf("tu154b2/custom/controlls/debug1")
db2 = globalPropertyf("tu154b2/custom/controlls/debug2")
db3 = globalPropertyf("tu154b2/custom/controlls/debug3")
db4 = globalPropertyf("tu154b2/custom/controlls/debug4")
db5 = globalPropertyf("tu154b2/custom/controlls/debug5")
db6 = globalPropertyf("tu154b2/custom/controlls/debug6")

-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control


local rod_on_L = loadSample(moduleDirectory .. '/Custom Sounds/ROD_ON_L.wav')
local rod_off_L = loadSample(moduleDirectory .. '/Custom Sounds/ROD_OFF_L.wav')
local rod_on_R = loadSample(moduleDirectory .. '/Custom Sounds/ROD_ON_R.wav')
local rod_off_R = loadSample(moduleDirectory .. '/Custom Sounds/ROD_OFF_R.wav')

local panel_x=0.60329795
local panel_z=-21.737131
local dist_gain=5

sys_data_tbl.eng_fuel_p_factor_1 = 1
sys_data_tbl.eng_fuel_p_factor_2 = 1
sys_data_tbl.eng_fuel_p_factor_3 = 1

sys_data_tbl.eng_nozzle_pressure_1 = 0
sys_data_tbl.eng_nozzle_pressure_2 = 0
sys_data_tbl.eng_nozzle_pressure_3 = 0

sys_data_tbl.eng_line_fill_1 = 1
sys_data_tbl.eng_line_fill_2 = 1
sys_data_tbl.eng_line_fill_3 = 1

function pressure_ratio(rpm,oat)
	local pr = (1.526788201609719e-06 * math.pow(math.max(0,rpm),3.438098866805006) + 1) * ( -0.008392 * oat + 1.126)
	return pr
end

function nozzle_pressure_drop(FF)
	local dP = 2.749248867441229e-09 * math.pow(math.max(0,FF),2.708001431038164) + 0.334221354019303
	return dP
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

local c_eng_p = 0.002

local valve_1 = 0.7
local valve_2 = 0.7
local valve_3 = 0.7

local press_count_1 = 1
local press_count_2 = 1
local press_count_3 = 1

local mix_1_last = get(eng_mix_1)
local mix_2_last = get(eng_mix_2)
local mix_3_last = get(eng_mix_3)

local press_1 = get(p_amb)/ 101325
local press_2 = get(p_amb)/ 101325
local press_3 = get(p_amb)/ 101325

local filled_1 = 1
local filled_2 = 1
local filled_3 = 1

local kvd_1_prev = get(rpm1)
local kvd_2_prev = get(rpm2)
local kvd_3_prev = get(rpm3)


function update()

	local passed = get(frame_time)
	
	-- mixture logic
	local mix_1 = get(eng_mix_1)
	local mix_2 = get(eng_mix_2)
	local mix_3 = get(eng_mix_3)
	
	-- set animation
	set(fuel_cutoff_1, mix_1)
	set(fuel_cutoff_2, mix_2)
	set(fuel_cutoff_3, mix_3)
	
	-- set sound
	if mix_1 ~= mix_1_last and mix_1 == 1 then 
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rod_on_L,gain_L*dist)
		setSampleGain(rod_on_R,gain_R*dist)
		playSample(rod_on_L, false)
		playSample(rod_on_R, false)
	elseif mix_1 ~= mix_1_last and mix_1_last == 1 then 
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rod_off_L,gain_L*dist)
		setSampleGain(rod_off_R,gain_R*dist)
		playSample(rod_off_L, false)
		playSample(rod_off_R, false)
	end
	
	if mix_2 ~= mix_2_last and mix_2 == 1 then 
	local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rod_on_L,gain_L*dist)
		setSampleGain(rod_on_R,gain_R*dist)
		playSample(rod_on_L, false)
		playSample(rod_on_R, false)
	elseif mix_2 ~= mix_2_last and mix_2_last == 1 then 
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rod_off_L,gain_L*dist)
		setSampleGain(rod_off_R,gain_R*dist)
		playSample(rod_off_L, false)
		playSample(rod_off_R, false)
	end
	
	if mix_3 ~= mix_3_last and mix_3 == 1 then 
	local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rod_on_L,gain_L*dist)
		setSampleGain(rod_on_R,gain_R*dist)
		playSample(rod_on_L, false)
		playSample(rod_on_R, false)
	elseif mix_3 ~= mix_3_last and mix_3_last == 1 then 
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rod_off_L,gain_L*dist)
		setSampleGain(rod_off_R,gain_R*dist)
		playSample(rod_off_L, false)
		playSample(rod_off_R, false)
	end
	
	
	
	mix_1_last = mix_1
	mix_2_last = mix_2
	mix_3_last = mix_3
	
	
	-- fire valves logic
	valve_1 = valve_1 + (get(fire_valve_1) * 2 - 1) * passed * 0.4
	valve_2 = valve_2 + (get(fire_valve_2) * 2 - 1) * passed * 0.4
	valve_3 = valve_3 + (get(fire_valve_3) * 2 - 1) * passed * 0.4

	-- set limits
	if valve_1 > 1 then valve_1 = 1
	elseif valve_1 < 0 then valve_1 = 0 end
	
	if valve_2 > 1 then valve_2 = 1
	elseif valve_2 < 0 then valve_2 = 0 end
	
	if valve_3 > 1 then valve_3 = 1
	elseif valve_3 < 0 then valve_3 = 0 end

	
	-- fuel pressures
	local tank_1 = get(tank1_w) / 0.78
	local Flow_1 = get(FF_1)
	local Flow_2 = get(FF_2)
	local Flow_3 = get(FF_3)
	local kvd_1 = get(rpm1)
	local kvd_2 = get(rpm2)
	local kvd_3 = get(rpm3)
	local pressure_ambient = get(p_amb)
	local p_head = pressure_ambient / 101325
	-- pressure from feed tanks
	local pump_press = math.max(sys_data_tbl.eng_feed_p_1 + sys_data_tbl.eng_feed_p_2 + sys_data_tbl.eng_feed_p_3 + sys_data_tbl.eng_feed_p_4 + sys_data_tbl.eng_feed_res * 0.6 - (Flow_1 + Flow_2 + Flow_3) / 17000,0)
	local press_feed = pump_press + p_head / 2
	-- pressure from engine driven pumps
	local press_eng_1 = kvd_1 * c_eng_p
	local press_eng_2 = kvd_2 * c_eng_p
	local press_eng_3 = kvd_3 * c_eng_p
	-- fuel line pressures
	if Flow_1 > 10 then
		press_1 = (press_1 + ((press_feed * valve_1 + press_eng_1 - Flow_1 / 15000 - press_1) ) * passed * 5) * filled_1
	else
		press_1 = (press_1 + ((press_feed-press_1) * valve_1 * 5 - press_1 * 0.001 ) * passed) * filled_1
	end
	if Flow_2 > 10 then
		press_2 = (press_2 + ((press_feed * valve_2 + press_eng_2 - Flow_2 / 15000 - press_2) ) * passed * 5) * filled_2
	else
		press_2 = (press_2 + ((press_feed-press_2) * valve_2 * 5 - press_2  * 0.001 ) * passed) * filled_2
	end
	if Flow_3 > 10 then
		press_3 = (press_3 + ((press_feed * valve_3 + press_eng_3 - Flow_3 / 15000 - press_3) ) * passed * 5) * filled_3
	else
		press_3 = (press_3 + ((press_feed-press_3) * valve_3 * 5 - press_3 * 0.001 ) * passed) * filled_3
	end
	
	-- fill fuel lines (fuel line holds approx. 60 L)
	sys_data_tbl.eng_line_fill_1 = sys_data_tbl.eng_line_fill_1 + passed * bool2int(press_feed + press_eng_1 > p_head / 2 and tank_1 > 130) * valve_1  - passed * Flow_1 / 3600 / 0.77 / (valve_1 * 49 + 1) * (1 - math.min(valve_1,bool2int(tank_1 > 130))) 

	if sys_data_tbl.eng_line_fill_1 > 1 then
		sys_data_tbl.eng_line_fill_1 = 1
	elseif sys_data_tbl.eng_line_fill_1 <0 then
		sys_data_tbl.eng_line_fill_1 = 0
	end
	if filled_1 == 1 and sys_data_tbl.eng_line_fill_1 <= 0 then
		filled_1 = 0
	elseif filled_1 == 0 and sys_data_tbl.eng_line_fill_1 >= 1 then
		filled_1 = 1
	end
	
	sys_data_tbl.eng_line_fill_2 = sys_data_tbl.eng_line_fill_2 + passed * bool2int(press_feed + press_eng_2 > p_head / 2 and tank_1 > 145) * valve_2  - passed * Flow_2 / 3600 / 0.77 / (valve_2 * 49 + 1) * (1 - math.min(valve_2,bool2int(tank_1 > 155))) 

	if sys_data_tbl.eng_line_fill_2 > 1 then
		sys_data_tbl.eng_line_fill_2 = 1
	elseif sys_data_tbl.eng_line_fill_2 <0 then
		sys_data_tbl.eng_line_fill_2 = 0
	end
	if filled_2 == 1 and sys_data_tbl.eng_line_fill_2 <= 0 then
		filled_2 = 0
	elseif filled_2 == 0 and sys_data_tbl.eng_line_fill_2 >= 1 then
		filled_2 = 1
	end
	
	sys_data_tbl.eng_line_fill_3 = sys_data_tbl.eng_line_fill_3 + passed * bool2int(press_feed + press_eng_3 > p_head / 2 and tank_1 > 155) * valve_3  - passed * Flow_3 / 3600 / 0.77 / (valve_3 * 49 + 1) * (1 - math.min(valve_3,bool2int(tank_1 > 145))) 
	if sys_data_tbl.eng_line_fill_3 > 1 then
		sys_data_tbl.eng_line_fill_3 = 1
	elseif sys_data_tbl.eng_line_fill_3 <0 then
		sys_data_tbl.eng_line_fill_3 = 0
	end
	if filled_3 == 1 and sys_data_tbl.eng_line_fill_3 <= 0 then
		filled_3 = 0
	elseif filled_3 == 0 and sys_data_tbl.eng_line_fill_3 >= 1 then
		filled_3 = 1
	end

	-- engine fails from low pressure condition
	local low_p_1 = bool2int(press_1 - get(thro_1) > 0.05 and press_1 > p_head * 0.53)
	local low_p_2 = bool2int(press_2 - get(thro_2) > 0.048 and press_2 > p_head * 0.52)
	local low_p_3 = bool2int(press_3 - get(thro_3) > 0.052 and press_3 > p_head * 0.525)
	local idle = get(flt_idle)
	local kvd_rate_1 = 0
	--local kvd_rate_2 = 0
	local kvd_rate_3 = 0
	if passed ~=0 then
		kvd_rate_1 = (kvd_1 - kvd_1_prev) / passed
		--kvd_rate_2 = (kvd_2 - kvd_2_prev) / passed
		kvd_rate_3 = (kvd_3 - kvd_3_prev) / passed
	end
	if kvd_1 < idle - 2 and kvd_rate_1 < - 0.4 and low_p_1 == 0 and Flow_1 > 100 then
		filled_1 = 0
	end
	-- if kvd_3 < idle - 2 and kvd_rate_3 < - 0.34 then
		-- filled_3 = 0
	-- end
	kvd_1_prev = kvd_1
	--kvd_2_prev = kvd_2
	kvd_3_prev = kvd_3

	local MASTER = get(ismaster) ~= 1	
		

	if MASTER then	
			-- Nozzle pressures = Compressor discharge pressure + nozzle pressure drop
		local temp = get(t_amb)
		local p_rat = pressure_ratio(kvd_1,temp)
		local dP_noz = nozzle_pressure_drop(Flow_1)
		local nozzle_pressure = p_rat *  pressure_ambient / 101325 + dP_noz
		
		-- cut fuel when fire valves and mixture levers are closed
		if get(fuel_in_1) == 0 or filled_1 == 0 or get(eng_fuel_pmp_fail_1) == 1 or get(rt1_stop) == 1 or mix_1 < 0.7 then 
			set(engine_1_fuel, 6) set(engine_1_fuel2, 6)
			nozzle_pressure = 0 
		else 
			set(engine_1_fuel, 0) set(engine_1_fuel2, 0) 
		end
		sys_data_tbl.eng_nozzle_pressure_1 = nozzle_pressure
		sys_data_tbl.eng_fuel_p_factor_1 = sys_data_tbl.eng_fuel_p_factor_1 - (sys_data_tbl.eng_fuel_p_factor_1 - press_1) * passed / (2 + 4.5 * bool2int (sys_data_tbl.eng_fuel_p_factor_1 < press_1))
		
		p_rat = pressure_ratio(kvd_2,temp)
		dP_noz = nozzle_pressure_drop(Flow_2)
		nozzle_pressure = p_rat *  pressure_ambient / 101325 + dP_noz
		if get(fuel_in_2) == 0 or filled_2 == 0 or get(eng_fuel_pmp_fail_2) == 1 or get(rt2_stop) == 1 or mix_2 < 0.7 then 
			set(engine_2_fuel, 6) set(engine_2_fuel2, 6)
			nozzle_pressure = 0 
		else 
			set(engine_2_fuel, 0) set(engine_2_fuel2, 0) 
		end
		sys_data_tbl.eng_nozzle_pressure_2 = nozzle_pressure
		sys_data_tbl.eng_fuel_p_factor_2 = sys_data_tbl.eng_fuel_p_factor_2 - (sys_data_tbl.eng_fuel_p_factor_2 - press_2) * passed / (2 + 4.5 * bool2int (sys_data_tbl.eng_fuel_p_factor_2 < press_2))
		
		p_rat = pressure_ratio(kvd_3,temp)
		dP_noz = nozzle_pressure_drop(Flow_3)
		nozzle_pressure = p_rat *  pressure_ambient / 101325 + dP_noz
		if get(fuel_in_3) == 0 or filled_3 == 0 or get(eng_fuel_pmp_fail_3) == 1 or get(rt3_stop) == 1 or mix_3 < 0.7 then 
			set(engine_3_fuel, 6) set(engine_3_fuel2, 6)
			nozzle_pressure = 0 
		else 
			set(engine_3_fuel, 0) set(engine_3_fuel2, 0) 
		end
		sys_data_tbl.eng_nozzle_pressure_3 = nozzle_pressure
		sys_data_tbl.eng_fuel_p_factor_3 =  sys_data_tbl.eng_fuel_p_factor_3 - (sys_data_tbl.eng_fuel_p_factor_3 - press_3) * passed / (2 + 4.5 * bool2int (sys_data_tbl.eng_fuel_p_factor_3 < press_3))

		-- set results
		set(eng_fuel_press_1, low_p_1)
		set(eng_fuel_press_2, low_p_2)
		set(eng_fuel_press_3, low_p_3)
		
		set(fire_vlv_open_1, valve_1)
		set(fire_vlv_open_2, valve_2)
		set(fire_vlv_open_3, valve_3)
		
		set(db1,press_1)
		set(db2,press_2)
		set(db3,press_3)
		set(db4,filled_1)
		set(db5,sys_data_tbl.eng_line_fill_1)

	end


end