-- this is the clock screen of TAWS
size = {1000, 770}

mode_set = globalPropertyi("tu154b2/custom/taws/mode_set") -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения
brt_handle = globalPropertyf("tu154b2/custom/rotary/srpbz/brightness") -- ручка яркости

taws_english = globalPropertyi("tu154b2/custom/taws/taws_english") -- язык системы. 0 - русский, 1 - английский	0
taws_message = globalPropertyi("tu154b2/custom/taws/taws_message") -- 
-- 0 - none, 1 - Pull UP, 2 - alt callout, 3 - Pull Up, 4 - Terrain, 5 - Terrain Ahead, 6 - Too low, Terrain, 
-- 7 - Alt collout, 8 - Too low, Gear, 9 - Too low, Flaps, 10 - Check altitude, 11 - Sink Rate, 12 - Don't sink, 13 - Glideslope

taws_eng_phrase = globalPropertyi("tu154b2/custom/sounds/taws_eng_phrase") -- номер фразы СРПБЗ на английском
taws_rus_phrase = globalPropertyi("tu154b2/custom/sounds/taws_rus_phrase") -- номер фразы СРПБЗ на русском

gs_msg_vol = globalPropertyf("tu154b2/custom/taws/gs_msg_vol") -- громкость сигнала ГЛИССАДА


-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time
test_btn = globalPropertyi("tu154b2/custom/buttons/ovhd/egpws_control")

-- images
-- defineProperty("screen_img_img", loadImage(moduleDirectory .. "/Custom Module/main_panel/taws/taws_clock.png", 0, 0, 1000, 770))
-- local text_font = loadBitmapFont(moduleDirectory .. '/Custom Module/main_panel/taws/taws_scr.fnt')



local screen_work = get(mode_set) == 5
local brightness = 0.8


--[[
2:51 - 0:00 начало контроля. надпись ТЕСТ - КОНТРОЛЬ
2:55 - 0:04 сообщение НЕ СНИЖАЙСЯ. желтым сверху
3:08 - 0:17 сообщение пропало
3:11 - 0:20 сообщение ГЛИССАДА
3:23 - 0:32 переход в режим карты

полоски: черный, зеленый, желтый, оранжевый, красный, желтый, красный, фиолетовый
--]]


local gs_msg_counter = 1
local sound_counter = 1

local time_counter = 0 -- use frames to fill table row by row

local test_msg = "ТЕСТ - КОНТРОЛЬ"

function update()

	screen_work = get(mode_set) == 5
	local passed = get(frame_time)
	
	local eng = get(taws_english)
	
	if eng == 1 then test_msg = "SYSTEM  -  TEST"
	else test_msg = "ТЕСТ - КОНТРОЛЬ"
	end
	
	if not screen_work then 
		brightness = 0 
		time_counter = 0	
	
	else
		brightness = get(brt_handle)
		if get(test_btn) == 0 then
			set(taws_message, 0)
			set(taws_rus_phrase, 0)
			set(taws_eng_phrase, 0)
			set(mode_set, 1)
			time_counter = 0
		elseif time_counter >= 0 and time_counter < 4 then 
			set(taws_message, 0)
			set(taws_rus_phrase, 0)
			set(taws_eng_phrase, 0)
		elseif time_counter < 10 then 
			set(taws_message, 1)
			if gs_msg_counter < 0 then
				set(taws_rus_phrase, 14 * (1 - eng))
				set(taws_eng_phrase, 14 * eng)
				gs_msg_counter = 2
			else
				set(taws_rus_phrase, 0)
				set(taws_eng_phrase, 0)
			end
			sound_counter = 0.2

		-- elseif time_counter < 20 then 
			-- set(taws_message, 0)
			-- set(taws_rus_phrase, 0)
			-- set(taws_eng_phrase, 0)
		-- elseif time_counter < 32 then 
			-- set(taws_message, 13)
			-- if sound_counter <= 0 then
				-- if gs_msg_counter < 0 then
					-- set(taws_rus_phrase, 13 * (1 - eng))
					-- set(taws_eng_phrase, 13 * eng)
					-- gs_msg_counter = 1.5
				-- else
					-- set(taws_rus_phrase, 0)
					-- set(taws_eng_phrase, 0)
				-- end
				-- sound_counter = 0.2
			-- end
		else 
			set(taws_message, 0)
			set(taws_rus_phrase, 0)
			set(taws_eng_phrase, 0)
			set(mode_set, 1)
		end
		
		
	
		
	end
	
	gs_msg_counter = gs_msg_counter - passed
	sound_counter = sound_counter - passed
	
	time_counter = time_counter + passed
	
	

end



components = {
	
	---------------------
	-- background --
	---------------------
	
	-- rectangle {
		-- position = {0, 0, 125, size[2]},
		-- color = {0.1, 0.1, 0.1, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },
	
	-- rectangle {
		-- position = {125, 0, 125, size[2]},
		-- color = {0.3, 1, 0.3, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },
	
	-- rectangle {
		-- position = {250, 0, 125, size[2]},
		-- color = {1, 1, 0.3, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
	
	-- rectangle {
		-- position = {375, 0, 125, size[2]},
		-- color = {1, 0.6, 0.2, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },		
	
	-- rectangle {
		-- position = {500, 0, 125, size[2]},
		-- color = {1, 0.3, 0.3, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
	
	-- rectangle {
		-- position = {625, 0, 125, size[2]},
		-- color = {1, 1, 0.3, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },		
	
	-- rectangle {
		-- position = {750, 0, 125, size[2]},
		-- color = {1, 0.3, 0.3, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
	
	-- rectangle {
		-- position = {875, 0, 125, size[2]},
		-- color = {1, 0.3, 1, 1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
	
	-- rectangle {
		-- position = {150, 335, 700, 80},
		-- color = {0.1, 0.1, 0.1, 1},
		-- visible = function()
			-- return screen_work 
		-- end,
	-- },	
	
	-- text_draw2 {
		-- position = {170, 350, 185, 160},
		-- text = function()
			-- return test_msg
		-- end,
		-- font = text_font,
		-- color = {1,1,1,1},
		-- visible = function()
			-- return screen_work
		-- end,
	-- },	
--[[	
	-- brightness controll
	rectangle_ctr {
		R = 0,
		G = 0,
		B = 0,
		A = function()
			return 1 - brightness
		end, -- controll via alpha
		position_x = 0,
		position_y = 0,
		width = size[1],
		height = size[2],
		visible = function()
			return screen_work
		end,
	},

--]]



}