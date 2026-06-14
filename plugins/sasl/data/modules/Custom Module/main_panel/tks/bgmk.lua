-- this is BGMK logic

-- sources
defineProperty("course_ga_1", globalPropertyf("tu154b2/custom/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154b2/custom/tks/course_ga_2")) -- курс на ГА2

defineProperty("course_mk_1", globalPropertyf("tu154b2/custom/tks/course_mk_1")) -- курс на MK5
defineProperty("course_mk_2", globalPropertyf("tu154b2/custom/tks/course_mk_2")) -- курс на MK5



defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2


-- controls
defineProperty("tks_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode")) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК
defineProperty("tks_corrr_button", globalPropertyi("tu154b2/custom/buttons/ovhd/tks_corrr_button")) -- кнопка согласования

defineProperty("tks_corr_1", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_corr_1")) -- коррекция БГМК 2 - 1
defineProperty("tks_corr_2", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_corr_2")) -- коррекция БГМК 2 - 2

defineProperty("tks_user", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode_left")) -- потребители 0 - контр, 1 - осн

-- fails
defineProperty("fail1", globalPropertyi("tu154b2/custom/failures/tks_bgmk1_fail")) -- отказ
defineProperty("fail2", globalPropertyi("tu154b2/custom/failures/tks_bgmk2_fail")) -- отказ

-- result
defineProperty("course_bgmk_1", globalPropertyf("tu154b2/custom/tks/course_bgmk_1")) -- курс на БГМК1
defineProperty("course_bgmk_2", globalPropertyf("tu154b2/custom/tks/course_bgmk_2")) -- курс на БГМК2

defineProperty("course_gpk", globalPropertyf("tu154b2/custom/tks/course_gpk")) -- результирующий курс ТКС - ГПК
defineProperty("course_gmk", globalPropertyf("tu154b2/custom/tks/course_gmk")) -- результирующий курс ТКС - ГМК

defineProperty("bgmk_1_cc", globalPropertyf("tu154b2/custom/tks/bgmk_1_cc")) -- потребление тока БГМК
defineProperty("bgmk_2_cc", globalPropertyf("tu154b2/custom/tks/bgmk_2_cc")) -- потребление тока БГМК
-- correction interrupter VK90
vk90 = globalPropertyi("tu154b2/custom/tks/vk90")
kln_psi = globalPropertyf("tu154b2/custom/tks/kln_psi")
-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("eng2_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[1]")) -- engine 2 rpm
defineProperty("eng3_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[2]")) -- engine 3 rpm




-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



local bgmk_corr_1 = 0
local bgmk_corr_2 = 0




local notLoaded = true
local start_timer = 0

local function sw_reset()

	if get(eng1_N1) < 5 and get(eng2_N1) < 5 and get(eng3_N1) < 5 then
		bgmk_corr_1 = math.random(-180, 180)
		bgmk_corr_2 = math.random(-180, 180)
	end
	
	

end


function update()
	local passed = get(frame_time)
	local vk=get(vk90)
	local MASTER = get(ismaster) ~= 1	
	
	
	
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		sw_reset()
		notLoaded = false
	end


	
	local power_1 = get(bus27_volt_left) > 13 and get(bus36_volt_pts250_2) > 30 and get(fail1) == 0
	local power_2 = get(bus27_volt_right) > 13 and get(bus36_volt_right) > 30 and get(fail2) == 0
	
	local mode = get(tks_mode)
	local button = get(tks_corrr_button)
	
	local ga1 = get(course_ga_1)
	local ga2 = get(course_ga_2)
	
	
	-- BGMK - 1 --
	local bgmk_cur_1 = ga1 + bgmk_corr_1
	
	if get(tks_corr_1) == 1 then
		local mag_crs = get(course_mk_1)
		if mode == 0 then -- MK mode, no BGMK-1 correction
		

		
		elseif mode > 0 then -- GPK mode
			
			local delta = bgmk_cur_1 - mag_crs
			
			while delta > 180 do
				delta = delta - 360
			end
			
			while delta < -180 do
				delta = delta + 360
			end
			
			if delta > 1 then 
				bgmk_corr_1 = bgmk_corr_1 - (passed * 0.1 + button * passed * 3) * vk
			elseif delta < -1 then 
				bgmk_corr_1 = bgmk_corr_1 + (passed * 0.1 + button * passed * 3) * vk
			else 
				
				local corr_need = mag_crs - ga1
				
				while corr_need > 180 do
					corr_need = corr_need - 360
				end
				
				while corr_need < -180 do
					corr_need = corr_need + 360
				end
				
				bgmk_corr_1 = bgmk_corr_1 + (corr_need - bgmk_corr_1) * (passed * 0.1 + button * passed * 3) * vk
			end
			
			
		end
		
	
	
	
	end
	
	if bgmk_corr_1 > 180 then bgmk_corr_1 = bgmk_corr_1 - 360
	elseif bgmk_corr_1 < -180 then bgmk_corr_1 = bgmk_corr_1 + 360 end
	
	-- set results
	if bgmk_cur_1 > 180 then bgmk_cur_1 = bgmk_cur_1 - 360
	elseif bgmk_cur_1 < -180 then bgmk_cur_1 = bgmk_cur_1 + 360 end
	
	
	
	
	
	-- BGMK - 2 --
	local bgmk_cur_2 = ga2 + bgmk_corr_2
	
	if get(tks_corr_2) == 1 then
		local mag_crs = get(course_mk_2)
		if mode == 0 then -- MK mode
			
			local delta = bgmk_cur_2 - mag_crs
			
			while delta > 180 do
				delta = delta - 360
			end
			
			while delta < -180 do
				delta = delta + 360
			end
			
			if delta > 1 then 
				bgmk_corr_2 = bgmk_corr_2 - (passed * 0.1) * vk
			elseif delta < -1 then 
				bgmk_corr_2 = bgmk_corr_2 + (passed * 0.1) * vk
			else 
				
				local corr_need = mag_crs - ga2
				
				while corr_need > 180 do
					corr_need = corr_need - 360
				end
				
				while corr_need < -180 do
					corr_need = corr_need + 360
				end
				
				bgmk_corr_2 = bgmk_corr_2 + (corr_need - bgmk_corr_2) * (passed * 0.1) * vk
			end

		
		elseif mode > 0 then -- GPK mode
			
			local delta = bgmk_cur_2 - mag_crs
			
			while delta > 180 do
				delta = delta - 360
			end
			
			while delta < -180 do
				delta = delta + 360
			end
			
			if delta > 1 then 
				bgmk_corr_2 = bgmk_corr_2 - (passed * 0.1 + button * passed * 3) * vk
			elseif delta < -1 then 
				bgmk_corr_2 = bgmk_corr_2 + (passed * 0.1 + button * passed * 3) * vk
			else 
				
				local corr_need = mag_crs - get(course_ga_2)
				
				while corr_need > 180 do
					corr_need = corr_need - 360
				end
				
				while corr_need < -180 do
					corr_need = corr_need + 360
				end
				
				bgmk_corr_2 = bgmk_corr_2 + (corr_need - bgmk_corr_2) * (passed * 0.1 + button * passed * 3) * vk
			end
			
			
		end

	
	end
	
	if bgmk_corr_2 > 180 then bgmk_corr_2 = bgmk_corr_2 - 360
	elseif bgmk_corr_2 < -180 then bgmk_corr_2 = bgmk_corr_2 + 360 end
	
	-- set results
	if bgmk_cur_2 > 180 then bgmk_cur_2 = bgmk_cur_2 - 360
	elseif bgmk_cur_2 < -180 then bgmk_cur_2 = bgmk_cur_2 + 360 end
	
	
	
	
	
	-- set res course
	if MASTER then	
		local kln_mag=bgmk_cur_1
		if kln_mag<0 then
			kln_mag=kln_mag+360
		end
		set(kln_psi,kln_mag)
		set(course_bgmk_1, bgmk_cur_1)
		set(course_bgmk_2, bgmk_cur_2)	
		
		local users = get(tks_user) -- потребители 0 - контр, 1 - осн
		
		if users == 1 then
			set(course_gpk, ga1)
			set(course_gmk, bgmk_cur_1)
		else
			set(course_gpk, ga2)
			set(course_gmk, bgmk_cur_2)
		end
	else
		local kln_mag=get(course_bgmk_1)
		if kln_mag<0 then
			kln_mag=kln_mag+360
		end
		set(kln_psi,kln_mag)

	end
	
	set(bgmk_1_cc, bool2int(power_1))
	set(bgmk_2_cc, bool2int(power_2))



end