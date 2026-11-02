function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

simDR_36vl				= find_dataref("tu154b2/custom/elec/bus36_volt_left")
simDR_36vr				= find_dataref("tu154b2/custom/elec/bus36_volt_right")
simDR_vhf_rotary = find_dataref("tu154b2/custom/rotary/ovhd/vhf_1_right")
simDR_vhf2_rotary = find_dataref("tu154b2/custom/rotary/ovhd/vhf_2_right")
simDR_vhf_l_rotary = find_dataref("tu154b2/custom/rotary/ovhd/vhf_1_left")
simDR_vhf2_l_rotary = find_dataref("tu154b2/custom/rotary/ovhd/vhf_2_left")
simDR_nav1_rotary = find_dataref("tu154b2/custom/rotary/ovhd/nav_1_right")
simDR_nav2_rotary = find_dataref("tu154b2/custom/rotary/ovhd/nav_2_right")
simDR_spu1 = find_dataref("tu154b2/custom/switchers/spu_1_source")
simDR_bus27left = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_vhf1 = find_dataref("tu154b2/custom/switchers/ovhd/vhf_1_on")
simDR_vhf2 = find_dataref("tu154b2/custom/switchers/ovhd/vhf_2_on")
simDR_nav1 = find_dataref("tu154b2/custom/switchers/ovhd/curs_np_on_1")
simDR_nav2 = find_dataref("tu154b2/custom/switchers/ovhd/curs_np_on_2")
simDR_passed = find_dataref("sim/operation/misc/frame_rate_period")
simDR_com1_khz = find_dataref("sim/cockpit2/radios/actuators/com1_frequency_khz")
simDR_com1_mhz = find_dataref("sim/cockpit2/radios/actuators/com1_frequency_Mhz")
simDR_com2_khz = find_dataref("sim/cockpit2/radios/actuators/com2_frequency_khz")
simDR_com2_mhz = find_dataref("sim/cockpit2/radios/actuators/com2_frequency_Mhz")
simDR_com1_stby_khz = find_dataref("sim/cockpit2/radios/actuators/com1_standby_frequency_khz")
simDR_com1_stby_mhz = find_dataref("sim/cockpit2/radios/actuators/com1_standby_frequency_Mhz")
simDR_com1_freq = find_dataref("sim/cockpit2/radios/actuators/com1_frequency_hz")
simDR_com1_freq_stby = find_dataref("sim/cockpit2/radios/actuators/com1_standby_frequency_hz")
simDR_com1_vol = find_dataref("sim/cockpit2/radios/actuators/audio_volume_com1") 
simDR_com2_vol = find_dataref("sim/cockpit2/radios/actuators/audio_volume_com2") 
--simDR_sw_sound = find_dataref("tu154b2/custom/lights/tech_light_set")
simDR_ark1_signal = find_dataref("tu154b2/custom/radio/ark15_L_signal")
simDR_ark2_signal = find_dataref("tu154b2/custom/radio/ark15_R_signal")


T154_kontur_on = find_dataref("tu154b2/custom/b2/kontur_on")





simCMD_com1_actv_fine_up    = find_command("sim/radios/actv_com1_fine_up")
simCMD_com1_actv_fine_dn    = find_command("sim/radios/actv_com1_fine_down")
simCMD_com1_actv_fine_up_eight    = find_command("sim/radios/actv_com1_fine_up_833")
simCMD_com1_actv_fine_dn_eight    = find_command("sim/radios/actv_com1_fine_down_833")

simCMD_com1_actv_coarse_up    = find_command("sim/radios/actv_com1_coarse_up")
simCMD_com1_actv_coarse_dn    = find_command("sim/radios/actv_com1_coarse_down")
simCMD_com1_actv_coarse_up_eight    = find_command("sim/radios/actv_com1_coarse_up_833")
simCMD_com1_actv_coarse_dn_eight    = find_command("sim/radios/actv_com1_coarse_down_833")

simCMD_com2_actv_fine_up    = find_command("sim/radios/actv_com2_fine_up")
simCMD_com2_actv_fine_dn    = find_command("sim/radios/actv_com2_fine_down")
simCMD_com2_stby_fine_up    = find_command("sim/radios/stby_com2_fine_up")
simCMD_com2_stby_fine_dn    = find_command("sim/radios/stby_com2_fine_down")

simCMD_com2_actv_coarse_up    = find_command("sim/radios/actv_com2_coarse_up")
simCMD_com2_actv_coarse_dn    = find_command("sim/radios/actv_com2_coarse_down")
simCMD_com2_stby_coarse_up    = find_command("sim/radios/stby_com2_coarse_up")
simCMD_com2_stby_coarse_dn    = find_command("sim/radios/stby_com2_coarse_down")

simCMD_nav1_fine_up    = find_command("sim/radios/actv_nav1_fine_up")
simCMD_nav1_fine_dn    = find_command("sim/radios/actv_nav1_fine_down")
simCMD_nav2_fine_up    = find_command("sim/radios/actv_nav2_fine_up")
simCMD_nav2_fine_dn    = find_command("sim/radios/actv_nav2_fine_down")


vhf1_100_mode = deferred_dataref("sim/custom/radios/vhf1_100mode", "number")
vhf2_100_mode = deferred_dataref("sim/custom/radios/vhf2_100mode", "number")
vhf1_vol = deferred_dataref("sim/custom/radios/vhf1_vol", "number")
vhf2_vol = deferred_dataref("sim/custom/radios/vhf2_vol", "number")
vhf1_ps = deferred_dataref("sim/custom/radios/vhf1_ps", "number")
vhf2_ps = deferred_dataref("sim/custom/radios/vhf2_ps", "number")
vhf2_ap_lit = deferred_dataref("sim/custom/radios/vhf2_ap_lit", "number")
vhf1_ap_lit = deferred_dataref("sim/custom/radios/vhf1_ap_lit", "number")


vhf1_ap = deferred_dataref("sim/custom/radios/vhf1_ap", "number")
vhf2_ap = deferred_dataref("sim/custom/radios/vhf2_ap", "number")

vhf2new_ps = deferred_dataref("sim/custom/radios/vhf2new_ps", "number") 
vhf3new_ps = deferred_dataref("sim/custom/radios/vhf3new_ps", "number") 
vhf2new_vol = deferred_dataref("sim/custom/radios/vhf2new_vol", "number") 
vhf3new_vol = deferred_dataref("sim/custom/radios/vhf3new_vol", "number") 


vhfnew_2_khz = deferred_dataref("sim/custom/radios/vhfnew_2_khz", "number")
vhfnew_2_mhz = deferred_dataref("sim/custom/radios/vhfnew_2_mhz", "number")
vhfnew_3_khz = deferred_dataref("sim/custom/radios/vhfnew_3_khz", "number")
vhfnew_3_mhz = deferred_dataref("sim/custom/radios/vhfnew_3_mhz", "number")
vhf2_3_switch = deferred_dataref("sim/custom/radios/vhf2_3_switch", "number")

vhf2new_left_rot = deferred_dataref("sim/custom/vhf2_left_rot", "number")
vhf2new_right_rot = deferred_dataref("sim/custom/vhf2_right_rot", "number")
vhf3new_left_rot = deferred_dataref("sim/custom/vhf3_left_rot", "number")
vhf3new_right_rot = deferred_dataref("sim/custom/vhf3_right_rot", "number")
vhf3_pwr = deferred_dataref("sim/custom/switchers/ovhd/vhf_3_on", "number")

--- spu_new


spu_volume1 = deferred_dataref("sim/custom/radio/spu_volume1_n", "number")
spu_volume2 = deferred_dataref("sim/custom/radio/spu_volume2_n", "number")
spu_source = deferred_dataref("sim/custom/radio/spu_source_n", "number")
spu_net = deferred_dataref("sim/custom/radio/spu_net_n", "number")

audio_vol1 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_adf1")
audio_vol2 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_adf2")
audio_vol5 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_dme")
audio_vol6 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_dme1")
audio_vol7 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_dme2")
audio_vol8 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_mark")
audio_vol9 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_nav1")
audio_vol10 = find_dataref("sim/cockpit2/radios/actuators/audio_volume_nav2")


local vhf1_fast = 0
local vhf2_fast = 0
--local sw_sound = 0
local sw_sound1 = 0
local sw_sound2 = 0
local sw_sound3 = 0
local sw_sound4 = 0
local sw_sound5 = 0
local sw_sound6 = 0
local sw_sound7 = 0
local vhf1_freq = 0
local vhf1_freq_set = 0
local vhf2_freq = 0
local vhf2_freq_set = 0
vhf1_ps = 1
vhf2_ps = 1
vhf2new_vol = 1
vhf3new_vol = 11
vhf2new_ps = 1
vhf3new_ps = 1
spu_volume1 = 1
spu_volume2 = 1
spu_net = 1



function com1_actv_dial_up_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com1_actv_fine_up:once()
                simDR_vhf_rotary = simDR_vhf_rotary +1
        else
                if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                    simCMD_com1_actv_fine_up_eight:once()
                    if vhf1_fast < 1 then
                        vhf1_fast = vhf1_fast +0.15
                    end
                    if vhf1_100_mode > 0 then
                          if simDR_com1_khz < 901 then
                            simDR_com1_khz = math.ceil(simDR_com1_khz* 0.01) * 100
                          else
                            simDR_com1_khz = 0
                          end
                    end
                end
                simDR_vhf_rotary = simDR_vhf_rotary +1
        end
    end
end

function com1_actv_dial_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com1_actv_fine_dn:once()
                simDR_vhf_rotary = simDR_vhf_rotary -1
        else
            if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                simCMD_com1_actv_fine_dn_eight:once()
                if vhf1_fast < 1 then
                    vhf1_fast = vhf1_fast +0.15
                end
                if vhf1_100_mode > 0 then
                        simDR_com1_khz = math.floor(simDR_com1_khz* 0.01) * 100
                end
            end
            simDR_vhf_rotary = simDR_vhf_rotary -1
        end
    end
end



function com1_actv_c_dial_up_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com1_actv_coarse_up:once()
                simDR_vhf_l_rotary = simDR_vhf_l_rotary +1
        else
            if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                simCMD_com1_actv_coarse_up_eight:once()
            end
            simDR_vhf_l_rotary = simDR_vhf_l_rotary +1
        end
    end
end

function com1_actv_c_dial_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com1_actv_coarse_dn:once()
                simDR_vhf_l_rotary = simDR_vhf_l_rotary -1
        else
            if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                simCMD_com1_actv_coarse_dn_eight:once()
            end
            simDR_vhf_l_rotary = simDR_vhf_l_rotary -1
        end
    end
end



function com2_actv_dial_up_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com2_actv_fine_up:once()
                simDR_vhf2_rotary = simDR_vhf2_rotary +1
        else
                if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                    simCMD_com2_actv_fine_up:once()
                    if vhf1_fast < 1 then
                        vhf1_fast = vhf1_fast +0.15
                    end
                    if vhf1_100_mode > 0 then
                          if simDR_com2_khz < 901 then
                            simDR_com2_khz = math.ceil(simDR_com2_khz* 0.01) * 100
                          else
                            simDR_com2_khz = 0
                          end
                    end
                end
                simDR_vhf2_rotary = simDR_vhf2_rotary +1
        end
    end
end

function com2_actv_dial_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com2_actv_fine_dn:once()
                simDR_vhf2_rotary = simDR_vhf2_rotary -1
        else
            if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                simCMD_com2_actv_fine_dn:once()
                if vhf1_fast < 1 then
                    vhf1_fast = vhf1_fast +0.15
                end
                if vhf1_100_mode > 0 then
                        simDR_com2_khz = math.floor(simDR_com2_khz* 0.01) * 100
                end
            end
            simDR_vhf2_rotary = simDR_vhf2_rotary -1
        end
    end
end



function com2_actv_c_dial_up_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com2_actv_coarse_up:once()
                simDR_vhf2_l_rotary = simDR_vhf2_l_rotary +1
        else
            if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                simCMD_com2_actv_coarse_up:once()
            end
            simDR_vhf2_l_rotary = simDR_vhf2_l_rotary +1
        end
    end
end

function com2_actv_c_dial_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if T154_kontur_on == 0 then
                simCMD_com2_actv_coarse_dn:once()
                simDR_vhf2_l_rotary = simDR_vhf2_l_rotary -1
        else
            if simDR_bus27left > 5 and simDR_vhf1 > 0 then
                simCMD_com2_actv_coarse_dn:once()
            end
            simDR_vhf2_l_rotary = simDR_vhf2_l_rotary -1
        end
    end
end


function vhf2_mhz_up_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_2_mhz < 136 then
            vhfnew_2_mhz = vhfnew_2_mhz + 1
        else
            vhfnew_2_mhz = 118
        end
        vhf2new_left_rot = vhf2new_left_rot + 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf2_mhz_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_2_mhz > 118 then
            vhfnew_2_mhz = vhfnew_2_mhz - 1
        else
            vhfnew_2_mhz = 136
        end
        vhf2new_left_rot = vhf2new_left_rot - 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf2_khz_up_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_2_khz < 975 then
            vhfnew_2_khz = vhfnew_2_khz + 25
        else
            vhfnew_2_khz = 0
        end
        vhf2new_right_rot = vhf2new_right_rot +1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf2_khz_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_2_khz > 0 then
            vhfnew_2_khz = vhfnew_2_khz - 25
        else
            vhfnew_2_khz = 975
        end
        vhf2new_right_rot = vhf2new_right_rot - 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf3_mhz_up_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_3_mhz < 136 then
            vhfnew_3_mhz = vhfnew_3_mhz + 1
        else
            vhfnew_3_mhz = 118
        end
        vhf3new_left_rot = vhf3new_left_rot + 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf3_mhz_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_3_mhz > 118 then
            vhfnew_3_mhz = vhfnew_3_mhz - 1
        else
            vhfnew_3_mhz = 136
        end
        vhf3new_left_rot = vhf3new_left_rot - 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf3_khz_up_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_3_khz < 975 then
            vhfnew_3_khz = vhfnew_3_khz + 25
        else
            vhfnew_3_khz = 0
        end
        vhf3new_right_rot = vhf3new_right_rot + 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end

function vhf3_khz_dn_CMDhandler(phase, duration)
    if phase == 0 then
        if vhfnew_3_khz > 0 then
            vhfnew_3_khz = vhfnew_3_khz - 25
        else
            vhfnew_3_khz = 975
        end
        vhf3new_right_rot = vhf3new_right_rot - 1
        --simDR_vhf_rotary = simDR_vhf_rotary + 200
    end
end



com1_actv_up_cmnd	= create_command("t154/vhf/com1_fine_up", "T154 VHF com1 fine up", com1_actv_dial_up_CMDhandler)
com1_actv_dn_cmnd	= create_command("t154/vhf/com1_fine_dn", "T154 VHF com1 fine dn", com1_actv_dial_dn_CMDhandler)
com1_actv_c_up_cmnd	= create_command("t154/vhf/com1_coarse_up", "T154 VHF com1 coarse up", com1_actv_c_dial_up_CMDhandler)
com1_actv_c_dn_cmnd	= create_command("t154/vhf/com1_coarse_dn", "T154 VHF com1 coarse dn", com1_actv_c_dial_dn_CMDhandler)

com2_actv_up_cmnd	= create_command("t154/vhf/com2_fine_up", "T154 VHF com2 fine up", com2_actv_dial_up_CMDhandler)
com2_actv_dn_cmnd	= create_command("t154/vhf/com2_fine_dn", "T154 VHF com2 fine dn", com2_actv_dial_dn_CMDhandler)
com2_actv_c_up_cmnd	= create_command("t154/vhf/com2_coarse_up", "T154 VHF com2 coarse up", com2_actv_c_dial_up_CMDhandler)
com2_actv_c_dn_cmnd	= create_command("t154/vhf/com2_coarse_dn", "T154 VHF com2 coarse dn", com2_actv_c_dial_dn_CMDhandler)

vhf2_mhz_up_cmnd	= create_command("t154/vhf/vhf2_mhz_up", "T154 VHF2 mhz up", vhf2_mhz_up_CMDhandler)
vhf2_mhz_dn_cmnd	= create_command("t154/vhf/vhf2_mhz_dn", "T154 VHF2 mhz dn", vhf2_mhz_dn_CMDhandler)
vhf2_khz_up_cmnd	= create_command("t154/vhf/vhf2_khz_up", "T154 VHF2 khz up", vhf2_khz_up_CMDhandler)
vhf2_khz_dn_cmnd	= create_command("t154/vhf/vhf2_khz_dn", "T154 VHF2 khz dn", vhf2_khz_dn_CMDhandler)

vhf3_mhz_up_cmnd	= create_command("t154/vhf/vhf3_mhz_up", "T154 VHF3 mhz up", vhf3_mhz_up_CMDhandler)
vhf3_mhz_dn_cmnd	= create_command("t154/vhf/vhf3_mhz_dn", "T154 VHF3 mhz dn", vhf3_mhz_dn_CMDhandler)
vhf3_khz_up_cmnd	= create_command("t154/vhf/vhf3_khz_up", "T154 VHF3 khz up", vhf3_khz_up_CMDhandler)
vhf3_khz_dn_cmnd	= create_command("t154/vhf/vhf3_khz_dn", "T154 VHF3 khz dn", vhf3_khz_dn_CMDhandler)



function aircraft_load()
    vhf1_vol = 1
    vhf2_vol = 1
    vhf1_ps = 1
    vhf2_ps = 1
    vhfnew_2_mhz = simDR_com1_stby_mhz
    vhfnew_2_khz = simDR_com1_stby_khz
end

function vhf()
-- if spu_source < 1 then
    -- if spu_volume1 > spu_volume2 then
        -- audio_vol1 = spu_volume2*simDR_ark1_signal
        -- audio_vol2 = spu_volume2*simDR_ark2_signal
        -- audio_vol5 = spu_volume2
        -- audio_vol6 = spu_volume2
        -- audio_vol7 = spu_volume2
        -- audio_vol8 = spu_volume2
        -- audio_vol9 = spu_volume2
        -- audio_vol10 = spu_volume2
        -- if vhf1_vol > spu_volume2 then
            -- simDR_com1_vol = spu_volume2
        -- else
            -- simDR_com1_vol = vhf1_vol
        -- end
        -- if vhf2_vol > spu_volume2 then
            -- simDR_com2_vol = spu_volume2
        -- else
            -- simDR_com2_vol = vhf2_vol
        -- end
    -- else
        -- audio_vol1 = spu_volume1*simDR_ark1_signal
        -- audio_vol2 = spu_volume1*simDR_ark2_signal
        -- audio_vol5 = spu_volume1
        -- audio_vol6 = spu_volume1
        -- audio_vol7 = spu_volume1
        -- audio_vol8 = spu_volume1
        -- audio_vol9 = spu_volume1
        -- audio_vol10 = spu_volume1
        -- if vhf1_vol > spu_volume1 then
            -- simDR_com1_vol = spu_volume1
        -- else
            -- simDR_com1_vol = vhf1_vol
        -- end
        -- if vhf2_vol > spu_volume1 then
            -- simDR_com2_vol = spu_volume1
        -- else
            -- simDR_com2_vol = vhf2_vol
        -- end
    -- end


-- else
    -- audio_vol1 = 0
    -- audio_vol2 = 0
    -- simDR_com1_vol = 0
    -- simDR_com2_vol = 0
    -- audio_vol5 = 0
    -- audio_vol6 = 0
    -- audio_vol7 = 0
    -- audio_vol8 = 0
    -- audio_vol9 = 0
    -- audio_vol10 = 0
-- end
        
    if simDR_36vl > 5 then
        bus36 = 1
    elseif simDR_36vr > 5 then
        bus36 = 1
    else
        bus36 = 0
    end

    -- if vhf1_ps > 0 and sw_sound2 > 0 then
        -- if simDR_sw_sound > -2 then
            -- --simDR_sw_sound = -2
            -- sw_sound2 = 0
        -- else
            -- --simDR_sw_sound = -1
            -- sw_sound2= 0
        -- end
    -- end
    -- if vhf1_ps < 1 and sw_sound2 < 1 then
        -- if simDR_sw_sound > -2 then
            -- --simDR_sw_sound = -2
            -- sw_sound2 = 1
        -- else
            -- --simDR_sw_sound = -1
            -- sw_sound2 = 1
        -- end
    -- end 
    -- if vhf2_ps > 0 and sw_sound3 > 0 then
        -- if simDR_sw_sound > -2 then
            -- --simDR_sw_sound = -2
            -- sw_sound3 = 0
        -- else
            -- --simDR_sw_sound = -1
            -- sw_sound3= 0
        -- end
    -- end
    -- if vhf2_ps < 1 and sw_sound3 < 1 then
        -- if simDR_sw_sound > -2 then
            -- --simDR_sw_sound = -2
            -- sw_sound3 = 1
        -- else
            -- --simDR_sw_sound = -1
            -- sw_sound3 = 1
        -- end
    -- end
if T154_kontur_on == 1 then
    if vhf2_3_switch == 0 then
        simDR_com2_mhz = vhfnew_2_mhz
        simDR_com2_khz = vhfnew_2_khz
        simDR_com2_vol = vhf2new_vol
    else
        if vhf3_pwr > 0 then
            simDR_com2_mhz = vhfnew_3_mhz
            simDR_com2_khz = vhfnew_3_khz
            simDR_com2_vol = vhf3new_vol
        else
            simDR_com2_mhz = 0
            simDR_com2_khz = 0
            simDR_com2_vol = 0
        end
    end
end


if vhfnew_2_mhz < 118 then
    vhfnew_2_mhz = 118
end

if vhfnew_2_khz > 999 then
    vhfnew_2_khz = 0
end
if vhfnew_3_mhz < 118 then
    vhfnew_3_mhz = 118
end

if vhfnew_3_khz > 999 then
    vhfnew_3_khz = 0
end

if simDR_36vl > 5 then
    bus36 = 1
elseif simDR_36vr > 5 then
    bus36 = 1
else
    bus36 = 0
end
    
    if vhf1_fast > 0 then
        vhf1_fast = vhf1_fast - simDR_passed
    else
        vhf1_100_mode = 0
    end

    if vhf1_fast > 1 and vhf1_100_mode < 1 then
      vhf1_100_mode = 1
    end
    
    if vhf2_fast > 0 then
        vhf2_fast = vhf2_fast - simDR_passed
    else
        vhf2_100_mode = 0
    end

    if vhf2_fast > 1 and vhf2_100_mode < 1 then
      vhf2_100_mode = 1
    end
    
    
-- if vhf1_ap > 0 and sw_sound > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound= 0
    -- end
-- end
-- if vhf1_ap < 1 and sw_sound < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound = 1
    -- end
-- end 
-- if vhf2_ap > 0 and sw_sound1 > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound1 = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound1= 0
    -- end
-- end
-- if vhf2_ap < 1 and sw_sound1 < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound1 = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound1 = 1
    -- end
-- end 
-- if vhf2new_ps > 0 and sw_sound4 > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound4 = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound4= 0
    -- end
-- end
-- if vhf2new_ps < 1 and sw_sound4 < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound4 = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound4 = 1
    -- end
-- end
-- if vhf3new_ps > 0 and sw_sound5 > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound5 = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound5= 0
    -- end
-- end
-- if vhf3new_ps < 1 and sw_sound5 < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound5 = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound5 = 1
    -- end
-- end
 
-- if vhf2_3_switch > 0 and sw_sound6 > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound6 = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound6= 0
    -- end
-- end
-- if vhf2_3_switch < 1 and sw_sound6 < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound6 = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound6 = 1
    -- end
-- end

-- if vhf3_pwr > 0 and sw_sound7 > 0 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound7 = 0
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound7= 0
    -- end
-- end
-- if vhf3_pwr < 1 and sw_sound7 < 1 then
    -- if simDR_sw_sound > -2 then
        -- simDR_sw_sound = -2
        -- sw_sound7 = 1
    -- else
        -- simDR_sw_sound = -1
        -- sw_sound7 = 1
    -- end
-- end



 

    
if simDR_bus27left > 5 and simDR_vhf1 > 0 then   
    if simDR_spu1 == 0 and simDR_com1_freq == 121500 then
        vhf1_ap_lit = 1
    elseif simDR_spu1 == 1 and simDR_com1_freq_stby == 121500 then
        vhf1_ap_lit = 1
    else
        vhf1_ap_lit = 0
    end
else
    vhf1_ap_lit = 0 
end        
        
        
if simDR_bus27right > 5 and simDR_vhf2 > 0 then   
    if simDR_spu1 == 1 and simDR_com1_freq == 121500 then
        vhf2_ap_lit = 1
    elseif simDR_spu1 == 0 and simDR_com1_freq_stby == 121500 then
        vhf2_ap_lit = 1
    else
        vhf2_ap_lit = 0
    end
else
    vhf2_ap_lit = 0
end 



end

function after_physics()
    vhf()
end
