-- this is the ABSU indicators

-- sources
defineProperty("absu_contr_pitch", globalPropertyf("tu154b2/custom/absu/contr_pitch")) -- отклонение штока РА56 по тангажу
defineProperty("absu_contr_roll", globalPropertyf("tu154b2/custom/absu/contr_roll")) -- отклонение штока РА56 по крену
defineProperty("absu_contr_yaw", globalPropertyf("tu154b2/custom/absu/contr_yaw")) -- отклонение штока РА56 по направлению


defineProperty("int_pitch_trim", globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim")) -- положение триммера руля высоты
--defineProperty("gear1_deflect", globalPropertyf("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))  -- vertical deflection of front gear

-- results
defineProperty("rudder_pos_ind", globalPropertyf("tu154b2/custom/gauges/misc/rudder_pos_ind")) -- индикатор положения РН
defineProperty("aileron_pos_ind", globalPropertyf("tu154b2/custom/gauges/misc/aileron_pos_ind")) -- индикатор положения элеронов
defineProperty("elevator_pos_ind", globalPropertyf("tu154b2/custom/gauges/misc/elevator_pos_ind")) -- индикатор положения РВ

defineProperty("absu_power_27", globalPropertyi("tu154b2/custom/absu_power_27"))
defineProperty("ismaster", globalPropertyf("scp/api/ismaster"))

function update()
	local power=get(absu_power_27)
	if get(ismaster) ~= 1 then
		set(rudder_pos_ind, get(absu_contr_yaw) / 0.4*power)
		set(aileron_pos_ind, get(absu_contr_roll) / 0.5*power)
		set(elevator_pos_ind, get(absu_contr_pitch) / 0.345*power)
	end

	--if get(gear1_deflect) > 0.01 and get(int_pitch_trim) < -0.5 then set(elevator_pos_ind, -get(absu_contr_pitch) / 0.4) end
	
	

end