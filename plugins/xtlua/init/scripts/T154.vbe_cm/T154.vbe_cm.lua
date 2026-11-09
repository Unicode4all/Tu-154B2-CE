function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

simDR_bus27left                    = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right                    = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_time = find_dataref("sim/time/zulu_time_sec")
simDR_passed = find_dataref("sim/operation/misc/frame_rate_period")
simDR_ping_pong = find_dataref("sim/graphics/animation/ping_pong_2")

simDR_vbe_alt_l	= find_dataref("tu154b2/custom/gauges/alt/vbe_alt_left")
simDR_vbe_press_l = find_dataref("tu154b2/custom/gauges/alt/vbe_press_left")
simDR_vbe_fl_l = find_dataref("tu154b2/custom/gauges/alt/vbe_flightlevel_left")
simDR_brt_l = find_dataref("tu154b2/custom/gauges/alt/vbe_brt_left")
simDR_vbe_on_l = find_dataref("tu154b2/custom/switchers/ovhd/vbe_1_on")
T154_kontur_90th = find_dataref("sim/custom/b2/kontur_90th")

simDR_check_alt_l = find_dataref("tu154b2/custom/lights/check_alt_left")
simDR_check_alt_r = find_dataref("tu154b2/custom/lights/check_alt_right")




simDR_on_ground = find_dataref("sim/flightmodel/failures/onground_all") 
simDR_vbe_alt_r	= find_dataref("tu154b2/custom/gauges/alt/vbe_alt_right")
simDR_vbe_press_r = find_dataref("tu154b2/custom/gauges/alt/vbe_press_right")
simDR_vbe_fl_r = find_dataref("tu154b2/custom/gauges/alt/vbe_flightlevel_right")
simDR_brt_r = find_dataref("tu154b2/custom/gauges/alt/vbe_brt_right")
simDR_vbe_on_r = find_dataref("tu154b2/custom/switchers/ovhd/vbe_2_on")
simDR_vbe_std_l= find_dataref("sim/custom/gauges/alt/vbe_left_p_push")
simDR_vbe_std_r= find_dataref("sim/custom/gauges/alt/vbe_right_p_push")
-- altitude_1000_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_alt_1000", "number")
-- altitude_100_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_alt_100", "number")
-- f_level_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_fl", "number")
-- needle_angle_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_needle", "number")
-- border_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_border", "number")
-- brt_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_brt", "number")
-- btn_mode_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_btn_mode", "number")
-- vbe_test_l = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_test", "number")
-- vbe_test_l2 = deferred_dataref("sim/custom/gauges/alt/vbe_cm_l_test2", "number")
simDR_vbe_mode_l=  find_dataref("tu154b2/custom/gauges/alt/vbe_mode_left", "number")
simDR_vbe_mode_r=  find_dataref("tu154b2/custom/gauges/alt/vbe_mode_right", "number")
-- altitude_1000_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_alt_1000", "number")
-- altitude_100_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_alt_100", "number")
-- f_level_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_fl", "number")
-- needle_angle_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_needle", "number")
-- border_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_border", "number")
-- brt_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_brt", "number")
-- btn_mode_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_btn_mode", "number")
-- vbe_test_r = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_test", "number")
-- vbe_test_r2 = deferred_dataref("sim/custom/gauges/alt/vbe_cm_r_test2", "number")
-- vbe_mode_l= deferred_dataref("sim/custom/gauges/alt/vbe_mode_left_new", "number")
-- vbe_mode_r= deferred_dataref("sim/custom/gauges/alt/vbe_mode_right_new", "number")

vbe_left_h_rot= deferred_dataref("sim/custom/gauges/alt/vbe_left_h_rot", "number")
vbe_left_p_rot= deferred_dataref("sim/custom/gauges/alt/vbe_left_p_rot", "number")
vbe_left_h_push= deferred_dataref("sim/custom/gauges/alt/vbe_left_h_push", "number")
vbe_left_p_push= deferred_dataref("sim/custom/gauges/alt/vbe_left_p_push", "number")
vbe_right_h_rot= deferred_dataref("sim/custom/gauges/alt/vbe_right_h_rot", "number")
vbe_right_p_rot= deferred_dataref("sim/custom/gauges/alt/vbe_right_p_rot", "number")
vbe_right_h_push= deferred_dataref("sim/custom/gauges/alt/vbe_right_h_push", "number")
vbe_right_p_push= deferred_dataref("sim/custom/gauges/alt/vbe_right_p_push", "number")
master = find_dataref("tu154b2/crew/ismaster")

ssos_alarm = deferred_dataref("sim/custom/ssos_alarm", "number")

 
local f_level_lm = 0
local altitude_current_l = 0
local altitude_diff_l = 0
local start_self_test_l = 1
local self_test_l = 0
local start_reset_mod_timer_l = 0
local vbe_press_was_l = 0

local altitude_current_r = 0
local altitude_diff_r = 0
local start_self_test_r = 1
local self_test_r = 0
local start_reset_mod_timer_r = 0
local vbe_press_was_l = 0
local vbe_press_timer = 0
local vbe_mode_l_prev=0
local vbe_mode_r_prev=0


function vbe_l_P_plus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
				simDR_vbe_press_l = simDR_vbe_press_l +1
			end 
			vbe_left_p_rot = 25  
			vbe_press_timer = 0 
		end
		
		if phase == 1 then
			if duration > 0.1 and duration < 3 then
				vbe_press_timer = vbe_press_timer +0.1
				if vbe_press_timer > 1 then
					simDR_vbe_press_l = simDR_vbe_press_l +1
					vbe_press_timer = 0
				end
			elseif duration > 3 then
				if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
					simDR_vbe_press_l = simDR_vbe_press_l +1
				end
				vbe_left_p_rot = 45
			end
		end
		if phase == 2 then
			vbe_press_timer = 0
			vbe_left_p_rot = 0
		end
	end
end

function vbe_l_P_minus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
				simDR_vbe_press_l = simDR_vbe_press_l -1
			end    
			vbe_left_p_rot = -25
			vbe_press_timer = 0 
		end
		
		if phase == 1 then
			if duration > 0.1 and duration < 3 then
				vbe_press_timer = vbe_press_timer +0.1
				if vbe_press_timer > 1 then
					simDR_vbe_press_l = simDR_vbe_press_l -1
					vbe_press_timer = 0
				end
			elseif duration > 3 then
				if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
					simDR_vbe_press_l = simDR_vbe_press_l -1
				end
				vbe_left_p_rot = -45
			end
		end
		if phase == 2 then
			vbe_left_p_rot = 0
			vbe_press_timer = 0 
		end
	end
end	

function vbe_l_P_std_CMDhandler(phase, duration)
	if phase == 0 then
		simDR_vbe_std_l = 1		
	elseif phase == 2 then
		simDR_vbe_std_l = 0
	end
end	


function vbe_l_H_plus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
				if simDR_vbe_mode_l == 1 then
					simDR_vbe_fl_l = simDR_vbe_fl_l +30.48
				else
					simDR_vbe_fl_l = simDR_vbe_fl_l +100
				end
			end    
			vbe_left_h_rot = 25
		end
		
		if phase == 1 then
			 if duration > 0.7 then
				if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
					if simDR_vbe_mode_l == 1 then
						simDR_vbe_fl_l = simDR_vbe_fl_l +60.96
					else
						simDR_vbe_fl_l = simDR_vbe_fl_l +100
					end
				end
				vbe_left_h_rot = 45
			end
		end
		if phase == 2 then
			vbe_left_h_rot = 0
		end
	end
end	

function vbe_l_H_minus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
				if simDR_vbe_mode_l == 1 then
					simDR_vbe_fl_l = simDR_vbe_fl_l -30.48
				else
					simDR_vbe_fl_l = simDR_vbe_fl_l -100
				end
			end   
			vbe_left_h_rot = -25 
		end
		
		if phase == 1 then
			 if duration > 0.7 then
				if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
					if simDR_vbe_mode_l == 1 then
						simDR_vbe_fl_l = simDR_vbe_fl_l -60.96
					else
						simDR_vbe_fl_l = simDR_vbe_fl_l -100
					end
				end
				vbe_left_h_rot = -45 
			end
		end
		if phase == 2 then
			vbe_left_h_rot = 0
		end
	end
end	


function vbe_r_P_plus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
				simDR_vbe_press_r = simDR_vbe_press_r +1
			end 
			vbe_right_p_rot = 25   
			vbe_press_timer = 0 
		end
		
		if phase == 1 then
			if duration > 0.1 and duration < 3 then
				vbe_press_timer = vbe_press_timer +0.1
				if vbe_press_timer > 1 then
					simDR_vbe_press_r = simDR_vbe_press_r +1
					vbe_press_timer = 0
				end
			elseif duration > 3 then
				if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
					simDR_vbe_press_r = simDR_vbe_press_r +1
				end
				vbe_left_p_rot = 45
			end
		end
		if phase == 2 then
			vbe_right_p_rot = 0
			vbe_press_timer = 0 
		end
	end
end
function vbe_r_P_minus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
				simDR_vbe_press_r = simDR_vbe_press_r -1
			end   
			vbe_right_p_rot = -25 
			vbe_press_timer = 0 
		end
		
		if phase == 1 then
			if duration > 0.1 and duration < 3 then
				vbe_press_timer = vbe_press_timer +0.1
				if vbe_press_timer > 1 then
					simDR_vbe_press_r = simDR_vbe_press_r -1
					vbe_press_timer = 0
				end
			elseif duration > 3 then
				if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
					simDR_vbe_press_r = simDR_vbe_press_r -1
				end
				vbe_left_p_rot = -45
			end
		end
		if phase == 2 then
			vbe_right_p_rot = 0
			vbe_press_timer = 0 
		end
	end
end

function vbe_r_P_std_CMDhandler(phase, duration)
	if phase == 0 then
		simDR_vbe_std_r = 1		
	elseif phase == 2 then
		simDR_vbe_std_r = 0
	end
end	

function vbe_r_H_plus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
				if simDR_vbe_mode_r == 1 then
					simDR_vbe_fl_r = simDR_vbe_fl_r +30.48
				else
					simDR_vbe_fl_r = simDR_vbe_fl_r +100
				end
			end
			vbe_right_h_rot = 25    
		end
		
		if phase == 1 then
			if duration > 0.7 then
				if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
					if simDR_vbe_mode_r == 1 then
						simDR_vbe_fl_r = simDR_vbe_fl_r +60.96
					else
						simDR_vbe_fl_r = simDR_vbe_fl_r +100
					end
				end
				vbe_right_h_rot = 45
			end
		end
		if phase == 2 then
			vbe_right_h_rot = 0
		end
	end
end	

function vbe_r_H_minus_CMDhandler(phase, duration)
	if master ~= 1 then
		if phase == 0 then
			if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
				if simDR_vbe_mode_r == 1 then
					simDR_vbe_fl_r = simDR_vbe_fl_r -30.48
				else
					simDR_vbe_fl_r = simDR_vbe_fl_r -100
				end
			end 
		   vbe_right_h_rot = -25   
		end
		
		if phase == 1 then
			 if duration > 0.7 then
				if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
					if simDR_vbe_mode_r == 1 then
						simDR_vbe_fl_r = simDR_vbe_fl_r -60.96
					else
						simDR_vbe_fl_r = simDR_vbe_fl_r -100
					end
				end
				vbe_right_h_rot = -45
			end
		end
		if phase == 2 then
			vbe_right_h_rot = 0
		end
	end
end	


vbe_l_h_plus	= create_command("t154/vbe/vbe_l_h_plus", "VBE_L H plus", vbe_l_H_plus_CMDhandler)
vbe_l_h_minus	= create_command("t154/vbe/vbe_l_h_minus", "VBE_L H minus", vbe_l_H_minus_CMDhandler)
vbe_r_h_plus	= create_command("t154/vbe/vbe_r_h_plus", "VBE_R H plus", vbe_r_H_plus_CMDhandler)
vbe_r_h_minus	= create_command("t154/vbe/vbe_r_h_minus", "VBE_R H minus", vbe_r_H_minus_CMDhandler)
vbe_l_p_plus	= create_command("t154/vbe/vbe_l_p_plus", "VBE_L P plus", vbe_l_P_plus_CMDhandler)
vbe_l_p_minus	= create_command("t154/vbe/vbe_l_p_minus", "VBE_L P minus", vbe_l_P_minus_CMDhandler)
vbe_r_p_plus	= create_command("t154/vbe/vbe_r_p_plus", "VBE_R P plus", vbe_r_P_plus_CMDhandler)
vbe_r_p_minus	= create_command("t154/vbe/vbe_r_p_minus", "VBE_R P minus", vbe_r_P_minus_CMDhandler)
vbe_l_P_std	= create_command("t154/vbe/vbe_l_p_std", "VBE_L P STD", vbe_l_P_std_CMDhandler)
vbe_r_P_std	= create_command("t154/vbe/vbe_r_p_std", "VBE_R P STD", vbe_r_P_std_CMDhandler)



function mode_reset()
    if btn_mode_l == 5 and simDR_on_ground < 1 then
        btn_mode_l = 0
    end
    if btn_mode_r == 5 and simDR_on_ground < 1 then
        btn_mode_r = 0
    end

    
    
    if btn_mode_l > 0 then
            start_reset_mod_timer_l = start_reset_mod_timer_l + simDR_passed
            if start_reset_mod_timer_l > 13 then
             btn_mode_l = 0
            end   
    end
    if btn_mode_r > 0 then
            start_reset_mod_timer_r = start_reset_mod_timer_r + simDR_passed
            if start_reset_mod_timer_r > 13 then
             btn_mode_r = 0
            end   
    end
end

function self_test()
    
    
    if simDR_vbe_on_l < 1 then
        start_self_test_l = 1
        self_test_l = 0
        btn_mode_l = 0
        vbe_test_l = 0
        vbe_test_l2 = -1
    end
    if simDR_vbe_on_l > 0 and simDR_bus27left < 1 then
        start_self_test_l = 1
        simDR_brt_l = 0
    end
    
    if vbe_test_l2 < 0 then
            simDR_brt_l = 0
    end
    
    
    if self_test_l > 0 and simDR_vbe_on_l > 0 and simDR_bus27left > 0 then
        if vbe_test_l2 < 1 then
            vbe_test_l2 = vbe_test_l2 + 0.005
            vbe_test_l = 1
        else
                vbe_test_l = 3
                btn_mode_l = 0
        end
    end
    
    
    if start_self_test_l > 0 and simDR_vbe_on_l > 0 and simDR_bus27left > 0 then
        if vbe_test_l2 < 1.5 then
            vbe_test_l2 = vbe_test_l2 + 0.005
            if vbe_test_l2 < 1 then
                vbe_test_l = 1
            end
            if vbe_test_l2 > 1 then
                vbe_test_l = 2
            end
            if simDR_brt_l < 0.69 and vbe_test_l2 > 0 then
             simDR_brt_l = simDR_brt_l + 0.01
            elseif vbe_test_l2 > 1 then
                simDR_brt_l = 0.7                
            end
        else
            start_self_test_l = 0
            vbe_test_l = 0
            vbe_test_l2 = 0
        end
        
    end
    
    
    
    
    
    if simDR_vbe_on_r < 1 then
        start_self_test_r = 1
        self_test_r = 0
        btn_mode_r = 0
        vbe_test_r = 0
        vbe_test_r2 = -1
        simDR_brt_r = 0
    end
    if simDR_vbe_on_r > 0 and simDR_bus27left < 1 then
        start_self_test_r = 1
        simDR_brt_r = 0
    end
    
    if self_test_r > 0 and simDR_vbe_on_r > 0 and simDR_bus27right > 0 then
        if vbe_test_r2 < 1 then
            vbe_test_r2 = vbe_test_r2 + 0.005
            vbe_test_r = 1
        else
                vbe_test_r = 3
                btn_mode_r = 0
        end
    end
    
    if vbe_test_r2 < 0 then
            simDR_brt_r = 0
    end
    
    if start_self_test_r > 0 and simDR_vbe_on_r > 0 and simDR_bus27right > 0 then
        if vbe_test_r2 < 1.5 then
            vbe_test_r2 = vbe_test_r2 + 0.005
            if vbe_test_r2 < 1 then
                vbe_test_r = 1
            end
            if vbe_test_r2 > 1 then
                vbe_test_r = 2
            end
            if simDR_brt_r < 0.69 and vbe_test_r2 > 0 then
             simDR_brt_r = simDR_brt_r + 0.01
            elseif vbe_test_r2 > 1 then
                simDR_brt_r = 0.7              
            end
        else
            start_self_test_r = 0
            vbe_test_r = 0
            vbe_test_r2 = 0
        end
        
    end
end

function altitudes_calc()
    
    if simDR_vbe_mode_l == 0 then 
        if simDR_vbe_alt_l > 0 and self_test_l < 1 then
            altitude_1000_l = math.floor(simDR_vbe_alt_l * 0.001)
			altitude_100_l = math.floor((simDR_vbe_alt_l - altitude_1000_l * 1000) * 0.2) * 5
        elseif self_test_l < 1 then 
            altitude_1000_l = math.ceil(simDR_vbe_alt_l * 0.001) 
			altitude_100_l = math.ceil((simDR_vbe_alt_l - altitude_1000_l * 1000) * 0.2) * 5
        else
            altitude_1000_l = 12
            altitude_100_l = 100
        end
	else 
        if simDR_vbe_alt_l > 0 and self_test_l < 1 then
            altitude_1000_l = math.floor((simDR_vbe_alt_l / 0.3048) * 0.001)
			altitude_100_l = math.floor(((simDR_vbe_alt_l / 0.3048) - altitude_1000_l * 1000) / 10) * 10
        elseif self_test_l < 1 then
            altitude_1000_l = math.ceil((simDR_vbe_alt_l / 0.3048) * 0.001)
			altitude_100_l = math.ceil(((simDR_vbe_alt_l / 0.3048) - altitude_1000_l * 1000) / 10) * 10
        else
            altitude_1000_l = 12
            altitude_100_l = 100
        end
	end 
    if vbe_mode_l_prev~=simDR_vbe_mode_l then
		if simDR_vbe_mode_l==0 then
			simDR_vbe_fl_l=math.floor(simDR_vbe_fl_l/100 + 0.5)*100
		else
			simDR_vbe_fl_l=math.floor(simDR_vbe_fl_l*3.28084/100 + 0.5)*100/3.28084
		end
    end
    vbe_mode_l_prev=simDR_vbe_mode_l
    if vbe_mode_r == 0 then 
        if simDR_vbe_alt_r > 0 and self_test_r < 1 then
            altitude_1000_r = math.floor(simDR_vbe_alt_r * 0.001)
			altitude_100_r = math.floor((simDR_vbe_alt_r - altitude_1000_r * 1000) * 0.2) * 5
        elseif self_test_r < 1 then 
            altitude_1000_r = math.ceil(simDR_vbe_alt_r * 0.001) 
			altitude_100_r = math.ceil((simDR_vbe_alt_r - altitude_1000_r * 1000) * 0.2) * 5
        else
            altitude_1000_r = 12
            altitude_100_r = 100
        end
	else 
        if simDR_vbe_alt_r > 0 and self_test_r < 1 then
            altitude_1000_r = math.floor((simDR_vbe_alt_r / 0.3048) * 0.001)
			altitude_100_r = math.floor(((simDR_vbe_alt_r / 0.3048) - altitude_1000_r * 1000) / 10) * 10
        elseif self_test_r < 1 then
            altitude_1000_r = math.ceil((simDR_vbe_alt_r / 0.3048) * 0.001)
			altitude_100_r = math.ceil(((simDR_vbe_alt_r / 0.3048) - altitude_1000_r * 1000) / 10) * 10
        else
            altitude_1000_r = 12
            altitude_100_r = 100
        end
	end 
	if vbe_mode_r_prev~=simDR_vbe_mode_r then
		if simDR_vbe_mode_r==0 then
			simDR_vbe_fl_r=math.floor(simDR_vbe_fl_r/100 + 0.5)*100
		else
			simDR_vbe_fl_r=math.floor(simDR_vbe_fl_r*3.28084/100 + 0.5)*100/3.28084
		end
    end
	 vbe_mode_r_prev=simDR_vbe_mode_r
end


function border_draw()
        
    if simDR_vbe_fl_l > 0 and start_self_test_l < 1 and self_test_l < 1 then
        altitude_current_l = (altitude_1000_l * 1000) + altitude_100_l
        altitude_diff_l = math.abs(f_level_l - altitude_current_l)
        if vbe_mode_l == 0 then
            if altitude_diff_l >= 150 then
                border_l = 2
            elseif altitude_diff_l >= 60 and altitude_diff_l < 150 then
                
                if simDR_ping_pong > 0.3 then
                    border_l = 0
                elseif simDR_ping_pong < -0.3 then
                    border_l = 0
                else
                    border_l = 2
                end
            else
                border_l = 1
            end
        else
           if altitude_diff_l >= 500 then
                border_l = 2
            elseif altitude_diff_l >= 200 and altitude_diff_l < 500 then
                if simDR_ping_pong > 0.3 then
                    border_l = 0
                elseif simDR_ping_pong < -0.3 then
                    border_l = 0
                else
                    border_l = 2
                end
            else
                border_l = 1
            end 
            end 
    
    else
        border_l = 0
    end 
    
    if self_test_l > 0 and vbe_test_l == 3 then
        if simDR_ping_pong > 0.3 then
                    border_l = 0
                elseif simDR_ping_pong < -0.3 then
                    border_l = 0
                else
                    border_l = 1
        end
    end
    
    if simDR_vbe_fl_r > 0 and start_self_test_r < 1 and self_test_r < 1 then
        altitude_current_r = (altitude_1000_r * 1000) + altitude_100_r
        altitude_diff_r = math.abs(f_level_r - altitude_current_r)
        if vbe_mode_r == 0 then
            if altitude_diff_r >= 150 then
                border_r = 2
            elseif altitude_diff_r >= 60 and altitude_diff_r < 150 then
                
                if simDR_ping_pong > 0.3 then
                    border_r = 0
                elseif simDR_ping_pong < -0.3 then
                    border_r = 0
                else
                    border_r = 2
                end
            else
                border_r = 1
            end
        else
           if altitude_diff_r >= 500 then
                border_r = 2
            elseif altitude_diff_r >= 200 and altitude_diff_r < 500 then
                if simDR_ping_pong > 0.3 then
                    border_r = 0
                elseif simDR_ping_pong < -0.3 then
                    border_r = 0
                else
                    border_r = 2
                end
            else
                border_r = 1
            end 
            end 
    
    else
        border_r = 0
    end 
    
    if self_test_r > 0 and vbe_test_r == 3 then
        if simDR_ping_pong > 0.3 then
                    border_r = 0
                elseif simDR_ping_pong < -0.3 then
                    border_r = 0
                else
                    border_r = 1
        end
    end
end

function after_physics()
    -- if T154_kontur_90th > 0 then
        -- altitudes_calc()


        -- if simDR_bus27left*simDR_bus27right*simDR_vbe_on_l*simDR_vbe_on_r > 0 and ssos_alarm == 0 and math.abs(simDR_vbe_alt_l-simDR_vbe_alt_r) > 60 then
            -- simDR_check_alt_l = 1
            -- simDR_check_alt_r = 1
        -- end

        -- if simDR_bus27left > 0 and simDR_vbe_on_l > 0 then
            -- if vbe_left_h_push > 0 then
                -- simDR_vbe_fl_l = 0
            -- end
            -- if vbe_left_p_push > 0 then
                -- simDR_vbe_press_l = 1013
            -- end
        -- end 
        
        -- if simDR_bus27right > 0 and simDR_vbe_on_r > 0 then
            -- if vbe_right_h_push > 0 then
                -- simDR_vbe_fl_r = 0
            -- end
            -- if vbe_right_p_push > 0 then
                -- simDR_vbe_press_r = 1013
            -- end
        -- end 
    -- end
end
