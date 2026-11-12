-- this is the MSRP panel

-- lights
msrp_mlp_main = globalPropertyf("tu154b2/custom/lights/small/msrp_mlp_main") -- МСРП. МЛП ОСН
msrp_mlp_aux = globalPropertyf("tu154b2/custom/lights/small/msrp_mlp_aux") -- МСРП. МЛП ДОП
msrp_up2 = globalPropertyf("tu154b2/custom/lights/small/msrp_up2") -- МСРП. УП2
msrp_mars = globalPropertyf("tu154b2/custom/lights/small/msrp_mars") -- МСРП. МАРС

-- buttons
lamp_test_msrp = globalPropertyf("tu154b2/custom/buttons/lamp_test_msrp") -- кнопка проверки ламп МСРП

-- controlls
msrp_date_ten = globalPropertyi("tu154b2/custom/switchers/eng/msrp_date_ten") -- МРСП дата число десятки
msrp_date_one = globalPropertyi("tu154b2/custom/switchers/eng/msrp_date_one") -- МРСП дата число единицы
msrp_month_ten = globalPropertyi("tu154b2/custom/switchers/eng/msrp_month_ten") -- МРСП дата месяц десятки
msrp_month_one = globalPropertyi("tu154b2/custom/switchers/eng/msrp_month_one") -- МРСП дата месяц единицы
msrp_year_ten = globalPropertyi("tu154b2/custom/switchers/eng/msrp_year_ten") -- кнопка проверки ламп МСРП
msrp_year_one = globalPropertyi("tu154b2/custom/switchers/eng/msrp_year_one") -- кнопка проверки ламп МСРП
msrp_route_hun = globalPropertyi("tu154b2/custom/switchers/eng/msrp_route_hun") -- кнопка проверки ламп МСРП
msrp_route_ten = globalPropertyi("tu154b2/custom/switchers/eng/msrp_route_ten") -- кнопка проверки ламп МСРП
msrp_route_one = globalPropertyi("tu154b2/custom/switchers/eng/msrp_route_one") -- кнопка проверки ламп МСРП
msrp_mlp_1 = globalPropertyi("tu154b2/custom/switchers/eng/msrp_mlp_1") -- кнопка проверки ламп МСРП
msrp_mlp_2 = globalPropertyi("tu154b2/custom/switchers/eng/msrp_mlp_2") -- кнопка проверки ламп МСРП
msrp_night_day = globalPropertyi("tu154b2/custom/switchers/eng/msrp_night_day") -- кнопка проверки ламп МСРП
msrp_main_switch = globalPropertyi("tu154b2/custom/switchers/eng/msrp_main_switch") -- кнопка проверки ламп МСРП

mars_on = globalPropertyi("tu154b2/custom/switchers/ovhd/mars_on") --  МАРС
nose_switch = globalProperty("sim/flightmodel2/gear/on_ground[1]")


-- other sources
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27

msrp_recording = globalPropertyi("tu154b2/custom/msrp/msrp_recording") -- МСРП в режиме записи
gen1 = globalPropertyf("tu154b2/custom/elec/gen1_work")
gen2 = globalPropertyf("tu154b2/custom/elec/gen2_work")
gen3 = globalPropertyf("tu154b2/custom/elec/gen3_work")


-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time
ias = globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")
-- engines
eng1_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[0]") -- engine 1 rpm
eng2_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[1]") -- engine 2 rpm
eng3_N1 = globalProperty("sim/flightmodel/engine/ENGN_N1_[2]") -- engine 3 rpm

sard_1 = globalProperty("sim/custom/switchers/sard/sard_pribor_cap1")
sard_2 = globalProperty("sim/custom/switchers/sard/sard_pribor_cap2")

pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ")
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")



local rotary_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/rot_click_L.wav')
local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')
local skrip_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/lustra_skrip_L.wav')

local rotary_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/rot_click_R.wav')
local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')
local skrip_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/lustra_skrip_R.wav')

local panel_x=0.56377757
local panel_z=-20.739283
local dist_gain=5


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
		set(msrp_mlp_1, 0)
		set(msrp_mlp_2, 0)
		set(msrp_main_switch, 0)
	end
	
	notLoaded = false

end


local passed = get(frame_time)

local function set_date()

	local system_date = os.date("*t") -- get system date as named table
	
	local date_ten = math.floor(system_date.day/10)
	local date_one = system_date.day - date_ten * 10
	
	local month_ten = math.floor(system_date.month/10)
	local month_one = system_date.month - month_ten * 10
	
	local year_thou = math.floor(system_date.year/1000)
	local year_hun = math.floor((system_date.year - year_thou*1000)/100)
	local year_ten = math.floor((system_date.year - year_thou*1000 - year_hun*100)/10)
	local year_one = system_date.year - year_thou*1000 - year_hun*100 - year_ten*10
	
	local route_hun = get(msrp_route_hun)
	local route_ten = get(msrp_route_ten)
	local route_one = get(msrp_route_one)
	
	local flightNum = route_hun*100 + route_ten*10 + route_one
	
	
	-- check file exist and create a new number, if so
	while true do
		
		route_hun = math.floor(flightNum/100)
		route_ten = math.floor((flightNum - route_hun)/10)
		route_one = flightNum - route_hun - route_ten
		
		local panel_numbers = date_ten .. date_one .."_".. month_ten .. month_one .."_".. year_ten .. year_one .."_".. route_hun .. route_ten .. route_one
		local filename = moduleDirectory .."/Custom Module/black_box/".. panel_numbers .. ".bbox"	
		
		local file = io.open(filename, "r")
		
		if file then 
			print("found Black Box file with same name - "..filename)
			print("changing route number")
			flightNum = flightNum + 1
			io.close(file)
		else 
			break 
		end
	
	end
	
	route_hun = math.floor(flightNum/100)
	route_ten = math.floor((flightNum - route_hun)/10)
	route_one = flightNum - route_hun - route_ten
	
	
	set(msrp_date_ten, date_ten)
	set(msrp_date_one, date_one)
	
	set(msrp_month_ten, month_ten)
	set(msrp_month_one, month_one)
	
	set(msrp_year_ten, year_ten)
	set(msrp_year_one, year_one)
	
	set(msrp_route_hun, route_hun)
	set(msrp_route_ten, route_ten)
	set(msrp_route_one, route_one)
	
	
	
	
	
end


set_date() -- set rotary digits once

local msrp_date_ten_last = get(msrp_date_ten)
local msrp_date_one_last = get(msrp_date_one)
local msrp_month_ten_last = get(msrp_month_ten)
local msrp_month_one_last = get(msrp_month_one)
local msrp_year_ten_last = get(msrp_year_ten)
local msrp_year_one_last = get(msrp_year_one)
local msrp_route_hun_last = get(msrp_route_hun)
local msrp_route_ten_last = get(msrp_route_ten)
local msrp_route_one_last = get(msrp_route_one)

local msrp_mlp_1_last = get(msrp_mlp_1)
local msrp_mlp_2_last = get(msrp_mlp_2)
local msrp_night_day_last = get(msrp_night_day)
local msrp_main_switch_last = get(msrp_main_switch)
local mars_on_last = get(mars_on)

local lamp_test_msrp_last = get(lamp_test_msrp)
local sard_last=0
local function check_controls()

	local lamp_test_msrp_sw = get(lamp_test_msrp)

	if lamp_test_msrp_sw ~= lamp_test_msrp_last then 
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
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	
	local msrp_date_ten_sw = get(msrp_date_ten)
	local msrp_date_one_sw = get(msrp_date_one)
	local msrp_month_ten_sw = get(msrp_month_ten)
	local msrp_month_one_sw = get(msrp_month_one)
	local msrp_year_ten_sw = get(msrp_year_ten)
	local msrp_year_one_sw = get(msrp_year_one)
	local msrp_route_hun_sw = get(msrp_route_hun)
	local msrp_route_ten_sw = get(msrp_route_ten)
	local msrp_route_one_sw = get(msrp_route_one)
	
	
	local changes = msrp_date_ten_sw + msrp_date_one_sw + msrp_month_ten_sw + msrp_month_one_sw + msrp_year_ten_sw + msrp_year_one_sw
	changes = changes + msrp_route_hun_sw + msrp_route_ten_sw + msrp_route_one_sw
	
	
	changes = changes - msrp_date_ten_last - msrp_date_one_last - msrp_month_ten_last - msrp_month_one_last - msrp_year_ten_last - msrp_year_one_last
	changes = changes - msrp_route_hun_last - msrp_route_ten_last - msrp_route_one_last
	
	if changes ~= 0 then 
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
		setSampleGain(rotary_sound_L,gain_L*dist)
		setSampleGain(rotary_sound_R,gain_R*dist)
		playSample(rotary_sound_L, false)
		playSample(rotary_sound_R, false)
	end
	
	
	local msrp_mlp_1_sw = get(msrp_mlp_1)
	local msrp_mlp_2_sw = get(msrp_mlp_2)
	local msrp_night_day_sw = get(msrp_night_day)
	local msrp_main_switch_sw = get(msrp_main_switch)	
	local mars_on_sw = get(mars_on)
	
	local swt = msrp_mlp_1_sw + msrp_mlp_2_sw + msrp_night_day_sw + msrp_main_switch_sw 
	swt = swt - msrp_mlp_1_last - msrp_mlp_2_last - msrp_night_day_last - msrp_main_switch_last
	
	if swt ~= 0 then  
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
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	
	end
	
	local sard_cap=get(sard_1)+get(sard_2)
	if sard_last~=sard_cap then  
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
		setSampleGain(skrip_sound_L,gain_L*dist)
		setSampleGain(skrip_sound_R,gain_R*dist)
		playSample(skrip_sound_L, false)
		playSample(skrip_sound_R, false)
	
	end
	msrp_date_ten_last = msrp_date_ten_sw
	msrp_date_one_last = msrp_date_one_sw
	msrp_month_ten_last = msrp_month_ten_sw
	msrp_month_one_last = msrp_month_one_sw
	msrp_year_ten_last = msrp_year_ten_sw
	msrp_year_one_last = msrp_year_one_sw
	msrp_route_hun_last = msrp_route_hun_sw
	msrp_route_ten_last = msrp_route_ten_sw
	msrp_route_one_last = msrp_route_one_sw
	
	msrp_mlp_1_last = msrp_mlp_1_sw
	msrp_mlp_2_last = msrp_mlp_2_sw
	msrp_night_day_last = msrp_night_day_sw
	msrp_main_switch_last = msrp_main_switch_sw
	mars_on_last = mars_on_sw
	
	
	lamp_test_msrp_last = lamp_test_msrp_sw
	sard_last=sard_cap
	
	--------------------
	-- limit controls --


	
	while msrp_date_ten_sw > 9 do
		msrp_date_ten_sw = msrp_date_ten_sw - 10
	end
	
	while msrp_date_ten_sw < 0 do
		msrp_date_ten_sw = msrp_date_ten_sw + 10
	end
	
	set(msrp_date_ten, msrp_date_ten_sw)
	
	--
	while msrp_date_one_sw > 9 do
		msrp_date_one_sw = msrp_date_one_sw - 10
	end
	
	while msrp_date_one_sw < 0 do
		msrp_date_one_sw = msrp_date_one_sw + 10
	end
	
	set(msrp_date_one, msrp_date_one_sw)	
	
	--
	while msrp_month_ten_sw > 9 do
		msrp_month_ten_sw = msrp_month_ten_sw - 10
	end
	
	while msrp_month_ten_sw < 0 do
		msrp_month_ten_sw = msrp_month_ten_sw + 10
	end
	
	set(msrp_month_ten, msrp_month_ten_sw)		
	
	--
	while msrp_month_one_sw > 9 do
		msrp_month_one_sw = msrp_month_one_sw - 10
	end
	
	while msrp_month_one_sw < 0 do
		msrp_month_one_sw = msrp_month_one_sw + 10
	end
	
	set(msrp_month_one, msrp_month_one_sw)		
	
	--
	while msrp_year_ten_sw > 9 do
		msrp_year_ten_sw = msrp_year_ten_sw - 10
	end
	
	while msrp_year_ten_sw < 0 do
		msrp_year_ten_sw = msrp_year_ten_sw + 10
	end
	
	set(msrp_year_ten, msrp_year_ten_sw)		
	
	--
	while msrp_year_one_sw > 9 do
		msrp_year_one_sw = msrp_year_one_sw - 10
	end
	
	while msrp_year_one_sw < 0 do
		msrp_year_one_sw = msrp_year_one_sw + 10
	end
	
	set(msrp_year_one, msrp_year_one_sw)	
	
	
	--
	while msrp_route_hun_sw > 9 do
		msrp_route_hun_sw = msrp_route_hun_sw - 10
	end
	
	while msrp_route_hun_sw < 0 do
		msrp_route_hun_sw = msrp_route_hun_sw + 10
	end
	
	set(msrp_route_hun, msrp_route_hun_sw)	
	
	--
	while msrp_route_ten_sw > 9 do
		msrp_route_ten_sw = msrp_route_ten_sw - 10
	end
	
	while msrp_route_ten_sw < 0 do
		msrp_route_ten_sw = msrp_route_ten_sw + 10
	end
	
	set(msrp_route_ten, msrp_route_ten_sw)		
	
	--
	while msrp_route_one_sw > 9 do
		msrp_route_one_sw = msrp_route_one_sw - 10
	end
	
	while msrp_route_one_sw < 0 do
		msrp_route_one_sw = msrp_route_one_sw + 10
	end
	
	set(msrp_route_one, msrp_route_one_sw)		
	
	
	
	

end


local mlp_lit_1 = false
local mlp_lit_2 = false
local mlp_1_timer = 0
local mlp_2_timer = 0


local function lamps()
	local airspeed = get(ias) * 1.852
	local nose_sw = 1-get(nose_switch)
	local main_sw = math.max(get(msrp_main_switch),get(gen1),get(gen2),get(gen3))
	local test_btn = get(lamp_test_msrp) * math.max((get(bus27_volt_right) - 10) / 18.5, 0) * main_sw
	local day_night = 0.1 + get(msrp_night_day) * 0.9
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night * main_sw
	
	local record = get(msrp_recording) == 1
	
	local mlp_1_brt = 0
	local mlp_2_brt = 0
	
	if main_sw == 1 then
		if get(msrp_mlp_1) == 1 or airspeed>80 then
			mlp_1_timer = mlp_1_timer + passed
			if mlp_1_timer > 7.1 then
				mlp_lit_1 = not mlp_lit_1
				mlp_1_timer = 0
			end
		else
			mlp_1_timer = 0
			mlp_lit_1 = false
			
		end
		
		mlp_1_brt = bool2int(mlp_lit_1)
		
		if get(msrp_mlp_2) == 1  then
			mlp_2_timer = mlp_2_timer + passed
			if mlp_2_timer > 6.9 then
				mlp_lit_2 = not mlp_lit_2
				mlp_2_timer = 0
			end
		else
			mlp_2_timer = 0
			mlp_lit_2 = false
			
		end
		
		mlp_2_brt = bool2int(mlp_lit_2)
		
	else
		mlp_1_brt = 0
		mlp_2_brt = 0	
		mlp_1_timer = 0
		mlp_2_timer = 0
	end	
	
	
	local msrp_mlp_main_brt = math.max(mlp_1_brt * lamps_brt, test_btn)
	set(msrp_mlp_main, msrp_mlp_main_brt)
	
	local msrp_mlp_aux_brt = math.max(mlp_2_brt * lamps_brt, test_btn) 
	set(msrp_mlp_aux, msrp_mlp_aux_brt)
	
	local msrp_up2_brt = math.max(lamps_brt, test_btn) 
	set(msrp_up2, msrp_up2_brt)
	
	local msrp_mars_brt = math.max(math.max(get(mars_on),nose_sw) * lamps_brt, test_btn)
	set(msrp_mars, msrp_mars_brt)
	
	
end


function update()
	passed = get(frame_time)

	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
	end
	
	check_controls()
	lamps()

end