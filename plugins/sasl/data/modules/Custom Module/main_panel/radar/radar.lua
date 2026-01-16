-- this is rude try to make RLS
size = {2048, 2048}

-- define property table
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

defineProperty("deg1", globalPropertyf("sim/flightmodel/position/psi")) -- acf mag heading
defineProperty("deg2", globalPropertyf("sim/flightmodel/position/hpath")) -- real mag heading

-- controls
defineProperty("rls_on", globalPropertyi("tu154b2/custom/switchers/console/rls_on")) -- power switch
defineProperty("rls_mode", globalPropertyi("tu154b2/custom/switchers/console/rls_mode")) -- mode switch
defineProperty("rls_distance", globalPropertyi("tu154b2/custom/switchers/console/rls_distance")) -- distance switch

defineProperty("rls_brt", globalPropertyf("tu154b2/custom/switchers/console/rls_brt")) -- brightness
defineProperty("rls_contr", globalPropertyf("tu154b2/custom/switchers/console/rls_contr")) -- contrast
defineProperty("rls_signs", globalPropertyf("tu154b2/custom/switchers/console/rls_signs")) -- signs
defineProperty("rls_tilt", globalPropertyf("tu154b2/custom/switchers/console/rls_tilt"))

-- lamps
defineProperty("rls_ready", globalPropertyf("tu154b2/custom/lights/small/rls_ready")) -- ready lamp
defineProperty("rls_weather", globalPropertyf("tu154b2/custom/lights/small/rls_weather")) -- weather lamp

--[[

tu154b2/custom/switchers/console/rls_on
tu154b2/custom/switchers/console/rls_mode
tu154b2/custom/switchers/console/rls_distance


defineProperty("rls_power_sw", globalPropertyi("tu154b2/custom/xap/An24_rls/rls_power_sw")) -- power switch
defineProperty("rls_power_cc", globalPropertyf("tu154b2/custom/xap/An24_rls/rls_power_cc")) -- power switch
defineProperty("rls_scan_spd", globalPropertyi("tu154b2/custom/xap/An24_rls/rls_scan_spd")) -- power switch
defineProperty("rls_mode", globalPropertyi("tu154b2/custom/xap/An24_rls/rls_mode")) -- power switch
defineProperty("rls_mode_lamp", globalPropertyi("tu154b2/custom/xap/An24_rls/rls_mode_lamp")) -- power switch
defineProperty("rls_bright", globalPropertyf("tu154b2/custom/xap/An24_rls/rls_bright")) -- power switch
defineProperty("rls_contr", globalPropertyf("tu154b2/custom/xap/An24_rls/rls_contr")) -- power switch
defineProperty("rls_signs", globalPropertyf("tu154b2/custom/xap/An24_rls/rls_signs")) -- power switch
--]]


-- power
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("radar_cc", globalPropertyf("tu154b2/custom/radio/radar_cc")) -- потребление тока от РЛС Гроза



-- EFIS controls
defineProperty("map_mode", globalProperty("sim/cockpit2/EFIS/map_mode"))
defineProperty("map_mode_is_HSI", globalProperty("sim/cockpit2/EFIS/map_mode_is_HSI"))
defineProperty("map_range", globalProperty("sim/cockpit/switches/EFIS_map_range_selector"))
defineProperty("wxr_mode", globalProperty("sim/cockpit2/EFIS/EFIS_weather_mode"))

defineProperty("EFIS_weather_on", globalProperty("sim/cockpit2/EFIS/EFIS_weather_on"))
defineProperty("EFIS_tcas_on", globalProperty("sim/cockpit2/EFIS/EFIS_tcas_on"))
defineProperty("EFIS_airport_on", globalProperty("sim/cockpit2/EFIS/EFIS_airport_on"))
defineProperty("EFIS_vor_on", globalProperty("sim/cockpit2/EFIS/EFIS_vor_on"))
defineProperty("EFIS_ndb_on", globalProperty("sim/cockpit2/EFIS/EFIS_ndb_on"))

defineProperty("EFIS_weather_alpha", globalProperty("sim/cockpit/switches/EFIS_weather_alpha"))


defineProperty("EFIS_fix_on", globalProperty("sim/cockpit2/EFIS/EFIS_fix_on"))
defineProperty("EFIS_page", globalProperty("sim/cockpit2/EFIS/EFIS_page[0]"))
defineProperty("EFIS_fail", globalProperty("sim/operation/failures/rel_efis_2"))

defineProperty("sweep_angle", globalProperty("sim/cockpit2/EFIS/EFIS_weather_sweep"))
defineProperty("sweep_spd", globalProperty("sim/cockpit2/EFIS/EFIS_weather_sweeps_per_sec"))

-- images
-- defineProperty("mask1", loadImage("radar_mask1.png", 0, 0, 256, 256))
-- defineProperty("mask2", loadImage("radar_mask2.png", 0, 0, 256, 256))
defineProperty("mask_drift", loadImage("radar_mask_drift.png", 0, 0, 256, 256))
defineProperty("mask_drift2", loadImage("radar_mask_drift2.png", 0, 0, 256, 256))
defineProperty("line", loadImage("radar_line.png", 0, 0, 512, 512))

--defineProperty("scale", loadImage("radar_placeholder.png", 0, 340, 1024, 690))
defineProperty("angle_scale", loadImage("radar_angle_scale.png", 0, 340, 1024, 690))

--[[
defineProperty("needle_1", loadImage("radar_scale.png", 0, 190, 256, 4))
defineProperty("needle_2", loadImage("radar_scale.png", 0, 200, 256, 4))
defineProperty("needle_3", loadImage("radar_scale.png", 0, 210, 256, 4))
--]]

-- defineProperty("scale_near", loadImage("radar_scale_mark_near.png", 0, 434, 500, 346))

-- defineProperty("scale_med", loadImage("radar_scale_marks.png", 0, 434, 500, 346))
-- defineProperty("scale_far", loadImage("radar_scale_mark_far.png", 0, 434, 500, 346))


-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm

defineProperty("ext", globalPropertyi("sim/custom/b2/groza_ext"))

defineProperty("kontur_on", globalPropertyi("tu154b2/custom/b2/kontur_on")) --
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

defineProperty("rls_left", globalPropertyi("tu154b2/custom/switchers/console/rls_left"))
defineProperty("rls_right", globalPropertyi("tu154b2/custom/switchers/console/rls_right"))
--defineProperty("beam_angle", globalPropertyf("tu154b2/custom/rls/rls_drift_angle"))
defineProperty("sec_az", globalProperty("sim/cockpit2/EFIS/EFIS_weather_sector_brg"))
defineProperty("sec_width", globalProperty("sim/cockpit2/EFIS/EFIS_weather_sector_width"))
defineProperty("drift_angle", globalPropertyf("sim/flightmodel2/position/drift_angle"))
defineProperty("gs", globalPropertyf("sim/flightmodel/position/groundspeed"))
defineProperty("radar_fail", globalPropertyi("tu154b2/custom/failures/radar_fail")) 
defineProperty("backup_xmt", globalPropertyf("sim/custom/switchers/ovhd/groza_1"))
--defineProperty("auto_tilt", globalProperty("sim/cockpit2/EFIS/EFIS_weather_auto_tilt"))
defineProperty("elev", globalProperty("sim/cockpit2/EFIS/EFIS_weather_tilt"))
defineProperty("gain", globalProperty("sim/cockpit2/EFIS/EFIS_weather_gain"))
defineProperty("grz_left", globalPropertyi("tu154b2/custom/switchers/console/rls_left"))
defineProperty("grz_right", globalPropertyi("tu154b2/custom/switchers/console/rls_right"))
defineProperty("grz_kontr", globalPropertyf("tu154b2/custom/switchers/console/rls_contr"))
defineProperty("rls_nakl", globalProperty("tu154b2/custom/switchers/console/rls_tilt"))
defineProperty("oat", globalPropertyf("sim/weather/aircraft/temperature_ambient_deg_c"))
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))
-- defineProperty("arc_array", globalPropertyfa("tu154b2/custom/rls/arc"))

local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_L.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch_R.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=-0.02691454
local panel_z=-22.983395
local dist_gain=5
local sweep=0
local sweep_dir=0
local flicker=0
local tme=0
local blanking_timer=0
--local arc_arr=get(arc_array)

--local rend_tgt = sasl.gl.createRenderTarget ( 500 , 500 )
-- sasl.gl.setRenderTarget ( rend_tgt )

--testInterfaceTexture=get(scale)

local arc = {}
for i= 1, 203 do
   arc[i] = 0
end
local arc_ang = {}
for i= 1, 4 do
   arc_ang[i] = 0
end
local arc_ang2 = {}
for i= 1, 4 do
   arc_ang2[i] = 0
end
local range_med = {}
for i= 1, 203 do
   range_med[i] = 0
end
local ang_med = {}
for i= 1, 4 do
   ang_med[i] = 0
end
local ang_med2 = {}
for i= 1, 4 do
   ang_med2[i] = 0
end
local range_far = {}
for i= 1, 203 do
   range_far[i] = 0
end
local ang_far = {}
for i= 1, 4 do
   ang_far[i] = 0
end
local ang_far2 = {}
for i= 1, 4 do
   ang_far2[i] = 0
end

local range_near = {}
for i= 1, 203 do
   range_near[i] = 0
end
local ang_near = {}
for i= 1, 4 do
   ang_near[i] = 0
end
local ang_near2 = {}
for i= 1, 4 do
   ang_near2[i] = 0
end

local mask_arr = {}
for i= 1, 203 do
   mask_arr[i] = 1
end

local function inn_balance (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) ) 
	local ch_R = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end

	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end


local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		set(rls_on, 0)
		set(rls_distance, 4)
	end
	
	notLoaded = false

end


local mask_angle = -10  -- angle for rotate mask
local rot_spd = 70  -- angular speed for rotate mask. deg/sec

local slip_angle = 0
local needle_show = 1
local mode = 0
--local first_mask = true  -- switch between first and second mask

local power_counter = 0
local power = false

local brightness = 1
local sign_brt = 1
local contrast = 1

local range = get(map_range)

local power_sw_last = 0
local mode_sw_last = 0
local range_last = 2
local sweep_prev=0
local az_sw_last=0
local drift_fade_tmr=0
local power_el = false
local mode_timer=0

local brg_set=0
local wx_gain=1
local wx_tilt=0
local wx_mode=0
--local wx_autotilt=0
local wx_az=0
local wx_speed=0
local wx_sect=101

function update()
	if get(kontur_on) == 0 then
        local passed = get(frame_time)

        start_timer = start_timer + passed

        if notLoaded and start_timer > 0.3 then
            sw_reset()
        end
		
		if get(ext)==1 then
			panel_z=-22.75
		else
			panel_z=-23
		end
        ----- panel sounds------
        local power_switch = get(rls_on)
        if power_switch ~= power_sw_last then 
			local z_pos=get(pilot_Z)
			local x_pos=get(pilot_X)
			local plt_hdg=get(pilot_head)
			local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
			gain_L=gain_L*1000
			gain_R=gain_R*1000
			local dist=1
			if z_pos-panel_z~=0 then
				dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
			end
			setSampleGain(button_sound_L,gain_L*dist)
			setSampleGain(button_sound_R,gain_R*dist)
			playSample(button_sound_L, false)
			playSample(button_sound_R, false)
		end
        power_sw_last = power_switch

        mode = get(rls_mode)
        if mode ~= mode_sw_last then 
			local z_pos=get(pilot_Z)
			local x_pos=get(pilot_X)
			local plt_hdg=get(pilot_head)
			local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
			gain_L=gain_L*1000
			gain_R=gain_R*1000
			local dist=1
			if z_pos-panel_z~=0 then
				dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
			end
			setSampleGain(rotary_sound_L,gain_L*dist)
			setSampleGain(rotary_sound_R,gain_R*dist)
			playSample(rotary_sound_L, false)
			playSample(rotary_sound_R, false)
		end

        range = get(map_range)
        if range ~= range_last then 
			local z_pos=get(pilot_Z)
			local x_pos=get(pilot_X)
			local plt_hdg=get(pilot_head)
			local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
			gain_L=gain_L*1000
			gain_R=gain_R*1000
			local dist=1
			if z_pos-panel_z~=0 then
				dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
			end
			setSampleGain(rotary_sound_L,gain_L*dist)
			setSampleGain(rotary_sound_R,gain_R*dist)
			playSample(rotary_sound_L, false)
			playSample(rotary_sound_R, false)
		end
		range_last = range
		local az_switch = get(rls_left)+get(rls_right)
        if az_switch ~= az_sw_last then 
			local z_pos=get(pilot_Z)
			local x_pos=get(pilot_X)
			local plt_hdg=get(pilot_head)
			local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
			gain_L=gain_L*1000
			gain_R=gain_R*1000
			local dist=1
			if z_pos-panel_z~=0 then
				dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
			end
			setSampleGain(button_sound_L,gain_L*dist)
			setSampleGain(button_sound_R,gain_R*dist)
			playSample(button_sound_L, false)
			playSample(button_sound_R, false)
		end
		az_sw_last=az_switch

        -- lock some variables
        set(map_mode, 2)
        set(map_mode_is_HSI, 0)
        set(EFIS_page, 0)
        set(EFIS_weather_on, 1)
        set(EFIS_tcas_on, 0)
        set(EFIS_airport_on, 0)
        set(EFIS_vor_on, 0)
        set(EFIS_ndb_on, 0)
        set(EFIS_fix_on, 0)
        set(map_range, get(rls_distance))


		------ Power Logic---------
        power_el = get(bus27_volt_right) > 13 and (get(bus36_volt_pts250_1) > 30 or get(bus115_3_volt) > 100) 

        -- power couner
        if power_switch == 1 and mode == 0 and power_el and power_counter <190 then -- turn ON phase
            power_counter = power_counter + passed * (0.005*get(oat)+1.3)
        elseif power_switch == 0 and power_counter > 180 and power_el then -- turn OFF phase
            power_counter = 160 
        elseif (power_switch == 0 or not power_el) and power_counter <= 160 and power_counter > 0 then -- cool down timer
            power_counter = power_counter - passed


        end

        -- if not power_el then 
            -- power_counter = 0 
        -- end

        power = power_counter > 180
		if mode_sw_last~=mode and (mode_sw_last==0 or mode_sw_last==4) then
			mode_timer=0
		elseif mode_timer<2 then
			mode_timer=mode_timer+passed		
		end
		sweep=get(sweep_angle)
		------------ Radar Modes Logic---------------
		local xmt_work=bool2int(get(radar_fail) == 0 or get(backup_xmt)>0) 
		local contr=0.1+0.9*get(grz_kontr)
		wx_tilt=get(rls_nakl)-40*bool2int(mode==1 or mode==4)
		--local sweep_a=get(sweep_angle)
		--local alt=get(agl)
		if mode==0 or not power then -- stby
			--set(wxr_mode,0)
			wx_mode=0
			wx_gain=0
			if blanking_timer<10 then
				blanking_timer=blanking_timer+passed
			end
			wx_speed=0.01
			--set(az,sweep_a+1)
			--set(az_lim,1)
			-- set(sec_width,104)
			-- brg=0
			-- if get(sweep_angle)<1 and get(sweep_angle)>-1 then
			--set(sweep,0.000001)
			-- end
		elseif mode==1 then -- ground
			wx_az=0
			wx_speed=2/3
			wx_mode=4*xmt_work
			wx_sect=104
			brg=sweep
			wx_gain=contr
			drift_timer=0
			blanking_timer=0
		elseif mode==2 then -- meteo
			wx_az=0
			wx_mode=2*xmt_work
			wx_gain=1
			wx_speed=2/3
			brg=sweep
			wx_sect=104
			drift_timer=0
			blanking_timer=0
		elseif mode==3 then --kontur
			wx_az=0
			wx_mode=3*xmt_work
			wx_gain=1.5
			wx_speed=2/3
			--set(elev,0)
			wx_sect=104
			brg=sweep
			drift_timer=0
			blanking_timer=0
		elseif mode==4 then  --drift
			if get(grz_left)>0 and brg>-110 and brg_set==0 then
				brg=brg-passed*(get(grz_kontr)*65+5)
				brg_set=1
			elseif get(grz_right)>0 and brg<110 and brg_set==0 then
				brg=brg+passed*(get(grz_kontr)*65+5)
				brg_set=1
			else
				brg_set=0
			end
			--set(beam_angle,brg)
			wx_mode=4*xmt_work
			wx_gain=2			
			tme=tme+passed
			blanking_timer=0
			local beam_az=brg
			local ground_spd=get(gs)*3.6
			local drift=math.abs(get(drift_angle)+beam_az)
			local w=-2.88107401687228928009e-05*ground_spd + 1.36596200174569151753e-02*drift + 4.13359866935963243817e-03*ground_spd*drift -1.01398890820302947408e-04*math.pow(drift,2)
			local w_dec=w-math.floor(w)
			w=math.floor(w)
			if w_dec>=0.5 then
				w=w+0.5
			end
			w=math.min(w,12)
			flicker=math.min(2,1+1*math.cos(2*math.pi*w*tme)+math.max(0,1-w/5))/2
			if drift_fade_tmr<1 then
				drift_fade_tmr=drift_fade_tmr+passed/4
				wx_speed=0.01
			else
				if drift_fade_tmr<2 then
					for i= 1, 203 do
					   range_med[i] = 0
					end
					for i= 1, 4 do
					   ang_med[i] = 0
					end
					for i= 1, 4 do
					   ang_med2[i] = 0
					end
					for i= 1, 203 do
					   range_far[i] = 0
					end
					for i= 1, 4 do
					   ang_far[i] = 0
					end
					for i= 1, 4 do
					   ang_far2[i] = 0
					end
					for i= 1, 203 do
					   range_near[i] = 0
					end
					for i= 1, 4 do
					   ang_near[i] = 0
					end
					for i= 1, 4 do
					   ang_near2[i] = 0
					end
					drift_fade_tmr=2
				end
				wx_az=beam_az
				wx_sect=1
				wx_speed=1
			end
		end
		--set(db1,blanking_timer)
		------ This array shows which angles are blanked in 375km range mode----------
		local ind_arc=math.floor(101+sweep)+1
		arc[ind_arc]=bool2int(range==6)
		if sweep_dir==-1 and ind_arc<202 then
			arc[ind_arc+1]=bool2int(range==6)
			arc[ind_arc+2]=bool2int(range==6)
		elseif sweep_dir==1 and ind_arc>2 then
			arc[ind_arc-1]=bool2int(range==6)
			arc[ind_arc-2]=bool2int(range==6)
		end
		------- This calculates the angles for the blanking arcs-----------
		if blanking_timer==0 and mode<4 then
			local arc_count=1
			local arc_count2=1
			for i= 1, 4 do
				arc_ang[i] = 0
			end
			for i= 1, 4 do
			   arc_ang2[i] = 0
			end

			if arc[1]==1 then
				arc_ang[1]=1
				arc_count=2
			end
			for i= 2, 203 do
				if arc[i] >  arc[i-1] then
					arc_ang[arc_count]=i
					arc_count=arc_count+1
				elseif arc[i] <  arc[i-1] then
					arc_ang2[arc_count2]=i
					arc_count2=arc_count2+1
			   end
			end
			if arc[203]==1 then
				arc_ang2[arc_count2]=203
			end
			------- Medium Range Mark angles---------
			local range_md=range>2 and range<6 and mode_timer>0.05 and mode>0
			range_med[ind_arc]=bool2int(range_md)
			if sweep_dir==-1 and ind_arc<202 then
				range_med[ind_arc+1]=bool2int(range_md)
				range_med[ind_arc+2]=bool2int(range_md)
			elseif sweep_dir==1 and ind_arc>2 then
				range_med[ind_arc-1]=bool2int(range_md)
				range_med[ind_arc-2]=bool2int(range_md)
			end
			arc_count=1
			arc_count2=1
			for i= 1, 4 do
				ang_med[i] = 0
			end
			for i= 1, 4 do
			   ang_med2[i] = 0
			end

			if range_med[1]==1 then
				ang_med[1]=1
				arc_count=2
			end
			for i= 2, 203 do
				if range_med[i] >  range_med[i-1] then
					ang_med[arc_count]=i
					arc_count=arc_count+1
				elseif range_med[i] <  range_med[i-1] then
					ang_med2[arc_count2]=i
					arc_count2=arc_count2+1
			   end
			end
			if range_med[203]==1 then
				ang_med2[arc_count2]=203
			end
			
			------- Low Range Mark angles---------
			local range_lw=range==2 and mode_timer>0.05 and mode>0
			range_near[ind_arc]=bool2int(range_lw)
			if sweep_dir==-1 and ind_arc<202 then
				range_near[ind_arc+1]=bool2int(range_lw)
				range_near[ind_arc+2]=bool2int(range_lw)
			elseif sweep_dir==1 and ind_arc>2 then
				range_near[ind_arc-1]=bool2int(range_lw)
				range_near[ind_arc-2]=bool2int(range_lw)
			end
			arc_count=1
			arc_count2=1
			for i= 1, 4 do
				ang_near[i] = 0
			end
			for i= 1, 4 do
			   ang_near2[i] = 0
			end

			if range_near[1]==1 then
				ang_near[1]=1
				arc_count=2
			end
			for i= 2, 203 do
				if range_near[i] >  range_near[i-1] then
					ang_near[arc_count]=i
					arc_count=arc_count+1
				elseif range_near[i] <  range_near[i-1] then
					ang_near2[arc_count2]=i
					arc_count2=arc_count2+1
			   end
			end
			if range_near[203]==1 then
				ang_near2[arc_count2]=203
			end
			
			------- Far Range Mark angles--------
			local range_fr=range==6 and mode_timer>0.05 and mode>0
			range_far[ind_arc]=bool2int(range_fr)
			if sweep_dir==-1 and ind_arc<202 then
				range_far[ind_arc+1]=bool2int(range_fr)
				range_far[ind_arc+2]=bool2int(range_fr)
			elseif sweep_dir==1 and ind_arc>2 then
				range_far[ind_arc-1]=bool2int(range_fr)
				range_far[ind_arc-2]=bool2int(range_fr)
			end
			arc_count=1
			arc_count2=1
			for i= 1, 4 do
				ang_far[i] = 0
			end
			for i= 1, 4 do
			   ang_far2[i] = 0
			end

			if range_far[1]==1 then
				ang_far[1]=1
				arc_count=2
			end
			for i= 2, 203 do
				if range_far[i] >  range_far[i-1] then
					ang_far[arc_count]=i
					arc_count=arc_count+1
				elseif range_far[i] <  range_far[i-1] then
					ang_far2[arc_count2]=i
					arc_count2=arc_count2+1
			   end
			end
			if range_far[203]==1 then
				ang_far2[arc_count2]=203
			end		
		end
		--- Picture fade------
		if blanking_timer>10 or not power then
			for i= 1, 203 do
				mask_arr[i] = 1
			end
			for i= 1, 203 do
			   range_med[i] = 0
			end
			for i= 1, 4 do
			   ang_med[i] = 0
			end
			for i= 1, 4 do
			   ang_med2[i] = 0
			end
			for i= 1, 203 do
			   range_far[i] = 0
			end
			for i= 1, 4 do
			   ang_far[i] = 0
			end
			for i= 1, 4 do
			   ang_far2[i] = 0
			end
			for i= 1, 203 do
			   range_near[i] = 0
			end
			for i= 1, 4 do
			   ang_near[i] = 0
			end
			for i= 1, 4 do
			   ang_near2[i] = 0
			end
		else
			for i= 1, 203 do
				local temp=mask_arr[i]
				mask_arr[i] = math.min(1,temp +passed*0.125)
				--set(arc_array[i],mask_arr[i])
			end
			if mode==4 then
				ind_arc=102-math.floor(brg)
			else
				ind_arc=102-math.floor(sweep)
			end
			if mode>0 then
			mask_arr[ind_arc]=0
				if sweep_dir==-1 and ind_arc<202 then
					mask_arr[ind_arc+1]=0
					mask_arr[ind_arc+2]=0
					--mask_arr[ind_arc+3]=0
				elseif sweep_dir==1 and ind_arc>2 then
					mask_arr[ind_arc-1]=0
					mask_arr[ind_arc-2]=0
					--mask_arr[ind_arc-3]=0
				end
			end
		end
		--set(arc_array,mask_arr)
		--- Drift Mode Radar Blanking
		if mode~=4 then
			drift_fade_tmr=0
		end
        --high range mask angle
		if sweep<sweep_prev then
			sweep_dir=-1
		elseif sweep>sweep_prev then
			sweep_dir=1
		end
		sweep_prev=sweep
		mode_sw_last = mode
        if power then brightness = get(rls_brt) else brightness = 0 end

        -- contrast
        contrast = get(rls_contr)

        -- sign brightness
        sign_brt = get(rls_signs)


        -- lamp
        if power then 
            set(rls_ready, bool2int(mode == 0)) 
            set(rls_weather, bool2int(mode > 0))
        else 
            set(rls_ready, 0) 
            set(rls_weather, 0)
        end
			-------- Set Datarefs----------
		local MASTER = get(ismaster) ~= 1	
		if MASTER then	
			set(sec_width,wx_sect)
			set(sec_az,wx_az)
			set(elev,wx_tilt)
			set(gain,wx_gain)
			set(wxr_mode,wx_mode)
			set(sweep_spd,wx_speed)
		end


        set(EFIS_weather_alpha, 1)


        set(radar_cc, bool2int(power_el)*power_switch )
	end

	
end




components = {
	
	----- drift masks----------------
	needleLit {
		position = {27, 1320, 560, 560},
		image = get(mask_drift),
		angle = function()
			return brg
		end,
		alpha=function()
			return math.min(1,drift_fade_tmr)
		end,
		visible = function()
			return mode ==4
		end
	},
	needleLit {
		position = {27, 1320, 560, 560},
		image = get(mask_drift2),
		angle = function()
			return brg
		end,
		alpha=function()
			return 1-flicker
		end,
		visible = function()
			return mode ==4
		end
	},
	
	----------- These arcs blend out return from 0-200km in max range mode-------------
	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
		position_x=307,
		position_y=1600,
		rad_1=0,
		rad_2=140,
		 a_1=function()
			return 192-arc_ang[1]
		end,
	    a_2=function()
			return arc_ang[1]-arc_ang2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},

	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
		position_x=307,
		position_y=1600,
		rad_1=0,
		rad_2=140,
		 a_1=function()
			return 192-arc_ang[2]
		end,
	    a_2=function()
			return arc_ang[2]-arc_ang2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
		position_x=307,
		position_y=1600,
		rad_1=0,
		rad_2=140,
		 a_1=function()
			return 192-arc_ang[3]
		end,
	    a_2=function()
			return arc_ang[3]-arc_ang2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},

	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
	    -- position_x=function()
			-- return get(db1)
		-- end,
	    -- position_y=function()
			-- return get(db2)
		-- end,
	    -- rad_1=function()
			-- return get(db3)
		-- end,
	    -- rad_2=function()
			-- return get(db4)
		-- end,
	    -- a_1=function()
			-- return get(db5)
		-- end,
	    -- a_2=function()
			-- return get(db6)
		-- end,
		position_x=307,
		position_y=1600,
		rad_1=0,
		rad_2=140,
		a_1=function()
			return 192-arc_ang[4]
		end,
	    a_2=function()
			return arc_ang[4]-arc_ang2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
	    rad_1=function()
			return 130/(1+0.5*bool2int(range==6))
		end,
	    rad_2=function()
			return 280
		end,
	    -- a_1=function()
			-- return get(db5)
		-- end,
	    -- a_2=function()
			-- return get(db6)
		-- end,
		position_x=307,
		position_y=1600,
		-- rad_1=0,
		-- rad_2=140,
		a_1=-10,
	    a_2=200,
		visible = function()
			return mode==5 and range>4
		end
	},
	
------ Far Range Arcs---------
	
	----No.5
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=251,
		rad_2=250,
		a_1=function()
			return 192-ang_far[1]
		end,
	    a_2=function()
			return ang_far[1]-ang_far2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=251,
		rad_2=250,
		a_1=function()
			return 192-ang_far[2]
		end,
	    a_2=function()
			return ang_far[2]-ang_far2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=251,
		rad_2=250,
		a_1=function()
			return 192-ang_far[3]
		end,
	    a_2=function()
			return ang_far[3]-ang_far2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=251,
		rad_2=250,
		a_1=function()
			return 192-ang_far[4]
		end,
	    a_2=function()
			return ang_far[4]-ang_far2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	----No.4
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_far[1]
		end,
	    a_2=function()
			return ang_far[1]-ang_far2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_far[2]
		end,
	    a_2=function()
			return ang_far[2]-ang_far2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_far[3]
		end,
	    a_2=function()
			return ang_far[3]-ang_far2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_far[4]
		end,
	    a_2=function()
			return ang_far[4]-ang_far2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	-----No.3
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_far[1]
		end,
	    a_2=function()
			return ang_far[1]-ang_far2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_far[2]
		end,
	    a_2=function()
			return ang_far[2]-ang_far2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_far[3]
		end,
	    a_2=function()
			return ang_far[3]-ang_far2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_far[4]
		end,
	    a_2=function()
			return ang_far[4]-ang_far2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	-----No.2
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=142,
		rad_2=141,
		a_1=function()
			return 192-ang_far[1]
		end,
	    a_2=function()
			return ang_far[1]-ang_far2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=142,
		rad_2=141,
		a_1=function()
			return 192-ang_far[2]
		end,
	    a_2=function()
			return ang_far[2]-ang_far2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=142,
		rad_2=141,
		a_1=function()
			return 192-ang_far[3]
		end,
	    a_2=function()
			return ang_far[3]-ang_far2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=142,
		rad_2=141,
		a_1=function()
			return 192-ang_far[4]
		end,
	    a_2=function()
			return ang_far[4]-ang_far2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},		
	
	

	------ Medium Range Arcs---------
	
	----No.5
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_med[1]
		end,
	    a_2=function()
			return ang_med[1]-ang_med2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_med[2]
		end,
	    a_2=function()
			return ang_med[2]-ang_med2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_med[3]
		end,
	    a_2=function()
			return ang_med[3]-ang_med2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_med[4]
		end,
	    a_2=function()
			return ang_med[4]-ang_med2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	----No.4
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_med[1]
		end,
	    a_2=function()
			return ang_med[1]-ang_med2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_med[2]
		end,
	    a_2=function()
			return ang_med[2]-ang_med2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_med[3]
		end,
	    a_2=function()
			return ang_med[3]-ang_med2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=215,
		rad_2=214,
		a_1=function()
			return 192-ang_med[4]
		end,
	    a_2=function()
			return ang_med[4]-ang_med2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	-----No.3
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=161,
		rad_2=160,
		a_1=function()
			return 192-ang_med[1]
		end,
	    a_2=function()
			return ang_med[1]-ang_med2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=161,
		rad_2=160,
		a_1=function()
			return 192-ang_med[2]
		end,
	    a_2=function()
			return ang_med[2]-ang_med2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=161,
		rad_2=160,
		a_1=function()
			return 192-ang_med[3]
		end,
	    a_2=function()
			return ang_med[3]-ang_med2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=161,
		rad_2=160,
		a_1=function()
			return 192-ang_med[4]
		end,
	    a_2=function()
			return ang_med[4]-ang_med2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	-----No.2
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=106,
		rad_2=105,
		a_1=function()
			return 192-ang_med[1]
		end,
	    a_2=function()
			return ang_med[1]-ang_med2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=106,
		rad_2=105,
		a_1=function()
			return 192-ang_med[2]
		end,
	    a_2=function()
			return ang_med[2]-ang_med2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=106,
		rad_2=105,
		a_1=function()
			return 192-ang_med[3]
		end,
	    a_2=function()
			return ang_med[3]-ang_med2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=106,
		rad_2=105,
		a_1=function()
			return 192-ang_med[4]
		end,
	    a_2=function()
			return ang_med[4]-ang_med2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},		
	
	-----No.1
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=52,
		rad_2=51,
		a_1=function()
			return 192-ang_med[1]
		end,
	    a_2=function()
			return ang_med[1]-ang_med2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=52,
		rad_2=51,
		a_1=function()
			return 192-ang_med[2]
		end,
	    a_2=function()
			return ang_med[2]-ang_med2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=52,
		rad_2=51,
		a_1=function()
			return 192-ang_med[3]
		end,
	    a_2=function()
			return ang_med[3]-ang_med2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=52,
		rad_2=51,
		a_1=function()
			return 192-ang_med[4]
		end,
	    a_2=function()
			return ang_med[4]-ang_med2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},		
	
	
	
	------ Low Range Arcs---------
	
	----No.3
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_near[1]
		end,
	    a_2=function()
			return ang_near[1]-ang_near2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_near[2]
		end,
	    a_2=function()
			return ang_near[2]-ang_near2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_near[3]
		end,
	    a_2=function()
			return ang_near[3]-ang_near2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=270,
		rad_2=269,
		a_1=function()
			return 192-ang_near[4]
		end,
	    a_2=function()
			return ang_near[4]-ang_near2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	----No.2
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_near[1]
		end,
	    a_2=function()
			return ang_near[1]-ang_near2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_near[2]
		end,
	    a_2=function()
			return ang_near[2]-ang_near2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_near[3]
		end,
	    a_2=function()
			return ang_near[3]-ang_near2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=179,
		rad_2=178,
		a_1=function()
			return 192-ang_near[4]
		end,
	    a_2=function()
			return ang_near[4]-ang_near2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	-----No.1
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=88,
		rad_2=87,
		a_1=function()
			return 192-ang_near[1]
		end,
	    a_2=function()
			return ang_near[1]-ang_near2[1]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=88,
		rad_2=87,
		a_1=function()
			return 192-ang_near[2]
		end,
	    a_2=function()
			return ang_near[2]-ang_near2[2]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=88,
		rad_2=87,
		a_1=function()
			return 192-ang_near[3]
		end,
	    a_2=function()
			return ang_near[3]-ang_near2[3]
		end,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0.39,
	    G=1,
	    B=0.41,
	    A=function()
			return math.max(0,sign_brt-drift_fade_tmr)
		end,
		position_x=307,
		position_y=1600,
		rad_1=88,
		rad_2=87,
		a_1=function()
			return 192-ang_near[4]
		end,
	    a_2=function()
			return ang_near[4]-ang_near2[4]
		end,
		visible = function()
			return blanking_timer<10
		end
	},	

	-- first mask
	-- needleLit {
		-- position = {27, 1320, 560, 560},
		-- image = get(mask1),
		-- angle = function()
			-- return mask_angle
		-- end,
		-- visible = function()
			-- return first_mask and mode <4
		-- end
	-- },

	-- -- second mask
	-- needleLit {
		-- position = {27, 1320, 560, 560},
		-- image = get(mask2),
		-- angle = function()
			-- return mask_angle
		-- end,
		-- visible = function()
			-- return not first_mask and mode <4
		-- end
	-- },
	
		
	-- line
	needleLit {
		position = {27, 1320, 560, 560},
		image = get(line),
		angle = function()
			return math.max(-101,math.min(101,sweep-bool2int(sweep_dir==-1)*2+bool2int(sweep_dir==1)*2))--math.min(100,math.max(-100,-mask_angle + 90))
		end,
		visible = function()
			return power and mode > 0 and mode <4 and mode_timer>0.05
		end
	},
	
	
	-- black mask to divide modes
	-- rectangle {
		-- position = {64, 1534, 484, 345},
		-- color = {0,0,0,1},
		-- visible = function()
			-- return mode == 0 or not power_el
		-- end
	-- },
	


	-- brightness of monitor
	rectangle_ctr {
		position = {65, 1541, 476, 340},
		R = 0,
		G = 0,
		B = 0,
		A = function()
			return 1 - brightness
		end
	}, 

    --round edge at the top
	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
	    -- position_x=function()
			-- return 309+get(db1)
		-- end,
	    -- position_y=function()
			-- return 1600+get(db2)
		-- end,
	    -- rad_1=function()
			-- return get(db3)--130/(1+0.5*bool2int(range==6))
		-- end,
	    -- rad_2=function()
			-- return get(db4) --280
		-- end,
	    -- a_1=function()
			-- return get(db5)
		-- end,
	    -- a_2=function()
			-- return get(db6)
		-- end,
		position_x=307,
		position_y=1600,
		rad_1=274,
		rad_2=400,
		a_1=-10,
	    a_2=200,
		-- visible = function()
			-- return mode>0
		-- end
	},
	-- arc_alpha_decay{
		-- R=0,
	    -- G=0,
	    -- B=0,
	    -- A=1,
		-- position_x=307,
		-- position_y=1600,
		-- rad_1=0,
		-- rad_2=400,
		-- visible = function()
			-- return mode>0
		-- end
	-- },
	arc_alpha_decay{
		R=0,
	    G=0,
	    B=0,
		A1= function()
		return mask_arr[1]
		end,
		A2= function()
		return mask_arr[2]
		end,
		A3= function()
		return mask_arr[3]
		end,
		A4= function()
		return mask_arr[4]
		end,
		A5= function()
		return mask_arr[5]
		end,
		A6= function()
		return mask_arr[6]
		end,
		A7= function()
		return mask_arr[7]
		end,
		A8= function()
		return mask_arr[8]
		end,
		A9= function()
		return mask_arr[9]
		end,
		A10= function()
		return mask_arr[10]
		end,
		A11= function()
		return mask_arr[11]
		end,
		A12= function()
		return mask_arr[12]
		end,
		A13= function()
		return mask_arr[13]
		end,
		A14= function()
		return mask_arr[14]
		end,
		A15= function()
		return mask_arr[15]
		end,
		A16= function()
		return mask_arr[16]
		end,
		A17= function()
		return mask_arr[17]
		end,
		A18= function()
		return mask_arr[18]
		end,
		A19= function()
		return mask_arr[19]
		end,
		A20= function()
		return mask_arr[20]
		end,
		A21= function()
		return mask_arr[21]
		end,
		A22= function()
		return mask_arr[22]
		end,
		A23= function()
		return mask_arr[23]
		end,
		A24= function()
		return mask_arr[24]
		end,
		A25= function()
		return mask_arr[25]
		end,
		A26= function()
		return mask_arr[26]
		end,
		A27= function()
		return mask_arr[27]
		end,
		A28= function()
		return mask_arr[28]
		end,
		A29= function()
		return mask_arr[29]
		end,
		A30= function()
		return mask_arr[30]
		end,
		A31= function()
		return mask_arr[31]
		end,
		A32= function()
		return mask_arr[32]
		end,
		A33= function()
		return mask_arr[33]
		end,
		A34= function()
		return mask_arr[34]
		end,
		A35= function()
		return mask_arr[35]
		end,
		A36= function()
		return mask_arr[36]
		end,
		A37= function()
		return mask_arr[37]
		end,
		A38= function()
		return mask_arr[38]
		end,
		A39= function()
		return mask_arr[39]
		end,
		A40= function()
		return mask_arr[40]
		end,
		A41= function()
		return mask_arr[41]
		end,
		A42= function()
		return mask_arr[42]
		end,
		A43= function()
		return mask_arr[43]
		end,
		A44= function()
		return mask_arr[44]
		end,
		A45= function()
		return mask_arr[45]
		end,
		A46= function()
		return mask_arr[46]
		end,
		A47= function()
		return mask_arr[47]
		end,
		A48= function()
		return mask_arr[48]
		end,
		A49= function()
		return mask_arr[49]
		end,
		A50= function()
		return mask_arr[50]
		end,
		A51= function()
		return mask_arr[51]
		end,
		A52= function()
		return mask_arr[52]
		end,
		A53= function()
		return mask_arr[53]
		end,
		A54= function()
		return mask_arr[54]
		end,
		A55= function()
		return mask_arr[55]
		end,
		A56= function()
		return mask_arr[56]
		end,
		A57= function()
		return mask_arr[57]
		end,
		A58= function()
		return mask_arr[58]
		end,
		A59= function()
		return mask_arr[59]
		end,
		A60= function()
		return mask_arr[60]
		end,
		A61= function()
		return mask_arr[61]
		end,
		A62= function()
		return mask_arr[62]
		end,
		A63= function()
		return mask_arr[63]
		end,
		A64= function()
		return mask_arr[64]
		end,
		A65= function()
		return mask_arr[65]
		end,
		A66= function()
		return mask_arr[66]
		end,
		A67= function()
		return mask_arr[67]
		end,
		A68= function()
		return mask_arr[68]
		end,
		A69= function()
		return mask_arr[69]
		end,
		A70= function()
		return mask_arr[70]
		end,
		A71= function()
		return mask_arr[71]
		end,
		A72= function()
		return mask_arr[72]
		end,
		A73= function()
		return mask_arr[73]
		end,
		A74= function()
		return mask_arr[74]
		end,
		A75= function()
		return mask_arr[75]
		end,
		A76= function()
		return mask_arr[76]
		end,
		A77= function()
		return mask_arr[77]
		end,
		A78= function()
		return mask_arr[78]
		end,
		A79= function()
		return mask_arr[79]
		end,
		A80= function()
		return mask_arr[80]
		end,
		A81= function()
		return mask_arr[81]
		end,
		A82= function()
		return mask_arr[82]
		end,
		A83= function()
		return mask_arr[83]
		end,
		A84= function()
		return mask_arr[84]
		end,
		A85= function()
		return mask_arr[85]
		end,
		A86= function()
		return mask_arr[86]
		end,
		A87= function()
		return mask_arr[87]
		end,
		A88= function()
		return mask_arr[88]
		end,
		A89= function()
		return mask_arr[89]
		end,
		A90= function()
		return mask_arr[90]
		end,
		A91= function()
		return mask_arr[91]
		end,
		A92= function()
		return mask_arr[92]
		end,
		A93= function()
		return mask_arr[93]
		end,
		A94= function()
		return mask_arr[94]
		end,
		A95= function()
		return mask_arr[95]
		end,
		A96= function()
		return mask_arr[96]
		end,
		A97= function()
		return mask_arr[97]
		end,
		A98= function()
		return mask_arr[98]
		end,
		A99= function()
		return mask_arr[99]
		end,
		A100= function()
		return mask_arr[100]
		end,
		A101= function()
		return mask_arr[101]
		end,
		A102= function()
		return mask_arr[102]
		end,
		A103= function()
		return mask_arr[103]
		end,
		A104= function()
		return mask_arr[104]
		end,
		A105= function()
		return mask_arr[105]
		end,
		A106= function()
		return mask_arr[106]
		end,
		A107= function()
		return mask_arr[107]
		end,
		A108= function()
		return mask_arr[108]
		end,
		A109= function()
		return mask_arr[109]
		end,
		A110= function()
		return mask_arr[110]
		end,
		A111= function()
		return mask_arr[111]
		end,
		A112= function()
		return mask_arr[112]
		end,
		A113= function()
		return mask_arr[113]
		end,
		A114= function()
		return mask_arr[114]
		end,
		A115= function()
		return mask_arr[115]
		end,
		A116= function()
		return mask_arr[116]
		end,
		A117= function()
		return mask_arr[117]
		end,
		A118= function()
		return mask_arr[118]
		end,
		A119= function()
		return mask_arr[119]
		end,
		A120= function()
		return mask_arr[120]
		end,
		A121= function()
		return mask_arr[121]
		end,
		A122= function()
		return mask_arr[122]
		end,
		A123= function()
		return mask_arr[123]
		end,
		A124= function()
		return mask_arr[124]
		end,
		A125= function()
		return mask_arr[125]
		end,
		A126= function()
		return mask_arr[126]
		end,
		A127= function()
		return mask_arr[127]
		end,
		A128= function()
		return mask_arr[128]
		end,
		A129= function()
		return mask_arr[129]
		end,
		A130= function()
		return mask_arr[130]
		end,
		A131= function()
		return mask_arr[131]
		end,
		A132= function()
		return mask_arr[132]
		end,
		A133= function()
		return mask_arr[133]
		end,
		A134= function()
		return mask_arr[134]
		end,
		A135= function()
		return mask_arr[135]
		end,
		A136= function()
		return mask_arr[136]
		end,
		A137= function()
		return mask_arr[137]
		end,
		A138= function()
		return mask_arr[138]
		end,
		A139= function()
		return mask_arr[139]
		end,
		A140= function()
		return mask_arr[140]
		end,
		A141= function()
		return mask_arr[141]
		end,
		A142= function()
		return mask_arr[142]
		end,
		A143= function()
		return mask_arr[143]
		end,
		A144= function()
		return mask_arr[144]
		end,
		A145= function()
		return mask_arr[145]
		end,
		A146= function()
		return mask_arr[146]
		end,
		A147= function()
		return mask_arr[147]
		end,
		A148= function()
		return mask_arr[148]
		end,
		A149= function()
		return mask_arr[149]
		end,
		A150= function()
		return mask_arr[150]
		end,
		A151= function()
		return mask_arr[151]
		end,
		A152= function()
		return mask_arr[152]
		end,
		A153= function()
		return mask_arr[153]
		end,
		A154= function()
		return mask_arr[154]
		end,
		A155= function()
		return mask_arr[155]
		end,
		A156= function()
		return mask_arr[156]
		end,
		A157= function()
		return mask_arr[157]
		end,
		A158= function()
		return mask_arr[158]
		end,
		A159= function()
		return mask_arr[159]
		end,
		A160= function()
		return mask_arr[160]
		end,
		A161= function()
		return mask_arr[161]
		end,
		A162= function()
		return mask_arr[162]
		end,
		A163= function()
		return mask_arr[163]
		end,
		A164= function()
		return mask_arr[164]
		end,
		A165= function()
		return mask_arr[165]
		end,
		A166= function()
		return mask_arr[166]
		end,
		A167= function()
		return mask_arr[167]
		end,
		A168= function()
		return mask_arr[168]
		end,
		A169= function()
		return mask_arr[169]
		end,
		A170= function()
		return mask_arr[170]
		end,
		A171= function()
		return mask_arr[171]
		end,
		A172= function()
		return mask_arr[172]
		end,
		A173= function()
		return mask_arr[173]
		end,
		A174= function()
		return mask_arr[174]
		end,
		A175= function()
		return mask_arr[175]
		end,
		A176= function()
		return mask_arr[176]
		end,
		A177= function()
		return mask_arr[177]
		end,
		A178= function()
		return mask_arr[178]
		end,
		A179= function()
		return mask_arr[179]
		end,
		A180= function()
		return mask_arr[180]
		end,
		A181= function()
		return mask_arr[181]
		end,
		A182= function()
		return mask_arr[182]
		end,
		A183= function()
		return mask_arr[183]
		end,
		A184= function()
		return mask_arr[184]
		end,
		A185= function()
		return mask_arr[185]
		end,
		A186= function()
		return mask_arr[186]
		end,
		A187= function()
		return mask_arr[187]
		end,
		A188= function()
		return mask_arr[188]
		end,
		A189= function()
		return mask_arr[189]
		end,
		A190= function()
		return mask_arr[190]
		end,
		A191= function()
		return mask_arr[191]
		end,
		A192= function()
		return mask_arr[192]
		end,
		A193= function()
		return mask_arr[193]
		end,
		A194= function()
		return mask_arr[194]
		end,
		A195= function()
		return mask_arr[195]
		end,
		A196= function()
		return mask_arr[196]
		end,
		A197= function()
		return mask_arr[197]
		end,
		A198= function()
		return mask_arr[198]
		end,
		A199= function()
		return mask_arr[199]
		end,
		A200= function()
		return mask_arr[200]
		end,
		A201= function()
		return mask_arr[201]
		end,
		A202= function()
		return mask_arr[202]
		end,
		A203= function()
		return mask_arr[203]
		end,
		position_x=307,
		position_y=1600,
		rad_1=0,
		rad_2=400,
		visible = function()
			return blanking_timer<10
		end
	},
	arc_LIT {
		R=0,
	    G=0,
	    B=0,
	    A=1,
	    -- position_x=function()
			-- return 309+get(db1)
		-- end,
	    -- position_y=function()
			-- return 1600+get(db2)
		-- end,
	    -- rad_1=function()
			-- return get(db3)--130/(1+0.5*bool2int(range==6))
		-- end,
	    -- rad_2=function()
			-- return get(db4) --280
		-- end,
	    -- a_1=function()
			-- return get(db5)
		-- end,
	    -- a_2=function()
			-- return get(db6)
		-- end,
		position_x=307,
		position_y=1600,
		rad_1=0,
		rad_2=400,
		a_1=-15,
	    a_2=205,
		visible = function()
			return blanking_timer>=10
		end
	},
	-- textureLit_alpha {
		-- position = {66, 1540, 476, 325},
		-- image = get(angle_scale),
		-- alpha =1,
	-- },

}

