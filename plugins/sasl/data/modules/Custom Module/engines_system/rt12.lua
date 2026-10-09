defineProperty("rt1_stop", globalPropertyi("tu154b2/custom/SC/engine/rt_stop1"))
defineProperty("rt1_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red1"))
defineProperty("rt2_stop", globalPropertyi("tu154b2/custom/SC/engine/rt_stop2"))
defineProperty("rt2_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red2"))
defineProperty("rt3_stop", globalPropertyi("tu154b2/custom/SC/engine/rt_stop3"))
defineProperty("rt3_red", globalPropertyf("tu154b2/custom/SC/engine/rt_red3"))

defineProperty("rt1_off", globalPropertyi("sim/custom/b2/rt12_1_dis"))
defineProperty("rt2_off", globalPropertyi("sim/custom/b2/rt12_2_dis"))
defineProperty("rt3_off", globalPropertyi("sim/custom/b2/rt12_3_dis"))

defineProperty("rpm1", globalProperty("sim/flightmodel/engine/ENGN_N2_[0]")) 
defineProperty("rpm2", globalProperty("sim/flightmodel/engine/ENGN_N2_[1]"))
defineProperty("rpm3", globalProperty("sim/flightmodel/engine/ENGN_N2_[2]"))

defineProperty("egt1", globalPropertyf("tu154b2/custom/lights/engines/egt_nk8_1"))
defineProperty("egt2", globalPropertyf("tu154b2/custom/lights/engines/egt_nk8_2"))
defineProperty("egt3", globalPropertyf("tu154b2/custom/lights/engines/egt_nk8_3"))

defineProperty("stop1", globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_1"))
defineProperty("stop2", globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_2"))
defineProperty("stop3", globalPropertyf("tu154b2/custom/controlls/fuel_cutoff_3"))

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))

defineProperty("revers_flap_L", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[0]")) -- reverse on left engine
defineProperty("revers_flap_R", globalProperty("sim/flightmodel2/engines/thrust_reverser_deploy_ratio[2]")) -- reverse on right engine

defineProperty("test1", globalProperty("sim/custom/b2/stp_test_1"))
defineProperty("test2", globalProperty("sim/custom/b2/stp_test_2"))
defineProperty("test3", globalProperty("sim/custom/b2/stp_test_3"))

defineProperty("gear_defl", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))

defineProperty("alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
starter_1 = findCommand("sim/starters/engage_starter_1")  -- simulator command for starter 1
starter_2 = findCommand("sim/starters/engage_starter_2")  -- simulator command for starter 2
starter_3 = findCommand("sim/starters/engage_starter_3")  -- simulator command for starter 3

defineProperty("Flow_1", globalPropertyf("tu154b2/custom/engines/FuelFlow_1")) 
defineProperty("Flow_2", globalPropertyf("tu154b2/custom/engines/FuelFlow_2")) 
defineProperty("Flow_3", globalPropertyf("tu154b2/custom/engines/FuelFlow_3")) 

defineProperty("kpp1", globalPropertyf("tu154b2/custom/engine/kpp1"))
defineProperty("kpp2", globalPropertyf("tu154b2/custom/engine/kpp2"))
defineProperty("kpp3", globalPropertyf("tu154b2/custom/engine/kpp3"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master





local stop_eng1=0
local stop_eng2=0
local stop_eng3=0

local red_eng1=0
local red_eng2=0
local red_eng3=0

-- local egt_prev1=0
-- local egt_prev2=0
-- local egt_prev3=0

-- local test1_prev=0
-- local test2_prev=0
-- local test3_prev=0

function update()
	local power=get(bus27_volt_left)>20
	local ground=get(gear_defl)>0.05

	local start1=get(kpp1)>0 and ground
	local start2=get(kpp2)>0 and ground
	local start3=get(kpp3)>0 and ground

	local temp1=get(egt1)
	local temp2=get(egt2)
	local temp3=get(egt3)

	local revL=get(revers_flap_L)>0.1
	local revR=get(revers_flap_R)>0.1
	
	local FF1=get(Flow_1)
	local FF2=get(Flow_2)
	local FF3=get(Flow_3)
	
	local passed=get(frame_time)
	if power then
		if get(rt1_off)==0 then	
			if revL or start1 or get(alt)>16500 then
				--channel 1
				if (temp1>(650-bool2int(start1)*110) and temp1 <(710-bool2int(start1)*110)) or get(test1)==1 then
						red_eng1=red_eng1+passed*0.015*(1-bool2int(FF1<820))
				elseif temp1<(640-bool2int(start1)*110) and get(test1)~=1 and red_eng1>0 then
					red_eng1=red_eng1-passed*0.015*(5-4*bool2int(get(rpm1)>55))
					if red_eng1<0 then
						red_eng1=0
					end
				-- channel 2
				elseif temp1 >(710-bool2int(start1)*110) or get(test1)==-1 then
					red_eng1=0
					stop_eng1=1
					if start1 then
						commandEnd(starter_1)
					end
				end
			end
			if get(stop1)<0.1 then
				red_eng1=0
				stop_eng1=0
			end
		elseif get(rt1_off)==1 then
			red_eng1=0
			stop_eng1=0
		end

	if get(rt2_off)==0 then	
			if start2 or get(alt)>16500 then
				--channel 1
				if (temp2>(650-bool2int(start2)*110) and temp2 <(710-bool2int(start2)*110)) or get(test2)==1 then
						red_eng2=red_eng2+passed*0.015*bool2int(FF2>820)
				elseif temp2<(640-bool2int(start2)*110) and get(test2)~=1 and red_eng2>0 then
					red_eng2=red_eng2-passed*0.015*(5-4*bool2int(get(rpm2)>55))
					if red_eng2<0 then
						red_eng2=0
					end
				-- channel 2
				elseif temp2 >(710-bool2int(start2)*110) or get(test2)==-1 then
					red_eng2=0
					stop_eng2=1
					if start2 then
						commandEnd(starter_2)
					end
				end
			end
			if get(stop2)<0.1 then
				red_eng2=0
				stop_eng2=0
			end
		elseif get(rt2_off)==1 then
			red_eng2=0
			stop_eng2=0
		end		
		
		if get(rt3_off)==0 then	
			if revR or start3 or get(alt)>16500 then
				--channel 1
				if (temp3>(650-bool2int(start3)*110) and temp3 <(710-bool2int(start3)*110)) or get(test3)==1 then
						red_eng3=red_eng3+passed*0.015*(1-bool2int(FF3<820 or (revR and get(rpm3)<63.5)))
				elseif temp3<(640-bool2int(start3)*110) and get(test3)~=1 and red_eng3>0 then
					red_eng3=red_eng3-passed*0.015*(5-4*bool2int(get(rpm3)>55))
					if red_eng3<0 then
						red_eng3=0
					end
				-- channel 2
				elseif temp3 >(710-bool2int(start3)*110) or get(test3)==-1 then
					red_eng3=0
					stop_eng3=1
					if start3 then
						commandEnd(starter_3)
					end
				end
			end
			if get(stop3)<0.1 then
				red_eng3=0
				stop_eng3=0
			end
		elseif get(rt3_off)==1 then
			red_eng3=0
			stop_eng3=0
		end
		
		
	end
		
		
		
		
	-- egt_prev1=temp1
	-- egt_prev2=temp2
	-- egt_prev3=temp3
	
	-- test1_prev=get(test1)
	-- test2_prev=get(test2)
	-- test3_prev=get(test3)
		

	if get(ismaster) ~= 1	 then	
		set(rt1_stop,stop_eng1)
		set(rt1_red,red_eng1)
		set(rt2_stop,stop_eng2)
		set(rt2_red,red_eng2)
		
		set(rt3_stop,stop_eng3)
		set(rt3_red,red_eng3)
	end
	

end









