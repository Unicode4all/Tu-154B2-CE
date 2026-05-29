-- this is voice and text messages logic
size = {1000, 770}


defineProperty("taws_message", globalPropertyi("tu154b2/custom/taws/taws_message")) -- 
-- 0 - none, 1 - Pull UP, 2 - alt callout, 3 - Pull Up, 4 - Terrain, 5 - Terrain Ahead, 6 - Too low, Terrain, 
-- 7 - Alt collout, 8 - Too low, Gear, 9 - Too low, Flaps, 10 - Check altitude, 11 - Sink Rate, 12 - Don't sink, 13 - Glideslope
defineProperty("hide_eng_objects", globalPropertyi("tu154b2/custom/lang/hide_eng_objects")) -- спрятать английские объекты кабины. 1 = RUS
defineProperty("taws_english", globalPropertyi("tu154b2/custom/taws/taws_english")) -- язык системы. 0 - русский, 1 - английский	0
defineProperty("brt_handle", globalPropertyf("tu154b2/custom/rotary/srpbz/brightness")) -- ручка яркости

mode_set = globalPropertyi("tu154b2/custom/taws/mode_set") -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения

local text_font = loadBitmapFont(moduleDirectory.."/Custom Module/main_panel/taws/taws_scr.fnt")
local font2 = loadFont(moduleDirectory.."/Custom Module/main_panel/taws/taws.ttf")
local msg = 0
local eng = false
local brightness = 0.8


function update()

	eng = get(taws_english) == 1
	
	msg = get(taws_message)
	
	brightness = get(brt_handle)
	if get(mode_set) == 0 then brightness = 0 end
	
	set(taws_english, 1 - get(hide_eng_objects))

end

components = {

	-- text background
	rectangle {
		position = {100, 690, 800, 80},
		color = {0.1, 0.1, 0.1, 1},
		visible = function()
			return msg ~= 0 and msg ~= 2 and msg ~= 7
		end,
	},	

	-- russian text --
	-- 
	text_draw2 {
		position = {250, 710, 185, 160},
		text = function()
			return "ТЯНИ ВВЕРХ"
		end,
		font = text_font,
		color = {1, 0.3 ,0.3 ,1},
		visible = function()
			return not eng and (msg == 1 or msg == 3)
		end,
	},

	-- 
	text_draw2 {
		position = {350, 710, 185, 160},
		text = function()
			return "ЗЕМЛЯ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 4
		end,
	},

	-- 
	text_draw2 {
		position = {160, 710, 185, 160},
		text = function()
			return "ВПЕРЕДИ ЗЕМЛЯ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 5
		end,
	},
	
	-- 
	text_draw2 {
		position = {210, 710, 185, 160},
		text = function()
			return "НИЗКО ЗЕМЛЯ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 6
		end,
	},	
	
	-- 
	text_draw2 {
		position = {210, 710, 185, 160},
		text = function()
			return "НИЗКО ШАССИ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 8
		end,
	},

	-- 
	text_draw2 {
		position = {140, 710, 185, 160},
		text = function()
			return "НИЗКО ЗАКРЫЛКИ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 9
		end,
	},

	-- 
	text_draw2 {
		position = {140, 710, 185, 160},
		text = function()
			return "ПРОВЕРЬ ВЫСОТУ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 10
		end,
	},	
	
	-- 
	text_draw2 {
		position = {140, 710, 185, 160},
		text = function()
			return "ОПАСНЫЙ СПУСК"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 11
		end,
	},		

	-- 
	text_draw2 {
		position = {210, 710, 185, 160},
		text = function()
			return "НЕ СНИЖАЙСЯ"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 12
		end,
	},	
	
	-- 
	text_draw2 {
		position = {300, 710, 185, 160},
		text = function()
			return "ГЛИССАДА"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 13
		end,
	},	
	
	text_draw {
		position = {300, 700, 185, 160},
		text = function()
			return "ОШИБКА"
		end,
		font_size = 62,
		font = font2,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return not eng and msg == 99
		end,
	},

	-- english text --
	-- 
	text_draw2 {
		position = {340, 710, 185, 160},
		text = function()
			return "PULL UP"
		end,
		font = text_font,
		color = {1, 0.3 ,0.3 ,1},
		visible = function()
			return eng and (msg == 1 or msg == 3)
		end,
	},

	-- 
	text_draw2 {
		position = {320, 710, 185, 160},
		text = function()
			return "TERRAIN"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 4
		end,
	},

	-- 
	text_draw2 {
		position = {200, 710, 185, 160},
		text = function()
			return "TERRAIN AHEAD"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 5
		end,
	},
	
	-- 
	text_draw2 {
		position = {150, 710, 185, 160},
		text = function()
			return "TOO LOW TERRAIN"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 6
		end,
	},

	-- 
	text_draw2 {
		position = {200, 710, 185, 160},
		text = function()
			return "TOO LOW GEAR"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 8
		end,
	},

	-- 
	text_draw2 {
		position = {190, 710, 185, 160},
		text = function()
			return "TOO LOW FLAPS"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 9
		end,
	},

	-- 
	text_draw2 {
		position = {180, 710, 185, 160},
		text = function()
			return "CHECK ALTITUDE"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 10
		end,
	},

	-- 
	text_draw2 {
		position = {300, 710, 185, 160},
		text = function()
			return "SINK RATE"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 11
		end,
	},

	-- 
	text_draw2 {
		position = {280, 710, 185, 160},
		text = function()
			return "DON'T SINK"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 12
		end,
	},

	-- 
	text_draw2 {
		position = {250, 710, 185, 160},
		text = function()
			return "GLIDESLOPE"
		end,
		font = text_font,
		color = {1, 1 ,0.3 ,1},
		visible = function()
			return eng and msg == 13
		end,
	},


	-- brightness controll
	-- rectangle_ctr {
		-- R = 0,
		-- G = 0,
		-- B = 0,
		-- A = function()
			-- return 1 - brightness
		-- end, -- controll via alpha
		-- position_x = 0,
		-- position_y = 0,
		-- width = size[1],
		-- height = size[2],
	-- },



}
