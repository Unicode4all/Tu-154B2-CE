-- this is simple SPU logic
size = {140, 180}

-- define property table
defineProperty("audio_selection_com1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_com1"))
defineProperty("audio_selection_com2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_com2"))
defineProperty("audio_selection_nav1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_nav1"))
defineProperty("audio_selection_nav2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_nav2"))
defineProperty("audio_selection_adf1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf1"))
defineProperty("audio_selection_adf2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf2"))
defineProperty("audio_selection_dme1", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_dme1"))
defineProperty("audio_selection_dme2", globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_dme2"))
defineProperty("sd67_1_dme_res", globalPropertyi("sim/custom/b2/sd67_1_dme_reserv"))
defineProperty("sd67_2_dme_res", globalPropertyi("sim/custom/b2/sd67_1_dme_reserv"))
defineProperty("sd75_1_on", globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_1_on"))
defineProperty("sd75_2_on", globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_2_on"))
defineProperty("sd67_vol_1", globalPropertyf("tu154b2/custom/switchers/SD67_1_vol"))
defineProperty("sd67_vol_2", globalPropertyf("tu154b2/custom/switchers/SD67_2_vol"))
defineProperty("panel_80", globalPropertyi("sim/custom/b2/kontur_70th"))
--defineProperty("audio_dme_enabled", globalPropertyi("sim/cockpit2/radios/actuators/audio_dme_enabled"))

defineProperty("com1_right_is_selected", globalPropertyi("sim/cockpit2/radios/actuators/com1_right_is_selected"))
defineProperty("com2_right_is_selected", globalPropertyi("sim/cockpit2/radios/actuators/com2_right_is_selected"))

defineProperty("VHF2Freq", globalPropertyf("sim/cockpit2/radios/actuators/com2_frequency_hz"))  -- set the frequency
defineProperty("VHF1Freq", globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz"))  -- set the frequency

defineProperty("spu_power_sw", globalPropertyi("tu154b2/custom/switchers/spu_1_power"))
defineProperty("spu_mode", globalPropertyi("tu154b2/custom/switchers/spu_1_mode"))
defineProperty("spu_source", globalPropertyi("tu154b2/custom/switchers/spu_1_source"))
defineProperty("bus27_L", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_R", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("vhf_1_on", globalPropertyi("tu154b2/custom/switchers/ovhd/vhf_1_on"))  -- power switch
defineProperty("vhf_2_on", globalPropertyi("tu154b2/custom/switchers/ovhd/vhf_2_on"))  -- power switch


defineProperty("ark_mode_1", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_mode")) -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
defineProperty("ark_mode_2", globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_mode")) -- режим АРК 2 0 - выкл, 1 - комп, 2 - ант, 3 - рам

defineProperty("ushdb_mode_1", globalPropertyi("tu154b2/custom/switchers/ovhd/ushdb_mode_1"))
defineProperty("ushdb_mode_2", globalPropertyi("tu154b2/custom/switchers/ovhd/ushdb_mode_2"))


defineProperty("com1_power", globalPropertyi("sim/cockpit2/radios/actuators/com1_power"))
defineProperty("com2_power", globalPropertyi("sim/cockpit2/radios/actuators/com2_power"))
defineProperty("audio_panel", globalPropertyi("sim/cockpit/switches/audio_panel_out"))

defineProperty("nav1_morse", globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_nav1"))
defineProperty("nav2_morse", globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_nav2"))
defineProperty("adf1_morse", globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_adf1"))
defineProperty("adf2_morse", globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_adf2"))
defineProperty("dme1_morse", globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_dme1"))
defineProperty("dme2_morse", globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_dme2"))
defineProperty("ark_1_signal", globalPropertyf("tu154b2/custom/radio/ark15_L_signal"))
defineProperty("ark_2_signal", globalPropertyf("tu154b2/custom/radio/ark15_R_signal"))
defineProperty("spu_volume1", globalPropertyf("sim/custom/radio/spu_volume1_n"))
defineProperty("spu_volume2", globalPropertyf("sim/custom/radio/spu_volume2_n"))
defineProperty("vor1_signal", globalPropertyf("sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot"))
defineProperty("vor2_signal", globalPropertyf("sim/cockpit2/radios/indicators/nav2_flag_from_to_pilot"))

defineProperty("n_id1", globalPropertys("sim/cockpit2/radios/indicators/adf1_nav_id"))
defineProperty("n_id2", globalPropertys("sim/cockpit2/radios/indicators/adf2_nav_id"))
defineProperty("v_id1", globalPropertys("sim/cockpit2/radios/indicators/nav1_nav_id"))
defineProperty("v_id2", globalPropertys("sim/cockpit2/radios/indicators/nav2_nav_id"))
--defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))


local switch_sound = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch.wav')
local cap_sound = loadSample(moduleDirectory .. '/Custom Sounds/cap.wav')
local btn_click = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')
local rot_click = loadSample(moduleDirectory .. '/Custom Sounds/rot_click.wav')
local plastic_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch.wav')
local morse_dot = loadSample(moduleDirectory .. '/Custom Sounds/dot_MORSE.wav')
local morse_dash = loadSample(moduleDirectory .. '/Custom Sounds/dash_MORSE.wav')
local noise=loadSample(moduleDirectory .. '/Custom Sounds/noise.wav')



local mode_last = get(spu_source)
function update()

	local mode = get(spu_source)
	local power = get(spu_power_sw) == 1 and get(bus27_L) > 13
		
	--if mode ~= mode_last then playSample(switch_sound, false) end
	mode_last = mode
	-- check if signal is received
	local ndb_left=bool2int(string.len(get(n_id1))>0)
	local ndb_right=bool2int(string.len(get(n_id2))>0)
	local vor_left=bool2int(string.len(get(v_id1))>0)
	local vor_right=bool2int(string.len(get(v_id2))>0)
	-- ark noise gains
	local ark_left=get(ark_1_signal)
	if ark_left>0.9 and ndb_left==1 then
		ark_left=1
	elseif ark_left<0.35 or ndb_left==0 then
		ark_left=0
	end
	local ark_right=get(ark_2_signal)
	if ark_right>0.9 and ndb_right==1 then
		ark_right=1
	elseif ark_right<0.35 or ndb_right==0 then
		ark_right=0
	end
	
	local spu1=get(spu_volume1)
	local spu2=get(spu_volume2)
	local spu_volume=math.min(spu1,spu2)
	local sdvol_1=get(sd67_vol_1)
	local sdvol_2=get(sd67_vol_2)
	if get(panel_80)==0 then
		set(sd75_1_on,bool2int(sdvol_1>0))
		set(sd75_2_on,bool2int(sdvol_2>0))
	end
	if mode == 0 and power then -- COM 1
		set(audio_selection_com1, bool2int(get(bus27_L) > 20 and get(vhf_1_on) == 1))
        set(audio_panel,6)
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
        set(audio_selection_dme1, 0)
        set(audio_selection_dme2, 0)
	elseif mode == 1 and power then -- COM 2
		set(audio_selection_com1, 0)
		set(audio_selection_com2, bool2int(get(bus27_R) > 20 and get(vhf_2_on) == 1))
        set(audio_panel,7)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0) 
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
        set(audio_selection_dme1, 0)
        set(audio_selection_dme2, 0)
	elseif mode == 4 and power then -- NAV 1 or ADF 1
		
        if get(ushdb_mode_1) == 0 then
            if get(ark_mode_1) >1 then
                set(audio_selection_com1, 0)
                set(audio_selection_com2, 0)
                set(audio_selection_nav1, 0)
                set(audio_selection_nav2, 0)
                set(audio_selection_adf1, 1)
                set(audio_selection_adf2, 0)
                set(audio_selection_dme1, 0)
                set(audio_selection_dme2, 0)
				if not isSamplePlaying(noise) then
					playSample(noise,true)
				end
				setSampleGain(noise,(1-ark_left)*1000*spu_volume)
				setSampleGain(morse_dash,ark_left*1000*spu_volume)
				setSampleGain(morse_dot,ark_left*1000*spu_volume)
            else
                set(audio_selection_com1, 0)
                set(audio_selection_com2, 0)
                set(audio_selection_nav1, 0)
                set(audio_selection_nav2, 0)
                set(audio_selection_adf1, 0)
                set(audio_selection_adf2, 0)
                set(audio_selection_dme1, 0)
                set(audio_selection_dme2, 0)
				if isSamplePlaying(noise) then
					stopSample(noise,1)
				end
				setSampleGain(morse_dash,1000*spu_volume)
				setSampleGain(morse_dot,1000*spu_volume)
            end
		else
			set(audio_selection_com1, 0)
			set(audio_selection_com2, 0)
			set(audio_selection_nav1, 1)
			set(audio_selection_nav2, 0)
			set(audio_selection_adf1, 0)
			set(audio_selection_adf2, 0)
            set(audio_selection_dme1, bool2int(get(bus27_L) > 20 and get(sd75_1_on) == 1 and get(sd67_1_dme_res) == 0))
            set(audio_selection_dme2, 0)
			if not isSamplePlaying(noise) and vor_left==0 then
				playSample(noise,true)
			elseif isSamplePlaying(noise) and vor_left==1  then
				stopSample(noise)
			end
			setSampleGain(noise,(1-vor_left)*1000*spu_volume*sdvol_1)
			setSampleGain(morse_dash,vor_left*1000*spu_volume*sdvol_1)
			setSampleGain(morse_dot,vor_left*1000*spu_volume*sdvol_1)
		end
	elseif mode == 5 and power then -- NAV 2 or ADF 2
        if get(ushdb_mode_2) == 0 then
            if get(ark_mode_2) >1 then
                set(audio_selection_com1, 0)
                set(audio_selection_com2, 0)
                set(audio_selection_nav1, 0)
                set(audio_selection_nav2, 0)
                set(audio_selection_adf1, 0)
                set(audio_selection_adf2, 1)
                set(audio_selection_dme1, 0)
                set(audio_selection_dme2, 0)
				if not isSamplePlaying(noise) then
					playSample(noise,true)
				end
				setSampleGain(noise,(1-ark_right)*1000*spu_volume)
				setSampleGain(morse_dash,ark_right*1000*spu_volume)
				setSampleGain(morse_dot,ark_right*1000*spu_volume)
            else
                set(audio_selection_com1, 0)
                set(audio_selection_com2, 0)
                set(audio_selection_nav1, 0)
                set(audio_selection_nav2, 0)
                set(audio_selection_adf1, 0)
                set(audio_selection_adf2, 0)
                set(audio_selection_dme1, 0)
                set(audio_selection_dme2, 0)
				if isSamplePlaying(noise) then
					stopSample(noise,1)
				end
				setSampleGain(morse_dash,1000*spu_volume)
				setSampleGain(morse_dot,1000*spu_volume)
            end
		else
			set(audio_selection_com1, 0)
			set(audio_selection_com2, 0)
			set(audio_selection_nav1, 0)
			set(audio_selection_nav2, 1)
			set(audio_selection_adf1, 0)
			set(audio_selection_adf2, 0)
            set(audio_selection_dme1, 0)
            set(audio_selection_dme2, bool2int(get(bus27_R) > 20 and get(sd75_2_on) == 1 and get(sd67_2_dme_res) == 0))
			if not isSamplePlaying(noise) and vor_right==0 then
				playSample(noise,true)
			elseif isSamplePlaying(noise) and vor_right==1  then
				stopSample(noise)
			end
			setSampleGain(noise,(1-vor_right)*1000*spu_volume*sdvol_2)
			setSampleGain(morse_dash,vor_right*1000*spu_volume*sdvol_2)
			setSampleGain(morse_dot,vor_right*1000*spu_volume*sdvol_2)
		end
	else -- none
		set(audio_selection_com1, 0)
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
        set(audio_selection_dme1, 0)
        set(audio_selection_dme2, 0)
		if isSamplePlaying(noise) then
			stopSample(noise,1)
		end
		setSampleGain(morse_dash,1000*spu_volume)
		setSampleGain(morse_dot,1000*spu_volume)
	end

	-- Morse Codes
	local morse_dsh=get(nav1_morse)==2 or get(nav2_morse)==2 or get(adf1_morse)==2 or get(adf2_morse)==2 or get(dme1_morse)==2 or get(dme2_morse)==2
	local morse_dt=get(nav1_morse)==1 or get(nav2_morse)==1 or get(adf1_morse)==1 or get(adf2_morse)==1 or get(dme1_morse)==1 or get(dme2_morse)==1
	if morse_dsh and not isSamplePlaying(morse_dash) then
		playSample(morse_dash,false)
	end
	if morse_dt and not isSamplePlaying(morse_dot) then
		playSample(morse_dot,false)
	end
end



