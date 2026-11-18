-- this is main TAWS script
size = {666, 513}
rng =  globalPropertyi("sim/cockpit2/EFIS/map_range")
brt_handle = globalPropertyf("sim/custom/kontur/kntr_1_brt_sw")
map_mode = globalPropertyi("sim/cockpit2/EFIS/map_mode")
wx_mode = globalPropertyi("sim/cockpit2/EFIS/EFIS_weather_mode")
wx_left = globalPropertyi("sim/custom/kontur/left_wx")
wx_left_aux = globalPropertyi("sim/custom/kontur/left_wx_aux")
wx_right = globalPropertyi("sim/custom/kontur/right_wx")
wx_right_aux = globalPropertyi("sim/custom/kontur/right_wx_aux")
rng_fo =  globalPropertyi("sim/cockpit2/EFIS/map_range_copilot")
brt_handle_fo = globalPropertyf("sim/custom/kontur/kntr_2_brt_sw")
map_mode_fo = globalPropertyi("sim/cockpit2/EFIS/map_mode_copilot")
radar_pow = globalPropertyi("sim/custom/kontur/weather_lit")
kont_dist_mode = globalPropertyi("sim/custom/kontur/dist_mode_l")
components = {
	
	radar_test_draw {
		position = {0, 0, size[1], size[2]},
		range = function()
			return get(rng)
		end,
		bright = function()
			return get(brt_handle)
		end,
		mode = function()
			return get(map_mode)
		end,
		dist_mode = function()
			return get(kont_dist_mode)
		end,
		visible = function()
			return get(wx_mode) == 0  and (get(wx_left) > 0 or get(wx_left_aux) > 0) and get(radar_pow) > 0
		end,
	},
	radar_test_draw {
		position = {0, 770, size[1], size[2]},
		range = function()
			return get(rng_fo)
		end,
		bright = function()
			return get(brt_handle_fo)
		end,
		mode = function()
			return get(map_mode_fo)
		end,
		dist_mode = function()
			return get(kont_dist_mode)
		end,
		visible = function()
			return get(wx_mode) == 0  and (get(wx_right) > 0 or get(wx_right_aux) > 0) and get(radar_pow) > 0
		end,
	},
	
}