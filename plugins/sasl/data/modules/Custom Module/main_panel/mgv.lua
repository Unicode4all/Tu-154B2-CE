-- this is main AHZ logic


-- this is aux ahz logic
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

--defineProperty("pitch_sim", globalPropertyf("sim/cockpit2/gauges/indicators/pitch_electric_deg_pilot"))
--defineProperty("roll_sim", globalPropertyf("sim/cockpit2/gauges/indicators/roll_electric_deg_pilot"))

defineProperty("pitch_sim", globalPropertyf("sim/flightmodel/position/theta"))
defineProperty("roll_sim", globalPropertyf("sim/flightmodel/position/phi"))


defineProperty("N1", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))   
defineProperty("N2", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]"))
defineProperty("N3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))


-- controls
--defineProperty("pitch_corr_hdl", globalPropertyf("tu154b2/custom/gauges/ahz/pitch_corr_L")) -- коррекция тангажа на АГР + вправо
defineProperty("mgv_contr", globalPropertyi("tu154b2/custom/switchers/ovhd/mgv_contr")) -- выключатель

defineProperty("arrest_btn", globalPropertyi("tu154b2/custom/buttons/console/absu_arrest")) -- кнопки арретировки
--defineProperty("mgv_contr", globalPropertyi("tu154b2/custom/switchers/ovhd/mgv_contr")) -- выключатель МГВ

-- power
--defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))


defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1"))
defineProperty("mgv_ctr_power_cc", globalPropertyf("tu154b2/custom/bkk/mgv_ctr_power_cc")) -- отребление тока ПКП
--[[
defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2


defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154b2/custom/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))
--]]
-- results
defineProperty("res_pitch", globalPropertyf("tu154b2/custom/gyro/mgv_contr_pitch")) -- тангаж на АГР + нос вверх
defineProperty("res_roll", globalPropertyf("tu154b2/custom/gyro/mgv_contr_roll")) -- крен на АГР + в право

defineProperty("ahz_flag", globalPropertyi("tu154b2/custom/gyro/mgv_contr_flag")) -- отказ МГВ
--defineProperty("mgv_contr_fail", globalPropertyi("tu154b2/custom/bkk/mgv_contr_fail")) -- сигнал с БКК - отказ МГВ контр


defineProperty("mgv_fail", globalPropertyi("tu154b2/custom/failures/mgv_fail")) -- отказ МГВ



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("tu154b2/crew/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("tu154b2/crew/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control






local initial_roll_err = 0 --math.random(-20, 20) * real_num -- initial error, ehich will be decreased to 0 after connecting power
local roll_corr = 0  -- correction for errors and arrest
local roll_show = 0  -- result roll
local roll_off = 0 --math.random(-2, 2) * real_num -- determine the direction for AG fall
local initial_pitch_err = 0 --math.random(-30, 30) * real_num -- initial error, ehich will be decreased to 0 after connecting power
local pitch_corr = 0  -- correction for errors and arrest
local pitch_show = 0  -- result roll
local pitch_off = 0 --math.random(-2, 2) * real_num -- determine the direction for AG fall
--local arrest = 0  -- variable for arresting process
local arrest_push = false -- validate if arrest button is pushed
local pitch_rot = 0
local ahz_fail = true
local fail = 0
local power_roll = 0 --get(roll_right)
local power_pitch = 0 --get(pitch_right)

local time_counter = 0
local notLoaded = true
local spinup=0

function update()
	local passed = get(frame_time)
	local fail=get(mgv_fail) > 0
	local power = get(bus36_volt) > 30 and get(mgv_contr) == 1 and not fail
	
	time_counter = time_counter + passed	

	-- set initial AHZ position
	if time_counter > 0.3 and time_counter < 0.4 and notLoaded and get(N1) < 10 and get(N2) < 10 and get(N3) < 10 then
		initial_roll_err = math.random(-15, 15)
		roll_off = math.random(-1, 1)
		initial_pitch_err = math.random(-15, 15)
		pitch_off = math.random(-1, 1)
		
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
		if math.abs(initial_roll_err) < 20 then initial_roll_err = initial_roll_err + passed * roll_off * 0.1 end
		if math.abs(initial_pitch_err) < 20 then initial_pitch_err = initial_pitch_err + passed * pitch_off * 0.1 end
	else
		if spinup<100 then
			spinup=spinup+passed
		end
		local ready=bool2int(spinup>=100)
		if initial_roll_err > 0.1 then initial_roll_err = initial_roll_err - passed * 0.05*ready
		elseif initial_roll_err < -0.1 then initial_roll_err = initial_roll_err + passed * 0.05*ready
		else initial_roll_err = 0 end
		if initial_pitch_err > 0.1 then initial_pitch_err = initial_pitch_err - passed * 0.05*ready
		elseif initial_pitch_err < -0.1 then initial_pitch_err = initial_pitch_err + passed * 0.05*ready
		else initial_pitch_err = 0 end
		
		-- reset all errors and correction after some time
		if power_roll > 0.05 then power_roll = power_roll - passed * 0.05*ready
		elseif power_roll < -0.05 then power_roll = power_roll + passed * 0.05 *ready
		else power_roll = 0 end
		
		if power_pitch > 0.05 then power_pitch = power_pitch - passed * 0.05*ready
		elseif power_pitch < -0.05 then power_pitch = power_pitch + passed * 0.05 *ready
		else power_pitch = 0 end
		
		if roll_corr > 0.01 then roll_corr = roll_corr - 0.05 * passed*ready
		elseif roll_corr < -0.01 then roll_corr = roll_corr + 0.05 * passed *ready
		else roll_corr = 0 end
		
		if pitch_corr > 0.01 then pitch_corr = pitch_corr - 0.05 * passed*ready
		elseif pitch_corr < -0.01 then pitch_corr = pitch_corr + 0.05 * passed *ready
		else pitch_corr = 0 end
		
	end
	
	
	-- arresting mechanism
	local arrest=get(arrest_btn) > 0
	if arrest and power then
		-- set new correction
		
		if math.abs(initial_roll_err) < 0.1 then
			if roll_show > 0.1 then roll_corr = roll_corr + 6 * passed
			elseif roll_show < -0.1 then roll_corr = roll_corr - 6 * passed end
		end
		if math.abs(initial_pitch_err) < 0.1 then
			if pitch_show > 0.1 then pitch_corr = pitch_corr + 6 * passed
			elseif pitch_show < -0.1 then pitch_corr = pitch_corr - 6 * passed end
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
	pitch_show = get(pitch_sim) - power_pitch + initial_pitch_err - pitch_corr
	-- final result is a summ of power position, initial error of gauge, collective error of gauge and correction of this error
	
	if pitch_show > 90 then pitch_show = 90
	elseif pitch_show < -90 then pitch_show = -90 end
	
	
	-- flag logic
	local flag = bool2int(not power or arrest or fail)
	

--local MASTER = get(hascontrol_1) ~= 1	
	

if get(hascontrol_1) ~= 1 then	
	set(res_roll, roll_show)
	set(res_pitch, pitch_show)	
	set(ahz_flag, flag)	
	set(mgv_ctr_power_cc, bool2int(power))
else
	roll_show = get(res_roll)
	pitch_show = get(res_pitch)
	flag = get(ahz_flag)
end

	
--[[
if math.abs (a - b) > 7 then flag_ab = true else flag_ab = false end
if math.abs (a - c) > 7 then flag_ac = true else flag_ac = false end
if math.abs (b - c) > 7 then flag_bc = true else flag_bc = false end

fail_a = flag_ab and flag_ac
fail_b = flag_ab and flag_bc
fail_c = flag_ac and flag_bc
--]]

end
