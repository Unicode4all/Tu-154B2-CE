-- this is fire system's logic

-- sim variables
sim_engine_on_fire1 = globalPropertyi("sim/operation/failures/rel_engfir0")  -- left engine on fire
sim_engine_on_fire2 = globalPropertyi("sim/operation/failures/rel_engfir1")  -- mid engine on fire
sim_engine_on_fire3 = globalPropertyi("sim/operation/failures/rel_engfir2")  -- right engine on fire
sim_engine_on_fire4 = globalPropertyi("sim/operation/failures/rel_engfir3")  -- apu on fire



sim_engine_ext1 = globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[0]")  -- left engine fire extinguiher
sim_engine_ext2 = globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[1]")  -- mid engine fire extinguiher
sim_engine_ext3 = globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[2]")  -- right engine fire extinguiher
sim_engine_ext4 = globalProperty("sim/cockpit2/engine/actuators/fire_extinguisher_on[3]")  -- apu fire extinguiher

-- controls
lamp_test = globalPropertyi("tu154b2/custom/buttons/lamp_test_fire_panel") -- кнопка проверки ламп на пожарной панели	0
--smoke_test = globalPropertyi("tu154b2/custom/buttons/eng/smoke_test") -- проверка датчиков дыма
ext_test = globalPropertyi("tu154b2/custom/buttons/eng/ext_test") -- проверка огнетушителей


fire_ext_1 = globalPropertyi("tu154b2/custom/buttons/eng/fire_ext_1") -- очередь тушения пожара
fire_ext_2 = globalPropertyi("tu154b2/custom/buttons/eng/fire_ext_2") -- очередь тушения пожара
fire_ext_3 = globalPropertyi("tu154b2/custom/buttons/eng/fire_ext_3") -- очередь тушения пожара
cold_eng_1 = globalPropertyi("sim/custom/b2/fire_eng1_button") -- подача хладона
cold_eng_2 = globalPropertyi("sim/custom/b2/fire_eng2_button") -- подача хладона
cold_eng_3 = globalPropertyi("sim/custom/b2/fire_eng3_button") -- подача хладона
cold_apu = globalPropertyi("sim/custom/b2/fire_apu_button") -- подача хладона
neutral_gas = globalPropertyi("tu154b2/custom/buttons/eng/neutral_gas") -- нейтральный газ

fire_sensor_sel = globalPropertyi("tu154b2/custom/switchers/eng/fire_sensor_sel") -- выбор группы датчиков
fire_place_sel = globalPropertyi("tu154b2/custom/switchers/eng/fire_place_sel") -- выбор отсека

fire_main_switch = globalPropertyi("tu154b2/custom/switchers/eng/fire_main_switch") -- выключатель пожарной системы
fire_buzzer = globalPropertyi("tu154b2/custom/switchers/eng/fire_buzzer") -- пожарная сирена

-- power
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")

fire_sys_cc = globalPropertyf("tu154b2/custom/fire/fire_sys_cc") -- потребление тока пожарной системой



-- results
ext_used_1 = globalPropertyi("tu154b2/custom/fire/ext_used_1") -- огнетушитель использован
ext_used_2 = globalPropertyi("tu154b2/custom/fire/ext_used_2") -- огнетушитель использован
ext_used_3 = globalPropertyi("tu154b2/custom/fire/ext_used_3") -- огнетушитель использован

ng_used = globalPropertyi("tu154b2/custom/fire/ng_used") -- НГ использован

valve_open_1 = globalPropertyi("tu154b2/custom/fire/valve_open_1") -- кран тушения двиг 1
valve_open_2 = globalPropertyi("tu154b2/custom/fire/valve_open_2") -- кран тушения двиг 2
valve_open_3 = globalPropertyi("tu154b2/custom/fire/valve_open_3") -- кран тушения двиг 3
valve_open_4 = globalPropertyi("tu154b2/custom/fire/valve_open_4") -- кран тушения ВСУ

engine_fire_state_1 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_1") -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
engine_fire_state_2 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_2") -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
engine_fire_state_3 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_3") -- состояние двигателя. 0 - норм, 1 - перегрев, 2 - пожар
engine_fire_state_4 = globalPropertyi("tu154b2/custom/fire/engine_fire_state_4") -- состояние ВСУ. 0 - норм, 1 - перегрев, 2 - пожар

fire_detected = globalPropertyi("tu154b2/custom/fire/fire_detected") -- обнаружен пожар

fire_siren = globalPropertyi("tu154b2/custom/fire/fire_siren") -- работа сирены



fire_vlv_open_1 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_1") -- пожарный кран открыт
fire_vlv_open_2 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_2") -- пожарный кран открыт
fire_vlv_open_3 = globalPropertyf("tu154b2/custom/fuel/fire_vlv_open_3") -- пожарный кран открыт
fire_vlv_open_4 = globalPropertyf("sim/custom/b2/apu_fire_crane") -- пожарный кран открыт



frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

test_grp = globalPropertyi("tu154b2/custom/switchers/eng/fire_place_sel")
test_sns = globalPropertyi("tu154b2/custom/switchers/eng/fire_sensor_sel")

azs1 = globalPropertyi("sim/custom/b2/azs_fireext1")
azs2 = globalPropertyi("sim/custom/b2/azs_fireext2")

smoke_test1 = globalPropertyi("sim/custom/buttons/eng/smoke_test_1") -- проверка датчиков дыма
smoke_test2 = globalPropertyi("sim/custom/buttons/eng/smoke_test_2") -- проверка датчиков дыма
smoke_test3 = globalPropertyi("sim/custom/buttons/eng/smoke_test_3") -- проверка датчиков дыма
smoke_test4 = globalPropertyi("sim/custom/buttons/eng/smoke_test_4") -- проверка датчиков дыма
smoke_test5 = globalPropertyi("sim/custom/buttons/eng/smoke_test_5") -- проверка датчиков дыма
smoke_test6 = globalPropertyi("sim/custom/buttons/eng/smoke_test_6") -- проверка датчиков дыма
smoke_test7 = globalPropertyi("sim/custom/buttons/eng/smoke_test_7") -- проверка датчиков дыма

fire_bag1 = globalPropertyi("tu154b2/custom/fire/fire_bag1")
fire_bag2 = globalPropertyi("tu154b2/custom/fire/fire_bag2")

eng1_ext = globalPropertyi("tu154b2/custom/fire/eng1_ext_used")
eng2_ext = globalPropertyi("tu154b2/custom/fire/eng2_ext_used")
eng3_ext = globalPropertyi("tu154b2/custom/fire/eng3_ext_used")
eng4_ext = globalPropertyi("tu154b2/custom/fire/apu_ext_used")

apu_fail = globalPropertyi("sim/operation/failures/rel_engfai3")
-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local valve_1 = get(valve_open_1)
local valve_2 = get(valve_open_2)
local valve_3 = get(valve_open_3)
local valve_4 = get(valve_open_4)
local test_group_prev=0
local test_sens_prev=0
local smoke_test_act=0
local fire_detector=0
local fire1_out=0
local fire2_out=0
local fire3_out=0
local fire4_out=0

local valves_open = 0 -- open valves counter


set(sim_engine_ext1, 0)
set(sim_engine_ext2, 0)
set(sim_engine_ext3, 0)
set(sim_engine_ext4, 0)


function update()

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	

	local passed=get(frame_time)

	local power27L = get(bus27_volt_left) > 13
	local power27R = get(bus27_volt_right) > 13
	
	-- The longer the fire burns, the less likely it will be extinguished
	local ext_th_1 = 0.9 - math.max(0 , (sys_data_tbl.eng_fire_timer_1 - 20 )/ 100)
	local ext_th_2 = 0.9 - math.max(0 , (sys_data_tbl.eng_fire_timer_2 - 20 )/ 100)
	local ext_th_3 = 0.9 - math.max(0 , (sys_data_tbl.eng_fire_timer_3 - 20 )/ 100)
	
	if power27L and get(fire_main_switch) == 1 then
		
		-- set destination manually
		if get(cold_eng_1) == 1 then valve_1 = 1 end
		if get(cold_eng_2) == 1 then valve_2 = 1 end
		if get(cold_eng_3) == 1 then valve_3 = 1 end
		if get(cold_apu) == 1 then valve_4 = 1 end
		
		-- fire test
		local test_sens=get(test_sns)
		local test_group=get(test_grp)*(1-get(azs1))
		-- fire detected
		--local fire_detected=get(sim_engine_on_fire1)+get(sim_engine_on_fire2)+get(sim_engine_on_fire3)+get(sim_engine_on_fire4)>5
		-- fire detector delay
		if (test_group>0 and test_sens>0) or get(sim_engine_on_fire1) == 6 or get(sim_engine_on_fire2) == 6 or get(sim_engine_on_fire3) == 6 or get(sim_engine_on_fire4) == 6 then
			fire_detector=fire_detector+passed
			if fire_detector>0.5 then
				fire_detector=0.5
			end
			if test_sens~=test_sens_prev or test_group~=test_group_prev then
				fire_detector=0
			end
		else
			fire_detector=0
		end
		test_sens_prev=test_sens
		test_group_prev=test_group
		
		-- set destination automatically
		local fire_1 = (get(sim_engine_on_fire1) == 6 or test_group==2) and fire_detector>0.4
		local fire_2 = (get(sim_engine_on_fire2) == 6 or test_group==3) and fire_detector>0.4
		local fire_3 = (get(sim_engine_on_fire3) == 6 or test_group==4) and fire_detector>0.4
		local fire_4 = (get(sim_engine_on_fire4) == 6 or (test_group==1 and test_sens<4)) and fire_detector>0.4
		
		if fire_1 then valve_1 = 1 end
		if fire_2 then valve_2 = 1 end
		if fire_3 then valve_3 = 1 end
		if fire_4 then valve_4 = 1 end
		
		-- use neutral gas
		if get(neutral_gas) == 1 then set(ng_used, 1) end
		
		-- extinguishers work
		valves_open = valve_1 + valve_2 + valve_3 + valve_4
		
		local ext_1_ready = get(ext_used_1) == 0 and get(azs1)>0
		local ext_2_ready = get(ext_used_2) == 0 and get(azs1)>0
		local ext_3_ready = get(ext_used_3) == 0 and get(azs2)>0
		
		local fire_1_but = get(fire_ext_1) == 1
		local fire_2_but = get(fire_ext_2) == 1
		local fire_3_but = get(fire_ext_3) == 1
		
		-- engine 1
		if valve_1 == 1 then
			if ext_1_ready then -- automatically use ext 1
				set(ext_used_1, 1) -- use extinguisher
				set(eng1_ext,1)
				--set(sim_engine_ext1, 1)
				if math.random() + get(fire_vlv_open_1)/3 < ext_th_1 / valves_open then 
					fire1_out=1
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(eng1_ext,1)
				--set(sim_engine_ext1, 1)
				if math.random() + get(fire_vlv_open_1)/3 < ext_th_1 / valves_open then 
					fire1_out=1

				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(eng1_ext,1)
				--set(sim_engine_ext1, 1)
				if math.random() + get(fire_vlv_open_1)/3 < ext_th_1 / valves_open then 
					fire1_out=1

				end
			end
			
		end
		if get(sim_engine_on_fire1)>0 and fire1_out>0 then --extinguish after time
			fire1_out=fire1_out+passed
			if fire1_out>(3+math.random()*3) then
				set(sim_engine_ext1, 1)
				set(sim_engine_on_fire1, 0)
				fire1_out=0
			end
		end

		-- engine 2
		if valve_2 == 1 then
			if ext_1_ready then -- automatically use ext 1
				set(ext_used_1, 1) -- use extinguisher
				set(eng2_ext,1)
				--set(sim_engine_ext2, 1)
				if math.random()+get(fire_vlv_open_2)/3 < ext_th_2 / valves_open then 
					fire2_out=1
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(eng2_ext,1)
				--set(sim_engine_ext2, 1)
				if math.random()+get(fire_vlv_open_2)/3 < ext_th_2 / valves_open then 
					fire2_out=1
				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(eng2_ext,1)
				--set(sim_engine_ext2, 1)
				if math.random()+get(fire_vlv_open_2)/3 < ext_th_2 / valves_open then 
					fire2_out=1
				end
			end
			
		end		
		if get(sim_engine_on_fire2)>0 and fire2_out>0 then --extinguish after time
			fire2_out=fire2_out+passed
			if fire2_out>(3+math.random()*3) then
				set(sim_engine_ext2, 1)
				set(sim_engine_on_fire2, 0)
				fire2_out=0
			end
		end
		
		-- engine 3
		if valve_3 == 1 then
			if ext_1_ready then -- automatically use ext 1
				set(ext_used_1, 1) -- use extinguisher
				set(eng3_ext,1)
				--set(sim_engine_ext3, 1)
				if math.random() + get(fire_vlv_open_3)/3 < ext_th_3 / valves_open then 
					fire3_out=1
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(eng3_ext,1)
				--set(sim_engine_ext3, 1)
				if math.random() + get(fire_vlv_open_3)/3 < ext_th_3 / valves_open then 
					fire3_out=1
				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(eng3_ext,1)
				--set(sim_engine_ext3, 1)
				if math.random() + get(fire_vlv_open_3)/3 < ext_th_3 / valves_open  then 
					fire3_out=1
				end
			end
			
		end	
		if get(sim_engine_on_fire3)>0 and fire3_out>0 then --extinguish after time
			fire3_out=fire3_out+passed
			if fire3_out>(3+math.random()*3) then
				set(sim_engine_ext3, 1)
				set(sim_engine_on_fire3, 0)
				fire3_out=0
			end
		end
		-- same way for APU
		if valve_4 == 1 then
			if ext_1_ready then -- automatically use ext 1
				set(ext_used_1, 1) -- use extinguisher
				set(eng4_ext,1)
				--set(sim_engine_ext4, 1)
				if math.random() + get(fire_vlv_open_4)/2 < 0.98 / valves_open then 
					fire4_out=1
				end
			end
			
			if ext_2_ready and fire_2_but then -- use ext 2
				set(ext_used_2, 1) -- use extinguisher
				set(eng4_ext,1)
				--set(sim_engine_ext4, 1)
				if math.random() + get(fire_vlv_open_4)/2 < 0.98 / valves_open then 
					fire4_out=1
				end
			end

			if ext_3_ready and fire_3_but then -- use ext 3
				set(ext_used_3, 1) -- use extinguisher
				set(eng4_ext,1)
				--set(sim_engine_ext4, 1)
				if math.random() + get(fire_vlv_open_4)/2 < 0.98 / valves_open then 
					fire4_out=1
				end
			end			
		end	
		if get(sim_engine_on_fire4)>0 and fire4_out>0 then --extinguish after time
			fire4_out=fire4_out+passed
			if fire4_out>(3+math.random()*3) then
				set(sim_engine_ext4, 1)
				set(sim_engine_on_fire4, 0)
				fire4_out=0
			end
		end
		
		local smoke_test=get(smoke_test1)+get(smoke_test2)+get(smoke_test3)+get(smoke_test4)+get(smoke_test5)+get(smoke_test6)+get(smoke_test7)
		if smoke_test>0 then
			smoke_test_act=smoke_test_act+passed
			if smoke_test_act>1 then 
				smoke_test_act=1
			end
		else
			smoke_test_act=0
			set(fire_bag1,0)
			set(fire_bag2,0)
		end
		-- fire siren
		if fire_1 or fire_2 or fire_3 or fire_4 or smoke_test_act > 0.6 + math.random()/10 then
			set(fire_detected, 1)
			set(fire_siren, get(fire_buzzer)-bool2int(test_group>0))
			if get(smoke_test1)+get(smoke_test2)+get(smoke_test3)+get(smoke_test4)>0 then
				set(fire_bag1,1)
			elseif get(smoke_test5)+get(smoke_test6)+get(smoke_test7)>0 then
				set(fire_bag2,1)
			end
				
		else
			set(fire_detected, 0)
			set(fire_siren, 0)
		end
		
		if fire_1 and test_group==0 then set(engine_fire_state_1, 2)
		else set(engine_fire_state_1, 0) end
		
		if fire_2 and test_group==0 then set(engine_fire_state_2, 2)
		else set(engine_fire_state_2, 0) end
		
		if fire_3 and test_group==0 then set(engine_fire_state_3, 2)
		else set(engine_fire_state_3, 0) end
		
		if fire_4 and test_group==0 then set(engine_fire_state_4, 2)
		else set(engine_fire_state_4, 0) end
		
		set(fire_sys_cc, 0.8)
	else
		-- reset valves state
		valve_1 = 0
		valve_2 = 0
		valve_3 = 0
		valve_4 = 0
		
		valves_open = 0
		
		set(fire_detected, 0)
		set(fire_siren, 0)	
		
		-- set(engine_fire_state_1, 0)
		-- set(engine_fire_state_2, 0)
		-- set(engine_fire_state_3, 0)
		-- set(engine_fire_state_4, 0)
		
		set(fire_sys_cc, 0)
	end
	
	



	--set results
	set(valve_open_1, valve_1)
	set(valve_open_2, valve_2)
	set(valve_open_3, valve_3)
	set(valve_open_4, valve_4)

end

end