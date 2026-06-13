knob_1 = globalProperty("sim/custom/kontur/info_knob1_l")
knob_2 = globalProperty("sim/custom/kontur/info_knob2_l")
knob_2_fo = globalProperty("sim/custom/kontur/info_knob2_r")
menu_left = globalProperty("sim/custom/kontur/left_nav_menu")
menu_right = globalProperty("sim/custom/kontur/right_nav_menu")
elev = globalProperty("sim/cockpit2/EFIS/EFIS_weather_tilt")
elev_fo = globalProperty("sim/cockpit2/EFIS/EFIS_weather_tilt_copilot")
elev_set = globalProperty("sim/cockpit2/EFIS/EFIS_weather_tilt_antenna")
mode = globalProperty("sim/custom/kontur/left_wx")
mode2 = globalProperty("sim/custom/kontur/right_wx")
rdr_mode = globalPropertyf("tu154b2/custom/radar/mode_set")
kontur_on = globalPropertyf("tu154b2/custom/b2/kontur_on")
wx_side = globalPropertyi("sim/custom/kontur/wx_side")
gain = globalProperty("sim/cockpit2/EFIS/EFIS_weather_gain")
gain_fo = globalProperty("sim/cockpit2/EFIS/EFIS_weather_gain_copilot")
rru = globalProperty("sim/custom/kontur/rru_l")
rru_fo = globalProperty("sim/custom/kontur/rru_r")
test = globalProperty("sim/custom/kontur/left_wx_test")
wxr_mode = globalProperty("sim/cockpit2/EFIS/EFIS_weather_mode")
wxr_mode_fo = globalProperty("sim/cockpit2/EFIS/EFIS_weather_mode_copilot")
switch = globalProperty("sim/custom/kontur/weather_sys")
auto_tilt = globalProperty("sim/cockpit2/EFIS/EFIS_weather_auto_tilt")
auto_tilt_fo = globalProperty("sim/cockpit2/EFIS/EFIS_weather_auto_tilt_copilot")
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time
az_lim = globalPropertyf("sim/cockpit2/EFIS/EFIS_weather_antenna_limit")
bus36 = globalPropertyf("tu154b2/custom/elec/bus36_volt_left")
gcs = globalProperty("sim/cockpit2/EFIS/EFIS_weather_gcs")
gcs_fo = globalProperty("sim/cockpit2/EFIS/EFIS_weather_gcs_copilot")
sweep = globalProperty("sim/cockpit2/EFIS/EFIS_weather_sweeps_per_sec")
sweep_angle = globalProperty("sim/cockpit2/EFIS/EFIS_weather_sweep")
rls_mode = globalProperty("tu154b2/custom/switchers/console/rls_mode")
sec_width = globalProperty("sim/cockpit2/EFIS/EFIS_weather_sector_width")
stab = globalProperty("sim/cockpit2/EFIS/EFIS_weather_stab")
stab_sw = globalProperty("sim/custom/switchers/ovhd/groza_2")
pkp = globalProperty("tu154b2/custom/switchers/ovhd/pkp_left_on")
pkp_fail = globalPropertyi("sim/operation/failures/rel_ss_ahz")
az = globalProperty("sim/cockpit2/EFIS/EFIS_weather_sector_brg")
kont_dist_mode = globalPropertyi("sim/custom/kontur/dist_mode_l")
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master

range0 = globalProperty("sim/cockpit2/EFIS/map_range_steps[1]")
range1 = globalProperty("sim/cockpit2/EFIS/map_range_steps[2]")
range2 = globalProperty("sim/cockpit2/EFIS/map_range_steps[3]")
range3 = globalProperty("sim/cockpit2/EFIS/map_range_steps[4]")
range4 = globalProperty("sim/cockpit2/EFIS/map_range_steps[5]")
range5 = globalProperty("sim/cockpit2/EFIS/map_range_steps[6]")
range6 = globalProperty("sim/cockpit2/EFIS/map_range_steps[7]")
disp_brt = globalProperty("sim/cockpit2/switches/instrument_brightness_ratio[0]")
--defineProperty("beam_angle", globalPropertyf("tu154b2/custom/rls/rls_drift_angle"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

local knob_1_prev=0
local knob_2_prev=0
local button_timer=0
local button_timer2=0
local button_block_timer=0
local button_block_timer2=0
local wx_gain=1
local wx_tilt=0
local wx_mode=0
local wx_autotilt=0
local wx_az=0
local wx_speed=0
local test_run=0
local wx_side_prev = 0
	--- auto elevation
local button=findCommand("kontur/info_btn_l")
function button_hnd(phase)
	if 1 == phase then
		button_timer=button_timer+get(frame_time)
	elseif phase == 2 and get(wx_side) == 0 then
		button_timer=0
		if button_timer<3 and button_block_timer<=0 then
			wx_autotilt=1
		end
	end
	return 1
end

local button2=findCommand("kontur/info_btn_r")
function button_hnd2(phase)
	if 1 == phase then
		button_timer2=button_timer2+get(frame_time)
	elseif phase == 2 and get(wx_side) == 1 then
		button_timer2=0
		if button_timer2<3 and button_block_timer2<=0 then
			wx_autotilt=1
		end
	end
	return 1
end

registerCommandHandler(button, 0, button_hnd)
registerCommandHandler(button2, 0, button_hnd2)
function update()
	local tilt=get(elev_set)
	local passed=get(frame_time)
	--local brg=get(az)
	local gn=get(rru)
	local el_knob = get(knob_2)
	local wx_ctr = get(wx_side)
	local menu = get(menu_left)
	local mfi_mode=get(mode)
	if wx_ctr == 1 then
		gn=get(rru_fo)
		el_knob = get(knob_2_fo)
		menu = get(menu_right)
		mfi_mode=get(mode2)
	end
	if wx_ctr ~= wx_side_prev then
		knob_2_prev = el_knob
	end
	local radar_mode_set=get(rdr_mode)
	if get(kontur_on) == 1 then
		--- az/el
		if mfi_mode>0 and menu == 0 then
			if knob_2_prev>el_knob and tilt<=14.75 then
				if math.fmod(tilt,0.25)>0 then
					tilt=math.floor(tilt/0.25)*0.25
				end
				wx_autotilt=0
				wx_tilt=tilt+0.25
			elseif knob_2_prev<el_knob and tilt>=-14.75 then
				if math.fmod(tilt,0.25)>0 then
					tilt=math.floor(tilt/0.25)*0.25
				end
				wx_autotilt=0
				wx_tilt=tilt-0.25
			end
		end
		if menu>0 and button_block_timer<1 and wx_ctr == 0 then
			button_block_timer=button_block_timer+passed
		elseif menu==0 and button_block_timer>0 then
			button_block_timer=button_block_timer-passed
		end
		if menu>0 and button_block_timer2<1 and wx_ctr == 1 then
			button_block_timer2=button_block_timer2+passed
		elseif menu==0 and button_block_timer2>0 then
			button_block_timer2=button_block_timer2-passed
		end
		-- if get(kontur_on) == 1 and mfi_mode>1 then
			-- if knob_1_prev<get(knob_1) and brg<60 then
				-- set(az,brg+1)
			-- elseif knob_1_prev>get(knob_1) and brg>-60 then
				-- set(az,brg-1)
			-- end
		-- end
		--- gain (works only for MAP mode)
		if get(kontur_on) == 1 then
			if wx_mode == 4 then
				if gn==0 then
					wx_gain=1
				else
					wx_gain=gn*2
				end
			else
				wx_gain=1
			end
		end
		------ modes -------
		if get(switch)==0 or get(bus36)<30 then
			wx_mode=0
			wx_tilt=0
			test_run=0
		else
			if get(test)~=-1 then
				wx_mode=1
				if get(test)==1 then
					wx_autotilt=0
					wx_tilt=15
					test_run=1
				end
			else
				if test_run==1 then
					wx_autotilt=1
					test_run=0
				end
				-- if test_prev>0 then
					-- set(auto_tilt,1)
					-- --set(elev,0)
				-- end
				if radar_mode_set==2 then
					wx_mode=1
				elseif radar_mode_set==3 then
					wx_mode=3
				elseif radar_mode_set==4 then
					wx_mode=4
				-- else
					-- set(wxr_mode,mfi_mode)
				end
			end
		end
		set(gcs,1)
		set(gcs_fo,1)
		set(az_lim,60)
		knob_1_prev=get(knob_1)
		knob_2_prev=get(knob_2)
		if wx_ctr == 1 then
			knob_2_prev=get(knob_2_fo)
		end
		wx_side_prev = wx_ctr
		set(sweep,2)
		set(sec_width,60)
		set(az,0)
		--set(elev,wx_tilt)	
		local dist_mode = 1-0.073*get(kont_dist_mode)
		set(range0,4*dist_mode)
		set(range1,10*dist_mode)
		set(range2,20*dist_mode)
		set(range3,50*dist_mode)
		set(range4,100*dist_mode)
		set(range5,160*dist_mode)
		set(range6,320*dist_mode)
		local MASTER = get(ismaster) ~= 1	
		if MASTER then	
			set(elev,wx_tilt)
			set(elev_fo,wx_tilt)
			set(gain,wx_gain)
			set(gain_fo,wx_gain)
			set(wxr_mode,wx_mode)
			set(wxr_mode_fo,wx_mode)
			set(auto_tilt,wx_autotilt)
			set(auto_tilt_fo,wx_autotilt)
			if get(stab_sw) + get(kontur_on)>0 and get(pkp)>0 and get(bus36) > 30 and get(pkp_fail)==0 then
				set(stab,1)
			else
				set(stab,0)
			end
		else
			set(elev_fo,get(elev))
			set(gain_fo,get(gain))
			set(wxr_mode_fo,get(wxr_mode))
			set(auto_tilt_fo,get(auto_tilt))
		end
	else
		set(az_lim,104)
		set(gcs,0)
		set(auto_tilt,0)
		set(gcs_fo,0)
		set(auto_tilt_fo,0)
		set(range1,30*0.688)
		set(range2,50*0.688)
		set(range3,125*0.688)
		set(range4,250*0.688)
		set(range5,375*0.688)
		set(disp_brt,1)
	end
end


