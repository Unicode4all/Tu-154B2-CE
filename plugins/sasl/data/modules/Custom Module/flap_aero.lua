--createGlobalPropertyf("tu154b2/custom/controlls/flap_debugg", 1)
--createGlobalPropertyf("tu154b2/custom/controlls/flap_debugg2", 1)

defineProperty("cl", globalPropertyf("sim/aircraft/controls/acf_flap_cl"))
defineProperty("cd", globalPropertyf("sim/aircraft/controls/acf_flap_cd"))
defineProperty("cm", globalPropertyf("sim/aircraft/controls/acf_flap_cm"))

defineProperty("cl2", globalPropertyf("sim/aircraft/controls/acf_flap2_cl"))
defineProperty("cd2", globalPropertyf("sim/aircraft/controls/acf_flap2_cd"))
defineProperty("cm2", globalPropertyf("sim/aircraft/controls/acf_flap2_cm"))

--defineProperty("flap_debug", globalPropertyf("tu154b2/custom/controlls/flap_debugg")) 
-- defineProperty("c1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("c2", globalPropertyf("tu154b2/custom/controlls/debug2"))

defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

--[[
sim/aircraft/controls/acf_flap_cl	float	y
sim/aircraft/controls/acf_flap_cd	float	y
sim/aircraft/controls/acf_flap_cm	float	y
sim/aircraft/controls/acf_flap2_cl	float	y
sim/aircraft/controls/acf_flap2_cd	float	y
sim/aircraft/controls/acf_flap2_cm	float	y
--]]
defineProperty("flap", globalPropertyf("sim/flightmodel/controls/flaprat"))
defineProperty("alt", globalPropertyf("sim/flightmodel/position/y_agl"))
--defineProperty("yd", globalPropertyf("sim/cockpit2/switches/yaw_damper_on"))

defineProperty("flap_inn_L", globalPropertyf("sim/flightmodel/controls/wing1l_fla1def")) -- inner flaps left
defineProperty("flap_inn_R", globalPropertyf("sim/flightmodel/controls/wing1r_fla1def")) -- inner flaps right

defineProperty("flap_mid_L", globalPropertyf("sim/flightmodel/controls/wing2l_fla2def")) -- middle flaps left
defineProperty("flap_mid_R", globalPropertyf("sim/flightmodel/controls/wing2r_fla2def")) -- middle flaps right

defineProperty("thrust_L", globalPropertyf("tu154b2/custom/SC/thrust_1")) 
defineProperty("thrust_R", globalPropertyf("tu154b2/custom/SC/thrust_3"))
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel/position/true_airspeed"))

defineProperty("cl_GE1", globalProperty("sim/flightmodel/parts/CL_grndeffect[8]"))
defineProperty("cd_GE1", globalProperty("sim/flightmodel/parts/CD_grndeffect[8]"))
defineProperty("cl_GE2", globalProperty("sim/flightmodel/parts/CL_grndeffect[9]"))
defineProperty("cd_GE2", globalProperty("sim/flightmodel/parts/CD_grndeffect[9]"))

defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("gear2_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[1]"))  -- deploy of right gear
defineProperty("gear3_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[2]"))  -- deploy of left gear

defineProperty("pitch_add", globalProperty("sim/flightmodel/forces/M_plug_acf"))
defineProperty("lift_left", globalProperty("sim/flightmodel2/wing/elements/element_cl_total[2]"))
defineProperty("lift_right", globalProperty("sim/flightmodel2/wing/elements/element_cl_total[12]"))

defineProperty("dens", globalPropertyf("sim/weather/rho"))
-- sim/version/xplane_internal_version
--defineProperty("xp_version", globalPropertyi("sim/version/xplane_internal_version"))

--print("new flaps")


-- local flap1_cl_tbl = {
-- {-10, 1.029},
-- {0, 1.0},
-- {15, 1.0}, -- 1.4
-- {28, 1.1},
-- {36, 1.25},
-- {45, 1.35},
-- {100, 1.2}
-- }

-- local flap2_cl_tbl = {
-- {-10, 1.189},
-- {0, 1.1},
-- {13, 1.1}, -- 1.5
-- {25, 1.3},
-- {32, 1.45},
-- {40, 1.55},
-- {100, 1.4}
-- }



-- -- XP 11
-- local XP11 = get(xp_version) > 11000

--if XP11 then

	-- flap1_cl_tbl = {
	-- {-10, 1.029},
	-- {0, 1.0},
	-- {15, 1.0}, -- 1.4
	-- {28, 1.1*0.83},
	-- {36, 1.15},
	-- {45, 1.25*1.1},
	-- {100, 1.2}
	-- }

	-- flap2_cl_tbl = {
	-- {-10, 1.189},
	-- {0, 1.1},
	-- {13, 1.1}, -- 1.5
	-- {25, 1.3*0.83},
	-- {32, 1.35},
	-- {40, 1.45*1.1},
	-- {100, 1.4}
	-- }

--end






-- local flap1_cd_tbl = {
-- {-10, 0.064},
-- {0, 0.064},
-- {15, 0.064},
-- --{28, 1.1},
-- {36, 0.085},
-- {45, 0.07},
-- {100, 0.06}
-- }

-- local flap2_cd_tbl = {
-- {-10, 0.074},
-- {0, 0.074},
-- {13, 0.074},
-- --{25, 1.3},
-- {32, 0.1},
-- {40, 0.08},
-- {100, 0.07}
-- }



-- local flap1_cm_tbl = {
-- {-10, 0},
-- {0, -0.15},
-- {15, -0.2}, -- -0.13
-- {28, -0.475},
-- --{36, -0.2},
-- {45, -0.6},
-- {100, -0.2}
-- }

-- local flap2_cm_tbl = {
-- {-10, -0.2},
-- {0, -0.1}, -- 0
-- {13, -0.3}, -- 15
-- {25, -0.475}, -- 28,
-- --{32, -0.3}, -- 36
-- {40, -0.6}, -- 45
-- {100, -0.3}
-- }

local engine_lift_tbl={
{-300, 1},
{270, 1},
{370, 0},
{1000, 0},
}
local engine_lift_tbl2={
{-300, 0},
{0, 0},
{6000, 1},
{100000, 1},
}

function update()
	local r_1=get(thrust_L)
	local r_3=get(thrust_R)
	local tas=get(true_airspeed)*3.6
	local q=get(dens)/2*math.pow(tas/3.6,2)
	local lift=(get(lift_left)+get(lift_right))/2*q
	local flap_inn = get(flap_inn_L)
	local flap_out = get(flap_mid_L)
	
    -- Drag Correction
	local flap1_cd =  0.002354*flap_inn+ 0.1138
	local flap2_cd =  0.002668*flap_out+ 0.123
	--Ground Effect Correction
	local GE_lift=math.min(1.1215,get(cl_GE1))
		if GE_lift==0 then
		GE_lift=1
	end
	--local cd_corr= 1.258*GE_lift-0.258
	--local cd_corr= 4.094*math.pow(GE_lift,2)-6.333*GE_lift+3.24
	local cd_corr=0.001224647816638*math.pow(GE_lift,34.574803143031200)+0.998774966496796
	cd_corr=math.min(cd_corr,1.5)
	flap1_cd =flap1_cd*cd_corr
	flap2_cd =flap2_cd*cd_corr
	-- Pitch Moment Correction
	
	local flap1_cm = -2.7331754902e-04*math.pow(math.max(flap_inn,21),2) + 1.1752654608e-02*math.max(flap_inn,21) -5.9845867059e-01  -- -1.1581066760e-04*math.pow(flap_inn,2) + 2.5465226424e-04*flap_inn -4.0000000000e-01 -- -0.0082*flap_inn -0.2541
	local flap2_cm = -5.7882916049e-04*math.pow(math.max(flap_out,19),2) + 2.1995508099e-02*math.max(flap_out,19) -6.1310759716e-01-- -2.4572156333e-04*math.pow(flap_out,2) + 3.4351428333e-04*flap_out -2.8000000000e-01--  -0.01563*flap_out -0.03428
	--Ground Effect Correction
	local cm_corr=(0.456458958233361*math.pow(GE_lift,2) -0.120923847390904*GE_lift -0.268038425904725) / (GE_lift -0.932574423700116)
	flap1_cm =flap1_cm * cm_corr
	flap2_cm =flap2_cm * cm_corr

	-- Lift Correction
	local flap1_cl = 2.3363499246e-04*math.pow(flap_inn,2) + 1.5152337858e-03*flap_inn + 7.7870361991e-01 -- -3.8438375350e-04*math.pow(flap_inn,2) + 4.6630602241e-02*flap_inn  old functions before flap 15 tweak
	local flap2_cl = 2.6709876543e-04*math.pow(flap_out,2) + 5.5919135802e-03*flap_out + 8.8016543210e-01 -- -6.1306666667e-04*math.pow(flap_out,2) + 6.2802666667e-02*flap_out
	-- add pitch-up moment with engine power and gear retraction
	local spd=interpolate(engine_lift_tbl,tas)
	local lft=interpolate(engine_lift_tbl2,lift)
	local engine_pitch=80000*0.05285*9.81*2.7*(1.5*(r_1+r_3)/100000)*spd*lft
	local gear_pitch=4900*9.81*(0.1*(1-get(gear1_deploy))+0.45*(1-get(gear2_deploy))+0.45*(1-get(gear3_deploy)))
	if tas>80 then --better pushback fix
		set(pitch_add,engine_pitch+gear_pitch)
	end
	set(cl, flap1_cl)
	set(cl2, flap2_cl)
	
	set(cd, flap1_cd)
	set(cd2, flap2_cd)
	
	
	set(cm, flap1_cm)
	set(cm2, flap2_cm)
	

end
