-- this is DISS logic

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- power

-- controls
defineProperty("diss_on", globalPropertyi("tu154b2/custom/switchers/ovhd/diss_on")) -- питание ДИСС
defineProperty("diss_mode_sw", globalPropertyi("tu154b2/custom/switchers/ovhd/diss_mode")) -- режим дисс. 0 - море, 1 - суша
defineProperty("nvu_calc_set", globalPropertyi("tu154b2/custom/switchers/ovhd/nvu_calc_set")) -- счисление. -1 - контроль ДИСС в полете, 0 - НВУ по СВС, 1 - НВУ по ДИСС

defineProperty("wind_set", globalPropertyf("tu154b2/custom/rotary/console/wind_set")) -- установка ветра

defineProperty("wind_course_left", globalPropertyi("tu154b2/custom/button/console/wind_course_left")) -- кнопка установки курса ветра 
defineProperty("wind_course_ctr", globalPropertyi("tu154b2/custom/button/console/wind_course_ctr")) -- кнопка установки курса ветра 
defineProperty("wind_course_right", globalPropertyi("tu154b2/custom/button/console/wind_course_right")) -- кнопка установки курса ветра 

defineProperty("wind_spd_left", globalPropertyi("tu154b2/custom/button/console/wind_spd_left")) -- кнопка установки скорости ветра 
defineProperty("wind_spd_ctr", globalPropertyi("tu154b2/custom/button/console/wind_spd_ctr")) -- кнопка установки скорости ветра 
defineProperty("wind_spd_right", globalPropertyi("tu154b2/custom/button/console/wind_spd_right")) -- кнопка установки скорости ветра 

-- sources
defineProperty("deg1", globalPropertyf("sim/flightmodel/position/psi")) -- acf mag heading
defineProperty("deg2", globalPropertyf("sim/flightmodel/position/hpath")) -- real mag heading 
-- slip_angle = get(deg2) - get(deg1)
defineProperty("groundspeed", globalPropertyf("sim/flightmodel/position/groundspeed")) -- groundspeed

defineProperty("tas_svs", globalPropertyf("tu154b2/custom/svs/true_airspeed")) -- TAS
defineProperty("course_gpk", globalPropertyf("tu154b2/custom/tks/course_gpk")) -- результирующий курс ТКС - ГПК

defineProperty("acf_roll", globalPropertyf("sim/flightmodel/position/true_phi")) -- крен
defineProperty("acf_pitch", globalPropertyf("sim/flightmodel/position/true_theta")) -- крен

defineProperty("pos_x", globalPropertyf("sim/flightmodel/position/local_x")) -- longtitude. positive from W to E
defineProperty("pos_y", globalPropertyf("sim/flightmodel/position/local_y")) -- altitude. positive UP
defineProperty("pos_z", globalPropertyf("sim/flightmodel/position/local_z")) -- latitude. positive from N to S

defineProperty("wave_amplitude", globalPropertyf("sim/weather/wave_amplitude")) -- meters	Amplitude of waves in the water (height of waves)

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left"))
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))


-- results
defineProperty("diss_wind_course", globalPropertyf("tu154b2/custom/nvu/diss_wind_course")) -- курс ветра по ДИСС
defineProperty("diss_wind_spd", globalPropertyf("tu154b2/custom/nvu/diss_wind_spd")) -- скорость ветра по ДИСС
defineProperty("diss_groundspeed", globalPropertyf("tu154b2/custom/nvu/diss_groundspeed")) -- путевая скорость по ДИСС
defineProperty("diss_slip_angle", globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")) -- угол сноса по ДИСС

defineProperty("diss_mode", globalPropertyi("tu154b2/custom/nvu/diss_mode")) -- режим ДИСС. 0 - выкл, 1 - работа, 2 - память

defineProperty("diss_cc", globalPropertyf("tu154b2/custom/nvu/diss_cc")) -- потребление от ДИСС


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
defineProperty("diss_fail", globalPropertyi("tu154b2/custom/failures/diss_fail")) --
defineProperty("nvu_power_on", globalPropertyi("tu154b2/custom/switchers/console/nvu_power_on"))
defineProperty("nvu_fail", globalPropertyi("tu154b2/custom/failures/nvu_fail"))
defineProperty("v_path", globalPropertyf("sim/flightmodel/position/vpath"))


local diss_wind_dir = get(diss_wind_course)
local diss_wind_speed = get(diss_wind_spd)

local g_spd = 0
local slip_angle = 0
local warmup_timer = 0
local mode_prev=0
local g_spd_prev=0
local wind_speed_prev=0
local wind_dir_prev=0
local slip_angle_prev=0
function update()

	local power = get(diss_on) == 1 and get(bus27_volt_left) > 13 and get(bus36_volt_left) > 30 and get(bus115_1_volt) > 100
	set(diss_cc, bool2int(power))
	
	local passed = get(frame_time)
	local fail = get(diss_fail) == 1
    local warmup = warmup_timer > 1
	-- calculate DISS mode
    if power then
		if warmup_timer<140 then
			warmup_timer = warmup_timer + passed +math.random(0.01,0.1)
		end
    else
		if warmup_timer>0 then
			warmup_timer = warmup_timer - passed /5
		end
    end
	
	
	local plane_x = get(pos_x)
	local plane_y = get(pos_y)
	local plane_z = get(pos_z)
	local prob, locationX, locationY, locationZ, normalX, normalY, normalZ, velocityX, velocityY, vlocityZ, isWet = sasl.probeTerrain(plane_x, plane_y, plane_z)
	local nvu_mode = get(nvu_calc_set)
	isWet=isWet==1
	local mode = 0
	
	if power and warmup and fail then
		mode = 2
	elseif power and warmup and nvu_mode == 1 and not (math.abs(get(acf_roll)) > math.random(20,25) or (isWet and get(diss_mode_sw) == 1) or (get(wave_amplitude) < 0.1 and isWet) or get(groundspeed) * 3.6 < 180) then
		mode = 1
	elseif power and warmup and nvu_mode ~= -1 then 
		mode = 2
	elseif power and warmup and nvu_mode == -1 then
		mode = 3	
	elseif not power then
		g_spd_prev=0
		slip_angle_prev=0
	end
	
	-- wind and speed calculations
	
	
	-- local TAS = get(tas_svs) / 3.6 -- m/s
	-- local acf_course = get(course_gpk)
	
	if mode == 1 then -- normal work
		g_spd = math.abs(get(groundspeed))*math.cos(math.rad(get(v_path))) -- m/s
		
		slip_angle = get(deg2) - get(deg1)
		
		if slip_angle > 180 then slip_angle = slip_angle - 360
		elseif slip_angle < -180 then slip_angle = slip_angle + 360 end
		
		-- if slip_angle > 30 then slip_angle = 30
		-- elseif slip_angle < -30 then slip_angle = -30 end
		
		-- diss_wind_speed = math.sqrt((g_spd * math.sin(math.rad(slip_angle)))^2 + (g_spd * math.cos(math.rad(slip_angle)) - TAS)^2 )
		
		-- diss_wind_dir = math.deg(math.atan2(g_spd * math.sin(math.rad(slip_angle)), g_spd * math.cos(math.rad(slip_angle)) - TAS))
		
		-- if diss_wind_dir > 360 then diss_wind_dir = diss_wind_dir - 360
		-- elseif diss_wind_dir < 0 then diss_wind_dir = diss_wind_dir + 360 end
		g_spd_prev=g_spd
		-- wind_speed_prev=diss_wind_speed
		-- wind_dir_prev=diss_wind_dir
		slip_angle_prev=slip_angle
	
	elseif mode == 2 then -- memory mode or fail
		--if mode_prev==3 then
			g_spd=g_spd_prev
			-- diss_wind_speed=wind_speed_prev
			-- diss_wind_dir=wind_dir_prev
			slip_angle=slip_angle_prev
		--end
		-- diss_wind_speed = get(diss_wind_spd) / 3.6
		
		-- diss_wind_dir = get(diss_wind_course) - acf_course
		
		--g_spd = math.sqrt((diss_wind_speed * math.sin(math.rad(diss_wind_dir)))^2 + (TAS + diss_wind_speed * math.cos(math.rad(diss_wind_dir)))^2)
	
		--slip_angle = math.deg(math.atan2(diss_wind_speed * math.sin(math.rad(diss_wind_dir)), diss_wind_speed * math.cos(math.rad(diss_wind_dir)) + TAS))
	
		
		
		-- -- wind manual setting
		-- local but_C_L = get(wind_course_left)
		-- local but_C_C = get(wind_course_ctr)
		-- local but_C_R = get(wind_course_right)
		
		
		-- diss_wind_dir = diss_wind_dir + (but_C_R - but_C_L) * (1 + 9 * but_C_C) * passed * 3
		
		-- -------------
		
		-- local but_S_L = get(wind_spd_left)
		-- local but_S_C = get(wind_spd_ctr)
		-- local but_S_R = get(wind_spd_right)
		
		-- diss_wind_speed = diss_wind_speed + (but_S_R - but_S_L) * (1 + 9 * but_S_C) * passed * 0.7
		
		-- if diss_wind_speed > 300 then diss_wind_speed = 300
		-- elseif diss_wind_speed < 0 then diss_wind_speed = 0 end
		
	elseif mode == 3 then -- test mode
		g_spd = 197.222 -- m/s
		g_spd_prev=g_spd
		slip_angle = 0
		slip_angle_prev=slip_angle
		--if slip_angle > 180 then slip_angle = slip_angle - 360
		--elseif slip_angle < -180 then slip_angle = slip_angle + 360 end
		
		--diss_wind_speed = math.sqrt((g_spd * math.sin(math.rad(slip_angle)))^2 + (g_spd * math.cos(math.rad(slip_angle)) - TAS)^2 )
		
		--diss_wind_dir = math.deg(math.atan2(g_spd * math.sin(math.rad(slip_angle)), g_spd * math.cos(math.rad(slip_angle)) - TAS))
	
	elseif mode == 10 then -- fail
		g_spd = 0
		slip_angle = 0
		--diss_wind_speed = 0
		--diss_wind_dir = 0
	
	
	end
	mode_prev=mode
	if slip_angle > 30 then slip_angle = 30
	elseif slip_angle < -30 then slip_angle = -30 end
	
	
	-- smooth movements
	
	-- local wind_dir_act = get(diss_wind_course) - acf_course
	
	-- local delta_dir = diss_wind_dir - wind_dir_act
		
	-- if delta_dir > 180 then delta_dir = delta_dir - 360
	-- elseif delta_dir < -180 then delta_dir = delta_dir + 360 end
		
	-- if delta_dir > 1 then wind_dir_act = wind_dir_act + passed * 30
	-- elseif delta_dir < -1 then wind_dir_act = wind_dir_act - passed * 30
	-- else wind_dir_act = wind_dir_act + delta_dir * passed * 30
	-- end
	
	-- if wind_dir_act > 360 then wind_dir_act = wind_dir_act - 360
	-- elseif wind_dir_act < 0 then wind_dir_act = wind_dir_act + 360 end	
	
	
	
	
	-- local wind_spd_act = get(diss_wind_spd) / 3.6
	
	-- local delta_spd = diss_wind_speed - wind_spd_act 
		
	-- if delta_spd > 1 then wind_spd_act = wind_spd_act + passed * 20
	-- elseif delta_spd < -1 then wind_spd_act = wind_spd_act - passed * 20
	-- else wind_spd_act = wind_spd_act + delta_spd * passed * 20
	-- end
	
	
local MASTER = get(ismaster) ~= 1

if MASTER then
	--if get(nvu_calc_set)~=0 then
	set(diss_slip_angle, slip_angle)
	--end
	set(diss_groundspeed, g_spd * 3.6)
	-- local nvu_power = get(nvu_power_on) == 1 and get(bus27_volt_left) > 13 and get(bus36_volt_left) > 30 and get(bus115_1_volt) > 100 and get(nvu_fail)==0
	-- -- set results
	-- if nvu_power then
		-- set(diss_wind_course, wind_dir_act + acf_course)
		-- set(diss_wind_spd, wind_spd_act * 3.6)
	-- end
	
	set(diss_mode, mode)
	
end	
	

end