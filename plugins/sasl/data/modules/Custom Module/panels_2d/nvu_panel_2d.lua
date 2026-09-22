-- this is NVU panel
size = {636, 786}

hide_eng_objects = globalPropertyi("tu154b2/custom/lang/hide_eng_objects") -- спрятать английские объекты кабины. 1 = RUS
show_nvu_panel = globalPropertyi("tu154b2/custom/panels/show_nvu_panel") -- показать панель НВУ


-- controls
nvu_param_sel = globalPropertyi("tu154b2/custom/switchers/console/nvu_param_sel") -- ручка выбора вводимого параметра НВУ. -4 - Z, -3 - S, -2 - Zm, -1 - Sm, 0 - off, 1 - Sn, 2 - Zn, 3 - S, 4 - Z
nvu_turn_sel = globalPropertyi("tu154b2/custom/switchers/console/nvu_turn_sel") -- ручка выбора радиуса разворота, -1 - принуд, 0 - выкл, 1 - 5, 2 - 10, 3 - 15, 4 - 20, 5 - 25
nvu_power_on = globalPropertyi("tu154b2/custom/switchers/console/nvu_power_on") -- питание НВУ
nvu_calc_on = globalPropertyi("tu154b2/custom/switchers/console/nvu_calc_on") -- счисление НВУ
nvu_corr_on = globalPropertyi("tu154b2/custom/switchers/console/nvu_corr_on") -- коррекция НВУ

nvu_left_btn = globalPropertyi("tu154b2/custom/buttons/nvu/nvu_left_btn") -- левая кнопка НВУ
nvu_ctr_btn = globalPropertyi("tu154b2/custom/buttons/nvu/nvu_ctr_btn") -- центр кнопка НВУ
nvu_right_btn = globalPropertyi("tu154b2/custom/buttons/nvu/nvu_right_btn") -- правая кнопка НВУ

zpu_1_left_btn = globalPropertyi("tu154b2/custom/buttons/nvu/zpu_1_left_btn") -- левая кнопка ЗПУ
zpu_1_ctr_btn = globalPropertyi("tu154b2/custom/buttons/nvu/zpu_1_ctr_btn") -- центр кнопка ЗПУ
zpu_1_right_btn = globalPropertyi("tu154b2/custom/buttons/nvu/zpu_1_right_btn") -- правая кнопка ЗПУ

zpu_2_left_btn = globalPropertyi("tu154b2/custom/buttons/nvu/zpu_2_left_btn") -- левая кнопка ЗПУ
zpu_2_ctr_btn = globalPropertyi("tu154b2/custom/buttons/nvu/zpu_2_ctr_btn") -- центр кнопка ЗПУ
zpu_2_right_btn = globalPropertyi("tu154b2/custom/buttons/nvu/zpu_2_right_btn") -- правая кнопка ЗПУ

-- internal datarefs
current_Z1 = globalPropertyf("tu154b2/custom/nvu/current_Z1") -- Z1
current_S1 = globalPropertyf("tu154b2/custom/nvu/current_S1") -- S1
next_Z1 = globalPropertyf("tu154b2/custom/nvu/next_Z1") -- Z1
next_S1 = globalPropertyf("tu154b2/custom/nvu/next_S1") -- S1

current_Z2 = globalPropertyf("tu154b2/custom/nvu/current_Z2") -- Z2
current_S2 = globalPropertyf("tu154b2/custom/nvu/current_S2") -- S2
next_Z2 = globalPropertyf("tu154b2/custom/nvu/next_Z2") -- Z2
next_S2 = globalPropertyf("tu154b2/custom/nvu/next_S2") -- S2

zpu1 = globalPropertyf("tu154b2/custom/nvu/zpu1") -- ZPU1
zpu2 = globalPropertyf("tu154b2/custom/nvu/zpu2") -- ZPU2

-- gauges
map_angle = globalPropertyf("tu154b2/custom/gauges/console/map_angle") -- угол карты

obs_1 = globalPropertyf("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot") -- OBS course
obs_2 = globalPropertyf("sim/cockpit2/radios/actuators/nav2_obs_deg_mag_pilot") -- OBS course
nav_course_1 = globalPropertyf("tu154b2/custom/rotary/console/nav_1_course") -- ручка установки курса
nav_course_2 = globalPropertyf("tu154b2/custom/rotary/console/nav_2_course") -- ручка установки курса

-- lamps
nvu_on_lit = globalPropertyf("tu154b2/custom/lights/small/nvu_on") -- НВУ испр
nvu_corr_lit = globalPropertyf("tu154b2/custom/lights/small/nvu_corr") -- НВУ КОРР

nvu_1_active = globalPropertyf("tu154b2/custom/lights/nvu_1_active") -- светимость активной панели НВУ
nvu_2_active = globalPropertyf("tu154b2/custom/lights/nvu_2_active") -- светимость активной панели НВУ

nav_1_to_lit = globalPropertyf("tu154b2/custom/lights/small/nav_1_to")
nav_1_from_lit = globalPropertyf("tu154b2/custom/lights/small/nav_1_from")

nav_2_to_lit = globalPropertyf("tu154b2/custom/lights/small/nav_2_to")
nav_2_from_lit = globalPropertyf("tu154b2/custom/lights/small/nav_2_from")


-- DISS
wind_set = globalPropertyf("tu154b2/custom/rotary/console/wind_set") -- установка ветра

wind_course_left = globalPropertyi("tu154b2/custom/button/console/wind_course_left") -- кнопка установки курса ветра 
wind_course_ctr = globalPropertyi("tu154b2/custom/button/console/wind_course_ctr") -- кнопка установки курса ветра 
wind_course_right = globalPropertyi("tu154b2/custom/button/console/wind_course_right") -- кнопка установки курса ветра 

wind_spd_left = globalPropertyi("tu154b2/custom/button/console/wind_spd_left") -- кнопка установки скорости ветра 
wind_spd_ctr = globalPropertyi("tu154b2/custom/button/console/wind_spd_ctr") -- кнопка установки скорости ветра 
wind_spd_right = globalPropertyi("tu154b2/custom/button/console/wind_spd_right") -- кнопка установки скорости ветра 

diss_wind_course = globalPropertyf("tu154b2/custom/nvu/diss_wind_course") -- курс ветра по ДИСС
diss_wind_spd = globalPropertyf("tu154b2/custom/nvu/diss_wind_spd") -- скорость ветра по ДИСС

diss_abs_angle_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_abs_angle_1") -- барабанчик единиц угла
diss_abs_angle_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_abs_angle_10") -- барабанчик единиц угла
diss_abs_angle_100 = globalPropertyf("tu154b2/custom/gauges/misc/diss_abs_angle_100") -- барабанчик единиц угла
diss_plus_angle_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_plus_angle_1") -- барабанчик единиц угла
diss_plus_angle_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_plus_angle_10") -- барабанчик единиц угла
diss_minus_angle_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_minus_angle_1") -- барабанчик единиц угла
diss_minus_angle_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_minus_angle_10") -- барабанчик единиц угла
diss_wind_spd_1 = globalPropertyf("tu154b2/custom/gauges/misc/diss_wind_spd_1") -- барабанчик единиц угла
diss_wind_spd_10 = globalPropertyf("tu154b2/custom/gauges/misc/diss_wind_spd_10") -- барабанчик единиц угла
diss_wind_spd_100 = globalPropertyf("tu154b2/custom/gauges/misc/diss_wind_spd_100") -- барабанчик единиц угла





-- images
bg_img = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 0, 1024-786, 636, 786)
bg_img_RUS = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex_RUS.png", 0, 1024-786, 636, 786)

small_lamp = loadImage(moduleDirectory .."/Custom Module/panels_2d/overhead_tex.png", 1825, 1024-299-19, 19, 19)
sw_dn_img = loadImage(moduleDirectory .."/Custom Module/panels_2d/overhead_tex.png", 1831, 1024-15-100, 39, 100)
sw_up_img = loadImage(moduleDirectory .."/Custom Module/panels_2d/overhead_tex.png", 1871, 1024-12-100, 39, 100)
sw_ctr_img = loadImage(moduleDirectory .."/Custom Module/panels_2d/overhead_tex.png", 1916, 1024-42-36, 36, 36)

big_scale = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 644, -5+1024-176, 176, 176)
small_scale = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 836, -42+1024-102, 102, 102)
handle_img = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 955, -68+1024-45, 45, 45)
switch_img = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 648, -209+1024-70, 42, 70)

white_digits = loadImage(moduleDirectory .."/Custom Module/panels_2d/white_digits.png", 12, 1024-784, 40, 784)
white_digits_scale = loadImage(moduleDirectory .."/Custom Module/panels_2d/white_digits_scale.png", 12, 1024-784, 40, 784)
yellow_digits = loadImage(moduleDirectory .."/Custom Module/panels_2d/yellow_digits.png", 12, 1024-784, 40, 784)


sign_plane = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 741, -216+1024-18, 88, 18)
sign_point = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 741, -243+1024-18, 88, 18)
sign_beacon = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 741, -271+1024-18, 88, 18)

sign_plane_RUS = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex_RUS.png", 741, -216+1024-18, 88, 18)
sign_point_RUS = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex_RUS.png", 741, -243+1024-18, 88, 18)
sign_beacon_RUS = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex_RUS.png", 741, -271+1024-18, 88, 18)

sign_I = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 741, -297+1024-31, 26, 31)
sign_II = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 777, -297+1024-31, 26, 31)

black_plank = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_tex.png", 850, -216+1024-30, 60, 30)
but_press = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_but.png", 0, 0, 32, 18)
but_press2 = loadImage(moduleDirectory .."/Custom Module/panels_2d/nvu_but2.png", 0, 0, 29, 16)


local RUS = true


function update()
	RUS = get(hide_eng_objects) == 1
end



components = {
	rectangle {
		position = {0, 0, size[1], size[2]},
		color = {0,0,0,1},
	},
	
	-- map angle big
	needleLit {
		position = {456, 606, 176, 176},
		image = get(big_scale),
		angle = function()
			return -get(map_angle)
		end,
	},	
	
	-- map angle small
	needleLit {
		position = {493, 643, 102, 102},
		image = get(small_scale),
		angle = function()
			return -get(map_angle) * 36
		end,
	},	
	

	---------------------------------------
	-- DISS --
	--------------------------------------
	-- wind angle
	digitstapeLit {
        position = { 60, 694, 20, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_abs_angle_100)
        end,
    };		
	digitstapeLit {
        position = { 80, 694, 20, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_abs_angle_10)
        end,
    };		
	digitstapeLit {
        position = { 100, 694, 20, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_abs_angle_1)
        end,
    };	
	
	-- angle correction
	digitstapeLit {
        position = { 212, 694, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_plus_angle_10)
        end,
    };	
	digitstapeLit {
        position = { 212+15, 694, 15, 20},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_plus_angle_1)
        end,
    };	
	
	digitstapeLit {
        position = { 212+32, 694, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_minus_angle_10)
        end,
    };	
	digitstapeLit {
        position = { 212+32+15, 694, 15, 20},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_minus_angle_1)
        end,
    };	
	
	-- speed
	digitstapeLit {
        position = { 363, 694, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_wind_spd_100)
        end,
    };	
	digitstapeLit {
        position = { 363+17, 694, 15, 20},
        image = white_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_wind_spd_10)
        end,
    };
	digitstapeLit {
        position = { 363+34, 694, 15, 20},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return get(diss_wind_spd_1)
        end,
    };

	---------------------------
	-- ZPU --
	---------------------------
	
	digitstapeLit {
        position = { 470, 493, 50, 30},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(get(zpu1) + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 523, 493, 18, 30},
        image = yellow_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return (get(zpu1) * 10 % 10)
        end,
    };	
	
	
	digitstapeLit {
        position = { 470, 405, 50, 30},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(get(zpu2) + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 523, 405, 18, 30},
        image = yellow_digits,
        digits = 1,
        showLeadingZeros = true,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return (get(zpu2) * 10 % 10)
        end,
    };		
	
	
	-------------------------------
	-- NVU 1 --------
	-------------------------------
	
	digitstapeLit {
        position = { 105, 531, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 125, 531, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_Z1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 160, 531, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position =  { 180, 531, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_Z1)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 215, 531, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 235, 531, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_S1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 270, 531, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 290, 531, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_S1)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	digitstapeLit {
        position = { 105, 449, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 125, 449, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_Z1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 160, 449, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_Z1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position =  { 180, 449, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_Z1)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 215, 449, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 235, 449, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_S1)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 270, 449, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_S1)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 290, 449, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_S1)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	
	
	-------------------------------
	-- NVU 2 --------
	-------------------------------
	
		digitstapeLit {
        position = { 105, 300, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 125, 300, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_Z2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 160, 300, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position =  { 180, 300, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_Z2)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 215, 300, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(current_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 235, 300, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(current_S2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 270, 300, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(current_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 290, 300, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(current_S2)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
			digitstapeLit {
        position = { 105, 218, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 125, 218, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_Z2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 160, 218, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_Z2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position =  { 180, 218, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_Z2)) % 10
        end,
    };		
	
----------------------------
	digitstapeLit {
        position = { 215, 218, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, -get(next_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 235, 218, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, -get(next_S2)) % 10
        end,
    };	
	
	digitstapeLit {
        position = { 270, 218, 20, 10},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return math.floor(math.max(0, get(next_S2)) / 10 + 0.05)
        end,
    };	
	
	digitstapeLit {
        position = { 290, 218, 13, 10},
        image = white_digits_scale,
        digits = 1,
        showLeadingZeros = false,
		allowNonRound = false,
		fractional = 0,
		showSign = false,
        value = function()
           return math.max(0, get(next_S2)) % 10
        end,
    };	
	
--------------------------------------------------
--------------------------------------------------	
	
	-- planks
		

	textureLit {
		position = {74, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z1) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z1) < -0.2
		end,
	},	
	
	textureLit {
		position = {180, 533, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S1) > 0.2
		end,
	},
	textureLit {
		position = {235, 533, 50, 35},
		image = get(black_plank),
		visible = function()
			return get(current_S1) < -0.2
		end,
	},		
	
---------------------------------------------

	textureLit {
		position = {74, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z1) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z1) < -0.2
		end,
	},	
	
	textureLit {
		position = {180, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S1) > 0.2
		end,
	},
	textureLit {
		position = {235, 454, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S1) < -0.2
		end,
	},	
	
-------------------------------------------
-------------------------------------------

	textureLit {
		position = {74, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z2) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_Z2) < -0.2
		end,
	},	
	
	textureLit {
		position = {180, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S2) > 0.2
		end,
	},
	textureLit {
		position = {235, 303, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(current_S2) < -0.2
		end,
	},		
	
---------------------------------------------

	textureLit {
		position = {74, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z2) > 0.2
		end,
	},
	textureLit {
		position = {74+53, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_Z2) < -0.2
		end,
	},	
	
	textureLit {
		position = {180, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S2) > 0.2
		end,
	},
	textureLit {
		position = {235, 221, 50, 30},
		image = get(black_plank),
		visible = function()
			return get(next_S2) < -0.2
		end,
	},	
	
	
	
	

	---------------------------
	-- background
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img),
		visible = function()
			return not RUS
		end,
	},
	textureLit {
		position = {0, 0, size[1], size[2]},
		image = get(bg_img_RUS),
		visible = function()
			return RUS
		end,
	},
	-----------------------------------
	
	textureLit {
		position = {478, 470, 32, 18},
		image = get(but_press),
		visible = function()
			return get(zpu_1_ctr_btn) > 0
		end,
	},
	
	textureLit {
		position = {478, 377, 32, 18},
		image = get(but_press),
		visible = function()
			return get(zpu_2_ctr_btn) > 0
		end,
	},
	textureLit {
		position = {479, 168, 32, 18},
		image = get(but_press),
		visible = function()
			return get(nvu_ctr_btn) > 0
		end,
	},
	
	textureLit {
		position = {53, 660, 29, 16},
		image = get(but_press2),
		visible = function()
			return get(wind_course_ctr) > 0
		end,
	},
	
	textureLit {
		position = {370, 660, 29, 16},
		image = get(but_press2),
		visible = function()
			return get(wind_spd_ctr) > 0
		end,
	},
	-------------------------
	-- map angle --
	------------------------
	
	-- map angle handle
	needleLit {
		position = {527, 607, 33, 33},
		image = get(handle_img),
		angle = function()
			return get(map_angle) * 20
		end,
	},	
	
	
	clickable {
		position = {512, 598+80, 30, 50},
		cursor = {
            x = 2,
            y = 2,
            width = 16,
            height = 16,
            shape = loadImage("clickable.png"),
        },
		onMouseDown = function()
			local a = math.floor(get(map_angle) * 10) / 10 - 0.1
			if a < 0 then a = a + 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	clickable {
		position = {512+30, 598+80, 30, 50},
		cursor = {
            x = 2,
            y = 2,
            width = 16,
            height = 16,
            shape = loadImage("clickable.png"),
        },		
		onMouseDown = function()
			local a = math.ceil(get(map_angle) * 10) / 10 + 0.1
			if a > 360 then a = a - 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	
	clickable {
		position = {512, 750, 30, 50},
		cursor = {
            x = 2,
            y = 2,
            width = 16,
            height = 16,
            shape = loadImage("clickable.png"),
        },
		onMouseDown = function()
			local a = math.ceil(get(map_angle)) - 1
			if a < 0 then a = a + 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	clickable {
		position = {512+30, 750, 30, 50},
		cursor = {
            x = 2,
            y = 2,
            width = 16,
            height = 16,
            shape = loadImage("clickable.png"),
        },
		onMouseDown = function()
			local a = math.floor(get(map_angle)) + 1
			if a > 360 then a = a - 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	
	
	clickable {
		position = {512, 598, 30, 50},
		cursor = {
            x = 2,
            y = 2,
            width = 16,
            height = 16,
            shape = loadImage("clickable.png"),
        },
		onMouseDown = function()
			local a = math.ceil(get(map_angle)) - 5
			if a < 0 then a = a + 360 end
			set(map_angle, a)
			return true
		end,
	},	
	
	clickable {
		position = {512+30, 598, 30, 50},
		cursor = {
            x = 2,
            y = 2,
            width = 16,
            height = 16,
            shape = loadImage("clickable.png"),
        },
		onMouseDown = function()
			local a = math.floor(get(map_angle)) + 5
			if a > 360 then a = a - 360 end
			set(map_angle, a)
			return true
		end,
	},		
	
	------------------------------------
	-- OBS --
	------------------------------------
	--------------
	-- left
	-------------- 
	digitstapeLit {
        position = { 140, 63, 64, 30},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return get(obs_1)
        end,
		
    };
	-- handle
	needleLit {
		position = {237, 34, 40, 40},
		image = get(handle_img),
		angle = function()
			return get(obs_1) * 10
		end,
	},	
	
	clickable {
		position = {228, 24, 30, 50},
		onMouseDown = function()
			local a = get(obs_1) - 1
			if a < 1 then a = a + 360 end
			set(obs_1, a)
			return true
		end,
	},
	
	clickable {
		position = {228+30, 24, 30, 50},
		onMouseDown = function()
			local a = get(obs_1) + 1
			if a > 360 then a = a - 360 end
			set(obs_1, a)
			return true
		end,
	},	
	
	-- lamps
	textureLit {
		position = {7, 100, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_1_from_lit) == 1
		end,
	},

	textureLit {
		position = {7, 48, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_1_to_lit) == 1
		end,
	},
	
	-----------------
	-- right
	-------------------
	digitstapeLit {
        position = { 426, 63, 64, 30},
        image = white_digits,
        digits = 3,
        showLeadingZeros = true,
		allowNonRound = true,
		fractional = 0,
		showSign = false,
        value = function()
           return get(obs_2)
        end,
		
    };	
	
	-- handle
	needleLit {
		position = {237+286, 34, 40, 40},
		image = get(handle_img),
		angle = function()
			return get(obs_2) * 10
		end,
	},	
	
	clickable {
		position = {228+286, 24, 30, 50},
		onMouseDown = function()
			local a = get(obs_2) - 1
			if a < 1 then a = a + 360 end
			set(obs_2, a)
			return true
		end,
	},
	
	clickable {
		position = {228+30+286, 24, 30, 50},
		onMouseDown = function()
			local a = get(obs_2) + 1
			if a > 360 then a = a - 360 end
			set(obs_2, a)
			return true
		end,
	},	
	
	
	-- lamps
	textureLit {
		position = {611, 100, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_2_from_lit) == 1
		end,
	},

	textureLit {
		position = {611, 48, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nav_2_to_lit) == 1
		end,
	},	
	

	----------------------------
	-- DISS --
	----------------------------
	
	-- handle
	needleLit {
		position = {145, 657, 40, 40},
		image = get(handle_img),
		angle = function()
			return get(wind_set) * 10
		end,
	},	
	
	clickable {
		position = {135, 650, 30, 50},
		onMouseDown = function()
			local a = get(wind_set) - 0.5
			if a < -99 then a = -99 end
			set(wind_set, a)
			return true
		end,
	},	
	clickable {
		position = {135+30, 650, 30, 50},
		onMouseDown = function()
			local a = get(wind_set) + 0.5
			if a > 99 then a = 99 end
			set(wind_set, a)
			return true
		end,
	},	
	
	-- buttons
	clickable {
		position = {7, 657, 38, 24},
		onMouseDown = function()
			set(wind_course_left, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_course_left, 0)
			return true
		end,
	},	
	clickable {
		position = {7+43, 657, 38, 24},
		onMouseDown = function()
			set(wind_course_ctr, 1 - get(wind_course_ctr))
			return true
		end,
	},	
	clickable {
		position = {7+86, 657, 38, 24},
		onMouseDown = function()
			set(wind_course_right, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_course_right, 0)
			return true
		end,
	},	
	
	clickable {
		position = {323, 657, 38, 24},
		onMouseDown = function()
			set(wind_spd_left, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_spd_left, 0)
			return true
		end,
	},	
	clickable {
		position = {323+43, 657, 38, 24},
		onMouseDown = function()
			set(wind_spd_ctr, 1 - get(wind_spd_ctr))
			return true
		end,
	},	
	clickable {
		position = {323+86, 657, 38, 24},
		onMouseDown = function()
			set(wind_spd_right, 1)
			return true
		end,
		onMouseUp = function()
			set(wind_spd_right, 0)
			return true
		end,
	},		
	
	
	-------------------
	-- switches --
	-------------------
	
	-- nvu_power_on
	switch_lit {
		position = {486, 193, 16, 52},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(nvu_power_on) == 1
		end,
		onMouseDown = function()
			set(nvu_power_on, 1 - get(nvu_power_on))
			return true
		end,
	},
	
	-- nvu_calc_on
	switch_lit {
		position = {531, 193, 16, 52},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(nvu_calc_on) == 1
		end,
		onMouseDown = function()
			set(nvu_calc_on, 1 - get(nvu_calc_on))
			return true
		end,
	},	
	
	-- nvu_corr_on
	switch_lit {
		position = {578, 193, 16, 52},
		btnOn = get(sw_up_img),
		btnOff = get(sw_dn_img),
		state = function()
			return get(nvu_corr_on) == 1
		end,
		onMouseDown = function()
			set(nvu_corr_on, 1 - get(nvu_corr_on))
			return true
		end,
	},	
	
	--------------------
	-- buttons --
	--------------------
	
	-- ZPU 1
	clickable {
		position = {427, 467, 38, 24},
		onMouseDown = function()
			set(zpu_1_left_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_1_left_btn, 0)
			return true
		end,
	},	
	clickable {
		position = {427+49, 467, 38, 24},
		onMouseDown = function()
			set(zpu_1_ctr_btn, 1 - get(zpu_1_ctr_btn))
			return true
		end,
	},	
	clickable {
		position = {427+97, 467, 38, 24},
		onMouseDown = function()
			set(zpu_1_right_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_1_right_btn, 0)
			return true
		end,
	},
	-- ZPU 2
	clickable {
		position = {427, 373, 38, 24},
		onMouseDown = function()
			set(zpu_2_left_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_2_left_btn, 0)
			return true
		end,
	},	
	clickable {
		position = {427+49, 373, 38, 24},
		onMouseDown = function()
			set(zpu_2_ctr_btn, 1 - get(zpu_2_ctr_btn))
			return true
		end,
	},	
	clickable {
		position = {427+97, 373, 38, 24},
		onMouseDown = function()
			set(zpu_2_right_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(zpu_2_right_btn, 0)
			return true
		end,
	},	
	
	-- NVU
	clickable {
		position = {428, 165, 38, 24},
		onMouseDown = function()
			set(nvu_left_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(nvu_left_btn, 0)
			return true
		end,
	},	
	clickable {
		position = {428+49, 165, 38, 24},
		onMouseDown = function()
			set(nvu_ctr_btn, 1 - get(nvu_ctr_btn))
			return true
		end,
	},	
	clickable {
		position = {428+97, 165, 38, 24},
		onMouseDown = function()
			set(nvu_right_btn, 1)
			return true
		end,
		onMouseUp = function()
			set(nvu_right_btn, 0)
			return true
		end,
	},		
	
	-- mode select
	needleLit {
		position = {391, 240, 72, 72},
		image = get(switch_img),
		angle = function()
			return get(nvu_param_sel) * 30
		
		end,
	},
	
	-- turn select
	needleLit {
		position = {528, 253, 72, 72},
		image = get(switch_img),
		angle = function()
			return get(nvu_turn_sel) * 30 - 60
		
		end,
	},	
	
	-- nvu_param_sel
	clickable {
		position = {386, 248, 40, 75},
		onMouseDown = function()
			local a = get(nvu_param_sel) - 1
			if a < -4 then a = -4 end
			set(nvu_param_sel, a)
			return true
		end,
	},	
	clickable {
		position = {386+40, 248, 40, 75},
		onMouseDown = function()
			local a = get(nvu_param_sel) + 1
			if a > 4 then a = 4 end
			set(nvu_param_sel, a)
			return true
		end,
	},	
	
	-- nvu_turn_sel
	clickable {
		position = {525, 250, 40, 75},
		onMouseDown = function()
			local a = get(nvu_turn_sel) - 1
			if a < -1 then a = -1 end
			set(nvu_turn_sel, a)
			return true
		end,
	},	
	clickable {
		position = {525+40, 250, 40, 75},
		onMouseDown = function()
			local a = get(nvu_turn_sel) + 1
			if a > 5 then a = 5 end
			set(nvu_turn_sel, a)
			return true
		end,
	},		
	
	---------------------------------
	-- lamps --
	------------------------------
	
	textureLit {
		position = {401, 207, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nvu_on_lit) == 1
		end,
	},	
	
	textureLit {
		position = {439, 207, 16, 16},
		image = get(small_lamp),
		visible = function()
			return get(nvu_corr_lit) == 1
		end,
	},	
	
	
	textureLit {
		position = {137, 512, 88, 18},
		image = get(sign_plane),
		visible = function()
			return get(nvu_1_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 512, 88, 18},
		image = get(sign_plane_RUS),
		visible = function()
			return get(nvu_1_active) == 1 and RUS
		end,
	},	
	
	textureLit {
		position = {137, 282, 88, 18},
		image = get(sign_plane),
		visible = function()
			return get(nvu_2_active) == 1 and not RUS
		end,
	},		
	textureLit {
		position = {137, 282, 88, 18},
		image = get(sign_plane_RUS),
		visible = function()
			return get(nvu_2_active) == 1 and RUS
		end,
	},	
	
	textureLit {
		position = {137, 431, 88, 18},
		image = get(sign_point),
		visible = function()
			return get(nvu_2_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 431, 88, 18},
		image = get(sign_point_RUS),
		visible = function()
			return get(nvu_2_active) == 1 and RUS
		end,
	},	
	
	textureLit {
		position = {137, 200, 88, 18},
		image = get(sign_point),
		visible = function()
			return get(nvu_1_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 200, 88, 18},
		image = get(sign_point_RUS),
		visible = function()
			return get(nvu_1_active) == 1 and RUS
		end,
	},

	
	textureLit {
		position = {137, 408, 88, 18},
		image = get(sign_beacon),
		visible = function()
			return get(nvu_1_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 408, 88, 18},
		image = get(sign_beacon_RUS),
		visible = function()
			return get(nvu_1_active) == 1 and RUS
		end,
	},		
	
	textureLit {
		position = {137, 176, 88, 18},
		image = get(sign_beacon),
		visible = function()
			return get(nvu_2_active) == 1 and not RUS
		end,
	},	
	textureLit {
		position = {137, 176, 88, 18},
		image = get(sign_beacon_RUS),
		visible = function()
			return get(nvu_2_active) == 1 and RUS
		end,
	},	
	
	
	
	
	textureLit {
		position = {402, 496, 26, 31},
		image = get(sign_I),
		visible = function()
			return get(nvu_1_active) == 1
		end,
	},

	textureLit {
		position = {402, 406, 26, 31},
		image = get(sign_II),
		visible = function()
			return get(nvu_2_active) == 1
		end,
	},
	
	
	
	-- close panel
	clickable {
		position = {size[1]-20, size[2]-20, 20, 20},
		onMouseDown = function()
			set(show_nvu_panel, 0)
			return true
		end,
	},
	
}
