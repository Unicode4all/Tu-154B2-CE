-- thi is radio panel main script. VHF radios, CourseMP and ARK
size = {2048, 2048}


components = {

	vhf {
		position = {13, 658, 420, 93},
	},
	
	vhf {
		position = {13, 556, 420, 93},
		num = 1,
		--frequency = globalPropertyf("sim/cockpit2/radios/actuators/com2_frequency_hz"),  -- set the frequency

		-- controls
		vhf_left = globalPropertyi("tu154b2/custom/rotary/ovhd/vhf_2_left"),  -- knob
		vhf_right = globalPropertyi("tu154b2/custom/rotary/ovhd/vhf_2_right"),  -- knob
		vhf_on = globalPropertyi("tu154b2/custom/switchers/ovhd/vhf_2_on"),  -- power switch
		
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"), -- power
		com_power = globalPropertyi("sim/cockpit2/radios/actuators/com2_power"), -- sim com power
		vhf_cc = globalPropertyf("tu154b2/custom/radio/vhf2_cc"),
	},
	
	course_mp {
		position = {288, 914, 410, 108},
	
	},
	
	
	
	course_mp {
		position = {288, 797, 410, 108},
		-- sources
		frequency = globalPropertyf("sim/cockpit2/radios/actuators/nav2_frequency_hz"),  -- set the frequency

		v_plank = globalPropertyf("sim/cockpit2/radios/indicators/nav2_hdef_dots_pilot"), -- horizontal deflection on course
		h_plank = globalPropertyf("sim/cockpit2/radios/indicators/nav2_vdef_dots_pilot"), -- vertical deflection on glideslope
		cr_flag = globalPropertyf("sim/cockpit2/radios/indicators/nav2_flag_from_to_pilot"), -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.
		gs_flag = globalPropertyf("sim/cockpit/radios/nav2_CDI"),  -- glideslope flag. 0 - flag is shown
		nav_deg = globalPropertyf("sim/cockpit2/radios/indicators/nav2_relative_bearing_deg"), -- nav1 bearing
		sim_fail = globalPropertyi("sim/operation/failures/rel_nav2"), -- fail
		distance = globalPropertyf("sim/cockpit2/radios/indicators/nav2_dme_distance_nm"),  -- distance in NM
		obs = globalPropertyi("sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot"), -- OBS course
		
		nav_fail = globalPropertyi("tu154b2/custom/failures/nav2_fail"), -- fail
		dme_fail = globalPropertyi("tu154b2/custom/failures/dme2_fail"), -- fail
		
		-- controls
		sd75_on = globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_2_on"), -- switch on
		curs_np_on = globalPropertyi("tu154b2/custom/switchers/ovhd/curs_np_on_2"), -- switch on
		
		-- power
		bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_right"),
		bus115_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt"),
		
		nav_pow_cc = globalPropertyf("tu154b2/custom/radio/nav2_pow_cc"), -- потребление тока от КурсМП
		kursmp_pow = globalPropertyf("sim/cockpit2/radios/actuators/nav2_power"),
		
		nav_mode = globalPropertyi("tu154b2/custom/switchers/nav_2_mode"), -- режим НАВ1. Захват - VOR-DME
		nav_man_auto = globalPropertyi("tu154b2/custom/switchers/nav_2_man_auto"), -- режим ручной - автомат
		nav_mile_km = globalPropertyi("tu154b2/custom/switchers/nav_2_mile_km"), -- режим мили - км
		nav_left = globalPropertyi("tu154b2/custom/rotary/ovhd/nav_2_left"), -- левая крутилка
		nav_right = globalPropertyi("tu154b2/custom/rotary/ovhd/nav_2_right"), -- правая крутилка
		nav_but_1 = globalPropertyi("tu154b2/custom/buttons/ovhd/nav_2_but_1"), -- кнопка 1
		nav_but_2 = globalPropertyi("tu154b2/custom/buttons/ovhd/nav_2_but_2"), -- кнопка 2
		nav_but_3 = globalPropertyi("tu154b2/custom/buttons/ovhd/nav_2_but_3"), -- кнопка 3
		
		nav_course = globalPropertyi("tu154b2/custom/rotary/console/nav_2_course"), -- ручка установки курса
		
		-- results
		vor_dme = globalPropertyf("tu154b2/custom/radio/vor_dme_2"), -- distance
		vor_bear = globalPropertyf("tu154b2/custom/radio/vor_bear_2"), -- bearing
		
		nav_cs = globalPropertyf("tu154b2/custom/radio/nav2_cs"),
		nav_gs = globalPropertyf("tu154b2/custom/radio/nav2_gs"),

		nav_cs_flag = globalPropertyi("tu154b2/custom/radio/nav2_cs_flag"),
		nav_gs_flag = globalPropertyi("tu154b2/custom/radio/nav2_gs_flag"),
		
		nav_course_1 = globalPropertyf("tu154b2/custom/rotary/console/nav_2_course_1"),
		nav_course_10 = globalPropertyf("tu154b2/custom/rotary/console/nav_2_course_10"),
		nav_course_100 = globalPropertyf("tu154b2/custom/rotary/console/nav_2_course_100"),
		
		nav_to_lit = globalPropertyf("tu154b2/custom/lights/small/nav_2_to"),
		nav_from_lit = globalPropertyf("tu154b2/custom/lights/small/nav_2_from"),
		sta_type = globalPropertyi("tu154b2/custom/radio/ils_right"),
		dir = globalPropertyi("sim/custom/b2/kurs_mp_2_dir"),
	},
	
	ark15 {},
	
	ark15 {
		-- source
		left_freq = globalPropertyf("sim/cockpit2/radios/actuators/adf2_left_frequency_hz"),  -- left frequency
		right_freq = globalPropertyf("sim/cockpit2/radios/actuators/adf2_right_frequency_hz"),  -- right frequency
		active = globalPropertyf("sim/cockpit2/radios/actuators/adf2_right_is_selected"),  -- selector of active disk. 0 - left, 1 - right 
		fail = globalPropertyf("sim/operation/failures/rel_adf2"),
		adf = globalPropertyf("sim/cockpit2/radios/indicators/adf2_relative_bearing_deg"),
		audio_selection = globalPropertyi("sim/cockpit2/radios/actuators/audio_selection_adf2"),

		-- controls
		ark_mode = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_mode"), -- режим АРК 1 0 - выкл, 1 - комп, 2 - ант, 3 - рам
		ark_channel = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_channel"), -- канал АРК 1
		ark_hundr_left = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_hundr_left"), -- сотни частоты 1 - 17
		ark_tens_left = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_tens_left"), -- десятки частоты 1 - 10 (0)
		ark_ones_left = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_ones_left"), -- единицы частоты 0 - 9
		ark_hundr_right = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_hundr_right"), -- сотни частоты 1 - 17
		ark_tens_right = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_tens_right"), -- десятки частоты 1 - 10 (0)
		ark_ones_right = globalPropertyi("tu154b2/custom/switchers/ovhd/ark_2_ones_right"), -- единицы частоты 0 - 9

		ark_ramka = globalPropertyi("tu154b2/custom/buttons/ovhd/ark_2_ramka"), -- кнопка рамки

		-- light
		ark_left_lit = globalPropertyf("tu154b2/custom/lights/ark2_left_lit"), -- подсветка левой части АРК 1
		ark_right_lit = globalPropertyf("tu154b2/custom/lights/ark2_right_lit"), -- подсветка правой части АРК 1
		ark_all_lit = globalPropertyf("tu154b2/custom/lights/ark2_all_lit"), -- подсветка АРК 1
		
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"),
		bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_left"),

		ark15_cc = globalPropertyf("tu154b2/custom/radio/ark15_R_cc"), -- потребление тока АРК
		adf_pow = globalPropertyi("sim/cockpit2/radios/actuators/adf2_power"),
		ark_signal = globalPropertyf("tu154b2/custom/radio/ark15_R_signal"),
		-- results
		adf_bear = globalPropertyf("tu154b2/custom/radio/adf_bear_2"),
		side=2
	
	},
	
	dme {
		position = {1616, 1176, 215, 70},
	
	},

	dme {
		position = {1616, 1102, 215, 70},
		vor_dme = globalPropertyf("tu154b2/custom/radio/vor_dme_2"), -- distance

		sd75_on = globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_2_on"), -- switch on
		nav_mile_km = globalPropertyi("tu154b2/custom/switchers/nav_2_mile_km"), -- режим мили - км
		
		-- lamps
		dme_mile_lit = globalPropertyf("tu154b2/custom/lights/small/dme_mile_right"), -- mile lamp
		dme_km_lit = globalPropertyf("tu154b2/custom/lights/small/dme_km_right"), -- km lamp
		-- power
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"),
		bus115_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt"),
	},
	
	spu {},
	mrp {}, -- marker receiver
	radio_fails {},
	
}


