-- this is fuel pumps logic

-- fuel ammount
defineProperty("tank1_w", globalProperty("sim/flightmodel/weight/m_fuel[0]")) -- fuel weight
defineProperty("tank4_w", globalProperty("sim/flightmodel/weight/m_fuel[1]")) -- fuel weight
defineProperty("tank2R_w", globalProperty("sim/flightmodel/weight/m_fuel[2]")) -- fuel weight
defineProperty("tank2L_w", globalProperty("sim/flightmodel/weight/m_fuel[3]")) -- fuel weight
defineProperty("tank3R_w", globalProperty("sim/flightmodel/weight/m_fuel[4]")) -- fuel weight
defineProperty("tank3L_w", globalProperty("sim/flightmodel/weight/m_fuel[5]")) -- fuel weight

-- controls
defineProperty("pump_tank2_left", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank2_left")) -- насосы бака 2
defineProperty("pump_tank2_right", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank2_right")) -- насосы бака 2
defineProperty("pump_tank3_left", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank3_left")) -- насосы бака 3
defineProperty("pump_tank3_right", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank3_right")) -- насосы бака 3
defineProperty("pump_tank4", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank4")) -- насосы бака 4
defineProperty("pump_tank1_1", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_1")) -- насосы бака 1
defineProperty("pump_tank1_2", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_2")) -- насосы бака 1
defineProperty("pump_tank1_3", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_3")) -- насосы бака 1
defineProperty("pump_tank1_4", globalPropertyi("tu154b2/custom/switchers/fuel/pump_tank1_4")) -- насосы бака 1

defineProperty("fuel_level", globalPropertyi("tu154b2/custom/switchers/fuel/fuel_level")) -- автомат выравнивания
defineProperty("fuel_flow_mode", globalPropertyi("tu154b2/custom/switchers/fuel/fuel_flow_mode")) -- режим расходомера. ручное - автомат
defineProperty("fuel_flow_on", globalPropertyi("tu154b2/custom/switchers/fuel/fuel_flow_on")) -- автомат расхода


-- power sources
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

-- failures
defineProperty("fuel_auto_fail", globalPropertyi("tu154b2/custom/failures/fuel_auto_fail"))
defineProperty("fuel_level_fail", globalPropertyi("tu154b2/custom/failures/fuel_level_fail"))

defineProperty("fuel_pump_2l_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_2l_fail")) -- number of failed pumps
defineProperty("fuel_pump_2r_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_2r_fail"))
defineProperty("fuel_pump_3l_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_3l_fail"))
defineProperty("fuel_pump_3r_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_3r_fail"))
defineProperty("fuel_pump_1_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_1_fail"))
defineProperty("fuel_pump_4_fail", globalPropertyi("tu154b2/custom/failures/fuel_pump_4_fail"))


-- results
defineProperty("pump_tank2_left1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_left_work1"))
defineProperty("pump_tank2_left2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_left_work2"))
defineProperty("pump_tank2_right1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_right_work1"))
defineProperty("pump_tank2_right2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank2_right_work2"))
defineProperty("pump_tank3_left1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work1"))
defineProperty("pump_tank3_left2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work2"))
defineProperty("pump_tank3_left3_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_left_work3"))
defineProperty("pump_tank3_right1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work1"))
defineProperty("pump_tank3_right2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work2"))
defineProperty("pump_tank3_right3_work", globalPropertyi("tu154b2/custom/fuel/pump_tank3_right_work3"))
defineProperty("pump_tank41_work", globalPropertyi("tu154b2/custom/fuel/pump_tank4_work1"))
defineProperty("pump_tank42_work", globalPropertyi("tu154b2/custom/fuel/pump_tank4_work2"))
defineProperty("pump_tank1_1_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_1_work"))
defineProperty("pump_tank1_2_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_2_work"))
defineProperty("pump_tank1_3_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_3_work"))
defineProperty("pump_tank1_4_work", globalPropertyi("tu154b2/custom/fuel/pump_tank1_4_work"))

defineProperty("auto_tanks_turn", globalPropertyi("tu154b2/custom/fuel/auto_tanks_turn")) -- 0 = none, 1 = 2, 2 = 2+3, 3 = 3, 4 = 4
--defineProperty("auto_tank_level", globalPropertyi("tu154b2/custom/fuel/auto_tank_level")) -- выравнивание в баках. -2 - 2L, -3 - 3L, +3 - 3R, +2 - 2R	0

defineProperty("auto_tank_level_2", globalPropertyi("tu154b2/custom/fuel/auto_tank_level_2")) -- выравнивание в баках 2. -1 = L, 0 = none, +1 = R	0
defineProperty("auto_tank_level_3", globalPropertyi("tu154b2/custom/fuel/auto_tank_level_3")) -- выравнивание в баках 3. -1 = L, 0 = none, +1 = R	0


defineProperty("fuel_pumps_115_1_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_115_1_cc")) -- нагрузка на сеть 1 от топливных насосов
defineProperty("fuel_pumps_115_3_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_115_3_cc")) -- нагрузка на сеть 3 от топливных насосов

defineProperty("fuel_pumps_115_avtL_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_115_aL_cc")) -- нагрузка на сеть 1 от топливных насосов
defineProperty("fuel_pumps_115_avtR_cc", globalPropertyf("tu154b2/custom/elec/fuel_pumps_115_aR_cc")) -- нагрузка на сеть 3 от топливных насосов

defineProperty("avtoL_volt", globalPropertyf("tu154b2/custom/elec/avto_L_volt"))
defineProperty("avtoR_volt", globalPropertyf("tu154b2/custom/elec/avto_R_volt"))

avtoL_load_A = globalPropertyf("tu154b2/custom/elec/avto_L_amp_A")
avtoL_load_B = globalPropertyf("tu154b2/custom/elec/avto_L_amp_B")
avtoL_load_C = globalPropertyf("tu154b2/custom/elec/avto_L_amp_C")
avtoR_load_A = globalPropertyf("tu154b2/custom/elec/avto_R_amp_A")
avtoR_load_B = globalPropertyf("tu154b2/custom/elec/avto_R_amp_B")
avtoR_load_C = globalPropertyf("tu154b2/custom/elec/avto_R_amp_C")
-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- fuel press after pumps
local pump_1_1_P = 1
local pump_1_2_P = 1
local pump_1_3_P = 1
local pump_1_4_P = 1

local pump_2L1_P = 1
local pump_2L2_P = 1
local pump_2R1_P = 1
local pump_2R2_P = 1

local pump_3L1_P = 1
local pump_3L2_P = 1
local pump_3L3_P = 1
local pump_3R1_P = 1
local pump_3R2_P = 1
local pump_3R3_P = 1

local pump_41_P = 1
local pump_42_P = 1

local pump2L1_start = 0
local pump2L2_start = 0
local pump2R1_start = 0
local pump2R2_start = 0
local pump3L1_start = 0
local pump3L2_start = 0
local pump3L3_start = 0
local pump3R1_start = 0
local pump3R2_start = 0
local pump3R3_start = 0
local pump41_start = 0
local pump42_start = 0

local pump1_1_start = 0
local pump1_2_start = 0
local pump1_3_start = 0
local pump1_4_start = 0

local pump2L1_work_prev = 0
local pump2L2_work_prev = 0
local pump2R1_work_prev = 0
local pump2R2_work_prev = 0
local pump3L1_work_prev = 0
local pump3L2_work_prev = 0
local pump3L3_work_prev = 0
local pump3R1_work_prev = 0
local pump3R2_work_prev = 0
local pump3R3_work_prev = 0
local pump41_work_prev = 0
local pump42_work_prev = 0

local pump1_1_work_prev = 0
local pump1_2_work_prev = 0
local pump1_3_work_prev = 0
local pump1_4_work_prev = 0


function update()
	local passed = get(frame_time)
	
	-- check power
	local power_27L = get(bus27_volt_left) > 13
	local power_27R = get(bus27_volt_right) > 13
	local power115L = bool2int(get(bus115_1_volt) > 100)
	local power115R = bool2int(get(bus115_3_volt) > 100)
	local power_avtL=bool2int(get(avtoL_volt) > 100)
	local power_avtR=bool2int(get(avtoR_volt) > 100)
	
	-- fuel quantity
	local tank_qty_2L = get(tank2L_w)
	local tank_qty_2R = get(tank2R_w)
	local tank_qty_3L = get(tank3L_w)
	local tank_qty_3R = get(tank3R_w)
	local tank_qty_4 = get(tank4_w)
	
	-- tanks has fuel
	local fuel_1 = get(tank1_w) > 150
	local fuel_2L = tank_qty_2L > 60
	local fuel_2R = tank_qty_2R > 60
	local fuel_3L = tank_qty_3L > 200
	local fuel_3R = tank_qty_3R > 200
	local fuel_4 = tank_qty_4 > 50
	

	
	-- main pumps logic
	local pump2L1_work = 0
	local pump2L2_work = 0
	local pump2R1_work = 0
	local pump2R2_work = 0
	local pump3L1_work = 0
	local pump3L2_work = 0
	local pump3L3_work = 0
	local pump3R1_work = 0
	local pump3R2_work = 0
	local pump3R3_work = 0
	local pump41_work = 0
	local pump42_work = 0
	
	local pump1_1_work = 0
	local pump1_2_work = 0
	local pump1_3_work = 0
	local pump1_4_work = 0

	local tank_level_2 = 0
	local tank_level_3 = 0
	
	
	
	-- calculate automatic cue mode
	local tanks_turn = 0 -- 0 = none, 1 = 2, 2 = 2+3, 3 = 3, 4 = 4
	if (power_27L or power_27R) and get(fuel_flow_on) == 1 and get(fuel_auto_fail) == 0 then
		if tank_qty_2L + tank_qty_2R > 7400 then tanks_turn = 1
		elseif tank_qty_2L + tank_qty_2R <= 7400 and (fuel_2L or fuel_2R) and (fuel_3L or fuel_3R) then tanks_turn = 2
		elseif fuel_3L or fuel_3R then tanks_turn = 3
		elseif fuel_2L or fuel_2R then tanks_turn = 1
		elseif fuel_4 then tanks_turn = 4
		end
	end
	
	
	-- manipulate pumps by automatic cue
	if tanks_turn > 0 and get(fuel_flow_mode) == 1 then -- automatic mode
		if tanks_turn == 1 then
			-- tank 2
			if tank_qty_2L > 500 then 
				pump2L1_work = math.max(0, 1 - bool2int(get(fuel_pump_2l_fail)>0))*power115L
				pump2L2_work = math.max(0, 1 - bool2int(get(fuel_pump_2l_fail)>1))*power_avtR
			elseif fuel_2L then 
				pump2L1_work = math.max(0, get(pump_tank2_left) - bool2int(get(fuel_pump_2l_fail)>0))*power115L
				pump2L2_work = math.max(0, get(pump_tank2_left) - bool2int(get(fuel_pump_2l_fail)>1))*power_avtR
			end
			
			if tank_qty_2R > 500 then 
				pump2R1_work = math.max(0, 1 - bool2int(get(fuel_pump_2r_fail)>0))*power115L
				pump2R2_work = math.max(0, 1 - bool2int(get(fuel_pump_2r_fail)>1))*power_avtR
			elseif fuel_2R then 
				pump2R1_work = math.max(0, get(pump_tank2_right) - bool2int(get(fuel_pump_2r_fail)>0))*power115L
				pump2R2_work = math.max(0, get(pump_tank2_right) - bool2int(get(fuel_pump_2r_fail)>1))*power_avtR
			end
				
			-- if tank_qty_2R > 500 then pump2R_work = math.max(0, 2 - get(fuel_pump_2r_fail))
			-- elseif fuel_2R then pump2R_work = math.max(0, get(pump_tank2_right) * 2 - get(fuel_pump_2r_fail)) end
			
		elseif tanks_turn == 2 then
			-- tank 2
			-- if tank_qty_2L > 500 then pump2L_work = math.max(0, 2 - get(fuel_pump_2l_fail))
			-- elseif fuel_2L then pump2L_work = math.max(0, get(pump_tank2_left) * 2 - get(fuel_pump_2l_fail)) end
	
			-- if tank_qty_2R > 500 then pump2R_work = math.max(0, 2 - get(fuel_pump_2r_fail))
			-- elseif fuel_2R then pump2R_work = math.max(0, get(pump_tank2_right) * 2 - get(fuel_pump_2r_fail)) end
			
			if tank_qty_2L > 500 then 
				pump2L1_work = math.max(0, 1 - bool2int(get(fuel_pump_2l_fail)>0))*power115L
				pump2L2_work = math.max(0, 1 - bool2int(get(fuel_pump_2l_fail)>1))*power_avtR
			elseif fuel_2L then 
				pump2L1_work = math.max(0, get(pump_tank2_left) - bool2int(get(fuel_pump_2l_fail)>0))*power115L
				pump2L2_work = math.max(0, get(pump_tank2_left) - bool2int(get(fuel_pump_2l_fail)>1))*power_avtR
			end
			
			if tank_qty_2R > 500 then 
				pump2R1_work = math.max(0, 1 - bool2int(get(fuel_pump_2r_fail)>0))*power115L
				pump2R2_work = math.max(0, 1 - bool2int(get(fuel_pump_2r_fail)>1))*power_avtR
			elseif fuel_2R then 
				pump2R1_work = math.max(0, get(pump_tank2_right) - bool2int(get(fuel_pump_2r_fail)>0))*power115L
				pump2R2_work = math.max(0, get(pump_tank2_right) - bool2int(get(fuel_pump_2r_fail)>1))*power_avtR
			end
		
			-- tank 3
			if tank_qty_3L > 500 then 
				pump3L1_work = math.max(0, 1 - bool2int(get(fuel_pump_3l_fail)>0))*power115R
				pump3L2_work = math.max(0, 1 - bool2int(get(fuel_pump_3l_fail)>1))*power_avtL
				pump3L3_work = math.max(0, 1 - bool2int(get(fuel_pump_3l_fail)>2))*power115R
			elseif fuel_3L then 
				pump3L1_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>0))*power115R
				pump3L2_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>1))*power_avtL
				pump3L3_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>2))*power115R
			end

			if tank_qty_3R > 500 then 
				pump3R1_work = math.max(0, 1 - bool2int(get(fuel_pump_3r_fail)>0))*power115R
				pump3R2_work = math.max(0, 1 - bool2int(get(fuel_pump_3r_fail)>1))*power_avtL
				pump3R3_work = math.max(0, 1 - bool2int(get(fuel_pump_3r_fail)>2))*power115R
			elseif fuel_3R then 
				pump3R1_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>0))*power115R
				pump3R2_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>1))*power_avtL
				pump3R3_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>2))*power115R
			end
						
			
			-- if tank_qty_3L > 2200 then pump3L_work = math.max(0, 3 - get(fuel_pump_3l_fail))
			-- elseif fuel_3L then pump3L_work = math.max(0, get(pump_tank3_left) * 3 - get(fuel_pump_3l_fail)) end
	
			-- if tank_qty_3R > 2200 then pump3R_work = math.max(0, 3 - get(fuel_pump_3r_fail))
			-- elseif fuel_3R then pump3R_work = math.max(0, get(pump_tank3_right) * 3 - get(fuel_pump_3r_fail)) end
			
		elseif tanks_turn == 3 then
			-- tank 3
			if tank_qty_3L > 500 then 
				pump3L1_work = math.max(0, 1 - bool2int(get(fuel_pump_3l_fail)>0))*power115R
				pump3L2_work = math.max(0, 1 - bool2int(get(fuel_pump_3l_fail)>1))*power_avtL
				pump3L3_work = math.max(0, 1 - bool2int(get(fuel_pump_3l_fail)>2))*power115R
			elseif fuel_3L then 
				pump3L1_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>0))*power115R
				pump3L2_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>1))*power_avtL
				pump3L3_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>2))*power115R
			end

			if tank_qty_3R > 500 then 
				pump3R1_work = math.max(0, 1 - bool2int(get(fuel_pump_3r_fail)>0))*power115R
				pump3R2_work = math.max(0, 1 - bool2int(get(fuel_pump_3r_fail)>1))*power_avtL
				pump3R3_work = math.max(0, 1 - bool2int(get(fuel_pump_3r_fail)>2))*power115R
			elseif fuel_3R then 
				pump3R1_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>0))*power115R
				pump3R2_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>1))*power_avtL
				pump3R3_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>2))*power115R
			end
			-- if tank_qty_3L > 2200 then pump3L_work = math.max(0, 3 - get(fuel_pump_3l_fail))
			-- elseif fuel_3L then pump3L_work = math.max(0, get(pump_tank3_left) * 3 - get(fuel_pump_3l_fail)) end
	
			-- if tank_qty_3R > 2200 then pump3R_work = math.max(0, 3 - get(fuel_pump_3r_fail))
			-- elseif fuel_3R then pump3R_work = math.max(0, get(pump_tank3_right) * 3 - get(fuel_pump_3r_fail)) end
		
		elseif tanks_turn == 4 then
			-- tank 4
			if tank_qty_4 > 600 then
				pump41_work = math.max(0, 1 - bool2int(get(fuel_pump_4_fail)>0))*power_avtL
				pump42_work = math.max(0, 1 - bool2int(get(fuel_pump_4_fail)>1))*power115R
			elseif fuel_4 then
				pump41_work = math.max(0, get(pump_tank4) - bool2int(get(fuel_pump_4_fail)>0))*power_avtL
				pump42_work = math.max(0, get(pump_tank4) - bool2int(get(fuel_pump_4_fail)>1))*power115R
			end
			
			-- if tank_qty_4 > 600 then pump4_work = math.max(0, 2 - get(fuel_pump_4_fail))
			-- elseif fuel_4 then pump4_work = math.max(0, get(pump_tank4) * 2 - get(fuel_pump_4_fail)) end
		
		end
		
	else -- manual mode
		
		-- if fuel_2L then pump2L_work = math.max(0, get(pump_tank2_left) * 2 - get(fuel_pump_2l_fail)) end
		-- if fuel_2R then pump2R_work = math.max(0, get(pump_tank2_right) * 2 - get(fuel_pump_2r_fail)) end
		if fuel_2L then 
			pump2L1_work = math.max(0, get(pump_tank2_left) - bool2int(get(fuel_pump_2l_fail)>0))*power115L
			pump2L2_work = math.max(0, get(pump_tank2_left) - bool2int(get(fuel_pump_2l_fail)>1))*power_avtR
		end
		if fuel_2R then 
			pump2R1_work = math.max(0, get(pump_tank2_right) - bool2int(get(fuel_pump_2r_fail)>0))*power115L
			pump2R2_work = math.max(0, get(pump_tank2_right) - bool2int(get(fuel_pump_2r_fail)>1))*power_avtR
		end
		
		
		-- if fuel_3L then pump3L_work = math.max(0, get(pump_tank3_left) * 3 - get(fuel_pump_3l_fail)) end
		-- if fuel_3R then pump3R_work = math.max(0, get(pump_tank3_right) * 3 - get(fuel_pump_3r_fail)) end
		
		if fuel_3L then 
			pump3L1_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>0))*power115R
			pump3L2_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>1))*power_avtL
			pump3L3_work = math.max(0, get(pump_tank3_left) - bool2int(get(fuel_pump_3l_fail)>2))*power115R
		end
		if fuel_3R then 
			pump3R1_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>0))*power115R
			pump3R2_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>1))*power_avtL
			pump3R3_work = math.max(0, get(pump_tank3_right) - bool2int(get(fuel_pump_3r_fail)>2))*power115R
		end
		
		-- if fuel_4 then pump4_work = math.max(0, get(pump_tank4) * 2 - get(fuel_pump_4_fail)) end
		if fuel_4 then
			pump41_work = math.max(0, get(pump_tank4) - bool2int(get(fuel_pump_4_fail)>0))*power_avtL
			pump42_work = math.max(0, get(pump_tank4) - bool2int(get(fuel_pump_4_fail)>1))*power115R
		end
		--print(pump3L_work.."  "..pump3R_work)
		
		
	end
	
	
	-- leveling logic. 		
	if get(fuel_level) == 1 and get(fuel_level_fail) == 0 then
		if tank_qty_2R - tank_qty_2L > 350 then
			tank_level_2 = -1
			pump2L1_work = 0
			pump2L2_work = 0
		elseif tank_qty_2L - tank_qty_2R > 350 then
			tank_level_2 = 1
			pump2R1_work = 0
			pump2R2_work = 0			
		else
			tank_level_2 = 0
		end
		
		if tank_qty_3R - tank_qty_3L > 300 then
			tank_level_3 = -1
			pump3L1_work = 0
			pump3L2_work = 0
			pump3L3_work = 0
		elseif tank_qty_3L - tank_qty_3R > 300 then
			tank_level_3 = 1
			pump3R1_work = 0	
			pump3R2_work = 0	
			pump3R3_work = 0	
		else
			tank_level_3 = 0
		end
	
	end
	
	
	
	-- pumps 1 works separately from atomatics
	if fuel_1 then
		pump1_1_work = get(pump_tank1_1) * bool2int(get(fuel_pump_1_fail) < 1)*power115L
		pump1_2_work = get(pump_tank1_2) * bool2int(get(fuel_pump_1_fail) < 4)*power_avtR
		pump1_3_work = get(pump_tank1_3) * bool2int(get(fuel_pump_1_fail) < 3)*power_avtL
		pump1_4_work = get(pump_tank1_4) * bool2int(get(fuel_pump_1_fail) < 2)*power_avtR
	end
	
	

	
	-- calculate pressures
	-- if pump2L_work > 0 and pump_2L_P < 1 then 
		-- pump_2L_P = pump_2L_P + passed * 0.8
	-- elseif pump_2L_P > 0 then 
		-- pump_2L_P = pump_2L_P - passed * 0.8 
	-- end
	if pump2L1_work > 0 and pump_2L1_P < 1 then 
		pump_2L1_P = pump_2L1_P + passed * 0.8
	elseif pump_2L1_P > 0 then 
		pump_2L1_P = pump_2L1_P - passed * 0.8 
	end
	
	if pump2L2_work > 0 and pump_2L2_P < 1 then 
		pump_2L2_P = pump_2L2_P + passed * 0.8
	elseif pump_2L2_P > 0 then 
		pump_2L2_P = pump_2L2_P - passed * 0.8 
	end

	-- if pump2R_work > 0 and pump_2R_P < 1 then 
		-- pump_2R_P = pump_2R_P + passed * 0.8
	-- elseif pump_2R_P > 0 then 
		-- pump_2R_P = pump_2R_P - passed * 0.8 
	-- end	
	
	if pump2R1_work > 0 and pump_2R1_P < 1 then 
		pump_2R1_P = pump_2R1_P + passed * 0.8
	elseif pump_2R1_P > 0 then 
		pump_2R1_P = pump_2R1_P - passed * 0.8 
	end
	
	if pump2R2_work > 0 and pump_2R2_P < 1 then 
		pump_2R2_P = pump_2R2_P + passed * 0.8
	elseif pump_2R2_P > 0 then 
		pump_2R2_P = pump_2R2_P - passed * 0.8 
	end

	-- if pump3L_work > 0 and pump_3L_P < 1 then pump_3L_P = pump_3L_P + passed * 0.8
	-- elseif pump_3L_P > 0 then pump_3L_P = pump_3L_P - passed * 0.8 end

	-- if pump3R_work > 0 and pump_3R_P < 1 then pump_3R_P = pump_3R_P + passed * 0.8
	-- elseif pump_3R_P > 0 then pump_3R_P = pump_3R_P - passed * 0.8 end	
	
	if pump3L1_work > 0 and pump_3L1_P < 1 then 
		pump_3L1_P = pump_3L1_P + passed * 0.8
	elseif pump_3L1_P > 0 then 
		pump_3L1_P = pump_3L1_P - passed * 0.8 
	end

	if pump3L2_work > 0 and pump_3L2_P < 1 then 
		pump_3L2_P = pump_3L2_P + passed * 0.8
	elseif pump_3L2_P > 0 then 
		pump_3L2_P = pump_3L2_P - passed * 0.8 
	end

	if pump3L3_work > 0 and pump_3L3_P < 1 then 
		pump_3L3_P = pump_3L3_P + passed * 0.8
	elseif pump_3L3_P > 0 then 
		pump_3L3_P = pump_3L3_P - passed * 0.8 
	end
	
	if pump3R1_work > 0 and pump_3R1_P < 1 then 
		pump_3R1_P = pump_3R1_P + passed * 0.8
	elseif pump_3R1_P > 0 then 
		pump_3R1_P = pump_3R1_P - passed * 0.8 
	end

	if pump3R2_work > 0 and pump_3R2_P < 1 then 
		pump_3R2_P = pump_3R2_P + passed * 0.8
	elseif pump_3R2_P > 0 then 
		pump_3R2_P = pump_3R2_P - passed * 0.8 
	end

	if pump3R3_work > 0 and pump_3R3_P < 1 then 
		pump_3R3_P = pump_3R3_P + passed * 0.8
	elseif pump_3R3_P > 0 then 
		pump_3R3_P = pump_3R3_P - passed * 0.8 
	end	
				
	-- if pump4_work > 0 and pump_4_P < 1 then pump_4_P = pump_4_P + passed * 0.8
	-- elseif pump_4_P > 0 then pump_4_P = pump_4_P - passed * 0.8 end	
	
	if pump41_work > 0 and pump_41_P < 1 then 
		pump_41_P = pump_41_P + passed * 0.8
	elseif pump_41_P > 0 then 
		pump_41_P = pump_41_P - passed * 0.8 
	end
	
	if pump42_work > 0 and pump_42_P < 1 then 
		pump_42_P = pump_42_P + passed * 0.8
	elseif pump_42_P > 0 then 
		pump_42_P = pump_42_P - passed * 0.8 
	end
	
	if pump1_1_work == 1 and pump_1_1_P < 1 then pump_1_1_P = pump_1_1_P + passed * 0.8
	elseif pump_1_1_P > 0 then pump_1_1_P = pump_1_1_P - passed * 0.8 end		

	if pump1_2_work == 1 and pump_1_2_P < 1 then pump_1_2_P = pump_1_2_P + passed * 0.8
	elseif pump_1_2_P > 0 then pump_1_2_P = pump_1_2_P - passed * 0.8 end		

	if pump1_3_work == 1 and pump_1_3_P < 1 then pump_1_3_P = pump_1_3_P + passed * 0.8
	elseif pump_1_3_P > 0 then pump_1_3_P = pump_1_3_P - passed * 0.8 end	
	
	if pump1_4_work == 1 and pump_1_4_P < 1 then pump_1_4_P = pump_1_4_P + passed * 0.8
	elseif pump_1_4_P > 0 then pump_1_4_P = pump_1_4_P - passed * 0.8 end	
	
	--startup current
	-- feed pumps
	if pump1_1_work~=pump1_1_work_prev then
		pump1_1_start=1.85
	end
	pump1_1_work_prev=pump1_1_work
	if pump1_1_start>1 then
		pump1_1_start=pump1_1_start-passed*0.85
	elseif pump1_1_start<1 then
		pump1_1_start=1
	end
	
	if pump1_2_work~=pump1_2_work_prev then
		pump1_2_start=1.85
	end
	pump1_2_work_prev=pump1_2_work
	if pump1_2_start>1 then
		pump1_2_start=pump1_2_start-passed*0.85
	elseif pump1_2_start<1 then
		pump1_2_start=1
	end
	
	if pump1_3_work~=pump1_3_work_prev then
		pump1_3_start=1.85
	end
	pump1_3_work_prev=pump1_3_work
	if pump1_3_start>1 then
		pump1_3_start=pump1_3_start-passed*0.85
	elseif pump1_3_start<1 then
		pump1_3_start=1
	end
	
	if pump1_4_work~=pump1_4_work_prev then
		pump1_4_start=1.85
	end
	pump1_4_work_prev=pump1_4_work
	if pump1_4_start>1 then
		pump1_4_start=pump1_4_start-passed*0.85
	elseif pump1_4_start<1 then
		pump1_4_start=1
	end
	--4
	if pump41_work~=pump41_work_prev then
		pump41_start=2.2
	end
	pump41_work_prev=pump41_work
	if pump41_start>1 then
		pump41_start=pump41_start-passed*1.2
	elseif pump41_start<1 then
		pump41_start=1
	end
	
	if pump42_work~=pump42_work_prev then
		pump42_start=2.2
	end
	pump42_work_prev=pump42_work
	if pump42_start>1 then
		pump42_start=pump42_start-passed*1.2
	elseif pump42_start<1 then
		pump42_start=1
	end
	
	-- 2 left
	
	if pump2L1_work~=pump2L1_work_prev then
		pump2L1_start=2.2
	end
	pump2L1_work_prev=pump2L1_work
	if pump2L1_start>1 then
		pump2L1_start=pump2L1_start-passed*1.2
	elseif pump2L1_start<1 then
		pump2L1_start=1
	end
	
	if pump2L2_work~=pump2L2_work_prev then
		pump2L2_start=2.2
	end
	pump2L2_work_prev=pump2L2_work
	if pump2L2_start>1 then
		pump2L2_start=pump2L2_start-passed*1.2
	elseif pump2L2_start<1 then
		pump2L2_start=1
	end
	-- 2 right
	if pump2R1_work~=pump2R1_work_prev then
		pump2R1_start=2.2
	end
	pump2R1_work_prev=pump2R1_work
	if pump2R1_start>1 then
		pump2R1_start=pump2R1_start-passed*1.2
	elseif pump2R1_start<1 then
		pump2R1_start=1
	end
	
	if pump2R2_work~=pump2R2_work_prev then
		pump2R2_start=2.2
	end
	pump2R2_work_prev=pump2R2_work
	if pump2R2_start>1 then
		pump2R2_start=pump2R2_start-passed*1.2
	elseif pump2R2_start<1 then
		pump2R2_start=1
	end
	-- 3 left
	
	if pump3L1_work~=pump3L1_work_prev then
		pump3L1_start=2.2
	end
	pump3L1_work_prev=pump3L1_work
	if pump3L1_start>1 then
		pump3L1_start=pump3L1_start-passed*1.2
	elseif pump3L1_start<1 then
		pump3L1_start=1
	end
	
	if pump3L2_work~=pump3L2_work_prev then
		pump3L2_start=2.2
	end
	pump3L2_work_prev=pump3L2_work
	if pump3L2_start>1 then
		pump3L2_start=pump3L2_start-passed*1.2
	elseif pump3L2_start<1 then
		pump3L2_start=1
	end
	
	if pump3L3_work~=pump3L3_work_prev then
		pump3L3_start=2.2
	end
	pump3L3_work_prev=pump3L3_work
	if pump3L3_start>1 then
		pump3L3_start=pump3L3_start-passed*1.2
	elseif pump3L3_start<1 then
		pump3L3_start=1
	end
	-- 3 right
	if pump3R1_work~=pump3R1_work_prev then
		pump3R1_start=2.2
	end
	pump3R1_work_prev=pump3R1_work
	if pump3R1_start>1 then
		pump3R1_start=pump3R1_start-passed*1.2
	elseif pump3R1_start<1 then
		pump3R1_start=1
	end
	
	if pump3R2_work~=pump3R2_work_prev then
		pump3R2_start=2.2
	end
	pump3R2_work_prev=pump3R2_work
	if pump3R2_start>1 then
		pump3R2_start=pump3R2_start-passed*1.2
	elseif pump3R2_start<1 then
		pump3R2_start=1
	end
	
	if pump3R3_work~=pump3R3_work_prev then
		pump3R3_start=2.2
	end
	pump3R3_work_prev=pump3R3_work
	if pump3R3_start>1 then
		pump3R3_start=pump3R3_start-passed*1.2
	elseif pump3R3_start<1 then
		pump3R3_start=1
	end
	
	-- calculate electrics
	local bus_1_load = pump1_1_work*pump1_1_start * 4.5 + (pump2L1_work*pump2L1_start  + pump2R1_work*pump2R1_start ) * 0.9
	local bus_3_load =(pump42_work*pump42_start + pump3L1_work*pump3L1_start  + pump3R1_work*pump3R1_start + pump3L3_work*pump3L3_start  + pump3R3_work*pump3R3_start ) * 0.9
	local avtL_load = pump1_3_work*pump1_3_start * 4.5 + (pump3L2_work*pump3L2_start  + pump3R2_work*pump3R2_start +pump41_work*pump41_start) * 0.9
	local avtR_load =(pump1_2_work*pump1_2_start+pump1_4_work*pump1_4_start) * 4.5 + (pump2L2_work*pump2L2_start  + pump2R2_work*pump2R2_start ) * 0.9
	-- pump for APU consumes 15A from 27v bus
	
	
	-- set results
	set(pump_tank2_left1_work, bool2int(pump_2L1_P > 0.9) )
	set(pump_tank2_left2_work, bool2int(pump_2L2_P > 0.9) )
	set(pump_tank2_right1_work, bool2int(pump_2R1_P > 0.9) )
	set(pump_tank2_right2_work, bool2int(pump_2R2_P > 0.9) )
	
	set(pump_tank3_left1_work, bool2int(pump_3L1_P > 0.9) )
	set(pump_tank3_left2_work, bool2int(pump_3L2_P > 0.9) )
	set(pump_tank3_left3_work, bool2int(pump_3L3_P > 0.9) )
	set(pump_tank3_right1_work, bool2int(pump_3R1_P > 0.9) )
	set(pump_tank3_right2_work, bool2int(pump_3R2_P > 0.9) )
	set(pump_tank3_right3_work, bool2int(pump_3R3_P > 0.9) )
	
	
	set(pump_tank41_work, bool2int(pump_41_P > 0.9) )
	set(pump_tank42_work, bool2int(pump_42_P > 0.9) )
	set(pump_tank1_1_work, bool2int(pump_1_1_P > 0.9))
	set(pump_tank1_2_work, bool2int(pump_1_2_P > 0.9))
	set(pump_tank1_3_work, bool2int(pump_1_3_P > 0.9))
	set(pump_tank1_4_work, bool2int(pump_1_4_P > 0.9))

	set(auto_tanks_turn, tanks_turn)
	set(auto_tank_level_2, tank_level_2)
	set(auto_tank_level_3, tank_level_3)
	
	set(fuel_pumps_115_1_cc, bus_1_load)
	set(fuel_pumps_115_3_cc, bus_3_load)
	set(avtoL_load_A,avtL_load)
	set(avtoL_load_B,avtL_load)
	set(avtoL_load_C,avtL_load)
	set(avtoR_load_A,avtR_load)
	set(avtoR_load_B,avtR_load)
	set(avtoR_load_C,avtR_load)
	
	
end



