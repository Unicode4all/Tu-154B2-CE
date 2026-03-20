-- this is an antiice panel

-- controls
defineProperty("soi21_on", globalPropertyi("tu154b2/custom/switchers/eng/soi21_on")) -- выключатель СОИ 21
defineProperty("soi21_test", globalPropertyi("tu154b2/custom/buttons/eng/soi21_test")) -- проверка СОИ 21


defineProperty("antiice_slats", globalPropertyi("tu154b2/custom/switchers/eng/antiice_slats")) -- противообледенители
defineProperty("antiice_eng_1", globalPropertyi("tu154b2/custom/switchers/eng/antiice_eng_1")) -- противообледенители
defineProperty("antiice_eng_2", globalPropertyi("tu154b2/custom/switchers/eng/antiice_eng_2")) -- противообледенители
defineProperty("antiice_eng_3", globalPropertyi("tu154b2/custom/switchers/eng/antiice_eng_3")) -- противообледенители
defineProperty("antiice_wing", globalPropertyi("tu154b2/custom/switchers/eng/antiice_wing")) -- противообледенители

defineProperty("window_heat_1", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_1")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_2", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_2")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно
defineProperty("window_heat_3", globalPropertyi("tu154b2/custom/switchers/ovhd/window_heat_3")) -- обогрев стекол. -1 - слабо, 0 - выкл, 1 - сильно

defineProperty("pitot_heat_1", globalPropertyi("tu154b2/custom/switchers/ovhd/pitot_heat_1")) -- обогрев ППД лев
defineProperty("pitot_heat_2", globalPropertyi("tu154b2/custom/switchers/ovhd/pitot_heat_2")) -- обогрев ППД прав
defineProperty("pitot_heat_3", globalPropertyi("tu154b2/custom/switchers/ovhd/pitot_heat_3")) -- обогрев ППД АБСУ



-- lamps
defineProperty("heat_ok_1", globalPropertyf("tu154b2/custom/lights/small/heat_ok_1")) -- лампа исправности обогрева ППД
defineProperty("heat_ok_2", globalPropertyf("tu154b2/custom/lights/small/heat_ok_2")) -- лампа исправности обогрева ППД
defineProperty("heat_ok_3", globalPropertyf("tu154b2/custom/lights/small/heat_ok_3")) -- лампа исправности обогрева ППД

defineProperty("soi_work", globalPropertyf("tu154b2/custom/lights/small/soi_work")) -- лампа исправности обогрева
defineProperty("soi_ice_detected", globalPropertyf("tu154b2/custom/lights/small/soi_ice_detected")) -- лампа обнаружения льда

defineProperty("antiice_slats_lamp", globalPropertyf("tu154b2/custom/lights/small/antiice_slats")) -- лампа исправности обогрева
defineProperty("antiice_eng_1_lamp", globalPropertyf("tu154b2/custom/lights/small/antiice_eng_1")) -- лампа исправности обогрева
defineProperty("antiice_eng_2_lamp", globalPropertyf("tu154b2/custom/lights/small/antiice_eng_2")) -- лампа исправности обогрева
defineProperty("antiice_eng_3_lamp", globalPropertyf("tu154b2/custom/lights/small/antiice_eng_3")) -- лампа исправности обогрева
defineProperty("antiice_wings_lamp", globalPropertyf("tu154b2/custom/lights/small/antiice_wings")) -- лампа исправности обогрева




-- gauges
defineProperty("stab_temp", globalPropertyf("tu154b2/custom/gauges/eng/stab_temp")) -- температура стабилизатора
defineProperty("wing_temp", globalPropertyf("tu154b2/custom/gauges/eng/wing_temp")) -- температура крыла

-- sources
defineProperty("wing_heat_t", globalPropertyf("tu154b2/custom/antiice/wing_heat_t")) -- температура обогрева крыла
defineProperty("stab_heat_t", globalPropertyf("tu154b2/custom/antiice/stab_heat_t")) -- температура обогрева стабилизатора

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))


defineProperty("ice_inlet_heat_1", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[0]"))
defineProperty("ice_inlet_heat_2", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[1]"))
defineProperty("ice_inlet_heat_3", globalProperty("sim/cockpit2/ice/ice_inlet_heat_on_per_engine[2]"))

defineProperty("eng_heat_open_1", globalPropertyi("tu154b2/custom/antiice/eng_heat_open_1")) -- открыта заслонка обогрева двигателя
defineProperty("eng_heat_open_2", globalPropertyi("tu154b2/custom/antiice/eng_heat_open_2")) -- открыта заслонка обогрева двигателя
defineProperty("eng_heat_open_3", globalPropertyi("tu154b2/custom/antiice/eng_heat_open_3")) -- открыта заслонка обогрева двигателя
defineProperty("stab_heat_open", globalPropertyi("tu154b2/custom/antiice/stab_heat_open"))

defineProperty("ice_surfce_heat_on", globalPropertyi("sim/cockpit2/ice/ice_surfce_heat_on"))

defineProperty("ice_detected", globalPropertyi("tu154b2/custom/antiice/ice_detected")) -- обнаружен лед
defineProperty("ice_detect_ok", globalPropertyi("tu154b2/custom/antiice/ice_detect_ok")) -- система СОИ работает

-- failures
defineProperty("ppd_3_heat_fail", globalPropertyi("tu154b2/custom/antiice/ppd_3_heat_fail"))

defineProperty("rel_ice_window_heat", globalPropertyi("sim/operation/failures/rel_ice_window_heat"))
defineProperty("rel_ice_inlet_heat1", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat"))
defineProperty("rel_ice_inlet_heat2", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat2"))
defineProperty("rel_ice_inlet_heat3", globalPropertyi("sim/operation/failures/rel_ice_inlet_heat3"))

defineProperty("rel_ice_pitot_heat1", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat1"))
defineProperty("rel_ice_pitot_heat2", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat2"))
defineProperty("rel_ice_pitot_heat3", globalPropertyi("sim/operation/failures/rel_ice_pitot_heat_stby"))

defineProperty("rel_ice_surf_heat", globalPropertyi("sim/operation/failures/rel_ice_surf_heat"))
defineProperty("rel_ice_surf_heat2", globalPropertyi("sim/operation/failures/rel_ice_surf_heat2"))

defineProperty("wing_heating", globalPropertyi("tu154b2/custom/antiice/wing_heating")) -- работает обогрев крыла
defineProperty("slat_heating", globalPropertyi("tu154b2/custom/antiice/slat_heating")) -- работает обогрев крыла


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

-- sounds
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_sound_2_L= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local switcher_sound_2_R= loadSample(moduleDirectory .. '/Custom Sounds/metal_switch2_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=0.31725052
local panel_z=-22.443937
local dist_gain=5
local panel2_x=0.61342824
local panel2_z=-20.807676


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

local passed = get(frame_time)


-- reset swittchers for cold & dark
local notLoaded = true

local function reset_switchers()
	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(soi21_on, 0)
		set(antiice_slats, 0)
		set(antiice_eng_1, 0)
		set(antiice_eng_2, 0)
		set(antiice_eng_3, 0)
		set(antiice_wing, 0)
		
		set(window_heat_1, 0)
		set(window_heat_2, 0)
		set(window_heat_3, 0)
		
		set(pitot_heat_1, 0)
		set(pitot_heat_2, 0)
		set(pitot_heat_3, 0)
		
	end
	
	notLoaded = false
	
end


local stab_temp_act = 0 --get(stab_heat_t)
local wing_tem_act = 0

local function gauges()

	local stab_t = get(stab_heat_t)
	local wing_t = get(wing_heat_t)
	
	stab_temp_act = stab_temp_act + (stab_t - stab_temp_act) * passed * 5
	wing_tem_act = wing_tem_act + (wing_t - wing_tem_act) * passed * 5
	
	set(stab_temp, stab_temp_act)
	set(wing_temp, wing_tem_act)


end





local soi21_on_last = get(soi21_on)
local antiice_slats_last = get(antiice_slats)
local antiice_eng_1_last = get(antiice_eng_1)
local antiice_eng_2_last = get(antiice_eng_2)
local antiice_eng_3_last = get(antiice_eng_3)
local antiice_wing_last = get(antiice_wing)

local window_heat_1_last = get(window_heat_1)
local window_heat_2_last = get(window_heat_2)
local window_heat_3_last = get(window_heat_3)

local pitot_heat_1_last = get(pitot_heat_1)
local pitot_heat_2_last = get(pitot_heat_2)
local pitot_heat_3_last = get(pitot_heat_3)

local soi21_test_last = get(soi21_test)


local function check_controls(gain_L, gain_R,dist,gain2_L, gain2_R,dist2)

	local soi21_on_sw = get(soi21_on)
	local antiice_slats_sw = get(antiice_slats)
	local antiice_eng_1_sw = get(antiice_eng_1)
	local antiice_eng_2_sw = get(antiice_eng_2)
	local antiice_eng_3_sw = get(antiice_eng_3)
	local antiice_wing_sw = get(antiice_wing)

	local window_heat_1_sw = get(window_heat_1)
	local window_heat_2_sw = get(window_heat_2)
	local window_heat_3_sw = get(window_heat_3)

	local pitot_heat_1_sw = get(pitot_heat_1)
	local pitot_heat_2_sw = get(pitot_heat_2)
	local pitot_heat_3_sw = get(pitot_heat_3)

	local changes = window_heat_1_sw + window_heat_2_sw + window_heat_3_sw - window_heat_1_last - window_heat_2_last - window_heat_3_last 
	
	local changes_eng = soi21_on_sw + antiice_slats_sw + antiice_eng_1_sw + antiice_eng_2_sw + antiice_eng_3_sw + antiice_wing_sw - soi21_on_last - antiice_slats_last - antiice_eng_1_last - antiice_eng_2_last - antiice_eng_3_last - antiice_wing_last
	
	local changes_2 = pitot_heat_1_sw + pitot_heat_2_sw + pitot_heat_3_sw - pitot_heat_1_last - pitot_heat_2_last - pitot_heat_3_last
	if 0 ~= changes then 
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if changes_2~=0 then
		if (pitot_heat_1_sw==1 and pitot_heat_1_last==0) or (pitot_heat_2_sw==1 and pitot_heat_2_last==0) or (pitot_heat_3_sw==1 and pitot_heat_3_last==0) or (pitot_heat_1_sw==0 and pitot_heat_1_last==1) or (pitot_heat_2_sw==0 and pitot_heat_2_last==1) or (pitot_heat_3_sw==0 and pitot_heat_3_last==1)		then
			setSampleGain(switcher_sound_L,gain_L*dist)
			setSampleGain(switcher_sound_R,gain_R*dist)
			playSample(switcher_sound_L, false)
			playSample(switcher_sound_R, false)
		else
			setSampleGain(switcher_sound_2_L,gain_L*dist)
			setSampleGain(switcher_sound_2_R,gain_R*dist)
			playSample(switcher_sound_2_L, false)
			playSample(switcher_sound_2_R, false)
		end
	end
	
	if 0 ~= changes_eng then 
		setSampleGain(switcher_sound_L,gain2_L*dist2)
		setSampleGain(switcher_sound_R,gain2_R*dist2)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	local soi21_test_sw = get(soi21_test)
	
	if soi21_test_sw ~= soi21_test_last then 
		setSampleGain(button_sound_L,gain2_L*dist2)
		setSampleGain(button_sound_R,gain2_R*dist2)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	
	
	soi21_on_last = soi21_on_sw
	antiice_slats_last = antiice_slats_sw
	antiice_eng_1_last = antiice_eng_1_sw
	antiice_eng_2_last = antiice_eng_2_sw
	antiice_eng_3_last = antiice_eng_3_sw
	antiice_wing_last = antiice_wing_sw

	window_heat_1_last = window_heat_1_sw
	window_heat_2_last = window_heat_2_sw
	window_heat_3_last = window_heat_3_sw

	pitot_heat_1_last = pitot_heat_1_sw
	pitot_heat_2_last = pitot_heat_2_sw
	pitot_heat_3_last = pitot_heat_3_sw
	
	soi21_test_last = soi21_test_sw

end




local function lamps()

	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local heat_ok_1_brt = 0
	if get(rel_ice_pitot_heat1) < 6 and get(pitot_heat_1) == -1 then heat_ok_1_brt = lamps_brt end
	set(heat_ok_1, heat_ok_1_brt)
	
	local heat_ok_2_brt = 0
	if get(rel_ice_pitot_heat2) < 6 and get(pitot_heat_2) == -1 then heat_ok_2_brt = lamps_brt end
	set(heat_ok_2, heat_ok_2_brt)
	
	local heat_ok_3_brt = 0
	if get(rel_ice_pitot_heat3) < 6 and get(pitot_heat_3) == -1 then heat_ok_3_brt = lamps_brt end
	set(heat_ok_3, heat_ok_3_brt)
	
	
	local soi_work_brt = get(ice_detect_ok) * lamps_brt
	set(soi_work, soi_work_brt)
	
	local soi_ice_detected_brt = get(ice_detected) * lamps_brt
	set(soi_ice_detected, soi_ice_detected_brt)
	
	
	
	local antiice_slats_brt = get(slat_heating) * lamps_brt
	set(antiice_slats_lamp, antiice_slats_brt)
	
	local antiice_eng_1_brt = 0 
	if get(eng_heat_open_1) == 1 then antiice_eng_1_brt = lamps_brt end
	set(antiice_eng_1_lamp, antiice_eng_1_brt)
	
	local antiice_eng_2_brt = 0 
	if get(eng_heat_open_2) == 1 then antiice_eng_2_brt = lamps_brt end
	set(antiice_eng_2_lamp, antiice_eng_2_brt)
	
	local antiice_eng_3_brt = 0
	if get(eng_heat_open_3) == 1 then antiice_eng_3_brt = lamps_brt end
	set(antiice_eng_3_lamp, antiice_eng_3_brt)
	
	local antiice_wings_brt = 0
	if get(stab_heat_open) == 1 then antiice_wings_brt = lamps_brt end
	set(antiice_wings_lamp, antiice_wings_brt)
	
	


end









local sim_start_timer = 0

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
	local gain2_L, gain2_R = inn_balance (panel2_x, panel2_z, x_pos, z_pos , plt_hdg)
	gain2_L=gain2_L*1000
	gain2_R=gain2_R*1000
	local dist2=1
	if z_pos-panel2_z~=0 then
		dist2=math.min(1,1/math.sqrt(math.pow(z_pos-panel2_z,2)+math.pow(x_pos-panel2_x,2))/dist_gain)
	end
	-- reset switchers
	sim_start_timer = sim_start_timer + passed
	if sim_start_timer > 0.3 then 
		if notLoaded then reset_switchers() end
		
		check_controls(gain_L, gain_R,dist,gain2_L, gain2_R,dist2)
	end
	gauges()
	lamps()





end