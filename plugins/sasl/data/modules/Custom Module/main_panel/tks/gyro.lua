-- this is the simple logic of relative gyroscope, used for compases

-- define property table
-- source
defineProperty("true_psi", globalPropertyf("sim/flightmodel/position/psi")) -- real course
defineProperty("mag_psi", globalPropertyf("sim/flightmodel2/position/mag_psi")) -- mag course

defineProperty("course_mk", globalPropertyf("tu154b2/custom/tks/course_mk_1")) -- курс на MK5

defineProperty("cur", globalPropertyf("sim/cockpit/gyros/psi_ind_degm4")) --

defineProperty("roll", globalPropertyf("sim/flightmodel/position/phi")) --
defineProperty("pitch", globalPropertyf("sim/flightmodel/position/true_theta")) --

defineProperty("latitude", globalPropertyd("sim/flightmodel/position/latitude")) -- real latitude position
defineProperty("longitude", globalPropertyd("sim/flightmodel/position/longitude")) -- The longitude of the aircraft

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time


-- controls
defineProperty("tks_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode")) -- режим ТКС 0 - МК, 1 - ГПК, 2 - АК
defineProperty("tks_user", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode_left")) -- потребители 0 - контр, 1 - осн
defineProperty("tks_source", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_mode_right")) --  коррекция 0 - контр, 1 - осн
defineProperty("tks_course_set", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_course_set")) -- задатчик курса
defineProperty("tks_corrr_button", globalPropertyi("tu154b2/custom/buttons/ovhd/tks_corrr_button")) -- кнопка согласования
defineProperty("tks_lat_set", globalPropertyf("tu154b2/custom/rotary/ovhd/tks_lat_set")) -- ручка установки широты

defineProperty("tks_on_1", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_on_1")) -- выключатель ТКС 
defineProperty("tks_on_2", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_on_2")) -- выключатель ТКС 
defineProperty("tks_heat", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_heat")) -- обогрев ГА
defineProperty("tks_corr_1", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_corr_1")) -- коррекция БГМК 2
defineProperty("tks_corr_2", globalPropertyi("tu154b2/custom/switchers/ovhd/tks_corr_2")) -- коррекция БГМК 2

defineProperty("stabil_ga_main", globalPropertyi("tu154b2/custom/switchers/ovhd/stabil_ga_main")) -- стабилизация ГА по крену осн
defineProperty("stabil_ga_reserv", globalPropertyi("tu154b2/custom/switchers/ovhd/stabil_ga_reserv")) -- стабилизация ГА резерв


-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))

defineProperty("bus36_volt_left", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36в лев
defineProperty("bus36_volt_right", globalPropertyf("tu154b2/custom/elec/bus36_volt_right")) -- напряжение сети 36в прав
defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1")) -- напряжение сети 36 ПТС 1
defineProperty("bus36_volt_pts250_2", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_2")) -- напряжение сети 36 ПТС 2



-- fail
defineProperty("fail_1", globalPropertyf("sim/operation/failures/rel_ss_dgy"))
defineProperty("fail_2", globalPropertyf("sim/operation/failures/rel_cop_dgy"))

-- result
defineProperty("course_ga_1", globalPropertyf("tu154b2/custom/tks/course_ga_1")) -- курс на ГА1
defineProperty("course_ga_2", globalPropertyf("tu154b2/custom/tks/course_ga_2")) -- курс на ГА2
defineProperty("fail_left", globalPropertyi("tu154b2/custom/tks/fail_left")) -- флаг отказа
defineProperty("fail_right", globalPropertyi("tu154b2/custom/tks/fail_right")) -- флаг отказа

defineProperty("ga_1_cc", globalPropertyf("tu154b2/custom/tks/ga_1_cc")) -- потребление тока
defineProperty("ga_2_cc", globalPropertyf("tu154b2/custom/tks/ga_2_cc")) -- потребление тока
defineProperty("tks_cc", globalPropertyf("tu154b2/custom/tks/tks_cc"))
defineProperty("ga_heat_cc", globalPropertyf("tu154b2/custom/tks/ga_heat_cc")) -- потребление тока
defineProperty("yaw_rate", globalPropertyf("sim/flightmodel/position/R"))
defineProperty("vk90", globalPropertyi("tu154b2/custom/tks/vk90"))
defineProperty("mgv2_roll", globalPropertyf("tu154b2/custom/bkk/pkp_roll_right"))
defineProperty("mgv3_roll", globalPropertyf("tu154b2/custom/gyro/mgv_contr_roll"))
defineProperty("ac_roll", globalPropertyf("sim/flightmodel/position/true_phi"))
defineProperty("tks_unblock", globalPropertyi("tu154b2/custom/buttons/ovhd/tks_signal_off"))
defineProperty("cockpit_temp", globalPropertyf("tu154b2/custom/bleed/cockpit_temp"))
defineProperty("pitch_rate", globalPropertyf("sim/flightmodel/position/Q"))
defineProperty("ac_pitch", globalPropertyf("sim/flightmodel/position/theta"))
defineProperty("g_axil", globalPropertyf("sim/flightmodel/forces/g_axil"))
defineProperty("g_nrml", globalPropertyf("sim/flightmodel/forces/g_nrml"))
defineProperty("g_side", globalPropertyf("sim/flightmodel/forces/g_side"))
defineProperty("oat", globalPropertyf("sim/weather/aircraft/temperature_ambient_deg_c"))
defineProperty("flux_err", globalPropertyf("tu154b2/custom/tks/flux_initial_err"))
defineProperty("flux_err_dist", globalPropertyf("tu154b2/custom/tks/flux_initial_dist"))
defineProperty("pushback", globalPropertyi("bp/connected"))
defineProperty("tilt_1", globalPropertyi("tu154b2/custom/tks/ga1_tilt"))
defineProperty("tilt_2", globalPropertyi("tu154b2/custom/tks/ga2_tilt"))
defineProperty("efb_mag", globalPropertyf("tu154b2/custom/tks/efb_mag"))
-- defineProperty("blok_1", globalPropertyi("tu154b2/custom/tks/block_1"))
-- defineProperty("blok_2", globalPropertyi("tu154b2/custom/tks/block_2"))
-- engines
defineProperty("eng1_N1", globalProperty("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("chok", globalProperty("sim/flightmodel2/gear/is_chocked[1]"))



-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))


local passed = 0

local counter_1 = 0
local counter_2 = 0

local cur_last_1 = get(true_psi)
local cur_last_2 = get(true_psi)

local rotation = 0

local lat_last_1 = get(latitude)
local lon_last_1 = get(longitude)

local lat_last_2 = get(latitude)
local lon_last_2 = get(longitude)
local notLoaded = true
local start_timer = 0
-- correction interruptor
local vk_timout=15-- how long the max rate of 0.15°/s must be exceeded for the interruption to trigger 
local vk_timer=0 
-- paltform stab
local stab_1=0
local stab_2=0
-- gyro moment, rpm and other stuff
local I=8.6/1000
local rpm_1=0
local angle_1=math.min(45,90*math.random()) -- the angle of gyro no.1 in the horizontal gimbal
local angle_1_prev=angle_1
local block_1=0
local fail_arm_1=0
local rpm_1_prev=rpm_1
local block_1_prev=0
local fail_arm_1_prev=0
local temp_1_prev=get(oat)
local heat_1_prev=0
local ga_1_angle= math.random()*360
local ga_1_corr=0 
local ga_1_heading=ga_1_angle
local ga_1_prec=0
local true_psi_prev=get(true_psi)
-- gyro 2
local rpm_2=0
local angle_2=math.min(45,90*math.random()) -- the angle of gyro no.2 in the horizontal gimbal
local angle_2_prev=angle_2
local block_2=0
local fail_arm_2=0
local rpm_2_prev=rpm_2
local block_2_prev=0
local fail_arm_2_prev=0
local temp_2_prev=get(oat)
local heat_2_prev=0
local ga_2_angle= math.random()*360
local ga_2_corr=0 
local ga_2_heading=ga_2_angle
local ga_2_prec=0

-- Gyro cog offset coordinates in polar 
local rc_1=0.0000012
local phi_c_1=75
local rc_2=0.0000014
local phi_c_2=85
-- Initial error for KM-5 due to metal stuff on the apron, reduces to zero as the airplane moves from it's parking spot
local stand_err=math.random()*3-1 
local stand_err_dist=math.random()*200+500



function ga3 (pwr,rpm_prev,a_prev,fail,block,fail_arm,heat_pwr,temp_out,temp_prev,heat_prev,dt)
	local rpm_fail_th=2500-- % rpm threshold for failure detection
	local a_fail_th=2-- % gyro tilt angle threshold for failure detection
	local I_lit=8.6/1000
	local rpm_max=22000-- %target gyro rpm
	local a_max=45-- %Maximum horizontal angle
	local c_corr=0.2-- % Horizontal correction coeff 
	local M_fric=0.00075-- % Gimbal friction moment during runout
	local M_mot=0.65-- %Gyro motor torque
	local M_gimb=3-- %Horizontal stab motor peak-torque
	local f_bear=math.max(0.00125,-1.5e-05*temp_prev+0.00155)-- % Gyr bearing friction
	local torq=math.min(rpm_max-rpm_prev,M_mot/I_lit)*pwr*(1-block)-- Gyro motor torque
	local amp=(5+2.7*(torq-27)/48)*pwr
    local rpm=rpm_prev-rpm_prev*f_bear*dt+torq*dt
	local a=a_prev
    if rpm>rpm_max then
        rpm=rpm_max
    end
    if rpm>20000 then
        fail_arm=1
    end
    local L=I_lit*math.max(rpm,100)/60*2*math.pi
    local w_p=M_fric/L*180/math.pi--% Precession speed during runout
	if pwr>0 and block==0 and math.abs(a_prev)>0.001 then	
		a=a-math.min(a*c_corr,M_gimb)*dt
	elseif (pwr==0 or block>0) and rpm>500 then
		a=a_prev+w_p*dt
	end	
    if a>a_max then
        a=a_max
	elseif a<-a_max then
        a=-a_max
    end
    if fail_arm==1 and a>a_fail_th and pwr>0 then
        block=1
        fail_arm=0
    elseif rpm<rpm_fail_th and fail_arm==0 and block>0 then
        block=0
    end
	-- heat
	local temp=temp_prev+(-(temp_prev-temp_out)*0.005+1*heat_prev*heat_pwr)*0.035*dt
    if temp<10 then
        heat=1
    elseif temp>10+15 then
        heat=0
    else
        heat=heat_prev
    end
	return rpm,a,block,fail_arm,temp,heat,amp
end
-- precession as function of acceleration forces and a slight misalignment between gyro cog and gyro gimbal axes center
function ga_precession (rpm,gyro_psi,a_side,a_fwd,a_nrml,rc,phi_c,temp,gyro_angle_speed)
	rc=rc*(1+(20-temp)/200) -- distance from gimbal axis to gyro center of gravity, changes with temperature
	local I=8.6/1000--Moment of Inertia from literature
	local L=I*math.max(rpm,100)/60*2*math.pi
	local m_rot=8.8 -- rotor mass
	local F_side=m_rot*a_side -- forces
	local F_acc=m_rot*a_fwd
	-- Moments
	local M_side=F_side*math.cos(gyro_psi*math.pi/180)*rc
    local M_fwd=F_acc*math.sin((gyro_psi+phi_c)*math.pi/180)*rc
	a_nrml=a_nrml-9.81
	local M_nrm=a_nrml*m_rot*rc*math.cos(phi_c*math.pi/180)
	-- precession speeds
    local w_p=(M_side+M_fwd)/L*180/math.pi -- precession from maneuvering
    local w_p_g=M_nrm/L*180/math.pi -- precession from normal force (base gravitation is not considered since XP-provided yaw rate is non-zero even at stand-still but below maximum gyro base drift of 0.5°/h)
	local w_p_a=1/9*L*gyro_angle_speed -- Precession from horizonal stabilization
	local w_tot=w_p+w_p_g+w_p_a
	return w_tot
end


-- postframe calculations
function update()
	
	local MASTER = get(ismaster) ~= 1
	
	-- time calculations
	passed = get(frame_time)
	
	start_timer = start_timer + passed
	
	if notLoaded and start_timer > 0.3 then
		if MASTER then 
			if get(eng1_N1)>20 then 
				angle_1=0
				angle_1_prev=0
				rpm_1=22000
				rpm_1_prev=rpm_1
				temp_1_prev=25
				ga_1_corr=ga_1_angle-get(mag_psi)
				angle_2=0
				angle_2_prev=0
				rpm_2=22000
				rpm_2_prev=rpm_2
				temp_2_prev=25
				ga_2_corr=ga_2_angle-get(mag_psi)
			else
				local course_1 = get(mag_psi) -- start value of curse
				if course_1>180 then
					course_1=course_1-360
				end
				set(course_ga_1, course_1+math.random()*2-1)
				set(course_ga_2, course_1+math.random()*2-1)
				-- ga_1_corr=ga_1_angle-get(mag_psi)+math.random(-40,40)
				-- ga_2_corr=ga_2_angle-get(mag_psi)+math.random(-40,40)
			end
		end
		set(flux_err,stand_err)
		set(flux_err_dist,stand_err_dist)
		notLoaded = false
	end	
	if get(eng1_N1)<20 and get(chok)>0 then -- write mag heading to efb on stand
		set(efb_mag,get(mag_psi))
	end
	-- calculate power
	local power_1 = bool2int(get(bus27_volt_left) > 13 and get(bus36_volt_pts250_2) > 30 and get(tks_on_1) == 1 and get(fail_1) < 6)
	local power_2 = bool2int(get(bus27_volt_left) > 13 and get(bus36_volt_right) > 30 and get(tks_on_2) == 1 and get(fail_2) < 6)
	
	local heat_work = bool2int(get(bus27_volt_left) > 13) * get(tks_heat)
	
	set(ga_heat_cc, 12.5 * (heat_1_prev+heat_2_prev)*heat_work) -- подогрев ГА
	set(tks_cc,4*(power_1+power_2))
	local source = get(tks_source)
	local corr_but = get(tks_corrr_button)
	
	local mode = get(tks_mode)
	
	local corr_turn = get(tks_course_set)
	
	local lat_set = get(tks_lat_set)
	local lat_now = get(latitude)
	local R=get(yaw_rate)
	-- interruptor delay (half the timeout value)
	if math.abs(R)>0.15 then
		vk_timer=vk_timer+passed
		if vk_timer> vk_timout then
			vk_timer=vk_timout
		end
	elseif math.abs(R)<0.15 and vk_timer>0 then
		vk_timer=vk_timer-passed
		if vk_timer<0 then
			vk_timer=0
		end
	end
	local vk=bool2int(vk_timer<vk_timout/2)

	
	--------------------- Gyro 1--------------------------
	--rpm and temp
	local temp_out=get(cockpit_temp)/2+get(oat)/2 -- temperature in avionics bay approximated as mean between cockpit and outside air temp
	local rpm_1,angle_1,block_1,fail_arm_1,temp_1,heat_1,amp_1 = ga3 (power_1,rpm_1_prev,angle_1_prev,0,block_1_prev,fail_arm_1_prev,heat_work,temp_out,temp_1_prev,heat_1_prev,passed)
	local angle_speed_1=0
	if passed~=0 then
		angle_speed_1=(angle_1-angle_1_prev)/passed
	end
	rpm_1_prev=rpm_1
	angle_1_prev=angle_1
	if get(tks_unblock)>0 then
		block_1=0
	end
	block_1_prev=block_1
	fail_arm_1_prev=fail_arm_1
	temp_1_prev=temp_1
	heat_1_prev=heat_1
	-- Gyro rotation from aircraft movement
	local Q=get(pitch_rate)
	local thet=get(ac_pitch)
	local phi=get(ac_roll)
	local head_rate_ga=0
	local true_head=get(true_psi)
	if passed~=0 and get(pushback)==1 then
		local R_true=(true_head-true_psi_prev)/passed
		R=R_true
	end
	true_psi_prev=true_head
	if thet~=90 and thet~=-90 then
		head_rate_ga=(R*math.cos(phi*math.pi/180)+Q*math.sin(phi*math.pi/180))/math.cos(thet*math.pi/180)
	end
	-- Gyro rotation from precession and earth's rotation
	local w_earth = 360 * math.sin(math.rad(lat_now)) / 86164 -- one astronomic day eq 86164 seconds
	local a_side=math.cos(phi*math.pi/180)*get(g_side)*9.81+math.sin(phi*math.pi/180)*get(g_nrml)*9.81 --accelerations
	local a_fwd=math.cos(thet*math.pi/180)*get(g_axil)*9.81+math.sin(thet*math.pi/180)*get(g_nrml)*9.81
	local a_nrm=math.cos(phi*math.pi/180)*get(g_nrml)*9.81
	local w_p_1=0
	if passed~=0 then
		w_p_1 = ga_precession (rpm_1,ga_1_angle,a_side,a_fwd,a_nrm,rc_1,phi_c_1,temp_1,angle_speed_1)
		ga_1_prec=ga_1_prec+w_p_1*passed
	end
	ga_1_angle=ga_1_angle+head_rate_ga*passed*(0.9+0.1*rpm_1/22000)+(w_p_1-w_earth)*passed
	if ga_1_angle<0 then
		ga_1_angle=360+ga_1_angle
	elseif ga_1_angle>360 then
		ga_1_angle=ga_1_angle-360
	end
	-- Gimbal error
	stab_1=stab_1-(stab_1-get(stabil_ga_main))*passed/7
	local roll_1=phi-get(mgv3_roll)*stab_1--gimbal stabilized?
	local ga_1_gimb_angle=math.atan(math.tan(ga_1_angle*math.pi/180)/math.cos(roll_1*math.pi/180))
	ga_1_gimb_angle=ga_1_gimb_angle*180/math.pi
	if ga_1_angle>270 then
		ga_1_gimb_angle=ga_1_gimb_angle+360
	elseif ga_1_angle>90 then
		ga_1_gimb_angle=ga_1_gimb_angle+180
	end
	-- magnetic heading and earth rot. correction
	local km_mag=get(course_mk) -- mag heading from KM
	if km_mag<0 then
		km_mag=km_mag+360
	end
	local corr_speed_max=(0.1+3*get(tks_corrr_button))*vk
	local corr_speed = 0
	local corr_dir=-1
	if source==1 then
		if mode==0 then --MK mode
			if ((km_mag-ga_1_heading>180 or km_mag-ga_1_heading<-180) and ga_1_heading<km_mag) or (((km_mag-ga_1_heading<180 and km_mag-ga_1_heading>=0)  or km_mag-ga_1_heading>-180) and ga_1_heading>km_mag) then
				corr_dir=1
			end
			corr_speed=corr_dir*math.min(math.abs(ga_1_heading-km_mag)*corr_speed_max,corr_speed_max)*passed
			-- if corr_speed>corr_speed_max*passed then
				-- corr_speed=corr_speed_max*passed
			-- elseif corr_speed<-corr_speed_max*passed then
				-- corr_speed=-corr_speed_max*passed
			-- end
			--set(db5,corr_dir)
		elseif mode==1 then --GPK mode
			corr_speed=-corr_turn*passed
		end
	end
	local earth_rot_corr = 360 * math.sin(math.rad(get(lat_set)))/ 86164 -- earth rot correction
	ga_1_corr=ga_1_corr+corr_speed-earth_rot_corr*passed -- total correction
	-- Resulting GA heading
	ga_1_heading=ga_1_gimb_angle-ga_1_corr
	if ga_1_heading<0 then
		ga_1_heading=360+ga_1_heading
	elseif ga_1_heading>360 then
		ga_1_heading=ga_1_heading-360
	end
	local ga_1_heading_ind=ga_1_heading
	if ga_1_heading_ind > 180 and ga_1_heading_ind < 360 then 
		ga_1_heading_ind = ga_1_heading_ind - 360
	end
	
	--------------------- Gyro 2--------------------------
	--rpm and temp
	local rpm_2,angle_2,block_2,fail_arm_2,temp_2,heat_2,amp_2 = ga3 (power_2,rpm_2_prev,angle_2_prev,0,block_2_prev,fail_arm_2_prev,heat_work,temp_out,temp_2_prev,heat_2_prev,passed)
	local angle_speed_2=0
	if passed~=0 then
		angle_speed_2=(angle_2-angle_2_prev)/passed
	end
	rpm_2_prev=rpm_2
	angle_2_prev=angle_2
	if get(tks_unblock)>0 then
		block_2=0
	end
	block_2_prev=block_2
	fail_arm_2_prev=fail_arm_2
	temp_2_prev=temp_2
	heat_2_prev=heat_2
	-- Gyro rotation from precession and earth's rotation
	local w_p_2=0
	if passed~=0 then
		w_p_2 = ga_precession (rpm_2,ga_2_angle,a_side,a_fwd,a_nrm,rc_2,phi_c_2,temp_2,angle_speed_2)
		ga_2_prec=ga_2_prec+w_p_2*passed
	end
	ga_2_angle=ga_2_angle+head_rate_ga*passed*(0.9+0.1*rpm_2/22000)+(w_p_2-w_earth)*passed
	if ga_2_angle<0 then
		ga_2_angle=360+ga_2_angle
	elseif ga_2_angle>360 then
		ga_2_angle=ga_2_angle-360
	end
	-- Gimbal error
	stab_2=stab_2-(stab_2-get(stabil_ga_reserv))*passed/7
	local roll_2=phi-get(mgv2_roll)*stab_2
	local ga_2_gimb_angle=math.atan(math.tan(ga_2_angle*math.pi/180)/math.cos(roll_2*math.pi/180))

	ga_2_gimb_angle=ga_2_gimb_angle*180/math.pi
	if ga_2_angle>270 then
		ga_2_gimb_angle=ga_2_gimb_angle+360
	elseif ga_2_angle>90 then
		ga_2_gimb_angle=ga_2_gimb_angle+180
	end
	-- magnetic heading and earth rot. correction
	if km_mag<0 then
		km_mag=km_mag+360
	end
	--local corr_speed_max=(0.1+10*get(tks_corrr_button))*vk
	corr_speed = 0
    corr_dir=-1
	if source==0 then
		if mode==0 then --MK mode
			if ((km_mag-ga_2_heading>180 or km_mag-ga_2_heading<-180) and ga_2_heading<km_mag) or (((km_mag-ga_2_heading<180 and km_mag-ga_2_heading>=0)  or km_mag-ga_2_heading>-180) and ga_2_heading>km_mag) then
				corr_dir=1
			end
			corr_speed=corr_dir*math.min(math.abs(ga_2_heading-km_mag)*corr_speed_max,corr_speed_max)*passed
		elseif mode==1 then --GPK mode
			corr_speed=-corr_turn*passed
		end
	end
	ga_2_corr=ga_2_corr+corr_speed-earth_rot_corr*passed -- total correction
	-- Resulting GA heading
	ga_2_heading=ga_2_gimb_angle-ga_2_corr
	if ga_2_heading<0 then
		ga_2_heading=360+ga_2_heading
	elseif ga_2_heading>360 then
		ga_2_heading=ga_2_heading-360
	end
	local ga_2_heading_ind=ga_2_heading
	if ga_2_heading_ind > 180 and ga_2_heading_ind < 360 then 
		ga_2_heading_ind = ga_2_heading_ind - 360
	end
	
	
	-- set(db1,ga_1_prec)
	-- set(db2,ga_2_prec)
	-- set(db3,rpm_1)
	-- set(db4,angle_1)
	-- set(db5,rpm_2)
	-- set(db6,angle_2)
	if MASTER then	
		if power_1>0 and not notLoaded then
			set(course_ga_1,ga_1_heading_ind)
		end
		if power_2>0 and not notLoaded then
			set(course_ga_2,ga_2_heading_ind)
		end
		-- set(blok_1,block_1)
		-- set(blok_2,block_2)
		set(vk90,vk)
		if math.abs(angle_1)>43 then
			set(tilt_1,1)
		else 
			set(tilt_1,0)
		end
		if math.abs(angle_2)>43 then
			set(tilt_2,1)
		else 
			set(tilt_2,0)
		end
		-- set fail flags
		set(fail_left, bool2int(power_1==0 or block_1==1))
		set(fail_right, bool2int(power_2==0 or block_2==1))
	end	
		set(ga_1_cc, amp_1)
		set(ga_2_cc, amp_2)
		

end

function onAirportLoaded ( flightNumber )
	if flightNumber > 1 then
		if get(eng1_N1)>20 then 
			ga_1_corr=ga_1_angle-get(mag_psi)
			ga_2_corr=ga_2_angle-get(mag_psi)
		end
	end
end

