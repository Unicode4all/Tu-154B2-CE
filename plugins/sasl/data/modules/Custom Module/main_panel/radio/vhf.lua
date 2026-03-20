-- this is VHF radio
include("functions.lua")
size = {420, 90}

defineProperty("num", 0)

--defineProperty("frequency", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz"))  -- set the frequency
--defineProperty("freq_sby", globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_hz"))  -- set the frequency

defineProperty("frequency", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz_833"))  -- set the frequency
defineProperty("freq_sby", globalPropertyf("sim/cockpit2/radios/actuators/com1_standby_frequency_hz_833"))  -- set the frequency


-- controls
defineProperty("vhf_left", globalPropertyi("tu154b2/custom/rotary/ovhd/vhf_1_left"))  -- knob
defineProperty("vhf_right", globalPropertyi("tu154b2/custom/rotary/ovhd/vhf_1_right"))  -- knob

defineProperty("vhf_on", globalPropertyi("tu154b2/custom/switchers/ovhd/vhf_1_on"))  -- power switch

defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))

defineProperty("spu_source", globalPropertyi("tu154b2/custom/switchers/spu_1_source"))

-- results
defineProperty("com_power", globalPropertyi("sim/cockpit2/radios/actuators/com1_power"))
defineProperty("com_power2", globalPropertyi("sim/cockpit2/radios/actuators/com2_power"))

defineProperty("vhf_cc", globalPropertyf("tu154b2/custom/radio/vhf1_cc"))


--cursmp2

defineProperty("cursmp2_1", globalProperty("sim/cockpit2/radios/actuators/nav_frequency_Mhz[0]"))
defineProperty("cursmp2_2", globalProperty("sim/cockpit2/radios/actuators/nav_frequency_khz[0]"))
defineProperty("cursmp2_3", globalProperty("sim/cockpit2/radios/actuators/nav_frequency_Mhz[1]"))
defineProperty("cursmp2_4", globalProperty("sim/cockpit2/radios/actuators/nav_frequency_khz[1]"))
defineProperty("dme_res_1", globalProperty("sim/custom/b2/sd67_1_dme_reserv"))
defineProperty("dme_res_2", globalProperty("sim/custom/b2/sd67_2_dme_reserv"))
defineProperty("dme_1", globalProperty("sim/cockpit2/radios/actuators/nav_dme_frequency_hz[4]"))
defineProperty("dme_2", globalProperty("sim/cockpit2/radios/actuators/nav_dme_frequency_hz[5]"))
defineProperty("dme_test_1", globalProperty("sim/custom/b2/sd67_1_test"))
defineProperty("dme_test_2", globalProperty("sim/custom/b2/sd67_2_test"))
defineProperty("squel_1", globalProperty("sim/custom/radios/vhf1_ps"))
defineProperty("squel_2", globalProperty("sim/custom/radios/vhf2_ps"))
defineProperty("vhf_2_left", globalProperty("sim/custom/vhf2_left_rot"))
defineProperty("vhf_2_right", globalProperty("sim/custom/vhf2_right_rot"))
defineProperty("vhf_3_left", globalProperty("sim/custom/vhf3_left_rot"))
defineProperty("vhf_3_right", globalProperty("sim/custom/vhf3_right_rot"))
defineProperty("kont", globalProperty("tu154b2/custom/b2/kontur_on"))
sd_1_vol = globalPropertyf("tu154b2/custom/switchers/SD67_1_vol")
sd_2_vol = globalPropertyf("tu154b2/custom/switchers/SD67_2_vol")

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("nav_course_1", globalPropertyf("tu154b2/custom/rotary/console/nav_1_course_1"))
defineProperty("nav_course_2", globalPropertyf("tu154b2/custom/rotary/console/nav_2_course_1"))
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

local panel_x=0
local panel_z=-22.593817
local panel_left_x=-0.20488098
local panel_left_z=-22.709684
local panel_right_x=0.20488098
local panel_right_z=-22.709684
local panel_back_x=-0.90043336
local panel_back_z=-21.377966
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


local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/com_L.wav')
local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/com_R.wav')
local rotary_sound2_L = loadSample(moduleDirectory .. '/Custom Sounds/cursmp_L.wav')
local rotary_sound2_R = loadSample(moduleDirectory .. '/Custom Sounds/cursmp_R.wav')
local rotary_click_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/rot_click_L.wav')
local rotary_click_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/rot_click_R.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')
local sd67_on_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/sd-67_on_L.wav')
local sd67_on_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/sd-67_on_R.wav')
local sd67_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/sd-67_L.wav')
local sd67_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/sd-67_R.wav')
--setSampleGain(rot_small_sound, 500)

local text_font = loadFont(moduleDirectory .. '/Custom Module/digital7.ttf')


local summ_L_last = 0
local summ_R_last = 0
local summ_last = 0
local summ_mp_L_last = 0
local summ_mp_R_last = 0
local summ_dme_last=0
local summ_but_last=0
local summ_sw_last=0
local summ_back_last=0
local sd_vol_1_last=0
local sd_vol_2_last=0
local function rotary()
    local cursmp2_1_sw = get(cursmp2_1)
    local cursmp2_2_sw = get(cursmp2_2)
    local cursmp2_3_sw = get(cursmp2_3)
    local cursmp2_4_sw = get(cursmp2_4)
	local nav_left_sw = get(vhf_left)
	local nav_right_sw = get(vhf_right)
	local summ= nav_left_sw+ nav_right_sw
	local summ_back= get(vhf_2_left)+get(vhf_2_right)+get(vhf_3_left)+get(vhf_3_right)
	local summ_L = cursmp2_1_sw + cursmp2_2_sw
	local summ_R = cursmp2_3_sw + cursmp2_4_sw
	local summ_mp_L=get(nav_course_1)
	local summ_mp_R=get(nav_course_2)
	local summ_dme=get(dme_1)+get(dme_2)
	local summ_but=get(dme_test_1)+get(dme_test_2)
	local summ_sw=get(dme_res_1)+get(dme_res_2)+get(squel_1)+get(squel_2)
	local sd_vol_1=get(sd_1_vol)
	local sd_vol_2=get(sd_2_vol)
	
	if summ_back_last ~= summ_back and get(kont)==1 then
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_back_x, panel_back_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_back_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_back_z,2)+math.pow(x_pos-panel_back_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	elseif summ_last ~= summ then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	
	if summ_L_last ~= summ_L then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_left_x, panel_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_left_z,2)+math.pow(x_pos-panel_left_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	if summ_R_last ~= summ_R then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_right_x, panel_right_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_right_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_right_z,2)+math.pow(x_pos-panel_right_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	if summ_mp_L_last ~= summ_mp_L then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_left_x, panel_left_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_left_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_left_z,2)+math.pow(x_pos-panel_left_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound2_L,gain_L*dist)
		setSampleGain(rotary_sound2_R,gain_R*dist)
		playSample(rotary_sound2_L, false)
		playSample(rotary_sound2_R, false)
	end
	
	if summ_mp_R_last ~= summ_mp_R then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_right_x, panel_right_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_right_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_right_z,2)+math.pow(x_pos-panel_right_x,2))/dist_gain)
		end
		setSampleGain(rotary_sound2_L,gain_L*dist)
		setSampleGain(rotary_sound2_R,gain_R*dist)
		playSample(rotary_sound2_L, false)
		playSample(rotary_sound2_R, false)
	end
	
	if summ_dme_last~=summ_dme then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(sd67_L,gain_L*dist)
		setSampleGain(sd67_R,gain_R*dist)
		playSample(sd67_L, false)
		playSample(sd67_R, false)
	end
	
	if summ_but_last~=summ_but then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	if summ_sw_last~=summ_sw then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	if (sd_vol_1==0 and sd_vol_1_last>0) or (sd_vol_1>0 and sd_vol_1_last==0) or (sd_vol_2==0 and sd_vol_2_last>0) or (sd_vol_2>0 and sd_vol_2_last==0)then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*700
		gain_R=gain_R*700
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(sd67_on_L,gain_L*dist)
		setSampleGain(sd67_on_R,gain_R*dist)
		playSample(sd67_on_L, false)
		playSample(sd67_on_R, false)
	end
	
	
	summ_last = summ
	summ_L_last = summ_L
	summ_R_last = summ_R
	summ_mp_L_last =summ_mp_L
    summ_mp_R_last =summ_mp_R
	summ_dme_last=summ_dme
	summ_but_last=summ_but
	summ_sw_last=summ_sw
	summ_back_last=summ_back
	sd_vol_1_last=sd_vol_1
	sd_vol_2_last=sd_vol_2
	
	

end

-- variables for separate manipulations

local freq_100 = 0  -- digits before period
local freq_10 = 0  -- digits after period

local freq_10_show = 0

local freq_show = ""

local power = false

local knob_last_L = get(vhf_left)
local knob_last_R = get(vhf_right)


function update()

	rotary()
	
	local MASTER = get(ismaster) ~= 1	
	

	
	
	-- knobs cycle
	local left_knob = get(vhf_left)
	local right_knob = get(vhf_right)
	
	left_knob = around(left_knob, -10, 26, 36)
	right_knob = around(right_knob, -10, 26, 36)
	

	set(vhf_left, left_knob)
	set(vhf_right, right_knob)
	
	
	local freq = get(frequency)
	-- set standby frequency as the main here
	
	
	
	power = get(vhf_on) == 1 and get(bus27_volt) > 13 -- temp


	local MHz = math.floor(freq / 1000)
	local kHz = freq % 1000
	
	local out = kHz % 1000
	
	MHz = around(MHz, 118, 136, 18)
	kHz = around(kHz, 0, 995, 1000)
	
	kHz = limit(kHz, 0, 995)
		
	freq = MHz * 1000 + kHz

	

	
if MASTER then
	
	-- change frequency
	if power then
		local knob_diff_L = left_knob - knob_last_L
		local knob_diff_R = right_knob - knob_last_R
	end
	

end
	
	freq_show = string.format("%.3f", freq/1000)
	
	set(com_power, bool2int(power))
	set(com_power2, bool2int(power))
	set(vhf_cc, bool2int(power) * 1.2)
	
	knob_last_L = left_knob
	knob_last_R = right_knob


end

function onAvionicsDone()
	set(com_power, 1)
	set(com_power2, 1)

end






components = {


	-- text_draw3 {
		-- position = {35, 20, 160, 140},
		-- color = {0.2, 1, 0.2, 1},
		-- font = text_font,
		-- visible = function()
			-- return power
		-- end,
		-- text = function()
			-- return freq_show
		-- end,
	
	-- },
	radio_display {
		position = { 35, 20, 160, 140 },
		color = { 0.2, 1, 0.2, 1 },
		freq = function()
			return freq_show
		end,
		visible = function()
			return power
		end,
	},

}


--[[
function draw()
	
	local c = get(color)
	
	drawBitmapText(text_font, 0, 0, "000.000", c[1], c[2], c[3], c[4])

end
--]]