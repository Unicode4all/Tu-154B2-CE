-- this is logic of 115/200v buses

-- system has 3 separate buses and 2 emergency buses
-- buses powered by generators of engines, APU, GPU

-- normal currents on busses are
-- bus 1 - 70
-- bus 2 - 0. if AI works - +130
-- bus 3 - 45. if galley and lights works - +60

-- 3 generators works - 3 main buses powered each by its own gen

-- 1 gen fail
-- gen 1 fail
-- bus 1 powered by gen 2. if AI is ON, by gen 3
-- bus 2 powered by gen 2
-- bus 3 powered by gen 3

-- gen 2 fail
-- bus 1 powered by gen 3
-- bus 2 powered by gen 1. if AI is ON, by gen 3
-- bus 3 powered by gen 3

-- gen 3 fail
-- bus 1 powered by gen 1
-- bus 2 powered by gen 2
-- bus 3 powered by gen 2. if AI is ON, by gen 1

-- 2 gens fail. galley and lights not work
-- remaining gen powers buses 1 and 3. bus 2 powered by APU.

-- 3 gens fail. galley and lights not work
-- buses 1 and 3 powered by APU.

-- EGT gauges can be powered from 115v or POS125
-- this logic better make insode EGT gauges
-- like:  (bus24_volt > 13 and pos125_on) or bus115_volt > 110


-- gen parameters
defineProperty("gen1_volt_bus", globalPropertyf("tu154b2/custom/elec/gen1_volt"))  -- generator voltage, initial 28.5v
defineProperty("gen2_volt_bus", globalPropertyf("tu154b2/custom/elec/gen2_volt"))
defineProperty("gen3_volt_bus", globalPropertyf("tu154b2/custom/elec/gen3_volt"))
defineProperty("gen4_volt_bus", globalPropertyf("tu154b2/custom/elec/gen4_volt"))
defineProperty("gpu_volt_bus", globalPropertyf("tu154b2/custom/elec/gpu_volt"))


defineProperty("gen1_work_bus", globalPropertyi("tu154b2/custom/elec/gen1_work"))  -- generators connected to the busses and working
defineProperty("gen2_work_bus", globalPropertyi("tu154b2/custom/elec/gen2_work"))
defineProperty("gen3_work_bus", globalPropertyi("tu154b2/custom/elec/gen3_work"))
defineProperty("gen4_work_bus", globalPropertyi("tu154b2/custom/elec/gen4_work"))
defineProperty("gpu_work_bus", globalPropertyi("tu154b2/custom/elec/gpu_work"))

-- bus parameters
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154b2/custom/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

--defineProperty("bus115_em_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_em_1_volt"))
--defineProperty("bus115_em_2_volt", globalPropertyf("tu154b2/custom/elec/bus115_em_2_volt"))

defineProperty("bus115_1_amp_A", globalPropertyf("tu154b2/custom/elec/bus115_1_amp_A"))
defineProperty("bus115_2_amp_A", globalPropertyf("tu154b2/custom/elec/bus115_2_amp_A"))
defineProperty("bus115_3_amp_A", globalPropertyf("tu154b2/custom/elec/bus115_3_amp_A"))
defineProperty("bus115_1_amp_B", globalPropertyf("tu154b2/custom/elec/bus115_1_amp_B"))
defineProperty("bus115_2_amp_B", globalPropertyf("tu154b2/custom/elec/bus115_2_amp_B"))
defineProperty("bus115_3_amp_B", globalPropertyf("tu154b2/custom/elec/bus115_3_amp_B"))
defineProperty("bus115_1_amp_C", globalPropertyf("tu154b2/custom/elec/bus115_1_amp_C"))
defineProperty("bus115_2_amp_C", globalPropertyf("tu154b2/custom/elec/bus115_2_amp_C"))
defineProperty("bus115_3_amp_C", globalPropertyf("tu154b2/custom/elec/bus115_3_amp_C"))

--defineProperty("bus115_em_1_amp", globalPropertyf("tu154b2/custom/elec/bus115_em_1_amp"))
--defineProperty("bus115_em_2_amp", globalPropertyf("tu154b2/custom/elec/bus115_em_2_amp"))

-- results
defineProperty("gen1_amp_A", globalPropertyf("tu154b2/custom/elec/gen1_amp_A"))
defineProperty("gen2_amp_A", globalPropertyf("tu154b2/custom/elec/gen2_amp_A"))
defineProperty("gen3_amp_A", globalPropertyf("tu154b2/custom/elec/gen3_amp_A"))
defineProperty("gen4_amp_A", globalPropertyf("tu154b2/custom/elec/gen4_amp_A"))
defineProperty("gen1_amp_B", globalPropertyf("tu154b2/custom/elec/gen1_amp_B"))
defineProperty("gen2_amp_B", globalPropertyf("tu154b2/custom/elec/gen2_amp_B"))
defineProperty("gen3_amp_B", globalPropertyf("tu154b2/custom/elec/gen3_amp_B"))
defineProperty("gen4_amp_B", globalPropertyf("tu154b2/custom/elec/gen4_amp_B"))
defineProperty("gen1_amp_C", globalPropertyf("tu154b2/custom/elec/gen1_amp_C"))
defineProperty("gen2_amp_C", globalPropertyf("tu154b2/custom/elec/gen2_amp_C"))
defineProperty("gen3_amp_C", globalPropertyf("tu154b2/custom/elec/gen3_amp_C"))
defineProperty("gen4_amp_C", globalPropertyf("tu154b2/custom/elec/gen4_amp_C"))
defineProperty("gpu_amp_A", globalPropertyf("tu154b2/custom/elec/gpu_amp_A"))
defineProperty("gpu_amp_B", globalPropertyf("tu154b2/custom/elec/gpu_amp_B"))
defineProperty("gpu_amp_C", globalPropertyf("tu154b2/custom/elec/gpu_amp_C"))
--avtonomnye shyni
defineProperty("avtoL_volt", globalPropertyf("tu154b2/custom/elec/avto_L_volt"))
defineProperty("avtoR_volt", globalPropertyf("tu154b2/custom/elec/avto_R_volt"))
defineProperty("avto_1", globalPropertyf("sim/custom/elec/gen_1_bus_auto"))
defineProperty("avto_2", globalPropertyf("sim/custom/elec/gen_2_bus_auto"))
defineProperty("avto_3", globalPropertyf("sim/custom/elec/gen_3_bus_auto"))
defineProperty("avtoL_load_A", globalPropertyf("tu154b2/custom/elec/avto_L_amp_A"))
defineProperty("avtoL_load_B", globalPropertyf("tu154b2/custom/elec/avto_L_amp_B"))
defineProperty("avtoL_load_C", globalPropertyf("tu154b2/custom/elec/avto_L_amp_C"))
defineProperty("avtoR_load_A", globalPropertyf("tu154b2/custom/elec/avto_R_amp_A"))
defineProperty("avtoR_load_B", globalPropertyf("tu154b2/custom/elec/avto_R_amp_B"))
defineProperty("avtoR_load_C", globalPropertyf("tu154b2/custom/elec/avto_R_amp_C"))
defineProperty("vu1_amp", globalPropertyf("tu154b2/custom/elec/vu1_amp"))

defineProperty("gen_dist_fail", globalPropertyi("tu154b2/custom/failures/gen_dist_fail"))
defineProperty("ai_115_2_cc", globalPropertyf("tu154b2/custom/antiice/ai_115_2_cc_A"))

defineProperty("byt_blok", globalPropertyi("tu154b2/custom/elec/kitchen_block"))
defineProperty("pos_blok", globalPropertyi("tu154b2/custom/elec/pos_block"))
defineProperty("freq_115_1", globalPropertyf("tu154b2/custom/elec/bus115_1_freq")) 
defineProperty("freq_115_2", globalPropertyf("tu154b2/custom/elec/bus115_2_freq")) 
defineProperty("freq_115_3", globalPropertyf("tu154b2/custom/elec/bus115_3_freq")) 
defineProperty("freq_avt_1", globalPropertyf("tu154b2/custom/elec/bus115_avt_l_freq"))
defineProperty("freq_avt_2", globalPropertyf("tu154b2/custom/elec/bus115_avt_r_freq"))
defineProperty("freq_gen_1", globalPropertyf("tu154b2/custom/elec/gen_1_freq")) 
defineProperty("freq_gen_2", globalPropertyf("tu154b2/custom/elec/gen_2_freq")) 
defineProperty("freq_gen_3", globalPropertyf("tu154b2/custom/elec/gen_3_freq")) 
defineProperty("freq_gen_4", globalPropertyf("tu154b2/custom/elec/gen_4_freq")) 
defineProperty("freq_gpu", globalPropertyf("tu154b2/custom/elec/gpu_freq")) 
defineProperty("apu_rpm", globalPropertyf("tu154b2/custom/eng/apu_n1"))
defineProperty("gen_1_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_1_regulator_fail"))
defineProperty("gen_2_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_2_regulator_fail"))
defineProperty("gen_3_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_3_regulator_fail"))
defineProperty("gen_4_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_4_regulator_fail"))
defineProperty("gpu_reg_fail", globalPropertyi("tu154b2/custom/failures/gpu_regulator_fail"))
defineProperty("tech", globalPropertyi("sim/custom/t154cfg/hide_def"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) --time
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master

local freq_5=400
local gpu_load_prev=0
local gpu_freq_tgt=400+math.random(-2,2)
function update()
	local passed=get(frame_time)
	if passed > 0 then
	
		-- voltages, frequencies and loads of busses
		local bus1_volt = 0
		local bus2_volt = 0
		local bus3_volt = 0
		
		local bus1_freq = 0
		local bus2_freq = 0
		local bus3_freq = 0
		local bus_avt1_freq = 0
		local bus_avt2_freq = 0
		
		local gen1_load_A=0
		local gen2_load_A=0
		local gen3_load_A=0
		local gen4_load_A=0
		local gpu_load_A=0
		
		local gen1_load_B=0
		local gen2_load_B=0
		local gen3_load_B=0
		local gen4_load_B=0
		local gpu_load_B=0
		
		local gen1_load_C=0
		local gen2_load_C=0
		local gen3_load_C=0
		local gen4_load_C=0
		local gpu_load_C=0
		
		local freq_1=get(freq_gen_1)
		local freq_2=get(freq_gen_2)
		local freq_3=get(freq_gen_3)
		local freq_4=get(freq_gen_4)
		
		--local bus_em_1_volt = 0
		--local bus_em_2_volt = 0
		
		-- currents on busses
		local bus1_amp_A = get(bus115_1_amp_A)
		local bus2_amp_A = get(bus115_2_amp_A)
		local bus3_amp_A = get(bus115_3_amp_A)
		local avtL_amp_A = get(avtoL_load_A)+get(vu1_amp)*27/200/1.7/0.8
		local avtR_amp_A = get(avtoR_load_A)
		
		local bus1_amp_B = get(bus115_1_amp_B)
		local bus2_amp_B = get(bus115_2_amp_B)
		local bus3_amp_B = get(bus115_3_amp_B)
		local avtL_amp_B = get(avtoL_load_B)+get(vu1_amp)*27/200/1.7/0.8
		local avtR_amp_B = get(avtoR_load_B)
		
		local bus1_amp_C = get(bus115_1_amp_C)
		local bus2_amp_C = get(bus115_2_amp_C)
		local bus3_amp_C = get(bus115_3_amp_C)
		local avtL_amp_C = get(avtoL_load_C)+get(vu1_amp)*27/200/1.7/0.8
		local avtR_amp_C = get(avtoR_load_C)
		
		--local bus_em1_amp = get(bus115_em_1_amp)
		--local bus_em2_amp = get(bus115_em_2_amp)
		
		-- generators parameters
		local gen1_volt = get(gen1_volt_bus)
		local gen2_volt = get(gen2_volt_bus)
		local gen3_volt = get(gen3_volt_bus)
		local gen4_volt = get(gen4_volt_bus)
		local gpu_volt = get(gpu_volt_bus)
		local gen1_work = get(gen1_work_bus) == 1 and get(gen_dist_fail)==0
		local gen2_work = get(gen2_work_bus) == 1 and get(gen_dist_fail)==0
		local gen3_work = get(gen3_work_bus) == 1 and get(gen_dist_fail)==0
		local gen4_work = get(gen4_work_bus) == 1
		local gpu_work = get(gpu_work_bus) == 1
		
		
		local avtL_volt=0
		local avtR_volt=0
		
		local avt_1=get(avto_1)
		local avt_2=get(avto_2)
		local avt_3=get(avto_3)
		local pos=get(ai_115_2_cc)>0
		local pos_block=0
		-- set voltages and currents to buses according to working generators
		if gen1_work and avt_1==0 and gen2_work and avt_2==0 and gen3_work and avt_3==0 then -- all 3 gens work. APU and GPU doesn't matter
			bus1_volt = gen1_volt
			bus2_volt = gen2_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_1
			bus2_freq=freq_2
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A+avtL_amp_A
			gen2_load_A=bus2_amp_A
			gen3_load_A=bus3_amp_A+avtR_amp_A
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=bus1_amp_B+avtL_amp_B
			gen2_load_B=bus2_amp_B
			gen3_load_B=bus3_amp_B+avtR_amp_B
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=bus1_amp_C+avtL_amp_C
			gen2_load_C=bus2_amp_C
			gen3_load_C=bus3_amp_C+avtR_amp_C
			gen4_load_C=0
			gpu_load_C=0
		elseif gen2_work and avt_2==0 and gen3_work and avt_3==0 and pos then -- gen 2 and 3 works. APU and GPU doesn't matter
			bus1_volt = gen3_volt
			bus2_volt = gen2_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_3
			bus2_freq=freq_2
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=bus2_amp_A
			gen3_load_A=bus3_amp_A+avtR_amp_A+ bus1_amp_A+avtL_amp_A
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=bus2_amp_B
			gen3_load_B=bus3_amp_B+avtR_amp_B+ bus1_amp_B+avtL_amp_B
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=bus2_amp_C
			gen3_load_C=bus3_amp_C+avtR_amp_C+ bus1_amp_C+avtL_amp_C
			gen4_load_C=0
			gpu_load_C=0
		elseif gen2_work and avt_2==0 and gen3_work and avt_3==0 then -- gen 2 and 3 works. APU and GPU doesn't matter
			bus1_volt = gen2_volt
			bus2_volt = gen2_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_2
			bus2_freq=freq_2
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=bus2_amp_A + bus1_amp_A+avtL_amp_A
			gen3_load_A=bus3_amp_A+avtR_amp_A
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=bus2_amp_B + bus1_amp_B+avtL_amp_B
			gen3_load_B=bus3_amp_B+avtR_amp_B
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=bus2_amp_C + bus1_amp_C+avtL_amp_C
			gen3_load_C=bus3_amp_C+avtR_amp_C
			gen4_load_C=0
			gpu_load_C=0
		elseif gen1_work and avt_1==0 and gen3_work and avt_3==0 and gpu_work then -- gen 1 and 3 works. GPU works too. APU doesn't matter
			bus1_volt = gen1_volt
			bus2_volt = gpu_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_1
			bus2_freq=freq_5
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A+avtL_amp_A
			gen2_load_A=0
			gen3_load_A=bus3_amp_A+avtR_amp_A
			gen4_load_A=0
			gpu_load_A=bus2_amp_A
			
			gen1_load_B=bus1_amp_B+avtL_amp_B
			gen2_load_B=0
			gen3_load_B=bus3_amp_B+avtR_amp_B
			gen4_load_B=0
			gpu_load_B=bus2_amp_B
			
			gen1_load_C=bus1_amp_C+avtL_amp_C
			gen2_load_C=0
			gen3_load_C=bus3_amp_C+avtR_amp_C
			gen4_load_C=0
			gpu_load_C=bus2_amp_C
		elseif gen1_work and avt_1==0 and gen3_work and avt_3==0 and pos then -- gen 1 and 3 works. GPU disconnected. APU doesn't matter with Anti ice
			bus1_volt = gen3_volt
			bus2_volt = gen1_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_3
			bus2_freq=freq_1
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A= bus2_amp_A
			gen2_load_A=0
			gen3_load_A=bus3_amp_A+avtR_amp_A+bus1_amp_A+avtL_amp_A
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B= bus2_amp_B
			gen2_load_B=0
			gen3_load_B=bus3_amp_B+avtR_amp_B+bus1_amp_B+avtL_amp_B
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C= bus2_amp_C
			gen2_load_C=0
			gen3_load_C=bus3_amp_C+avtR_amp_C+bus1_amp_C+avtL_amp_C
			gen4_load_C=0
			gpu_load_C=0
		elseif gen1_work and avt_1==0 and gen3_work and avt_3==0 then -- gen 1 and 3 works. GPU disconnected. APU doesn't matter
			bus1_volt = gen1_volt
			bus2_volt = gen1_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_1
			bus2_freq=freq_1
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A + bus2_amp_A+avtL_amp_A
			gen2_load_A=0
			gen3_load_A=bus3_amp_A+avtR_amp_A
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=bus1_amp_B + bus2_amp_B+avtL_amp_B
			gen2_load_B=0
			gen3_load_B=bus3_amp_B+avtR_amp_B
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=bus1_amp_C + bus2_amp_C+avtL_amp_C
			gen2_load_C=0
			gen3_load_C=bus3_amp_C+avtR_amp_C
			gen4_load_C=0
			gpu_load_C=0
		elseif gen1_work and avt_1==0 and gen2_work and avt_2==0 and gpu_work  then -- gen 1 and 2 works. GPU works too. APU doesn't matter
			bus1_volt = gen1_volt
			bus2_volt = gen2_volt
			bus3_volt = gpu_volt
			bus1_freq=freq_1
			bus2_freq=freq_2
			bus3_freq=freq_5
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A+avtL_amp_A
			gen2_load_A=bus2_amp_A+avtR_amp_A
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=bus3_amp_A
			
			gen1_load_B=bus1_amp_B+avtL_amp_B
			gen2_load_B=bus2_amp_B+avtR_amp_B
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=bus3_amp_B
			
			gen1_load_C=bus1_amp_C+avtL_amp_C
			gen2_load_C=bus2_amp_C+avtR_amp_C
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=bus3_amp_C
		elseif gen1_work and avt_1==0 and gen2_work and avt_2==0 and pos then -- gen 1 and 2 works. GPU disconnected. APU doesn't matter, with antiice
			bus1_volt = gen1_volt
			bus2_volt = gen2_volt
			bus3_volt = gen1_volt
			bus1_freq=freq_1
			bus2_freq=freq_2
			bus3_freq=freq_1
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A +avtL_amp_A+ bus3_amp_A+avtR_amp_A
			gen2_load_A=bus2_amp_A 
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=0	
			
			gen1_load_B=bus1_amp_B +avtL_amp_B+ bus3_amp_B+avtR_amp_B
			gen2_load_B=bus2_amp_B 
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=0

			gen1_load_C=bus1_amp_C +avtL_amp_C+ bus3_amp_C+avtR_amp_C
			gen2_load_C=bus2_amp_C 
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=0		
		elseif gen1_work and avt_1==0 and gen2_work and avt_2==0 then -- gen 1 and 2 works. GPU disconnected. APU doesn't matter
			bus1_volt = gen1_volt
			bus2_volt = gen2_volt
			bus3_volt = gen2_volt
			bus1_freq=freq_1
			bus2_freq=freq_2
			bus3_freq=freq_2
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A +avtL_amp_A
			gen2_load_A=bus2_amp_A + bus3_amp_A+avtR_amp_A
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=bus1_amp_B +avtL_amp_B
			gen2_load_B=bus2_amp_B + bus3_amp_B+avtR_amp_B
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=bus1_amp_C +avtL_amp_C
			gen2_load_C=bus2_amp_C + bus3_amp_C+avtR_amp_C
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=0
		elseif gen1_work and avt_1==0 and gen4_work then -- gen 1 and APU works. GPU ignored.
			bus1_volt = gen1_volt
			bus2_volt = gen4_volt
			bus3_volt = gen1_volt
			bus1_freq=freq_1
			bus2_freq=freq_4
			bus3_freq=freq_1
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=bus2_amp_A
			gpu_load_A=0
			
			gen1_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=bus2_amp_B
			gpu_load_B=0
			
			gen1_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=bus2_amp_C
			gpu_load_C=0
		elseif gen2_work and avt_2==0 and gen4_work then -- gen 2 and APU works. GPU ignored.
			bus1_volt = gen2_volt
			bus2_volt = gen4_volt
			bus3_volt = gen2_volt
			bus1_freq=freq_2
			bus2_freq=freq_4
			bus3_freq=freq_2
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gen3_load_A=0
			gen4_load_A=bus2_amp_A
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gen3_load_B=0
			gen4_load_B=bus2_amp_B
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gen3_load_C=0
			gen4_load_C=bus2_amp_C
			gpu_load_C=0
		elseif gen3_work and avt_3==0 and gen4_work then -- gen 3 and APU works. GPU ignored.
			bus1_volt = gen3_volt
			bus2_volt = gen4_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_3
			bus2_freq=freq_4
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gen4_load_A=bus2_amp_A
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gen4_load_B=bus2_amp_B
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gen4_load_C=bus2_amp_C
			gpu_load_C=0
		elseif gen1_work and avt_1==0 and gpu_work then -- gen 1 works. GPU connected
			bus1_volt = gen1_volt
			bus2_volt = gpu_volt
			bus3_volt = gpu_volt
			bus1_freq=freq_1
			bus2_freq=freq_5
			bus3_freq=freq_5
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A+avtL_amp_A
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=bus2_amp_A + bus3_amp_A+avtR_amp_A
			
			gen1_load_B=bus1_amp_B+avtL_amp_B
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=bus2_amp_B + bus3_amp_B+avtR_amp_B
			
			gen1_load_C=bus1_amp_C+avtL_amp_C
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=bus2_amp_C + bus3_amp_C+avtR_amp_C
		elseif gen2_work and avt_2==0 and gpu_work then -- gen 2 works. GPU connected
			bus1_volt = gpu_volt
			bus2_volt = gen2_volt
			bus3_volt = gpu_volt
			bus1_freq=freq_5
			bus2_freq=freq_2
			bus3_freq=freq_5
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=bus2_amp_A
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			
			gen1_load_B=0
			gen2_load_B=bus2_amp_B
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			
			gen1_load_C=0
			gen2_load_C=bus2_amp_C
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
		elseif gen3_work and avt_3==0 and gpu_work then -- gen 3 works. GPU connected
			bus1_volt = gpu_volt
			bus2_volt = gpu_volt
			bus3_volt = gen3_volt
			bus1_freq=freq_5
			bus2_freq=freq_5
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=bus3_amp_A+avtR_amp_A
			gen4_load_A=0
			gpu_load_A=bus1_amp_A + bus2_amp_A+avtL_amp_A
			
			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=bus3_amp_B+avtR_amp_B
			gen4_load_B=0
			gpu_load_B=bus1_amp_B + bus2_amp_B+avtL_amp_B
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=bus3_amp_C+avtR_amp_C
			gen4_load_C=0
			gpu_load_C=bus1_amp_C + bus2_amp_C+avtL_amp_C
		elseif gen1_work and avt_1==0 then -- gen 1 works. GPU and APU disconnected
			bus1_volt = gen1_volt
			bus2_volt = 0
			bus3_volt = gen1_volt
			bus1_freq=freq_1
			bus2_freq=0
			bus3_freq=freq_1
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=0
			
			pos_block=1	
		elseif gen2_work and avt_2==0 then -- gen 2 works. GPU and APU disconnected
			bus1_volt = gen2_volt
			bus2_volt = 0
			bus3_volt = gen2_volt
			bus1_freq=freq_2
			bus2_freq=0
			bus3_freq=freq_2
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=0
			
			pos_block=1				
		elseif gen3_work and avt_3==0 then -- gen 3 works. GPU and APU disconnected
			bus1_volt = gen3_volt
			bus2_volt = 0
			bus3_volt = gen3_volt
			bus1_freq=freq_3
			bus2_freq=0
			bus3_freq=freq_3
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=bus1_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=bus1_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=bus1_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gen4_load_C=0
			gpu_load_C=0
			
			pos_block=1	
		elseif gen4_work and gpu_work then -- APU and GPU connected. generators are OFF or failed.
			bus1_volt = gen4_volt
			bus2_volt = gen4_volt
			bus3_volt = gpu_volt
			bus1_freq=freq_4
			bus2_freq=freq_4
			bus3_freq=freq_5
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=bus1_amp_A + bus2_amp_A+avtL_amp_A
			gpu_load_A=bus3_amp_A+avtR_amp_A
			
			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=bus1_amp_B + bus2_amp_B+avtL_amp_B
			gpu_load_B=bus3_amp_B+avtR_amp_B
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=bus1_amp_C + bus2_amp_C+avtL_amp_C
			gpu_load_C=bus3_amp_C+avtR_amp_C
			
			pos_block=1			
		elseif gpu_work then -- GPU connected. generators are OFF or failed.
			bus1_volt = gpu_volt
			bus2_volt = gpu_volt
			bus3_volt = gpu_volt
			bus1_freq=freq_5
			bus2_freq=freq_5
			bus3_freq=freq_5
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=bus1_amp_A + bus2_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A

			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=bus1_amp_B + bus2_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B				
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=bus1_amp_C + bus2_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C	
		elseif gen4_work then -- APU connected. generators are OFF or failed.
			bus1_volt = gen4_volt
			bus2_volt = gen4_volt
			bus3_volt = gen4_volt
			bus1_freq=freq_4
			bus2_freq=freq_4
			bus3_freq=freq_4
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=bus1_amp_A + bus2_amp_A + bus3_amp_A+avtL_amp_A+avtR_amp_A
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=bus1_amp_B + bus2_amp_B + bus3_amp_B+avtL_amp_B+avtR_amp_B
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=bus1_amp_C + bus2_amp_C + bus3_amp_C+avtL_amp_C+avtR_amp_C
			gpu_load_C=0
		else
			bus1_volt = 0
			bus2_volt = 0
			bus3_volt = 0			
			bus1_freq=0
			bus2_freq=0
			bus3_freq=0
			--bus_em_1_volt = bus1_volt
			--bus_em_2_volt = bus3_volt
			-- set currents
			gen1_load_A=0
			gen2_load_A=0
			gen3_load_A=0
			gen4_load_A=0
			gpu_load_A=0
			
			gen1_load_B=0
			gen2_load_B=0
			gen3_load_B=0
			gen4_load_B=0
			gpu_load_B=0
			
			gen1_load_C=0
			gen2_load_C=0
			gen3_load_C=0
			gen4_load_C=0
			gpu_load_C=0
		end
		-- L/R AC essential busses
		if avt_1>0 and avt_2==0 and avt_3==0 then
				avtL_volt=gen1_volt
				avtR_volt=bus3_volt
				gen1_load_A=avtL_amp_A
				gen1_load_B=avtL_amp_B
				gen1_load_C=avtL_amp_C
				bus_avt1_freq=freq_1
				bus_avt2_freq=bus3_freq
		elseif avt_1>0 and avt_2>0 and avt_3==0 then
			if gen1_volt>100 then
				avtL_volt=gen1_volt
				avtR_volt=gen2_volt
				bus_avt1_freq=freq_1
				bus_avt2_freq=freq_2
				gen1_load_A=avtL_amp_A
				gen1_load_B=avtL_amp_B
				gen1_load_C=avtL_amp_C
				gen2_load_A=avtR_amp_A
				gen2_load_B=avtR_amp_B
				gen2_load_C=avtR_amp_C
			else
				avtL_volt=gen2_volt
				avtR_volt=gen2_volt
				bus_avt1_freq=freq_2
				bus_avt2_freq=freq_2
				gen2_load_A=avtL_amp_A+avtR_amp_A
				gen2_load_B=avtL_amp_B+avtR_amp_B
				gen2_load_C=avtL_amp_C+avtR_amp_C
			end
		elseif avt_1==0 and avt_2==0 and avt_3==1 then
			avtL_volt=bus1_volt
			avtR_volt=gen3_volt
			bus_avt1_freq=bus1_freq
			bus_avt2_freq=freq_3
			gen3_load_A=avtR_amp_A
			gen3_load_B=avtR_amp_B
			gen3_load_C=avtR_amp_C
		elseif avt_1==0 and avt_2>0 and avt_3>0 then
			if gen3_volt>100 and gen1_volt>100 then
				avtL_volt=bus1_volt
				avtR_volt=gen3_volt
				bus_avt1_freq=bus1_freq
				bus_avt2_freq=freq_3
				gen3_load_A=avtR_amp_A
				gen3_load_B=avtR_amp_B
				gen3_load_C=avtR_amp_C
			elseif gen3_volt>100 and gen1_volt<100 then
				avtL_volt=gen2_volt
				avtR_volt=gen3_volt
				bus_avt1_freq=freq_2
				bus_avt2_freq=freq_3
				gen2_load_A=avtL_amp_A
				gen2_load_B=avtL_amp_B
				gen2_load_C=avtL_amp_C
				gen3_load_A=avtR_amp_A
				gen3_load_B=avtR_amp_B
				gen3_load_C=avtR_amp_C
			elseif gen3_volt<100 and gen1_volt>100 then
				avtL_volt=bus1_volt
				avtR_volt=gen2_volt
				bus_avt1_freq=bus1_freq
				bus_avt2_freq=freq_2
				gen2_load_A=avtR_amp_A
				gen2_load_B=avtR_amp_B
				gen2_load_C=avtR_amp_C
			elseif gen3_volt<100 and gen1_volt<100 then
				avtL_volt=gen2_volt
				avtR_volt=gen2_volt
				bus_avt1_freq=freq_2
				bus_avt2_freq=freq_2
				gen2_load_A=avtL_amp_A+avtR_amp_A
				gen2_load_B=avtL_amp_B+avtR_amp_B
				gen2_load_C=avtL_amp_C+avtR_amp_C
			end
		elseif avt_1==1 and avt_2==0 and avt_3==1 then
			avtL_volt=gen1_volt
			avtR_volt=gen3_volt
			bus_avt1_freq=freq_1
			bus_avt2_freq=freq_3
			gen1_load_A=avtL_amp_A
			gen1_load_B=avtL_amp_B
			gen1_load_C=avtL_amp_C
			gen3_load_A=avtR_amp_A
			gen3_load_B=avtR_amp_B
			gen3_load_C=avtR_amp_C
		elseif avt_1+avt_2+avt_3>2.5 then
			if gen1_volt>100 and gen2_volt>100 and gen3_volt>100 then
				avtL_volt=gen1_volt
				gen1_load_A=avtL_amp_A
				gen1_load_B=avtL_amp_B
				gen1_load_C=avtL_amp_C
				avtR_volt=gen3_volt
				gen3_load_A=avtR_amp_A
				gen3_load_B=avtR_amp_B
				gen3_load_C=avtR_amp_C
				bus_avt1_freq=freq_1
				bus_avt2_freq=freq_3
			elseif gen1_volt<100 and gen2_volt>100 and gen3_volt>100 then
				avtL_volt=gen2_volt
				gen2_load_A=avtL_amp_A
				gen2_load_B=avtL_amp_B
				gen2_load_C=avtL_amp_C
				avtR_volt=gen3_volt
				gen3_load_A=avtR_amp_A
				gen3_load_B=avtR_amp_B
				gen3_load_C=avtR_amp_C
				bus_avt1_freq=freq_2
				bus_avt2_freq=freq_3
			elseif gen1_volt>100 and gen2_volt>100 and gen3_volt<100 then
				avtL_volt=gen1_volt
				gen1_load_A=avtL_amp_A
				gen1_load_B=avtL_amp_B
				gen1_load_C=avtL_amp_C
				avtR_volt=gen2_volt
				gen2_load_A=avtR_amp_A
				gen2_load_B=avtR_amp_B
				gen2_load_C=avtR_amp_C
				bus_avt1_freq=freq_1
				bus_avt2_freq=freq_2
			elseif gen1_volt<100 and gen2_volt>100 and gen3_volt<100 then
				avtL_volt=gen2_volt
				avtR_volt=gen2_volt
				gen2_load_A=avtL_amp_A+avtR_amp_A
				gen2_load_B=avtL_amp_B+avtR_amp_B
				gen2_load_C=avtL_amp_C+avtR_amp_C
				bus_avt1_freq=freq_2
				bus_avt2_freq=freq_2
			elseif gen1_volt<100 and gen2_volt<100 and gen3_volt>100 then
				avtL_volt=bus1_volt
				avtR_volt=gen3_volt
				gen3_load_A=avtR_amp_A
				gen3_load_B=avtR_amp_B
				gen3_load_C=avtR_amp_C
				bus_avt1_freq=0
				bus_avt2_freq=freq_3
			elseif gen1_volt>100 and gen2_volt<100 and gen3_volt>100 then
				avtL_volt=gen1_volt
				avtR_volt=gen3_volt
				gen1_load_A=avtL_amp_A
				gen1_load_B=avtL_amp_B
				gen1_load_C=avtL_amp_C
				gen3_load_A=avtR_amp_A
				gen3_load_B=avtR_amp_B
				gen3_load_C=avtR_amp_C
				bus_avt1_freq=freq_1
				bus_avt2_freq=freq_3
			elseif gen1_volt>100 and gen2_volt<100 and gen3_volt<100 then
				avtL_volt=gen1_volt
				avtR_volt=bus3_volt
				gen1_load_A=avtL_amp_A
				gen1_load_B=avtL_amp_B
				gen1_load_C=avtL_amp_C
				bus_avt1_freq=freq_1
				bus_avt2_freq=0
			end	
		elseif avt_1==0 and avt_2==1 and avt_3==0 then	
			if bus1_volt<100 and  bus3_volt<100 then
				avtL_volt=gen2_volt
				avtR_volt=gen2_volt
				gen2_load_A=avtL_amp_A+avtR_amp_A
				gen2_load_B=avtL_amp_B+avtR_amp_B
				gen2_load_C=avtL_amp_C+avtR_amp_C
				bus_avt1_freq=freq_2
				bus_avt2_freq=freq_2
			elseif bus1_volt>100 and  bus3_volt<100 then
				avtL_volt=bus1_volt
				avtR_volt=gen2_volt
				gen2_load_A=avtR_amp_A
				gen2_load_B=avtR_amp_B
				gen2_load_C=avtR_amp_C
				bus_avt1_freq=bus1_freq
				bus_avt2_freq=freq_2
			elseif bus1_volt<100 and  bus3_volt>100 then
				avtL_volt=gen2_volt
				avtR_volt=bus3_volt
				gen2_load_A=avtL_amp_A
				gen2_load_B=avtL_amp_B
				gen2_load_C=avtL_amp_C
				bus_avt1_freq=freq_2
				bus_avt2_freq=bus3_freq
			elseif bus1_volt>100 and  bus3_volt>100 then
				avtL_volt=bus1_volt
				avtR_volt=bus3_volt
				bus_avt1_freq=bus1_freq
				bus_avt2_freq=bus3_freq
			end
		else
			avtL_volt=bus1_volt
			avtR_volt=bus3_volt
			bus_avt1_freq=bus1_freq
			bus_avt2_freq=bus3_freq
		end
		local gal_block=0
		if pos and bool2int(gen1_work)+bool2int(gen2_work)+bool2int(gen3_work)+bool2int(gen4_work)<3 then -- block galley bus with AI and less than 3 gens
			gal_block=1
		end
		local new_tech=bool2int(get(tech)==0)
		local fail_5=get(gpu_reg_fail)
		freq_5=freq_5-((gpu_load_A+gpu_load_B+gpu_load_C)/3-gpu_load_prev)/20*(1+fail_5*5)
		freq_5=freq_5-(freq_5-gpu_freq_tgt+fail_5*15)*passed*0.7*(1+new_tech)
		gpu_load_prev=(gpu_load_A+gpu_load_B+gpu_load_C)/3
		-- set results
		local MASTER = get(ismaster) ~= 1	
		--if MASTER then
			set(bus115_1_volt, bus1_volt)
			set(bus115_2_volt, bus2_volt)
			set(bus115_3_volt, bus3_volt)
			
			set(avtoL_volt, avtL_volt)
			set(avtoR_volt, avtR_volt)

			set(byt_blok,gal_block)
			set(pos_blok,pos_block)
			set(gen1_amp_A, gen1_load_A)
			set(gen2_amp_A, gen2_load_A)
			set(gen3_amp_A, gen3_load_A)
			set(gen4_amp_A, gen4_load_A)
			set(gpu_amp_A, gpu_load_A)
			
			set(gen1_amp_B, gen1_load_B)
			set(gen2_amp_B, gen2_load_B)
			set(gen3_amp_B, gen3_load_B)
			set(gen4_amp_B, gen4_load_B)
			set(gpu_amp_B, gpu_load_B)
			
			set(gen1_amp_C, gen1_load_C)
			set(gen2_amp_C, gen2_load_C)
			set(gen3_amp_C, gen3_load_C)
			set(gen4_amp_C, gen4_load_C)
			set(gpu_amp_C, gpu_load_C)
			
			set(freq_gpu,freq_5*bool2int(gpu_volt>100))
			
			set(freq_115_1,bus1_freq)
			set(freq_115_2,bus2_freq)
			set(freq_115_3,bus3_freq)
			set(freq_avt_1,bus_avt1_freq)
			set(freq_avt_2,bus_avt2_freq)
		--end
		
		
		
	end

end