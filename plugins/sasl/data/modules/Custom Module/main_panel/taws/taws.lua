-- this is main TAWS script
size = {666, 513}

components = {
	
	taws_panel {},
	
	taws_logic {},
	
	taws_warn_logic {},
	
	taws_sound {},
	
	-- welcome screen
	scr_welcome {
		position = {0, 0, size[1], size[2]},
		
	},
	
	-- top map screen
	-- scr_map_top {
		-- position = {0, 0, size[1], size[2]},
		
	-- },
	
	-- scr_map_top {
		-- position = {0, size[2], size[1], size[2]},
		
	-- },
	
	-- side map
	scr_map_side {
		position = {0, 770, size[1], size[2]},
		capt = 0,
		max_m = globalPropertyf("tu154b2/custom/taws/max_r"),
		min_m = globalPropertyf("tu154b2/custom/taws/min_r"),
		max_m_1000 = globalPropertyf("tu154b2/custom/taws/max_r_1000"),
		min_m_1000 = globalPropertyf("tu154b2/custom/taws/min_r_1000"),
		kont_dist_mode = globalPropertyi("sim/custom/kontur/dist_mode_r"),
	},
	
		-- side map
	scr_map_side {
		position = {0, 0, size[1], size[2]},
		capt = 1,
	},
	
	-- clock
	-- scr_clock {
		-- position = {0, 0, size[1], size[2]},
	
	-- },	

	-- test
	scr_test {
		position = {0, 0, size[1], size[2]},
		
	},
	
	--game
	-- scr_game {
		-- position = {0, 0, size[1], size[2]},
	-- },
	
	-- on screen and voice messages
	-- taws_msg{
		-- position = {0, 0, size[1], size[2]},
	-- },	
	
}