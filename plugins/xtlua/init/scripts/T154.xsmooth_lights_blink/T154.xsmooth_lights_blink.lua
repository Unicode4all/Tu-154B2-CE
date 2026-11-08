function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

--lamp tests

simDR_front_lamp_test = find_dataref("tu154b2/custom/buttons/lamp_test_front")
simDR_daynight = find_dataref("tu154b2/custom/lights/day_night_set")
simDR_passed = find_dataref("tu154b2/custom/time/frame_time")


--lamp tests end

-- other

simDR_ping_pong = find_dataref("sim/graphics/animation/ping_pong_2")
simDR_sin_wave = find_dataref("sim/graphics/animation/sin_wave_2")
simDR_slats_ratio = find_dataref("sim/flightmodel2/controls/slat1_deploy_ratio")
simDR_stab_ratio = find_dataref("sim/flightmodel2/controls/stabilizer_deflection_degrees")
simDR_toelev_ratio = find_dataref("tu154b2/custom/controls/control_force_pos")
simDR_torud_ratio = find_dataref("tu154b2/custom/controls/control_force_pos_rud")
simDR_bus27left = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right = find_dataref("tu154b2/custom/elec/bus27_volt_right")




-- other end

-- lights list


simDR_stab_work =  find_dataref("tu154b2/custom/lights/stab_work")
simDR_slats_extended =  find_dataref("tu154b2/custom/lights/slats_extended")
simDR_to_rudder =  find_dataref("tu154b2/custom/lights/to_rudder")
simDR_to_elevator =  find_dataref("tu154b2/custom/lights/to_elevator")


-- lights list end




to_rudder =  deferred_dataref("sim/custom/lights/to_rudder_new", "number")
to_elevator =  deferred_dataref("sim/custom/lights/to_elevator_new", "number")
stab_work =  deferred_dataref("sim/custom/lights/stab_work_new", "number")
slats_extended =  deferred_dataref("sim/custom/lights/slats_extended_new", "number")
lit_torud_blinks =  deferred_dataref("sim/custom/test", "number")

local lit_slats_blinks = 0
local lit_stab_blinks = 0
local lit_toelev_blinks = 0
local slats_loc = 0
local slats_delta = 0
local stab_loc = 0
local stab_delta = 0
local round_elev = 0
local bus27 = 0
local ping_pong_stab = 0
local ping_pong_stab_round = 0
local ping_pong_slat = 0
local ping_pong_slat_round = 0
local ping_pong_torud = 0
local ping_pong_torud_round = 0
local ping_pong_toelev = 0
local ping_pong_toelev_round = 0



function blinks_lights()
    
    
    if simDR_bus27left > 5 then
        bus27 = 1
    elseif simDR_bus27right > 5 then
        bus27 = 1
    else
        bus27 = 0
    end 
    
    
  slats_delta = simDR_slats_ratio - slats_loc
  stab_delta = simDR_stab_ratio - stab_loc
    
  if slats_delta > 0 then
     slats_loc = slats_loc + math.abs(slats_delta) * 0.015
  else
     slats_loc = slats_loc - math.abs(slats_delta) * 0.015
  end
    
    
  if stab_delta > 0 then
     stab_loc = stab_loc + math.abs(stab_delta) * 0.035
  else
     stab_loc = stab_loc - math.abs(stab_delta) * 0.035
  end
    
    
  if stab_delta > 0.04 and bus27 > 0 then
        if ping_pong_stab < 10 and ping_pong_stab_round < 1 then
           ping_pong_stab = ping_pong_stab + 60 * simDR_passed
        else
            ping_pong_stab_round = 1
        end

        if ping_pong_stab > 0 and ping_pong_stab_round > 0 then
           ping_pong_stab = ping_pong_stab - 60 * simDR_passed
        else
            ping_pong_stab_round = 0
        end
        if ping_pong_stab > 5 then
         lit_stab_blinks = 2
        else
         lit_stab_blinks = 1
        end
  elseif stab_delta < -0.04 and bus27 > 0 then
        if ping_pong_stab < 10 and ping_pong_stab_round < 1 then
           ping_pong_stab = ping_pong_stab + 60 * simDR_passed
        else
            ping_pong_stab_round = 1
        end

        if ping_pong_stab > 0 and ping_pong_stab_round > 0 then
           ping_pong_stab = ping_pong_stab - 60 * simDR_passed
        else
            ping_pong_stab_round = 0
        end
        if ping_pong_stab > 5 then
         lit_stab_blinks = 2
        else
         lit_stab_blinks = 1
        end
  else
     ping_pong_stab = 0
     ping_pong_stab_round = 0
     lit_stab_blinks = 0
  end
    
  if slats_delta > 0.04 and bus27 > 0 then
    if ping_pong_slat < 10 and ping_pong_slat_round < 1 then
       ping_pong_slat = ping_pong_slat + 60 * simDR_passed
    else
        ping_pong_slat_round = 1
    end
    
    if ping_pong_slat > 0 and ping_pong_slat_round > 0 then
       ping_pong_slat = ping_pong_slat - 60 * simDR_passed
    else
        ping_pong_slat_round = 0
    end
    if ping_pong_slat > 5 then
     lit_slats_blinks = 2
    else
     lit_slats_blinks = 1
    end
  elseif slats_delta < -0.04 and bus27 > 0 then
    if ping_pong_slat < 10 and ping_pong_slat_round < 1 then
       ping_pong_slat = ping_pong_slat + 60 * simDR_passed
    else
        ping_pong_slat_round = 1
    end
    
    if ping_pong_slat > 0 and ping_pong_slat_round > 0 then
       ping_pong_slat = ping_pong_slat - 60 * simDR_passed
    else
        ping_pong_slat_round = 0
    end
    if ping_pong_slat > 5 then
     lit_slats_blinks = 2
    else
     lit_slats_blinks = 1
    end
  else
     ping_pong_slat = 0
     ping_pong_slat_round = 0
     lit_slats_blinks = 0
  end
   
    if simDR_torud_ratio > 0.01 and simDR_torud_ratio < 0.99 and bus27 > 0 then
        if ping_pong_torud < 10 and ping_pong_torud_round < 1 then
           ping_pong_torud = ping_pong_torud + 60 * simDR_passed
        else
            ping_pong_torud_round = 1
        end

        if ping_pong_torud > 0 and ping_pong_torud_round > 0 then
           ping_pong_torud = ping_pong_torud - 60 * simDR_passed
        else
            ping_pong_torud_round = 0
        end
        if ping_pong_torud > 5 then
         lit_torud_blinks = 2
        else
         lit_torud_blinks = 1
        end
    else
        ping_pong_torud = 0
        ping_pong_torud_round = 0
        lit_torud_blinks = 0
    end
    
    if simDR_toelev_ratio > 0.01 and simDR_toelev_ratio < 0.99 and bus27 > 0 then
        if ping_pong_toelev < 10 and ping_pong_toelev_round < 1 then
           ping_pong_toelev = ping_pong_toelev + 60 * simDR_passed
        else
            ping_pong_toelev_round = 1
        end

        if ping_pong_toelev > 0 and ping_pong_toelev_round > 0 then
           ping_pong_toelev = ping_pong_toelev - 60 * simDR_passed
        else
            ping_pong_toelev_round = 0
        end
        if ping_pong_toelev > 5 then
         lit_toelev_blinks = 2
        else
         lit_toelev_blinks = 1
        end
    else
        ping_pong_toelev = 0
        ping_pong_toelev_round = 0
        lit_toelev_blinks = 0
    end
    
    
end


function wave_func(sin_wave,round)
  if round == 0 then
        sin_wave = sin_wave + 0.03
  end
  if round == 1 then
        sin_wave = sin_wave - 0.03
  end
  return sin_wave
end

function round_func(sin_wave,round)
  if sin_wave > 2.9 then
     round = 1 
  end
  if sin_wave < 1.1 then
     round = 0 
  end 
  return round
end




function smooth_light_blink(orig_lit,new_lit,blink_mod)
	local day = 1 - 0.5 * simDR_daynight
    if orig_lit == 0 and new_lit == 0 and blink_mod == 0 then
        return 0
    elseif blink_mod > 0 and simDR_front_lamp_test < 1 then
        local new_lit_loc = new_lit * 10
        if blink_mod > 1 then
            if new_lit_loc < 10 * day then
                new_lit_loc = math.floor(new_lit_loc + 120 *simDR_passed)
            else
                new_lit_loc = 10 * day
            end
        elseif new_lit_loc > 2 then
            new_lit_loc = math.floor(new_lit_loc - 120 *simDR_passed)
        end
        return (new_lit_loc * 0.1)
    else
        local new_lit_loc = new_lit * 10
        local orig_lit_loc = orig_lit * 10
        if orig_lit_loc > new_lit_loc and new_lit_loc < 10 then
            new_lit_loc = math.floor(new_lit_loc + 120 *simDR_passed)
		elseif orig_lit_loc < new_lit_loc then
            new_lit_loc = math.floor(new_lit_loc - 120 *simDR_passed)
        elseif orig_lit_loc == 0 and new_lit_loc > 0 then
            new_lit_loc = math.floor(new_lit_loc - 120 *simDR_passed)
        end
        return (new_lit_loc * 0.1)
    end
end  







function new_lights()
    slats_extended =  smooth_light_blink(simDR_slats_extended,slats_extended,lit_slats_blinks)
    stab_work =  smooth_light_blink(simDR_stab_work,stab_work,lit_stab_blinks)
    to_rudder =  smooth_light_blink(simDR_to_rudder,to_rudder,lit_torud_blinks)
    to_elevator =  smooth_light_blink(simDR_to_elevator,to_elevator,lit_toelev_blinks)
end


function after_physics()
    new_lights()
    blinks_lights()
end
