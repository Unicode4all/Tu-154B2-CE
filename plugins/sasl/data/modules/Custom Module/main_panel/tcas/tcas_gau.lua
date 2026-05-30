-- this is TCAS gauge

size = {482, 530}
defineProperty("side")
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

-- power and controls
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus115_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение на сети 115в

defineProperty("var_on", globalPropertyi("tu154b2/custom/switchers/ovhd/var_left"))  -- оерхед. вар лев
--defineProperty("var_right", globalPropertyi("tu154b2/custom/switchers/ovhd/var_right"))  -- оерхед. вар прав
defineProperty("tcas_on", globalPropertyi("tu154b2/custom/switchers/ovhd/tcas_on"))  -- выключатель TCAS

defineProperty("vsi_brt", globalPropertyf("tu154b2/custom/gauges/vsi/vsi_brt_left"))  -- яркость

-- source
defineProperty("vvi", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")) -- VVI

defineProperty("vvi_int2", globalPropertyi("tu154b2/custom/gauges/vvi_left")) -- VVI
defineProperty("vvi_int", globalPropertyi("sim/custom/gauges/vvi_left_new")) -- VVI
defineProperty("ta_sel", globalPropertyi("sim/custom/tcas2000/ta_sel"))  -- появление желтых или красных меток
defineProperty("static_fail", globalPropertyi("sim/operation/failures/rel_static"))  -- static fail
defineProperty("slow_vario", globalPropertyi("sim/custom/t154cfg/slow_vario"))


-- load images
defineProperty("scale_img", loadImage("tcas_scale.png", 14, 47, 482, 482))
defineProperty("needle_img", loadImage("tcas_scale.png", 2, 0, 346, 37))

defineProperty("scale_40", loadImage("tcas_marks.png", 35, 391, 38, 38))
defineProperty("scale_15", loadImage("tcas_marks.png", 18, 377, 72, 72))
defineProperty("scale_10", loadImage("tcas_marks.png", 123, 343, 102, 102))
defineProperty("scale_5", loadImage("tcas_marks.png", 276, 256, 194, 194))
defineProperty("scale_3", loadImage("tcas_marks.png", 18, 48, 268, 174))
defineProperty("mc_img", loadImage("tcas_marks.png", 0, 488, 53, 24))
defineProperty("stby_img", loadImage("tcas_marks.png", 10, 322, 100, 49))
defineProperty("fail_img", loadImage("tcas_marks.png", 8, 275, 110, 46))
defineProperty("ta_img", loadImage("tcas_marks.png", 144, 275, 83, 46))
defineProperty("test_img", loadImage("tcas_marks.png", 64, 488, 78, 24))

defineProperty("range_40", loadImage("tcas_marks.png", 372, 227, 112, 24))
defineProperty("range_15", loadImage("tcas_marks.png", 372, 90, 112, 24))
defineProperty("range_10", loadImage("tcas_marks.png", 372, 126, 112, 24))
defineProperty("range_5", loadImage("tcas_marks.png", 372, 160, 112, 24))
defineProperty("range_3", loadImage("tcas_marks.png", 372, 196, 112, 24))

defineProperty("above_img", loadImage("tcas_marks.png", 372, 56, 113, 22))
defineProperty("below_img", loadImage("tcas_marks.png", 371, 25, 115, 22))

defineProperty("vsi_img", loadImage("tcas_marks.png", 252, 488, 52, 24))
-- RA scales
defineProperty("tcas_scale_climb", loadImage("tcas_scale_climb.png", 14, 47, 482, 482))
defineProperty("tcas_scale_climb_10", loadImage("tcas_scale_climb_10.png", 14, 47, 482, 482))
defineProperty("tcas_scale_descend", loadImage("tcas_scale_descend.png", 14, 47, 482, 482))
defineProperty("tcas_scale_descend_10", loadImage("tcas_scale_descend_10.png", 14, 47, 482, 482))
defineProperty("tcas_scale_maintain_lvl", loadImage("tcas_scale_maintain_lvl.png", 14, 47, 482, 482))
defineProperty("tcas_scale_not_climb", loadImage("tcas_scale_not_climb.png", 14, 47, 482, 482))
defineProperty("tcas_scale_not_climb_2", loadImage("tcas_scale_not_climb_2.png", 14, 47, 482, 482))
defineProperty("tcas_scale_not_descend", loadImage("tcas_scale_not_descend.png", 14, 47, 482, 482))
defineProperty("tcas_scale_not_descend_2", loadImage("tcas_scale_not_descend_2.png", 14, 47, 482, 482))

-- datarefs
defineProperty("mode_set", globalPropertyi("tu154b2/custom/tcas/mode_set"))  -- режим TCAS. -1 = test, 0 - stby, 1 = alt off, 2 = alt on, 3 = TA, 4 = TARA	4
defineProperty("tcas_range_set", globalPropertyi("tu154b2/custom/tcas/range_set"))  -- дистанция на дисплее. 0 = 3, 1 = 5, 2 = 10, 3 = 15 nm

defineProperty("level_mode", globalPropertyi("tu154b2/custom/tcas/level_mode"))  -- 1 = above, 0 = normal, -1 = below
defineProperty("fl_mode", globalPropertyi("tu154b2/custom/tcas/fl_mode"))  -- 0 = absolute, 1 = relative
defineProperty("flt_id", globalPropertyi("tu154b2/custom/tcas/flt_id"))  -- 0 = cover, 1 = show / change code
defineProperty("altitude", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))

defineProperty("ra_scale_set", globalPropertyi("sim/cockpit2/tcas/indicators/tcas_message"))  -- RA mode scale set. 0 = none.
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- fail

vvi_fail = globalPropertyi("sim/operation/failures/rel_ss_vvi") -- fail
cas_fail = globalPropertyi("tu154b2/custom/tcas/tcas_fail")
cas_alt_fail = globalPropertyi("tu154b2/custom/tcas/tcas_alt_fail")
defineProperty("vvi_show", globalPropertyf("tu154b2/custom/tcas/vvi_left"))


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


local fnt = loadFont(moduleDirectory .. "/Custom Module/digital7.ttf")
local ta_select = get(ta_sel)
local fl_mode_loc = get(fl_mode)

local vvi_ang_act = 0
local vvi_ms = 0
local mode_show = 3
local range_show = 0

local vvi_tbl = {
{-30, -170},
{-20, -145},
{-10, -110},
{-5, -60},
{0, 0},
{5, 60},
{10, 110},
{20, 145},
{30, 170}}


local tcas_power = false
local vvi_power = false
local ta_select = 0

local level = 0

local fl_text_draw = ""

local ra_mode = 0

local power_cntr = 0

local brightness = 0
local testx=0
local testy=0
flight_level=0
function update()
	flight_level=math.floor(get(altitude)/100)
    
	local passed = get(frame_time)
	
	
	local power_27 = get(bus27_volt) > 13
	
	if get(var_on) == 1 then power_cntr = power_cntr + passed
	else power_cntr = 0 end
	
	
	if power_cntr > 10 then power_cntr = 10 end
	
	
    fl_mode_loc = get(fl_mode)
    
    if fl_mode_loc > 0 and get(cas_alt_fail)==0 then
		if flight_level<10 then
			fl_text_draw = string.format("000%s",flight_level)
		elseif flight_level<100 then
			fl_text_draw = string.format("00%s",flight_level)
		elseif flight_level<1000 then
			fl_text_draw = string.format("0%s",flight_level)
		else 
			fl_text_draw = string.format("%s",flight_level)
		end
    else
      fl_text_draw = ""
    end
    
    --drawBitmapText(font, 30, 420, fl_text_draw, TEXT_ALIGN_LEFT, 1,1,1)
    
	vvi_power = power_27 and power_cntr > 3
	
	-- brt
	brightness = (get(vsi_brt) ^ 0.8) * bool2int(vvi_power)
	
	tcas_power = get(bus115_volt) > 110 and get(tcas_on) == 1 and vvi_power
    
    ta_select = get(ta_sel)
	
	
if get(ismaster) ~= 1 then set(vvi_int2, get(vvi_int)) end
	
	local staticFail_left = get(static_fail) == 6

	-- variometers
	local var=get(vvi) * 0.00508 * bool2int(not staticFail_left)
	local T=0
	if get(slow_vario)>0 then
		T=7
	end
	if passed~=0 then
		vvi_ms = passed/(T+passed)*(var) +vvi_ms*T/(T+passed)
	end
	--local vvi_ms = get(vvi_int) * 0.00508 -- m/s
	
	if vvi_ms >= 30 then vvi_ang_act = 170
	elseif vvi_ms <= -30 then vvi_ang_act = -170
	else vvi_ang_act = interpolate(vvi_tbl, vvi_ms)
	end
	if get(side) == 1 then
		set(vvi_show,vvi_ms)
	end
	level = get(level_mode) 
	
	ra_mode = get(ra_scale_set)
	
	range_show = get(tcas_range_set)
	mode_show = math.min(2+2*(1-get(cas_fail)),get(mode_set))
	-- testx=get(db1)
	-- testy=get(db2)
end
-- function draw()
	 -- drawBitmapText(font, 30, 420, fl_text_draw, TEXT_ALIGN_LEFT, 1,1,1)
 -- end
components = {
    
	-- scale 40nm
	textureLit {
		position = {222, 182, 38, 38},
		image = get(scale_40),
		visible = function()
			return mode_show > 2 and range_show == 4 and tcas_power and ta_select < 1
		end,
	},

	-- scale 15nm
	textureLit {
		position = {205, 165, 72, 72},
		image = get(scale_15),
		visible = function()
			return mode_show > 2 and range_show == 3 and tcas_power and ta_select < 1
		end,
	},

	-- scale 10nm
	textureLit {
		position = {191, 151, 102, 102},
		image = get(scale_10),
		visible = function()
			return ((mode_show > 2 and range_show == 2) or mode_show == -1) and tcas_power and ta_select < 1
		end,
	},

	-- scale 5nm
	textureLit {
		position = {144, 105, 194, 194},
		image = get(scale_5),
		visible = function()
			return mode_show > 2 and range_show == 1 and tcas_power and ta_select < 1
		end,
	},

	-- scale 3nm
	textureLit {
		position = {106, 182, 268, 174},
		image = get(scale_3),
		visible = function()
			return mode_show > 2 and range_show == 0 and tcas_power and ta_select < 1
		end,
	},


	-- m/c mark
	textureLit {
		position = {213, 320, 53, 22},
		image = get(mc_img),
		visible = function()
			return mode_show <= 2 and mode_show ~= -1 or ta_select > 0
		end,
	},	

	-- main scale
	textureLit {
		position = {0, 60, 482, 482},
		image = get(scale_img),
	},

	-- tcas_scale_climb
	textureLit {
		position = {0, 60, 482, 482},
		image = get(tcas_scale_climb),
		visible = function()
			return (ra_mode == 1 or ra_mode==2) and tcas_power
		end,
	},

	-- tcas_scale_climb_10
	textureLit {
		position = {0, 60, 482, 482},
		image = get(tcas_scale_climb_10),
		visible = function()
			return (ra_mode == 3 or ra_mode==4) and tcas_power
		end,
	},
	
	-- tcas_scale_descend
	textureLit {
		position = {0, 60, 482, 482},
		image = get(tcas_scale_descend),
		visible = function()
			return (ra_mode == 6 or ra_mode == 7) and tcas_power
		end,
	},

	-- tcas_scale_descend_10
	textureLit {
		position = {0, 60, 482, 482},
		image = get(tcas_scale_descend_10),
		visible = function()
			return (ra_mode == 8 or ra_mode==9) and tcas_power
		end,
	},

	-- tcas_scale_maintain_lvl
	textureLit {
		position = {0, 60, 482, 482},
		image = get(tcas_scale_maintain_lvl),
		visible = function()
			return ra_mode == 13 and tcas_power
		end,
	},

	-- -- tcas_scale_not_climb
	-- textureLit {
		-- position = {0, 60, 482, 482},
		-- image = get(tcas_scale_not_climb),
		-- visible = function()
			-- return ra_mode == 6 and tcas_power
		-- end,
	-- },

	-- -- tcas_scale_not_climb_2
	-- textureLit {
		-- position = {0, 60, 482, 482},
		-- image = get(tcas_scale_not_climb_2),
		-- visible = function()
			-- return ra_mode == 7 and tcas_power
		-- end,
	-- },

	-- -- tcas_scale_not_descend
	-- textureLit {
		-- position = {0, 60, 482, 482},
		-- image = get(tcas_scale_not_descend),
		-- visible = function()
			-- return ra_mode == 8 and tcas_power
		-- end,
	-- },

	-- -- tcas_scale_not_descend_2
	-- textureLit {
		-- position = {0, 60, 482, 482},
		-- image = get(tcas_scale_not_descend_2),
		-- visible = function()
			-- return (ra_mode == 9 or mode_show == -1) and tcas_power
		-- end,
	-- },
	
    
    -- vsi
    
    
	textureLit {
		position = {360, 95, 54, 26},
		image = get(vsi_img),
		visible = function()
			return get(vvi_fail) > 0
		end,
	},
    
    
	-- range 40nm
	textureLit {
		position = {350, 450, 114, 26},
		image = get(range_40),
		visible = function()
			return mode_show > 2 and range_show == 4 and tcas_power and ta_select < 1
		end,
	},
    
	-- range 15nm
	textureLit {
		position = {350, 450, 114, 26},
		image = get(range_15),
		visible = function()
			return mode_show > 2 and range_show == 3 and tcas_power and ta_select < 1
		end,
	},
	
	-- range 10nm
	textureLit {
		position = {350, 450, 114, 26},
		image = get(range_10),
		visible = function()
			return mode_show > 2 and range_show == 2 and tcas_power and ta_select < 1
		end,
	},

	-- range 5nm
	textureLit {
		position = {350, 450, 114, 26},
		image = get(range_5),
		visible = function()
			return mode_show > 2 and range_show == 1 and tcas_power and ta_select < 1
		end,
	},

	-- range 3nm
	textureLit {
		position = {350, 450, 114, 26},
		image = get(range_3),
		visible = function()
			return mode_show > 2 and range_show == 0 and tcas_power and ta_select < 1
		end,
	},
	
	-- stby mark
	textureLit {
		position = {30, 95, 110, 48},
		image = get(stby_img),
		visible = function()
			return mode_show >= 0 and mode_show <= 2 and tcas_power and ta_select < 1 and get(cas_fail)==0
		end,
	},
	
	-- fail mark
	textureLit {
		position = {50, 95, 112, 48},
		image = get(fail_img),
		visible = function()
			return mode_show >= 0 and get(cas_fail)>0
		end,
	},


	
	-- ta only mark
	textureLit {
		position = {50, 95, 85, 48},
		image = get(ta_img),
		visible = function()
			return mode_show == 3 and tcas_power and ta_select < 1
		end,
	},	


	-- test mark
	textureLit {
		position = {53, 95, 80, 24},
		image = get(test_img),
		visible = function()
			return mode_show == -1 and tcas_power
		end,
	},		

	-- above mark
	textureLit {
		position = {30, 455, 117, 24},
		image = get(above_img),
		visible = function()
			return level == 1 and tcas_power and ta_select < 1 and get(cas_fail)==0
		end,
	},

	-- below mark
	textureLit {
		position = {30, 455, 117, 24},
		image = get(below_img),
		visible = function()
			return level == -1 and tcas_power and ta_select < 1 and mode_show >-1 and get(cas_fail)==0
		end,
	},
	
	
	
    -- needle
    needleLit {
        position = { 68, 97, 346, 346 },
        image = get(needle_img),
        angle = function() 
			return vvi_ang_act
        end,
		visible = function()
			return true
		end,
    },
	tcas_text {
		
		text = function ()
				return fl_text_draw
			end,
		font = fnt

	},
	
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
	},
--[[	
	-- gauge total blackout if no power
	rectangle {
		position = { 0, 0, size[1], size[2] },
		color = {0, 0, 0, 1,},
		visible = function()
			return not vvi_power
		end
	
	},
--]]	
	
	
}
