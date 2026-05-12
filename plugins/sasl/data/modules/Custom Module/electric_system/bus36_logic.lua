-- this is logic of 36v busses

-- 4 busses
-- bus 1 powers from TR 1, that connected to bus115_1 or reconnected to bus115_3
-- bus 2 powers from TR 2, that connected to buss115_3 or reconected to bus115_1
-- bus 3 powers from PTS250_1, that connected to bus27_right
-- bus 4 powers from PTS250_2, that connected to bus27_left

-- panel controlls
defineProperty("bus36_tr_left_to_right", globalPropertyi("tu154b2/custom/switchers/eng/bus36_tr_left_to_right")) -- лев сеть на тр2. 0 - авто, 1 - ручное
defineProperty("bus36_tr_right_to_left", globalPropertyi("tu154b2/custom/switchers/eng/bus36_tr_right_to_left")) -- прав сеть на тр1. 0 - авто, 1 - ручное
defineProperty("pts250_on", globalPropertyi("tu154b2/custom/switchers/eng/pts250_on")) -- выключатель ПТС250
defineProperty("pts250_mode", globalPropertyi("tu154b2/custom/switchers/eng/pts250_mode")) -- режим ПТС250. авто - ручное
defineProperty("agr_on", globalPropertyi("tu154b2/custom/switchers/ovhd/agr_on")) -- выключатель АГР


-- internal parameters
defineProperty("bus36_tr1_work", globalPropertyi("tu154b2/custom/elec/bus36_tr1_work")) -- трансформатор 1 работает
defineProperty("bus36_tr2_work", globalPropertyi("tu154b2/custom/elec/bus36_tr2_work")) -- трансформатор 2 работает

defineProperty("bus36_pts1_work", globalPropertyi("tu154b2/custom/elec/bus36_pts1_work")) -- ПТС250 1 работает
defineProperty("bus36_pts2_work", globalPropertyi("tu154b2/custom/elec/bus36_pts2_work")) -- ПТС250 2 работает

defineProperty("bus36_src_L", globalPropertyi("tu154b2/custom/elec/bus36_src_L")) --  источник левой сети. 0 = ТР1, 1 = ТР2
defineProperty("bus36_src_R", globalPropertyi("tu154b2/custom/elec/bus36_src_R")) -- источник правой сети. 0 = ТР2, 1 = ТР1

-- other busses parameters
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt")) -- напряжение на сети 115в

-- defineProperty("bus115_1_amp", globalPropertyf("tu154b2/custom/elec/bus115_1_amp"))
-- defineProperty("bus115_3_amp", globalPropertyf("tu154b2/custom/elec/bus115_3_amp"))

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("bus27_amp_left", globalPropertyf("tu154b2/custom/elec/bus27_amp_left")) -- ток сети 27
defineProperty("bus27_amp_right", globalPropertyf("tu154b2/custom/elec/bus27_amp_right")) -- ток сети 27

-- bus volts
defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2

-- bus ampers
defineProperty("bus36_amp_left", globalPropertyf("tu154b2/custom/elec/bus36_amp_left")) -- ток левой сети 36
defineProperty("bus36_amp_right", globalPropertyf("tu154b2/custom/elec/bus36_amp_right")) -- ток правой сети 36
defineProperty("bus36_amp_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_amp_pts250_1")) -- ток ПТС250 сети 36 1
defineProperty("bus36_amp_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_amp_pts250_2")) -- ток ПТС250 сети 36 2

-- failures
defineProperty("tr1_fail", globalPropertyi("tu154b2/custom/failures/tr1_fail")) -- отказ ТР1
defineProperty("tr2_fail", globalPropertyi("tu154b2/custom/failures/tr2_fail")) -- отказ ТР2
defineProperty("pts250_1_fail", globalPropertyi("tu154b2/custom/failures/pts250_1_fail")) -- отказ ПТС250
defineProperty("pts250_2_fail", globalPropertyi("tu154b2/custom/failures/pts250_2_fail")) -- отказ ПТС250

tr1_switch_fail = globalPropertyi("tu154b2/custom/failures/tr1_switch_fail")
tr2_switch_fail = globalPropertyi("tu154b2/custom/failures/tr2_switch_fail")
source_left = globalPropertyi("tu154b2/custom/elec/bus36_source_left")
source_right = globalPropertyi("tu154b2/custom/elec/bus36_source_right")

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

local pts2_timer=0


function update()
	local passed=get(frame_time)
	if passed > 0 and get(ismaster) ~= 1 then
	
		-- main busses
		local tr1_sw = get(bus36_tr_left_to_right)
		local tr2_sw = get(bus36_tr_right_to_left)
		local tr1_volt = (get(bus115_1_volt) / 3.27) * (1 - get(tr1_fail)) -- transformator 1 volt.
		local tr2_volt = (get(bus115_3_volt) / 3.27) * (1 - get(tr2_fail)) -- transformator 2 volt. can add failure here.
		local bus_source_L = 0 -- 0 = tr1, 1 = tr2
		local bus_source_R = 0 -- 0 = tr2, 1 = tr1
		
		-- bus left
		local bus_L_volt = 0
		if tr1_sw == 0 and tr1_volt > 30 then -- auto mode
			bus_L_volt = tr1_volt
			bus_source_L = 0
			--set(bus115_1_amp, get(bus115_1_amp) + get(bus36_amp_left) / 3.25)
		else
			bus_source_L = 1
			bus_L_volt = tr2_volt * (1-get(tr1_switch_fail))
			--set(bus115_3_amp, get(bus115_3_amp) + get(bus36_amp_left) / 3.25)
		end

		-- bus right
		local bus_R_volt = 0
		if tr2_sw == 0 and tr2_volt > 30 then
			bus_source_R = 0
			bus_R_volt = tr2_volt
			--set(bus115_3_amp, get(bus115_3_amp) + get(bus36_amp_right) / 3.25)
		else
			bus_source_R = 1
			bus_R_volt = tr1_volt * (1-get(tr2_switch_fail))
			--set(bus115_1_amp, get(bus115_1_amp) + get(bus36_amp_right) / 3.25)
		end
		
		-- set results
		set(bus36_volt_left, bus_L_volt)
		set(bus36_volt_right, bus_R_volt)
		
		set(bus36_src_L, bus_source_L)
		set(bus36_src_R, bus_source_R)
		
		if tr1_volt > 0 then 
			set(bus36_tr1_work, 1)
		else
			set(bus36_tr1_work, 0)
		end
		
		if tr2_volt > 0 then 
			set(bus36_tr2_work, 1)
		else
			set(bus36_tr2_work, 0)
		end
		
		-- PTS busses
		local bus27_L = get(bus27_volt_left)
		local bus27_R = get(bus27_volt_right)
		
		local pts_1_volt = 0
		if bus27_R > 13 and (get(pts250_on) == 1 or get(agr_on) == 1) and get(pts250_1_fail) == 0 then 
			pts_1_volt = 36
			set(bus36_pts1_work, 1)
		else
			pts_1_volt = 0
			set(bus36_pts1_work, 0)
		end
		
		local pts_2_volt = 0
		if bus_L_volt < 30 and get(pts250_mode) == 0 then
			if pts2_timer<1 then
				pts2_timer=pts2_timer+passed*3
			end
		else
			pts2_timer=0
		end
		if (pts2_timer>0.99 or get(pts250_mode) == 1) and bus27_L > 13 and get(pts250_2_fail) == 0 then
			pts_2_volt = 36
			set(bus36_pts2_work, 1)
		else
			pts_2_volt = 0
			set(bus36_pts2_work, 0)
		end
		
		-- bus 1
		local bus_1_volt = 0
		local pts_1_fail = false -- temp
		
		if pts_1_volt > 0 then
			bus_1_volt = 36
			--set(bus27_amp_right, get(bus27_amp_right) + get(bus36_amp_pts250_1) * 1.4) -- add current to bus 27
		elseif pts_1_fail then
			bus_1_volt = get(bus36_volt_right)
			--set(bus36_amp_right, get(bus36_amp_right) + get(bus36_amp_pts250_1) * 1.05) -- add current to bus 36R
		end
		
		-- bus 2
		local bus_2_volt = 0
		local pts_2_fail = false -- temp
		
		if bus_L_volt > 30 then
			bus_2_volt = bus_L_volt
			set(bus36_amp_left, get(bus36_amp_left) + get(bus36_amp_pts250_2) * 1.05)
		else
			bus_2_volt = pts_2_volt
			set(bus27_amp_left, get(bus27_amp_left) + get(bus36_amp_pts250_2) * 1.4)
		end
		
		-- set results
		set(bus36_volt_pts250_1, bus_1_volt)
		set(bus36_volt_pts250_2, bus_2_volt)
		set(source_left,bus_source_L)
		set(source_right,bus_source_R)
		--set(bus115_1_amp, get(bus115_1_amp) + (get(bus36_amp_left) / 3.25) * (1 - bus_source_L) + (get(bus36_amp_right) / 3.25) * bus_source_R)
		--set(bus115_3_amp, get(bus115_3_amp) + (get(bus36_amp_left) / 3.25) * (bus_source_L) + (get(bus36_amp_right) / 3.25) * (1 - bus_source_R))
		
		
		--print(get(bus115_1_amp), get(bus115_3_amp))
	
	end

end