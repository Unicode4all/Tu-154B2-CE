-- this is flaps, slats and hor-stab logic

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment
-- sim positions
defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

defineProperty("flap_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_fla2def")) -- middle flaps left
defineProperty("flap_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_fla2def")) -- middle flaps right

--defineProperty("slats", globalPropertyf("sim/flightmodel/controls/slatrat")) -- slats position. this one works
defineProperty("slats", globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio")) -- slats position. this one works too

defineProperty("stab_ratio", globalPropertyf("sim/cockpit2/controls/elevator_trim")) -- sim pitch trimmer
defineProperty("stab_pos", globalPropertyf("sim/flightmodel2/controls/stabilizer_deflection_degrees")) -- stab position
-- controls
defineProperty("sim_flap_ratio", globalPropertyf("sim/cockpit2/controls/flap_ratio")) -- sim flaps ratio control. use for axis and commands

defineProperty("flaps_lever", globalPropertyf("tu154b2/custom/controll/flaps_lever")) -- sim flaps ratio control. use for axis and commands
defineProperty("flaps_sel", globalPropertyi("tu154b2/custom/switchers/flaps_sel")) -- выбор режимов работы закрылков. -1 - выкл, 0 - авт, +1 - ручное

defineProperty("slat_man", globalPropertyi("tu154b2/custom/switchers/slat_man")) -- ручное управление предкрылками. -1 - уборка, 0 выкл, +1 - выпуск
defineProperty("slat_man_cap", globalPropertyi("tu154b2/custom/switchers/slat_man_cap")) -- крышка ручного урпавления предкрылками

defineProperty("stab_man_cap", globalPropertyi("tu154b2/custom/controll/stab_man_cap")) -- крышка управления стабилизатором
defineProperty("stab_manual", globalPropertyi("tu154b2/custom/controll/stab_manual")) -- уплавение стабилизатором. 0 - нейтр, +1 - кабрирование
defineProperty("stab_setting", globalPropertyi("tu154b2/custom/controll/stab_setting")) -- положение центровки для стаба. 0 - З, 1 - С, 2 - П	1

-- other sources

-- hydraulics
defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("ctr_115_1_cc", globalPropertyf("tu154b2/custom/control/ctr_115_1_cc")) -- нагрузка на сеть
defineProperty("ctr_115_3_cc", globalPropertyf("tu154b2/custom/control/ctr_115_3_cc")) -- нагрузка на сеть

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


-- failures
defineProperty("flap_fail_left", globalPropertyi("tu154b2/custom/failures/flap_fail_left")) -- 
defineProperty("flap_fail_right", globalPropertyi("tu154b2/custom/failures/flap_fail_right")) -- 

defineProperty("stab_eng_fail", globalPropertyi("tu154b2/custom/failures/stab_eng_fail")) -- 
defineProperty("stab_automatic_fail", globalPropertyi("tu154b2/custom/failures/stab_automatic_fail")) -- 
defineProperty("slats_fail", globalPropertyi("tu154b2/custom/failures/slats_fail")) -- 


-- spoilers sources
defineProperty("deflection_mtr_2", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")) -- 
defineProperty("deflection_mtr_3", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]")) -- 
defineProperty("revers_L", globalPropertyf("tu154b2/custom/controlls/revers_L")) -- рычаг реверса лев
defineProperty("revers_R", globalPropertyf("tu154b2/custom/controlls/revers_R")) -- рычаг реверса прав
defineProperty("spd_brk_inn_L", globalProperty("sim/flightmodel2/wing/speedbrake1_deg[0]")) -- inner speedbrake left Degrees
defineProperty("spd_brk_inn_R", globalProperty("sim/flightmodel2/wing/speedbrake1_deg[1]")) -- inner speedbrake right Degrees
defineProperty("kontur_on", globalPropertyf("tu154b2/custom/b2/kontur_on")) -- inner speedbrake right Degrees

flaps_cmd_up = findCommand("sim/flight_controls/flaps_up")
flaps_cmd_down = findCommand("sim/flight_controls/flaps_down")
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

--defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))

local flaps_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/flaps_hnd_L.wav')
local flaps_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/flaps_hnd_R.wav')

local panel_x=-0.0023969451
local panel_z=-22.866001
local dist_gain=5

local mkv_1=1.5
local mkv_2=3
local mkv_3=5.5

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


function flaps_up_handler(phase)
	if 0 == phase then
		if get(external_view) == 0 then
			local z_pos=get(pilot_Z)
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
			setSampleGain(flaps_sound_L,gain_L*dist)
			setSampleGain(flaps_sound_R,gain_R*dist)
			playSample(flaps_sound_L, false)
			playSample(flaps_sound_R, false)
		end
	end
	return 0
end

function flaps_down_handler(phase)
	if 0 == phase then
		if get(external_view) == 0 then 
			if get(external_view) == 0 then
				local z_pos=get(pilot_Z)
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
				setSampleGain(flaps_sound_L,gain_L*dist)
				setSampleGain(flaps_sound_R,gain_R*dist)
				playSample(flaps_sound_L, false)
				playSample(flaps_sound_R, false)
			end
		end
	end
	return 0
end

registerCommandHandler(flaps_cmd_up, 0, flaps_up_handler)
registerCommandHandler(flaps_cmd_down, 0, flaps_down_handler)




flap_lever_tbl = {
{-50000, 0},
{0, 0},
{0.20, 15},
{0.25, 15}, -- stop pos
{0.30, 15},
{0.45, 15},
{0.50, 28}, -- stop pos
{0.55, 28},
{0.70, 28},
{0.75, 28}, -- stop pos
{0.80, 45},
{0.95, 45},
{1.00, 45}, -- stop pos
{10000, 45}
}

local mid_flap_tbl = {
{0, 0},
{15, 13},
{28, 25},
{45, 40}
}

local flaps_pos_L_cmd = get(flap_inn_L)
local flaps_pos_R_cmd = get(flap_inn_R)
local flaps_dirr_L = 0
local flaps_dirr_R = 0
local auto_retract = 0

local flap_SPD = 1.8 -- deg per second
local flap_pos_L_last = flaps_pos_L_cmd
local flap_pos_R_last = flaps_pos_R_cmd

local slats_pos_cmd = get(slats)
local slats_dirr = 0
local spats_spd = 0.035

local stab_pos_now = get(stab_ratio) * 5.5 -- 0 - 5.5 degrees
local stab_pos_cmd = stab_pos_now
local stab_dirr = 0
local flaps_lever_last = get(flaps_lever)
local flap_lever_sw=0

local lever_moved_dir = -1 -- -1 = moved up, +1 = moved down
local stab_must_move = false

function update()
	
	local MASTER = get(ismaster) ~= 1
	
if MASTER then
	
	-- initial
	local passed = get(frame_time)
	local flaps_mode = get(flaps_sel)
	
	-- failures
	local flap_mech_L_fail = get(flap_fail_left)
	local flap_mech_R_fail = get(flap_fail_right)
	
	-- power
	local power27_L = bool2int(get(bus27_volt_left) > 13)
	local power27_R = bool2int(get(bus27_volt_right) > 13)
	
	local power36_L = bool2int(get(bus36_volt_left) > 30)
	local power36_R = bool2int(get(bus36_volt_right) > 30)
	
	local power115_1 = bool2int(get(bus115_1_volt) > 110)
	local power115_3 = bool2int(get(bus115_3_volt) > 110)
	
	local CC_115_1 = 0
	local CC_115_3 = 0
	
	
	
	
	--------------------------------------
	-- flaps --

    -- autoretract
        
        
	local gears = get(deflection_mtr_2) > 0.01 and get(deflection_mtr_3) > 0.01
	local revers = get(revers_L) > 0.05 and get(revers_R) > 0.05
	local HS1 = math.min(get(gs_press_1) * 0.15, 1)
	local HS2 = math.min(get(gs_press_2) * 0.15, 1)
        
        
    if revers and gears and auto_retract == 0 and power27_L and (get(gs_press_1) > 50 or get(gs_press_2) > 50) and ((flaps_pos_L_cmd+flaps_pos_R_cmd)/2) > 31 and (get(spd_brk_inn_L)+get(spd_brk_inn_R))/2 > 10 and flaps_mode == 0 and get(kontur_on) > 0 then
	   auto_retract = 1
    end
        
            
	
	-- flap lever position and animation
	local flap_lever_pos = interpolate(flap_lever_tbl, get(sim_flap_ratio))
        
    if auto_retract == 1 and flap_lever_pos - ((flaps_pos_L_cmd+flaps_pos_R_cmd)/2) < 2 and not revers then
        auto_retract = 0
    end
	
	-- calculate flaps commanded position
	    set(flaps_lever, flap_lever_pos)
    if auto_retract > 0 then
        flaps_pos_L_cmd = 28
        flaps_pos_R_cmd = 28
    else     
        flaps_pos_L_cmd = flap_lever_pos -- for automatic movement. can add control failures here
        flaps_pos_R_cmd = flap_lever_pos -- for automatic movement. can add control failures here
    end
	
	-- for manual movement

	
	-- flaps movements
	
	local flap_pos_now_L = get(flap_inn_L)
	local flap_pos_now_R = get(flap_inn_R)
	
	if flaps_mode == 0 then -- automatic movements
		
		if flap_pos_now_L < flaps_pos_L_cmd - 0.1 then flaps_dirr_L = 1
		elseif flap_pos_now_L > flaps_pos_L_cmd then flaps_dirr_L = -1
		else flaps_dirr_L = 0
		end

		if flap_pos_now_R < flaps_pos_R_cmd - 0.1 then flaps_dirr_R = 1
		elseif flap_pos_now_R > flaps_pos_R_cmd then flaps_dirr_R = -1
		else flaps_dirr_R = 0
		end
		
		
		-- can add automatic failures here, controlling dirrection
		
		
	elseif flaps_mode == 1 then -- manual movements
		
		if flap_lever_pos > 40 then	
			flaps_dirr_L = 1
			flaps_dirr_R = 1
		elseif flap_lever_pos < 5 then 
			flaps_dirr_L = -1
			flaps_dirr_R = -1
		else 
			flaps_dirr_L = 0 
			flaps_dirr_R = 0
		end

		
	end
	
	-- add power dependencies
	flaps_dirr_L = flaps_dirr_L * power36_L * power36_R
	flaps_dirr_R = flaps_dirr_R * power36_L * power36_R
	
	-- move the flaps
	flap_pos_now_L = flap_pos_now_L + flaps_dirr_L * passed *(HS1+ HS2)/2 * flap_SPD * (1 - flap_mech_L_fail) 
	flap_pos_now_R = flap_pos_now_R + flaps_dirr_R * passed * (HS1+ HS2)/2 * flap_SPD * (1 - flap_mech_R_fail) 
	
	-- set limits
	if flap_pos_now_L > 45 then flap_pos_now_L = 45
	elseif flap_pos_now_L < 0 then flap_pos_now_L = 0 end
		
	if flap_pos_now_R > 45 then flap_pos_now_R = 45
	elseif flap_pos_now_R < 0 then flap_pos_now_R = 0 end	
	
        
	if flaps_dirr_L==1 or flaps_dirr_R==1 then
		stab_dirr=1
	elseif flaps_dirr_L==-1 or flaps_dirr_R==-1 then
		stab_dirr=-1
	elseif get(stab_man_cap) == 1 or not power27_L then 
		stab_dirr=0
	end		

	-- brake unsynced flaps
	if math.abs(flap_pos_now_L - flap_pos_now_R) < 3 then 
		flap_pos_L_last = flap_pos_now_L
		flap_pos_R_last = flap_pos_now_R
	end
	
	
	-- flap sounds
	
	if flaps_lever_last ~= flap_lever_pos and (flap_lever_pos == 0 or flap_lever_pos == 15 or flap_lever_pos == 28 or flap_lever_pos == 45) then
			local z_pos=get(pilot_Z)
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
			setSampleGain(flaps_sound_L,gain_L*dist)
			setSampleGain(flaps_sound_R,gain_R*dist)
			playSample(flaps_sound_L, false)
			playSample(flaps_sound_R, false)
	end
	
	flaps_lever_last = flap_lever_pos
	
	
	
	-- set results	
    if auto_retract then
        set(flap_inn_L, flap_pos_L_last)
        set(flap_inn_R, flap_pos_R_last)
    end
	
	set(flap_mid_L, interpolate(mid_flap_tbl, flap_pos_L_last))
	set(flap_mid_R, interpolate(mid_flap_tbl, flap_pos_R_last))	
	
	-----------------------------------------------------
	-- slats -- 
	local slats_pos = get(slats)
	local stats_eng = 2 - get(slats_fail) -- can add failures here
	
	-- calculate new position of slats
	if get(slat_man_cap) == 0 then -- automatic mode
		if flap_lever_pos >= 5 then slats_pos_cmd = 1
		elseif flap_lever_pos < 5 and flap_pos_L_last <= 14 and flap_pos_R_last <= 14 then slats_pos_cmd = 0
		end	
		
		if slats_pos_cmd > slats_pos + 0.005 then slats_dirr = 1
		elseif slats_pos_cmd < slats_pos then slats_dirr = -1
		else slats_dirr = 0 end
		--slats_dirr
		
	else -- manual mode
		slats_dirr = get(slat_man)
		slats_pos_cmd = slats_pos
	end
	
	-- power
	slats_dirr = slats_dirr * bool2int(power27_L+power27_R>0)
	
	-- set movement
	slats_pos = slats_pos + slats_dirr * passed * spats_spd * (bool2int(stats_eng > 1) * power115_1 * power27_L + bool2int(stats_eng > 0) * power115_3 * power27_R)
	
	if slats_dirr ~= 0 then
		if stats_eng > 1 then CC_115_1 = 6.5 end
		if stats_eng > 0 then CC_115_3 = 6.5 end
	end
	
	if slats_pos > 1 then slats_pos = 1
	elseif slats_pos < 0 then slats_pos = 0 end
	
	set(slats, slats_pos)
	
	
	----------------------------------------------------
	-- stab --

	
	local stab_mechs = 2 - get(stab_eng_fail) -- two engines working normally. can add failures here
	local stab_move=0
	local stab_move_act=0
	-- calculate new stab position and dirrection of movement
	if get(stab_man_cap) == 0 and get(stab_automatic_fail) == 0 then -- automatic controls and no automatic fails
		local stab_set = get(stab_setting)
		-- check lever movement
		-- if flap_lever_pos > flap_pos_L_last + 0.1 and flap_lever_pos > flap_pos_R_last + 0.1 then -- flaps lever moving down
			-- lever_moved_dir = 1
			-- stab_must_move = true
		-- elseif flap_lever_pos < flap_pos_L_last - 0.1 and flap_lever_pos < flap_pos_R_last - 0.1 then -- flaps moving up
			-- lever_moved_dir = -1
			-- stab_must_move = true
		-- else 
			-- lever_moved_dir = 0
			-- stab_must_move = false
		-- end		

		-- -- calculate stab new position
		-- if lever_moved_dir == 1 and stab_must_move then 
			-- if flap_lever_pos >= 5 and flap_lever_pos <= 28 then 
				-- if stab_set == 2 then stab_pos_cmd = 3
				-- elseif stab_set == 1 then stab_pos_cmd = 1.5
				-- else stab_pos_cmd = 0 end
			-- elseif flap_lever_pos >= 36 and flap_pos_L_last >= 31 and flap_pos_R_last >= 31 then
				-- if stab_set == 2 then stab_pos_cmd = 5.5
				-- elseif stab_set == 1 then stab_pos_cmd = 3
				-- else stab_pos_cmd = 0 end			
			-- end
		-- elseif lever_moved_dir == -1 and stab_must_move then 
			-- if --[[flap_lever_pos >= 15 and--]] flap_lever_pos <= 28 and flap_pos_L_last < 45 and flap_pos_R_last < 45 then 
				-- --print("work 2")
				-- if stab_set == 2 then stab_pos_cmd = 3
				-- elseif stab_set == 1 then stab_pos_cmd = 1.5
				-- else stab_pos_cmd = 0 end			
			-- end			
		-- end
		
		-- if flap_lever_pos < 1 and flap_pos_L_last < 25 and flap_pos_R_last < 25 then 
			-- stab_pos_cmd = 0 
		--end -- flight position
		if flap_lever_pos>2 or flap_pos_L_last>25 then
			if stab_dirr ==1 then
				if flap_pos_L_last<31 then
					if stab_set == 2 then
						stab_move=bool2int(stab_pos_now < mkv_2)
					elseif stab_set == 1 then
						stab_move=bool2int(stab_pos_now < mkv_1)
					end
				else
					if stab_set == 2 then
						stab_move=bool2int(stab_pos_now < mkv_3)
					elseif stab_set == 1 then
						stab_move=bool2int(stab_pos_now < mkv_2)
					end
				end
			elseif stab_dirr ==-1 then
				if flap_pos_L_last<44 then
					if stab_set == 2 then
						stab_move=-bool2int(stab_pos_now >= mkv_2)
					elseif stab_set == 1 then
						stab_move=-bool2int(stab_pos_now >= mkv_1)
					elseif stab_set == 0 then
						stab_move=-bool2int(stab_pos_now > 0)
					end
				end
			end
		else
			stab_move=-bool2int(stab_pos_now >0)
		end
		stab_move_act=stab_move
		--set(db1,stab_dirr)
		--stab_must_move = math.abs(stab_pos_cmd - stab_pos_now) > 0.01 and math.abs(flap_pos_L_last - flaps_pos_L_cmd) > 0.1 and math.abs(flap_pos_R_last - flaps_pos_R_cmd) > 0.1
		
		
		-- if stab_pos_cmd > stab_pos_now + 0.01 then stab_dirr = 1
		-- elseif stab_pos_cmd < stab_pos_now then stab_dirr = -1
		-- else stab_dirr = 0 end
		
		
	elseif get(stab_man_cap) == 1 then -- manual stab control
		stab_move_act = get(stab_manual)
		--stab_pos_cmd = stab_pos_now
	end
	
	
	
	-- stab movements
	stab_pos_now = stab_pos_now + stab_move_act * passed * (bool2int(stab_mechs > 0) * power115_1 + bool2int(stab_mechs > 1) * power115_3) * 0.11 * bool2int(power27_L)
	
	if stab_move ~= 0 then
		if stab_mechs > 1 then CC_115_1 = CC_115_1 + 6.5 end
		if stab_mechs > 0 then CC_115_3 = CC_115_3 + 6.5 end
	
	end
	
	
	
	-- set limits
	if stab_pos_now > 5.5 then stab_pos_now = 5.5
	elseif stab_pos_now < 0 then stab_pos_now = 0 end
	
	
	--stab_dirr = 0
	--stab_pos_cmd = 0
	set(stab_ratio, stab_pos_now / 5.5)
	set(stab_pos,-stab_pos_now*1-1.5)
	set(ctr_115_1_cc, CC_115_1)
	set(ctr_115_3_cc, CC_115_3)
	
end	



end
