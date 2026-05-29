-- this is TCAS panel
size = {2048, 2048}

defineProperty("tcas_on", globalPropertyi("tu154b2/custom/switchers/ovhd/tcas_on"))  -- выключатель TCAS

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154b2/custom/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("tcas_rot_1_L", globalPropertyi("sim/custom/tcas2000/l1"))
defineProperty("tcas_rot_2_L", globalPropertyi("sim/custom/tcas2000/l2"))
defineProperty("tcas_rot_1_R", globalPropertyi("sim/custom/tcas2000/r1"))
defineProperty("tcas_rot_2_R", globalPropertyi("sim/custom/tcas2000/r2"))
defineProperty("tcas_but", globalPropertyi("tu154b2/custom/tcas/tcas_button"))
defineProperty("tcas_sel", globalPropertyi("sim/custom/switchers/tcas_select"))

defineProperty("tcas_mode", globalPropertyi("tu154b2/custom/switchers/tcas/tcas_mode"))  --	режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA
defineProperty("tcas_rot_big", globalPropertyi("tu154b2/custom/switchers/tcas/tcas_rot_big"))  -- большая вертелка
defineProperty("tcas_rot_small", globalPropertyi("tu154b2/custom/switchers/tcas/tcas_rot_small"))  -- малая вертелка
defineProperty("mode_set", globalPropertyi("tu154b2/custom/tcas/mode_set"))  -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA	4

defineProperty("tcas_ident_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_ident_btn"))  -- кнопка IDENT
defineProperty("tcas_fcn_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_fcn_btn"))  -- кнопка FCN
defineProperty("tcas_left_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_left_btn"))  -- кнопка <
defineProperty("tcas_right_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_right_btn"))  -- кнопка >
defineProperty("tcas_ent_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_ent_btn"))  -- кнопка ENT
defineProperty("tcas_atc_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_atc_btn"))  -- кнопка ATC
defineProperty("tcas_alt_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_alt_btn"))  -- кнопка ALT
defineProperty("tcas_rng_dn_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_rng_dn_btn"))  -- кнопка RNG DN
defineProperty("tcas_rng_up_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_rng_up_btn"))  -- кнопка RNG UP

defineProperty("screen_mode", globalPropertyi("tu154b2/custom/tcas/screen_mode"))  -- режим отображения на экране.  -1 = ошибка, 0 = код ответчика, 1 = above mode, 2 = FL mode, 3 = FLT ID, 4 = PLN BIT, 5 = test, 6 = range set, 11-14 = code set
defineProperty("tcas_range_set", globalPropertyi("tu154b2/custom/tcas/range_set"))  -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 15 nm

defineProperty("level_mode", globalPropertyi("tu154b2/custom/tcas/level_mode"))  -- 1 = above, 0 = normal, -1 = below
defineProperty("fl_mode", globalPropertyi("tu154b2/custom/tcas/fl_mode"))  -- 0 = absolute, 1 = relative
defineProperty("flt_id", globalPropertyi("tu154b2/custom/tcas/flt_id"))  -- 0 = cover, 1 = show / change code



defineProperty("xpdr_code", globalPropertyf("sim/cockpit/radios/transponder_code"))
defineProperty("xpdr_mode", globalPropertyf("sim/cockpit/radios/transponder_mode")) 
defineProperty("xpdr_led", globalPropertyf("sim/cockpit/radios/transponder_light"))
ident_cmd = findCommand("sim/transponder/transponder_ident")  -- comand of transponder ident
defineProperty("xpdr_fail", globalPropertyi("sim/operation/failures/rel_xpndr"))

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- TCAS
defineProperty("ra_scale_set", globalPropertyi("sim/cockpit2/tcas/indicators/tcas_message"))  -- RA mode scale set. 0 = none.
defineProperty("traffic_det", globalPropertyi("tu154b2/custom/tcas/traffic_det"))  -- появление желтых или красных меток
defineProperty("vvi", globalPropertyf("sim/flightmodel/position/vh_ind"))  -- vertical velocity of our acf


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm
defineProperty("cas_fail", globalPropertyi("tu154b2/custom/tcas/tcas_fail"))
defineProperty("tss_rot", globalPropertyi("tu154b2/custom/rotary/GNS430/tss_rot"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))


local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/TCAS_rot_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/TCAS_release_L.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/TCAS_rot_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/TCAS_release_R.wav')

local tss_rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/tss_rot_L.wav')
local tss_rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/tss_rot_R.wav')

local panel_x=0.15668914
local panel_z=-22.983282
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
		set(tcas_mode, 0)
	end
	
	notLoaded = false

end











local function getDigits(squawk)
    local d1 = math.floor(squawk / 1000)
    squawk = squawk - d1 * 1000
    local d2 = math.floor(squawk / 100)
    squawk = squawk - d2 * 100
    local d3 = math.floor(squawk / 10)
    local d4 = squawk - d3 * 10
    return d1, d2, d3, d4
end




-- sounds
local ajust_v_speed = loadSample(moduleDirectory .. '/Custom Sounds/tcas/ajust_v_speed.wav')
local clear_conflict = loadSample(moduleDirectory .. '/Custom Sounds/tcas/clear_conflict.wav')
local climb = loadSample(moduleDirectory .. '/Custom Sounds/tcas/climb.wav')
local climb_now = loadSample(moduleDirectory .. '/Custom Sounds/tcas/climb_now.wav')
local climb_cross = loadSample(moduleDirectory .. '/Custom Sounds/tcas/climb_crossing.wav')
local descend = loadSample(moduleDirectory .. '/Custom Sounds/tcas/descend.wav')
local descend_cross = loadSample(moduleDirectory .. '/Custom Sounds/tcas/descend_crossing.wav')
local descend_now = loadSample(moduleDirectory .. '/Custom Sounds/tcas/descend_now.wav')
local increase_climb = loadSample(moduleDirectory .. '/Custom Sounds/tcas/increase_climb.wav')
local increase_descend = loadSample(moduleDirectory .. '/Custom Sounds/tcas/increase_descend.wav')
local maintain_v_speed = loadSample(moduleDirectory .. '/Custom Sounds/tcas/maintain_v_speed.wav')
local maintain_v_speed_cross = loadSample(moduleDirectory .. '/Custom Sounds/tcas/maintain_crossing.wav')
local monitor_v_speed = loadSample(moduleDirectory .. '/Custom Sounds/tcas/monitor_v_speed.wav')
local tcas_test_passed = loadSample(moduleDirectory .. '/Custom Sounds/tcas/tcas_test_passed.wav')
local tcas_test_fail = loadSample(moduleDirectory .. '/Custom Sounds/tcas/tcas_test_fail.wav')
local traffic_snd = loadSample(moduleDirectory .. '/Custom Sounds/tcas/traffic.wav')




local rot_sound = loadSample(moduleDirectory .. '/Custom Sounds/rot_click.wav')
local button_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')

local tcas_rot_big_last = get(tcas_rot_big)
local tcas_rot_small_last = get(tcas_rot_small)
local tcas_mode_last = get(tcas_mode)

local passed = get(frame_time)

mode_timer = 0


-- local tcas_ident_btn_last = get(tcas_ident_btn)
-- local tcas_fcn_btn_last = get(tcas_fcn_btn)
-- local tcas_left_btn_last = get(tcas_left_btn)
-- local tcas_right_btn_last = get(tcas_right_btn)
-- local tcas_ent_btn_last = get(tcas_ent_btn)
-- local tcas_atc_btn_last = get(tcas_atc_btn)
-- local tcas_alt_btn_last = get(tcas_alt_btn)
-- local tcas_rng_dn_btn_last = get(tcas_rng_dn_btn)
-- local tcas_rng_up_btn_last = get(tcas_rng_up_btn)
local sw_prev=0
local changes_rot_prev=0
local changes_but_prev
local tss_rot_prev=0

local text_to_screen = ""
local cursor_timer = 0
local cursor_show = true

local scr_code = get(xpdr_code)

local text_last = get(screen_mode)

local scale_last = 0
--local traffic_last = false

function update()
	passed = get(frame_time)
	local power = (get(bus115_1_volt) > 110 or get(bus115_3_volt) > 110) and get(tcas_on) == 1
	local mode = get(mode_set)
	
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end



	
	-- ident button
	if get(tcas_ident_btn) == 1 and power then commandOnce(ident_cmd) end

	-- check big knob rotation
	local tcas_rot_big_now = get(tcas_rot_big)

	while tcas_rot_big_now > 11 do
		tcas_rot_big_now = tcas_rot_big_now - 10
	end
	while tcas_rot_big_now < -1 do
		tcas_rot_big_now = tcas_rot_big_now + 10
	end
	
	set(tcas_rot_big, tcas_rot_big_now)
	
	
	-- check small knob rotation
	local tcas_rot_small_now = get(tcas_rot_small)

	while tcas_rot_small_now > 11 do
		tcas_rot_small_now = tcas_rot_small_now - 10
	end
	while tcas_rot_small_now < -1 do
		tcas_rot_small_now = tcas_rot_small_now + 10
	end
	
	set(tcas_rot_small, tcas_rot_small_now)
	
	-- mode selector
	local tcas_mode_now = get(tcas_mode)
	
	if tcas_mode_now == -1 then
		mode_timer = mode_timer + passed
		if mode_timer > 5 then
			set(tcas_mode, 0)
		end
	else
		mode_timer = 0
	end
	
	
	
	-- sounds	
	--if tcas_rot_big_now - tcas_rot_big_last + tcas_rot_small_now - tcas_rot_small_last + tcas_mode_now - tcas_mode_last ~= 0 then
		--playSample(rot_sound, false)
	--end
	

	-- local tcas_ident_btn_sw = get(tcas_ident_btn)
	-- local tcas_fcn_btn_sw = get(tcas_fcn_btn)
	-- local tcas_left_btn_sw = get(tcas_left_btn)
	-- local tcas_right_btn_sw = get(tcas_right_btn)
	-- local tcas_ent_btn_sw = get(tcas_ent_btn)
	-- local tcas_atc_btn_sw = get(tcas_atc_btn)
	-- local tcas_alt_btn_sw = get(tcas_alt_btn)
	-- local tcas_rng_dn_btn_sw = get(tcas_rng_dn_btn)
	-- local tcas_rng_up_btn_sw = get(tcas_rng_up_btn)
	
	
	-- local changes = tcas_ident_btn_sw + tcas_fcn_btn_sw + tcas_left_btn_sw + tcas_right_btn_sw + tcas_ent_btn_sw
	-- changes = changes + tcas_atc_btn_sw + tcas_rng_dn_btn_sw + tcas_alt_btn_sw + tcas_rng_up_btn_sw
	
	-- changes = changes - tcas_ident_btn_last - tcas_fcn_btn_last - tcas_left_btn_last - tcas_right_btn_last - tcas_ent_btn_last
	-- changes = changes - tcas_atc_btn_last - tcas_rng_dn_btn_last - tcas_alt_btn_last - tcas_rng_up_btn_last
	
	--if changes ~= 0 then playSample(button_sound, false) end
	local changes_sw=get(tcas_sel)
	local changes_rot=get(tcas_rot_1_L)+get(tcas_rot_1_R)+get(tcas_rot_2_L)+get(tcas_rot_2_R)
	local changes_but=get(tcas_but)+get(tcas_ident_btn)
	local tss_rotary=get(tss_rot)
	if sw_prev~=changes_sw then
		local z_pos=get(pilot_Z)
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
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	if changes_rot_prev~=changes_rot then 		
		local z_pos=get(pilot_Z)
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
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	if changes_but_prev~=changes_but then 		
		local z_pos=get(pilot_Z)
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
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	if tss_rot_prev~=tss_rotary then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*200
		gain_R=gain_R*200
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(tss_rotary_sound_L,gain_L*dist)
		setSampleGain(tss_rotary_sound_R,gain_R*dist)
		playSample(tss_rotary_sound_L, false)
		playSample(tss_rotary_sound_R, false)
	end
	changes_rot_prev=changes_rot
	changes_but_prev=changes_but
	sw_prev=changes_sw
	tss_rot_prev=tss_rotary



	
	local text = get(screen_mode)
	cursor_timer = cursor_timer + passed
	
	-- make cursor blink
	-- if cursor_timer > 1 then
		-- cursor_timer = 0.5
		-- cursor_show = not cursor_show
	-- end
	
	-- -- make cursor blank when changing digit number
	-- if tcas_rot_big_last ~= tcas_rot_big_now or tcas_left_btn_sw ~= tcas_left_btn_last or tcas_right_btn_last ~= tcas_right_btn_sw then
		-- cursor_timer = 0
		-- cursor_show = true
	-- end
	
	-- -- make cursor full when changing digit itself
	-- if tcas_rot_small_last ~= tcas_rot_small_now then
		-- cursor_timer = 0
		-- cursor_show = false
	-- end
	
	-- take xpdr code when enter to code change mode
	-- if text ~= text_last and text >= 11 and text <= 14 and text_last < 10 then
		-- scr_code = get(xpdr_code)
	-- end
	
	-- local d1, d2, d3, d4 = getDigits(scr_code)
	
	-- if tcas_rot_small_last ~= tcas_rot_small_now then
		-- local knob_diff = tcas_rot_small_now - tcas_rot_small_last
		-- if text == 11 then -- changing digit 1
			-- if math.abs(knob_diff) < 5 then d1 = d1 + knob_diff end
			-- if d1 > 7 then d1 = 0
			-- elseif d1 < 0 then d1 = 7 end
		-- elseif text == 12 then -- changing digit 2
			-- if math.abs(knob_diff) < 5 then d2 = d2 + knob_diff end
			-- if d2 > 7 then d2 = 0
			-- elseif d2 < 0 then d2 = 7 end
		-- elseif text == 13 then -- changing digit 3
			-- if math.abs(knob_diff) < 5 then d3 = d3 + knob_diff end
			-- if d3 > 7 then d3 = 0
			-- elseif d3 < 0 then d3 = 7 end
		-- elseif text == 14 then -- changing digit 4
			-- if math.abs(knob_diff) < 5 then d4 = d4 + knob_diff end
			-- if d4 > 7 then d4 = 0
			-- elseif d4 < 0 then d4 = 7 end
		-- end
		-- scr_code = d1 * 1000 + d2 * 100 + d3 * 10 + d4
	-- end
	
	-- -- save screen code to XPDR
	-- if text >= 11 and text <= 14 and tcas_ent_btn_sw == 1 then
		-- --print("save")
		-- if get(ismaster) ~= 1 then set(xpdr_code, scr_code) end
	-- end
	
	
	--text = 2
	
	-- if text == 100 then -- no power
		-- text_to_screen = ""
	-- elseif text == -1 then
		-- text_to_screen = "ERROR"
	-- elseif text == 0 then -- squawk mode
		-- local code = get(xpdr_code)
		-- if code < 10 then code = "000"..string.format("%s", code)
		-- elseif code < 100 then code = "00"..string.format("%s", code)
		-- elseif code < 1000 then code = "0"..string.format("%s", code)
		-- else code = string.format("%s", code)
		-- end
		-- text_to_screen = code
	-- elseif text == 1 then -- level mode
		-- local above = get(level_mode)
		-- if above == 0 then text_to_screen = "NORMAL"
		-- elseif above == -1 then text_to_screen = "BELOW"
		-- else text_to_screen = "ABOVE" end
	-- elseif text == 2 then -- flight level
		-- if get(fl_mode) == 0 then
			-- text_to_screen = "FL - ABS"
		-- else text_to_screen = "FL - REL"
		-- end
	-- elseif text == 3 then -- flight ID
		-- text_to_screen = "FLT ID"
	
	-- elseif text == 4 then -- flight ID
		-- text_to_screen = "PLN BIT"
		
	-- elseif text == 5 then -- test mode
		-- text_to_screen = "~~~~~~~~"
	-- elseif text == 6 then -- range changed
		-- local range = get(tcas_range_set)
		-- if range == 0 then 
			-- text_to_screen = "rng 3"
		-- elseif range == 1 then
			-- text_to_screen = "rng 5"
		-- elseif range == 2 then
			-- text_to_screen = "rng 10"
		-- elseif range == 3 then
			-- text_to_screen = "rng 15"	
		-- end			
	-- elseif text == -10 then -- ident button
		-- text_to_screen = "ident"
	-- elseif text == 11 then -- changing digit 1
		-- local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		-- if cursor_show then code = string.format("%s%s%s%s%s", "sq ", " ", d2, d3, d4) end
		-- text_to_screen = code
	-- elseif text == 12 then -- changing digit 2
		-- local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		-- if cursor_show then code = string.format("%s%s%s%s%s", "sq ", d1, " ", d3, d4) end
		-- text_to_screen = code	
	-- elseif text == 13 then -- changing digit 3
		-- local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		-- if cursor_show then code = string.format("%s%s%s%s%s", "sq ", d1, d2, " ", d4) end
		-- text_to_screen = code
	-- elseif text == 14 then -- changing digit 3
		-- local code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, d4)
		-- if cursor_show then code = string.format("%s%s%s%s%s", "sq ", d1, d2, d3, " ") end
		-- text_to_screen = code
	
	
	-- else
		-- text_to_screen = ""
	-- end
	
	-------------------------
	-- play TA and RA sounds
	-------------------------
	
	local scale = get(ra_scale_set)
	local traffic = get(traffic_det) == 1
	local our_vvi = get(vvi)
	
	-- traffic sound
	-- if mode >= 3 and scale == 0 and traffic and traffic ~= traffic_last then
		-- playSample(traffic_snd, false)
	-- end
	
	-- -- clear of conflict
	-- if mode == 4 and scale == 0 and scale ~= scale_last then
		-- playSample(clear_conflict, false)
		
		-- stopSample(traffic_snd)
		-- stopSample(ajust_v_speed)
		-- stopSample(climb)
		-- stopSample(climb_now)
		-- stopSample(descend)
		-- stopSample(descend_now)
		-- stopSample(increase_climb)
		-- stopSample(increase_descend)
		-- stopSample(maintain_v_speed)
		-- stopSample(monitor_v_speed)
	-- end
	
	-- -- climb
	-- if mode == 4 and scale == 1 and scale_last == 0 and scale ~= scale_last then
		-- playSample(climb, false)
	-- end
	
	-- -- climb now
	-- if mode == 4 and scale == 1 and scale_last == 3 and scale ~= scale_last then
		-- playSample(climb_now, false)
	-- end
	
	-- -- descend
	-- if mode == 4 and scale == 3 and scale_last == 0 and scale ~= scale_last then
		-- playSample(descend, false)
	-- end	
	
	-- -- descend now
	-- if mode == 4 and scale == 3 and scale_last == 1 and scale ~= scale_last then
		-- playSample(descend_now, false)
	-- end
	
	-- -- increase climb
	-- if mode == 4 and scale == 2 and our_vvi < 12 and scale ~= scale_last then
		-- playSample(increase_climb, false)
	-- end	
	
	-- -- increase descend
	-- if mode == 4 and scale == 4 and our_vvi > -12 and scale ~= scale_last then
		-- playSample(increase_descend, false)
	-- end		
	
	-- -- adjust VS
	-- if mode == 4 and ((scale == 1 and our_vvi > 12) or (scale == 3 and our_vvi < -12) or (scale == 7 and our_vvi > 0) or (scale == 9 and our_vvi < 0) or (scale == 6 and our_vvi > 10) or (scale == 8 and our_vvi < -10)) and scale ~= scale_last then
		-- playSample(ajust_v_speed, false)
	-- end		
	
	-- -- maintain VS
	-- if mode == 4 and ((scale == 2 and our_vvi > 12) or (scale == 4 and our_vvi < -12)) and scale ~= scale_last then
		-- playSample(maintain_v_speed, false)
	-- end	
	
	if mode >= 3 and scale == 14 and scale ~= scale_last then
		playSample(traffic_snd, false)
	end
	-- clear of conflict
	if mode == 4 and scale == 5 and scale ~= scale_last then
		playSample(clear_conflict, false)
		
		stopSample(traffic_snd)
		stopSample(ajust_v_speed)
		stopSample(climb)
		stopSample(climb_cross)
		stopSample(climb_now)
		stopSample(descend)
		stopSample(descend_cross)
		stopSample(descend_now)
		stopSample(increase_climb)
		stopSample(increase_descend)
		stopSample(maintain_v_speed)
		stopSample(maintain_v_speed_cross)
		stopSample(monitor_v_speed)
	end
	
	-- climb
	if mode == 4 and scale == 1 and scale ~= scale_last then
		playSample(climb, false)
	end
	
	if mode == 4 and scale == 2 and scale ~= scale_last then
		playSample(climb_cross, false)
	end
	
	-- climb now
	if mode == 4 and scale == 4 and scale ~= scale_last then
		playSample(climb_now, false)
	end
	
	-- descend
	if mode == 4 and scale == 6 and scale ~= scale_last then
		playSample(descend, false)
	end	
	
	if mode == 4 and scale == 7 and scale ~= scale_last then
		playSample(descend_cross, false)
	end	
	
	-- descend now
	if mode == 4 and scale == 9 and scale ~= scale_last then
		playSample(descend_now, false)
	end
	
	-- increase climb
	if mode == 4 and scale == 3 and scale ~= scale_last then
		playSample(increase_climb, false)
	end	
	
	-- increase descend
	if mode == 4 and scale == 8 and scale ~= scale_last then
		playSample(increase_descend, false)
	end	
	
	-- monitor v/s
	if mode == 4 and scale == 10 and scale ~= scale_last then
		playSample(monitor_v_speed, false)
	end	
	
	-- maintain v/s
	if mode == 4 and scale == 11 and scale ~= scale_last then
		playSample(maintain_v_speed, false)
	end
	
	-- maintain v/s cross
	if mode == 4 and scale == 12 and scale ~= scale_last then
		playSample(maintain_v_speed_cross, false)
	end
	
	-- test
	if mode == 0 and text == 0 and text_last == 5 and text_last ~= text then
		if get(cas_fail)==0 then
			playSample(tcas_test_passed, false)
		else
			playSample(tcas_test_fail,false)
		end
	end	
	
	
	
	
	
	set(traffic_det, bool2int(scale~=5 and scale~=0 and scale<15))
	
	
	text_last = text
	scale_last = scale
	--traffic_last = traffic
	
	
	-- tcas_rot_big_last = tcas_rot_big_now
	-- tcas_rot_small_last = tcas_rot_small_now
	-- tcas_mode_last = tcas_mode_now
	
	-- tcas_ident_btn_last = tcas_ident_btn_sw
	-- tcas_fcn_btn_last = tcas_fcn_btn_sw
	-- tcas_left_btn_last = tcas_left_btn_sw
	-- tcas_right_btn_last = tcas_right_btn_sw
	-- tcas_ent_btn_last = tcas_ent_btn_sw
	-- tcas_atc_btn_last = tcas_atc_btn_sw
	-- tcas_alt_btn_last = tcas_alt_btn_sw
	-- tcas_rng_dn_btn_last = tcas_rng_dn_btn_sw
	-- tcas_rng_up_btn_last = tcas_rng_up_btn_sw	
	
end


















--[[
local font = loadBitmapFont('segmental.fnt')

function draw()

	drawBitmapText(font, 235, 1245, "@@@@@@@@", 1, 0.7, 0.5)

end

--]]
