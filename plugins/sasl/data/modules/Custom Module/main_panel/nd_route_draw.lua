size = {500, 400} --475 370 display bounds, 360 250 dist box bounds, 120 290 hdg box bounds, 320 top pound
defineProperty("table_draw")
defineProperty("n_wp")
wp = loadImage("nd_marks.png", 36, 0, 36, 43)
defineProperty("range")
defineProperty("offst")
defineProperty("offst2")
defineProperty("offst3")
defineProperty("brightness")
defineProperty("navon")
defineProperty("mode")
local font = loadFont(moduleDirectory.."/Custom Module/Verdana.ttf")

function draw()
	
	local targets = get(table_draw)
	local names = get(name_draw)
	local brt = get(brightness)
	
	for i = 1, get(n_wp), 1 do
		
		
		local mark_img = get(wp)
		local text = names[i]
		
		local range_set = get(range)
		local range_coef = 1
		if range_set == 1 then range_coef = 10
		elseif range_set == 2 then range_coef = 20
		elseif range_set == 3 then range_coef = 40
		elseif range_set == 4 then range_coef = 100
		elseif range_set == 5 then range_coef = 200
		end
		
		local x = targets[i][1] / range_coef * 678 + 235
		local y = targets[i][2] / range_coef * 678 -4 + 130 * bool2int(get(mode)==5)
		local hide = y>320 or (x>360 and y>250) or (x<120 and y>290) or y>370 or x>475 or x<0 or y<0 or get(navon)==0
		local hide_txt = y>320 or (x>320 and y>250) or (x<120 and y>290) or y>370 or x>475 or x<0 or y<0 or get(navon)==0
		if not hide then
			drawTexture(mark_img, x, y, 29, 34, {1,1,1,brt})
		end
		if not hide_txt then
			drawText(font, x+29, y+12 , text, 18, false, false, TEXT_ALIGN_LEFT, {1, 1, 1, brt})
		end
	end
		-- local mark_img = get(wp)
		-- drawTexture(mark_img, get(offst), get(offst2), 29, 34, 1,1,1)
end