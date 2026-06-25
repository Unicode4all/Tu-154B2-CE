-- this is trimmers logic
-- defineProperty("absu_debug1", globalPropertyf("tu154b2/custom/controlls/absu_debug1")) 
-- defineProperty("absu_debug2", globalPropertyf("tu154b2/custom/controlls/absu_debug2")) 


-- controls
defineProperty("elev_trimm_sw", globalPropertyi("tu154b2/custom/controll/elev_trimm_switcher")) -- ручка управления триммером РВ. -1 - пикирование, 0 - нейтр, +1 кабрирование
defineProperty("ail_trimm_sw", globalPropertyi("tu154b2/custom/controll/ail_trimm_sw")) -- переключатель триммера элеронов
defineProperty("rudd_trimm_sw", globalPropertyi("tu154b2/custom/controll/rudd_trimm_sw")) -- переключатель триммера РН

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment
defineProperty("warning_volume_ratio", globalPropertyf("sim/operation/sound/warning_volume_ratio")) -- 

defineProperty("emerg_elev_trimm", globalPropertyi("tu154b2/custom/switchers/console/emerg_elev_trimm")) -- аварийное управление триммером


defineProperty("absu_pitch_trimm", globalPropertyi("tu154b2/custom/absu/absu_pitch_trimm")) -- комманда триммеру от АБСУ. +1 = вверх, -1 = ввениз
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG


-- results
defineProperty("int_pitch_trim", globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim")) -- положение триммера руля высоты
defineProperty("int_roll_trim", globalPropertyf("tu154b2/custom/trimmers/int_roll_trim")) -- положение триммера элеронов
defineProperty("int_yaw_trim", globalPropertyf("tu154b2/custom/trimmers/int_yaw_trim")) -- положение триммера руля направления


defineProperty("absu_roll_mode", globalPropertyi("tu154b2/custom/gauges/console/absu_roll_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб
defineProperty("absu_pitch_mode", globalPropertyi("tu154b2/custom/gauges/console/absu_pitch_mode")) -- режим работы АБСУ. 0 - выкл, 1 - штурвальный, 2 - стаб




-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

defineProperty("ctr_27_L_cc", globalPropertyf("tu154b2/custom/control/ctr_27_L_cc")) -- нагрузка на сеть
defineProperty("ctr_27_R_cc", globalPropertyf("tu154b2/custom/control/ctr_27_R_cc")) -- нагрузка на сеть

defineProperty("ctr_36L_cc", globalPropertyf("tu154b2/custom/control/ctr_36L_cc")) -- нагрузка на сеть
defineProperty("ctr_36R_cc", globalPropertyf("tu154b2/custom/control/ctr_36R_cc")) -- нагрузка на сеть

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
defineProperty("rel_trim_rud", globalPropertyi("sim/operation/failures/rel_trim_rud")) -- 
defineProperty("rel_trim_ail", globalPropertyi("sim/operation/failures/rel_trim_ail")) -- 
defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv")) -- 
defineProperty("trim_emerg_elv_fail", globalPropertyi("tu154b2/custom/failures/trim_emerg_elv_fail")) --

-- other
defineProperty("elev_trimm_1_pk", globalPropertyi("sim/custom/b2/elev_trimm_1_pk")) -- 
defineProperty("elev_trimm_2_pk", globalPropertyi("sim/custom/b2/elev_trimm_2_pk")) -- 

emer_trim_cb = globalPropertyi("sim/custom/switchers/emerg_trimm_azs")

defineProperty("pedal_left_sw", globalPropertyi("sim/custom/other/pedal_left_sw")) -- 
defineProperty("pedal_right_sw", globalPropertyi("sim/custom/other/pedal_right_sw")) -- 
defineProperty("pedal_left_pos", globalPropertyf("sim/custom/other/pedal_left_pos")) -- 
defineProperty("pedal_right_pos", globalPropertyf("sim/custom/other/pedal_right_pos")) -- 
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

-- sound
local trimm_up = loadSample(moduleDirectory .. '/Custom Sounds/trimm_up.wav')
local trimm_down = loadSample(moduleDirectory .. '/Custom Sounds/trimm_down.wav')
local trimm_ctr = loadSample(moduleDirectory .. '/Custom Sounds/trimm_ctr.wav')
--local trimm_sound = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm.wav') --
local trimm_el = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm_EL.wav') --
local trimm_rn = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm_RN.wav') --
local trimm_L_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm_L.wav') --
local trimm_L_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm_R.wav') --
local trimm_R_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm_L.wav') --
local trimm_R_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/trimm_R.wav') --

local pitch_trim_power = true
local roll_trim_power = true
local yaw_trim_power = true

local panel_x=-0.5033667
local panel_z=-23.238739
local dist_gain=5

local trimm_pitch_last = 0
local trimm_roll_last = 0
local trimm_yaw_last = 0
local external = get(external_view)
local warn_vl = get(warning_volume_ratio)
local trim_block=0
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

function update()
	local MASTER = get(ismaster) ~= 1
	
	-- initial
	local passed = get(frame_time)
	local power_27_L = bool2int(get(bus27_volt_left) > 13)
	local power_27_R = bool2int(get(bus27_volt_right) > 13)
	local power36_L = bool2int(get(bus36_volt_pts250_2) > 30)
	local power36_R = bool2int(get(bus36_volt_right) > 30)
	
	local CC_27L = get(ctr_27_L_cc)
	local CC_27R = get(ctr_27_R_cc)
	
	local elev_tr_sw = get(elev_trimm_sw)
	local emer_tr_sw = get(emerg_elev_trimm)
	local absu_tr_pt = get(absu_pitch_trimm)
	
	if get(absu_pitch_mode) == 2 then
		elev_tr_sw = 0
		emer_tr_sw = 0
	end
	
	-- pitch trimmer --
	local trim_1_pow=(1-get(elev_trimm_1_pk))*power36_L * power_27_L
	local trim_2_pow=(1-get(elev_trimm_2_pk))*power36_R * power_27_R
	local pitch_trim_eng = trim_1_pow+trim_2_pow
	local pitch_trim_pos = get(int_pitch_trim)
	-- block main trimmer with emergency switch
	local emer_cb=get(emer_trim_cb)
	if emer_tr_sw~=0 and emer_cb==1 then
		trim_block=1
	elseif emer_cb==0 and trim_block==1 then
		trim_block=0
	end
	--if pitch_trim_pos >= 0 then 
		pitch_trim_pos = pitch_trim_pos + elev_tr_sw * passed * pitch_trim_eng * 0.021525 * power_27_L  * bool2int(get(rel_trim_elv) ~= 6 ) * (1-trim_block)
		pitch_trim_pos = pitch_trim_pos + absu_tr_pt * passed * math.max(trim_1_pow,trim_2_pow) * 0.021525
		pitch_trim_pos = pitch_trim_pos + emer_tr_sw * passed * trim_1_pow * 0.021525 * (1 - get(trim_emerg_elv_fail)) * power_27_L * emer_cb
	-- else 
		-- pitch_trim_pos = pitch_trim_pos + elev_tr_sw * passed * power_27_L * power_27_R * (power36_L + power36_R) * pitch_trim_eng * 0.011 * pitch_trimm_work
		-- pitch_trim_pos = pitch_trim_pos + absu_tr_pt * passed * power_27_L * power_27_R * (power36_L + power36_R) * bool2int(get(elev_trimm_1_pk)+get(elev_trimm_2_pk) < 2) * 0.005 * pitch_trimm_work
		-- pitch_trim_pos = pitch_trim_pos + emer_tr_sw * passed * power_27_L * power36_L * 0.022 * (1 - get(trim_emerg_elv_fail))
	-- end
	
	if pitch_trim_pos > 0.517 then pitch_trim_pos = 0.517
	elseif pitch_trim_pos < -0.344 then pitch_trim_pos = -0.344 end

if MASTER then	
	set(int_pitch_trim, pitch_trim_pos)
end

	if pitch_trim_pos ~= trimm_pitch_last then
		set(ctr_36L_cc, power36_L)
		set(ctr_36R_cc, power36_R)
	else
		set(ctr_36L_cc, 0)
		set(ctr_36R_cc, 0)
	end
	
	trimm_pitch_last = pitch_trim_pos
	
	
	-- roll trimmer --
	local roll_trim_pos = get(int_roll_trim) + get(ail_trimm_sw) * passed * power_27_L * 0.02 * bool2int(get(rel_trim_ail) ~= 6)

	if roll_trim_pos > 0.24 then roll_trim_pos = 0.24
	elseif roll_trim_pos < -0.24 then roll_trim_pos = -0.24 end
    
    
    
    
	local dist = -get(pilot_Z) +1.42 + 9 
    
	--setSampleGain(trimm_sound, 5*math.max(dist*  13.52 -377.2, 0))
    -- setSamplePosition(trimm_sound, 0.00515, -2.3967, -21.3144)
    -- setSampleMaxDistance(trimm_sound, 0.001)
    --set(db1,math.max(dist*  13.52 -377.2, 0))
	setSampleGain(trimm_el, 10*math.max(dist*  13.52 -377.2, 0))
    -- setSamplePosition(trimm_el, 0.00515, -2.3967, -21.3144)
    -- setSampleMaxDistance(trimm_el, 0.001)
	
	setSampleGain(trimm_rn, 10*math.max(dist* 13.52 -377.2, 0))
    -- setSamplePosition(trimm_rn, 0.00515, -2.3967, -21.3144)
    -- setSampleMaxDistance(trimm_rn, 0.001)
    
if MASTER then	
	set(int_roll_trim, roll_trim_pos)
end

	if roll_trim_pos ~= trimm_roll_last then
		set(ctr_27_L_cc, CC_27L + 3)
	end
	
	
	trimm_roll_last = roll_trim_pos
	
	
	-- yaw trimmer --
	local yaw_trim_pos = get(int_yaw_trim) + get(rudd_trimm_sw) * passed * power_27_R * 0.02 * bool2int(get(rel_trim_rud) ~= 6)
	
	if yaw_trim_pos > 0.2 then yaw_trim_pos = 0.2
	elseif yaw_trim_pos < -0.2 then yaw_trim_pos = -0.2 end
    
	if external == 0 and (get(pedal_left_sw) ~= 0 and get(bus36_volt_left) > 15 and get(pedal_left_pos) < 1 and get(pedal_left_pos) > 0) then 
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
		setSampleGain(trimm_L_sound_L,gain_L*dist)
		setSampleGain(trimm_L_sound_R,gain_R*dist)		
		if not isSamplePlaying(trimm_L_sound_L) then 
			playSample(trimm_L_sound_L, false)
			playSample(trimm_L_sound_R, false)
		end
	else
		stopSample(trimm_L_sound_L) 
		stopSample(trimm_L_sound_R) 
	end
    
	if external == 0 and (get(pedal_right_sw) ~= 0 and get(bus36_volt_right) > 5 and get(pedal_right_pos) < 1 and get(pedal_right_pos) > 0) then 
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain2_L, gain2_R = inn_balance (-1*panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain2_L=gain2_L*500
		gain2_R=gain2_R*500
		local dist2=1
		if z_pos-panel_z~=0 then
			dist2=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos+panel_x,2))/dist_gain)
		end
		setSampleGain(trimm_R_sound_L,gain2_L*dist2)
		setSampleGain(trimm_R_sound_R,gain2_R*dist2)		
		if not isSamplePlaying(trimm_R_sound_L) then 
			playSample(trimm_R_sound_L, false)
			playSample(trimm_R_sound_R, false)
		end
	else
		stopSample(trimm_R_sound_L) 
		stopSample(trimm_R_sound_R) 
	end
	
	
	if external == 0 and get(ail_trimm_sw) ~= 0 and get(bus27_volt_left) > 13 and roll_trim_pos > -0.24 and roll_trim_pos < 0.24 then
		if not isSamplePlaying(trimm_el) then 
			playSample(trimm_el, false) 
		end
	else
		stopSample(trimm_el) 
	end
	if external == 0 and get(rudd_trimm_sw) ~= 0 and get(bus27_volt_right) > 13 and yaw_trim_pos > -0.2 and yaw_trim_pos < 0.2 then
		if not isSamplePlaying(trimm_rn) then 
			playSample(trimm_rn, false) 
		end
	else
		stopSample(trimm_rn)
	end
    
    

if MASTER then	
	set(int_yaw_trim, yaw_trim_pos)
end
	
	if yaw_trim_pos ~= trimm_yaw_last then
		set(ctr_27_R_cc, CC_27R + 3)
	end
	
	trimm_yaw_last = yaw_trim_pos


end



-- turn pitch trimmer UP
pitch_UP_comm = findCommand("sim/flight_controls/pitch_trim_up")
function pitch_UP_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(elev_trimm_sw, 1)
		--if 0 == phase then playSample(trimm_up, false) end
	else
		set(elev_trimm_sw, 0)
		--playSample(trimm_ctr, false)
    end
return 0
end
registerCommandHandler(pitch_UP_comm, 0, pitch_UP_hnd)

-- turn pitch trimmer DOWN
pitch_DOWN_comm = findCommand("sim/flight_controls/pitch_trim_down")
function pitch_DOWN_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(elev_trimm_sw, -1)
		--if 0 == phase then playSample(trimm_down, false) end
	else
		set(elev_trimm_sw, 0)
		--playSample(trimm_ctr, false)
    end
return 0
end
registerCommandHandler(pitch_DOWN_comm, 0, pitch_DOWN_hnd)

-- turn pitch trimmer CENTER
pitch_TO_comm = findCommand("sim/flight_controls/pitch_trim_takeoff")
function pitch_TO_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		if pitch_trim_power then set(int_pitch_trim, 0)  end
    end
return 0
end
registerCommandHandler(pitch_TO_comm, 0, pitch_TO_hnd)




-- turn roll trimmer LEFT
roll_LEFT_comm = findCommand("sim/flight_controls/aileron_trim_left")
function roll_LEFT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(ail_trimm_sw, -1)
	else
		set(ail_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(roll_LEFT_comm, 0, roll_LEFT_hnd)

-- turn roll trimmer RIGHT
roll_RIGHT_comm = findCommand("sim/flight_controls/aileron_trim_right")
function roll_RIGHT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(ail_trimm_sw, 1)
	else
		set(ail_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(roll_RIGHT_comm, 0, roll_RIGHT_hnd)

-- turn roll trimmer CTR
roll_CTR_comm = findCommand("sim/flight_controls/aileron_trim_center")
function roll_CTR_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		if roll_trim_power then set(int_roll_trim, 0) end
    end
return 0
end
registerCommandHandler(roll_CTR_comm, 0, roll_CTR_hnd)




-- turn yaw trimmer LEFT
yaw_LEFT_comm = findCommand("sim/flight_controls/rudder_trim_left")
function yaw_LEFT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(rudd_trimm_sw, -1)
	else
		set(rudd_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(yaw_LEFT_comm, 0, yaw_LEFT_hnd)

-- turn yaw trimmer RIGHT
yaw_RIGHT_comm = findCommand("sim/flight_controls/rudder_trim_right")
function yaw_RIGHT_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		set(rudd_trimm_sw, 1)
	else
		set(rudd_trimm_sw, 0)
    end
return 0
end
registerCommandHandler(yaw_RIGHT_comm, 0, yaw_RIGHT_hnd)

-- turn yaw trimmer CTR
yaw_CTR_comm = findCommand("sim/flight_controls/rudder_trim_center")
function yaw_CTR_hnd(phase)  -- for all commands phase equals: 0 on press; 1 while holding; 2 on release
	if (1 == phase or 0 == phase) then
		if yaw_trim_power then set(int_yaw_trim, 0) end
    end
return 0
end
registerCommandHandler(yaw_CTR_comm, 0, yaw_CTR_hnd)