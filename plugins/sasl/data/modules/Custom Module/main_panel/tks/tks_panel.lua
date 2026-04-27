-- this is TKS panel logic

-- controls
defineProperty("tks_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode")) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК
defineProperty("tks_user", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode_left")) -- потребители 0 - контр, 1 - осн
defineProperty("tks_source", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode_right")) --  коррекция 0 - контр, 1 - осн
defineProperty("tks_course_set", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_course_set")) -- задатчик курса
defineProperty("tks_corrr_button", globalPropertyi("tu154b2/custom/buttons/ovhd/tks_corrr_button")) -- кнопка согласования
defineProperty("tks_lat_set", globalPropertyf("tu154b2/custom/rotary/ovhd/tks_lat_set")) -- ручка установки широты

defineProperty("stabil_ga_main", globalPropertyi("tu154b2/custom/switchers/ovhd/stabil_ga_main")) -- стабилизация ГА по крену осн
defineProperty("stabil_ga_reserv", globalPropertyi("tu154b2/custom/switchers/ovhd/stabil_ga_reserv")) -- стабилизация ГА резерв
defineProperty("zaval_osn", globalPropertyi("tu154b2/custom/tks/ga1_tilt"))
defineProperty("zaval_kontr", globalPropertyi("tu154b2/custom/tks/ga2_tilt"))
-- sources
defineProperty("fail_left", globalPropertyi("tu154b2/custom/tks/fail_left")) -- флаг отказа
defineProperty("fail_right", globalPropertyi("tu154b2/custom/tks/fail_right")) -- флаг отказа

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("mgv_flag", globalPropertyf("tu154b2/custom/gyro/mgv_contr_flag")) -- отказ МГВ
defineProperty("mgv_contr_fail", globalPropertyi("tu154b2/custom/bkk/mgv_contr_fail")) -- сигнал с БКК - отказ МГВ контр

-- lamps
defineProperty("tks_main_fail", globalPropertyf("tu154b2/custom/lights/small/tks_main_fail")) -- отказ осн ГА на ТКС
defineProperty("tks_contr_fail", globalPropertyf("tu154b2/custom/lights/small/tks_contr_fail")) -- отказ контр ГА на ТКС

defineProperty("ga_main_fail", globalPropertyf("tu154b2/custom/lights/ga_main_fail")) -- нет резерва Г
defineProperty("ga_reserve_fail", globalPropertyf("tu154b2/custom/lights/ga_reserve_fail")) -- нет резерва Г


defineProperty("lamp_test", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0
defineProperty("day_night_set", globalPropertyf("tu154b2/custom/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.


-- sounds
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))



local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_2_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local switcher_2_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=0.17841671
local panel_z=-22.451216
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


local sw_last = 0
local summ2_last = 0
local butt_last = get(tks_corrr_button)

local function switchers_check(gain_L, gain_R,dist)
	local tks_mode_sw = get(tks_mode)
	local tks_user_sw = get(tks_user)
	local tks_source_sw = get(tks_source)
	local tks_course_set_sw = get(tks_course_set)
	
	local sw_summ = tks_mode_sw + tks_user_sw + tks_source_sw
	local summ2=tks_course_set_sw
	
	if sw_summ ~= sw_last then 
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if summ2 ~= summ2_last then 
		setSampleGain(switcher_2_sound_L,gain_L*dist)
		setSampleGain(switcher_2_sound_R,gain_R*dist)
		playSample(switcher_2_sound_L, false)
		playSample(switcher_2_sound_R, false)
	end
	sw_last = sw_summ
	summ2_last=summ2
	local butt_now = get(tks_corrr_button)

	if butt_last ~= butt_now then 
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	butt_last = butt_now

end


local function lamps()
	
	
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	-- lamp main
	--local mgv = get(mgv_contr_fail) == 1 or get(mgv_flag) == 1
	
	local tks_main_fail_brt = math.max(get(zaval_osn) * lamps_brt, 0)
	set(tks_main_fail, tks_main_fail_brt)
	
	

	
	local tks_contr_fail_brt = math.max(get(zaval_kontr) * lamps_brt, 0)
	set(tks_contr_fail, tks_contr_fail_brt)
	
	
	local test_btn = get(lamp_test) * math.max(get(bus27_volt_right) - 10 / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	local fail_main = bool2int(get(fail_left) == 1)
	local ga_main_fail_brt = math.max(fail_main * lamps_brt, test_btn)
	set(ga_main_fail, ga_main_fail_brt)
	local fail_aux = bool2int(get(fail_right) == 1)
	local ga_reserve_fail_brt = math.max(fail_aux * lamps_brt, test_btn)
	set(ga_reserve_fail, ga_reserve_fail_brt)
	
	
	
end



tks_align_cmd = createCommand("t154/tks_align", "TKS_align")

function tks_align_hnd(phase)
	if phase == SASL_COMMAND_BEGIN then
        set(tks_corrr_button, 1)
	elseif phase == SASL_COMMAND_END then
        set(tks_corrr_button, 0)
    end
	return 0
end

registerCommandHandler(tks_align_cmd, 0, tks_align_hnd)



function update()
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
	
	switchers_check(gain_L, gain_R,dist)
	
	lamps()	
	
	
	
end
