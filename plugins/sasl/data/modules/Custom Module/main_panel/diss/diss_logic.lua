-- this is DISS logic

-- time
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- power

-- controls
defineProperty("diss_on", globalPropertyi("tu154b2/custom/switchers/ovhd/diss_on")) -- питание ДИСС
defineProperty("diss_mode_sw", globalPropertyi("tu154b2/custom/switchers/ovhd/diss_mode")) -- режим дисс. 0 - море, 1 - суша
defineProperty("nvu_calc_set", globalPropertyi("tu154b2/custom/switchers/ovhd/nvu_calc_set")) -- счисление. -1 - контроль ДИСС в полете, 0 - НВУ по СВС, 1 - НВУ по ДИСС


vel_x = globalPropertyf("sim/flightmodel/position/local_vx")
vel_y = globalPropertyf("sim/flightmodel/position/local_vy")
vel_z = globalPropertyf("sim/flightmodel/position/local_vz")
ac_x = globalPropertyf("sim/flightmodel/position/local_x")
ac_y = globalPropertyf("sim/flightmodel/position/local_y")
ac_z = globalPropertyf("sim/flightmodel/position/local_z")
agl = globalPropertyf("sim/flightmodel2/position/y_agl")

defineProperty("wave_amplitude", globalPropertyf("sim/weather/aircraft/wave_amplitude")) -- meters	Amplitude of waves in the water (height of waves)

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left"))
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))


defineProperty("diss_groundspeed", globalPropertyf("tu154b2/custom/nvu/diss_groundspeed")) -- путевая скорость по ДИСС
defineProperty("diss_slip_angle", globalPropertyf("tu154b2/custom/nvu/diss_slip_angle")) -- угол сноса по ДИСС

defineProperty("diss_mode", globalPropertyi("tu154b2/custom/nvu/diss_mode")) -- режим ДИСС. 0 - выкл, 1 - работа, 2 - память

defineProperty("diss_cc", globalPropertyf("tu154b2/custom/nvu/diss_cc")) -- потребление от ДИСС


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- failures
defineProperty("diss_fail", globalPropertyi("tu154b2/custom/failures/diss_fail")) --
defineProperty("nvu_power_on", globalPropertyi("tu154b2/custom/switchers/console/nvu_power_on"))
defineProperty("nvu_fail", globalPropertyi("tu154b2/custom/failures/nvu_fail"))

ac_pitch = globalPropertyf("sim/flightmodel2/position/true_theta")
ac_roll = globalPropertyf("sim/flightmodel2/position/true_phi")
psi_true = globalPropertyf("sim/flightmodel2/position/true_psi")


-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))


local g_spd = 0
local slip_angle = 0
local warmup_timer = 0
local mode_prev=0
local g_spd_prev=0
local wind_speed_prev=0
local wind_dir_prev=0
local slip_angle_prev=0
local B=90-64 -- Vertical doppler beam angle
local gamma=35 -- horizontal beam angle
local check_timer=0
local beam1_fail = false
local beam2_fail = false
local beam3_fail = false
local angle_1 = 0
local angle_2 = 0
local angle_3 = 0
local water1 = 0
local water2 = 0
local water3 = 0
-- local L1=0
-- local L2=0
-- local L3=0

-- local angle1=0
-- local angle2=0
-- local angle3=0
-- local v_1=0
-- local v_2=0
-- local v_3=0
-- local freq=8800000000



function beam_intersect(x,y,z,u,v,w)
		local d_max=math.abs(y/v)-- the maximum possible projected slant factor range for the current beam angle
		local x_new=x+u*d_max -- scale components to match maximum slant range
		--local y_new=y+v*d_max
		local z_new=z+w*d_max
		local L=math.sqrt(math.pow(u*d_max,2)+math.pow(w*d_max,2)) -- projected slant range
		local tgt_angle=0
		local L_gnd=0
		local delta_y=0
		local angle_gnd=0
		local d_add=d_max/30 -- slant range step
		local d_scan=d_max/3
		local water=0
		if L~=0 then
			tgt_angle=math.atan(y/L)*180/math.pi -- calculate beam-path projected angle (this is the angle that we are trying to match with terrain)
		end
		local prob, x_gnd, y_gnd, z_gnd, normalX, normalY, normalZ, velocityX, velocityY, velocityZ, Wet = sasl.probeTerrain(x_new, y, z_new) -- probe terraint at maximum slant range
		if x_gnd then
			water=Wet
			L_gnd=math.sqrt(math.pow(x_gnd-x,2)+math.pow(z_gnd-z,2))
			delta_y=y-y_gnd
			if L_gnd~=0 then
				angle_gnd=math.atan(delta_y/L_gnd)*180/math.pi
			end
		end
		-- if terrain-based angle is below the true angle due to elevation, move closer to the aircraft along the horizontally projected beam
		while angle_gnd<tgt_angle and L_gnd>0 and d_scan<d_max do
			d_scan=d_scan+d_add
			x_new=x+u*d_scan
			z_new=z+w*d_scan
			prob, x_gnd, y_gnd, z_gnd, normalX, normalY, normalZ, velocityX, velocityY, velocityZ, Wet = sasl.probeTerrain(x_new, y, z_new)
			if x_gnd then
				water=Wet
				L_gnd=math.sqrt(math.pow(x_gnd-x,2)+math.pow(z_gnd-z,2))
				if L_gnd~=0 then
					angle_gnd=math.atan(delta_y/L_gnd)*180/math.pi
				end
			end
		end
		local angle_gnd=0
		if normalX then
			angle_gnd=math.acos((-u*normalX+-v*normalY+-w*normalZ))*180/math.pi -- angle between beam and surface normal
		end
		return angle_gnd,water

end

-- function norm1000()
   -- local x 
   -- repeat
      -- x = math.ceil(math.log(1/math.random())^.5*math.cos(math.pi*math.random())*150+500)
   -- until x >= 1 and x <= 1000
   -- return x
-- end

function matrix_multiply(u,v,w,m11,m12,m13,m21,m22,m23,m31,m32,m33)
	local u_mat=u*m11+v*m12+w*m13
	local v_mat=u*m21+v*m22+w*m23
	local w_mat=u*m31+v*m32+w*m33
	return u_mat,v_mat,w_mat
end

function rotate_vector(u,v,w,phi,theta,psi)
	local u_rot1,v_rot1,w_rot1=matrix_multiply(u,v,w,math.cos(math.rad(phi)),-math.sin(math.rad(phi)),0,math.sin(math.rad(phi)),math.cos(math.rad(phi)),0,0,0,1)	
	local u_rot2,v_rot2,w_rot2=matrix_multiply(u_rot1,v_rot1,w_rot1,1,0,0,0,math.cos(math.rad(theta)),-math.sin(math.rad(theta)),0,math.sin(math.rad(theta)),math.cos(math.rad(theta)))
	local u_rot3,v_rot3,w_rot3=matrix_multiply(u_rot2,v_rot2,w_rot2,math.cos(math.rad(psi)),0,math.sin(math.rad(psi)),0,1,0,-math.sin(math.rad(psi)),0,math.cos(math.rad(psi)))
	return u_rot3,v_rot3,w_rot3
end
-- these are the three base radar beam direction vectors with zero pitch/roll/yaw
local beam1_1,beam1_2,beam1_3 = rotate_vector(0,0,-1,0,-(90-B),-gamma)
local beam2_1,beam2_2,beam2_3 = rotate_vector(0,0,-1,0,-(90-B),-(180-gamma))
local beam3_1,beam3_2,beam3_3 = rotate_vector(0,0,-1,0,-(90-B),-(180+gamma))

local beam1_1_rot,beam1_2_rot,beam1_3_rot = rotate_vector( beam1_1,beam1_2,beam1_2,0,0,0)
local beam2_1_rot,beam2_2_rot,beam2_3_rot = rotate_vector( beam2_1,beam2_2,beam2_2,0,0,0)
local beam3_1_rot,beam3_2_rot,beam3_3_rot = rotate_vector( beam3_1,beam3_2,beam3_2,0,0,0)


function update()
	local passed = get(frame_time)
	-- AC position
	local aircraft_x=get(ac_x)
	local aircraft_y=get(ac_y)
	local aircraft_z=get(ac_z)
	--AC attitude
	local pitch=get(ac_pitch)
	local roll=get(ac_roll)
	local yaw=get(psi_true)
	local elev=get(agl)
	-- Speeds
	local velx=get(vel_x)
	local vely=get(vel_y)
	local velz=get(vel_z)
	
	-- Beam angles rotated by AC roll/pitch/yaw
	beam1_1_rot,beam1_2_rot,beam1_3_rot = rotate_vector( beam1_1,beam1_2,beam1_3,-roll,pitch,-yaw)
	beam2_1_rot,beam2_2_rot,beam2_3_rot = rotate_vector( beam2_1,beam2_2,beam2_3,-roll,pitch,-yaw)
	beam3_1_rot,beam3_2_rot,beam3_3_rot = rotate_vector( beam3_1,beam3_2,beam3_3,-roll,pitch,-yaw)
	local water_sw=1-get(diss_mode_sw)
	-- Doppler shifts (expressed as velocities, no need to overcomplicate)
	local dopp_1=(beam1_1_rot*velx+beam1_2_rot*vely+beam1_3_rot*velz)*(1-0.05*water1+0.05*water_sw)
	local dopp_2=(beam2_1_rot*velx+beam2_2_rot*vely+beam2_3_rot*velz)*(1-0.05*water2+0.05*water_sw)
	local dopp_3=(beam3_1_rot*velx+beam3_2_rot*vely+beam3_3_rot*velz)*(1-0.05*water3+0.05*water_sw)
	check_timer=check_timer+passed
	if check_timer>0.3 then
		-- Check surface type and beam angle
		angle_1, water1= beam_intersect(aircraft_x,aircraft_y,aircraft_z,beam1_1_rot,beam1_2_rot,beam1_3_rot)
		angle_2, water2= beam_intersect(aircraft_x,aircraft_y,aircraft_z,beam2_1_rot,beam2_2_rot,beam2_3_rot)
		angle_3, water3= beam_intersect(aircraft_x,aircraft_y,aircraft_z,beam3_1_rot,beam3_2_rot,beam3_3_rot)
		-- Return signal fades at high angles or over calm water
		local speed = math.sqrt(math.pow(1/2*(dopp_2-dopp_1)/math.cos((90-B)*math.pi/180)/math.cos((gamma)*math.pi/180),2)+math.pow(1/2*(dopp_3-dopp_2)/math.cos((90-B)*math.pi/180)/math.sin((gamma)*math.pi/180),2))
		local wave=get(wave_amplitude)
		local wve_coef = 0.01*(5-4*water_sw)
		beam1_fail=angle_1>45.5-math.random(0,3*(1-wave)*water1) or math.abs(dopp_1)<15 or math.random(0,1+wve_coef*(1-wave)*water1) > 1 or speed<180/3.6  -- or (water1==1 and wave < 0.1 )
		beam2_fail=angle_2>45  -math.random(0,3*(1-wave)*water2) or math.abs(dopp_2)<15 or math.random(0,1+wve_coef*(1-wave)*water2) > 1 or speed<180/3.6  -- or (water2==1 and wave < 0.1 )
		beam3_fail=angle_3>44.5-math.random(0,3*(1-wave)*water3) or math.abs(dopp_3)<15 or math.random(0,1+wve_coef*(1-wave)*water3) > 1 or speed<180/3.6  -- or (water3==1 and wave < 0.1 )
		check_timer=0
	end
	-- set(db1,angle_1)
	-- set(db2,angle_2)
	-- set(db3,angle_3)
	-- set(db4,dopp_1)
	-- set(db5,dopp_2)
	-- set(db6,dopp_3)
	-- calculate DISS mode
	local power = get(diss_on) == 1 and get(bus27_volt_left) > 13 and get(bus36_volt_left) > 30 and get(bus115_1_volt) > 100
	set(diss_cc, bool2int(power))
	local fail = get(diss_fail) == 1
	local beam_fail = beam1_fail or beam2_fail or beam3_fail
    local warmup = warmup_timer > 180
    if power then
		if warmup_timer<300 then
			warmup_timer = warmup_timer + passed +math.random(0.01,0.1)
		end
    else
		if warmup_timer>0 then
			warmup_timer = warmup_timer - passed /5
		end
    end
	

	local mode = 0
	local nvu_mode = get(nvu_calc_set)
	if power and warmup and nvu_mode == -1 then
		mode = 3
	elseif power and warmup and beam_fail then
		mode = 2	
	elseif power and warmup then
		mode = 1
	-- elseif power and warmup and not fail and nvu_mode ~= -1 then 
		-- mode = 2
	elseif not power or fail then
		g_spd_prev=0
		slip_angle_prev=0
	end
	
	
	if mode == 1 then -- normal work
		-- GS and slip from doppler shifts 
		local Wz= 1/2*(dopp_2-dopp_1)/math.cos((90-B)*math.pi/180)/math.cos((gamma)*math.pi/180)
		local Wx= 1/2*(dopp_3-dopp_2)/math.cos((90-B)*math.pi/180)/math.sin((gamma)*math.pi/180)
		slip_angle=math.atan(Wx/Wz)*180/math.pi
		g_spd=math.sqrt(math.pow(Wz,2)+math.pow(Wx,2))
		g_spd_prev=g_spd

		slip_angle_prev=slip_angle	
	elseif mode == 2 then -- memory mode or fail
		g_spd=g_spd_prev
		slip_angle=slip_angle_prev
	elseif mode == 3 then -- test mode
		dopp_1=70
		dopp_2=-70.2
		dopp_3=-69.8
		local Wz= 1/2*(dopp_2-dopp_1)/math.cos((90-B)*math.pi/180)/math.cos((gamma)*math.pi/180)
		local Wx= 1/2*(dopp_3-dopp_2)/math.cos((90-B)*math.pi/180)/math.sin((gamma)*math.pi/180)
		slip_angle=math.atan(Wx/Wz)*180/math.pi
		g_spd=math.sqrt(math.pow(Wz,2)+math.pow(Wx,2))
		g_spd_prev=g_spd
		slip_angle_prev=slip_angle
	-- elseif mode == 10 then -- fail
		-- g_spd = 0
		-- slip_angle = 0
		-- --diss_wind_speed = 0
		-- --diss_wind_dir = 0	
	end
	mode_prev=mode
	
	
	
local MASTER = get(ismaster) ~= 1

if MASTER then
	--if get(nvu_calc_set)~=0 then
	set(diss_slip_angle, slip_angle)
	--end
	set(diss_groundspeed, g_spd * 3.6)
	-- local nvu_power = get(nvu_power_on) == 1 and get(bus27_volt_left) > 13 and get(bus36_volt_left) > 30 and get(bus115_1_volt) > 100 and get(nvu_fail)==0
	-- -- set results
	-- if nvu_power then
		-- set(diss_wind_course, wind_dir_act + acf_course)
		-- set(diss_wind_spd, wind_spd_act * 3.6)
	-- end
	
	set(diss_mode, mode)
	
end	
	

end