
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time"))

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

defineProperty("gear1_deflect", globalProperty("sim/flightmodel2/gear/total_deflection_rate[0]"))
defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/total_deflection_rate[1]"))
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/total_deflection_rate[2]"))
defineProperty("grnd_1", globalProperty("sim/flightmodel2/gear/on_ground[0]"))
defineProperty("grnd_2", globalProperty("sim/flightmodel2/gear/on_ground[1]"))
defineProperty("grnd_3", globalProperty("sim/flightmodel2/gear/on_ground[2]"))
defineProperty("pave", globalPropertyi("sim/flightmodel/ground/surface_texture_type")) -- type of pavement
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
local touch_sound_1 = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/touchdown.wav')
local touch_sound_2 = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/touchdown.wav')
local touch_sound_3 = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/touchdown.wav')
local touch_asph_main = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/touch_main_asph.wav')
local touch_asph_nose = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/touch_nose_asph.wav')
local grnd_1_prev=get(grnd_1)
local grnd_2_prev=get(grnd_2)
local grnd_3_prev=get(grnd_3)
local max_rate=0
function update()
	local rate_1=get(gear1_deflect)
	local rate_2=get(gear2_deflect)
	local rate_3=get(gear3_deflect)
	local on_grnd_1=get(grnd_1)
	local on_grnd_2=get(grnd_2)
	local on_grnd_3=get(grnd_3)
	local passed = get(frame_time)
	local asph=get(pave)==3
	if get(external_view) == 0 then
		if grnd_1_prev<on_grnd_1 and rate_1>0.12 then
			if asph then
				if not isSamplePlaying(touch_asph_nose) then
					playSample(touch_asph_nose, false)
					setSampleGain(touch_asph_nose, rate_1*150)
				end
			else
				if not isSamplePlaying(touch_sound_1) then
					playSample(touch_sound_1, false)
					setSampleGain(touch_sound_1, rate_1*300)
				end
			end
		end
		if (grnd_2_prev<on_grnd_2 and rate_2>0.12) or (grnd_3_prev<on_grnd_3 and rate_3>0.12) then
			if asph then
				if not isSamplePlaying(touch_asph_main) then
					playSample(touch_asph_main, false)
					setSampleGain(touch_asph_main, (rate_2+rate_3)/2*200)
				end
			else
				if not isSamplePlaying(touch_sound_2) then
					playSample(touch_sound_2, false)
					setSampleGain(touch_sound_2, (rate_2+rate_3)/2*200)
				end
			end
		end
		if rate_2>max_rate then
			max_rate=rate_2
		end
		-- if grnd_3_prev<on_grnd_3 and rate_3>0.1 then
			-- playSample(touch_sound_3, false)
			-- setSampleGain(touch_sound_1, rate_3*200*get(db2))
			-- set(db3,rate_3)
		-- end
		grnd_1_prev=on_grnd_1
		grnd_2_prev=on_grnd_2
		grnd_3_prev=on_grnd_3
	end
end