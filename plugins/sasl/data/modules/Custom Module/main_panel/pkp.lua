-- this is main AHZ logic


-- this is aux ahz logic
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("pitch_sim", globalPropertyf("sim/flightmodel/position/theta"))
defineProperty("roll_sim", globalPropertyf("sim/flightmodel/position/phi"))


defineProperty("nav_cs_1", globalPropertyf("tu154b2/custom/radio/nav1_cs"))
defineProperty("nav_gs_1", globalPropertyf("tu154b2/custom/radio/nav1_gs"))

defineProperty("nav_cs_2", globalPropertyf("tu154b2/custom/radio/nav2_cs"))
defineProperty("nav_gs_2", globalPropertyf("tu154b2/custom/radio/nav2_gs"))

defineProperty("absu_pnp_mode", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС

defineProperty("nvu_res_z", globalPropertyf("tu154b2/custom/nvu/nvu_res_z")) -- смещение от курса полета НВУ


-- ABSU
defineProperty("absu_roll_ind", globalPropertyf("tu154b2/custom/absu/absu_roll_ind")) -- индикация директора крена
defineProperty("absu_pitch_ind", globalPropertyf("tu154b2/custom/absu/absu_pitch_ind")) -- индикация директора тангажа

defineProperty("absu_roll_flag", globalPropertyi("tu154b2/custom/absu/absu_roll_flag")) --	флаг директора крена
defineProperty("absu_pitch_flag", globalPropertyi("tu154b2/custom/absu/absu_pitch_flag")) -- флаг директора тангажа

defineProperty("absu_at_dif", globalPropertyf("tu154b2/custom/absu_at_dif_left")) -- разность скоростей для индикации на ПКП


defineProperty("N1", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("N3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))


-- controls
defineProperty("pitch_corr_hdl", globalPropertyf("tu154b2/custom/gauges/ahz/pitch_corr_L")) -- коррекция тангажа на АГР + вправо
defineProperty("pkp_on", globalPropertyi("tu154b2/custom/switchers/ovhd/pkp_left_on")) -- выключатель

defineProperty("pkp_fail", globalPropertyi("tu154b2/custom/bkk/pkp_fail_left")) -- сигнал с БКК - отказ ПКП

defineProperty("arrest_btn", globalPropertyi("tu154b2/custom/buttons/console/absu_arrest")) -- кнопки арретировки


-- power
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
--defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_left"))

defineProperty("power_cc", globalPropertyf("tu154b2/custom/bkk/pkp_left_power_cc")) -- отребление тока ПКП


defineProperty("fail", globalPropertyi("sim/operation/failures/rel_ss_ahz"))


defineProperty("absu_use_second_nav", globalPropertyi("tu154b2/custom/absu_use_second_nav")) -- АБСУ использует второй КурсМП



-- results
defineProperty("res_pitch", globalPropertyf("tu154b2/custom/gauges/ahz/pitch_L")) -- тангаж на АГР + нос вверх
defineProperty("pitch_int", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_L")) -- тангаж на АГР + вверх

defineProperty("res_roll", globalPropertyf("tu154b2/custom/gauges/ahz/roll_L")) -- крен на АГР + в право
defineProperty("res_roll_bkk", globalPropertyf("tu154b2/custom/bkk/pkp_roll_left")) -- крен на АГР + в право

defineProperty("course_plank", globalPropertyf("tu154b2/custom/gauges/ahz/course_plank_L")) -- курсовая планка АГД КВС + в право
defineProperty("gs_plank", globalPropertyf("tu154b2/custom/gauges/ahz/gs_plank_L")) -- глиссадная планка АГД КВС + вверх


defineProperty("dir_roll", globalPropertyf("tu154b2/custom/gauges/ahz/dir_roll_L")) -- директор крена АГД КВС + в право
defineProperty("dir_pitch", globalPropertyf("tu154b2/custom/gauges/ahz/dir_pitch_L")) -- директор тангажа на АГД КВС + вверх


defineProperty("speed_plank", globalPropertyf("tu154b2/custom/gauges/ahz/speed_plank_L")) -- изменение скорости АГД КВС + вверх

defineProperty("dir_roll_flag", globalPropertyf("tu154b2/custom/gauges/ahz/dir_roll_flag_L")) -- флаг отказа директора крена АГД КВС
defineProperty("dir_pitch_flag", globalPropertyf("tu154b2/custom/gauges/ahz/dir_pitch_flag_L")) -- флаг отказа директора тангажа АГД КВС


defineProperty("ahz_flag", globalPropertyf("tu154b2/custom/gauges/ahz/ahz_flag_L")) -- 
defineProperty("absu_bns_pitch_fail", globalPropertyi("tu154b2/custom/failures/bns_tet_fail"))
defineProperty("absu_bns_roll_fail", globalPropertyi("tu154b2/custom/failures/bns_gam_fail"))
defineProperty("absu_nav_on", globalPropertyi("tu154b2/custom/switchers/console/absu_nav_on")) -- стрелки навигация
defineProperty("absu_landing_on", globalPropertyi("tu154b2/custom/switchers/console/absu_landing_on")) -- стрелки посадка
defineProperty("absu_pnp_mode1", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1"))
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ
defineProperty("absu_needles_on", globalPropertyi("tu154b2/custom/switchers/console/absu_needles_on")) -- стрелки
defineProperty("absu_power", globalPropertyi("tu154b2/custom/absu_power_cc"))
-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))



local initial_roll_err = 0 --math.random(-20, 20) * real_num -- initial error, ehich will be decreased to 0 after connecting power
local roll_corr = 0  -- correction for errors and arrest
local roll_show = 0  -- result roll
local roll_off = 0 --math.random(-2, 2) * real_num -- determine the direction for AG fall
local initial_pitch_err = 0 --math.random(-30, 30) * real_num -- initial error, ehich will be decreased to 0 after connecting power
local pitch_corr = 0  -- correction for errors and arrest
local pitch_show = 0  -- result pitch
local pitch_absu = 0 -- result pitch for ABSU use
local pitch_off = 0 --math.random(-2, 2) * real_num -- determine the direction for AG fall
local arrest = 0  -- variable for arresting process
local arrest_push = false -- validate if arrest button is pushed
local pitch_rot = 0
local ahz_fail = true
local power_roll = 0 --get(roll_right)
local power_pitch = 0 --get(pitch_right)

local time_counter = 0
local notLoaded = true

local roll_show_2 = roll_show
local pitch_show_2 = pitch_show
local v_roll_show_2 = 0
local v_pitch_show_2 = 0

local v_plank_act = 0
local h_plank_act = 0

local absu_v_act = 0
local absu_h_act = 0
local spinup=0


local function needle_pos (ang_actual_prev,ang_need,dt,v_prev,k_spr,k_dmp,k_v,c_v)
	local v_needle_max=5000*c_v
	local e_c=(ang_need-ang_actual_prev)*k_spr
	dt=math.min(dt,0.025)
    local v=v_prev*k_v+e_c*dt-v_prev*k_dmp
	if v>v_needle_max then
		v=v_needle_max
	elseif v<-v_needle_max then
		v=-v_needle_max
	end
    local ang_actual=ang_actual_prev+v*dt
	-- if ang_actual<0 then
		-- ang_actual=0
		-- v=0
	-- end
	return v,ang_actual
end


function update()
	local passed = get(frame_time)
	
	local needles= get(absu_needles_on) == 1
	
	local power = get(bus36_volt) > 30 and get(pkp_on) == 1 and get(bus27_volt) > 13 and get(fail) < 6
	
	time_counter = time_counter + passed	

	-- set initial AHZ position
	if time_counter > 0.3 and time_counter < 0.4 and notLoaded and get(N1) < 10 and get(N2) < 10 and get(N3) < 10 then
		initial_roll_err = math.random(-15, 15)
		roll_off = math.random(-1, 1)
		initial_pitch_err = math.random(-15, 15)
		pitch_off = math.random(-1, 1)
		set(dir_roll_flag, 1)
		set(dir_pitch_flag, 1)
		
		notLoaded = false
	elseif time_counter > 0.3 and time_counter < 0.4 and notLoaded then 
		roll_off = math.random(-1, 1)
		pitch_off = math.random(-1, 1)	
		initial_roll_err = 0
		initial_pitch_err = 0
		pitch_corr = 0
		roll_corr = 0
		power_roll = 0
		power_pitch = 0
		notLoaded = false	
	end
	
	-- calculate roll and pitch for power off
	if not power then
		power_roll = get(roll_sim)
		power_pitch = get(pitch_sim)
		if spinup>0 then
			spinup=spinup-passed
		end
	end -- if no power, then horizon will remain its position
	
	
	-- calculate power ON and OFF initial roll and pitch
	if not power then
		if math.abs(initial_roll_err) < 30 then initial_roll_err = initial_roll_err + passed * roll_off * 0.1 end
		if math.abs(initial_pitch_err) < 30 then initial_pitch_err = initial_pitch_err + passed * pitch_off * 0.1 end
	else
		if spinup<110 then
			spinup=spinup+passed
		end
		local ready=bool2int(spinup>=110)
		if initial_roll_err > 0.1 then initial_roll_err = initial_roll_err - passed * 0.05*ready
		elseif initial_roll_err < -0.1 then initial_roll_err = initial_roll_err + passed * 0.05*ready
		else initial_roll_err = 0 end
		if initial_pitch_err > 0.1 then initial_pitch_err = initial_pitch_err - passed * 0.05*ready
		elseif initial_pitch_err < -0.1 then initial_pitch_err = initial_pitch_err + passed * 0.05*ready
		else initial_pitch_err = 0 end
		
		-- reset all errors and correction after some time
		if power_roll > 0.05 then power_roll = power_roll - passed * 0.05*ready
		elseif power_roll < -0.05 then power_roll = power_roll + passed * 0.05*ready
		else power_roll = 0 end
		
		if power_pitch > 0.05 then power_pitch = power_pitch - passed * 0.05*ready
		elseif power_pitch < -0.05 then power_pitch = power_pitch + passed * 0.05*ready
		else power_pitch = 0 end
		
		if roll_corr > 0.01 then roll_corr = roll_corr -  passed* 0.05*ready
		elseif roll_corr < -0.01 then roll_corr = roll_corr +  passed * 0.05*ready
		else roll_corr = 0 end
		
		if pitch_corr > 0.01 then pitch_corr = pitch_corr -  passed* 0.05*ready
		elseif pitch_corr < -0.01 then pitch_corr = pitch_corr +  passed * 0.05*ready
		else pitch_corr = 0 end
		
	end
	
	
	-- arresting mechanism
	local arrest = get(arrest_btn) > 0
	if arrest and power then
		-- set new correction
		
		if math.abs(initial_roll_err) < 0.1 then
			if roll_show > 0.1 then roll_corr = roll_corr + 6 * passed
			elseif roll_show < -0.1 then roll_corr = roll_corr - 6 * passed end
		end
		if math.abs(initial_pitch_err) < 0.1 then
			if pitch_absu > 0.1 then pitch_corr = pitch_corr + 6 * passed
			elseif pitch_absu < -0.1 then pitch_corr = pitch_corr - 6 * passed end
		end
		
		-- reset errors
		if power_roll > 0.1 then power_roll = power_roll - passed
		elseif power_roll < -0.1 then power_roll = power_roll + passed end
		if power_pitch > 0.1 then power_pitch = power_pitch - passed
		elseif power_pitch < -0.1 then power_pitch = power_pitch + passed end

		if initial_roll_err > 0.1 then initial_roll_err = initial_roll_err - passed * 6
		elseif initial_roll_err < -0.1 then initial_roll_err = initial_roll_err + passed * 6 end
		if initial_pitch_err > 0.1 then initial_pitch_err = initial_pitch_err - passed * 6
		elseif initial_pitch_err < -0.1 then initial_pitch_err = initial_pitch_err + passed * 6 end
		
	end	
	
	
	-- main formula for curent position
	roll_show = get(roll_sim) - power_roll + initial_roll_err - roll_corr
	pitch_show = get(pitch_sim) - power_pitch + initial_pitch_err - pitch_corr - get(pitch_corr_hdl) * 20
	pitch_absu = get(pitch_sim) - power_pitch + initial_pitch_err - pitch_corr
	
	-- final result is a summ of power position, initial error of gauge, collective error of gauge and correction of this error
	
	if pitch_show > 90 then pitch_show = 90
	elseif pitch_show < -90 then pitch_show = -90 end
	
	if pitch_absu > 90 then pitch_absu = 90
	elseif pitch_absu < -90 then pitch_absu = -90 end
	
	
	-- slow down indication
	local roll_delta = roll_show - roll_show_2
	if roll_delta > 180 then roll_delta = roll_delta - 360
	elseif roll_delta < -180 then roll_delta = roll_delta + 360 end
	

	local k_spr = 2500*0.1
	local k_dmp = 0.15 *18
	local k_v = 3.4*1.025
	local c_v = 0.1*0.7

	if power then
		local v_roll_show_2_set,roll_show_2_set = needle_pos (roll_show_2,roll_show,passed,v_roll_show_2,k_spr,k_dmp,k_v,c_v)
		roll_show_2=roll_show_2_set
		v_roll_show_2=v_roll_show_2_set
		--roll_show_2 = roll_show_2 + (roll_delta) * passed * 5
		--pitch_show_2 = pitch_show_2 + (pitch_show - pitch_show_2) * passed * 5
		local v_pitch_show_2_set,pitch_show_2_set = needle_pos (pitch_show_2,pitch_show,passed,v_pitch_show_2,k_spr,k_dmp,k_v,c_v)
		pitch_show_2=pitch_show_2_set
		v_pitch_show_2=v_pitch_show_2_set
	end
	
	-- flag logic
	local flag = bool2int(not power or arrest or get(pkp_fail) == 1)
	
	
	local mode = get(absu_pnp_mode) -- 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
	
	-- ABSU planks and flags
	local absu_roll=get(absu_roll_flag)
	local absu_pitch=get(absu_pitch_flag)
	local land_prep=get(absu_landing_on)>0
	local nav_prep=get(absu_nav_on)>0
	local roll_diff = 1
	local pitch_diff = 1
	local flag_roll = 0
	local flag_pitch = 0
	local absu_pwr=get(absu_power)>0
	if needles then
		roll_diff = 1
	    pitch_diff = 1
		if land_prep and mode==4 then
			if absu_roll == 0 then
				roll_diff = get(absu_roll_ind) / 25
			else
				roll_diff = 1
			end
		elseif nav_prep and mode>0 and mode<4 then
			if absu_roll == 0 then
				roll_diff = get(absu_roll_ind) / 25
				pitch_diff = 1
			else
				roll_diff = 1
				pitch_diff = 1
			end
		end
		if land_prep and mode==4 then
			if absu_pitch == 0 then
				pitch_diff = get(absu_pitch_ind) / 10
			else
				pitch_diff = 1
			end
		end
	end
	if land_prep and mode==4 or not absu_pwr then
		flag_roll=absu_roll
		flag_pitch=absu_pitch
	elseif nav_prep and mode>0 and mode<4 or not absu_pwr then
		flag_roll=absu_roll
	end
	
				
		
	if roll_diff > 1 then roll_diff = 1
	elseif roll_diff < -1 then roll_diff = -1 end
	
	if pitch_diff > 1 then pitch_diff = 1
	elseif pitch_diff < -1 then pitch_diff = -1 end
	
	-- local flag_roll = bool2int(get(absu_roll_flag) == 1)
	-- local flag_pitch = bool2int(get(absu_pitch_flag) == 1)
	
	--local pnp_mode1=get(absu_pnp_mode1)
	-- if get(absu_landing_on)>0 and mode~=4 then
		-- roll_diff = 0
		-- pitch_diff = 0
		-- flag_roll=math.max(get(absu_calc_roll_fail),get(absu_bns_roll_fail))
		-- flag_pitch=math.max(get(absu_calc_pitch_fail),get(absu_bns_pitch_fail))
	-- elseif get(absu_nav_on)>0 and (mode==0 or mode==4) then
		-- roll_diff = 0
		-- pitch_diff = 0
		-- flag_roll=math.max(get(absu_calc_roll_fail),get(absu_bns_roll_fail))
		-- flag_pitch=math.max(get(absu_calc_pitch_fail),get(absu_bns_pitch_fail))
	-- end
	-- if not needles_on then
		-- roll_diff = 0
		-- pitch_diff = 0
	-- end
	absu_v_act = absu_v_act + (roll_diff - absu_v_act) * passed * 5 * bool2int(absu_pwr)
	absu_h_act = absu_h_act + (pitch_diff - absu_h_act) * passed * 5 * bool2int(absu_pwr)	
	
	
	

	
	
	
	

	

	local course_pl = get(nav_cs_1)
	local glidesl_pl = -get(nav_gs_1)	
	
	-- if mode == 2 and power then -- AZ-1 mode

		-- -- set course and glideslope planks
		-- course_pl = get(nav_cs_1)
		-- glidesl_pl = 0
	
	-- elseif mode == 3 and power then -- AZ-2 mode

		-- -- set course and glideslope planks
		-- course_pl = get(nav_cs_2)
		-- glidesl_pl = 0

	
	if get(absu_pnp_mode1) == 4 and power then -- APP
		local bns_pitch=get(absu_bns_pitch_fail)
		local bns_roll=get(absu_bns_pitch_fail)
		-- set course and glideslope planks
		course_pl = get(nav_cs_1)*(1-bns_roll)
		glidesl_pl = -get(nav_gs_1)*(1-bns_pitch)

		if get(absu_use_second_nav) == 1 then
			course_pl = get(nav_cs_2)*(1-bns_roll)
			glidesl_pl = -get(nav_gs_2)*(1-bns_pitch)
		end
		
	-- elseif power and mode == 1 then -- NVU
	
		-- course_pl = -get(nvu_res_z) * 0.1
		-- glidesl_pl = 0
	
	elseif power then
		
		course_pl = 0
		glidesl_pl = 0
		
		
	else
		
		course_pl = 0
		glidesl_pl = 0
		
	end	
	
	if course_pl > 1.2 then course_pl = 1.2
	elseif course_pl < -1.2 then course_pl = -1.2 end
	
	v_plank_act = v_plank_act + (course_pl - v_plank_act) * passed * 5
	h_plank_act = h_plank_act + (glidesl_pl - h_plank_act) * passed * 5
	
	
	
	
	-- speed indicator
	
	local spd_dif = get(absu_at_dif) / 20
	
	if spd_dif > 1 then spd_dif = 1
	elseif spd_dif < -1 then spd_dif = -1 end
	
	
	
	
local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	
	-- set results
	
	set(ahz_flag, flag)
	
	if power then
		set(res_pitch, pitch_show_2)
		set(pitch_int, pitch_absu)
		set(res_roll, roll_show_2)
		
		set(res_roll_bkk, roll_show)
		set(dir_roll, absu_v_act)
		set(dir_pitch, absu_h_act)	
	
		set(speed_plank, spd_dif)
		
		set(course_plank, v_plank_act)
		set(gs_plank, h_plank_act)
		
		set(dir_roll_flag, flag_roll)
		set(dir_pitch_flag, flag_pitch)
	-- else
		-- set(dir_roll_flag, 1)
		-- set(dir_pitch_flag, 1)
	end
	
	set(power_cc, bool2int(power))

	
end
	
	
end
