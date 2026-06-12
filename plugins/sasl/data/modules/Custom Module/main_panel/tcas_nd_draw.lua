size = {500, 400} --475 370 display bounds, 360 250 dist box bounds, 120 290 hdg box bounds, 320 top pound
defineProperty("non_intr_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 333, 493, 18, 18))
defineProperty("prox_trf_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 358, 493, 18, 18))
defineProperty("ta_trf_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 384, 493, 18, 18))
defineProperty("ra_trf_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 407, 493, 18, 18))

-- arrows
defineProperty("blu_dn_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 433, 493, 9, 18))
defineProperty("yel_dn_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 445, 493, 9, 18))
defineProperty("red_dn_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 457, 493, 9, 18))

defineProperty("blu_up_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 470, 493, 9, 18))
defineProperty("yel_up_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 482, 493, 9, 18))
defineProperty("red_up_img", loadImage(moduleDirectory.."/Custom Module/main_panel/tcas/tcas_marks.png", 494, 493, 9, 18))
defineProperty("range")
defineProperty("offst")
defineProperty("offst2")
defineProperty("offst3")
defineProperty("brightness")
defineProperty("navon")
defineProperty("mode")
defineProperty("dist_mode")
xpdr_mode = globalPropertyf("sim/cockpit/radios/transponder_mode")
local font = loadFont(moduleDirectory.."/Custom Module/Verdana.ttf")

function draw()
	
	local targets = tcas_data_tbl.targets
	-- local names = get(name_draw)
	local brt = get(brightness)
		
	local non_intr = get(non_intr_img)
	local proxim = get(prox_trf_img)
	local ta_trf = get(ta_trf_img)
	local ra_trf = get(ra_trf_img)
	
	local blu_dn = get(blu_dn_img)
	local yel_dn = get(yel_dn_img)
	local red_dn = get(red_dn_img)
	
	local blu_up = get(blu_up_img)
	local yel_up = get(yel_up_img)
	local red_up = get(red_up_img)
	
	if get(xpdr_mode)>5 or get(xpdr_mode)==4 then
		for i = 2, 20, 1 do
		
		
		local mark = targets[i][4]
		if mark ~= -1 then
		
			local mark_img = non_intr
			
			if mark == 1 then mark_img = proxim
			elseif mark == 2 then mark_img = ta_trf
			elseif mark >2 then mark_img = ra_trf
			end
	
			local range_set = get(range)
			local range_coef = 1
			if range_set == 1 then range_coef = 10
			elseif range_set == 2 then range_coef = 20
			elseif range_set == 3 then range_coef = 40
			elseif range_set == 4 then range_coef = 100
			elseif range_set == 5 then range_coef = 200
			end
			range_coef = range_coef * (1-0.073*get(dist_mode))
			
			local x = targets[i][1] / 1852 / range_coef * 678 + 235
			local y = targets[i][2] / 1852 / range_coef * 678 -4 + 130 * bool2int(get(mode)==5)
			local hide = y>320 or (x>360 and y>250) or (x<120 and y>290) or y>370 or x>475 or x<0 or y<0 or get(navon)==0
			if not hide then
					drawTexture(mark_img, x, y, 17, 17, {1,1,1,brt})
					
					local text = targets[i][6]
					local rate = targets[i][5]
					
					local above = sign(targets[i][3])
					
					if  mark < 2 then
						drawText(font, x-10, y + above * 18 + 2, text, 18, false, false, TEXT_ALIGN_LEFT, {1, 1, 1, brt})
						if rate == -1 then drawTexture(blu_dn, x + 24, y, 12, 17, {1,1,1,brt})
						elseif rate == 1 then drawTexture(blu_up, x + 24, y, 12, 17, {1,1,1,brt})
						end
					elseif mark == 2 then
						drawText(font, x-10, y + above * 18 + 2, text, 18, false, false, TEXT_ALIGN_LEFT, {1, 1, 0, brt})
						if rate == -1 then drawTexture(yel_dn, x + 24, y, 12, 17, {1,1,1,brt})
						elseif rate == 1 then drawTexture(yel_up, x + 24, y, 12, 17, {1,1,1,brt})
						end
					elseif mark > 2 then
						drawText(font, x-10, y + above * 18 + 2, text, 18, false, false, TEXT_ALIGN_LEFT, {1, 0, 0, brt})
						if rate == -1 then drawTexture(red_dn, x + 24, y, 12, 17, {1,1,1,brt})
						elseif rate == 1 then drawTexture(red_up, x + 24, y, 12, 17, {1,1,1,brt})
						end
					end
				end
			end
		end
	end
end