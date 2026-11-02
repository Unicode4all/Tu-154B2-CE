-- this is simple SPU logic
size = {140, 180}

-- define property table
audio_selection_com1 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_com1")
audio_selection_com2 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_com2")
audio_selection_nav1 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_nav1")
audio_selection_nav2 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_nav2")
audio_selection_adf1 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf1")
audio_selection_adf2 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf2")
audio_selection_dme1 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_dme1")
audio_selection_dme2 = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_dme2")
sd67_1_dme_res = globalPropertyi("sim/custom/b2/sd67_1_dme_reserv")
sd67_2_dme_res = globalPropertyi("sim/custom/b2/sd67_1_dme_reserv")
sd75_1_on = globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_1_on")
sd75_2_on = globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_2_on")
sd67_vol_1 = globalPropertyf("tu154b2/custom/switchers/SD67_1_vol")
sd67_vol_2 = globalPropertyf("tu154b2/custom/switchers/SD67_2_vol")
panel_80 = globalPropertyi("sim/custom/b2/kontur_70th")
--audio_dme_enabled = globalPropertyi("sim/cockpit2/radios/actuators/audio_dme_enabled")

com1_right_is_selected = globalPropertyi("sim/cockpit2/radios/actuators/com1_right_is_selected")
com2_right_is_selected = globalPropertyi("sim/cockpit2/radios/actuators/com2_right_is_selected")

VHF2Freq = globalPropertyf("sim/cockpit2/radios/actuators/com2_frequency_hz")  -- set the frequency
VHF1Freq = globalPropertyf("sim/cockpit2/radios/actuators/com1_frequency_hz")  -- set the frequency

spu_power_sw = globalPropertyi("tu154b2/custom/switchers/ovhd/spu_on")
spu_mode = globalPropertyi("tu154b2/custom/switchers/spu_1_mode")
spu_source = globalPropertyi("tu154b2/custom/switchers/spu_1_source")
spu2_source = globalPropertyi("tu154b2/custom/switchers/spu_2_source")
spu3_source = globalPropertyi("tu154b2/custom/switchers/spu_3_source")
spu4_source = globalPropertyi("tu154b2/custom/switchers/spu_4_source")
bus27_L = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_R = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")

vhf_1_on = globalPropertyi("tu154b2/custom/switchers/ovhd/vhf_1_on")  -- power switch
vhf_2_on = globalPropertyi("tu154b2/custom/switchers/ovhd/vhf_2_on")  -- power switch


ark_mode_1 = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_1_mode") -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
ark_mode_2 = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_mode") -- режим АРК 2 0 - выкл, 1 - комп, 2 - ант, 3 - рам

ushdb_mode_1 = globalPropertyi("tu154b2/custom/switchers/ovhd/ushdb_mode_1")
ushdb_mode_2 = globalPropertyi("tu154b2/custom/switchers/ovhd/ushdb_mode_2")


com1_power = globalPropertyi("sim/cockpit2/radios/actuators/com1_power")
com2_power = globalPropertyi("sim/cockpit2/radios/actuators/com2_power")
audio_panel = globalPropertyi("sim/cockpit/switches/audio_panel_out")

nav1_morse = globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_nav1")
nav2_morse = globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_nav2")
adf1_morse = globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_adf1")
adf2_morse = globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_adf2")
dme1_morse = globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_dme1")
dme2_morse = globalPropertyi("sim/cockpit2/radios/indicators/morse_id_tone_dme2")
ark_1_signal = globalPropertyf("tu154b2/custom/radio/ark15_L_signal")
ark_2_signal = globalPropertyf("tu154b2/custom/radio/ark15_R_signal")
spu_volume1 = globalPropertyf("sim/custom/radio/spu_volume1_n")
spu_volume2 = globalPropertyf("sim/custom/radio/spu_volume2_n")
spu2_volume1 = globalPropertyf("tu154b2/custom/radio/spu2_volume1")
spu2_volume2 = globalPropertyf("tu154b2/custom/radio/spu2_volume2")
spu3_volume1 = globalPropertyf("tu154b2/custom/radio/spu3_volume1")
spu3_volume2 = globalPropertyf("tu154b2/custom/radio/spu3_volume2")
spu4_volume1 = globalPropertyf("tu154b2/custom/radio/spu4_volume1")
spu4_volume2 = globalPropertyf("tu154b2/custom/radio/spu4_volume2")
spu_sel = globalPropertyf("tu154b2/custom/radio/spu_select")
vor1_signal = globalPropertyf("sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot")
vor2_signal = globalPropertyf("sim/cockpit2/radios/indicators/nav2_flag_from_to_pilot")
rsbn_rec = globalPropertyi("tu154b2/custom/failures/rsbn_rec")
rsbn_dist = globalPropertyf("tu154b2/custom/rsbn/distance")
psh_1=globalPropertyi("sim/custom/radios/vhf1_ps")
psh_2=globalPropertyi("sim/custom/radios/vhf2_ps")
psh_3=globalPropertyi("sim/custom/radios/vhf3new_ps")
nav_1_type=globalPropertyi("sim/cockpit2/radios/indicators/nav1_type")
nav_2_type=globalPropertyi("sim/cockpit2/radios/indicators/nav2_type")

nav_1_pow=globalPropertyi("sim/cockpit2/radios/actuators/nav1_power")
nav_2_pow=globalPropertyi("sim/cockpit2/radios/actuators/nav2_power")

n_id1 = globalPropertys("sim/cockpit2/radios/indicators/adf1_nav_id")
n_id2 = globalPropertys("sim/cockpit2/radios/indicators/adf2_nav_id")
v_id1 = globalPropertys("sim/cockpit2/radios/indicators/nav1_nav_id")
v_id2 = globalPropertys("sim/cockpit2/radios/indicators/nav2_nav_id")

com1_volume = globalPropertyf("sim/cockpit2/radios/actuators/audio_volume_com1")
com2_volume = globalPropertyf("sim/cockpit2/radios/actuators/audio_volume_com2")

rsbn_dot = globalPropertyi("tu154b2/custom/rsbn/morse_dot")
rsbn_dash = globalPropertyi("tu154b2/custom/rsbn/morse_dash")
db1 = globalPropertyf("tu154b2/custom/controlls/debug1")


local switch_sound = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch.wav')
local cap_sound = loadSample(moduleDirectory .. '/Custom Sounds/cap.wav')
local btn_click = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')
local rot_click = loadSample(moduleDirectory .. '/Custom Sounds/rot_click.wav')
local plastic_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch.wav')
local morse_dot = loadSample(moduleDirectory .. '/Custom Sounds/dot_MORSE.wav')
local morse_dash = loadSample(moduleDirectory .. '/Custom Sounds/dash_MORSE.wav')
local noise=loadSample(moduleDirectory .. '/Custom Sounds/noise.wav')

playSample(noise,true)
setSampleGain(noise,0)

function update()

	local mode = get(spu_source)
	local power = get(spu_power_sw) == 1 and get(bus27_L) > 13
		
	-- check if signal is received
	local ndb_left=bool2int(string.byte(string.sub(get(n_id1),1,1))~=0)
	local ndb_right=bool2int(string.byte(string.sub(get(n_id2),1,1))~=0)
	-- local vor_left=bool2int(string.len(get(v_id1))>0)
	-- local vor_right=bool2int(string.len(get(v_id2))>0)
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
	local spu_select = get(spu_sel)
	if spu_select == 1 then
		mode = get(spu2_source)
		spu1=get(spu2_volume1)
		spu2=get(spu2_volume2)
	elseif spu_select == 2 then
		mode = get(spu3_source)
		spu1=get(spu3_volume1)
	    spu2=get(spu3_volume2)
	elseif spu_select == 3 then
		mode = get(spu4_source)
		if mode > 1 then
			mode = 6
		end
		spu1=get(spu4_volume1)
	    spu2=get(spu4_volume2)
	end
	local spu_volume=math.min(spu1,spu2) * bool2int(power)
	local sdvol_1=get(sd67_vol_1)
	local sdvol_2=get(sd67_vol_2)
	local rsbn=get(rsbn_rec)
	
	local nav_1_rec=bool2int(get(nav_1_type)~=0)
	local nav_2_rec=bool2int(get(nav_2_type)~=0)
	
	if get(panel_80)==0 then
		set(sd75_1_on,bool2int(sdvol_1>0))
		set(sd75_2_on,bool2int(sdvol_2>0))
	end
	if mode == 0 and power then -- COM 1
		set(audio_selection_com1, bool2int(get(bus27_L) > 20 and get(vhf_1_on) > 0))
        set(audio_panel,6*bool2int(get(bus27_L) > 20 and get(vhf_1_on) > 0))
		set(com1_volume,spu_volume)
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
        set(audio_selection_dme1, 0)
        set(audio_selection_dme2, 0)
		setSampleGain(noise,400*(1-get(psh_1))*get(vhf_1_on)*spu_volume)
	elseif mode == 1 and power then -- COM 2
		set(audio_selection_com1, 0)
		set(audio_selection_com2, bool2int(get(bus27_R) > 20 and get(vhf_2_on) > 0))
        set(audio_panel,7*bool2int(get(bus27_R) > 20 and get(vhf_2_on) > 0))
		set(com2_volume,spu_volume)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0) 
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
        set(audio_selection_dme1, 0)
        set(audio_selection_dme2, 0)
		setSampleGain(noise,450*(1-get(psh_2))*get(vhf_2_on)*spu_volume)
	elseif mode == 3 and power then -- RSBN
		local rsbn_distance=100/math.max(100,get(rsbn_dist))
		set(audio_selection_com1, 0)
		set(audio_selection_com2, 0)
		set(audio_selection_nav1, 0)
		set(audio_selection_nav2, 0)
		set(audio_selection_adf1, 0)
		set(audio_selection_adf2, 0)
		set(audio_selection_dme1, 0)
		set(audio_selection_dme2, 0)
		-- if not isSamplePlaying(noise) then
			-- playSample(noise,true)
		-- end
		setSampleGain(noise,(500-400*rsbn)*spu_volume*bool2int(rsbn~=-1))
		setSampleGain(morse_dash,1000*spu_volume*rsbn_distance*rsbn)
		setSampleGain(morse_dot,1000*spu_volume*rsbn_distance*rsbn)
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
				setSampleGain(noise,(1-0.9*ark_left*ndb_left)*1000*spu_volume)
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
				setSampleGain(noise,0)				
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
			-- if not isSamplePlaying(noise) and vor_left==0 then
				-- playSample(noise,true)
			-- elseif isSamplePlaying(noise) and vor_left==1  then
				-- stopSample(noise)
			-- end
			local nav_1_pwr=get(nav_1_pow)
			setSampleGain(noise,(1-0.9*nav_1_rec)*600*spu_volume*sdvol_1*nav_1_pwr)
			setSampleGain(morse_dash,nav_1_rec*1000*spu_volume*sdvol_1*nav_1_pwr)
			setSampleGain(morse_dot,nav_1_rec*1000*spu_volume*sdvol_1*nav_1_pwr)
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
				setSampleGain(noise,(1-0.9*ark_right*ndb_right)*1000*spu_volume)
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
				setSampleGain(noise,0)
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
			-- if not isSamplePlaying(noise) and vor_right==0 then
				-- playSample(noise,true)
			-- elseif isSamplePlaying(noise) and vor_right==1  then
				-- stopSample(noise)
			-- end
			local nav_2_pwr=get(nav_2_pow)
			setSampleGain(noise,(1-0.9*nav_2_rec)*700*spu_volume*sdvol_2*nav_2_pwr)
			setSampleGain(morse_dash,nav_2_rec*1000*spu_volume*sdvol_2*nav_2_pwr)
			setSampleGain(morse_dot,nav_2_rec*1000*spu_volume*sdvol_2*nav_2_pwr)
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
		set(audio_panel,0)
		setSampleGain(noise,0)
		setSampleGain(morse_dash,0)
		setSampleGain(morse_dot,0)
		set(com1_volume,0)
		set(com2_volume,0)
	end

	-- Morse Codes
	local morse_dsh=get(nav1_morse)==2 or get(nav2_morse)==2 or get(adf1_morse)==2 or get(adf2_morse)==2 or get(dme1_morse)==2 or get(dme2_morse)==2 or (get(rsbn_dash)==1 and mode == 3)
	local morse_dt=get(nav1_morse)==1 or get(nav2_morse)==1 or get(adf1_morse)==1 or get(adf2_morse)==1 or get(dme1_morse)==1 or get(dme2_morse)==1 or (get(rsbn_dot)==1 and mode == 3)
	if morse_dsh and not isSamplePlaying(morse_dash) then
		playSample(morse_dash,false)
	end
	if morse_dt and not isSamplePlaying(morse_dot) then
		playSample(morse_dot,false)
	end
end



