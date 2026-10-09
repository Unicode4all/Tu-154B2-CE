-- this is magnetic correction gauge KM-5

-- source
mag_psi = globalPropertyf("sim/flightmodel/position/mag_psi") -- mag course
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

-- power
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36

-- failures
defineProperty("fail", globalPropertyf("tu154b2/custom/failures/tks_km1_fail")) -- отказ

-- controls
defineProperty("km5_knob", globalPropertyf("tu154b2/custom/gauges/eng/km5_knob_1")) -- крутилка на КМ5


-- results
defineProperty("km5_scale", globalPropertyf("tu154b2/custom/gauges/eng/km5_scale_1")) -- поворот шкалы на КМ5
defineProperty("km5_needle", globalPropertyf("tu154b2/custom/gauges/eng/km5_needle_1")) -- стрелка КМ5

defineProperty("course_mk", globalPropertyf("tu154b2/custom/tks/course_mk_1")) -- курс на MK5

defineProperty("km5_cc", globalPropertyf("tu154b2/custom/tks/km5_1_cc")) -- потребление тока КМ5
ac_roll = globalPropertyf("sim/flightmodel/position/true_phi")
ac_pitch = globalPropertyf("sim/flightmodel/position/theta")
latitude = globalPropertyd("sim/flightmodel/position/latitude")
g_axil = globalPropertyf("sim/flightmodel/forces/g_axil") 
g_nrml = globalPropertyf("sim/flightmodel/forces/g_nrml")
ahrs_head = globalPropertyf("sim/cockpit/gyros/psi_ind_ahars_pilot_degm")
flux_diff = globalProperty("sim/cockpit/gyros/gyr_magnetometer_diff[0]")
groundspeed = globalPropertyf("sim/flightmodel2/position/groundspeed")
slat_heat = globalPropertyf("sim/cockpit2/ice/ice_surfce_heat_on")
defineProperty("flux_err", globalPropertyf("tu154b2/custom/tks/flux_initial_err"))
defineProperty("flux_err_dist", globalPropertyf("tu154b2/custom/tks/flux_initial_dist"))

-- Smart Copilot
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("scp/api/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control
defineProperty("tks_on", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_on_1")) -- выключатель ТКС 
roll_a = globalPropertyf("sim/flightmodel/position/P_dot")
defineProperty("roll_factor", 1)

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))

local roll_a_amp = 0
local mag_course = 0
local notLoaded = true
local start_timer=0
local damp_timer=0
local needle_act = 0
--set(km5_needle, needle_act)

local course = 0

local cur_dev_sign = math.random(0, 1) * 2 - 1
local cur_dev_act = 0
local rand_err=0
local stand_err=0 -- error due to metal stuff on the apron, reduces to zero as the airplane moves from it's parking spot
local stand_err_c=1
local stand_err_dist=1
function update()
	local passed = get(frame_time) 
	start_timer = start_timer + passed
	damp_timer = damp_timer + passed
	local MASTER = get(ismaster) ~= 1	
	if notLoaded and start_timer > 0.4 then
		if MASTER then 
			local mag_course = get(mag_psi)
			if mag_course>180 then
				mag_course=mag_course-360
			end
			needle_act = mag_course+math.random(-1, 1)
			set(km5_needle, needle_act)
			rand_err=get(flux_diff)
		end
		notLoaded = false
	end	
	local true_mag=get(mag_psi)
	local tilt=math.sqrt(math.pow(get(ac_roll),2)+math.pow(get(ac_pitch),2))
	-- tilting error
	if tilt<15 and tilt>-15 then
		tilt=0
	elseif tilt>15 then
		tilt=tilt-15
	elseif tilt <-15 then
		tilt=tilt+15	
	end
	local lat=get(latitude)
	local tilt_err=tilt*(0.5+math.abs(lat)/90*2)*math.cos(math.rad(true_mag))
	-- acceleration error
	local acc_err=(get(g_axil)+math.sin(math.rad(get(ac_pitch)))*get(g_nrml))*50
	-- random error (well not really random)
	if math.abs(get(ac_roll))<1 then
		rand_err=get(flux_diff)
	end
	-- Apron equipment error
	if stand_err_dist==1 then
		stand_err_dist=get(flux_err_dist)
		stand_err=get(flux_err)
	end
	if stand_err_c>0 then
		stand_err_c=stand_err_c-get(groundspeed)*passed/stand_err_dist
	end
	-- flux gate heading
	local roll_err = roll_a_amp * math.sin(2*start_timer) * math.exp(-damp_timer)
	if math.abs(get(roll_a)) > 5 then
		damp_timer = 0
		roll_a_amp = math.random(1,2) * get(roll_a)
	end
	local id_head = true_mag + tilt_err + acc_err + rand_err + stand_err * stand_err_c + 5 * get(slat_heat) + roll_err
	if id_head>360 then
		id_head=id_head-360
	elseif id_head<0 then
		id_head=id_head+360
	end
	-- set(db1,id_head)
	-- set(db2,rand_err)
	-- set(db3,stand_err*stand_err_c)
	-- set(db4,tilt_err)
	-- set(db5,acc_err)
	local power = get(bus36_volt) > 30 and get(bus27_volt) > 13 and get(fail) == 0 and get(tks_on)==1
	
	
	-- knob
	local knob = get(km5_knob)
	
	while knob > 180 do
		knob = knob - 360
	end
	
	while knob < -180 do
		knob = knob + 360
	end
	
	-- rotate scale
	if MASTER then set(km5_scale, knob) end
	
	needle_act = get(km5_needle)
	
if MASTER then	
	-- mag course
	if power then
		mag_course = id_head
		--cur_dev_act = cur_dev_act + (cur_dev_sign * (get(gforce_fwd) + get(gforce_side)) * 20 - cur_dev_act) * passed * 0.5
		
		if mag_course > 180 then mag_course = mag_course - 360 
		elseif mag_course < -180 then mag_course = mag_course + 360	end
		
		local cur_dif = mag_course - needle_act
		if cur_dif > 180 then cur_dif = cur_dif - 360
		elseif cur_dif < -180 then cur_dif = cur_dif + 360 end
		
		if cur_dif > 1 then needle_act = needle_act + passed * 20 
		elseif cur_dif < -1 then needle_act = needle_act - passed * 20 
		else needle_act = needle_act + cur_dif * passed * 10
		end
		
	end

	set(km5_needle, needle_act)

end
	
	-- set result mag course
	if power then
		course = needle_act - knob
	end
	
	if course > 180 then course = course - 360
	elseif course < -180 then course = course + 360 end
	
	set(course_mk, course)
	set(km5_cc, bool2int(power))
	
	
end

