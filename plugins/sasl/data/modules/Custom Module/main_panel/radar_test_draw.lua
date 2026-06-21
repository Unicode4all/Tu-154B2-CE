size = {666, 513}
defineProperty("range")
defineProperty("bright")
defineProperty("mode")
defineProperty("dist_mode")
sweep = globalPropertyf("sim/cockpit2/EFIS/EFIS_weather_sweep")
wx_test = globalPropertyi("sim/custom/kontur/left_wx_test")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))

function draw()
		local angle=120-(get(sweep)+57)*1.0526
		local range_coef = 1  * (1+0.1 * get(dist_mode))
		local disp_range = get(range)
		local brt = get(bright)
		local offst = 0
		if get(mode) == 5 then
			offst = 188
		end
		if disp_range == 1 then range_coef = 40/8
		elseif disp_range == 2 then range_coef = 40/20 * 1.04  * (1+0.1 * get(dist_mode))
		elseif disp_range == 4 then range_coef = 40/100 * 0.95 * (1 + 0.15 * get(dist_mode)) offst = offst -5
		elseif disp_range == 5 then range_coef = 40/200 * 0.95 * (1 + 0.15 * get(dist_mode)) offst = offst -5
		end
		if offst == 0 then
			if disp_range > 1 then
				sasl.gl.drawArc ( 336 , 35 + offst, 292*range_coef , 230*range_coef ,30 , 120, {1,1,1,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 292*range_coef , 230*range_coef ,30 , angle, {1,0,1,brt} )
			end
			if disp_range > 2 then
				sasl.gl.drawArc ( 336 , 35 + offst, 354*range_coef , 292*range_coef ,30 , 120, {1, 0, 0, brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 416*range_coef , 354*range_coef ,30 , 120, {0.094 ,0.557 ,0.816 ,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 416*range_coef , 354*range_coef ,30 , angle, {0.957 ,1.000 ,0.000 ,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 478*range_coef , 416*range_coef ,30 , 120, {0.016 ,0.596 ,0.016 ,brt} )
			end
			if get(wx_test)>0 then
				sasl.gl.drawArc ( 336 , 35 + offst, 292*range_coef*0.5 , 230*range_coef*0.33 ,30 , 120, {1, 0, 0, brt} )
			end
		else
			if disp_range > 2 then
				sasl.gl.drawArc ( 336 , 35 + offst, 292*range_coef , 230*range_coef ,30 , 120, {1,1,1,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 292*range_coef , 230*range_coef ,30 , angle, {1,0,1,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 354*range_coef , 292*range_coef ,30 , 120, {1, 0, 0, brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 416*range_coef , 354*range_coef ,30 , 120, {0.094 ,0.557 ,0.816 ,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 416*range_coef , 354*range_coef ,30 , angle, {0.957 ,1.000 ,0.000 ,brt} )
				sasl.gl.drawArc ( 336 , 35 + offst, 478*range_coef , 416*range_coef ,30 , 120, {0.016 ,0.596 ,0.016 ,brt} )
			end
			if get(wx_test)>0 and disp_range > 1 then
				sasl.gl.drawArc ( 336 , 35 + offst, 292*range_coef*0.5 , 230*range_coef*0.33 ,30 , 120, {1, 0, 0, brt} )
			end
		end

end