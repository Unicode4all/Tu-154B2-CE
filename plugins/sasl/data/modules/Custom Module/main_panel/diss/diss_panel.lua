-- this is DISS panel - B-57

-- controls
diss_on = globalPropertyi("tu154b2/custom/switchers/ovhd/diss_on") -- питание ДИСС
diss_mode = globalPropertyi("tu154b2/custom/switchers/ovhd/diss_mode") -- режим дисс. 0 - море, 1 - суша
nvu_calc_set = globalPropertyi("tu154b2/custom/switchers/ovhd/nvu_calc_set") -- счисление. -1 - контроль ДИСС в полете, 0 - НВУ по СВС, 1 - НВУ по ДИСС


wind_set = globalPropertyf("tu154b2/custom/rotary/console/wind_set") -- установка ветра

wind_course_left = globalPropertyi("tu154b2/custom/button/console/wind_course_left") -- кнопка установки курса ветра 
wind_course_ctr = globalPropertyi("tu154b2/custom/button/console/wind_course_ctr") -- кнопка установки курса ветра 
wind_course_right = globalPropertyi("tu154b2/custom/button/console/wind_course_right") -- кнопка установки курса ветра 

wind_spd_left = globalPropertyi("tu154b2/custom/button/console/wind_spd_left") -- кнопка установки скорости ветра 
wind_spd_ctr = globalPropertyi("tu154b2/custom/button/console/wind_spd_ctr") -- кнопка установки скорости ветра 
wind_spd_right = globalPropertyi("tu154b2/custom/button/console/wind_spd_right") -- кнопка установки скорости ветра 

test_lamps = globalPropertyi("tu154b2/custom/buttons/lamp_test_front") -- кнопка проверки ламп 
day_night_set = globalPropertyf("tu154b2/custom/lights/day_night_set") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


-- power
bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus115_volt = globalPropertyf("tu154b2/custom/elec/bus115_1_volt") -- напряжение на сети 115в

-- sources
diss_wind_course = globalPropertyf("tu154b2/custom/nvu/diss_wind_course") -- курс ветра по ДИСС
diss_wind_spd = globalPropertyf("tu154b2/custom/nvu/diss_wind_spd") -- скорость ветра по ДИСС


diss_mode_set = globalPropertyi("tu154b2/custom/nvu/diss_mode") -- режим ДИСС. 0 - выкл, 1 - работа, 2 - память, 10 - отказ

-- other sources
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27



-- panel results
diss_abs_angle_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_abs_angle_1") -- барабанчик единиц угла
diss_abs_angle_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_abs_angle_10") -- барабанчик единиц угла
diss_abs_angle_100 = globalPropertyf("tu154b2/custom/gauges/misc/diss_abs_angle_100") -- барабанчик единиц угла
diss_plus_angle_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_plus_angle_1") -- барабанчик единиц угла
diss_plus_angle_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_plus_angle_10") -- барабанчик единиц угла
diss_minus_angle_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_minus_angle_1") -- барабанчик единиц угла
diss_minus_angle_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_minus_angle_10") -- барабанчик единиц угла
diss_wind_spd_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_wind_spd_1") -- барабанчик единиц угла
diss_wind_spd_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_wind_spd_10") -- барабанчик единиц угла
diss_wind_spd_100 = globalPropertyf("tu154b2/custom/gauges/misc/diss_wind_spd_100") -- барабанчик единиц угла

-- lamps
diss_memory = globalPropertyf("tu154b2/custom/lights/diss_memory") -- память ДИСС



-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

-- engines
eng1_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
eng2_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[1]") -- engine 2 rpm
eng3_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[2]") -- engine 3 rpm

pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")

lamp_1 = globalPropertyi("tu154b2/custom/failures/lamp_7")

local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=0.008189878
local panel_z=-22.453236
local panel_nvu_x=0
local panel_nvu_z=-22.397625
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

local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(diss_on, 0)
		set(diss_mode, 0)
		set(nvu_calc_set, 0)
		
	end
	
	notLoaded = false

end








local sw_summ_last = 0

local function switchers(gain_L, gain_R,dist)
	
	local diss_on_sw = get(diss_on)
	local diss_mode_sw = get(diss_mode)
	local nvu_mode_sw = get(nvu_calc_set)
	
	local summ = diss_on_sw + diss_mode_sw + nvu_mode_sw	
	
	if summ ~= sw_summ_last then 
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	
	sw_summ_last = summ
	

end



local but_summ_last = 0

local function buttons(gain_L, gain_R,dist)

	local wind_course_left_sw = get(wind_course_left)
	local wind_course_ctr_sw = get(wind_course_ctr)
	local wind_course_right_sw = get(wind_course_right)
	
	local wind_spd_left_sw = get(wind_spd_left)
	local wind_spd_ctr_sw = get(wind_spd_ctr)
	local wind_spd_right_sw = get(wind_spd_right)

	local summ = wind_course_left_sw + wind_course_ctr_sw + wind_course_right_sw
	summ = summ + wind_spd_left_sw + wind_spd_ctr_sw + wind_spd_right_sw
	
	if but_summ_last ~= summ then 
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end

	but_summ_last = summ

end





local function lamps()

	
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night

	local diss_memory_brt = math.max(bool2int(get(diss_mode_set) == 2 or get(diss_mode_set) == 10) * lamps_brt, test_btn) * (1 - get(lamp_1))
	set(diss_memory, diss_memory_brt)
	
	--set(diss_memory, bool2int(get(diss_mode_set) == 2))

end




function update()

	local passed = get(frame_time)
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end
	
	
	
	-- correction angle
	local corr_angle = get(wind_set)
	
	local cor_plus_1 = math.max(-corr_angle, 0) % 10
	
	local cor_plus_10 = math.floor((math.max(-corr_angle, 0) % 100) * 0.1) + math.max(math.max((cor_plus_1  - 9), 0), 0)
	
	set(diss_plus_angle_1, cor_plus_1)
	set(diss_plus_angle_10, cor_plus_10)

	
	local cor_minus_1 = math.max(corr_angle, 0) % 10
	
	local cor_minus_10 = math.floor((math.max(corr_angle, 0) % 100) * 0.1) + math.max(math.max((cor_minus_1  - 9), 0), 0)
	
	set(diss_minus_angle_1, cor_minus_1)
	set(diss_minus_angle_10, cor_minus_10)
	
	
	-- wind course indication
	local wind_course = get(diss_wind_course) + corr_angle
	
	if wind_course >= 360 then wind_course = wind_course - 360
	elseif wind_course < 0 then wind_course = wind_course + 360 end

	local wind_crs_1 = wind_course % 10
	
	local wind_crs_10 = math.floor((wind_course % 100) * 0.1) + math.max(math.max((wind_crs_1  - 9), 0), 0)
	
	local wind_crs_100 = math.floor((wind_course % 1000) * 0.01) + math.max(math.max((wind_crs_10 - 9), 0), 0)

	set(diss_abs_angle_1, wind_crs_1)
	set(diss_abs_angle_10, wind_crs_10)
	set(diss_abs_angle_100, wind_crs_100)
	
	
	-- wind speed indication
	local wind_speed = get(diss_wind_spd)
	
	local wind_spd_1 = wind_speed % 10
	
	local wind_spd_10 = math.floor((wind_speed % 100) * 0.1) + math.max(math.max((wind_spd_1  - 9), 0), 0)
	
	local wind_spd_100 = math.floor((wind_speed % 1000) * 0.01) + math.max(math.max((wind_spd_10 - 9), 0), 0)

	set(diss_wind_spd_1, wind_spd_1)
	set(diss_wind_spd_10, wind_spd_10)
	set(diss_wind_spd_100, wind_spd_100)
	
	
	
	
	-- functions
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
	
	local gain_nvu_L, gain_nvu_R = inn_balance (panel_nvu_x, panel_nvu_z, x_pos, z_pos , plt_hdg)
	gain_nvu_L=gain_nvu_L*1000
	gain_nvu_R=gain_nvu_R*1000
	local dist_nvu=1
	if z_pos-panel_nvu_z~=0 then
		dist_nvu=math.min(1,1/math.sqrt(math.pow(z_pos-panel_nvu_z,2)+math.pow(x_pos-panel_nvu_x,2))/dist_gain)
	end
	switchers(gain_L, gain_R,dist)
	
	buttons(gain_nvu_L, gain_nvu_R,dist_nvu)
	
	lamps()
	
	





end

