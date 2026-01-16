-- this is UVID-15FK logic


defineProperty("static_fail_L", globalPropertyi("sim/operation/failures/rel_static"))  -- static fail
defineProperty("static_fail_R", globalPropertyi("sim/operation/failures/rel_static2"))
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus115_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus27_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27
defineProperty("bus115_right", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в
-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- fail
defineProperty("uvid_fail", globalPropertyi("tu154b2/custom/failures/uvid15_fail")) -- fail


-- current altitude
--defineProperty("msl_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude")) 
defineProperty("p_stat", globalPropertyf("tu154b2/custom/svs/p_s_smoothed"))
--defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg


-- indication and controls
defineProperty("uvid_needle_left", globalPropertyf("tu154b2/custom/gauges/alt/uvid_needle_left"))  -- стрелка высотомера УВИД КВС
defineProperty("uvid_feet_counter", globalPropertyf("tu154b2/custom/gauges/alt/uvid_feet_counter"))  -- барабанчик счета удиниц футов
defineProperty("uvid_hundreads_counter", globalPropertyf("tu154b2/custom/gauges/alt/uvid_hundreads_counter"))  -- барабанчик счета сотен футов
defineProperty("uvid_thousands_counter", globalPropertyf("tu154b2/custom/gauges/alt/uvid_thousands_counter"))  -- барабанчик счета тысяч футов
defineProperty("uvid_tens_thousands_counter", globalPropertyf("tu154b2/custom/gauges/alt/uvid_tens_thousands_counter"))  -- барабанчик счета десятков тысяч футов
defineProperty("uvid_pressure_knob", globalPropertyf("tu154b2/custom/gauges/alt/uvid_pressure_knob"))  -- ручка установки давления
defineProperty("uvid_pressure_one", globalPropertyf("tu154b2/custom/gauges/alt/uvid_pressure_one"))  -- единицы давления
defineProperty("uvid_pressure_ten", globalPropertyf("tu154b2/custom/gauges/alt/uvid_pressure_ten"))  -- десятки давления
defineProperty("uvid_pressure_hund", globalPropertyf("tu154b2/custom/gauges/alt/uvid_pressure_hund"))  -- сотни давления
defineProperty("uvid_pressure_thous", globalPropertyf("tu154b2/custom/gauges/alt/uvid_pressure_thous"))  -- тысячи давления

defineProperty("uvid_on", globalPropertyi("tu154b2/custom/switchers/ovhd/uvid_on"))  -- выключатель УВИД

defineProperty("sim_barometer_setting", globalPropertyf("sim/cockpit/misc/barometer_setting"))  -- лампочка УВИД15
defineProperty("vd15_lamp", globalPropertyf("tu154b2/custom/lights/small/vd15_lamp"))  -- лампочка УВИД15
--VEM-72
defineProperty("vem_press", globalPropertyf("sim/custom/vem72_press_knob"))
defineProperty("vem_tst", globalPropertyi("sim/custom/vem72_btn"))
defineProperty("vem_light", globalPropertyi("sim/custom/vem72_lit"))
defineProperty("vem_altitude", globalPropertyf("sim/custom/vem72_needle"))
defineProperty("vem_sw", globalPropertyi("tu154b2/custom/switchers/ovhd/vbe_1_on"))

defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))
-- sounds
local switcher_sound = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch.wav')

local left_MSL = 0
local right_MSL = 0
local uvid_alt = 0
local uvid_alt_act = 0
local vem_alt = 0
local vem_alt_act = 0
--local msl_counter = 0
local msl = 0

local err_tbl={{ -1000, -1000},
		 { 5000, 5000},
		 { 9000, 9060},
         {13000, 13050},
         {17000, 17090},
         {20000, 20080},
         {23000, 23100},
         {26000, 26120},
         {29000, 29140},
         {33000, 33120},
         {36000, 36160},
         {39000, 39185},
         {40000, 40270},
		 {40000, 40270},
		 {80000, 80870}}

local switcher_last = get(uvid_on)
function update()
	local passed = get(frame_time)
	
	-- calculate altitude
	local staticFail_left = get(static_fail_L) == 6
	local staticFail_right = get(static_fail_R) == 6
    -- msl_counter = msl_counter +math.random(0.07,0.1)
    -- if msl_counter > 1 then
       -- msl_counter = 0
	local p_s=get(p_stat)
	msl=288/0.0065*(1-math.pow(p_s/101325,0.0065*28.96))
	if p_s< 22250 then
		msl=11000+28.96*216.6500*math.log(22250/p_s)
	end
    --end
	if not staticFail_left then
		left_MSL = msl * 3.28084 
	end
	if not staticFail_right then
		right_MSL = msl 
	end
	
	-- check power
	local power27 = get(bus27_volt) > 13
	local power115 = get(bus115_volt) > 110
	local power27_r = get(bus27_right) > 13
	local power115_r = get(bus115_right) > 110
	local sw_on = get(uvid_on) == 1
	local vem_on = get(vem_sw) == 1
	local press_set = get(uvid_pressure_knob)
	local press_vem = get(vem_press)
	--local press_inHg = press_set 
	
	-- sounds
	-- if switcher_last ~= sw_on then
		-- playSample(switcher_sound, false)
	-- end
	-- switcher_last = sw_on
	
	-- calculate indicated altidude
	if power27 and power115 and sw_on and get(uvid_fail) == 0 then
		uvid_alt = left_MSL + (press_set-1013.25 ) * 27  -- calculate barometric altitude in feet
		uvid_alt=interpolate(err_tbl,uvid_alt)
	end
	local vem72_test=get(vem_tst)
	if power27_r and power115_r and vem_on then
		vem_alt = right_MSL + (get(vem_press) * 0.0393701 - 29.92) * 1000 * 0.3048 +(vem72_test*150)
		set(vem_light,vem72_test)
	else
		set(vem_light,0)
	end
	-- altitude on needle
	uvid_alt_act = uvid_alt_act + (uvid_alt - uvid_alt_act) * passed * 5
	uvid_alt_act=math.max(0,uvid_alt_act)
	vem_alt_act = vem_alt_act + (vem_alt - vem_alt_act) * passed * 5
	-- altitude on first drumm
	local alt_dr_1 = uvid_alt_act % 100
	
	-- altitude hundreds drumm
	local alt_dr_100 = math.floor((uvid_alt_act % 1000) * 0.01) + math.max(math.max((alt_dr_1 - 50), 0) / 50, 0)
	
	-- altitude thousadns drumm
	local alt_dr_1000 = math.floor((uvid_alt_act % 10000) * 0.001) + math.max(math.max((alt_dr_100 - 9), 0), 0)
	
	-- altitude tens thousands drumm
	local alt_dr_10th = math.floor((uvid_alt_act % 100000) * 0.0001) + math.max(math.max((alt_dr_1000 - 9), 0), 0)
	
	
	-- pressure drumms
	-- ones
	local press_1 = press_set % 10
	
	-- tens
	local press_10 = math.floor((press_set % 100) * 0.1) + math.max(math.max((press_1 - 9), 0), 0)
	
	-- hundreads
	local press_100 = math.floor((press_set % 1000) * 0.01) + math.max(math.max((press_10 - 9), 0), 0)
	
	-- thausands
	local press_1000 = math.floor((press_set % 10000) * 0.001) + math.max(math.max((press_100 - 9), 0), 0)
	
	local lamp_shine = power27 and sw_on and (not power115 or uvid_alt > 50000 or uvid_alt < 0 or press_set < 787 or press_set > 1075)
		
	set(vd15_lamp, bool2int(lamp_shine))
	
	
	-- set results
	if get(ismaster)~=1 then
		set(uvid_needle_left, uvid_alt_act * 360 / 1000)
		set(uvid_feet_counter, uvid_alt_act)
		set(uvid_hundreads_counter, alt_dr_100)
		set(uvid_thousands_counter, alt_dr_1000)
		set(uvid_tens_thousands_counter, alt_dr_10th)
		set(vem_altitude,vem_alt_act)
	end
	set(uvid_pressure_one, press_1)
	set(uvid_pressure_ten, press_10)
	set(uvid_pressure_hund, press_100)
	set(uvid_pressure_thous, press_1000)
	--set(sim_barometer_setting, press_inHg)

end