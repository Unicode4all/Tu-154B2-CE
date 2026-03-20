-- this is big course indicator USh1


-- sources
defineProperty("course_ga_1", globalPropertyf("tu154b2/custom/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154b2/custom/tks/course_ga_2")) -- курс на ГА2
defineProperty("diss_slip_angle", globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")) -- угол сноса по ДИСС
defineProperty("tks_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode")) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- power
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left"))
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))


-- lamps
defineProperty("tks_mode_lit_mk", globalPropertyf("tu154b2/custom/lights/tks_mode_lit_mk")) -- лампочка режима ТКС - МК
defineProperty("tks_mode_lit_ak", globalPropertyf("tu154b2/custom/lights/tks_mode_lit_ak")) -- лампочка режима ТКС - АК
defineProperty("tks_mode_lit_gpk", globalPropertyf("tu154b2/custom/lights/tks_mode_lit_gpk")) -- лампочка режима ТКС - ГПК


-- results
defineProperty("big_course_needle", globalPropertyf("tu154b2/custom/gauges/compas/big_course_needle")) -- стрелка "самолетик"
defineProperty("big_true_course_needle", globalPropertyf("tu154b2/custom/gauges/compas/big_true_course_needle")) -- стрелка ПУ
defineProperty("big_tri_needle", globalPropertyf("tu154b2/custom/gauges/compas/big_tri_needle")) -- треугольная стрелка

defineProperty("ush_cc", globalPropertyf("tu154b2/custom/tks/ush_cc")) -- потребление тока УШ
defineProperty("nvu_power_on", globalPropertyi("tu154b2/custom/switchers/console/nvu_power_on")) -- питание НВУ
defineProperty("mag_psi", globalPropertyf("sim/flightmodel/position/mag_psi")) -- mag course
defineProperty("potr", globalPropertyf("tu154b2/custom/switchers/ovhd/tks_mode_left"))
defineProperty("diss_on", globalPropertyi("tu154b2/custom/switchers/ovhd/diss_on"))

local notLoaded = true
local start_timer=0
local course_main =get(course_ga_1)
local course_aux =get(course_ga_2)
local course_pu = course_main

function update()
	
	local passed = get(frame_time)
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.4 then
		course_main =get(course_ga_1)
		course_aux =get(course_ga_2)
		set(big_course_needle, course_main)
		set(big_tri_needle, course_aux)
		notLoaded = false
	end	
	local power = get(bus27_volt_right) > 13

	local main_ga = get(course_ga_1)
	local aux_ga = get(course_ga_2)
	local slip = get(diss_slip_angle)
	
	if power then
	
		local delta_main = course_main - main_ga
		
		while delta_main > 180 do delta_main = delta_main - 360 end
		while delta_main < -180 do delta_main = delta_main + 360 end
		
		if delta_main > 1 then course_main = course_main - passed * 30
		elseif delta_main < -1 then course_main = course_main + passed * 30
		else course_main = course_main - delta_main * passed * 20
		end
		
		
		local delta_aux = course_aux - aux_ga

		while delta_aux > 180 do delta_aux = delta_aux - 360 end
		while delta_aux < -180 do delta_aux = delta_aux + 360 end
		
		if delta_aux > 1 then course_aux = course_aux - passed * 30
		elseif delta_aux < -1 then course_aux = course_aux + passed * 30
		else course_aux = course_aux - delta_aux * passed * 20
		end
		
		 
		if get(diss_on) == 1 and get(bus27_volt_right) > 13 and get(bus36_volt_left) > 30 and get(bus115_1_volt) > 100 then
			local delta_pu = course_pu - course_main - slip
			if get(potr)==0 then
				delta_pu = course_pu - course_aux - slip
			end
			while delta_pu > 180 do delta_pu = delta_pu - 360 end
			while delta_pu < -180 do delta_pu = delta_pu + 360 end
			if delta_pu > 1 then 
				course_pu = course_pu - passed * 30
			elseif delta_pu < -1 then 
				course_pu = course_pu + passed * 30
			else 
				course_pu = course_pu - delta_pu * passed * 20
			end
			set(big_true_course_needle, course_pu)
		else
			course_pu=get(big_true_course_needle)
		end
		
		-- lamps
		local mode = get(tks_mode)
		if mode == 0 then -- MK mode
			set(tks_mode_lit_mk, 1)
			set(tks_mode_lit_gpk, 0)
			set(tks_mode_lit_ak, 0)
		elseif mode == 1 then -- GPK mode
			set(tks_mode_lit_mk, 0)
			set(tks_mode_lit_gpk, 1)
			set(tks_mode_lit_ak, 0)
		else -- AK mode
			set(tks_mode_lit_mk, 0)
			set(tks_mode_lit_gpk, 0)
			set(tks_mode_lit_ak, 1)
		end
		set(big_course_needle, course_main)
		set(big_tri_needle, course_aux)
	else -- no power
		set(tks_mode_lit_mk, 0)
		set(tks_mode_lit_gpk, 0)
		set(tks_mode_lit_ak, 0)
	
	end
	
	
	
	

	set(ush_cc, bool2int(power))

end