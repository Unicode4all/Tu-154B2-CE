size = {2048, 2048}

-- define property table
-- datarefs
defineProperty("outer_marker", globalPropertyi("sim/cockpit/misc/outer_marker_lit"))   -- runway markers
defineProperty("middle_marker", globalPropertyi("sim/cockpit/misc/middle_marker_lit"))
defineProperty("inner_marker", globalPropertyi("sim/cockpit/misc/inner_marker_lit"))

defineProperty("alt", globalPropertyf("sim/flightmodel/position/y_agl"))
defineProperty("mrp_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/sp50_nav_mode")) -- 0 - landing, 1 = navigation
--defineProperty("marker_audio", globalPropertyi("sim/cockpit/radios/gear_audio_working"))

--[[
tu154b2/custom/switchers/ovhd/sp50_mode	int	режим СП50. 0 - ILS, 1 - Katet, 2 - SP-50	0
tu154b2/custom/switchers/ovhd/sp50_nav_mode	int	режим СП50. посадка - маршрут	0

--]]


-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("mrp_cc", globalPropertyf("tu154b2/custom/xap/An24_gauges/mrp_cc"))
defineProperty("mp_1_cc", globalPropertyf("tu154b2/custom/radio/nav1_pow_cc"))
defineProperty("mp_2_cc", globalPropertyf("tu154b2/custom/radio/nav2_pow_cc"))
-- sfail
defineProperty("sim_fail", globalPropertyi("sim/operation/failures/rel_marker"))
defineProperty("mrp_fail", globalPropertyi("tu154b2/custom/failures/mrp_fail"))
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))


-- lamps
defineProperty("marker_1", globalPropertyf("tu154b2/custom/lights/marker_1")) -- marker 1
defineProperty("marker_2", globalPropertyf("tu154b2/custom/lights/marker_2")) -- marker 2
defineProperty("marker_3", globalPropertyf("tu154b2/custom/lights/marker_3")) -- marker 3

defineProperty("lamp_test", globalPropertyi("tu154b2/custom/buttons/lamp_test_front")) -- кнопка проверки ламп на передней панели	0
defineProperty("day_night_set", globalPropertyf("tu154b2/custom/lights/day_night_set")) -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.
defineProperty("spu_volume2", globalPropertyf("sim/custom/radio/spu_volume2_n"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
local bell = loadSample(moduleDirectory .. '/Custom Sounds/mrp_bell.wav') --
local bell2 = loadSample(moduleDirectory .. '/Custom Sounds/mrp_bell2.wav') --


local out_lit = 0
local mid_lit = 0
local in_lit = 0


function update()
	local  external = 0
	if get(external_view) > 0 or get(pilot_Z) > -20 then
	   external = 1
    end
	local work = get(alt) < 5000 and get(alt) > 10
	local power = get(mrp_fail) == 0 and get(mp_1_cc)+get(mp_2_cc)>0
	--print(mode)
	if power then
		set(mrp_cc, 2)
		set(sim_fail, 0)
		out_lit = get(outer_marker) * bool2int(work)
		mid_lit = get(middle_marker) * bool2int(work)
		in_lit = get(inner_marker) * bool2int(work)
	else
		set(mrp_cc, 0)
		set(sim_fail, 6)
		out_lit = 0
		mid_lit = 0
		in_lit = 0
		if isSamplePlaying(bell2) then stopSample(bell2) end
		if isSamplePlaying(bell) then stopSample(bell) end
	end
	
	local test_btn = get(lamp_test) * math.max(get(bus27_volt_right) - 10 / 18.5, 0)
	local day_night = 1 - get(day_night_set) * 0.25
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0) * day_night
	-- sounds
	
	if out_lit>0 and work and external == 0 then 
		if not isSamplePlaying(bell) then playSample(bell, false) end
	end
	if (mid_lit>0 or in_lit>0) and work and external == 0 then 
		if not isSamplePlaying(bell2) then playSample(bell2, false) end
	end
	local spu_vol=get(spu_volume2)
	setSampleGain(bell, 1000 * spu_vol)
	setSampleGain(bell2, 1000 *spu_vol)
	
	
	
	set(marker_1, math.max(out_lit * lamps_brt, test_btn))
	set(marker_2, math.max(mid_lit * lamps_brt, test_btn))
	set(marker_3, math.max(in_lit * lamps_brt, test_btn))
	
	

end





