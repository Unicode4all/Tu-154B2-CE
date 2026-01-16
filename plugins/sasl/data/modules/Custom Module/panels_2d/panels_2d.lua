-- this is 2d panels logic
size = {2048, 2048}

-- sim variable
defineProperty("window_height",globalPropertyi("sim/graphics/view/window_height"))
defineProperty("window_width",globalPropertyi("sim/graphics/view/window_width"))
defineProperty("external",globalPropertyi("sim/graphics/view/view_is_external"))

defineProperty("show_gns",globalPropertyi("tu154b2/custom/anim/show_gns"))
defineProperty("show_RXP",globalPropertyi("tu154b2/custom/anim/RXP"))


-- panels variables
defineProperty("show_load_panel",globalPropertyi("tu154b2/custom/panels/show_load_panel")) -- показать панель загрузки
defineProperty("show_absu_panel",globalPropertyi("tu154b2/custom/panels/show_absu_panel")) -- показать панель АБСУ
defineProperty("show_ohvd_panel",globalPropertyi("tu154b2/custom/panels/show_ohvd_panel")) -- показать панель верхней панели
defineProperty("show_nvu_panel",globalPropertyi("tu154b2/custom/panels/show_nvu_panel")) -- показать панель НВУ
defineProperty("show_checklist_panel",globalPropertyi("tu154b2/custom/panels/show_checklist_panel")) -- показать панель НВУ
defineProperty("show_ground_panel",globalPropertyi("tu154b2/custom/panels/show_ground_panel")) -- показать панель наземного обслуживания
defineProperty("show_phone",globalPropertyi("tu154b2/custom/panels/show_phone")) -- показать панель телефона
defineProperty("show_cam",globalPropertyi("tu154b2/custom/panels/show_cam")) -- показать панель камеры
defineProperty("show_palette",globalPropertyi("tu154b2/custom/panels/show_palette")) -- показать панель камеры
defineProperty("show_fail_panel",globalPropertyi("tu154b2/custom/panels/show_fail_panel")) -- показать панель отказов
cockpit_80s = globalPropertyi("sim/custom/b2/kontur_70th")


--defineProperty("KLN90visible", globalPropertyi("tu154b2/custom/xap/KLN90/visible"))


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("control_thro_other", globalPropertyf("tu154b2/custom/SC/control_thro_other")) -- другой человек упраляет РУД-ами




local coef = (get(window_height) / 1024) * 0.8
if coef > 1 then coef = 1 end  -- set initial coefficient for float panel's size - make 'em smaller, if screen resolution less then 1024 by height.




defineProperty("closeImage", loadImage("close.png"))  -- close cross image


palette = subpanel {
	position = { 50, 50, 251 * coef, 305 * coef };
	noBackground = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "palette";	
	components = {
		palette_2d {
			position = { 0, 0, 251 * coef, 305 * coef },
			
		};
		
		textureLit {
			position = { 251 * coef - 15, 305 * coef - 15, 15, 15 },
			image = get(closeImage),
		};
		
	};
}





payload_panel = contextWindow {
	position = { 50, 50, 1024 * coef, 683 * coef };
	noBackground = true;
	noClose = true;
	noDecore = true;
	--resizeProportional = true;
	savePosition = true;
	name = "payload_panel";	
	components = {
		load_panel {
			position = { 0, 0, 1024 * coef, 683 * coef },
			
		};
		
		textureLit {
			position = { 1024 * coef - 15, 683 * coef - 15, 15, 15 },
			image = get(closeImage),
		};
		
	};
}

-- absu_2d_panel = subpanel {
	-- position = { 50, 50, 917 * coef, 597 * coef };
	-- noBackground = true;
	-- noClose = true;
	-- resizeProportional = true;
	-- savePosition = true;
	-- name = "absu_2d_panel";	
	-- components = {
		-- absu_panel_2d {
			-- position = { 0, 0, 917 * coef, 597 * coef },
			
		-- };
		
		-- textureLit {
			-- position = { 917 * coef - 15, 597 * coef - 15, 15, 15 },
			-- image = get(closeImage),
		-- };

	-- };
-- }
absu_2d_panel = contextWindow {
	position = { 50, 50, 917 * coef, 597 * coef };
	noBackground = true;
	minimumSize = { 450 * coef , 300 * coef };
	maximumSize = { 1200 , 1200 };
	noDecore = true;
	noClose = true;
	savePosition = true;
	name = "absu_2d_panel";	
	components = {
		absu_panel_2d {
			position = { 0, 0, 917 * coef, 597 * coef },
			
		};
		
		textureLit {
			position = { 917 * coef - 15, 597 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};
}

-- ovhd_2d_panel = subpanel {
	-- position = { 50, 0, 1458 * coef, 1013 * coef };
	-- noBackground = true;
	-- noClose = true;
	-- resizeProportional = true;
	-- savePosition = true;
	-- name = "ovhd_2d_panel";	
	-- components = {
		-- overhead_2d {
			-- position = { 0, 0, 1458 * coef, 1013 * coef },
			
		-- };
		
		-- textureLit {
			-- position = { 1458 * coef - 15, 1013 * coef - 15, 15, 15 },
			-- image = get(closeImage),
		-- };

	-- };
-- }

-- nvu_2D_panel = subpanel {
	-- position = { 50, 0, 636 * coef, 786 * coef };
	-- noBackground = false;
	-- noClose = true;
	-- resizeProportional = true;
	-- savePosition = true;
	-- name = "nvu_2D_panel";	
	-- components = {
		-- nvu_panel_2d {
			-- position = { 0, 0, 636 * coef, 786 * coef },
			
		-- };
		
		-- textureLit {
			-- position = { 636 * coef - 15, 786 * coef - 15, 15, 15 },
			-- image = get(closeImage),
		-- };

	-- };

-- }

checklist_panel = contextWindow {
	position = { 50, 50, 240 * coef, 850 * coef };
	noBackground = true;
	noDecore = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "checklist_panel_2d";	
	components = {
		checklist_panel_2d {
			position = { 0, 0, 240 * coef, 850 * coef },
			
		};
		
		textureLit {
			position = { 240 * coef - 15, 850 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}


ground_srv_panel = contextWindow {
	position = { 50, 50, 655 * coef, 880 * coef };
	noBackground = true;
	noClose = true;
	noDecore = true;
	--resizeProportional = true;
	savePosition = true;
	name = "ground_srv_panel";	
	components = {
		ground_panel {
			position = { 0, 0, 655 * coef, 880 * coef },
			
		};
		
		textureLit {
			position = { 655 * coef - 15, 880 * coef - 15, 15, 15 },
			image = get(closeImage),
		};
		
	};
}

-- uphone = subpanel {
    -- position = { 40, 20, 241 * coef , 446 * coef };
    -- noBackground = true;
    -- noClose = true;
	-- movable = true;
	-- resizeble = true;
	-- resizeProportional = true;
	-- savePosition = true;
	-- name = "uphone";
    -- components = {
		-- UPhone {
         -- position = { 0, 0, 241 * coef, 446 * coef  },
         -- };
		-- textureLit {
 		 -- position = {(241 - 16) * coef , (446 - 16) * coef , 16 * coef , 16 * coef },
		 -- image = get(closeImage),
		 -- };
	-- };
-- }


-- camera_panel = subpanel {
	-- position = { 50, 50, 512 * coef, 512 * coef };
	-- noBackground = true;
	-- noClose = true;
	-- resizeProportional = true;
	-- savePosition = true;
	-- name = "camera_panel";	
	-- components = {
		-- camera {
			-- position = { 0, 0, 512 * coef, 512 * coef },
			
		-- };
		
		-- textureLit {
			-- position = { 512 * coef - 15, 512 * coef - 15, 15, 15 },
			-- image = get(closeImage),
		-- };

	-- };

-- }

fails_panel = contextWindow {
	position = { 50, 100, 512 * coef, 700 * coef };
	noBackground = true;
	noClose = true;
	noDecore = true;
	resizeProportional = true;
	savePosition = false;
	name = "fails_panel";	
	components = {
		failures_2d {
			position = { 0, 0, 512 * coef, 700 * coef },
			
		};
		
		textureLit {
			position = { 512 * coef - 15, 700 * coef - 15, 15, 15 },
			image = get(closeImage),
		};

	};

}

-- images for main menu
defineProperty("menu_wt", loadImage("menus.png", 0, 0, 31, 30))
defineProperty("menu_gr", loadImage("menus.png", 30, 0, 31, 30))
defineProperty("menu_ex_wt", loadImage("menus.png", 0, 30, 31, 90))

defineProperty("nav_ext_gr", loadImage("menus.png", 30, 30, 31, 30))
defineProperty("serv_ext_gr", loadImage("menus.png", 30, 60, 31, 30))
defineProperty("misc_ext_gr", loadImage("menus.png", 30, 90, 31, 30))

defineProperty("nav_menu_wt", loadImage("menus.png", 60, 29, 121, 31))

defineProperty("nav_menu_wt", loadImage("menus.png", 60, 29, 121, 31))
defineProperty("serv_menu_wt", loadImage("menus.png", 60, 59, 61, 31))
defineProperty("misc_menu_wt", loadImage("menus.png", 60, 89, 121, 31))

defineProperty("thro_red", loadImage("menus.png", 90, 226, 32, 31))
defineProperty("thro_grn", loadImage("menus.png", 120, 226, 32, 31))
defineProperty("load_men", loadImage("menus.png", 60, 166, 32, 31))
defineProperty("gnd_men", loadImage("menus.png", 90, 166, 32, 31))

local main_menu_ext = false
local nav_ext = false
local serv_ext = false
local misc_ext = false



-- nav_menu = subpanel {
	-- position = { 30, 570, 121, 31 };
	-- noBackground = false;
	-- noClose = true;
	-- noResize = true;
	-- noMove = true;

	
	-- components = {
		-- textureLit {
			-- position = { 0, 0, 121, 31 };
			-- image = get(nav_menu_wt);
		-- },
		

		-- clickable { -- KLN
			-- position = {90, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- if get(show_gns) == 1 then  -- GNS
					-- commandOnce(findCommand("sim/GPS/g430n1_popup"))
					-- set(KLN90visible, 0)
				-- elseif get(show_gns) == 0 then -- KLN
					-- set(KLN90visible, 1 - get(KLN90visible))
				-- else set(KLN90visible, 0) -- RNX
				-- end
				-- return true
			-- end,
		-- },

		-- clickable { -- OVHD
			-- position = {60, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_ohvd_panel, 1 - get(show_ohvd_panel))
				-- return true
			-- end,
		-- },
		
		-- clickable { -- ABSU
			-- position = {30, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_absu_panel, 1 - get(show_absu_panel))
				-- return true
			-- end,
		-- },		
		
		-- clickable { -- NVU
			-- position = {0, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_nvu_panel, 1 - get(show_nvu_panel))
				-- return true
			-- end,
		-- },		
		
	-- };
-- }



-- serv_menu = subpanel {
	-- position = { 30, 540, 61, 31 };
	-- noBackground = false;
	-- noClose = true;
	-- noResize = true;
	-- noMove = true;

	
	-- components = {
		-- textureLit {
			-- position = { 0, 0, 61, 31 };
			-- image = get(serv_menu_wt);
		-- },
		

		-- clickable {
			-- position = {0, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_load_panel, 1 - get(show_load_panel))
				-- payload_panel:setIsVisible(not payload_panel:isVisible())
				-- return true
			-- end,
		-- },

		-- clickable {
			-- position = {30, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_ground_panel, 1 - get(show_ground_panel))
				-- return true
			-- end,
		-- },		
		
		
	-- };
-- }



-- misc_menu = subpanel {
	-- position = { 30, 510, 121, 31 };
	-- noBackground = false;
	-- noClose = true;
	-- noResize = true;
	-- noMove = true;

	
	-- components = {
		-- textureLit {
			-- position = { 0, 0, 121, 31 };
			-- image = get(misc_menu_wt);
		-- },
		

		-- clickable {
			-- position = {60, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_checklist_panel, 1 - get(show_checklist_panel))
				-- return true
			-- end,
		-- },
		
		-- clickable {
			-- position = {30, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_phone, 1 - get(show_phone))
				-- return true
			-- end,
		-- },
		
		-- clickable {
			-- position = {0, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_cam, 1 - get(show_cam))
				-- return true
			-- end,
		-- },
		
		-- clickable {
			-- position = {90, 0, 31, 31 },
		  
			-- onMouseDown = function() 
				-- set(show_palette, 1 - get(show_palette))
				-- return true
			-- end,
		-- },
		
	-- };
-- }




-- ext_menu = subpanel {

	-- position = { 0, 510, 31, 90 };
	-- noBackground = false;
	-- noClose = true;
	-- noResize = true;
	-- noMove = true;

	
	-- components = {
		-- textureLit {
			-- position = { 0, 0, 31, 90 };
			-- image = get(menu_ex_wt);
		-- },

		-- textureLit {
			-- position = { 0, 60, 31, 30 };
			-- image = get(nav_ext_gr);
			-- visible = function()
				-- return nav_ext
			-- end;
		-- },		

		-- textureLit {
			-- position = { 0, 30, 31, 30 };
			-- image = get(serv_ext_gr);
			-- visible = function()
				-- return serv_ext
			-- end;
		-- },		

		-- textureLit {
			-- position = { 0, 0, 31, 30 };
			-- image = get(misc_ext_gr);
			-- visible = function()
				-- return misc_ext
			-- end;
		-- },	

		-- clickable {
			-- position = {0, 60, 31, 30 },
		  
			-- onMouseDown = function() 
				-- nav_ext = not nav_ext
				-- return true
			-- end,
		-- },

		-- clickable {
			-- position = {0, 30, 31, 30 },
		  
			-- onMouseDown = function() 
				-- serv_ext = not serv_ext
				-- return true
			-- end,
		-- },

		-- clickable {
			-- position = {0, 0, 31, 30 },
		  
			-- onMouseDown = function() 
				-- misc_ext = not misc_ext
				-- return true
			-- end,
		-- },

	-- };


-- }


-- main_menu = subpanel {
	-- position = { 0, 600, 31, 30 };
	-- noBackground = false;
	-- noClose = true;
	-- noResize = true;
	-- noMove = true;

	
	-- components = {
		-- textureLit {
			-- position = { 0, 0, 31, 30 };
			-- image = get(menu_wt);
		-- },
		
		-- textureLit {
			-- position = { 0, 0, 31, 30 };
			-- image = get(menu_gr);
			-- visible = function()
				-- return main_menu_ext
			-- end;
		-- },	

		-- clickable {
			-- position = {0, 0, 31, 30 },
		  
			-- onMouseDown = function() 
				-- main_menu_ext = not main_menu_ext
				-- return true
			-- end,
		-- },
		
		
		
	-- };
-- }

thro_button = contextWindow {
	position = { 0, 640, 31, 30 };
	noBackground = false;
	noResize = true;
	noDecore = true;
	noMove = true;

	
	components = {
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(thro_red);
			visible = function()
				return true
			end;
		},
		
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(thro_grn);
			visible = function()
				return (get(hascontrol_1) == 2 and get(control_thro_other) == 0) or (get(hascontrol_1) == 1 and get(control_thro_other) == 1)
			end;
		},	

		clickable {
			position = {0, 0, 31, 30 },
		  
			onMouseDown = function() 
				set(control_thro_other, 1 - get(control_thro_other))
				return true
			end,
		},
		
		
		
	};
}

load_button = contextWindow {
	position = { 0, 610, 31, 30 };
	noBackground = false;
	noResize = true;
	noDecore = true;
	noMove = true;

	
	components = {
		-- textureLit {
			-- position = { 0, 0, 31, 30 };
			-- image = get(thro_red);
			-- visible = function()
				-- return true
			-- end;
		-- },
		
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(load_men);
			-- visible = function()
				-- return get(cockpit_80s)==0
			-- end;
		},	

		clickable {
			position = {0, 0, 31, 30 },
		  
			onMouseDown = function() 
				set(show_load_panel, 1 - get(show_load_panel))
				return true
			end,
		},
		
		
		
	};
}


gnd_button = contextWindow {
	position = { 0, 580, 31, 30 };
	noBackground = false;
	noResize = true;
	noDecore = true;
	noMove = true;

	
	components = {
		-- textureLit {
			-- position = { 0, 0, 31, 30 };
			-- image = get(thro_red);
			-- visible = function()
				-- return true
			-- end;
		-- },
		
		textureLit {
			position = { 0, 0, 31, 30 };
			image = get(gnd_men);
			-- visible = function()
				-- return get(cockpit_80s)==0
			-- end;
		},	

		clickable {
			position = {0, 0, 31, 30 },
		  
			onMouseDown = function() 
				set(show_ground_panel, 1 - get(show_ground_panel))
				return true
			end,
		},
		
		
		
	};
}




function update()
	
	-- main menu logic
	-- main_menu.visible = false
	-- ext_menu.visible = main_menu_ext
	
	-- nav_menu.visible = main_menu_ext and nav_ext
	-- serv_menu.visible = main_menu_ext and serv_ext
	-- misc_menu.visible = main_menu_ext and misc_ext
	
	
	
	payload_panel:setIsVisible(get(show_load_panel) == 1)
	absu_2d_panel:setIsVisible(get(show_absu_panel) == 1)
	-- absu_2d_panel.visible = false
	-- ovhd_2d_panel.visible = false
	-- nvu_2D_panel.visible = false
	checklist_panel:setIsVisible(get(show_checklist_panel) == 1)
	ground_srv_panel:setIsVisible(get(show_ground_panel) == 1)
	--uphone.visible = get(show_phone) == 1
	-- camera_panel.visible = false
	-- palette.visible = false
	fails_panel:setIsVisible(get(show_fail_panel) == 1)
	load_button:setIsVisible(get(cockpit_80s)==0)
	gnd_button:setIsVisible(get(cockpit_80s)==0)
	thro_button:setIsVisible(get(ismaster) > 0)
	
	
end

function onAvionicsDone()
	savePopupsPositions()

end

--[[
onAvionicsDone = function()
	savePopupsPositions()
end
--]]