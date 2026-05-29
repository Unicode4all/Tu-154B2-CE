-- this is main TAWS script
size = {1000, 770}

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
		position = {0, size[2], size[1], size[2]},
		capt = 0,
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
	taws_msg{
		position = {0, 0, size[1], size[2]},
	},	
	
}