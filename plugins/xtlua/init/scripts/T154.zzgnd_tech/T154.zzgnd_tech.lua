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


simDR_hide_ru = find_dataref("tu154b2/custom/lang/hide_rus_objects")
simDR_hide_en = find_dataref("tu154b2/custom/lang/hide_eng_objects")
simDR_passed = find_dataref("tu154b2/custom/time/frame_time")

def_ladd1_call = find_dataref("tu154b2/custom/anim/ladder_1_call")
def_ladd2_call = find_dataref("tu154b2/custom/anim/ladder_2_call")
def_ladd1 = find_dataref("tu154b2/custom/anim/ladder_1")
def_ladd2 = find_dataref("tu154b2/custom/anim/ladder_2")
gear_blocks = find_dataref("tu154b2/custom/anim/gear_blocks")
door1 = find_dataref("tu154b2/custom/anim/pax_door_1")
simDR_door1_open = find_dataref("sim/cockpit2/switches/custom_slider_on[4]")
door2 = find_dataref("tu154b2/custom/anim/pax_door_2")
efb_popup6 = find_dataref("sim/custom/t154_efb/popup_6")
efb_popup7 = find_dataref("sim/custom/t154_efb/popup_7")
simDR_gs = find_dataref("sim/flightmodel2/position/groundspeed")
simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all") 

efb_page = find_dataref("sim/custom/t154_efb/page")
mil_tech = find_dataref("sim/custom/t154cfg/hide_mil")
simDR_pilot_head_z = find_dataref("sim/graphics/view/pilots_head_z")


hide_autoladder = find_dataref("sim/custom/t154cfg/hide_autoladder")
sd_mode = find_dataref("sim/custom/t154cfg/sd_mode")
stremya1 = deferred_dataref("sim/custom/t154gnd/stremya1", "number")
stremya1_call = deferred_dataref("sim/custom/t154gnd/stremya1_call", "number")
ladd1 = deferred_dataref("sim/custom/t154gnd/ladd1", "number")
ladd1_call = deferred_dataref("sim/custom/t154gnd/ladd1_call", "number")
stremya2 = deferred_dataref("sim/custom/t154gnd/stremya2", "number")
stremya2_call = deferred_dataref("sim/custom/t154gnd/stremya2_call", "number")
ladd2 = deferred_dataref("sim/custom/t154gnd/ladd2", "number")
ladd2_call = deferred_dataref("sim/custom/t154gnd/ladd2_call", "number")
autoladd = deferred_dataref("sim/custom/t154gnd/autoladd", "number")
autoladd_call = deferred_dataref("sim/custom/t154gnd/autoladd_call", "number")

trap1_lit = deferred_dataref("sim/custom/t154gnd/trap1_lit", "number")
trap2_lit = deferred_dataref("sim/custom/t154gnd/trap2_lit", "number")




local will_change = 0
ladd1 = 28
ladd2 = 28


--- anti icing


--simDR_window_ice = find_dataref("sim/flightmodel/failures/window_ice")
simDR_zulu_h = find_dataref("sim/cockpit2/clock_timer/zulu_time_hours")
simDR_zulu_m = find_dataref("sim/cockpit2/clock_timer/zulu_time_minutes")
deice2_anim = find_dataref("tu154b2/custom/anim/deice2")


ai_fluid_timeout_set =  deferred_dataref("sim/custom/t154gnd/ai_fluid_timeout_set", "number")
ai_fluid_type =  deferred_dataref("sim/custom/t154gnd/ai_fluid_type", "number")
ai_fluid_type_was =  deferred_dataref("sim/custom/t154gnd/ai_fluid_type_was", "number")
ai_time =  deferred_dataref("sim/custom/t154gnd/ai_time", "number")
ai_to_min =  deferred_dataref("sim/custom/t154gnd/ai_to_min", "number")
ai_to_high =  deferred_dataref("sim/custom/t154gnd/ai_to_high", "number")
ai_started =  deferred_dataref("sim/custom/t154gnd/ai_started", "number")
ai_started_h =  deferred_dataref("sim/custom/t154gnd/ai_started_h", "number")
ai_started_m =  deferred_dataref("sim/custom/t154gnd/ai_started_m", "number")

local ai_ice_fixed = 0
local ai_fluid_timeout = 0



--- snow on fuse

simDR_cur_precipt = find_dataref("sim/weather/aircraft/snow_on_aircraft_ratio")
simDR_oat = find_dataref("sim/cockpit2/temperature/outside_air_temp_degc")
snow_fuse = deferred_dataref("sim/custom/t154gnd/snow_fuse", "number")



function snow_on_fuse()
   if simDR_gs < 4 and ai_fluid_timeout_set < 5 then
      if simDR_cur_precipt > 0 then
         if snow_fuse < 1 then
            snow_fuse = snow_fuse + 0.015*simDR_cur_precipt * simDR_passed
         end
      end
   elseif simDR_gs > 30 then
      if snow_fuse > 0 then
         snow_fuse = snow_fuse - 0.0004*simDR_gs*simDR_passed
      end
   elseif ai_started > 0 and deice2_anim > 1 then
      if ai_fluid_type == 0 then
         if snow_fuse > 0 then
            snow_fuse = snow_fuse - 0.005*simDR_passed
         end
      elseif ai_fluid_type == 1 then
         if snow_fuse > 0 then
            snow_fuse = snow_fuse - 0.002*simDR_passed
         end
      elseif ai_fluid_type == 2 then
         if snow_fuse > 0 then
            snow_fuse = snow_fuse - 0.0025*simDR_passed
         end
      elseif ai_fluid_type == 3 then
         if snow_fuse > 0 then
            snow_fuse = snow_fuse - 0.0018*simDR_passed
         end
      elseif ai_fluid_type == 4 then
         if snow_fuse > 0 then
            snow_fuse = snow_fuse - 0.005*simDR_passed
         end
      end
    elseif simDR_oat > 1 then
      if snow_fuse > 0 then
         snow_fuse = snow_fuse - 0.0001*simDR_oat*simDR_passed
      end
   end
end



function anti_icing()
   
if ai_started < 1 then
   if ai_fluid_type == 0 then
      ai_fluid_timeout = 400*(1.65-simDR_cur_precipt)
      ai_time = (3+snow_fuse*1.5)*60+(200*(1-mil_tech))
      ai_to_min = 6
      ai_to_high = 10
   elseif ai_fluid_type == 1 then
      ai_fluid_timeout = 1675*(1.65-simDR_cur_precipt)
      ai_time = (3+snow_fuse*7.5)*60+(200*(1-mil_tech))
      ai_to_min = 20
      ai_to_high = 45
   elseif ai_fluid_type == 2 then
      ai_fluid_timeout = 670*(1.65-simDR_cur_precipt)
      ai_time = (3+snow_fuse*7.5)*60+(200*(1-mil_tech))
      ai_to_min = 10
      ai_to_high = 20
   elseif ai_fluid_type == 3 then
      ai_fluid_timeout = 2400*(1.65-simDR_cur_precipt)
      ai_time = (3+snow_fuse*7.5)*60+(200*(1-mil_tech))
      ai_to_min = 35
      ai_to_high = 75
   elseif ai_fluid_type == 4 then
      ai_fluid_timeout = 2400*(1.65-simDR_cur_precipt)
      ai_time = (6+snow_fuse*2)*60+(200*(1-mil_tech))
      ai_to_min = 35
      ai_to_high = 75
   end
end

   if gear_blocks < 1 and simDR_gs < 1 and simDR_on_ground > 0 then
      if ai_started > 0 then
         if ai_time > 0 then
               ai_time = ai_time - 1*simDR_passed
            if ai_time > 5 and ai_fluid_timeout_set < 50 then
                  ai_fluid_timeout_set = 50
            end
		elseif ai_time <= 0 and snow_fuse >= 0.01 then
			ai_time = ai_time + 30
		elseif snow_fuse < 0.01 then
            ai_fluid_timeout_set = ai_fluid_timeout
            ai_fluid_type_was = ai_fluid_type+1
            ai_started_h = simDR_zulu_h
            ai_started_m = simDR_zulu_m
            ai_started = 0
         end
      end
   elseif ai_started > 0 then
      ai_started = 0
   elseif efb_page == 41 then
      efb_page = 4
   end

   if ai_fluid_timeout_set > 0 and simDR_on_ground > 0 then
      ai_fluid_timeout_set = ai_fluid_timeout_set-1*simDR_passed
   elseif simDR_on_ground < 1 then
      ai_fluid_timeout_set = 0
   end

   if simDR_gs > 100 and ai_fluid_type_was > 0 then
      ai_fluid_type_was = 0
   end

end



function stremyanka_call_CMDhandler(phase, duration)
     if phase == 0 then
        if efb_popup6 > 0 then
            if stremya1_call < 1 then
                def_ladd1_call = 0
                ladd1_call = 0
                will_change = 1
            else
                stremya1_call = 0
            end
         elseif efb_popup7 > 0 then
            if stremya2_call < 1 then
                def_ladd2_call = 0
                ladd2_call = 0
                autoladd_call = 0
                will_change = 1
            else
                stremya2_call = 0
            end
         elseif simDR_pilot_head_z > -18.218784 then
            if door1 > 0.8 then
               if stremya1_call < 1 then
                  def_ladd1_call = 0
                  ladd1_call = 0
                  stremya2_call = 0
                  will_change = 1
               else
                  stremya1_call = 0
                  stremya2_call = 0
                  stremya1 = 0
                  stremya2 = 0
               end
            end
            if door2 > 0.8 and door1 == 0 then
               if stremya2_call < 1 then
                  def_ladd2_call = 0
                  ladd2_call = 0
                  stremya1_call = 0
                  autoladd_call = 0
                  will_change = 1
               else
                  stremya1_call = 0
                  stremya2_call = 0
                  stremya1 = 0
                  stremya2 = 0
               end
            end
        end
     elseif phase == 2 then
        if efb_popup6 > 0 then
            if (def_ladd1_call+ladd1_call) < 1 and will_change > 0 then
                stremya1_call = 1
                will_change = 0
            end
        elseif efb_popup7 > 0 then
            if (def_ladd2_call+ladd2_call+autoladd_call) < 1 and will_change > 0 then
                stremya2_call = 1
                will_change = 0
            end
         elseif simDR_pilot_head_z > -18.218784 then
            if (def_ladd1_call+ladd1_call) < 1 and will_change > 0 then
               if door1 < door2 then
                stremya2_call = 1
                stremya2 = 20
               else
                stremya1_call = 1
                stremya1 = 20
               end
                will_change = 0
            end
        end
     end
end

function lestnica_call_CMDhandler(phase, duration)
     if phase == 0 then
        if efb_popup6 > 0 then
            if ladd1_call < 1 then
                def_ladd1_call = 0
                stremya1_call = 0
                autoladd_call = 0
                will_change = 1
            else
                ladd1_call = 0
            end
        end
        if efb_popup7 > 0 then
            if ladd2_call < 1 then
                def_ladd2_call = 0
                stremya2_call = 0
                autoladd_call = 0
                will_change = 1
            else
                ladd2_call = 0
            end
        end
     elseif phase == 2 then
        if efb_popup6 > 0 then
            if (def_ladd1_call+stremya1_call) < 1 and will_change > 0 then
                ladd1_call = 1
                will_change = 0
            end
        end
        if efb_popup7 > 0 then
            if (def_ladd2_call+stremya2_call+autoladd_call) < 1 and will_change > 0 then
                ladd2_call = 1
                will_change = 0
            end
        end
     end
end

function autolestnica_call_CMDhandler(phase, duration)
     if phase == 0 then
        if efb_popup7 > 0 then
            if autoladd_call < 1 then
                def_ladd2_call = 0
                stremya2_call = 0
                ladd2_call = 0
                will_change = 1
            else
                autoladd_call = 0
            end
        end
     elseif phase == 2 then
        if efb_popup7 > 0 then
            if (def_ladd2_call+stremya2_call+ladd2_call) < 1 and will_change > 0 then
                autoladd_call = 1
                will_change = 0
            end
        end
     end
end


call_stremyanka	= create_command("t154gnd/call_stremyanka", "Call Stremyanka", stremyanka_call_CMDhandler)
call_lestnica	= create_command("t154gnd/call_lestnica", "Call Lestnica", lestnica_call_CMDhandler)
call_autolest	= create_command("t154gnd/call_autolest", "Call Autolest", autolestnica_call_CMDhandler)

function misc_gnd()

   if simDR_hide_ru > 0 then
      simDR_hide_en = 0
   else
      simDR_hide_en = 1
   end
    
    trap1_lit = def_ladd1_call + ladd1_call + stremya1_call
    trap2_lit = def_ladd2_call + ladd2_call + stremya2_call + autoladd_call
    
    if def_ladd1_call > 0 then
        ladd1_call = 0
        stremya1_call = 0
    end
    if def_ladd2_call > 0 then
        ladd2_call = 0
        stremya2_call = 0
        autoladd_call = 0
    end
      
    if hide_autoladder > 0 then
       autoladd_call = 0
       autoladd = 0
    end
	sd_mode=1-hide_autoladder
    if door1 < 0.95 then
      stremya1 = 0
    end
    if door2 < 0.95 then
      stremya2 = 0
      autoladd = 0
    end
        
    if door1 > 0 and simDR_gs < 0.35 then
        if stremya1_call > 0 and door1 > 0.9 and ladd1 > 15 and def_ladd1 > 25 then
             if stremya1 < 20 then
                stremya1 = stremya1 + 3*simDR_passed
             else
                stremya1 = 20
             end
        elseif stremya1_call > 0 and door1 > 0.9 and ladd1 > 15 and def_ladd1 < -25 then
             if stremya1 < 20 then
                stremya1 = stremya1 + 3*simDR_passed
             else
                stremya1 = 20
             end
        else
             if stremya1 > 0 then
                stremya1 = stremya1 - 3*simDR_passed
             else
                stremya1 = 0
             end
        end
    else
         if stremya1 > 0 then
            stremya1 = stremya1 - 15*simDR_passed
         else
            stremya1 = 0
         end
        stremya1_call = 0
    end

    if gear_blocks > 0 and def_ladd1 > 48 then
        if ladd1_call > 0 then
             if ladd1 > 0 then
                ladd1 = ladd1 - 2*simDR_passed
             else
                ladd1 = 0
             end
        else
             if ladd1 < 28 then
                ladd1 = ladd1 + 2*simDR_passed
             else
                ladd1 = 28
             end
        end
    elseif gear_blocks > 0 and def_ladd1 < -48 then
        if ladd1_call > 0 then
             if ladd1 > 0 then
                ladd1 = ladd1 - 2*simDR_passed
             else
                ladd1 = 0
             end
        else
             if ladd1 < 28 then
                ladd1 = ladd1 + 2*simDR_passed
             else
                ladd1 = 28
             end
        end
    elseif gear_blocks < 1 then
         if ladd1 < 28 then
            ladd1 = ladd1 + 3*simDR_passed
         else
            ladd1 = 28
         end
         ladd1_call = 0
    else
         if ladd1 < 28 then
            ladd1 = ladd1 + 3*simDR_passed
         else
            ladd1 = 28
         end
    end
   
    if door2 > 0 and simDR_gs < 0.35 then
        if stremya2_call > 0 and door2 > 0.9 and ladd2 > 15 and def_ladd2 > 25 and autoladd == 0 then
             if stremya2 < 20 then
                stremya2 = stremya2 + 3*simDR_passed
             else
                stremya2 = 20
             end
        elseif stremya2_call > 0 and door2 > 0.9 and ladd2 > 15 and def_ladd2 < -25 and autoladd == 0 then
             if stremya2 < 20 then
                stremya2 = stremya2 + 3*simDR_passed
             else
                stremya2 = 20
             end
        else
             if stremya2 > 0 then
                stremya2 = stremya2 - 3*simDR_passed
             else
                stremya2 = 0
             end
        end
    else
         if stremya2 > 0 then
            stremya2 = stremya2 - 15*simDR_passed
         else
            stremya2 = 0
         end
        stremya2_call = 0
    end
    
    if door2 > 0 and simDR_gs < 0.35 then
        if autoladd_call > 0 and door2 > 0.9 and stremya2 == 0 and ladd2 > 15 and def_ladd2 > 25 and stremya2 == 0 then
             if autoladd < 20 then
                autoladd = autoladd + 3*simDR_passed
             else
                autoladd = 20
             end
        elseif autoladd_call > 0 and door2 > 0.9 and stremya2 == 0 and ladd2 > 15 and def_ladd2 < -25 and stremya2 == 0 then
             if autoladd < 20 then
                autoladd = autoladd + 3*simDR_passed
             else
                autoladd = 20
             end
        else
             if autoladd > 0 then
                autoladd = autoladd - 3*simDR_passed
             else
                autoladd = 0
             end
        end
    else
         if autoladd > 0 then
            autoladd = autoladd - 15*simDR_passed
         else
            autoladd = 0
         end
        autoladd_call = 0
    end

    if gear_blocks > 0 and def_ladd2 > 48 then
        if ladd2_call > 0 then
             if ladd2 > 0 then
                ladd2 = ladd2 - 2*simDR_passed
             else
                ladd2 = 0
             end
        else
             if ladd2 < 28 then
                ladd2 = ladd2 + 2*simDR_passed
             else
                ladd2 = 28
             end
        end
    elseif gear_blocks > 0 and def_ladd2 < -48 then
        if ladd2_call > 0 then
             if ladd2 > 0 then
                ladd2 = ladd2 - 2*simDR_passed
             else
                ladd2 = 0
             end
        else
             if ladd2 < 28 then
                ladd2 = ladd2 + 2*simDR_passed
             else
                ladd2 = 28
             end
        end
    elseif gear_blocks < 1 then
         if ladd2 < 28 then
            ladd2 = ladd2 + 3*simDR_passed
         else
            ladd2 = 28
         end
         ladd2_call = 0
    else
         if ladd2 < 28 then
            ladd2 = ladd2 + 3*simDR_passed
         else
            ladd2 = 28
         end
    end
   
    
end

function after_physics()
    misc_gnd()
    anti_icing()
    snow_on_fuse()
end






   
