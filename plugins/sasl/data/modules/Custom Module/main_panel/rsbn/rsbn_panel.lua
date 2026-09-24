-- this is RSBN panel

-- controls
rsbn_control_strobe = globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_control_strobe") -- контроль строба РСБН
rsbn_control_azimuth = globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_control_azimuth") -- контроль нуля азимут РСБН
rsbn_control_distance = globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_control_distance") -- контроль нуля дальность РСБН

rsbn_ch_ten = globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_ch_ten") -- установки десятков канала
rsbn_ch_one = globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_ch_one") -- установки единиц канала


rsbn_on = globalPropertyi("tu154b2/custom/switchers/ovhd/rsbn_on") -- питание РСБН
rsbn_recon = globalPropertyi("tu154b2/custom/switchers/ovhd/rsbn_recon") -- опознавание РСБН

test_lamps = globalPropertyi("tu154b2/custom/buttons/lamp_test_front") -- кнопка проверки ламп 
day_night_set = globalPropertyf("tu154b2/custom/lights/day_night_set") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


-- gauges
rsbn_azimuth_ind = globalPropertyf("tu154b2/custom/gauges/misc/rsbn_azimuth_ind") -- азимут РСБН
rsbn_distance_km = globalPropertyf("tu154b2/custom/gauges/misc/rsbn_distance_km") -- дистанция РСБН
rsbn_km_one = globalPropertyf("tu154b2/custom/gauges/misc/rsbn_km_one") -- барабанчик единиц км
rsbn_km_ten = globalPropertyf("tu154b2/custom/gauges/misc/rsbn_km_ten") -- барабанчик десятков км
rsbn_km_hun = globalPropertyf("tu154b2/custom/gauges/misc/rsbn_km_hun") -- барабанчик сотен км

-- lamps
dist_autonom = globalPropertyf("tu154b2/custom/lights/dist_autonom") -- дистанция
azimuth_autonom = globalPropertyf("tu154b2/custom/lights/azimuth_autonom") -- азимут

set(dist_autonom, 1)
set(azimuth_autonom, 1)

-- sources
distance = globalPropertyf("tu154b2/custom/rsbn/distance") -- геометрическая дистанция от маяка
azimuth = globalPropertyf("tu154b2/custom/rsbn/azimuth") -- азимут от маяка

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

-- other sources
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27
rsbn_rec = globalPropertyi("tu154b2/custom/failures/rsbn_rec")

pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")
--azimuth_init = globalPropertyi("tu154b2/custom/rsbn/azimuth_init")
dist_in = globalPropertyi("tu154b2/custom/rsbn/dist_init")

lamp_1 = globalPropertyi("tu154b2/custom/failures/lamp_10")

local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=-0.16684729
local panel_z=-22.450119
local dist_gain=5

local dist_01_init = get(dist_in) % 10
	
local dist_one_init = math.floor((get(dist_in) % 100) * 0.1) + math.max(math.max((dist_01_init  - 8) / 2, 0), 0)

local dist_10_init = math.floor((get(dist_in) % 1000) * 0.01) + math.max(math.max((dist_one_init  - 9), 0), 0)

local dist_100_init= math.floor((get(dist_in) % 10000) * 0.001) + math.max(math.max((dist_10_init - 9), 0), 0)


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

local passed = 0

local but_summ_last = 0

local function buttons(gain_L, gain_R,dist)
	local rsbn_control_strobe_sw = get(rsbn_control_strobe)
	local rsbn_control_azimuth_sw = get(rsbn_control_azimuth)
	local rsbn_control_distance_sw = get(rsbn_control_distance)

	local but_summ = rsbn_control_strobe_sw + rsbn_control_azimuth_sw + rsbn_control_distance_sw
	
	if but_summ ~= but_summ_last then 
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	
	
	but_summ_last = but_summ


end

local rot_summ_last = 0

local function rotary(gain_L, gain_R,dist)

	local rsbn_ch_ten_sw = get(rsbn_ch_ten)
	local rsbn_ch_one_sw = get(rsbn_ch_one)
	
	local summ = rsbn_ch_ten_sw + rsbn_ch_one_sw
	
	
	if summ ~= rot_summ_last then 
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	rot_summ_last = summ


end


local azimuth_act = 0
local dist_act = 0

local function gauges()

	local azim = get(azimuth) -- deg
	
	local az_delta = azim - azimuth_act
	if az_delta > 180 then az_delta = az_delta - 360
	elseif az_delta < -180 then az_delta = az_delta + 360 end
	
	
	if az_delta > 1 then azimuth_act = azimuth_act + passed * 30
	elseif az_delta < -1 then azimuth_act = azimuth_act - passed * 30
	else azimuth_act = azimuth_act + az_delta * passed * 30
	end
	
--	azimuth_act = azimuth_act + az_delta * passed * 5
	
	
	
	
	set(rsbn_azimuth_ind, azimuth_act)
	
	
	
	
	
	local dist = get(distance) * 10 -- km
	
	local dist_delta = dist - dist_act
	
	if dist_delta > 10 then dist_act = dist_act + passed * 60
	elseif dist_delta < -10 then dist_act = dist_act - passed * 60
	else dist_act = dist_act + dist_delta * passed * 6
	end
	
	local dist_01 = dist_act % 10
	
	local dist_one = math.floor((dist_act % 100) * 0.1) + math.max(math.max((dist_01  - 8) / 2, 0), 0)
	
	local dist_10 = math.floor((dist_act % 1000) * 0.01) + math.max(math.max((dist_one  - 9), 0), 0)
	
	local dist_100 = math.floor((dist_act % 10000) * 0.001) + math.max(math.max((dist_10 - 9), 0), 0)
	
	
	
	set(rsbn_distance_km, dist_01 * 0.1)
	set(rsbn_km_one, dist_one)
	set(rsbn_km_ten, dist_10)
	set(rsbn_km_hun, dist_100)



end


local function lamps()
	
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night

	local dist_autonom_brt = math.max(bool2int(get(rsbn_rec) == 0) * lamps_brt * get(rsbn_on), test_btn) * (1 - get(lamp_1))
	set(dist_autonom, dist_autonom_brt)
	
	local azimuth_autonom_brt = math.max(bool2int(get(rsbn_rec) == 0) * lamps_brt * get(rsbn_on), test_btn)
	set(azimuth_autonom, azimuth_autonom_brt)
	
end




function update()
	passed = get(frame_time)
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
	
	buttons(gain_L, gain_R,dist)
	rotary(gain_L, gain_R,dist)
	gauges()
	lamps()

end