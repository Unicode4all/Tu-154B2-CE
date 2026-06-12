size = {500, 400} --475 370 display bounds, 360 250 dist box bounds, 120 290 hdg box bounds, 320 top pound
defineProperty("table_draw")
defineProperty("n_wp")
wp = loadImage("nd_marks.png", 36, 0, 36, 43)
wp_mag = loadImage("nd_marks.png", 0, 0, 36, 43)
defineProperty("range")
defineProperty("brightness")
defineProperty("navon")
defineProperty("mode")
defineProperty("dist_mode")
defineProperty("menu")
gps_dest = globalPropertyi("tu154b2/custom/radio/curr_wp")
gps_dest_app = globalPropertyi("tu154b2/custom/radio/curr_wp_app")
n_wp_app = globalPropertyi("tu154b2/custom/radio/appr_n_waypoints")
local font = loadFont(moduleDirectory.."/Custom Module/Verdana.ttf")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))

function draw()
	
	local targets = get(table_draw)
	local names = get(name_draw)
	local brt = get(brightness)
	local n_waypoints = get(n_wp)
	local n_waypoints_main = n_waypoints - get(n_wp_app)
	-- sasl.gl.setRenderTarget ( nd_display )

	for i = 1, n_waypoints, 1 do	
		local mark_img = get(wp)
		local col =  {1, 1, 1, brt}
		if (i == get(gps_dest) and i<= n_waypoints_main) or (i == get(gps_dest_app) + n_waypoints_main + 1 and i> n_waypoints_main) then
			mark_img = get(wp_mag)
			col =  {0.76, 0.21, 0.77, brt}
		end
		local text = names[i]
		
		local range_set = get(range)
		local range_coef = 1
		if range_set == 1 then range_coef = 10
		elseif range_set == 2 then range_coef = 20
		elseif range_set == 3 then range_coef = 40
		elseif range_set == 4 then range_coef = 100
		elseif range_set == 5 then range_coef = 200
		elseif range_set == 6 then range_coef = 320
		elseif range_set == 7 then range_coef = 640
		end
		range_coef = range_coef * (1-0.073*get(dist_mode))
		local x = targets[i][1] / range_coef * 678 + 235
		local y = targets[i][2] / range_coef * 678 -4 + 130 * bool2int(get(mode)==5)
		local hide = y>320 or (x>360 and y>250) or (x<120 and y>290) or y>370 or x>475 or x<0 or y<0 or get(navon)==0 or (x<130 and y<66) or (x>70 and x<390 and y>140 and y<250 and get(menu) == 1)
		local hide_txt = y>320 or (x>320 and y>250) or (x<120 and y>290) or y>370 or x>475 or x<0 or y<0 or get(navon)==0 or (x<130 and y<66) or (x>50 and x<390 and y>140 and y<250 and get(menu) == 1)
		-- sasl.gl.drawMaskStart ()
		-- sasl.gl.drawRectangle(-4,29,165,66, {1,1,1,1})
		-- sasl.gl.drawRectangle(-8,-5,140,29, {1,1,1,1})
		-- sasl.gl.drawUnderMask (true)
		if not hide then
			drawTexture(mark_img, x, y, 29, 34, {1,1,1,brt})
		end
		if not hide_txt then
			drawText(font, x+29, y+12 , text, 18, false, false, TEXT_ALIGN_LEFT, col)
		end
		-- sasl.gl.drawMaskEnd ()
	end
	-- sasl.gl.restoreRenderTarget()
		-- local mark_img2 = get(wp)
		-- drawTexture(mark_img2, get(db1), get(db2), 29, 34, 1,1,1)
end