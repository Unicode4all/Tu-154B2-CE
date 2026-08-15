--replace create_command
function deferred_command(name,desc,realFunc)
	return replace_command(name,realFunc)
end
--replace deferred_dataref
function deferred_dataref(name,nilType,callFunction)
  if callFunction~=nil then
    --print("WARN:" .. name .. " is trying to wrap a function to a dataref -> use xlua")
    end
    return find_dataref(name)
end

dofile("json/json.lua")

simDR_livery_path			= find_dataref("sim/aircraft/view/acf_livery_path")


--*************************************************************************************--
--** 				        CREATE READ-WRITE CUSTOM DATAREFS                        **--
--*************************************************************************************--
-- Holds all SimConfig options
T154_simconfig_data						= deferred_dataref("sim/custom/t154cfg/simconfig", "string")
T154_newsimconfig_data					= deferred_dataref("sim/custom/t154cfg/newsimconfig", "number")
T154_hide_mil					= deferred_dataref("sim/custom/t154cfg/hide_mil", "number")
T154_hide_civ					= deferred_dataref("sim/custom/t154cfg/hide_civ", "number")
T154_hide_def					= deferred_dataref("sim/custom/t154cfg/hide_def", "number")
T154_hide_autoladder					= deferred_dataref("sim/custom/t154cfg/hide_autoladder", "number")
T154_hide_antenna					= deferred_dataref("sim/custom/t154cfg/hide_antenna", "number")
T154_sync_baro					= deferred_dataref("sim/custom/t154cfg/sync_baro", "number")
T154_sync_lights					= deferred_dataref("sim/custom/t154cfg/sync_lights", "number")
T154_ear_effect					= deferred_dataref("sim/custom/t154cfg/ear_effect", "number")
T154_slow_vario					= deferred_dataref("sim/custom/t154cfg/slow_vario", "number")
T154_brake_heat					= deferred_dataref("sim/custom/t154cfg/brake_heat", "number")
T154_ppd_icing					= deferred_dataref("sim/custom/t154cfg/ppd_icing", "number")
T154_door_icing					= deferred_dataref("sim/custom/t154cfg/door_icing", "number")
T154_apu_heat_start					= deferred_dataref("sim/custom/t154cfg/apu_heat_start", "number")
T154_walk_icons					= deferred_dataref("sim/custom/t154cfg/walk_icons", "number")
---b2


T154_kontur_on = find_dataref("tu154b2/custom/b2/kontur_on")
T154_kontur_off = deferred_dataref("sim/custom/b2/kontur_off", "number")
T154_kontur_90th = deferred_dataref("sim/custom/b2/kontur_90th", "number")
T154_kontur_70th = deferred_dataref("sim/custom/b2/kontur_70th", "number")
T154_pa_off = deferred_dataref("sim/custom/b2/kontur_pa_off", "number")

simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all") 
simDR_kill_fms = find_dataref("sim/graphics/misc/kill_map_fms_line")
simDR_gear_fan = find_dataref("tu154b2/custom/switchers/eng/gear_fan")
simDR_tail_temp_sw = find_dataref("tu154b2/custom/switchers/eng/tail_temp_heat")
simDR_kitchen_pld = find_dataref("tu154b2/custom/payload/kitchens")
simDR_cargo1_pld = find_dataref("tu154b2/custom/payload/cargo_1")
simDR_var_pld = find_dataref("tu154b2/custom/payload/various")
simDR_vd15_l = find_dataref("tu154b2/custom/gauges/alt/vd15_pressure_left")
simDR_vd15_r = find_dataref("tu154b2/custom/gauges/alt/vd15_pressure_right")
simDR_vd15_e = find_dataref("tu154b2/custom/gauges/alt/vd15_pressure_eng")
simDR_uvid = find_dataref("tu154b2/custom/gauges/alt/uvid_pressure_knob")
simDR_vbe_l = find_dataref("tu154b2/custom/gauges/alt/vbe_press_left")
simDR_vbe_r = find_dataref("tu154b2/custom/gauges/alt/vbe_press_right")
simDR_left_panel_lit = find_dataref("tu154b2/custom/lights/left_panel_int_set")
simDR_left_panel_c_lit = find_dataref("tu154b2/custom/lights/mid_left_panel_int_set")
simDR_right_panel_lit = find_dataref("tu154b2/custom/lights/right_panel_int_set")
simDR_right_panel_c_lit = find_dataref("tu154b2/custom/lights/mid_right_panel_int_set")
simDR_left_pnppkp_lit = find_dataref("tu154b2/custom/lights/left_pkp_set")
simDR_right_pnppkp_lit = find_dataref("tu154b2/custom/lights/right_pkp_set")
simDR_chocks = find_dataref("tu154b2/custom/anim/gear_blocks")
--*************************************************************************************--
--** 				        MAIN PROGRAM LOGIC                                       **--
--*************************************************************************************--
simConfigData = {}


function simconfig_values()
	return {
			SIM = {
                ground = 0,
                has_autoladder = "NO",
                has_antenna = "NO",
                sync_baro = "NO",
                sync_lights = "NO",
                ear_effect = "NO",
                slow_vario = "NO",
                brake_heat = "NO",
                ppd_icing = "NO",
                door_icing = "NO",
                apu_heat_start = "NO",
                walk_icons = "YES",
                kontur_on_off = "NO"
			}
	}
end

function kontur_set()
    if T154_kontur_on == 0 then
        --simDR_kill_fms = 1
        simDR_gear_fan = 0
        simDR_tail_temp_sw = 0
    end
end

function lights_sync()
    if T154_sync_lights == 1 then
        simDR_left_panel_c_lit = simDR_left_panel_lit
        simDR_right_panel_lit = simDR_left_panel_lit
        simDR_right_panel_c_lit = simDR_left_panel_lit
        simDR_right_pnppkp_lit = simDR_left_pnppkp_lit
    elseif T154_sync_lights == 2 then
        simDR_left_panel_c_lit = simDR_right_panel_lit
        simDR_right_panel_c_lit = simDR_right_panel_lit
        simDR_left_panel_lit = simDR_right_panel_lit
        simDR_left_pnppkp_lit = simDR_right_pnppkp_lit
    end
end

function baro_sync()
    if T154_sync_baro == 1 then
      simDR_vd15_r = simDR_vd15_l
      simDR_vd15_e = simDR_vd15_l
      simDR_vbe_r = simDR_vbe_l
    elseif T154_sync_baro == 2 then
      simDR_vd15_l = simDR_vd15_r
      simDR_vd15_e = simDR_vd15_r
      simDR_vbe_l = simDR_vbe_r
      simDR_uvid = simDR_vbe_r
    end
end


function antenna()
	if T154_hide_antenna < 1 then
        if simDR_cargo1_pld < 5500 then
            simDR_cargo1_pld = 5500
        end
	end
end
function autoladder()
	if T154_hide_autoladder < 1 then
        if simDR_var_pld < 400 then
            simDR_var_pld = 400
        end
	end
end


function simconfig_save_CMDhandler(phase, duration)
    if phase == 0 then
        local file_location_w = simDR_livery_path.."T154_config.dat"
        local file_w = io.open(file_location_w, "w")
        if file_w ~= nil then
            io.output(file_w)
            io.write(T154_simconfig_data)
            io.close(file_w)
        end
    end
end


function doneNewSimConfig()
	T154_newsimconfig_data=0
end

function pushSimConfig(values)
	T154_simconfig_data=json.encode(values)
	T154_newsimconfig_data=1
	run_after_time(doneNewSimConfig, 1)
end


function simconfig_change_gtech_CMDhandler(phase, duration)
    if phase == 0 then
        local ground_tech = simConfigData["data"].SIM.ground
        if ground_tech == 0 then
			ground_tech = 1
            T154_hide_mil = 1
            T154_hide_civ = 0
            T154_hide_def = 1
		elseif ground_tech == 1 then
			ground_tech = 2
            T154_hide_mil = 0
            T154_hide_civ = 1
            T154_hide_def = 1
        else
            ground_tech = 0
            T154_hide_mil = 1
            T154_hide_civ = 1
            T154_hide_def = 0
		end
		simConfigData["data"].SIM.ground = ground_tech
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_change_antenna_CMDhandler(phase, duration)
    if phase == 0 then
        local antenna_cur = simConfigData["data"].SIM.has_antenna
        if antenna_cur == "NO" then
			antenna_cur = "YES"
            T154_hide_antenna = 0
        else
            antenna_cur = "NO"
            T154_hide_antenna = 1
		end
		simConfigData["data"].SIM.has_antenna = antenna_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_change_autoladder_CMDhandler(phase, duration)
    if phase == 0 then
        local autoladder_cur = simConfigData["data"].SIM.has_autoladder
        if autoladder_cur == "NO" then
			autoladder_cur = "YES"
            T154_hide_autoladder = 0
        else
            autoladder_cur = "NO"
            T154_hide_autoladder = 1
		end
		simConfigData["data"].SIM.has_autoladder = autoladder_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_change_sync_baro_CMDhandler(phase, duration)
    if phase == 0 then
        local sync_baro_cur = simConfigData["data"].SIM.sync_baro
        if sync_baro_cur == "CPT" then
			sync_baro_cur = "FO"
            T154_sync_baro = 2
        elseif sync_baro_cur == "FO" then
            sync_baro_cur = "NO"
            T154_sync_baro = 0
        else
            sync_baro_cur = "CPT"
            T154_sync_baro = 1
		end
		simConfigData["data"].SIM.sync_baro = sync_baro_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_change_sync_lights_CMDhandler(phase, duration)
    if phase == 0 then
        local sync_lights_cur = simConfigData["data"].SIM.sync_lights
        if sync_lights_cur == "CPT" then
			sync_lights_cur = "FO"
            T154_sync_lights = 2
        elseif sync_lights_cur == "FO" then
            sync_lights_cur = "NO"
            T154_sync_lights = 0
        else
            sync_lights_cur = "CPT"
            T154_sync_lights = 1
		end
		simConfigData["data"].SIM.sync_lights = sync_lights_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_slow_vario_CMDhandler(phase, duration)
    if phase == 0 then
        local slowvario_cur = simConfigData["data"].SIM.slow_vario
        if slowvario_cur == "NO" then
			slowvario_cur = "YES"
            T154_slow_vario = 1
        else
            slowvario_cur = "NO"
            T154_slow_vario = 0
		end
		simConfigData["data"].SIM.slow_vario = slowvario_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_ear_effect_CMDhandler(phase, duration)
    if phase == 0 then
        local eareffect_cur = simConfigData["data"].SIM.ear_effect
        if eareffect_cur == "NO" then
			eareffect_cur = "YES"
            T154_ear_effect = 1
        else
            eareffect_cur = "NO"
            T154_ear_effect = 0
		end
		simConfigData["data"].SIM.ear_effect = eareffect_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_brake_heat_CMDhandler(phase, duration)
    if phase == 0 then
        local brakeheat_cur = simConfigData["data"].SIM.brake_heat
        if brakeheat_cur == "NO" then
			brakeheat_cur = "YES"
            T154_brake_heat = 1
        else
            brakeheat_cur = "NO"
            T154_brake_heat = 0
		end
		simConfigData["data"].SIM.brake_heat = brakeheat_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_ppd_icing_CMDhandler(phase, duration)
    if phase == 0 then
        local ppdicing_cur = simConfigData["data"].SIM.ppd_icing
        if ppdicing_cur == "NO" then
			ppdicing_cur = "YES"
            T154_ppd_icing = 1
        else
            ppdicing_cur = "NO"
            T154_ppd_icing = 0
		end
		simConfigData["data"].SIM.ppd_icing = ppdicing_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_door_icing_CMDhandler(phase, duration)
    if phase == 0 then
        local dooricing_cur = simConfigData["data"].SIM.door_icing
        if dooricing_cur == "NO" then
			dooricing_cur = "YES"
            T154_door_icing = 1
        else
            dooricing_cur = "NO"
            T154_door_icing = 0
		end
		simConfigData["data"].SIM.door_icing = dooricing_cur
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_apu_heat_start_CMDhandler(phase, duration)
    if phase == 0 then
        local apu_heat_start = simConfigData["data"].SIM.apu_heat_start
        if apu_heat_start == "NO" then
			apu_heat_start = "YES"
            T154_apu_heat_start = 1
        else
            apu_heat_start = "NO"
            T154_apu_heat_start = 0
		end
		simConfigData["data"].SIM.apu_heat_start = apu_heat_start
		pushSimConfig(simConfigData["data"]["values"])
    end
end


function simconfig_walk_icons_CMDhandler(phase, duration)
    if phase == 0 then
        local walk_icons = simConfigData["data"].SIM.walk_icons
        if walk_icons == "NO" then
			walk_icons = "YES"
            T154_walk_icons = 1
        else
            walk_icons = "NO"
            T154_walk_icons = 0
		end
		simConfigData["data"].SIM.walk_icons = walk_icons
		pushSimConfig(simConfigData["data"]["values"])
    end
end

function simconfig_kontur_onoff_CMDhandler(phase, duration)
    if phase == 0 then
        local kontur_on_off_cur = simConfigData["data"].SIM.kontur_on_off
        if simDR_on_ground > 0 then
            if kontur_on_off_cur == "OTHER" then
                kontur_on_off_cur = "YES"
                T154_kontur_on = 1
                T154_kontur_off = 0
                T154_kontur_90th = 1
                T154_kontur_70th = 1
				T154_pa_off = 1
            elseif kontur_on_off_cur == "YES" then
                kontur_on_off_cur = "NO"
                T154_kontur_on = 0
                T154_kontur_off = 1
                T154_kontur_90th = 1
                T154_kontur_70th = 1
				T154_pa_off = 1
            elseif kontur_on_off_cur == "NO" then
                kontur_on_off_cur = "PA3"
                T154_kontur_on = 0
                T154_kontur_off = 1
                T154_kontur_90th = 0
                T154_kontur_70th = 0
				T154_pa_off = 0
            else
                kontur_on_off_cur = "OTHER"
                T154_kontur_on = 0
                T154_kontur_off = 1
                T154_kontur_90th = 0
                T154_kontur_70th = 0
				T154_pa_off = 1
            end
            simConfigData["data"].SIM.kontur_on_off = kontur_on_off_cur
            pushSimConfig(simConfigData["data"]["values"])
        end
    end
end





changesynclights_CMD = deferred_command("t154cfg/changesynclights", "Change sync lights CFG", simconfig_change_sync_lights_CMDhandler)
changesyncbaro_CMD = deferred_command("t154cfg/changesyncbaro", "Change sync baro CFG", simconfig_change_sync_baro_CMDhandler)
changetech_CMD = deferred_command("t154cfg/changetech", "Change tech CFG", simconfig_change_gtech_CMDhandler)
changeautoladder_CMD = deferred_command("t154cfg/changeautoladder", "Autoladder ON/OFF CFG", simconfig_change_autoladder_CMDhandler)
changeantenna_CMD = deferred_command("t154cfg/changeantenna", "Antenna ON/OFF CFG", simconfig_change_antenna_CMDhandler)
changeslowvario_CMD = deferred_command("t154cfg/slow_vario", "Slow vario ON/OFF CFG", simconfig_slow_vario_CMDhandler)
changeeareffect_CMD = deferred_command("t154cfg/ear_effect", "Ear effect ON/OFF CFG", simconfig_ear_effect_CMDhandler)
changebrakeheat_CMD = deferred_command("t154cfg/brake_heat", "Brake heat ON/OFF CFG", simconfig_brake_heat_CMDhandler)
changeppdicing_CMD = deferred_command("t154cfg/ppd_icing", "PPD icing ON/OFF CFG", simconfig_ppd_icing_CMDhandler)
changedooricing_CMD = deferred_command("t154cfg/door_icing", "Door icing ON/OFF CFG", simconfig_door_icing_CMDhandler)
changeapu_start_heat_CMD = deferred_command("t154cfg/apu_start_heat", "Door icing ON/OFF CFG", simconfig_apu_heat_start_CMDhandler)
changewalk_icons_CMD = deferred_command("t154cfg/walk_icons", "Walk_icons ON/OFF CFG", simconfig_walk_icons_CMDhandler)
savecfg_CMD = deferred_command("t154cfg/savecfg", "SAVE CFG", simconfig_save_CMDhandler)
---b2


kontur_onoff_CMD = deferred_command("t154cfg/kontur_onoff", "Kontur ONOFF CFG", simconfig_kontur_onoff_CMDhandler)




function set_loaded_configs()
	
	if simConfigData["data"].SIM.ground == 0 then
        T154_hide_mil = 1
        T154_hide_civ = 1
        T154_hide_def = 0
    elseif simConfigData["data"].SIM.ground == 1 then
        T154_hide_mil = 1
        T154_hide_civ = 0
        T154_hide_def = 1
    elseif simConfigData["data"].SIM.ground == 2 then
        T154_hide_mil = 0
        T154_hide_civ = 1
        T154_hide_def = 1
        simDR_kitchen_pld = 0
	end
    
	if simConfigData["data"].SIM.has_autoladder == "YES" then
        T154_hide_autoladder = 0
    elseif simConfigData["data"].SIM.has_autoladder == "NO" then
        T154_hide_autoladder = 1
	end
    
	if simConfigData["data"].SIM.has_antenna == "YES" then
        T154_hide_antenna = 0
    elseif simConfigData["data"].SIM.has_antenna == "NO" then
        T154_hide_antenna = 1
	end
    
	if simConfigData["data"].SIM.sync_baro == "CPT" then
        T154_sync_baro = 1
	elseif simConfigData["data"].SIM.sync_baro == "FO" then
        T154_sync_baro = 2
    else
        T154_sync_baro = 0
	end
    
	if simConfigData["data"].SIM.sync_lights == "CPT" then
        T154_sync_lights = 1
	elseif simConfigData["data"].SIM.sync_lights == "FO" then
        T154_sync_lights = 2
    else
        T154_sync_lights = 0
	end
	if simConfigData["data"].SIM.slow_vario == "YES" then
        T154_slow_vario = 1
    elseif simConfigData["data"].SIM.slow_vario == "NO" then
        T154_slow_vario = 0
	end
	if simConfigData["data"].SIM.brake_heat == "YES" then
        T154_brake_heat = 1
    elseif simConfigData["data"].SIM.brake_heat == "NO" then
        T154_brake_heat = 0
	end
	if simConfigData["data"].SIM.ear_effect == "YES" then
        T154_ear_effect = 1
    elseif simConfigData["data"].SIM.ear_effect == "NO" then
        T154_ear_effect = 0
	end
	if simConfigData["data"].SIM.ppd_icing == "YES" then
        T154_ppd_icing = 1
    elseif simConfigData["data"].SIM.ppd_icing == "NO" then
        T154_ppd_icing = 0
	end
	if simConfigData["data"].SIM.door_icing == "YES" then
        T154_door_icing = 1
    elseif simConfigData["data"].SIM.door_icing == "NO" then
        T154_door_icing = 0
	end
	if simConfigData["data"].SIM.apu_heat_start == "YES" then
        T154_apu_heat_start = 1
    elseif simConfigData["data"].SIM.apu_heat_start == "NO" then
        T154_apu_heat_start = 0
	end
	if simConfigData["data"].SIM.walk_icons == "YES" then
        T154_walk_icons = 1
    elseif simConfigData["data"].SIM.walk_icons == "NO" then
        T154_walk_icons = 0
	end
	if simConfigData["data"].SIM.kontur_on_off == "YES" then
        T154_kontur_on = 1
        T154_kontur_off = 0
        T154_kontur_90th = 1
        T154_kontur_70th = 1
		T154_pa_off = 1
    elseif simConfigData["data"].SIM.kontur_on_off == "NO" then
        T154_kontur_on = 0
        T154_kontur_off = 1
        T154_kontur_90th = 1
        T154_kontur_70th = 1
		T154_pa_off = 1
    elseif simConfigData["data"].SIM.kontur_on_off == "OTHER" then
        T154_kontur_on = 0
        T154_kontur_off = 1
        T154_kontur_90th = 0
        T154_kontur_70th = 0
		T154_pa_off = 1
    elseif simConfigData["data"].SIM.kontur_on_off == "PA3" then
        T154_kontur_on = 0
        T154_kontur_off = 1
        T154_kontur_90th = 0
        T154_kontur_70th = 0
		T154_pa_off = 0
	end
	T154_newsimconfig_data = 0
end



function aircraft_simConfig()
	local file_location = simDR_livery_path.."T154_config.dat"
	--print("File = "..file_location)
	local file = io.open(file_location, "r")

	if file ~= nil then
		io.input(file)
		local tmpDataS = io.read()
		io.close(file)
		--print("read "..tmpDataS)
		local tmpData=json.decode(tmpDataS)
		--print("encoding "..tmpDataS)
		T154_simconfig_data = json.encode(tmpData)
		--print("done encoding "..T154_simconfig_data)
		T154_newsimconfig_data=1
		run_after_time(set_loaded_configs, 3)  --Apply loaded configs.  Wait a few seconds to ensure they load correctly.
	else
		T154_simconfig_data = json.encode(simconfig_values())
		run_after_time(set_loaded_configs, 3)  --Apply loaded configs.  Wait a few seconds to ensure they load correctly.
	end

end

simConfigData["data"]=simconfig_values()


function flight_start()
	local refreshLivery=simDR_livery_path
	T154_simconfig_data=json.encode(simConfigData["data"]["values"]) --make the simConfig data available to other modules
	T154_newsimconfig_data=1
	run_after_time(aircraft_simConfig, 1)  --Load specific simConfig data for current livery
    local livery_path =simDR_livery_path
end



function livery_change()
	--print("livery load")
	local refreshLivery=simDR_livery_path
    livery_path = simDR_livery_path
	T154_newsimconfig_data=1
	run_after_time(aircraft_simConfig, 2)  --Load specific simConfig data for current livery
end

local setSimConfig=false


function hasSimConfig()
	if T154_newsimconfig_data==1 then
		if string.len(T154_simconfig_data) > 1 then
			simConfigData["data"] = json.decode(T154_simconfig_data)
			setSimConfig=true
		else
			return false
		end
	end
	return setSimConfig
end




function after_physics()
	--Keep the structure fresh
	if hasSimConfig()==false then return end

    if livery_path ~= simDR_livery_path then
        livery_change()
    end

    --kontur_set()
    lights_sync()
    baro_sync()
    antenna()
    autoladder()
    
end

