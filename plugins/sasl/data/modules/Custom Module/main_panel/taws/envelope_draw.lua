-- this is side drawing logic


size = {800, 600}


defineProperty("points_line") -- warning envelope line
defineProperty("points_line2") -- pull-up envelope line
defineProperty("bright")
-- defineProperty("columns") -- table of colors

-- defineProperty("range", 10)
-- defineProperty("v_spd", 0)
-- defineProperty("g_spd", 0)

function draw()
	local brt = get(bright)
	sasl.gl.drawWidePolyLine (get(points_line),4 ,{1.0, 0.0, 0.0, brt} )
	sasl.gl.drawWidePolyLine (get(points_line2),4 ,{1, 1, 0.3, brt} )
end
