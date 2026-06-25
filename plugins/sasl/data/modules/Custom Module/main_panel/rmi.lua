-- this is RMI gauge, showing radiocompas values

-- sources
defineProperty("course_bgmk", globalPropertyf("tu154b2/custom/tks/course_bgmk_2")) -- курс на БГМК


defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("adf_bear_1", globalPropertyf("tu154b2/custom/radio/adf_bear_1"))
defineProperty("adf_bear_2", globalPropertyf("tu154b2/custom/radio/adf_bear_2"))
defineProperty("vor_bear_1", globalPropertyf("tu154b2/custom/radio/vor_bear_1"))
defineProperty("vor_bear_2", globalPropertyf("tu154b2/custom/radio/vor_bear_2"))


defineProperty("ark15_L_ON", globalPropertyf("tu154b2/custom/radio/ark15_L_cc")) -- потребление тока АРК
defineProperty("ark15_R_ON", globalPropertyf("tu154b2/custom/radio/ark15_R_cc")) -- потребление тока АРК

defineProperty("nav_L_ON", globalPropertyf("tu154b2/custom/radio/nav1_pow_cc")) -- потребление тока от КурсМП
defineProperty("nav_R_ON", globalPropertyf("tu154b2/custom/radio/nav2_pow_cc")) -- потребление тока от КурсМП

-- power
defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36в


-- results
defineProperty("radiocomp_scale", globalPropertyf("tu154b2/custom/gauges/compas/radiocomp_scale_left")) -- шкала курса на радиокомпасе
defineProperty("bearing_1", globalPropertyf("tu154b2/custom/gauges/compas/bearing_1_left")) -- стрелка направления 1 радиокомпаса
defineProperty("bearing_2", globalPropertyf("tu154b2/custom/gauges/compas/bearing_2_left")) -- стрелка направления 2 радиокомпаса
defineProperty("bearing_3", globalPropertyf("sim/custom/radio/compass_adf1")) -- стрелка направления 3 радиокомпаса
defineProperty("bearing_4", globalPropertyf("sim/custom/radio/compass_adf2")) -- стрелка направления 4 радиокомпаса
defineProperty("source_1_switch", globalPropertyi("tu154b2/custom/gauges/compas/source_1_switch_left")) -- переключатель стрелки 1 радиокомпаса. 0 - пусто, 1 - АРК1, 2 - АРК2, 3 - VOR1, 4 - VOR2, 5 - РСБН
defineProperty("source_2_switch", globalPropertyi("tu154b2/custom/gauges/compas/source_2_switch_left")) -- переключатель стрелки 2 радиокомпаса
defineProperty("source_3_switch", globalPropertyi("tu154b2/custom/switchers/ovhd/ushdb_mode_1")) -- переключатель стрелки 1 радиокомпаса. 0 - пусто, 1 - АРК1, 2 - АРК2, 3 - VOR1, 4 - VOR2, 5 - РСБН
defineProperty("source_4_switch", globalPropertyi("tu154b2/custom/switchers/ovhd/ushdb_mode_2")) -- переключатель стрелки 2 радиокомпаса



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control










local main_scale_act = math.random(-180, 180)

set(radiocomp_scale, main_scale_act)

local nd_1_angle = math.random(-180, 180)
local nd_2_angle = math.random(-180, 180)
local nd_3_angle = math.random(-180, 180)
local nd_4_angle = math.random(-180, 180)

local nd_1_act = math.random(-180, 180)
local nd_2_act = math.random(-180, 180)
local nd_3_act = math.random(-180, 180)
local nd_4_act = math.random(-180, 180)


function update()
	
	local MASTER = get(ismaster) ~= 1	

	
	local passed = get(frame_time)
	local power = get(bus36_volt) > 30

	main_scale_act = get(main_scale_act)
	
	
	if power then
		
		-- main course --
		local course = get(course_bgmk)
				
		local cur_delta = main_scale_act - course
				
		if cur_delta > 180 then cur_delta = cur_delta - 360
		elseif cur_delta < -180 then cur_delta = cur_delta + 360 end
				
		if cur_delta > 1 then main_scale_act = main_scale_act - passed * 30
		elseif cur_delta < -1 then main_scale_act = main_scale_act + passed * 30
		else main_scale_act = main_scale_act - cur_delta * passed * 20
		end
		
	end
	
	
	-- set limits
	if main_scale_act > 180 then main_scale_act = main_scale_act - 360
	elseif main_scale_act < -180 then main_scale_act = main_scale_act + 360 end

	if MASTER then set(radiocomp_scale, main_scale_act) end
	
	-- needles angle	
	if power then
		
		local source_1 = get(source_1_switch)
		local source_2 = get(source_2_switch)
		local source_3 = get(source_3_switch)
		local source_4 = get(source_4_switch)
		
		
		if source_1 == 1 and get(ark15_L_ON) == 1 then 
			nd_1_angle = get(adf_bear_1)
		elseif source_1 == 3 and get(nav_L_ON) == 1 then 
			nd_1_angle = get(vor_bear_1) 
		end
		
		if source_2 == 2 and get(ark15_R_ON) == 1 then 
			nd_2_angle = get(adf_bear_2)
		elseif source_2 == 4 and get(nav_R_ON) == 1 then 
			nd_2_angle = get(vor_bear_2) 
		end
		
		if source_3 == 0 and get(ark15_L_ON) == 1 then 
			nd_3_angle = get(adf_bear_1)
		elseif source_3 == 1 and get(nav_L_ON) == 1 then 
			nd_3_angle = get(vor_bear_1) 
		end
		
		if source_4 == 0 and get(ark15_R_ON) == 1 then 
			nd_4_angle = get(adf_bear_2)
		elseif source_4 == 1 and get(nav_R_ON) == 1 then 
			nd_4_angle = get(vor_bear_2) 
		end
		
		-- smooth movement
		local delta_1 = nd_1_angle - nd_1_act
		
		while delta_1 > 180 do delta_1 = delta_1 - 360 end
		while delta_1 < -180 do delta_1 = delta_1 + 360 end

		nd_1_act = nd_1_act + delta_1 * passed * 2
		
		--
		local delta_2 = nd_2_angle - nd_2_act
		
		while delta_2 > 180 do delta_2 = delta_2 - 360 end
		while delta_2 < -180 do delta_2 = delta_2 + 360 end
		
		nd_2_act = nd_2_act + delta_2 * passed * 2
        
		local delta_3 = nd_3_angle - nd_3_act
		
		while delta_3 > 180 do delta_3 = delta_3 - 360 end
		while delta_3 < -180 do delta_3 = delta_3 + 360 end
		
		nd_3_act = nd_3_act + delta_3 * passed * 2
        
		local delta_4 = nd_4_angle - nd_4_act
		
		while delta_4 > 180 do delta_4 = delta_4 - 360 end
		while delta_4 < -180 do delta_4 = delta_4 + 360 end
		
		nd_4_act = nd_4_act + delta_4 * passed * 2
	
	end
	
if MASTER then	
	
	set(bearing_1, nd_1_act)
	set(bearing_2, nd_2_act)
	set(bearing_3, nd_3_act)
	set(bearing_4, nd_4_act)

end	
	
	
	
	
	
	

end