function deferred_command(name,desc,nilFunc)
	c = XLuaCreateCommand(name,desc)
	--print("Deferred command: "..name)
	--XLuaReplaceCommand(c,null_command)
	return nil --make_command_obj(c)
end
function deferred_dataref(name,type,notifier)
	--print("Deffereed dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

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
T154_sd_mode					= deferred_dataref("sim/custom/t154cfg/sd_mode", "number")
---b2
T154_kontur_on = find_dataref("tu154b2/custom/b2/kontur_on") 
T154_kontur_off = deferred_dataref("sim/custom/b2/kontur_off", "number")
T154_kontur_90th = deferred_dataref("sim/custom/b2/kontur_90th", "number")
T154_kontur_70th = deferred_dataref("sim/custom/b2/kontur_70th", "number")
T154_pa_off = deferred_dataref("sim/custom/b2/kontur_pa_off", "number")


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



T154_hide_mil					= 1
T154_hide_civ					= 1
T154_hide_def					= 0
T154_hide_autoladder			= 1
T154_hide_antenna				= 1 
T154_sync_baro				= 0 
T154_sync_lights					= 0
T154_ear_effect					= 0
T154_slow_vario					= 0
T154_brake_heat					= 0
T154_ppd_icing					= 0
T154_door_icing					= 0
T154_walk_icons					= 1
T154_kontur_on = 0
T154_kontur_off = 1
T154_kontur_90th = 0




