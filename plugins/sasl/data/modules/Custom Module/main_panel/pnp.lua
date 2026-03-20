-- this is PNP gauge


-- sources
defineProperty("gauge_num", 0) -- номер прибора

defineProperty("absu_zpu_sel", globalPropertyi("tu154b2/custom/switchers/console/absu_zpu_sel")) -- переключатель ЗПУ. лев - прав

defineProperty("course_ga", globalPropertyf("tu154b2/custom/tks/course_ga_1")) -- курс на ГА
defineProperty("course_bgmk", globalPropertyf("tu154b2/custom/tks/course_bgmk_1")) -- курс на БГМК
defineProperty("diss_slip_angle", globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")) -- угол сноса по ДИСС

defineProperty("nav_cs_1", globalPropertyf("tu154b2/custom/radio/nav1_cs"))
defineProperty("nav_gs_1", globalPropertyf("tu154b2/custom/radio/nav1_gs"))

defineProperty("nav_cs_flag_1", globalPropertyi("tu154b2/custom/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag_1", globalPropertyi("tu154b2/custom/radio/nav1_gs_flag"))

defineProperty("nav_cs_2", globalPropertyf("tu154b2/custom/radio/nav2_cs"))
defineProperty("nav_gs_2", globalPropertyf("tu154b2/custom/radio/nav2_gs"))

defineProperty("nav_cs_flag_2", globalPropertyi("tu154b2/custom/radio/nav2_cs_flag"))
defineProperty("nav_gs_flag_2", globalPropertyi("tu154b2/custom/radio/nav2_gs_flag"))

defineProperty("obs", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_set_L"))  -- set the course

defineProperty("obs_side", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_set_R"))  -- set the course


defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


defineProperty("gyro_fail", globalPropertyi("tu154b2/custom/tks/fail_left")) -- флаг отказа


defineProperty("absu_use_second_nav", globalPropertyi("tu154b2/custom/absu_use_second_nav")) -- АБСУ использует второй КурсМП

--defineProperty("roll_sub_mode", globalPropertyi("tu154b2/custom/absu/roll_sub_mode")) -- режим АБСУ по крену. 0 - выкл, 1 - стаб, 2 - ЗК, 3 - НВУ, 4 - АЗ1, 5 - АЗ2, 6 - заход
--defineProperty("pitch_sub_mode", globalPropertyi("tu154b2/custom/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход

defineProperty("nav_course_1", globalPropertyi("tu154b2/custom/rotary/console/nav_1_course")) -- ручка установки курса
defineProperty("nav_course_2", globalPropertyi("tu154b2/custom/rotary/console/nav_2_course")) -- ручка установки курса

defineProperty("obs1", globalPropertyi("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot")) -- OBS course
defineProperty("obs2", globalPropertyi("sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot")) -- OBS course

-- NVU
defineProperty("nvu_res_course", globalPropertyf("tu154b2/custom/nvu/nvu_res_course")) -- курс полета по НВУ
defineProperty("nvu_res_z", globalPropertyf("tu154b2/custom/nvu/nvu_res_z")) -- смещение от курса полета НВУ

-- KLN
defineProperty("kln_course", globalPropertyf("tu154b2/custom/kln90/kln_course")) -- курс ЛЗП от КЛН
defineProperty("kln_dev", globalPropertyf("tu154b2/custom/kln90/kln_dev")) -- отклонение от ЛЗП, мили
defineProperty("kln_flag", globalPropertyi("tu154b2/custom/kln90/kln_flag")) -- флаг курса КЛН. 0 = флаг


defineProperty("show_gns", globalPropertyi("tu154b2/custom/anim/show_gns"))
defineProperty("show_RXP",globalPropertyi("tu154b2/custom/anim/RXP"))

-- GNS
defineProperty("GNS430_dtk", globalPropertyf("tu154b2/custom/SC/GNS430_dtk")) -- курс на ГНС
defineProperty("GNS430_dev", globalPropertyf("tu154b2/custom/SC/GNS430_dev")) -- отклонение от курса на ГНС
defineProperty("GNS430_flag", globalPropertyi("tu154b2/custom/SC/GNS430_flag")) -- отклонение от курса на ГНС
--defineProperty("gps_power", globalPropertyi("sim/cockpit2/radios/actuators/gps_power")) -- GPS power

-- RXP
-- defineProperty("RXP_course", globalPropertyf("RXP/radios/indicators/gps_course_degtm")) -- курс ЛЗП от КЛН
-- defineProperty("RXP_dev", globalPropertyf("RXP/radios/indicators/gps_cross_track_nm")) -- отклонение от ЛЗП, мили
-- defineProperty("RXP_flag", globalPropertyf("RXP/radios/indicators/hsi_flag_from_to_pilot")) -- флаг


-- controls
defineProperty("pnp_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/curs_pnp_mode_1")) -- режим курс ПНП. 0 - ГМК, 1 - ГПК
defineProperty("pkp_obs_knob", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_knob_L")) -- ручка настройки курса

defineProperty("absu_pnp_mode", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
defineProperty("absu_pnp_mode_2", globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_2")) -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
defineProperty("nav_select", globalPropertyi("tu154b2/custom/switchers/nav_select")) -- тумблер НВУ-СНС 0 - НВУ, 1 - СНС

-- power
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2"))
defineProperty("fail_ga", globalPropertyf("sim/operation/failures/rel_ss_dgy"))
defineProperty("tks_on", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_on_1")) -- выключатель ТКС 


-- results
defineProperty("pkp_gyro_course", globalPropertyf("tu154b2/custom/gauges/compas/pkp_gyro_course_L")) -- курс гироскопа ПКП
defineProperty("pkp_obs", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_L")) -- курс полета на ПКП
defineProperty("pkp_helper_course", globalPropertyf("tu154b2/custom/gauges/compas/pkp_helper_course_L")) -- устанвока курса желтой стрелкой на ПКП
defineProperty("pkp_slip_angle", globalPropertyf("tu154b2/custom/gauges/compas/pkp_slip_angle_L")) -- угол сноса на ПКП
defineProperty("pkp_course_plank", globalPropertyf("tu154b2/custom/gauges/compas/pkp_course_plank_L")) -- курсовая планка ПКП КВС + отклонение планки вправо
defineProperty("pkp_gs_plank", globalPropertyf("tu154b2/custom/gauges/compas/pkp_gs_plank_L")) -- глиссадная планка ПКП КВС + отклонение планки вверх
defineProperty("pkp_gs_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_gs_flag_L")) -- флаг отказа глиссадной планки
defineProperty("pkp_course_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_course_flag_L")) -- флаг отказа курсовой планки
defineProperty("pkp_main_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_main_flag_L")) -- флаг отказа курса
defineProperty("pkp_obs_flag", globalPropertyi("tu154b2/custom/gauges/compas/pkp_obs_flag_L")) -- флаг отказа счетчика курса
defineProperty("pkp_obs_one", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_one_L")) -- счетчик курса. единицы
defineProperty("pkp_obs_ten", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_ten_L")) -- счетчик курса. десятки
defineProperty("pkp_obs_hundr", globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_hundr_L")) -- счетчик курса. сотни


-- lapms
defineProperty("pnp_sp_lamp", globalPropertyf("tu154b2/custom/lights/small/pnp_sp_left")) -- 
defineProperty("pnp_vor_lamp", globalPropertyf("tu154b2/custom/lights/small/pnp_vor_left")) -- 
defineProperty("pnp_nv_lamp", globalPropertyf("tu154b2/custom/lights/small/pnp_nv_left")) -- 
-- BNS fails
defineProperty("absu_bns_pitch_fail", globalPropertyi("tu154b2/custom/failures/bns_tet_fail"))
defineProperty("absu_bns_roll_fail", globalPropertyi("tu154b2/custom/failures/bns_gam_fail"))
defineProperty("nvu_otk", globalPropertyi("tu154b2/custom/failures/nvu_fail"))
defineProperty("nvu_mode", globalPropertyi("tu154b2/custom/nvu/nvu_mode")) -- режим НВУ. 0 = выкл, 1 = готов, 2 = счисление, 3 = коррекция
defineProperty("absu_power_cc", globalPropertyf("tu154b2/custom/absu_power_cc")) -- потребление тока АБСУ
defineProperty("sta_type_left", globalPropertyi("tu154b2/custom/radio/ils_left"))
defineProperty("sta_type_right", globalPropertyi("tu154b2/custom/radio/ils_right"))
defineProperty("mag_psi", globalPropertyf("sim/flightmodel/position/mag_psi")) -- mag course
-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
--defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



-- start value of curse

local main_scale_act = get(course_ga)
local start_timer=0
local notLoaded =true
local slip_ang_act = 0

local v_plank_act = 0
local h_plank_act = 0

local obs_actual = 0
local obs_knob_last = 0
local obs_now = get(obs)

local obs_course = get(obs)

function update()
	
	local MASTER = get(ismaster) ~= 1	
	local obs_flg=0
	local ks_flag=0
	local nvu_fail=bool2int(get(absu_bns_roll_fail)==1 or get(nvu_mode)*(1-get(nvu_otk))==0)
	--local mp1_fail=get(absu_bns_roll_fail)==1 or get(nvu_mode)*(1-get(nvu_fail))==0
	
	local passed = get(frame_time)
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.4 then
		if MASTER then 
			main_scale_act = get(course_ga)
			set(pkp_gyro_course, main_scale_act)
		end
		notLoaded = false
	end	

	local power = get(bus27_volt) > 13 and get(bus36_volt) > 30 and get(tks_on) == 1 and get(fail_ga) < 6
	
	local mode = get(absu_pnp_mode) -- 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
	local mode_2 = get(absu_pnp_mode_2)
	
	local nav_sel = get(nav_select) -- тумблер НВУ-СНС 0 - НВУ, 1 - СНС
	
	
	--local NVU = get(nvu_mode) > 1 -- temp. must change it to ABSU modes
	
	main_scale_act = get(pkp_gyro_course)
	
	if power then
		
		-- main course --
		local course = get(course_ga)
		if get(pnp_mode) == 0 then course = get(course_bgmk) end
		
		local cur_delta = main_scale_act - course
				
		if cur_delta > 180 then cur_delta = cur_delta - 360
		elseif cur_delta < -180 then cur_delta = cur_delta + 360 end
				
		if cur_delta > 1 then main_scale_act = main_scale_act - passed * 30
		elseif cur_delta < -1 then main_scale_act = main_scale_act + passed * 30
		else main_scale_act = main_scale_act - cur_delta * passed * 20
		end
		
		-- slip angle --
		local slip = get(diss_slip_angle)
		
		slip_ang_act = slip_ang_act + (slip - slip_ang_act) * passed * 10
		
		if slip_ang_act > 30 then slip_ang_act = 30
		elseif slip_ang_act < -30 then slip_ang_act = -30 end
		

	end
	
	
	-- set limits
	if main_scale_act > 180 then main_scale_act = main_scale_act - 360
	elseif main_scale_act < -180 then main_scale_act = main_scale_act + 360 end
	
	-- set course
	if MASTER then set(pkp_gyro_course, main_scale_act) end
	
	-- set slip angle
	if slip_ang_act > 20 then slip_ang_act = 20
	elseif slip_ang_act < -20 then slip_ang_act = -20 end
	
	
	-- TKS flag logic
	if not power or get(gyro_fail) == 1 then
		ks_flag=1
	else 
		ks_flag=0
	end
	

	
	local course_flag = get(nav_cs_flag_1)
	local gs_flag = get(nav_gs_flag_1)
	
	local course_pl = get(nav_cs_1)
	local glidesl_pl = -get(nav_gs_1)
	
	local bns_fail=get(absu_bns_roll_fail)
	local bns_fail2=get(absu_bns_pitch_fail)
	local ils_lt=get(sta_type_left)
	local ils_rt=get(sta_type_right)
	
	if mode == 2 and power then -- AZ-1 mode

		-- set course and glideslope planks
		course_pl = get(nav_cs_1)*(1-bns_fail)*(1-ils_lt)
		glidesl_pl = 0
		
		if course_pl > 1.3 then course_pl = 1.3
		elseif course_pl < -1.3 then course_pl = -1.3 end
		
		
		--obs_course = get(obs1)
		if bns_fail==0 then
			obs_course = get(obs)
		end
		obs_flg=0
		
		
		if ((get(gauge_num) == 0 and get(absu_zpu_sel) == 1) or (get(gauge_num) == 1 and get(absu_zpu_sel) == 0)) then
			obs_course = get(obs_side)
			obs_flg=1
		end
		
		-- set flags
		course_flag = math.max(get(nav_cs_flag_1),bns_fail,ils_lt)
		gs_flag = 0
	
		
	
	elseif mode == 3 and power then -- AZ-2 mode

		-- set course and glideslope planks
		course_pl = get(nav_cs_2)*(1-bns_fail)*(1-ils_rt)
		glidesl_pl = 0
		
		
		if course_pl > 1.3 then course_pl = 1.3
		elseif course_pl < -1.3 then course_pl = -1.3 end
		
		
		--obs_course = get(obs2)
		if bns_fail==0 then
			obs_course = get(obs)
		end
		obs_flg=0
		
		
		if ((get(gauge_num) == 0 and get(absu_zpu_sel) == 1) or (get(gauge_num) == 1 and get(absu_zpu_sel) == 0))  then
			obs_course = get(obs_side)
			obs_flg=1
		end
			
		-- set flags
		course_flag = math.max(get(nav_cs_flag_2),bns_fail,ils_rt)
		gs_flag = 0

	
	elseif mode == 4 and power then -- APP

		-- set course and glideslope planks
		course_pl = get(nav_cs_1)*(1-bns_fail)*(ils_lt)
		glidesl_pl = -get(nav_gs_1)*(1-bns_fail2)*(ils_lt)
		
		-- switch to second COursMP
		if get(absu_use_second_nav) == 1 then 
			course_pl = get(nav_cs_2) *(1-bns_fail)*(ils_rt)
			glidesl_pl = -get(nav_gs_2) *(1-bns_fail2)*(ils_rt)
		end
		
		--if get(nav_cs_flag_1) == 1 and get(nav_cs_flag_2) == 0 then course_pl = get(nav_cs_2) end
		--if get(nav_gs_flag_1) == 1 and get(nav_gs_flag_2) == 0 then glidesl_pl = -get(nav_gs_2) end
		
		if course_pl > 1.3 then course_pl = 1.3
		elseif course_pl < -1.3 then course_pl = -1.3 end
		
		
		obs_course = get(obs)
		obs_flg=0
		
		
		if ((get(gauge_num) == 0 and get(absu_zpu_sel) == 1) or (get(gauge_num) == 1 and get(absu_zpu_sel) == 0)) then
			obs_course = get(obs_side)
			obs_flg=1
		end
			
		-- set flags
		local sec_nav=get(get(absu_use_second_nav))
		course_flag = math.max(math.max(get(nav_cs_flag_1),1-ils_lt)*(1-sec_nav), math.max(get(nav_cs_flag_2),1-ils_rt)*sec_nav,bns_fail)
		gs_flag =  math.max(math.max(get(nav_gs_flag_1),1-ils_lt)*(1-sec_nav), math.max(get(nav_gs_flag_2),1-ils_rt)*sec_nav,bns_fail2)
	
		--set(pkp_obs_flag, 0)
		
	elseif power and mode == 1 and nav_sel == 0 then -- NVU
		if nvu_fail==0 then
			obs_course = get(nvu_res_course)
		end
		
		course_pl = -get(nvu_res_z) * 0.1*(1-nvu_fail)
		glidesl_pl = 0
		
		
		gs_flag = 0
		course_flag = nvu_fail
		
		obs_flg=1 
		
	elseif power and mode == 1 and nav_sel == 1 then -- KLN
		--if nvu_fail==0 then
			obs_course = get(kln_course)
		--end
		
		course_pl = get(kln_dev) * 0.1852*(1-bns_fail)
		glidesl_pl = 0
		
		
		gs_flag = 0
		course_flag = math.max(bool2int(get(kln_flag) == 0),bns_fail)
		
		if get(show_gns) == 1 and get(show_RXP) == 0 then -- GNS
			--if nvu_fail==0 then
				obs_course = get(GNS430_dtk)
			--end
			
			course_pl = get(GNS430_dev) * 0.1852 * 2.1*(1-bns_fail)
			glidesl_pl = 0
			
			
			gs_flag = 0
			course_flag = math.max(get(GNS430_flag),bns_fail)
			
		-- elseif get(show_gns) == 1 and get(show_RXP) == 1 then -- RXP
			-- --if nvu_fail==0 then
				-- obs_course = get(RXP_course)
			-- --end
			
			-- course_pl = get(RXP_dev) * 1.852 * 0.5*(1-bns_fail)
			-- glidesl_pl = 0
			
			
			-- gs_flag = 0
			-- course_flag = math.max(bool2int(get(RXP_flag) == 0),bns_fail)
		end
		
		
		--print(get(kln_flag), course_flag)
		
		obs_flg=1
	
	elseif power then
	
		obs_course = get(obs)
		
		course_pl = 0
		glidesl_pl = 0
		
		gs_flag = 0
		course_flag = 0
		if get(absu_power_cc)==0 then
			gs_flag = 1
			course_flag = 1
		end
		if ((get(gauge_num) == 0 and get(absu_zpu_sel) == 1) or (get(gauge_num) == 1 and get(absu_zpu_sel) == 0)) then
			obs_course = get(obs_side)
			obs_flg=1
		else
			obs_flg=0
		end			
		
	else
		
		course_pl = 0
		glidesl_pl = 0
	
		gs_flag = 1
		course_flag = 1
	
		obs_flg=1	
	
	end
	
	-- set results planks and flags
	-- smooth
	v_plank_act = v_plank_act + (course_pl - v_plank_act) * passed * 5
	h_plank_act = h_plank_act + (glidesl_pl - h_plank_act) * passed * 5
	
	if v_plank_act > 1.1 then v_plank_act = 1.1
	elseif v_plank_act < -1.1 then v_plank_act = -1.1 end
	
	if h_plank_act > 1.1 then h_plank_act = 1.1
	elseif h_plank_act < -1.1 then h_plank_act = -1.1 end

	
	if power then
		local obs_delta = obs_actual - obs_course
					
		if obs_delta > 180 then obs_delta = obs_delta - 360
		elseif obs_delta < -180 then obs_delta = obs_delta + 360 end
					
		if obs_delta > 2 then obs_actual = obs_actual - passed * 30
		elseif obs_delta < -2 then obs_actual = obs_actual + passed * 30
		else obs_actual = obs_actual - obs_delta * passed * 15
		end	
	
	end
	
	while obs_actual > 360 do
		obs_actual = obs_actual - 360
	end
	
	while obs_actual < 0 do 
		obs_actual = obs_actual + 360
	end

	
	-- set OBS
	local obs_knob_now = get(pkp_obs_knob)
	
	
	
	while obs_knob_now > 360 do
		obs_knob_now = obs_knob_now - 360
	end
	
	while obs_knob_now < 0 do
		obs_knob_now = obs_knob_now + 360
	end
	
	-- if MASTER then 
		
		
	-- end
	
	local knob_diff = obs_knob_now - obs_knob_last
	
	obs_knob_last = obs_knob_now
	
	obs_now = get(obs)
	
	
	if math.abs(knob_diff) < 50 then
		obs_now = obs_now + knob_diff
	end
	
	while obs_now > 360 do
		obs_now = obs_now - 360
	end
	
	while obs_now < 0 do
		obs_now = obs_now + 360
	end
	
	
	
	--if obs_now > 360 then obs_now = obs_now - 360 
	--elseif obs_now < 0 then obs_now = obs_now + 360 end
	
	if MASTER then 
		-- limit course ZK
		local ZK_crs = get(pkp_helper_course)
		
		while ZK_crs > 360 do
			ZK_crs = ZK_crs - 360
		end
		
		while ZK_crs < 0 do 
			ZK_crs = ZK_crs + 360
		end
				
		if power then
			set(pkp_course_plank, v_plank_act)
			set(pkp_gs_plank, h_plank_act)
			set(pkp_obs, obs_actual)
			set(pkp_gs_flag, gs_flag)
			set(pkp_course_flag, course_flag)
			set(pkp_slip_angle, slip_ang_act)
			set(pkp_obs_flag,obs_flg)
			set(pkp_helper_course, ZK_crs)
		end		
		set(obs, math.floor(obs_now + 0.4))
		set(pkp_main_flag, ks_flag)
		set(pkp_obs_knob, obs_knob_now) 
		-- set numbers
		local obs_1 = obs_now % 10
		local obs_10 = math.floor((obs_now % 100) * 0.1) + math.max(math.max((obs_1  - 9), 0), 0)
		local obs_100 = math.floor((obs_now % 1000) * 0.01) + math.max(math.max((obs_10 - 9), 0), 0)
		
		set(pkp_obs_hundr, obs_100)
		set(pkp_obs_ten, obs_10)
		set(pkp_obs_one, obs_1)	
		
		

		
		
		-- lamps
		if power then
			set(pnp_sp_lamp, bool2int(mode == 4))
			set(pnp_vor_lamp, bool2int(mode == 2 or mode == 3))
			set(pnp_nv_lamp, bool2int(mode == 1))
		
		else
			set(pnp_sp_lamp, 0)
			set(pnp_vor_lamp, 0)
			set(pnp_nv_lamp, 0)
		
		end
	end
	
	
	
	
	
	
	
	
	
end








