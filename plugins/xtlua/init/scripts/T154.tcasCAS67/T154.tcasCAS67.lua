function deferred_dataref(name,type,notifier)
	print("Deffered dataref: "..name)
	dref=XLuaCreateDataRef(name, type,"yes",notifier)
	return wrap_dref_any(dref,type) 
end

simDR_sqwk	= find_dataref("sim/cockpit2/radios/actuators/transponder_code")
simDR_fid	= find_dataref("sim/cockpit2/radios/actuators/flight_id")
simDR_tcas_disp_mod	= find_dataref("tu154b2/custom/tcas/screen_mode")
--simDR_tra67 = find_dataref("tu154b2/custom/switchers/ovhd/tra_67_on")
simDR_tcas_sw_mod	= find_dataref("tu154b2/custom/switchers/tcas/tcas_mode")
simDR_but_sound  = find_dataref("tu154b2/custom/tcas/tcas_button")
simDR_vsi_brtleft  = find_dataref("tu154b2/custom/gauges/vsi/vsi_brt_left")
simDR_vsi_brtright  = find_dataref("tu154b2/custom/gauges/vsi/vsi_brt_right")
simDR_tcas_lvl_mode = find_dataref("tu154b2/custom/tcas/level_mode")
simDR_tcas_rng_mode = find_dataref("tu154b2/custom/tcas/range_set")
simDR_tcas_fl_mode = find_dataref("tu154b2/custom/tcas/fl_mode")
simDR_ping_pong = find_dataref("sim/graphics/animation/ping_pong_2")
simDR_tcas_ovhd = find_dataref("tu154b2/custom/switchers/ovhd/tcas_on")
simDR_bus27left = find_dataref("tu154b2/custom/elec/bus27_volt_left")
simDR_bus27right = find_dataref("tu154b2/custom/elec/bus27_volt_right")
simDR_startuprunning = find_dataref("sim/operation/prefs/startup_running")
simDR_tcas_mode = find_dataref("tu154b2/custom/tcas/mode_set")
simDR_tra67 = find_dataref("tu154b2/custom/switchers/ovhd/tra_67_on")
simDR_dt = find_dataref("tu154b2/custom/time/frame_time")
simDR_altitude = find_dataref("sim/flightmodel2/position/pressure_altitude")
simDR_xpdr_rply = find_dataref("sim/cockpit/radios/transponder_light")
T154_kontur_90th = find_dataref("sim/custom/b2/kontur_90th")

simDR_1000_up	= find_command("sim/radios/transponder_1000_up")
simDR_1000_dn	= find_command("sim/radios/transponder_1000_down")
simDR_100_up	= find_command("sim/radios/transponder_100_up")
simDR_100_dn	= find_command("sim/radios/transponder_100_down")
simDR_10_up	= find_command("sim/radios/transponder_10_up")
simDR_10_dn	= find_command("sim/radios/transponder_10_down")
simDR_1_up	= find_command("sim/radios/transponder_1_up")
simDR_1_dn	= find_command("sim/radios/transponder_1_down")


mode = deferred_dataref("sim/custom/tcas2000/mode", "number")
l1 = deferred_dataref("sim/custom/tcas2000/l1", "number")
l2 = deferred_dataref("sim/custom/tcas2000/l2", "number")
r1 = deferred_dataref("sim/custom/tcas2000/r1", "number")
r2 = deferred_dataref("sim/custom/tcas2000/r2", "number")
atcfid = deferred_dataref("sim/custom/tcas2000/atcfid", "number") 
select12 = deferred_dataref("sim/custom/tcas2000/sel12", "number") 
tcas_pwr = deferred_dataref("sim/custom/tcas2000/tcas_pwr", "number") 

line1 = deferred_dataref("sim/custom/tcas2000/line1", "string")
line2 = deferred_dataref("sim/custom/tcas2000/line2", "string")
line1_sc = deferred_dataref("sim/custom/tcas2000/line1_sc", "string")
line2_sc = deferred_dataref("sim/custom/tcas2000/line2_sc", "string")
ta_sel = deferred_dataref("sim/custom/tcas2000/ta_sel", "number")
ta_sel_l = deferred_dataref("sim/custom/tcas2000/ta_sel_l", "number")
ta_sel_r = deferred_dataref("sim/custom/tcas2000/ta_sel_r", "number")
screen_test = deferred_dataref("sim/custom/tcas2000/cas67_screen_test", "number")
rply = deferred_dataref("sim/custom/tcas2000/cas67_reply", "number")

simDR_db1	= find_dataref("tu154b2/custom/controlls/debug1")
code = deferred_dataref("sim/custom/tcas2000/code", "number")
flt_nmb_1 = find_dataref("tu154b2/custom/tcas2000/flt_no_1")
flt_nmb_2 = find_dataref("tu154b2/custom/tcas2000/flt_no_2")
flt_nmb_3 = find_dataref("tu154b2/custom/tcas2000/flt_no_3")
flt_nmb_4 = find_dataref("tu154b2/custom/tcas2000/flt_no_4")
flt_nmb_5 = find_dataref("tu154b2/custom/tcas2000/flt_no_5")
flt_nmb_6 = find_dataref("tu154b2/custom/tcas2000/flt_no_6")
flt_nmb_7 = find_dataref("tu154b2/custom/tcas2000/flt_no_7")
flt_nmb_8 = find_dataref("tu154b2/custom/tcas2000/flt_no_8")
fail = find_dataref("tu154b2/custom/tcas/tcas_fail")

sqwk_vfr = find_dataref("tu154b2/custom/tcas2000/sqwk_vfr")

vbe_sel = find_dataref("tu154b2/custom/switchers/vbe_select")
vbe_1 = find_dataref("tu154b2/custom/switchers/ovhd/vbe_1_on")
vbe_2 = find_dataref("tu154b2/custom/switchers/ovhd/vbe_2_on")
xpdr_fail=find_dataref("sim/operation/failures/rel_xpndr")
alt_fail=find_dataref("tu154b2/custom/tcas/tcas_alt_fail")

SC_master=find_dataref("tu154b2/crew/ismaster")
local tcas_test_start = 0


local sqwk_1000 = math.floor(code*0.001)
local sqwk_0100 = math.floor(code*0.01)-sqwk_1000*10
local sqwk_0010 = math.floor(code*0.1)-sqwk_1000*100-sqwk_0100*10
local sqwk_0001 = code-sqwk_1000*1000-sqwk_0100*100-sqwk_0010*10
local mode_prev=0
--local sqwk_vfr = 

-- local flt_nmb_1=flt_no_1
-- local flt_nmb_2=flt_no_2
-- local flt_nmb_3=flt_no_3
-- local flt_nmb_4=flt_no_4
-- local flt_nmb_5=flt_no_5
-- local flt_nmb_6=flt_no_6
-- local flt_nmb_7=flt_no_7
-- local flt_nmb_8=flt_no_8




local vfr_timeout = 0
local vfr_sqwk_set = 0
local bus27 = 0
local unit_sel = 0
local unit_sel_timeout = 0
local fl_mode_timeout = 0
local aircraft_loaded = 0

local char_arr={"A",
				"B",
				"C",
				"D",
				"E",
				"F",
				"G",
				"H",
				"I",
				"J",
				"K",
				"L",
				"M",
				"N",
				"O",
				"P",
				"Q",
				"R",
				"S",
				"T",
				"U",
				"V",
				"W",
				"X",
				"Y",
				"Z",
				" ",
				"0",
				"1",
				"2",
				"3",
				"4",
				"5",
				"6",
				"7",
				"8",
				"9",
				"("}
				


function tcas2000_l1_up_CMDhandler(phase, duration)
    if phase == 0 then
            if simDR_tcas_disp_mod < 100 then
                if simDR_tcas_rng_mode < 4 then
                   simDR_tcas_rng_mode = simDR_tcas_rng_mode +1
                end
            end
           if l1 > 0 then
            l1 = l1 - 36
           else
            l1 = 324
           end
    end   	
end	
function tcas2000_l1_dn_CMDhandler(phase, duration)
    if phase == 0 then
            if simDR_tcas_rng_mode < 100 then
                if simDR_tcas_rng_mode > 0 then
                   simDR_tcas_rng_mode = simDR_tcas_rng_mode -1
                end
            end
           if l1 < 324 then
            l1 = l1 + 36
           else
            l1 = 0
           end
    end   	
end	

function tcas2000_l2_up_CMDhandler(phase, duration)
    if phase == 0 then
            if simDR_tcas_disp_mod < 100 then
                if simDR_tcas_lvl_mode > -1 then
                   simDR_tcas_lvl_mode = simDR_tcas_lvl_mode -1
                end
            end
           if l2 > 0 then
            l2 = l2 - 36
           else
            l2 = 324
           end
    end   	
end	
function tcas2000_l2_dn_CMDhandler(phase, duration)
    if phase == 0 then
            if simDR_tcas_disp_mod < 100 then
                if simDR_tcas_lvl_mode < 1 then
                   simDR_tcas_lvl_mode = simDR_tcas_lvl_mode +1
                end
            end
           if l2 < 324 then
            l2 = l2 + 36
           else
            l2 = 0
           end
    end   	
end	

function tcas2000_r1_up_CMDhandler(phase, duration)
    if phase == 0 then
            if simDR_tcas_disp_mod < 100 and screen_test==0 then
                if atcfid == 0 and mode < 5 then
                   mode = mode +1
                end
            end
           if r1 > 0 then
            r1 = r1 - 36
           else
            r1 = 324
           end
    end   	
end	
function tcas2000_r1_dn_CMDhandler(phase, duration)
    if phase == 0 then
            if simDR_tcas_disp_mod < 100 and screen_test==0 then
                if atcfid == 0 and mode > -1 then
                   mode = mode -1
                end
            end
           if r1 < 324 then
            r1 = r1 + 36
           else
            r1 = 0
           end
    end   	
end	

function tcas2000_r2_up_CMDhandler(phase, duration)
    if phase == 0 then
			if atcfid==0 then
				if unit_sel == 1 then
					if sqwk_1000 < 7 then
						sqwk_1000=sqwk_1000+1
					else
						sqwk_1000=0
					end
				end
				if unit_sel == 2 then
					if sqwk_0100 < 7 then
						sqwk_0100=sqwk_0100+1
					else
						sqwk_0100=0
					end
				end
				if unit_sel == 3 then
					if sqwk_0010 < 7 then
						sqwk_0010=sqwk_0010+1
					else
						sqwk_0010=0
					end
				end
				if unit_sel == 4 then
					if sqwk_0001 < 7 then
						sqwk_0001=sqwk_0001+1
					else
						sqwk_0001=0
					end
				end
				unit_sel_timeout = 50
			else
				if unit_sel == 1 then
					if flt_nmb_1 < 37 then
						flt_nmb_1=flt_nmb_1+1
					else
						flt_nmb_1=1
					end
				end
				if unit_sel == 2 then
					if flt_nmb_2 < 37 then
						flt_nmb_2=flt_nmb_2+1
					else
						flt_nmb_2=1
					end
				end
				if unit_sel == 3 then
					if flt_nmb_3 < 37 then
						flt_nmb_3=flt_nmb_3+1
					else
						flt_nmb_3=1
					end
				end
				if unit_sel == 4 then
					if flt_nmb_4 < 37 then
						flt_nmb_4=flt_nmb_4+1
					else
						flt_nmb_4=1
					end
				end
				if unit_sel == 5 then
					if flt_nmb_5 < 37 then
						flt_nmb_5=flt_nmb_5+1
					else
						flt_nmb_5=1
					end
				end
				if unit_sel == 6 then
					if flt_nmb_6 < 37 then
						flt_nmb_6=flt_nmb_6+1
					else
						flt_nmb_6=1
					end
				end
				if unit_sel == 7 then
					if flt_nmb_7 < 37 then
						flt_nmb_7=flt_nmb_7+1
					else
						flt_nmb_7=1
					end
				end
				if unit_sel == 8 then
					if flt_nmb_8 < 37 then
						flt_nmb_8=flt_nmb_8+1
					else
						flt_nmb_8=1
					end
				end
				unit_sel_timeout = 50
			end
           if r2 > 0 then
            r2 = r2 - 36
           else
            r2 = 324
           end
    end   	
end	
function tcas2000_r2_dn_CMDhandler(phase, duration)
    if phase == 0 then
			if atcfid==0 then
				if unit_sel == 1 then
					if sqwk_1000 > 0 then
						sqwk_1000=sqwk_1000-1
					else
						sqwk_1000=7
					end
				end
				if unit_sel == 2 then
					if sqwk_0100 > 0 then
						sqwk_0100=sqwk_0100-1
					else
						sqwk_0100=7
					end
				end
				if unit_sel == 3 then
					if sqwk_0010 > 0 then
						sqwk_0010=sqwk_0010-1
					else
						sqwk_0010=7
					end
				end
				if unit_sel == 4 then
					if sqwk_0001 > 0 then
						sqwk_0001=sqwk_0001-1
					else
						sqwk_0001=7
					end
				end
				unit_sel_timeout = 50
			else
				if unit_sel == 1 then
					if flt_nmb_1 > 1 then
						flt_nmb_1=flt_nmb_1-1
					else
						flt_nmb_1=37
					end
				end
				if unit_sel == 2 then
					if flt_nmb_2 >1 then
						flt_nmb_2=flt_nmb_2-1
					else
						flt_nmb_2=37
					end
				end
				if unit_sel == 3 then
					if flt_nmb_3 >1 then
						flt_nmb_3=flt_nmb_3-1
					else
						flt_nmb_3=37
					end
				end
				if unit_sel == 4 then
					if flt_nmb_4 >1 then
						flt_nmb_4=flt_nmb_4-1
					else
						flt_nmb_4=37
					end
				end
				if unit_sel == 5 then
					if flt_nmb_5 >1 then
						flt_nmb_5=flt_nmb_5-1
					else
						flt_nmb_5=37
					end
				end
				if unit_sel == 6 then
					if flt_nmb_6 >1 then
						flt_nmb_6=flt_nmb_6-1
					else
						flt_nmb_6=37
					end
				end
				if unit_sel == 7 then
					if flt_nmb_7 >1 then
						flt_nmb_7=flt_nmb_7-1
					else
						flt_nmb_7=37
					end
				end
				if unit_sel == 8 then
					if flt_nmb_8 >1 then
						flt_nmb_8=flt_nmb_8-1
					else
						flt_nmb_8=37
					end
				end
				unit_sel_timeout = 50
			
			
			end
           if r2 < 324 then
            r2 = r2 + 36
           else
            r2 = 0
           end
    end   	
end	

function tcas2000_fidbtn_CMDhandler(phase, duration)
    if phase == 0 then
        if simDR_tcas_disp_mod < 5 and simDR_tcas_disp_mod > -1 then
            if atcfid < 1 then
                atcfid = 1
				unit_sel = 0
            else
                atcfid = 0
				unit_sel = 0
            end
        end
        simDR_but_sound = 1
    elseif phase == 2 then
        simDR_but_sound = 0
    end   	
end

function tcas2000_12btn_CMDhandler(phase, duration)
    if phase == 0 then
        if simDR_tcas_disp_mod < 5 and simDR_tcas_disp_mod > -1 then
            if select12 < 1 then
                select12 = 1
            else
                select12 = 0
            end
        end
        simDR_but_sound = 1
    elseif phase == 2 then
        simDR_but_sound = 0
    end   	
end	

function tcas2000_lpush_CMDhandler(phase, duration)
    if phase == 0 then
        if bus27 > 0 and simDR_tra67 > 0 then
           if tcas_pwr > 0 then
              tcas_pwr = 0
			  atcfid = 0
           else
				simDR_sqwk = code
				tcas_pwr = 1
           end
        end
        simDR_but_sound = 1
    elseif phase == 2 then
        simDR_but_sound = 0
    end   	
end

function tcas2000_rpush_CMDhandler(phase, duration)
    if phase == 0 then
        if simDR_tcas_disp_mod < 5 and simDR_tcas_disp_mod > -1 and  atcfid == 0 then
            if unit_sel < 4 then
              unit_sel = unit_sel +1
              unit_sel_timeout = 50
            else
              unit_sel = 0
              unit_sel_timeout = 50
            end
		elseif atcfid == 1 then
			if unit_sel < 8 then
              unit_sel = unit_sel +1
              unit_sel_timeout = 50
            else
              unit_sel = 0
              unit_sel_timeout = 50
            end
        end
        simDR_but_sound = 1
    elseif phase == 1 then
        if duration > 4 then
           simDR_tcas_fl_mode = 1
           unit_sel = 0
        end
    elseif phase == 2 then
        simDR_but_sound = 0
    end   	
end		







l_1_up	= create_command("tcas2000/l1_up", "TCAS2000 L1 u", tcas2000_l1_up_CMDhandler)
l_1_dn	= create_command("tcas2000/l1_dn", "TCAS2000 L1 d", tcas2000_l1_dn_CMDhandler)
l_2_up	= create_command("tcas2000/l2_up", "TCAS2000 L2 u", tcas2000_l2_up_CMDhandler)
l_2_dn	= create_command("tcas2000/l2_dn", "TCAS2000 L2 d", tcas2000_l2_dn_CMDhandler)
r_1_up	= create_command("tcas2000/r1_up", "TCAS2000 R1 u", tcas2000_r1_up_CMDhandler)
r_1_dn	= create_command("tcas2000/r1_dn", "TCAS2000 R1 d", tcas2000_r1_dn_CMDhandler)
r_2_up	= create_command("tcas2000/r2_up", "TCAS2000 R2 u", tcas2000_r2_up_CMDhandler)
r_2_dn	= create_command("tcas2000/r2_dn", "TCAS2000 R2 d", tcas2000_r2_dn_CMDhandler)
tcas_lpush_btn	= create_command("tcas2000/lpush", "TCAS2000 LPUSH", tcas2000_lpush_CMDhandler)
tcas_rpush_btn	= create_command("tcas2000/rpush", "TCAS2000 RPUSH", tcas2000_rpush_CMDhandler)
tcas_12_btn	= create_command("tcas2000/12btn", "TCAS2000 12 BTN", tcas2000_12btn_CMDhandler)
tcas_fid_btn	= create_command("tcas2000/fidbtn", "TCAS2000 FID BTN", tcas2000_fidbtn_CMDhandler)




function aircraft_load() 
    aircraft_loaded = 1
end

function txt_gap(ind)
	local ind_new=ind
	if ind==27 then
		ind_new=38
	end
	return ind_new
end

function tcas()
    -- local flight_level_1=math.floor(simDR_altitude/10000)
	-- local flight_level_2=math.floor(simDR_altitude/1000)
	-- local flight_level_3=math.floor(simDR_altitude/100)
	local flight_level=math.floor(simDR_altitude/100)
    if simDR_tcas_mode > 2 and (ta_sel_l+ta_sel_r) > 0 and ta_sel == 0 then
        ta_sel = 0.5
    elseif ta_sel == 0.5 and (ta_sel_l+ta_sel_r) < 1 then
        ta_sel = 1
    elseif ta_sel == 1 and (ta_sel_l+ta_sel_r) > 0 then
        ta_sel = 0.4
    elseif ta_sel == 0.4 and (ta_sel_l+ta_sel_r) < 1 then
        ta_sel = 0
    end


    if simDR_tra67 < 1 then
       if simDR_tcas_disp_mod < 100 then
          simDR_tcas_disp_mod = -1
       end
    end
    
    
    if aircraft_loaded > 0 then
        if simDR_startuprunning > 0 then
            tcas_pwr = 1
            mode = 5
        end
       aircraft_loaded = 0
    end
    
    if simDR_tcas_fl_mode > 0 then
       fl_mode_timeout = fl_mode_timeout - 0.05
       if fl_mode_timeout < 2 then
            simDR_tcas_fl_mode = 0
       end
    else
       fl_mode_timeout = 40
    end
    
    if unit_sel > 0 and unit_sel_timeout > 0 then
       unit_sel_timeout = unit_sel_timeout -4 * SIM_PERIOD
       if unit_sel_timeout < 2 then
          unit_sel = 0
       end
    end
    
    
    if simDR_bus27left > 5 then
        bus27 = 1
    elseif simDR_bus27right > 5 then
        bus27 = 1
    else
        bus27 = 0
    end 
    
    
    if bus27 > 0 and simDR_tra67 > 0 then
    else
        tcas_pwr = 0
    end
    

    if tcas_pwr < 1 then 
         simDR_tcas_disp_mod = 100
         mode = 0
         simDR_tcas_lvl_mode = 0
         simDR_tcas_rng_mode = 3
    end
    

    if mode < 3 then
       simDR_tcas_sw_mod = mode
    else
       simDR_tcas_sw_mod = mode -1
    end
    if SC_master~=1 then
		if mode == -1 and tcas_test_start < 1 then
		   tcas_test_start = 8
		end
		if code ~= simDR_sqwk then
			sqwk_1000 = math.floor(simDR_sqwk*0.001)
			sqwk_0100 = math.floor(simDR_sqwk*0.01)-sqwk_1000*10
			sqwk_0010 = math.floor(simDR_sqwk*0.1)-sqwk_1000*100-sqwk_0100*10
			sqwk_0001 = simDR_sqwk-sqwk_1000*1000-sqwk_0100*100-sqwk_0010*10
		end
		if tcas_test_start > 1 then
		   tcas_test_start = tcas_test_start -simDR_dt
		   if tcas_test_start < 2 then
			  if mode == -1 then
				 mode = 0
				 screen_test = 0
			  end
		   end
		   if tcas_pwr==0 then
				screen_test = 0
				tcas_test_start = 0
			end
		end
		if simDR_tcas_disp_mod < 100 then
			simDR_fid=string.format(char_arr[flt_nmb_1]..char_arr[flt_nmb_2]..char_arr[flt_nmb_3]..char_arr[flt_nmb_4]..char_arr[flt_nmb_5]..char_arr[flt_nmb_6]..char_arr[flt_nmb_7])
			if simDR_tcas_disp_mod > -1 then
				code = sqwk_1000*1000+sqwk_0100*100+sqwk_0010*10+sqwk_0001
				if code ~= simDR_sqwk then
					simDR_sqwk = code
				end
			end
				
			if xpdr_fail>0 or select12>0 then
				if math.abs(simDR_ping_pong) > 0.5 then
					line2 = string.format("FAIL") 
				else
					line2 = string.format("") 
				end
				line1 = string.format("////") 
				rply=0
			elseif mode>3 and fail>0 then
				   -- sqwk_1000 = math.floor(code*0.001)
				   -- sqwk_0100 = math.floor(code*0.01)-sqwk_1000*10
				   -- sqwk_0010 = math.floor(code*0.1)-sqwk_1000*100-sqwk_0100*10
				   -- sqwk_0001 = code-sqwk_1000*1000-sqwk_0100*100-sqwk_0010*10
				   -- --mode = 0
				   -- line1 = string.format("%s%s%s%s",sqwk_1000,sqwk_0100,sqwk_0010,sqwk_0001)
				   -- line2 = string.format("FAIL") 
				   -- rply=simDR_xpdr_rply
					mode = 2
			elseif simDR_tcas_fl_mode == 1 then
				if alt_fail==0 then
					if flight_level<10 then
						line1 = string.format("000%s",flight_level)
						line2 = string.format(" FL ")
					elseif flight_level<100 then
						line1 = string.format("00%s",flight_level)
						line2 = string.format(" FL ")
					elseif flight_level<1000 then
						line1 = string.format("0%s",flight_level)
						line2 = string.format(" FL ")
					else 
						line1 = string.format("%s",flight_level)
						line2 = string.format(" FL ")
					end
				else
					--if math.abs(simDR_ping_pong) > 0.5 then
					line2 = string.format(" FL ") 
					--else
						--line2 = string.format("") 
					--end
					line1 = string.format("----") 
				end
					
			elseif atcfid == 0 then
				
				
				if unit_sel == 1 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format("%s%s%s%s",sqwk_1000,sqwk_0100,sqwk_0010,sqwk_0001)
					else
						line1 = string.format(" %s%s%s",sqwk_0100,sqwk_0010,sqwk_0001)
					end
				elseif unit_sel == 2 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format("%s%s%s%s",sqwk_1000,sqwk_0100,sqwk_0010,sqwk_0001)
					else
						line1 = string.format("%s %s%s",sqwk_1000,sqwk_0010,sqwk_0001)
					end
				elseif unit_sel == 3 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format("%s%s%s%s",sqwk_1000,sqwk_0100,sqwk_0010,sqwk_0001)
					else
						line1 = string.format("%s%s %s",sqwk_1000,sqwk_0100,sqwk_0001)
					end
				elseif unit_sel == 4 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format("%s%s%s%s",sqwk_1000,sqwk_0100,sqwk_0010,sqwk_0001)
					else
						line1 = string.format("%s%s%s ",sqwk_1000,sqwk_0100,sqwk_0010)
					end
				else
				   line1 = string.format("%s%s%s%s",sqwk_1000,sqwk_0100,sqwk_0010,sqwk_0001)
				end
				
				 if simDR_tcas_disp_mod > -1 and simDR_tcas_disp_mod < 100 then
					if mode == -1 then
						if tcas_test_start>6 then
							line1 = string.format("))))")
							line2 = string.format("))))")
							screen_test=-2
						else
							if alt_fail>0 then
								line2 = string.format(" FL ") 
								line1 = string.format("----") 
							elseif flight_level<10 then
								line1 = string.format("000%s",flight_level)
								line2 = string.format(" FL ")
							elseif flight_level<100 then
								line1 = string.format("00%s",flight_level)
								line2 = string.format(" FL ")
							elseif flight_level<1000 then
								line1 = string.format("0%s",flight_level)
								line2 = string.format(" FL ")
							else 
								line1 = string.format("%s",flight_level)
								line2 = string.format(" FL ")
							end
							screen_test=-1
						end
						rply=0
					end
					if mode == 0 then
					  line2 = string.format("STBY")
					  rply=0
					  --screen_test=0
					  mode_prev=mode
					end
					if mode == 1 then
					  line2 = string.format("ON  ")
					  rply=simDR_xpdr_rply
					  --screen_test=0
					  mode_prev=mode
					end
					if mode == 2 then
					  line2 = string.format("ALT ")
					  rply=simDR_xpdr_rply
					  --screen_test=0
					  mode_prev=mode
					end
					if mode == 3 then
					  line2 = string.format("VFR ")
					  rply=simDR_xpdr_rply
					  if unit_sel ~= 0 then 
						sqwk_vfr =sqwk_1000*1000+sqwk_0100*100+sqwk_0010*10+sqwk_0001
					  end
						if vfr_sqwk_set==1 then
							sqwk_1000 = math.floor(sqwk_vfr*0.001)
							sqwk_0100 = math.floor(sqwk_vfr*0.01)-sqwk_1000*10
							sqwk_0010 = math.floor(sqwk_vfr*0.1)-sqwk_1000*100-sqwk_0100*10
							sqwk_0001 = sqwk_vfr-sqwk_1000*1000-sqwk_0100*100-sqwk_0010*10
							code = sqwk_vfr
							if code ~= simDR_sqwk then
								simDR_sqwk = code
							end
							mode=mode_prev
						end
					  --screen_test=0
					end
					if mode == 4 then
					  line2 = string.format("TA  ")
					  rply=simDR_xpdr_rply
					  --screen_test=0
					   mode_prev=mode
					end
					if mode == 5 then
					  line2 = string.format("T/RA")
					  rply=simDR_xpdr_rply
					  --screen_test=0
					   mode_prev=mode
					end
				 elseif simDR_tcas_disp_mod == -1 then
					line2 = string.format("FAIL")
					rply=0
					--screen_test=0
				 elseif simDR_tcas_disp_mod == -10 then
					line2 = string.format("IDNT")
					rply=0
					--screen_test=0
				 end
			else
				if simDR_tcas_disp_mod==-10 then atcfid = 0 end
				
				if unit_sel == 1 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format(char_arr[txt_gap(flt_nmb_1)]..char_arr[flt_nmb_2]..char_arr[flt_nmb_3]..char_arr[flt_nmb_4])
					else
						line1 = string.format(" "..char_arr[flt_nmb_2]..char_arr[flt_nmb_3]..char_arr[flt_nmb_4])
					end
				elseif unit_sel == 2 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format(char_arr[flt_nmb_1]..char_arr[txt_gap(flt_nmb_2)]..char_arr[flt_nmb_3]..char_arr[flt_nmb_4])
					else
						line1 = string.format(char_arr[flt_nmb_1].." "..char_arr[flt_nmb_3]..char_arr[flt_nmb_4])
					end
				elseif unit_sel == 3 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format(char_arr[flt_nmb_1]..char_arr[flt_nmb_2]..char_arr[txt_gap(flt_nmb_3)]..char_arr[flt_nmb_4])
					else
						line1 = string.format(char_arr[flt_nmb_1]..char_arr[flt_nmb_2].." "..char_arr[flt_nmb_4])
					end
				elseif unit_sel == 4 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line1 = string.format(char_arr[flt_nmb_1]..char_arr[flt_nmb_2]..char_arr[flt_nmb_3]..char_arr[txt_gap(flt_nmb_4)])
					else
						line1 = string.format(char_arr[flt_nmb_1]..char_arr[flt_nmb_2]..char_arr[flt_nmb_3].." ")
					end
				else
				   line1 = string.format(char_arr[flt_nmb_1]..char_arr[flt_nmb_2]..char_arr[flt_nmb_3]..char_arr[flt_nmb_4])
				end
			
			
				if unit_sel == 5 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line2 = string.format(char_arr[txt_gap(flt_nmb_5)]..char_arr[flt_nmb_6]..char_arr[flt_nmb_7]..char_arr[flt_nmb_8])
					else
						line2 = string.format(" "..char_arr[flt_nmb_6]..char_arr[flt_nmb_7]..char_arr[flt_nmb_8])
					end
				elseif unit_sel == 6 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line2 = string.format(char_arr[flt_nmb_5]..char_arr[txt_gap(flt_nmb_6)]..char_arr[flt_nmb_7]..char_arr[flt_nmb_8])
					else
						line2 = string.format(char_arr[flt_nmb_5].." "..char_arr[flt_nmb_7]..char_arr[flt_nmb_8])
					end
				elseif unit_sel == 7 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line2 = string.format(char_arr[flt_nmb_5]..char_arr[flt_nmb_6]..char_arr[txt_gap(flt_nmb_7)]..char_arr[flt_nmb_8])
					else
						line2 = string.format(char_arr[flt_nmb_5]..char_arr[flt_nmb_6].." "..char_arr[flt_nmb_8])
					end
				elseif unit_sel == 8 then
					if math.abs(simDR_ping_pong) > 0.5 then
						line2 = string.format(char_arr[flt_nmb_5]..char_arr[flt_nmb_6]..char_arr[flt_nmb_7]..char_arr[txt_gap(flt_nmb_8)])
					else
						line2 = string.format(char_arr[flt_nmb_5]..char_arr[flt_nmb_6]..char_arr[flt_nmb_7].." ")
					end
				else
				   line2 = string.format(char_arr[flt_nmb_5]..char_arr[flt_nmb_6]..char_arr[flt_nmb_7]..char_arr[flt_nmb_8])
				end
				flt_no_1=flt_nmb_1
				flt_no_2=flt_nmb_2
				flt_no_3=flt_nmb_3
				flt_no_4=flt_nmb_4
				flt_no_5=flt_nmb_5
				flt_no_6=flt_nmb_6
				flt_no_7=flt_nmb_7
				flt_no_8=flt_nmb_8
				--line1 = string.format("TUP")
				--line2 = string.format("1888")
			end
			
		else
		   sqwk_1000 = math.floor(code*0.001)
		   sqwk_0100 = math.floor(code*0.01)-sqwk_1000*10
		   sqwk_0010 = math.floor(code*0.1)-sqwk_1000*100-sqwk_0100*10
		   sqwk_0001 = code-sqwk_1000*1000-sqwk_0100*100-sqwk_0010*10
		   mode = 0
		   line1 = string.format("////") 
		   line2 = string.format("FAIL") 
		end
		line1_sc=line1
		line2_sc=line2
	else
		line1=string.sub(line1_sc,1,4)
		line2=string.sub(line2_sc,1,4)
    end
    if mode == 3 then
     if vfr_timeout > 0 and unit_sel==0 then
       vfr_timeout = vfr_timeout - simDR_dt
     end
    else
       vfr_timeout = 3
       vfr_sqwk_set = 0
    end
    
    if (vfr_timeout <= 0 or simDR_tcas_disp_mod == -10) and vfr_sqwk_set < 1 then
		-- simDR_sqwk = sqwk_vfr
		-- sqwk_1000 = math.floor(sqwk_vfr*0.001)
		-- sqwk_0100 = math.floor(sqwk_vfr*0.01)-sqwk_1000*10
		-- sqwk_0010 = math.floor(sqwk_vfr*0.1)-sqwk_1000*100-sqwk_0100*10
		-- sqwk_0001 = sqwk_vfr-sqwk_1000*1000-sqwk_0100*100-sqwk_0010*10
      vfr_sqwk_set = 1
    end
    
end

function after_physics()
    if T154_kontur_90th > 0 then
        tcas()
    else
        simDR_tra67 = 0
        simDR_tcas_ovhd = 0
    end
end
