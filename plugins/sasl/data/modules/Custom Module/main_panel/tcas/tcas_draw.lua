-- this is tcas screen draw script
size = {482, 530}

defineProperty("non_intr_img", loadImage("tcas_marks.png", 333, 493, 18, 18))
defineProperty("prox_trf_img", loadImage("tcas_marks.png", 358, 493, 18, 18))
defineProperty("ta_trf_img", loadImage("tcas_marks.png", 384, 493, 18, 18))
defineProperty("ra_trf_img", loadImage("tcas_marks.png", 407, 493, 18, 18))

-- arrows
defineProperty("blu_dn_img", loadImage("tcas_marks.png", 433, 493, 9, 18))
defineProperty("yel_dn_img", loadImage("tcas_marks.png", 445, 493, 9, 18))
defineProperty("red_dn_img", loadImage("tcas_marks.png", 457, 493, 9, 18))

defineProperty("blu_up_img", loadImage("tcas_marks.png", 470, 493, 9, 18))
defineProperty("yel_up_img", loadImage("tcas_marks.png", 482, 493, 9, 18))
defineProperty("red_up_img", loadImage("tcas_marks.png", 494, 493, 9, 18))

defineProperty("table_draw")

tcas_range_set = globalPropertyi("tu154b2/custom/tcas/range_set")  -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 18 nm
xpdr_mode = globalPropertyf("sim/cockpit/radios/transponder_mode")

local font = loadFont(moduleDirectory.."/Custom Module/Verdana.ttf")

function draw()
	
	local targets = get(table_draw)
	
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
				
				
				
				local range_set = get(tcas_range_set)
				local range_coef = 1
				if range_set == 1 then range_coef = 0.6
				elseif range_set == 2 then range_coef = 0.3
				elseif range_set == 3 then range_coef = 0.2
				elseif range_set == 4 then range_coef = 0.09
				end
				
				local x = targets[i][1] * 0.042 * range_coef + 230.5
				local y = targets[i][2] * 0.042 * range_coef + 187.5
				
				if x > 30 and x < size[1] - 30 and y > 70 and y < size[2] - 50 then
					drawTexture(mark_img, x, y, 26, 26, 1,1,1)
					
					local text = targets[i][6]
					local rate = targets[i][5]
					
					local above = sign(targets[i][3])
					
					if  mark < 2 then
						drawText(font, x-10, y + above * 27 + 2, text, 20, false, false, TEXT_ALIGN_LEFT, {1, 1, 1, 1})
						if rate == -1 then drawTexture(blu_dn, x + 24, y, 18, 26, 1,1,1)
						elseif rate == 1 then drawTexture(blu_up, x + 24, y, 18, 26, 1,1,1)
						end
					elseif mark == 2 then
						drawText(font, x-10, y + above * 27 + 2, text, 20, false, false, TEXT_ALIGN_LEFT, {1, 1, 0, 1})
						if rate == -1 then drawTexture(yel_dn, x + 24, y, 18, 26, 1,1,1)
						elseif rate == 1 then drawTexture(yel_up, x + 24, y, 18, 26, 1,1,1)
						end
					elseif mark > 2 then
						drawText(font, x-10, y + above * 27 + 2, text, 20, false, false, TEXT_ALIGN_LEFT, {1, 0, 0, 1})
						if rate == -1 then drawTexture(red_dn, x + 24, y, 18, 26, 1,1,1)
						elseif rate == 1 then drawTexture(red_up, x + 24, y, 18, 26, 1,1,1)
						end
					end
				end
			end
			
		end
	end


end