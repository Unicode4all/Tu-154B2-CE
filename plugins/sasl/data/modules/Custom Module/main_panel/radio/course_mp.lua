-- this is CourseMP panels and logic

size = {420, 90}

-- sources
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("frequency", globalPropertyf("sim/cockpit2/radios/actuators/nav1_frequency_hz"))  -- set the frequency

defineProperty("v_plank", globalPropertyf("sim/cockpit2/radios/indicators/nav1_hdef_dots_pilot")) -- horizontal deflection on course
defineProperty("h_plank", globalPropertyf("sim/cockpit2/radios/indicators/nav1_vdef_dots_pilot")) -- vertical deflection on glideslope
defineProperty("cr_flag", globalPropertyf("sim/cockpit2/radios/indicators/nav1_flag_from_to_pilot")) -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.
defineProperty("gs_flag", globalPropertyf("sim/cockpit/radios/nav1_CDI"))  -- glideslope flag. 0 - flag is shown
defineProperty("nav_deg", globalPropertyf("sim/cockpit2/radios/indicators/nav1_relative_bearing_deg")) -- nav1 bearing
defineProperty("sim_fail", globalPropertyi("sim/operation/failures/rel_nav1")) -- fail

defineProperty("nav_fail", globalPropertyi("tu154b2/custom/failures/nav1_fail")) -- fail
defineProperty("dme_fail", globalPropertyi("tu154b2/custom/failures/dme1_fail")) -- fail

defineProperty("distance", globalPropertyf("sim/cockpit2/radios/indicators/nav1_dme_distance_nm"))  -- distance in NM

defineProperty("obs", globalPropertyi("sim/cockpit2/radios/actuators/nav1_obs_deg_mag_pilot")) -- OBS course


-- controls
defineProperty("sd75_on", globalPropertyi("tu154b2/custom/switchers/ovhd/sd75_1_on")) -- switch on
defineProperty("curs_np_on", globalPropertyi("tu154b2/custom/switchers/ovhd/curs_np_on_1")) -- switch on


defineProperty("nav_mode", globalPropertyi("tu154b2/custom/switchers/nav_1_mode")) -- режим НАВ1. Захват - VOR-DME
defineProperty("nav_man_auto", globalPropertyi("tu154b2/custom/switchers/nav_1_man_auto")) -- режим ручной - автомат
defineProperty("nav_mile_km", globalPropertyi("tu154b2/custom/switchers/nav_1_mile_km")) -- режим мили - км
defineProperty("nav_left", globalPropertyi("tu154b2/custom/rotary/ovhd/nav_1_left")) -- левая крутилка
defineProperty("nav_right", globalPropertyi("tu154b2/custom/rotary/ovhd/nav_1_right")) -- правая крутилка
defineProperty("nav_but_1", globalPropertyi("tu154b2/custom/buttons/ovhd/nav_1_but_1")) -- кнопка 1
defineProperty("nav_but_2", globalPropertyi("tu154b2/custom/buttons/ovhd/nav_1_but_2")) -- кнопка 2
defineProperty("nav_but_3", globalPropertyi("tu154b2/custom/buttons/ovhd/nav_1_but_3")) -- кнопка 3

defineProperty("nav_course", globalPropertyi("tu154b2/custom/rotary/console/nav_1_course")) -- ручка установки курса
--defineProperty("nav_course2", globalPropertyi("tu154b2/custom/rotary/console/nav_2_course")) -- ручка установки курса

defineProperty("test_lamps", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка проверки ламп 

-- other sources
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2"))
defineProperty("bus115_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))

defineProperty("nav_pow_cc", globalPropertyf("tu154b2/custom/radio/nav1_pow_cc")) -- потребление тока от КурсМП


-- results
defineProperty("vor_dme", globalPropertyf("tu154b2/custom/radio/vor_dme_1")) -- distance
defineProperty("vor_bear", globalPropertyf("tu154b2/custom/radio/vor_bear_1"))

defineProperty("nav_cs", globalPropertyf("tu154b2/custom/radio/nav1_cs"))
defineProperty("nav_gs", globalPropertyf("tu154b2/custom/radio/nav1_gs"))

defineProperty("nav_cs_flag", globalPropertyi("tu154b2/custom/radio/nav1_cs_flag"))
defineProperty("nav_gs_flag", globalPropertyi("tu154b2/custom/radio/nav1_gs_flag"))

defineProperty("nav_course_1", globalPropertyf("tu154b2/custom/rotary/console/nav_1_course_1"))
defineProperty("nav_course_10", globalPropertyf("tu154b2/custom/rotary/console/nav_1_course_10"))
defineProperty("nav_course_100", globalPropertyf("tu154b2/custom/rotary/console/nav_1_course_100"))


-- lamps
defineProperty("nav_to_lit", globalPropertyf("tu154b2/custom/lights/small/nav_1_to"))
defineProperty("nav_from_lit", globalPropertyf("tu154b2/custom/lights/small/nav_1_from"))

defineProperty("kursmp_pow", globalPropertyi("sim/cockpit2/radios/actuators/nav1_power"))
defineProperty("sta_type", globalPropertyi("tu154b2/custom/radio/ils_left"))
defineProperty("dir", globalPropertyi("sim/custom/b2/kurs_mp_1_dir"))


-- Smart Copilot
ismaster = globalPropertyi("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyi("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local rot_small_sound = loadSample(moduleDirectory .. '/Custom Sounds/cursmp.wav')
local button_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')
local rotary_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch.wav')
local switcher_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_switch.wav')


setSampleGain(rot_small_sound, 700)

-- returns true if current beacon is ILS
function isIls(freq)
    --local freq = get(frequency)
    if (10810 > freq) or (11195 < freq) then
        return false
    end
    local v, f = math.modf(freq / 100)
	v = math.floor(f * 10 + 0.001)
    return 1 == (v % 2)
end

local rot_summ_last = 0

local function rotary()
	local nav_left_sw = get(nav_left)
	local nav_right_sw = get(nav_right)
    local nav1_rot = get(nav_course)
    local nav2_rot = get(nav_course2)
	
	local summ = nav_left_sw + nav_right_sw + nav1_rot + nav2_rot
	
	--if summ ~= rot_summ_last then playSample(rot_small_sound, false) end

	rot_summ_last = summ


end

local but_summ_last = 0

local function buttons()
	local nav_but_1_sw = get(nav_but_1)
	local nav_but_2_sw = get(nav_but_2)
	local nav_but_3_sw = get(nav_but_3)
	
	local summ = nav_but_1_sw + nav_but_2_sw + nav_but_3_sw
	
	if summ ~= but_summ_last then playSample(button_sound, false) end
	
	but_summ_last = summ
	
end

local sw_summ_last = 0

local function switchers()
	local nav_mode_sw = get(nav_mode)
	local nav_man_auto_sw = get(nav_man_auto)
	local nav_mile_km_sw = get(nav_mile_km)
	
	local summ = nav_mode_sw + nav_man_auto_sw + nav_mile_km_sw
	
	if summ ~= sw_summ_last then playSample(switcher_sound, false) end
	
	sw_summ_last = summ


end


local function lamps(flag,freq)
	local sp_freq=bool2int(isIls(freq))
	--local test_btn = get(test_lamps) * math.max(get(bus27_volt_right) - 10 / 18.5, 0)
	--local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)

	local nav_to_lit_brt = bool2int(flag == 1) * lamps_brt*(1-sp_freq)
	set(nav_to_lit, nav_to_lit_brt)
	
	local nav_from_lit_brt = bool2int(flag == 2) * lamps_brt*(1-sp_freq)
	set(nav_from_lit, nav_from_lit_brt)
	set(sta_type,sp_freq)
end

local text_font = loadBitmapFont(moduleDirectory .. '/Custom Module/digital7_it.fnt')

-- variables for separate manipulations

local freq_100 = 0  -- digits before period
local freq_10 = 0  -- digits after period

local freq_10_show = 0

local freq_show = ""

local power = false

local knob_last_L = get(nav_left)
local knob_last_R = get(nav_right)

local dist_now = 0
local dist_show = 0

local bearing = math.random(-180, 180)
local dir_ran = 1

local course = 0 --get(v_plank)
local glidesl = 0 --get(h_plank)

local obs_actual = 0
local obs_knob_last = 0
local obs_now = get(obs)
local dir_last = 0
local obs_last = get(obs)


function update()
	
	set(sim_fail, 0)
	
	-- rotary()
	-- buttons()
	-- switchers()
	
	local MASTER = get(ismaster) ~= 1	
	
	local passed = get(frame_time)
	
	local FAIL = get(nav_fail) == 1
	
	local freq = get(frequency)
	power = get(curs_np_on) == 1 and get(bus36_volt) > 30 and get(bus115_volt) > 100 
	
	set(nav_pow_cc, bool2int(power))
	set(kursmp_pow, bool2int(power))
	-- calculate separate digits
	freq_100 = math.floor(freq / 100)  -- cut off last two digits
	freq_10 = freq - freq_100 * 100  -- cut off first digits 
   
	---local freq_last = freq_10 - math.floor(freq_10 / 10) * 10 

	freq_10_show = freq_10 * 10-- + freq_last
	if freq_10_show == 0 then freq_10_show = "000"
	elseif freq_10_show < 100 then freq_10_show = "0"..freq_10_show end

	freq_show = freq_100.."."..freq_10_show
	
	
	-- knobs cycle
	local left_knob = get(nav_left)
	local right_knob = get(nav_right)
	
	while left_knob > 26 do
		left_knob = left_knob - 36
	end
	
	while left_knob < -10 do
		left_knob = left_knob + 36
	end
	
	while right_knob > 26 do
		right_knob = right_knob - 36
	end
	
	while right_knob < -10 do
		right_knob = right_knob + 36
	end
	
	set(nav_left, left_knob)
	set(nav_right, right_knob)
	
if MASTER then
	
	-- change frequency
	if power then
		local knob_diff_L = left_knob - knob_last_L
		local knob_diff_R = right_knob - knob_last_R
		
		
		if math.abs(knob_diff_L) < 10 then
			freq_100 = freq_100 + knob_diff_L
		end
			
		if math.abs(knob_diff_R) < 5 then
			freq_10 = freq_10 + 5 * knob_diff_R
		end
	
	end
	
	if freq_100 > 117 then freq_100 = 108
	elseif freq_100 < 108 then freq_100 = 117 end
	
	if freq_10 > 95 then freq_10 = 0
	elseif freq_10 < 0 then freq_10 = 95 end
	
	
	set(frequency, freq_100 * 100 + freq_10)

end	
	
	knob_last_L = left_knob
	knob_last_R = right_knob
	
	-- DME calculations
	
	local dist = get(distance)

if MASTER then
	
	local delta_dist = dist - dist_now 
			
	if delta_dist > 1 then dist_now = dist_now + passed * 20
	elseif delta_dist < -1 then dist_now = dist_now - passed * 20
	else dist_now = dist_now + delta_dist * passed * 20
	end
	
	if get(nav_mile_km) == 1 then dist_show = dist_now * 1.852 
	else dist_show = dist_now
	end
	
	local dme_power = get(bus36_volt) > 30 and get(bus115_volt) > 100 and get(sd75_on) == 1 and get(dme_fail) == 0
	if not dme_power then dist_show = 0 end
	
	if dist_show > 999.9 then dist_show = 999.9
	elseif dist_show < 0 then dist_show = 0 end
	
	
	set(vor_dme, dist_show)
end	
	
	-- bearing calculations
	local bear = get(nav_deg)
	
	if bear > 90.01 or bear < 89.99 and power and not FAIL then -- compas
		bearing = bear + (math.random() - 0.49999) * 30 * passed

	elseif power and not FAIL then -- no signal
		bearing = bearing + (math.random() - 0.2) * 30 * passed * (dir_ran * 2 - 1)
	end	
	
	-- change dirrection of random movement
	if math.random() > 0.99 then dir_ran = (1 - dir_ran) end
	
	if MASTER then set(vor_bear, bearing) end
	
	
	-- flags calculations
	local nav_flag = get(cr_flag) * bool2int(power)  -- Nav-To-From indication, nav1, pilot, 0 is flag, 1 is to, 2 is from.
	local glide_flag = get(gs_flag) * bool2int(power)  -- glideslope flag. 0 - flag is shown
	
	-- set lamps To and From
	lamps(nav_flag,freq)
	
	
	
	-- set course and glide planks
	if power and not FAIL then 
		course = get(v_plank) / 2.5
		glidesl = get(h_plank) / 2.5
	else
		course = 0
		glidesl = 0
	end

	
	-- add random noise deflection for planks
	if nav_flag == 0 and power and not FAIL and math.random() > 0.999 then 
		course = (math.random() - 0.49999) * 10
		nav_flag = math.random(1, 2)
	end	
	if glide_flag == 0 and power and not FAIL and math.random() > 0.999 then 
		glidesl = (math.random() - 0.49999) * 10
		glide_flag = 1
	end	
	
	-- add test buttons
	local but = get(nav_but_1) + get(nav_but_2) * 2 + get(nav_but_3) * 3
	if power and not FAIL then
		if but == 1 then
			course = -1
			glidesl = -1
		elseif but == 2 then
			course = 0
			glidesl = 0	
		elseif but == 3 then
			course = 1
			glidesl = 1
		end
	end	

if MASTER then	
	set(nav_cs, course)
	set(nav_gs, glidesl)
	
	set(nav_cs_flag, bool2int(nav_flag == 0 or not power or FAIL))
	set(nav_gs_flag, bool2int(glide_flag == 0 or not power or FAIL))
end	
	
	-- set OBS
	local obs_knob_now = get(nav_course)
	
	while obs_knob_now > 360 do
		obs_knob_now = obs_knob_now - 360
	end
	
	while obs_knob_now < 0 do
		obs_knob_now = obs_knob_now + 360
	end
	
	--if MASTER then set(nav_course, obs_knob_now) end
	
	
	--local knob_diff = obs_knob_now - obs_knob_last
	
	obs_knob_last = obs_knob_now
	
	obs_now = get(obs)
	local knob_diff = obs_now - obs_last
	obs_last = obs_now
	local obs_1 = math.floor(obs_now % 10)
	local obs_10 = math.floor((obs_now % 100) * 0.1)
	local obs_100 = math.floor((obs_now % 1000) * 0.01)
	
	if math.abs(knob_diff) < 50 then
		-- obs_now = obs_now + knob_diff
		obs_knob_now = obs_knob_now + knob_diff
	end

	local mp_dir = get(dir) 
	if MASTER then
		if mp_dir > dir_last then
			obs_now = obs_now + 180
		elseif mp_dir < dir_last then
			obs_now = obs_now - 180
		end
	end
	
	dir_last = mp_dir
	
	while obs_now > 360 do
		obs_now = obs_now - 360
	end
	
	while obs_now < 1 do
		obs_now = obs_now + 360
	end
	
	obs_now = math.floor(obs_now)
	
	--if obs_now > 360 then obs_now = obs_now - 360 
	--elseif obs_now < 0 then obs_now = obs_now + 360 end
	
	set(obs, obs_now)
	set(nav_course, obs_knob_now)
	
	set(nav_course_100, obs_100)
	set(nav_course_10, obs_10)
	set(nav_course_1, obs_1)	
	
	-- set numbers
	--local obs_1 = obs_now % 10
	--local obs_10 = math.floor((obs_now % 100) * 0.1) + math.max(math.max((obs_1  - 9), 0), 0)
	--local obs_100 = math.floor((obs_now % 1000) * 0.01) + math.max(math.max((obs_10 - 9), 0), 0)



	
	
	--print(get(obs).."  "..obs_100..obs_10..obs_1)

	
	
	
	
	
	
	

end







