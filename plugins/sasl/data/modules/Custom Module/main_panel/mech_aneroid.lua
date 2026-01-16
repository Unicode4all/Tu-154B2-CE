-- this is some aneroid-mechanic gauges logic.

-- sources
defineProperty("vvi_L", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")) -- vertical speed in ft/min
defineProperty("vvi_R", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_copilot"))
defineProperty("vvi_cab", globalPropertyf("sim/cockpit2/pressurization/indicators/cabin_vvi_fpm"))
-- get(vvi) * 0.00508 -- m/s
defineProperty("ias_L", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")) -- indicated airspeed in KTS
defineProperty("ias_R", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot"))
-- get(ias) * 1.852 -- km/hr
defineProperty("actual_cabin_alt", globalPropertyf("sim/cockpit2/pressurization/indicators/cabin_altitude_ft"))
defineProperty("cabin_press_diff", globalPropertyf("sim/cockpit2/pressurization/indicators/pressure_diffential_psi"))

-- current altitude
--defineProperty("msl_alt", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))  -- phisical altitude MSL. meters
--defineProperty("msl_press", globalPropertyf("sim/weather/barometer_sealevel_inhg"))  -- pressire at sea level in.Hg

-- failures
defineProperty("static_fail_L", globalPropertyi("sim/operation/failures/rel_static"))  -- static fail
defineProperty("static_fail_R", globalPropertyi("sim/operation/failures/rel_static2"))  -- static fail
-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- caps
defineProperty("sensors_caps", globalPropertyi("tu154b2/custom/anim/sensors_caps"))  -- чехлы и крышки


-- gauges
defineProperty("kus_ias_left", globalPropertyf("tu154b2/custom/gauges/speed/kus_ias_left")) -- приборная скорость на КУС730 КВС
defineProperty("kus_tas_left", globalPropertyf("tu154b2/custom/gauges/speed/kus_tas_left")) -- истинная скорость на КУС730 КВС

defineProperty("kus_ias_right", globalPropertyf("tu154b2/custom/gauges/speed/kus_ias_right")) -- приборная скорость на КУС730 2П
defineProperty("kus_tas_right", globalPropertyf("tu154b2/custom/gauges/speed/kus_tas_right")) -- истинная скорость на КУС730 2П

defineProperty("kus_ias_eng", globalPropertyf("tu154b2/custom/gauges/speed/kus_ias_eng")) -- приборная скорость на КУС730 БИ
defineProperty("kus_tas_eng", globalPropertyf("tu154b2/custom/gauges/speed/kus_tas_eng")) -- истинная скорость на КУС730 БИ

defineProperty("ias_left", globalPropertyf("tu154b2/custom/gauges/speed/ias_left")) -- приборная скорость КВС
defineProperty("ias_right", globalPropertyf("tu154b2/custom/gauges/speed/ias_right")) -- приборная скорость 2П

defineProperty("var75", globalPropertyf("tu154b2/custom/gauges/alt/var75")) -- выриометр 75 КВС
defineProperty("var30_L", globalPropertyf("tu154b2/custom/gauges/alt/var30_L")) -- выриометр 30
defineProperty("var30_R", globalPropertyf("tu154b2/custom/gauges/alt/var30_R"))
defineProperty("slow_vario", globalPropertyi("sim/custom/t154cfg/slow_vario"))
--defineProperty("var30_cabin", globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_vvi")) -- выриометр кабинный
defineProperty("cabin_diff", globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_diff")) -- перепад давления
defineProperty("cabin_alt", globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_alt")) -- высота в кабине

-- altimeters
defineProperty("vd15_alt_left", globalPropertyf("tu154b2/custom/gauges/alt/vd15_alt_left")) -- высота на ВД15 КВС
--defineProperty("vd15_tri_needle_left", globalPropertyf("tu154b2/custom/gauges/alt/vd15_tri_needle_left")) -- стрелка коррекции на ВД15 КВС
defineProperty("vd15_pressure_left", globalPropertyf("tu154b2/custom/gauges/alt/vd15_pressure_left")) -- давление на ВД15 КВС

defineProperty("vd15_alt_right", globalPropertyf("tu154b2/custom/gauges/alt/vd15_alt_right")) -- высота на ВД15 2П
--defineProperty("vd15_tri_needle_right", globalPropertyf("tu154b2/custom/gauges/alt/vd15_tri_needle_right")) -- стрелка коррекции на ВД15 2П
defineProperty("vd15_pressure_right", globalPropertyf("tu154b2/custom/gauges/alt/vd15_pressure_right")) -- давление на ВД15 2П

defineProperty("vd15_alt_eng", globalPropertyf("tu154b2/custom/gauges/alt/vd15_alt_eng")) -- высота на ВД15 БИ
--defineProperty("vd15_tri_needle_eng", globalPropertyf("tu154b2/custom/gauges/alt/vd15_tri_needle_eng")) -- стрелка коррекции на ВД15 БИ
defineProperty("vd15_pressure_eng", globalPropertyf("tu154b2/custom/gauges/alt/vd15_pressure_eng")) -- давление на ВД15 БИ
defineProperty("p_stat", globalPropertyf("tu154b2/custom/svs/p_s_smoothed"))
-- defineProperty("true_mach", globalPropertyf("sim/flightmodel/misc/machno"))
--defineProperty("temp", globalPropertyf("sim/weather/aircraft/temperature_ambient_deg_c"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control




local alt_kus_tbl = {{ -50000000, 0.5},    -- bugs workaround
				  { 0, 1 },    -- on standard pressure zero level
          		  {  2000, 1.0288 },
				  {  4000, 1.0571 },
				  {  6000, 1.0879 },
				  {  8000, 1.1205 },
				  {  10000, 1.1549 },
				  {  12000, 1.1901 },
				  {  14000, 1.2223 },
				  {  16000, 1.2558 },  
          		  {  18000, 1.2924 },   
          		  {  20000, 1.3341 },
				  {  22000, 1.3708 },
				  {  24000, 1.4154 },
				  {  26000, 1.4558 },
				  {  28000, 1.5005 },
				  {  30000, 1.5500 },
				  {  32000, 1.6039 },
				  {  34000, 1.6597 },
				  {  36000, 1.7164 },
				  {  38000, 1.7920 },
				  {  40000, 1.8762 },
				  {  42000, 1.9653 },
          		  {  10000000, 10 }}   -- linear above
				  
local var30_tbl = { 
{  -10000000, -180 },
{  -30, -180 },
{  -20, -150 }, 
{  -10, -85 },
{  10, 85 },
{  20, 150 },
{  30, 180 },
{ 10000000, 180 }} 


local var75_tbl = { 
{  -10000000, -180 },
{  -75, -180 },
{  -45, -135 }, 
{  -15, -45 },
{  15, 45 },
{  45, 135 },
{  75, 180 },
{ 10000000, 180 }} 

local err_tbl={{ -1000, -1000},
		      {2700, 2700},
		      {3600, 3620},
		      {4500, 4520},
		      {5400, 5420},
		      {6300, 6310},
		      {7200, 7210},
		      {8100, 8110},
		      {9200, 9200},
		      {10100, 10120},
		       {11200, 11150},
		       {11600, 11670},
		       {12100, 12160},
			   {20100, 20160}}
			   
local err_tbl_kus={
	{-200, -200},
	{200, 200},
	{230, 225},
   {260, 260},
   {280, 275},
   {300, 300},
   {320, 320},
   {350, 350},
   {360, 365},
   {400, 405},
   {420, 420},
   {450, 455},
   {500, 505},
   {550, 555},
   {600, 605},
   {2000, 2000}}

local err_tbl_us={
	{-200, -200},
	{200, 200},
	{230, 225},
    {260, 255},
    {280, 280},
    {300, 300},
    {320, 315},
    {350, 350},
    {360, 355},
    {400, 410},
    {420, 420},
    {450, 460},
    {500, 510},
    {550, 560},
    {600, 610},
	{ 2000, 2000}}

local kus_ias_act_L = 0
local kus_tas_act_L = 0

local ias_cpt_act = 0
local ias_copil_act = 0

local kus_ias_act_R = 0
local kus_tas_act_R = 0

local kus_ias_act_ENG = 0
local kus_tas_act_ENG = 0

local var75_act = 0
local var30_L_act = 0
local var30_R_act = 0
local var30_cabin_act = 0

local left_MSL = 0
local right_MSL = 0

function update()

local MASTER = get(ismaster) ~= 1
	
	local passed = get(frame_time)
	--local alt_QNE = get(msl_alt)   
	-- Barometric altitude formula
	local p_s=get(p_stat)
	local alt_QNE=288/0.0065*(1-math.pow(p_s/101325,0.0065*28.96))
	local temp=288-alt_QNE*6.5/1000
	if p_s< 22250 then
		alt_QNE=11000+28.96*216.6500*math.log(22250/p_s)
		temp=216.65
	end
	local alt_tas_coef = interpolate(alt_kus_tbl, alt_QNE)
	local airspeed_L = get(ias_L) * 1.852
	local airspeed_R = get(ias_R) * 1.852
	airspeed_L=interpolate(err_tbl_kus,airspeed_L)
	airspeed_R=interpolate(err_tbl_us,airspeed_R)
	local p_q_L=math.pow(airspeed_L/3.6,2)*1.225/2
	local p_q_R=math.pow(airspeed_R/3.6,2)*1.225/2
	local tas_L=math.sqrt(9.81*29.27*temp*2*1.4/(1.4-1) * (math.pow(math.max(0,p_q_L)/p_s+1,(1.4-1)/1.4)-1))*3.6
	local tas_R=math.sqrt(9.81*29.27*temp*2*1.4/(1.4-1) * (math.pow(math.max(0,p_q_R)/p_s+1,(1.4-1)/1.4)-1))*3.6
	--local blocked = get(sensors_caps) == 1
	
	-- KUS 750/1100 Captain
	-- IAS
	local cpt_speed_ang = 0
	if airspeed_L > 50 and airspeed_L < 750 then 
		cpt_speed_ang = (airspeed_L - 50) * 142.5 / 300 + 6
	elseif airspeed_L >= 750 then 
		cpt_speed_ang = 339
	end
	-- TAS
	--local tas_L = airspeed_L * alt_tas_coef
	local cpt_tas_ang = 0
	if tas_L >= 400 and tas_L < 1100 then
		cpt_tas_ang = (tas_L - 400) * 330 / 700 + 15
	elseif tas_L > 1100 then
		cpt_tas_ang = 345
	end
	
	-- smooth movements
	kus_ias_act_L = kus_ias_act_L + (cpt_speed_ang - kus_ias_act_L) * passed * 10
	kus_tas_act_L = kus_tas_act_L + (cpt_tas_ang - kus_tas_act_L) * passed * 10
	
	-- Captain's IAS
	airspeed_L=interpolate(err_tbl_us,get(ias_L) * 1.852)
	local cpt_IAS_ang = 0
	if airspeed_L > 150 and airspeed_L < 1000 then
		cpt_IAS_ang = (airspeed_L - 150) * 260 / 650 + 10
	elseif airspeed_L > 1000 then
		cpt_IAS_ang = 350
	end
	
	-- smooth movements
	ias_cpt_act = ias_cpt_act + (cpt_IAS_ang - ias_cpt_act) * passed * 10
	
	-- Co-Pilot IAS
	local copil_IAS_ang = 0
	if airspeed_R > 150 and airspeed_R < 1000 then
		copil_IAS_ang = (airspeed_R - 150) * 260 / 650 + 10
	elseif airspeed_R > 1000 then
		copil_IAS_ang = 350
	end
	
	-- smooth movements
	ias_copil_act = ias_copil_act + (copil_IAS_ang - ias_copil_act) * passed * 10	
	
	-- Co-Pilot KUS
	airspeed_R=interpolate(err_tbl_kus,get(ias_R) * 1.852)
	-- IAS
	local copil_speed_ang = 0
		if airspeed_R > 50 and airspeed_R < 750 then 
		copil_speed_ang = (airspeed_R - 50) * 142.5 / 300 + 6
	elseif airspeed_R >= 750 then 
		copil_speed_ang = 339
	end
	
	-- TAS
	--local tas_R = airspeed_R * alt_tas_coef
	local copil_tas_ang = 0
	if tas_R >= 400 and tas_R < 1100 then
		copil_tas_ang = (tas_R - 400) * 330 / 700 + 15
	elseif tas_L > 1100 then
		copil_tas_ang = 345
	end
	
	-- smeeth movements
	kus_ias_act_R = kus_ias_act_R + (copil_speed_ang - kus_ias_act_R) * passed * 10
	kus_tas_act_R = kus_tas_act_R + (copil_tas_ang - kus_tas_act_R) * passed * 10

	-- Engineer's KUS
	-- IAS
	local eng_speed_ang = 0
	if airspeed_R > 50 and airspeed_R < 750 then 
		eng_speed_ang = (airspeed_R - 50) * 142.5 / 300 + 6
	elseif airspeed_R >= 750 then 
		eng_speed_ang = 339
	end
	-- TAS
	local tas_ENG = airspeed_R * alt_tas_coef
	local eng_tas_ang = 0
	if tas_ENG >= 400 and tas_ENG < 1100 then
		eng_tas_ang = (tas_ENG - 400) * 330 / 700 + 15
	elseif tas_ENG > 1100 then
		eng_tas_ang = 345
	end
	
	-- smooth movements
	kus_ias_act_ENG = kus_ias_act_ENG + (eng_speed_ang - kus_ias_act_ENG) * passed * 10
	kus_tas_act_ENG = kus_tas_act_ENG + (eng_tas_ang - kus_tas_act_ENG) * passed * 10	

	local staticFail_left = get(static_fail_L) == 6
	local staticFail_right = get(static_fail_R) == 6
	--local msl =alt_QNE  -- real alt MSL in feet

	-- variometers
	local var=interpolate(var75_tbl, get(vvi_L) * 0.00508) * bool2int(not staticFail_left)
	local var_L=interpolate(var30_tbl, get(vvi_L) * 0.00508) * bool2int(not staticFail_left)
	local var_R=interpolate(var30_tbl, get(vvi_R) * 0.00508) * bool2int(not staticFail_right)
	local T=0
	if get(slow_vario)>0 then
		T=7
	end
	if passed~=0 then
		var75_act = passed/(T+passed)*(var) +var75_act*T/(T+passed)
		var30_L_act = passed/(T+passed)*(var_L) +var30_L_act*T/(T+passed)
		var30_R_act = passed/(T+passed)*(var_R) +var30_R_act*T/(T+passed)
		var30_cabin_act = var30_cabin_act + (interpolate(var30_tbl, get(vvi_cab) * 0.00508) - var30_cabin_act) * passed * 0.08
	end
	
	
	-- altimeters

	if not staticFail_left then
		left_MSL = alt_QNE -- update altitudes for left altimeters
	end
	
	if not staticFail_right then
		right_MSL = alt_QNE -- update altitudes for left altimeters
	end	
	
	-- Captain's altimeter VM15
	local cpt_VM15_press = get(vd15_pressure_left) * 0.0393701
	local cpt_VM15_alt = left_MSL  + (cpt_VM15_press - 29.92) * 1000 * 0.3048  -- calculate barometric altitude in meters
	cpt_VM15_alt=interpolate(err_tbl,cpt_VM15_alt)
	
	-- Co-Pilot's altimeter VM15
	local copt_VM15_press = get(vd15_pressure_right) * 0.0393701
	local copt_VM15_alt = right_MSL  + (copt_VM15_press - 29.92) * 1000 * 0.3048  -- calculate barometric altitude in meters
	copt_VM15_alt=interpolate(err_tbl,copt_VM15_alt)
	-- Engineer's altimeter VM15
	local eng_VM15_press = get(vd15_pressure_eng) * 0.0393701
	local eng_VM15_alt = right_MSL  + (eng_VM15_press - 29.92) * 1000 * 0.3048  -- calculate barometric altitude in meters
	eng_VM15_alt=interpolate(err_tbl,eng_VM15_alt)
	-- cabin altitude
	local cab_alt = get(actual_cabin_alt) * 0.3048 * 0.001 -- kilometers
	if cab_alt < -0.45 then cab_alt = -0.45
	elseif cab_alt > 5.05 then cab_alt = 5.05 end
	
	-- cabin pressure difference
	local press_diff = get(cabin_press_diff) * 0.0778  -- pressure in kg/cm2
	if press_diff < -0.03 then press_diff = -0.03
	elseif press_diff > 0.95 then press_diff = 0.95 end
	

if MASTER then 
	-- set results
	set(kus_ias_left, kus_ias_act_L)
	set(kus_tas_left, kus_tas_act_L)
	set(ias_left, ias_cpt_act)
	set(ias_right, ias_copil_act)
	set(kus_ias_right, kus_ias_act_R)
	set(kus_tas_right, kus_tas_act_R)
	
	set(kus_ias_eng, kus_ias_act_ENG)
	set(kus_tas_eng, kus_tas_act_ENG)
	set(var75, var75_act)
	set(var30_L, var30_L_act)
	set(var30_R, var30_R_act)
	set(vd15_alt_left, cpt_VM15_alt)
	set(vd15_alt_right, copt_VM15_alt)
	set(vd15_alt_eng, eng_VM15_alt)
	set(cabin_alt, cab_alt)
	
	set(cabin_diff, press_diff)
end
	--set(var30_cabin, var30_cabin_act)
	
	-- alts


end