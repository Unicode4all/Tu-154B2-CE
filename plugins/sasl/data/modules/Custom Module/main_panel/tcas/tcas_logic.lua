-- this is TCAS calculation and signal generations
size = {2048, 2048}
-- controls
defineProperty("tcas_on", globalPropertyi("tu154b2/custom/switchers/ovhd/tra_67_on"))  -- выключатель TCAS
defineProperty("tcas_proc_on", globalPropertyi("tu154b2/custom/switchers/ovhd/tcas_on"))



defineProperty("tcas_range_set", globalPropertyi("tu154b2/custom/tcas/range_set"))  -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 15 nm
defineProperty("mode_set", globalPropertyi("tu154b2/custom/tcas/mode_set"))  -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA	4

defineProperty("level_mode", globalPropertyi("tu154b2/custom/tcas/level_mode"))  -- 1 = above, 0 = normal, -1 = below
defineProperty("fl_mode", globalPropertyi("tu154b2/custom/tcas/fl_mode"))  -- 0 = absolute, 1 = relative
defineProperty("flt_id", globalPropertyi("tu154b2/custom/tcas/flt_id"))  -- 0 = cover, 1 = show / change code


defineProperty("tcas_mode_rot", globalPropertyi("tu154b2/custom/switchers/tcas/tcas_mode"))  -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA	3

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("tcas_ident_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_ident_btn"))  -- кнопка IDENT
defineProperty("tcas_fcn_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_fcn_btn"))  -- кнопка FCN
defineProperty("tcas_left_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_left_btn"))  -- кнопка <
defineProperty("tcas_right_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_right_btn"))  -- кнопка >
defineProperty("tcas_ent_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_ent_btn"))  -- кнопка ENT
defineProperty("tcas_atc_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_atc_btn"))  -- кнопка ATC
defineProperty("tcas_alt_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_alt_btn"))  -- кнопка ALT
defineProperty("tcas_rng_dn_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_rng_dn_btn"))  -- кнопка RNG DN
defineProperty("tcas_rng_up_btn", globalPropertyi("tu154b2/custom/buttons/tcas/tcas_rng_up_btn"))  -- кнопка RNG UP

defineProperty("tcas_rot_big", globalPropertyi("tu154b2/custom/switchers/tcas/tcas_rot_big"))  -- большая вертелка

defineProperty("alt_svs", globalPropertyf("tu154b2/custom/svs/altitude")) -- Altitude by 1013 hpa

defineProperty("rv_angle", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_left"))  -- RV needle
defineProperty("rv_flag", globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_left"))  -- RV flag
defineProperty("rv5_alt", globalPropertyf("tu154b2/custom/misc/rv5_alt_left"))  -- высота на левом высотомере
defineProperty("screen_mode", globalPropertyi("tu154b2/custom/tcas/screen_mode"))  -- отображения на экране. 0 = код ответчика, -1 = ошибка, 1 = test

defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("bus115_2_volt", globalPropertyf("tu154b2/custom/elec/bus115_2_volt"))
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("xpdr_code", globalPropertyf("sim/cockpit/radios/transponder_code"))
defineProperty("xpdr_mode", globalPropertyf("sim/cockpit/radios/transponder_mode")) 
defineProperty("xpdr_led", globalPropertyf("sim/cockpit/radios/transponder_light"))
defineProperty("xpdr_fail", globalPropertyi("sim/operation/failures/rel_xpndr"))

--defineProperty("ovhd_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/transponder_mode"))


defineProperty("var_on_1", globalPropertyi("tu154b2/custom/switchers/ovhd/var_left"))  -- оерхед. var
defineProperty("var_on_2", globalPropertyi("tu154b2/custom/switchers/ovhd/var_right"))  -- оерхед. var

defineProperty("fail", globalPropertyi("tu154b2/custom/tcas/tcas_fail"))
defineProperty("tks_bgmk1_fail", globalPropertyi("tu154b2/custom/failures/tks_bgmk1_fail"))
defineProperty("tks_on_2", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_on_2"))
defineProperty("vbe_1", globalPropertyi("tu154b2/custom/switchers/ovhd/vbe_1_on"))
defineProperty("vbe_2", globalPropertyi("tu154b2/custom/switchers/ovhd/vbe_2_on"))
defineProperty("vbe_se1", globalPropertyi("tu154b2/custom/switchers/vbe_select"))
defineProperty("pkp_on", globalPropertyi("tu154b2/custom/switchers/ovhd/pkp_right_on"))
defineProperty("pkp_fail", globalPropertyi("sim/operation/failures/rel_cop_ahz"))
defineProperty("cas_alt_fail", globalPropertyi("tu154b2/custom/tcas/tcas_alt_fail"))
defineProperty("msl_true", globalPropertyf("sim/flightmodel/position/elevation"))
vbe_msl = globalPropertyf("tu154b2/custom/gauges/alt/vbe_msl")
xpdr_altitude = globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_pilot")
tcas_filter =globalPropertyi("sim/cockpit2/radios/actuators/tcas_filter")


-- other aircrafts
acf_1_x = globalPropertyfa("sim/cockpit2/tcas/targets/position/x")
acf_1_y = globalPropertyfa("sim/cockpit2/tcas/targets/position/y")
acf_1_z = globalPropertyfa("sim/cockpit2/tcas/targets/position/z")
acf_1_m = globalPropertyfa("sim/cockpit2/tcas/targets/threat")
acf_1_vs = globalPropertyfa("sim/cockpit2/tcas/targets/position/vertical_speed")
acf_1_el = globalPropertyfa("sim/cockpit2/tcas/targets/position/ele")

-- defineProperty("acf_2_x", globalPropertyf("sim/multiplayer/position/plane2_x"))  -- x
-- defineProperty("acf_2_y", globalPropertyf("sim/multiplayer/position/plane2_y"))  -- x
-- defineProperty("acf_2_z", globalPropertyf("sim/multiplayer/position/plane2_z"))  -- x

-- defineProperty("acf_3_x", globalPropertyf("sim/multiplayer/position/plane3_x"))  -- x
-- defineProperty("acf_3_y", globalPropertyf("sim/multiplayer/position/plane3_y"))  -- x
-- defineProperty("acf_3_z", globalPropertyf("sim/multiplayer/position/plane3_z"))  -- x

-- defineProperty("acf_4_x", globalPropertyf("sim/multiplayer/position/plane4_x"))  -- x
-- defineProperty("acf_4_y", globalPropertyf("sim/multiplayer/position/plane4_y"))  -- x
-- defineProperty("acf_4_z", globalPropertyf("sim/multiplayer/position/plane4_z"))  -- x

-- defineProperty("acf_5_x", globalPropertyf("sim/multiplayer/position/plane5_x"))  -- x
-- defineProperty("acf_5_y", globalPropertyf("sim/multiplayer/position/plane5_y"))  -- x
-- defineProperty("acf_5_z", globalPropertyf("sim/multiplayer/position/plane5_z"))  -- x

-- defineProperty("acf_6_x", globalPropertyf("sim/multiplayer/position/plane6_x"))  -- x
-- defineProperty("acf_6_y", globalPropertyf("sim/multiplayer/position/plane6_y"))  -- x
-- defineProperty("acf_6_z", globalPropertyf("sim/multiplayer/position/plane6_z"))  -- x

-- defineProperty("acf_7_x", globalPropertyf("sim/multiplayer/position/plane7_x"))  -- x
-- defineProperty("acf_7_y", globalPropertyf("sim/multiplayer/position/plane7_y"))  -- x
-- defineProperty("acf_7_z", globalPropertyf("sim/multiplayer/position/plane7_z"))  -- x

-- defineProperty("acf_8_x", globalPropertyf("sim/multiplayer/position/plane8_x"))  -- x
-- defineProperty("acf_8_y", globalPropertyf("sim/multiplayer/position/plane8_y"))  -- x
-- defineProperty("acf_8_z", globalPropertyf("sim/multiplayer/position/plane8_z"))  -- x

-- defineProperty("acf_9_x", globalPropertyf("sim/multiplayer/position/plane9_x"))  -- x
-- defineProperty("acf_9_y", globalPropertyf("sim/multiplayer/position/plane9_y"))  -- x
-- defineProperty("acf_9_z", globalPropertyf("sim/multiplayer/position/plane9_z"))  -- x

-- defineProperty("acf_10_x", globalPropertyf("sim/multiplayer/position/plane10_x"))  -- x
-- defineProperty("acf_10_y", globalPropertyf("sim/multiplayer/position/plane10_y"))  -- x
-- defineProperty("acf_10_z", globalPropertyf("sim/multiplayer/position/plane10_z"))  -- x

-- defineProperty("acf_11_x", globalPropertyf("sim/multiplayer/position/plane11_x"))  -- x
-- defineProperty("acf_11_y", globalPropertyf("sim/multiplayer/position/plane11_y"))  -- x
-- defineProperty("acf_11_z", globalPropertyf("sim/multiplayer/position/plane11_z"))  -- x

-- defineProperty("acf_12_x", globalPropertyf("sim/multiplayer/position/plane12_x"))  -- x
-- defineProperty("acf_12_y", globalPropertyf("sim/multiplayer/position/plane12_y"))  -- x
-- defineProperty("acf_12_z", globalPropertyf("sim/multiplayer/position/plane12_z"))  -- x

-- defineProperty("acf_13_x", globalPropertyf("sim/multiplayer/position/plane13_x"))  -- x
-- defineProperty("acf_13_y", globalPropertyf("sim/multiplayer/position/plane13_y"))  -- x
-- defineProperty("acf_13_z", globalPropertyf("sim/multiplayer/position/plane13_z"))  -- x

-- defineProperty("acf_14_x", globalPropertyf("sim/multiplayer/position/plane14_x"))  -- x
-- defineProperty("acf_14_y", globalPropertyf("sim/multiplayer/position/plane14_y"))  -- x
-- defineProperty("acf_14_z", globalPropertyf("sim/multiplayer/position/plane14_z"))  -- x

-- defineProperty("acf_15_x", globalPropertyf("sim/multiplayer/position/plane15_x"))  -- x
-- defineProperty("acf_15_y", globalPropertyf("sim/multiplayer/position/plane15_y"))  -- x
-- defineProperty("acf_15_z", globalPropertyf("sim/multiplayer/position/plane15_z"))  -- x

-- defineProperty("acf_16_x", globalPropertyf("sim/multiplayer/position/plane16_x"))  -- x
-- defineProperty("acf_16_y", globalPropertyf("sim/multiplayer/position/plane16_y"))  -- x
-- defineProperty("acf_16_z", globalPropertyf("sim/multiplayer/position/plane16_z"))  -- x

-- defineProperty("acf_17_x", globalPropertyf("sim/multiplayer/position/plane17_x"))  -- x
-- defineProperty("acf_17_y", globalPropertyf("sim/multiplayer/position/plane17_y"))  -- x
-- defineProperty("acf_17_z", globalPropertyf("sim/multiplayer/position/plane17_z"))  -- x

-- defineProperty("acf_18_x", globalPropertyf("sim/multiplayer/position/plane18_x"))  -- x
-- defineProperty("acf_18_y", globalPropertyf("sim/multiplayer/position/plane18_y"))  -- x
-- defineProperty("acf_18_z", globalPropertyf("sim/multiplayer/position/plane18_z"))  -- x

-- defineProperty("acf_19_x", globalPropertyf("sim/multiplayer/position/plane19_x"))  -- x
-- defineProperty("acf_19_y", globalPropertyf("sim/multiplayer/position/plane19_y"))  -- x
-- defineProperty("acf_19_z", globalPropertyf("sim/multiplayer/position/plane19_z"))  -- x

-- defineProperty("acf_20_x", globalPropertyf("sim/multiplayer/position/plane20_x"))  -- x
-- defineProperty("acf_20_y", globalPropertyf("sim/multiplayer/position/plane20_y"))  -- x
-- defineProperty("acf_20_z", globalPropertyf("sim/multiplayer/position/plane20_z"))  -- x


-- local aircraft coordinates
defineProperty("pos_x", globalPropertyf("sim/flightmodel/position/local_x")) -- longtitude. positive from W to E
defineProperty("pos_y", globalPropertyf("sim/flightmodel/position/local_y")) -- altitude. positive UP
defineProperty("pos_z", globalPropertyf("sim/flightmodel/position/local_z")) -- latitude. positive from N to S

defineProperty("course", globalPropertyf("sim/flightmodel/position/psi")) -- angle between -Z axis and airplane's nose
defineProperty("course_fly", globalPropertyf("sim/flightmodel/position/hpath")) -- course, where aircraft actually flies


defineProperty("ra_scale_set", globalPropertyi("tu154b2/custom/tcas/ra_scale_set"))  -- RA mode scale set. 0 = none.
defineProperty("vvi", globalPropertyf("sim/flightmodel/position/vh_ind"))  -- vertical velocity of our acf
defineProperty("traffic_det", globalPropertyi("tu154b2/custom/tcas/traffic_det"))  -- появление желтых или красных меток


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("ta_sel", globalPropertyi("sim/custom/tcas2000/ta_sel"))  -- появление желтых или красных меток
defineProperty("kontur90", globalPropertyi("sim/custom/b2/kontur_70th"))
defineProperty("tra_transponder", globalPropertyi("tu154b2/custom/switchers/ovhd/tra_67_on"))
defineProperty("cas_pwr", globalPropertyi("sim/custom/tcas2000/tcas_pwr"))
so_mode = globalPropertyi("tu154b2/custom/tcas/co72_mode")


local MASTER = get(ismaster) ~= 1


local acf_local_tbl = {} -- source table in decarts coordinates

for i = 1, 20, 1 do
	table.insert(acf_local_tbl, {[1] = 0, [2] = 0, [3] = 0})
end


-- local acf_local_last_tbl = {} -- source table in decarts coordinates

-- for i = 1, 20, 1 do
	-- table.insert(acf_local_last_tbl, {[1] = 0, [2] = 0, [3] = 0})
-- end


-----
local acf_circ_tbl = {} -- source table in circular coordinates

for i = 1, 20, 1 do
	table.insert(acf_circ_tbl, {[1] = 0, [2] = 0, [3] = 0})
end

-----
local tcas_show_tbl = {} -- table for show on screen

for i = 1, 20, 1 do
	table.insert(tcas_show_tbl, {[1] = 0, [2] = 0, [3] = 0, [4] = 0, [5] = 0, [6] = "0", [7] = false}) -- 1 - forward, 2 - right, 3 - alt, 4 - 0 = hide, 1+ = mark of treat, 5 = arrow, +1 - climb, -1 - descend, 6 = text to draw, 7 - threat
end

-----
-- local tcas_prev_tbl = {} -- previous state for calculations

-- for i = 1, 20, 1 do
	-- table.insert(tcas_prev_tbl, {[1] = 0, [2] = 0, [3] = 0}) -- 1 - forward, 2 - right, 3 - alt
-- end

local refresh_counter = 0

-- local intruders_tbl = {} -- a table for collecting intruders
-- intruders_tbl = {
-- {["Tau"] = 0, ["alt"] = 0, ["cl_alt"] = 0, ["rate"] = 0}, -- 1 = Tau, 2 = current distance, 3 = close distance, 4 = current alt, 5 = close alt, 6 = current rate

-- }



function limits()
	-- this function return limits
	-- Tau TA, Tau RA, Dist TA, Dist RA, Alt Ta, Alt RA
	local alt = get(vbe_msl) -- alt in feet
	if alt <= 1000 then
		return 20, 0, 0.30, 0, 259.08, 0
	elseif alt <= 2350 then
		return 25, 15, 0.33, 0.20, 259.08, 91.44
	elseif alt <= 5000 then
		return 30, 20, 0.48, 0.35, 259.08, 91.44
	elseif alt <= 10000 then
		return 40, 25, 0.75, 0.55, 259.08, 106.68
	elseif alt <= 20000 then
		return 45, 30, 1.00, 0.80, 259.08, 121.92
	elseif alt <= 42000 then
		return 48, 35, 1.30, 1.10, 259.08, 182.88 		
	else
		return 48, 35, 1.30, 1.10, 365.76, 213.36
	end
	
	
end

local tcas_mode = get(mode_set)
local passed = get(frame_time)
local power = false

local function refresh_data()
			
			-- fill local coordinates table
			acf_local_tbl_x = get(acf_1_x)
			acf_local_tbl_y = get(acf_1_y)
			acf_local_tbl_z = get(acf_1_z)
			acf_local_tbl_m = get(acf_1_m)
			acf_local_tbl_vs = get(acf_1_vs)
			acf_local_tbl_el = get(acf_1_el)
			
			-- acf_local_tbl[2][1] = get(acf_2_x)
			-- acf_local_tbl[2][2] = get(acf_2_y)
			-- acf_local_tbl[2][3] = get(acf_2_z)

			-- acf_local_tbl[3][1] = get(acf_3_x)
			-- acf_local_tbl[3][2] = get(acf_3_y)
			-- acf_local_tbl[3][3] = get(acf_3_z)
			
			-- acf_local_tbl[4][1] = get(acf_4_x)
			-- acf_local_tbl[4][2] = get(acf_4_y)
			-- acf_local_tbl[4][3] = get(acf_4_z)
			
			-- acf_local_tbl[5][1] = get(acf_5_x)
			-- acf_local_tbl[5][2] = get(acf_5_y)
			-- acf_local_tbl[5][3] = get(acf_5_z)
			
			-- acf_local_tbl[6][1] = get(acf_6_x)
			-- acf_local_tbl[6][2] = get(acf_6_y)
			-- acf_local_tbl[6][3] = get(acf_6_z)
			
			-- acf_local_tbl[7][1] = get(acf_7_x)
			-- acf_local_tbl[7][2] = get(acf_7_y)
			-- acf_local_tbl[7][3] = get(acf_7_z)
			
			-- acf_local_tbl[8][1] = get(acf_8_x)
			-- acf_local_tbl[8][2] = get(acf_8_y)
			-- acf_local_tbl[8][3] = get(acf_8_z)
			
			-- acf_local_tbl[9][1] = get(acf_9_x)
			-- acf_local_tbl[9][2] = get(acf_9_y)
			-- acf_local_tbl[9][3] = get(acf_9_z)
			
			-- acf_local_tbl[10][1] = get(acf_10_x)
			-- acf_local_tbl[10][2] = get(acf_10_y)
			-- acf_local_tbl[10][3] = get(acf_10_z)
			
			-- acf_local_tbl[11][1] = get(acf_11_x)
			-- acf_local_tbl[11][2] = get(acf_11_y)
			-- acf_local_tbl[11][3] = get(acf_11_z)
			
			-- acf_local_tbl[12][1] = get(acf_12_x)
			-- acf_local_tbl[12][2] = get(acf_12_y)
			-- acf_local_tbl[12][3] = get(acf_12_z)
			
			-- acf_local_tbl[13][1] = get(acf_13_x)
			-- acf_local_tbl[13][2] = get(acf_13_y)
			-- acf_local_tbl[13][3] = get(acf_13_z)
			
			-- acf_local_tbl[14][1] = get(acf_14_x)
			-- acf_local_tbl[14][2] = get(acf_14_y)
			-- acf_local_tbl[14][3] = get(acf_14_z)
			
			-- acf_local_tbl[15][1] = get(acf_15_x)
			-- acf_local_tbl[15][2] = get(acf_15_y)
			-- acf_local_tbl[15][3] = get(acf_15_z)
			
			-- acf_local_tbl[16][1] = get(acf_16_x)
			-- acf_local_tbl[16][2] = get(acf_16_y)
			-- acf_local_tbl[16][3] = get(acf_16_z)
			
			-- acf_local_tbl[17][1] = get(acf_17_x)
			-- acf_local_tbl[17][2] = get(acf_17_y)
			-- acf_local_tbl[17][3] = get(acf_17_z)
			
			-- acf_local_tbl[18][1] = get(acf_18_x)
			-- acf_local_tbl[18][2] = get(acf_18_y)
			-- acf_local_tbl[18][3] = get(acf_18_z)
			
			-- acf_local_tbl[19][1] = get(acf_19_x)
			-- acf_local_tbl[19][2] = get(acf_19_y)
			-- acf_local_tbl[19][3] = get(acf_19_z)
			
			-- acf_local_tbl[20][1] = get(acf_20_x)
			-- acf_local_tbl[20][2] = get(acf_20_y)
			-- acf_local_tbl[20][3] = get(acf_20_z)
			
			-- recalculate relative table	
			local local_x = get(pos_x) -- longtitude. positive from W to E
			local local_z = get(pos_z) -- latitude. positive from N to S
			local local_y = get(pos_y) -- altitude. positive UP
			
			local lat, lon, local_alt = localToWorld(local_x, local_y, local_z)
			
			local cur = get(course)
			
			for i = 1, 20, 1 do
				-- bearing				
				acf_circ_tbl[i][1] = math.deg(math.atan2(acf_local_tbl_x[i] - local_x, -acf_local_tbl_z[i] + local_z)) - cur
				while acf_circ_tbl[i][1] > 180 do acf_circ_tbl[i][1] = acf_circ_tbl[i][1] - 360 end
				while acf_circ_tbl[i][1] < -180 do acf_circ_tbl[i][1] = acf_circ_tbl[i][1] + 360 end
				--dist
				acf_circ_tbl[i][2] = math.sqrt( (acf_local_tbl_x[i] - local_x)^2 + (acf_local_tbl_z[i] - local_z)^2 )
				-- altitude
				-- local lat, lon, alt = localToWorld(acf_local_tbl_x[i], acf_local_tbl_y[i], acf_local_tbl_z[i])
				-- acf_circ_tbl[i][3] = acf_local_tbl_el[i]

			end
			
			
end




local function coor_calc() -- recalculate coordinates
	local level = get(level_mode)
	for i = 1, 20, 1 do
		local bearing = acf_circ_tbl[i][1]
		local dist = acf_circ_tbl[i][2]
		local alt = acf_local_tbl_el[i]
		
		local y = dist * math.cos(math.rad(bearing))
		local x = dist * math.sin(math.rad(bearing))
		local z = alt
		local show = bool2int(acf_local_tbl_x[i] ~= 0 and acf_local_tbl_y[i] ~= 0 and acf_local_tbl_z[i] ~= 0)
		
		--if (alt > 0 and level < 0) or (alt < 0 and level > 0) then show = 0 end
		
		--print("coor calc", x, y, z, show)
		
		tcas_show_tbl[i][1] = x
		tcas_show_tbl[i][2] = y
		tcas_show_tbl[i][3] = z
		-- if i==1 then
			-- tcas_show_tbl[i][4] = -2
		-- else
		tcas_show_tbl[i][4] = acf_local_tbl_m[i]
		--end
		tcas_show_tbl[i][5] = 0
		if acf_local_tbl_vs[i]<=-500 then
			tcas_show_tbl[i][5] = -1
		elseif acf_local_tbl_vs[i]>=500 then
			tcas_show_tbl[i][5] = 1
		end
		local alt_own=get(vbe_msl)
		local alt_show = math.floor((alt * 3.280839895013-alt_own) / 100)
		local sign_mark = "+"
		if alt_show < 0 then sign_mark = "-" end
		if get(fl_mode)==0 then
			if level==0 and math.abs(alt_show) <= 27 then
				alt_show = string.format("%s%s", "", math.abs(alt_show) )
				if string.len(alt_show) == 1 then alt_show = string.format("%s%s", "0", alt_show ) end
				
				alt_show = sign_mark..alt_show
			elseif level==-1 and alt_show >= -90  and alt_show <= 27 then
				alt_show = string.format("%s%s", "", math.abs(alt_show) )
				if string.len(alt_show) == 1 then alt_show = string.format("%s%s", "0", alt_show ) end
				
				alt_show = sign_mark..alt_show
			elseif level==1 and alt_show <= 90  and alt_show >= -27 then
				alt_show = string.format("%s%s", "", math.abs(alt_show) )
				if string.len(alt_show) == 1 then alt_show = string.format("%s%s", "0", alt_show ) end
				
				alt_show = sign_mark..alt_show
			else
				alt_show = ""
				tcas_show_tbl[i][5] = 0
			end			
			tcas_show_tbl[i][6] = alt_show
		else
			alt_show=math.floor((alt) * 3.280839895013 / 100)
			alt_show = string.format("%s%s", "", alt_show )
			if string.len(alt_show) == 1 then 
				alt_show = string.format("%s%s", "00", alt_show ) 
			elseif string.len(alt_show) == 2 then
				alt_show = string.format("%s%s", "0", alt_show ) 
			end
			--alt_show = sign_mark..alt_show
			tcas_show_tbl[i][6] = alt_show
		end
		if show == 0 then tcas_show_tbl[i][7] = false end
		local filt=0
		if level==1 then
			filt=2
		elseif level==-1 then
			filt=3
		end
		set(tcas_filter,filt)
		
		
	end

end


local function mark_calc()
	
	local Tau_TA, Tau_RA, Dist_TA, Dist_RA, Alt_Ta, Alt_RA = limits() -- set limits for TA and RA modes
	local our_vvi = get(vvi)
	
	local traffic = 0
    local ta_select = get(ta_sel)

    if ta_select > 0 and (get(traffic_det) > 0 or tcas_mode < 3) then
        set(ta_sel,0)
    end
	
	-- flush the indruders table and fill it from scratch
	intruders_tbl = {}
	
	
	
	for i = 1, 20, 1 do
		
		
		local mark = tcas_show_tbl[i][4]
		local rate = tcas_show_tbl[i][5]
		
		if tcas_mode == -1 and power then
			if i == 1 then
				tcas_show_tbl[i][1] = -1852*2
				tcas_show_tbl[i][2] = 1852*4
				tcas_show_tbl[i][3] = 0
				tcas_show_tbl[i][4] = 1
				tcas_show_tbl[i][5] = 0
				tcas_show_tbl[i][6] = "+10"
			elseif i == 2 then
				tcas_show_tbl[i][1] = 1852*2
				tcas_show_tbl[i][2] = 1852*4
				tcas_show_tbl[i][3] = -1000
				tcas_show_tbl[i][4] = 2
				tcas_show_tbl[i][5] = -1
				tcas_show_tbl[i][6] = "-10"
			elseif i == 3 then
				tcas_show_tbl[i][1] = 1852*2
				tcas_show_tbl[i][2] = 0
				tcas_show_tbl[i][3] = 200
				tcas_show_tbl[i][4] = 4
				tcas_show_tbl[i][5] = 0
				tcas_show_tbl[i][6] = "+02"
			elseif i == 4 then
				tcas_show_tbl[i][1] = -1852*2
				tcas_show_tbl[i][2] = 0
				tcas_show_tbl[i][3] = -200
				tcas_show_tbl[i][4] = 3
				tcas_show_tbl[i][5] = 1
				tcas_show_tbl[i][6] = "-02"
			else
				tcas_show_tbl[i][4] = 0
				mark = 0
			end
		elseif tcas_mode == 0 or tcas_mode == 1 or tcas_mode == 2 or not power or ta_select == 1 then -- clear marks
			tcas_show_tbl[i][4] = 0
			tcas_show_tbl[i][7] = false
			mark = 0
		elseif mark ~= 0 and power then
			local bearing = acf_circ_tbl[i][1]
			local dist = acf_circ_tbl[i][2] / 1852 -- distance in miles
			local alt = acf_circ_tbl[i][3] -- alt in meters
			local alt_prev = tcas_prev_tbl[i][3]
			
			local x = tcas_show_tbl[i][1] -- coordinates in meters
			local y = tcas_show_tbl[i][2] -- coordinates in meters
			
			-- marks will be. 1 - non-intruder, 2 - proximity traffic, 3 - intruder (TA), 4 - Threat (RA)
			local search_dist = math.sqrt(x^2 + (y - 3*1852)^2) / 1852
			
			
			
			if search_dist > 16 or math.abs(alt) > 2651.76 then 
				mark = 0 -- too far away. ignoring
				tcas_show_tbl[i][7] = false
			elseif (search_dist > 7 or math.abs(alt) > 365.76) or (get(rv5_alt) < 518.16 and alt < -get(rv5_alt) + 115.824) then
				if acf_local_tbl[i][1]-acf_local_last_tbl[i][1] ~= 0 or acf_local_tbl[i][3]-acf_local_last_tbl[i][3] ~= 0 then
					mark = 1 -- in range, but not a threat. or "on ground"
					tcas_show_tbl[i][7] = false
				else
					mark = 0
					tcas_show_tbl[i][7] = false
				end
			else -- calculate the marks within the circle 
				mark = 2
				local dist_last = dist --math.sqrt(x^2 + y^2) -- last distance of target
				local delta_x = x - tcas_prev_tbl[i][1]
				local delta_y = y - tcas_prev_tbl[i][2]
				local delta_z = alt - alt_prev
				local z_last = alt
				
				--print(delta_x, delta_y, delta_z)
				
				
				
				if acf_local_tbl[i][1]-acf_local_last_tbl[i][1] ~= 0 or acf_local_tbl[i][3]-acf_local_last_tbl[i][3] ~= 0 then -- bugs walkaround
					local iter_time = 0.5
					for t = 0, Tau_RA + 1, iter_time do
						local iter_x = x + delta_x * t
						local iter_y = y + delta_y * t
						local iter_z = alt + delta_z * t
						
						local iter_dist = math.sqrt(iter_x^2 + iter_y^2) / 1852 -- distance in miles
						-- check distance and alt change
						if iter_dist > dist_last and t == 1 then -- distance growing at the very begining of calculations
							tcas_show_tbl[i][7] = false
							if dist < Dist_TA then -- clear of conflict, but still close
								mark = 3
							else mark = 2 -- no threat
							end
							break
							
						elseif t > 1 and t <= Tau_RA and iter_dist <= Dist_RA and math.abs(iter_z) <= Alt_RA and tcas_mode == 4 then  -- too close. alarm!
							mark = 4
							tcas_show_tbl[i][7] = true
							traffic = 1
							if iter_dist > dist_last and t > 1 then -- target is at its closest position and within the RA area
								-- save this target into table
								table.insert(intruders_tbl, {["Tau"] = t, ["dist"] = dist, ["cl_dist"] = iter_dist, ["alt"] = alt, ["cl_alt"] = iter_z, ["rate"] = alt - alt_prev + our_vvi})
								break
							end
							--break
						elseif t > 1 and t <= Tau_TA and iter_dist <= Dist_TA and math.abs(iter_z) <= Alt_Ta then -- target will fly close. caution!
							mark = 3
							tcas_show_tbl[i][7] = true
							traffic = 1
							if iter_dist > dist_last and t > 1 then -- target is at its closest position and within the TA area
								-- stop mark calculation
								break
							end
							
							--break
						elseif t > 1 and iter_dist > dist_last and math.abs(iter_z) > math.abs(z_last) and iter_dist > Dist_TA and math.abs(iter_z) > Alt_Ta then -- target fly away the secured area
							mark = 2
							break
						elseif t == Tau_RA and iter_dist > Dist_TA and math.abs(iter_z) > Alt_Ta then -- target has no threat
							mark = 2
						end
						dist_last = iter_dist
						z_last = iter_z
					end
				else mark = 0
				end
			
			
			end
			
			--if mark > 0 then print(mark, dist, alt) end
			
			tcas_show_tbl[i][4] = mark
			
			-- arrow calculation
			
			if alt - alt_prev + our_vvi < -2.54 then rate = -1 -- target descending
			elseif alt - alt_prev + our_vvi > 2.54 then rate = 1 -- target climbing
			end
			
			tcas_show_tbl[i][5] = rate
			
			local alt_show = math.floor(alt * 3.280839895013 / 100)
			local sign_mark = "+"
			if alt_show < 0 then sign_mark = "-" end
			if get(fl_mode)==0 then
				if math.abs(alt_show) < 24 then
					alt_show = string.format("%s%s", "", math.abs(alt_show) )
					if string.len(alt_show) == 1 then alt_show = string.format("%s%s", "0", alt_show ) end
					
					alt_show = sign_mark..alt_show
				else
					alt_show = ""
					tcas_show_tbl[i][5] = 0
				end			
				tcas_show_tbl[i][6] = alt_show
			else
				alt_show=math.floor((alt+get(vbe_msl))/ 100)
				alt_show = string.format("%s%s", "", alt_show )
				if string.len(alt_show) == 1 then 
					alt_show = string.format("%s%s", "00", alt_show ) 
				elseif string.len(alt_show) == 2 then
					alt_show = string.format("%s%s", "0", alt_show ) 
				end
				--alt_show = sign_mark..alt_show
				tcas_show_tbl[i][6] = alt_show
			end
			
			
		end
		
		
		tcas_prev_tbl[i][1] = tcas_show_tbl[i][1]
		tcas_prev_tbl[i][2] = tcas_show_tbl[i][2]
		tcas_prev_tbl[i][3] = tcas_show_tbl[i][3]
		
		acf_local_last_tbl[i][1] = acf_local_tbl[i][1]
		acf_local_last_tbl[i][2] = acf_local_tbl[i][2]
		acf_local_last_tbl[i][3] = acf_local_tbl[i][3]
		
		--print(i, "  ", tcas_show_tbl[i][4])
		
	end

	set(traffic_det, traffic)
	

	
	
	

end

local range = get(tcas_range_set)
local range_timer = 5

local dn_btn_last = get(tcas_rng_dn_btn)
local up_btn_last = get(tcas_rng_up_btn)

local function set_range()
	
	range = get(tcas_range_set)

if MASTER then
	
	local dn_btn = get(tcas_rng_dn_btn)
	local up_btn = get(tcas_rng_up_btn)
	
	range_timer = range_timer + passed
	
	if dn_btn ~= dn_btn_last then
		if dn_btn == 1 and range > 0 then range = range - 1 end
		range_timer = 0
	end

	if up_btn ~= up_btn_last then
		if up_btn == 1 and range < 3 then range = range + 1 end
		range_timer = 0
	end	
	
	dn_btn_last = dn_btn
	up_btn_last = up_btn
	
	--results
	set(tcas_range_set, range) 
	 
end

end


local test_counter = 100

local function tcas_mode_set()

	local mode = get(tcas_mode_rot)
	
	tcas_mode = get(mode_set)
	
	
	test_counter = test_counter + passed
	
	if mode == -1 then
		test_counter = 0
	end
	
if MASTER then
	local tcas_fail=0
	local alt_fail=0
	if (get(vbe_1)==0 and get(vbe_se1)==0) or (get(vbe_2)==0 and get(vbe_se1)==1) then
		alt_fail=1
	end
	if get(pkp_fail)>0 or get(pkp_on)==0 or get(rv_flag)>0 or get(tks_on_2)==0 or get(tks_bgmk1_fail)>0 or alt_fail>0 or get(cas_pwr)==0 or get(xpdr_fail)>0 or get(tra_transponder)==0 or get(tcas_proc_on)==0 or get(var_on_1)==0 then
		tcas_fail=1
	end
	set(fail,tcas_fail)
	set(cas_alt_fail,alt_fail)
	if not power then 
		mode = 0
		tcas_mode = 0
	elseif test_counter < 1 then
		tcas_mode = -1
	elseif mode == 3 or mode == 4 and (get(rv5_alt) < 152.4 or get(rv_flag) == 1) then
		tcas_mode = 3
	elseif mode == 4 and (get(rv5_alt) >= 152.4 and get(rv_flag) == 0) then
		tcas_mode = 4
	-- elseif mode>2 and tcas_fail>0 then
		-- tcas_mode = 2
	else 
		tcas_mode = mode
	end
	
	
	
	-- set default xpdr mode
	-- (off=0,stdby=1,on=2,test=3)
	
	local tcas_int_mode = 0
	local so72_int_mode = 0
	
	if not power then tcas_int_mode = 0 -- off
	elseif mode == 0 then tcas_int_mode = 1 -- stby
	elseif mode == 1 then tcas_int_mode = 2 -- work
	elseif mode == 2 then tcas_int_mode = 3 -- work
	elseif mode == -1 then tcas_int_mode = 4 -- test
	elseif mode == 3 then tcas_int_mode = 6 -- work
	elseif mode == 4 then tcas_int_mode = 7 -- work
	end
	
	local so72_mode = get(so_mode)
	
	-- if so72_mode == 0 or get(bus27_volt_left) < 13 then so72_int_mode = 0 -- off
	-- elseif so72_mode == 1 then so72_int_mode = 1 -- stby
	-- elseif so72_mode == 5 then so72_int_mode = 3 -- work
	-- elseif so72_mode == 6 then so72_int_mode = 2 -- work
	-- end 
	
	
	-- results
	set(mode_set, tcas_mode) -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA	4
	if get(kontur90~=0) then
		if get(tra_transponder)>0 then
			if tcas_mode==-1 then
				set(xpdr_mode,4)
			else
				if get(xpdr_fail)==0 then
					set(xpdr_mode,math.min(3+5*(1-tcas_fail),tcas_int_mode))
				else
					set(xpdr_mode,0)
				end
			end
		else
			set(xpdr_mode,so72_mode)
		end
	end	
end	

end

--local range_last = range

local ident_timer = 10
local sq_set_timer = 10

local fnc_but_last = get(tcas_fcn_btn)
local left_btn_last = get(tcas_left_btn)
local right_btn_last = get(tcas_right_btn)
local enter_btn_last = get(tcas_ent_btn)

-- local text = 0

local reset timer = 0

local tcas_rot_big_last = get(tcas_rot_big)

local function text_mode()
	
	local text = get(screen_mode)

	fnc_but_sw = get(tcas_fcn_btn)
	left_btn_sw = get(tcas_left_btn)
	right_btn_sw = get(tcas_right_btn)
	enter_btn_sw = get(tcas_ent_btn)	
	if ident_timer<20 then
		ident_timer = ident_timer + passed
	end
	
	--if range_last ~= range then range_timer = 0 end
	if get(tcas_ident_btn) == 1 then ident_timer = 0 end

if MASTER then
	
	if not power then 
		text = 100
	elseif get(xpdr_fail)> 0 then
		text = -1
	elseif tcas_mode == -1 then -- test
		text = 5
	elseif range_timer < 3 and text < 10 then -- range changed
		text = 6
	elseif ident_timer < 18 and right_btn_last < 10 then
		text = -10
	elseif fnc_but_sw ~= fnc_but_last and fnc_but_sw == 1 and text ~= 1 and text ~= 2 and text ~= 3 and text ~= 4 and text < 10 then
		text = 1 -- level mode
	elseif fnc_but_sw ~= fnc_but_last and fnc_but_sw == 1 and text == 1 then
		text = 2 -- flight level mode
	elseif fnc_but_sw ~= fnc_but_last and fnc_but_sw == 1 and text == 2 then
		text = 3 -- flight ID
	elseif fnc_but_sw ~= fnc_but_last and fnc_but_sw == 1 and text == 3 then
		text = 4 -- PLN BIT
	elseif (fnc_but_sw ~= fnc_but_last and fnc_but_sw == 1 and text == 4) or (range_timer > 3 and ident_timer > 5 and text ~= 1 and text ~= 2 and text ~= 3 and text ~= 4 and (text < 10 or text == 100 and power)) then
		text = 0 -- ATC CODE
	end
	
	
	
	if text == 0 and enter_btn_sw == 1 and enter_btn_sw ~= enter_btn_last then --or text == 11 or text == 12 or text == 13 or text == 14 then
		text = 11
		--set(screen_mode, text)
	elseif text >= 11 and text <= 14 and enter_btn_sw == 1 and enter_btn_sw ~= enter_btn_last then
		text = 0
		--set(screen_mode, text)
	end
	
	-- change cursor position
	if text >= 11 and text <= 14 then
		if right_btn_sw ~= right_btn_last and right_btn_sw == 1 then text = text + 1
		elseif left_btn_sw ~= left_btn_last and left_btn_sw == 1 then text = text - 1
		end
		
		local tcas_rot_big_now = get(tcas_rot_big)
		
		text = text + tcas_rot_big_now - tcas_rot_big_last
		
		-- limit cursor
		if text > 14 then text = 14
		elseif text < 11 then text = 11 end
		
		
		
		if fnc_but_sw ~= fnc_but_last and fnc_but_sw == 1 then text = 0 end
		
		tcas_rot_big_last = tcas_rot_big_now
		
	end	
	
end	

	
	
	if text == 1 then
		local lvl = get(level_mode)
		if right_btn_sw ~= right_btn_last and right_btn_sw == 1 and lvl < 1 then lvl = lvl + 1
		elseif left_btn_sw ~= left_btn_last and left_btn_sw == 1 and lvl > -1 then lvl = lvl - 1
		end		
		if MASTER then set(level_mode, lvl) end
	end
	
	if text == 2 then
		local fl = get(fl_mode)
		if right_btn_sw ~= right_btn_last and right_btn_sw == 1 and fl < 1 then fl = fl + 1
		elseif left_btn_sw ~= left_btn_last and left_btn_sw == 1 and fl > 0 then fl = fl - 1
		end		
		if MASTER then set(fl_mode, fl) end
		
	end
	
	
	
	
	
	if fnc_but_sw == 1 then
		range_timer = 10
		ident_timer = 10
	end
	
	fnc_but_last = fnc_but_sw
	left_btn_last = left_btn_sw
	right_btn_last = right_btn_sw
	enter_btn_last = enter_btn_sw
	
	--range_last = range
	-- result
	if MASTER then set(screen_mode, text) end
end

local initial_RA = 10 -- - 2 = descend 2500fpm, -1 = descend 1500fpm, 0 = level flight, +1 = climb 1500fpm, +2 = climb 2500fpm, 10 = none

local ra_counter = 0
local col_alt = 0
local col_alt_last = 0

local function tcas_ra_calc()
	--print ("    ")
	local Tau_TA, Tau_RA, Dist_TA, Dist_RA, Alt_Ta, Alt_RA = limits() -- set limits for TA and RA modes
	local our_vvi = get(vvi)
	local our_alt = get(msl_true)
	local radioalt = get(rv5_alt)
	--local our_course = get(true_psi)
	--local westbound = our_course > 180 and our_course <= 360
	
	-- sort table by Tau
	if intruders_tbl[1] and intruders_tbl[2] and intruders_tbl[1]["Tau"] ~= nil and intruders_tbl[2]["Tau"] ~= nil then
		table.sort(intruders_tbl, function(a,b) return a["Tau"] < b["Tau"] end)
	end
	
	ra_counter = ra_counter + 1
	
	if tcas_mode == 4 then
		-- take two targets and check where they will pass
		local target_1_alt_now = nil --intruders_tbl[1]["alt"]
		local target_2_alt_now = nil --intruders_tbl[2]["alt"]
		--local target_3_alt_now = nil
		
		local target_1_alt_col = nil --intruders_tbl[1]["cl_alt"]
		local target_2_alt_col = nil --intruders_tbl[2]["cl_alt"]
		--local target_3_alt_col = nil
		
		if intruders_tbl[1] then 
			target_1_alt_now = intruders_tbl[1]["alt"]
			target_1_alt_col = intruders_tbl[1]["cl_alt"]
		end
		
		if intruders_tbl[2] then
			target_2_alt_now = intruders_tbl[2]["alt"]
			target_2_alt_col = intruders_tbl[2]["cl_alt"]
		end
		--[[
		if intruders_tbl[3] then
			target_3_alt_now = intruders_tbl[3]["alt"]
			target_3_alt_col = intruders_tbl[3]["cl_alt"]
		end
		--]]
		
		local targets = 0
		
		--[[if target_1_alt_now and target_2_alt_now then -- two targets
			targets = 2
			
			
			
			
			ra_counter = 0		--]]
		if target_1_alt_now and ra_counter > 3 then -- only one target
			targets = 1
			
			local timeToCol = intruders_tbl[1]["Tau"]
			local altCol = intruders_tbl[1]["cl_alt"]
			col_alt = altCol + our_alt
			-- посчитать два варианта изменения вертикальной скорости и какая будет разница высот. принять решение с наибольшей разницей
			-- предполагаемые вертикальные скорости 5 и 12 м/с.
			-- если полет прямолинейный - то предполагать 5
			-- если снижаемся или поднимаемся - 12 и 0 соответственно.
			
			local up = 0
			local down = 0
			
			if our_vvi > 10 then
				
				up = (12 - our_vvi) * timeToCol
				down = (5 - our_vvi) * timeToCol
				
				if up - altCol > altCol - down then 
					initial_RA = 2
					set(ra_scale_set, 2)
				else 
					initial_RA = 1
					set(ra_scale_set, 6)
				end
				--print(">10  ", initial_RA, up, down, our_vvi, altCol)
			elseif our_vvi > 4 then 
				up = (12 - our_vvi) * timeToCol
				down = -our_vvi * timeToCol
				
				if up - altCol > altCol - down then 
					initial_RA = 2
					set(ra_scale_set, 2)
				else 
					initial_RA = 0
					set(ra_scale_set, 7)
				end
				--print(">3  ", initial_RA, up, down, our_vvi, altCol)
			elseif our_vvi < -10 then 
				up = (-5 - our_vvi) * timeToCol
				down = (-12 - our_vvi) * timeToCol
				
				if up - altCol > altCol - down or radioalt < 300 then 
					initial_RA = -1
					set(ra_scale_set, 8)
				else 
					initial_RA = -2 
					set(ra_scale_set, 4)
				end
				--print("<10  ", initial_RA, up, down, our_vvi, altCol)
			elseif our_vvi < -3 then 
				up = our_vvi * timeToCol
				down = (-12 - our_vvi) * timeToCol
				
				if up - altCol > altCol - down or radioalt < 300 then 
					initial_RA = -1
					set(ra_scale_set, 9)
				else 
					initial_RA = -2 
					set(ra_scale_set, 4)
				end
				--print("<3  ", initial_RA, up, down, our_vvi, altCol)
			else
				up = (5 - our_vvi) * timeToCol
				down = (-5 - our_vvi) * timeToCol
				
				if up - altCol > altCol - down or radioalt < 300  then 
					initial_RA = 1
					set(ra_scale_set, 1)
				else 
					initial_RA = -1 
					set(ra_scale_set, 3)
				end
				
				--print("0  ", initial_RA, up, down, our_vvi, altCol)
			end
			
			ra_counter = 0
		else -- no targets
			
			local no_threat = true
			
			for i = 1, 20, 1 do
				if tcas_show_tbl[i][7] then no_threat = false end
			end
			
			--print(math.abs(our_alt - col_alt) > Alt_RA, no_threat)
			
			if (math.abs(our_alt - col_alt) > Alt_Ta or no_threat) and ra_counter > 5 then 
				initial_RA = 10 
				set(ra_scale_set, 0)
				
				col_alt = 0
			end
			
		end
	
		col_alt_last = col_alt
		
		--set(ra_scale_set, 0)
	else
		set(ra_scale_set, 0)
		col_alt = 0
		col_alt_last = 0
	end
	
	
end





function update()

	MASTER = get(ismaster) ~= 1
	
	passed = get(frame_time)
	refresh_counter = refresh_counter + passed
	
	power = get(bus27_volt_left) > 20 and get(tcas_on) == 1
	
	tcas_mode_set()
	local alt_xmit=get(alt_svs)*3.28084
	if get(kontur90)==1 and get(tra_transponder)>0 then
		alt_xmit=get(vbe_msl)
	end
	--set(xpdr_altitude,alt_xmit)
	
	-- refresh table once per second
	if refresh_counter >= 1 and get(xpdr_mode)>5 or get(xpdr_mode)==4 then
		
		refresh_data()
		coor_calc()
		--mark_calc()
		--tcas_ra_calc()

		refresh_counter = 0
	end
	
	set_range()
	text_mode()
	
	
end



components = {
	
	tcas_draw {
		position = {11, 11, 482, 530},
		table_draw = tcas_show_tbl
	},
	
	tcas_draw {
		position = {518, 11, 482, 530},
		table_draw = tcas_show_tbl
	},	


}




