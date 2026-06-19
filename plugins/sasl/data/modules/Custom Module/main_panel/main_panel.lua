-- this is actual panel. here will be placed all gauges for panel.png and 2D popup panels

size = { 2048, 2048 }


components = {
	
--[[	
	test_hud {
	
		position = {1600, 0, 400, 400},
	
	},
--]]	
	vers {},
	
	sc_controls {}, -- управление через SmartCopilot
	
	achs1 {}, -- часы
	clock24 {}, -- часы на задней боковой панели
	mech_aneroid {}, -- мембранные приборы
	svs {}, -- система СВС
	termo {}, -- термометры
	uvid_15fk {}, -- футовый высотомер
	mach_meters {}, -- измерители числа М
	uap14 {}, -- указатель АУАСП
	eup53 {}, -- указатель поворота
	agr {}, -- резервный авиагоризонт
	pkp {}, -- левый авиагоризонт
	pkp { -- правый авиагоризонт
		pitch_corr_hdl = globalPropertyf("tu154b2/custom/gauges/ahz/pitch_corr_R"), -- коррекция тангажа на АГР + вправо
		pkp_on = globalPropertyi("tu154b2/custom/switchers/ovhd/pkp_right_on"), -- выключатель
		
		pkp_fail = globalPropertyi("tu154b2/custom/bkk/pkp_fail_right"), -- сигнал с БКК - отказ ПКП
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"), -- питание
		bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_right"), -- питание
		
		res_pitch = globalPropertyf("tu154b2/custom/gauges/ahz/pitch_R"), -- тангаж на АГР + нос вверх
		pitch_int = globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_R"), -- тангаж на АГР + вверх
		res_roll = globalPropertyf("tu154b2/custom/gauges/ahz/roll_R"), -- крен на АГР + в право
		res_roll_bkk = globalPropertyf("tu154b2/custom/bkk/pkp_roll_right"), -- крен для БКК + в право
		ahz_flag = globalPropertyf("tu154b2/custom/gauges/ahz/ahz_flag_R"), -- тангаж на АГР + нос вверх
		
		course_plank = globalPropertyf("tu154b2/custom/gauges/ahz/course_plank_R"), -- курсовая планка АГД КВС + в право
		gs_plank = globalPropertyf("tu154b2/custom/gauges/ahz/gs_plank_R"), -- глиссадная планка АГД КВС + вверх
		
		dir_roll = globalPropertyf("tu154b2/custom/gauges/ahz/dir_roll_R"), -- директор крена АГД КВС + в право
		dir_pitch = globalPropertyf("tu154b2/custom/gauges/ahz/dir_pitch_R"), -- директор тангажа на АГД КВС + вверх
		
		dir_roll_flag = globalPropertyf("tu154b2/custom/gauges/ahz/dir_roll_flag_R"), -- флаг отказа директора крена АГД КВС
		dir_pitch_flag = globalPropertyf("tu154b2/custom/gauges/ahz/dir_pitch_flag_R"), -- флаг отказа директора тангажа АГД КВС

		
		absu_pnp_mode = globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1"), -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
		absu_at_dif = globalPropertyf("tu154b2/custom/absu_at_dif_right"), -- разность скоростей для индикации на ПКП
		speed_plank = globalPropertyf("tu154b2/custom/gauges/ahz/speed_plank_R"), -- изменение скорости АГД 2П + вверх
		
		power_cc = globalPropertyf("tu154b2/custom/bkk/pkp_right_power_cc"), -- отребление тока ПКП
		fail = globalPropertyi("sim/operation/failures/rel_cop_ahz"),
		
	},
	mgv {}, -- контрольный авиагоризонт без вывода индикации
	bkk {}, -- блок контроля кренов БКК
	
	-- electronic altimeter
	vbe_altimeter { -- левый электронный высотомер
		position = {733, 839, 424, 424},
	},
	
	-- electronic altimeter
	vbe_altimeter { -- правый электронный высотомер
		position = {1166, 839, 424, 424},
		gauge_num = 1,
		static_fail = globalPropertyi("sim/operation/failures/rel_static2"),
		pressure = globalPropertyf("tu154b2/custom/gauges/alt/vbe_press_right"),  -- pressure in hPa
		brt_knob = globalPropertyf("tu154b2/custom/gauges/alt/vbe_brt_right"),  -- brightness knob
		press_knob = globalPropertyi("tu154b2/custom/gauges/alt/vbe_press_knob_right"),  -- pressure knob
		fl_knob = globalPropertyi("tu154b2/custom/gauges/alt/vbe_fl_knob_right"),  -- flight level knob
		mode_button = globalPropertyi("tu154b2/custom/gauges/alt/vbe_mode_but_right"),  -- mode button
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"), -- напряжение сети 27
		bus115_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt"), -- напряжение на сети 115в
		vbe_on = globalPropertyi("tu154b2/custom/switchers/ovhd/vbe_2_on"),  -- power switcher
		vbe_mode = globalPropertyi("tu154b2/custom/gauges/alt/vbe_mode_right"),  -- meters/feet mode
		vbe_std = globalPropertyi("tu154b2/custom/gauges/alt/vbe_std_right"),  -- включение стандартного давления
		alt_mtr = globalPropertyf("tu154b2/custom/gauges/alt/vbe_alt_right"),  -- indicated altitude in meters
		vbe_flightlevel = globalPropertyf("tu154b2/custom/gauges/alt/vbe_flightlevel_right"),  -- эшелон
		fail = globalPropertyi("sim/operation/failures/rel_cop_alt"), -- 
	},
	
	rv5 {},
	
	rv5 {
		altitude = globalPropertyf("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_copilot"),  -- altitude, measured by gauge
		dh_set = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_right"),  -- DH angle
		test_btn = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_button_right"),  -- DH angle
		rv_on = globalPropertyf("tu154b2/custom/switchers/ovhd/rv5_2_on"),  -- switcher
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"),
		bus115_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt"),
		rv_angle = globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_right"),  -- RV needle
		rv_flag = globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_right"),  -- RV flag
		rv_lamp = globalPropertyf("tu154b2/custom/lights/small/rv5_right_dh"),  -- RV lamp
		rv5_dh_signal = globalPropertyi("tu154b2/custom/misc/rv5_dh_signal_right"),
		rv_сс = globalPropertyf("tu154b2/custom/elec/rv5_right_cc"),  -- RV current
		rv5_alt = globalPropertyf("tu154b2/custom/misc/rv5_alt_right"),  -- высота на правом высотомере
		rv_fail = globalPropertyi("tu154b2/custom/failures/rv2_fail"),  -- fail
	},
	
	
	msrp_clock { -- часы МСРП
		position = {12, 762, 195, 84},
	},
	
	door_panel {}, -- индкаторы дверей и люков
	
	tcas {
		position = {0, 0, 2048, 2048},
	},

	taws {
		position = {1034, 1270, 666, 513},
	},

	tks {},
	
	pnp {}, -- ПНП КВС
	
	pnp { -- ПНП 2П
		gauge_num = 1, -- right
		course_ga = globalPropertyf("tu154b2/custom/tks/course_ga_2"), -- курс на ГА
		course_bgmk = globalPropertyf("tu154b2/custom/tks/course_bgmk_2"), -- курс на БГМК
		gyro_fail = globalPropertyi("tu154b2/custom/tks/fail_right"), -- флаг отказа
		
		obs = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_set_R"),  -- set the course
		obs_side = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_set_L"),  -- set the course
		
		-- controls
		pnp_mode = globalPropertyi("tu154b2/custom/switchers/ovhd/curs_pnp_mode_2"), -- режим курс ПНП. 0 - ГМК, 1 - ГПК
		pkp_obs_knob = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_knob_R"), -- ручка настройки курса

		-- results
		pkp_gyro_course = globalPropertyf("tu154b2/custom/gauges/compas/pkp_gyro_course_R"), -- курс гироскопа ПКП
		pkp_obs = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_R"), -- курс полета на ПКП
		pkp_helper_course = globalPropertyf("tu154b2/custom/gauges/compas/pkp_helper_course_R"), -- устанвока курса желтой стрелкой на ПКП
		pkp_slip_angle = globalPropertyf("tu154b2/custom/gauges/compas/pkp_slip_angle_R"), -- угол сноса на ПКП
		pkp_course_plank = globalPropertyf("tu154b2/custom/gauges/compas/pkp_course_plank_R"), -- курсовая планка ПКП КВС + отклонение планки вправо
		pkp_gs_plank = globalPropertyf("tu154b2/custom/gauges/compas/pkp_gs_plank_R"), -- глиссадная планка ПКП КВС + отклонение планки вверх
		pkp_gs_flag = globalPropertyi("tu154b2/custom/gauges/compas/pkp_gs_flag_R"), -- флаг отказа глиссадной планки
		pkp_course_flag = globalPropertyi("tu154b2/custom/gauges/compas/pkp_course_flag_R"), -- флаг отказа курсовой планки
		pkp_main_flag = globalPropertyi("tu154b2/custom/gauges/compas/pkp_main_flag_R"), -- флаг отказа курса
		pkp_obs_flag = globalPropertyi("tu154b2/custom/gauges/compas/pkp_obs_flag_R"), -- флаг отказа счетчика курса
		pkp_obs_one = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_one_R"), -- счетчик курса. единицы
		pkp_obs_ten = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_ten_R"), -- счетчик курса. десятки
		pkp_obs_hundr = globalPropertyf("tu154b2/custom/gauges/compas/pkp_obs_hundr_R"), -- счетчик курса. сотни		
		
		absu_pnp_mode = globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_2"), -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
		absu_pnp_mode_2 = globalPropertyi("tu154b2/custom/absu/absu_pnp_mode_1"), -- режим индикации ПНП. 0 = off, 1 = НВУ, 2 = VOR1, 3 = VOR2, 4 = ПС
	
		pnp_sp_lamp = globalPropertyf("tu154b2/custom/lights/small/pnp_sp_right"), -- 
		pnp_vor_lamp = globalPropertyf("tu154b2/custom/lights/small/pnp_vor_right"), -- 
		pnp_nv_lamp = globalPropertyf("tu154b2/custom/lights/small/pnp_nv_right"), -- 
		
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_left"),
		bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_right"),
		fail_ga = globalPropertyf("sim/operation/failures/rel_cop_dgy"),
		tks_on = globalPropertyi("tu154b2/custom/switchers/ovhd/tks_on_2"), 
	
	}, 
	
	rmi {}, -- radiocompas Cpt
	
	rmi {
	
		-- sources
		course_bgmk = globalPropertyf("tu154b2/custom/tks/course_bgmk_1"), -- курс на БГМК
		-- power
		bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2"), -- напряжение сети 36в
		-- results
		radiocomp_scale = globalPropertyf("tu154b2/custom/gauges/compas/radiocomp_scale_right"), -- шкала курса на радиокомпасе
		bearing_1 = globalPropertyf("tu154b2/custom/gauges/compas/bearing_1_right"), -- стрелка направления 1 радиокомпаса
		bearing_2 = globalPropertyf("tu154b2/custom/gauges/compas/bearing_2_right"), -- стрелка направления 2 радиокомпаса
		source_1_switch = globalPropertyi("tu154b2/custom/gauges/compas/source_1_switch_right"), -- переключатель стрелки 1 радиокомпаса. 0 - пусто, 1 - АРК1, 2 - АРК2, 3 - VOR1, 4 - VOR2, 5 - РСБН
		source_2_switch = globalPropertyi("tu154b2/custom/gauges/compas/source_2_switch_right"), -- переключатель стрелки 2 радиокомпаса
	
	},
	
	diss {}, -- dopler's system
	
	usvp {}, -- true and ground speed
	
	rsbn {}, -- short range radio navigation system
	
	radio { -- radio panel
		position = {0, 0, 2048, 2048},
	
	},
	
	nvu {}, -- navigation calculator
	
	absu {}, -- autopilot
	
	misc_lamps {}, -- various lamps
	
	radar {
		position = {0, 0, 2048, 2048},
	},

	radar_kontur {},
	
	vent {},
	
	water_panel {},
	
	gns430 {},
	
	-- --ins_test {},
	
	misc_fails {},
	
	nav_draw {
		position = {2067, 1660, 500, 400},
	},
	radar_test {
		position = {1034, 1270, 666, 513},
	},
	
}