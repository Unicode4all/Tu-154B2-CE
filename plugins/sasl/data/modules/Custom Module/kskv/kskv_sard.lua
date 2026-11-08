-- this is pressure control logic

-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

-- internal
air_usage_L = globalPropertyf("tu154b2/custom/bleed/air_usage_L") -- расход воздуха лев
air_usage_R = globalPropertyf("tu154b2/custom/bleed/air_usage_R") -- расход воздуха прав

bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left")
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right")

bus115_1_volt = globalPropertyf("tu154b2/custom/elec/bus115_1_volt")
sard_panel_lit = globalPropertyf("tu154b2/custom/lights/sard_panel_lit") -- светимость панели САРД

start_sys_work = globalPropertyf("tu154b2/custom/start/start_sys_work") -- работа системы запуска

-- controls
sard_cabin_press_set = globalPropertyf("tu154b2/custom/switchers/sard/sard_cabin_press_set_osn") -- установка давления в кабине
sard_diff_set = globalPropertyf("tu154b2/custom/switchers/sard/sard_diff_set_osn") -- установка перепада давлений
sard_spd_set = globalPropertyf("tu154b2/custom/switchers/sard/sard_spd_set_osn") -- установка скорости работы САРД
ditch = globalPropertyi("tu154b2/custom/switchers/eng/sard_disable")
sard_cabin_press_set_2 = globalPropertyf("tu154b2/custom/switchers/sard/sard_cabin_press_set_dbl")
sard_diff_set_2 = globalPropertyf("tu154b2/custom/switchers/sard/sard_diff_set_dbl") 
sard_spd_set_2 = globalPropertyf("tu154b2/custom/switchers/sard/sard_spd_set_dbl")


emerg_decompress = globalPropertyi("tu154b2/custom/switchers/airbleed/emerg_decompress") -- сброс давления

-- windows
cockpit_window_left = globalPropertyf("tu154b2/custom/anim/cockpit_window_left") -- открытие форточки
cockpit_window_right = globalPropertyf("tu154b2/custom/anim/cockpit_window_right") -- открытие форточки

pax_door_1 = globalPropertyf("tu154b2/custom/anim/pax_door_1") -- положение передних пасс дверей
pax_door_2 = globalPropertyf("tu154b2/custom/anim/pax_door_2") -- положение средних пасс дверей
pax_door_3 = globalPropertyf("tu154b2/custom/anim/pax_door_3") -- положение правых аварийных дверей
cargo_1 = globalPropertyf("tu154b2/custom/anim/cargo_1") -- багаж
cargo_2 = globalPropertyf("tu154b2/custom/anim/cargo_2") -- багаж
cockpit_temp = globalPropertyf("tu154b2/custom/bleed/cockpit_temp") -- температура в кабине
cabin_1_temp = globalPropertyf("tu154b2/custom/bleed/cabin_1_temp") -- температура в салоне 1
cabin_2_temp = globalPropertyf("tu154b2/custom/bleed/cabin_2_temp") -- температура в салоне 2


-- failures
sard_valve_fail = globalPropertyi("tu154b2/custom/failures/sard_valve_fail") -- отказ выпускного клапана


-- current altitude
msl_alt = globalPropertyf("sim/flightmodel/position/elevation")  -- phisical altitude MSL. meters
msl_press = globalPropertyf("sim/weather/barometer_sealevel_inhg")  -- pressire at sea level in.Hg

-- results
dump_to_altitude_on = globalPropertyi("sim/cockpit2/pressurization/actuators/dump_to_altitude_on") -- Dump pressurization to the current altitude, 0 or 1.
cabin_altitude_ft = globalPropertyf("sim/cockpit/pressure/cabin_altitude_actual_ft") -- Cabin altitude 
cabin_vvi_fpm = globalPropertyf("sim/cockpit/pressure/cabin_vvi_actual_fpm") -- Cabin VVI commanded, feet.
cabin_outflow_vlv = globalPropertyf("sim/cockpit/pressure/outflow_valve")
override = globalPropertyi("sim/operation/override/override_pressurization")
--dump_all_on = globalPropertyi("sim/cockpit2/pressurization/actuators/dump_all_on")


-- current state
cabin_alt_now_ft = globalPropertyf("sim/cockpit2/pressurization/indicators/cabin_altitude_ft") -- Cabin altitude actually occurring, feet
pressure_diff_psi = globalPropertyf("sim/cockpit2/pressurization/indicators/pressure_diffential_psi") -- pounds/square_inch	Cabin differential pressure, psi.

--acf_has_press_controls = globalPropertyf("sim/aircraft/view/acf_has_press_controls") --
ambient_p = globalPropertyf("sim/weather/aircraft/barometer_current_pas")
reg_fail_main = globalPropertyi("tu154b2/custom/failures/srd_regulator_1")
reg_fail_back = globalPropertyi("tu154b2/custom/failures/srd_regulator_2")
valve_1_fail = globalPropertyi("tu154b2/custom/failures/valve_1")
valve_2_fail = globalPropertyi("tu154b2/custom/failures/valve_2")
valve_3_fail = globalPropertyi("tu154b2/custom/failures/valve_3")
valve_4_fail = globalPropertyi("tu154b2/custom/failures/valve_4")

eject_sw = globalPropertyi("sim/custom/b2/airflow_eject")
eject_cap = globalPropertyi("sim/custom/b2/airflow_eject_cap")
gear_def = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]")
dubl_sw = globalPropertyi("tu154b2/custom/switchers/airbleed/dubler_on")
-- B2 gauges
vys_kab = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_alt_new")
var_kab = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_vvi_new")
izb_davl = globalPropertyf("tu154b2/custom/gauges/airbleed/cabin_diff_new")
--additional stuff
bleed_air = globalPropertyi("tu154b2/custom/kskv/bleed_avail")
rpm_high_1 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")
oat = globalPropertyf("sim/weather/temperature_ambient_c")
-- Smart Copilot
ismaster = globalPropertyf("tu154b2/crew/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
hascontrol_1 = globalPropertyf("tu154b2/crew/hascontrol_1") -- Have control. 0 = plugin not found, 1 = no control 2 = has control

-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1")
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2")
-- db3 = globalPropertyf("tu154b2/custom/controlls/debug3")


local var_tbl = {{ -100000, -21 },    -- bugs walkaround
{  -30, -21 }, -- 0.0
{ -20, -17.5 },   --
{ -10, -10 }, -- 
{ 10, 10 }, -- 
{ 20, 17.5 }, -- 
{ 30, 21 }, -- 
{  100000, 21 }}    -- bugs walkaround

local window_tbl = {{ -1, 0 },    -- bugs walkaround
{  0, 0 }, -- 0.0
{ 0.25, 3 },   --
{ 1, 300 }, -- 
{  100, 300 }}    -- bugs walkaround

				  
				  
local press_reg = 0 -- pressure valve position. 0 - closed, 1 - fully open
local cab_alt_need = -200
--local sys_alt = get(cabin_alt_now_ft) * 0.3048 -- calculated cabin alt meters
local decomp_last = 0

-- Coefficients and Parameters
local c_vlv=5 --outflow valve pressure loss constant
local c_win=0.0004 --window pressure loss constant
local A_max=2.5 --maximum valve opening
local MF=330/3600 -- Mass Flow per Unit of Airflow at Sea Level
local V_cab=320 -- cabin volume
local T_cab=22
local R=287
local c_vlv_vac=0.03
local c_vlv_spr=0.0015 -- valve spring stiffness
local P_eject=0.01 --ejector suction pressure fraction
local ejct=0
local T_vs=3
local T_amb=5
local regulator_switched=0
local start_timer=0




local p_ambient_prev=get(ambient_p)
-- local p_ambient_lp=p_ambient_prev
-- local p_ambient_lp_prev=p_ambient_prev
local p_cab_prev=get(ambient_p)
local T_cab=(get(cabin_1_temp)+273+get(cabin_2_temp)+273)/2
local rho_cab=p_cab_prev/R/T_cab
local M_cab=V_cab*rho_cab
local A_vlv_1=0
local A_vlv_2=0
local A_vlv_3=0
local A_vlv_4=0
local A_vlv_ejct=0
local A_vlv_dmp=0
local A_dump=200
local A_tot=0.005
local flow_in=0
local flow_out=0
local d_p=0
local alt_cab_prev=0
local vs_cab_lp_prev=0
local p_set_prev_1=p_cab_prev
local p_set_prev_2=p_cab_prev
local vs_cab=0
local dmp=0
local p_set_1=p_ambient_prev
local p_set_2=p_ambient_prev
local p_set_3=p_ambient_prev
local p_set_4=p_ambient_prev

function reg_2077AT (p_set_prev,p_cab,p_amb,tgt_press,max_diff,max_rate,dt,fail)
	local p_set=p_set_prev
    if (p_set-p_amb)/101300<max_diff then --either set pressure or max diff perssure
        p_set=math.max(tgt_press*133.33,p_amb) -- set pressure can't be below ambient
    else 
        p_set=101325*max_diff+p_amb

    end
	if fail==1 then
		p_set=p_amb
	end
    if (p_set-p_set_prev)>max_rate*133*dt then --rate limiter
        p_set=p_set_prev+max_rate*133*dt
    elseif (p_set-p_set_prev)<-max_rate*133*dt then
        p_set=p_set_prev-max_rate*133*dt
    end
    if p_set-p_cab>2000*max_rate/0.18 then -- dont let cabin and set pressure diverge too much
        p_set=p_set-(p_set-p_cab)/40;
    elseif p_set-p_cab<-2000*max_rate/0.18 then
        p_set=p_set-(p_set-p_cab)/40
    end
	return p_set
end


function valve_4870T(p_am,A_vlv,p_set,p_set_prev,p_cab,dt,A_max,A_ejct,ejct,P_eject,dmp,fail,cls)
	local c_contrl=20
	local spr_pre_load=0.2
	local spd_vlv_cl=0.04-- maximum valve closing speed
	local spd_vlv_op=99-- maximum valve opening speed
	local c_vlv_spr=0.018 --valve spring constant
	local T=10
	local p_vlv=1e-05 --valve area (not the outflow area!)
	p_set=p_set*(1-A_ejct/P_eject*ejct)+p_am*(1-P_eject)*A_ejct/P_eject*ejct --blend between ejector suction pressure and ambient pressure
	if (p_set-p_am)/101300>0.7 then -- overpressue and min cabin altitude safety
		p_set=101325*0.7+p_am
	elseif p_set/133<500 then
		p_set=133*500
	end
	if dmp==1 then --dump
        p_set=p_am
	elseif fail==1 or cls==1 then --manual close or fail close
		p_set=p_cab
    end
    p_set=dt/(T+dt)*(p_set) + p_set_prev*T/(T+dt);
    vlv_spd=(-p_vlv*(p_set-p_cab)-(A_vlv+spr_pre_load)*c_vlv_spr)*c_contrl -- valve speed, pressure force - spring force
    if vlv_spd<-spd_vlv_cl then -- speed limiters
        vlv_spd=-spd_vlv_cl
    elseif vlv_spd>spd_vlv_op then
        vlv_spd=spd_vlv_op
    end
    A_vlv=A_vlv+vlv_spd*dt
	if A_vlv>A_max then -- position limiters
        A_vlv=A_max
    elseif A_vlv<0 then
        A_vlv=0
    end
	return A_vlv,p_set
end







function update()

	set(override,1)
	
	local win1=get(cockpit_window_left)
	local win2=get(cockpit_window_right)
	win1=interpolate(window_tbl,win1)
	win2=interpolate(window_tbl,win2)
	local doors=win1+win2+get(pax_door_1)*1000+get(pax_door_2)*1000+get(pax_door_3)*1000+get(cargo_1)*800+get(cargo_2)*800
	doors=math.min(doors,2000)
	
	local passed = math.min(1/20,get(frame_time))
	if passed~=0 then
		local p_ambient=get(ambient_p)
		p_ambient=passed/(T_amb+passed)*(p_ambient) +  p_ambient_prev*T_amb/(T_amb+passed)
		if start_timer<21 then
			start_timer=start_timer+passed
			p_ambient=get(ambient_p)
		end
		local power_L = get(bus27_volt_left) > 13
		local power_R = get(bus27_volt_right) > 13
		-- Command panel settings
		local tgt_press_1=get(sard_cabin_press_set)
		local max_diff_1=get(sard_diff_set)
		local max_rate_1=(0.5-0.18)*get(sard_spd_set)+0.18
		local tgt_press_2=get(sard_cabin_press_set_2)
		local max_diff_2=get(sard_diff_set_2)
		local max_rate_2=(0.5-0.18)*get(sard_spd_set_2)+0.18
		
		
		-- Cabin flow rates
		local flow_in=(get(air_usage_L)+get(air_usage_R))/100
		if flow_out~=flow_out then
			flow_out=flow_in
		end
		local flow_tot=flow_in-flow_out
		M_cab=M_cab+flow_tot*MF*passed
		rho_cab=M_cab/V_cab
		T_cab=(get(cabin_1_temp)+get(cabin_2_temp))/2
		local p_cab=rho_cab*(273+T_cab)*R
		if start_timer<20 then
			if get(rpm_high_1)>10 then
				p_cab=p_ambient+2026
				p_cmd=p_cab
				T_cab=(25+273+25+273)/2
				rho_cab=p_cab/R/T_cab
				M_cab=V_cab*rho_cab
				A_vlv_ejct=P_eject
				set(eject_cap,1)
				set(eject_sw,1)
			else
				p_cab=p_ambient
				p_cmd=p_cab
				T_cab=get(oat)+273
				rho_cab=p_cab/R/T_cab
				M_cab=V_cab*rho_cab
			end
		end
		
		
		d_p=(p_cab_prev-p_ambient)/101300
		if doors>0 then
			if p_cab_prev-p_ambient>0 then
				flow_out=math.sqrt(p_cab_prev-p_ambient)/c_vlv*A_tot+((p_cab_prev-p_ambient))*c_win*doors
			else
				flow_out=-math.sqrt(-(p_cab_prev-p_ambient))/c_vlv*A_tot+((p_cab_prev-p_ambient))*c_win*doors
			end
		elseif d_p>=0 then
			flow_out=math.sqrt(p_cab_prev-p_ambient)/c_vlv*A_tot
		elseif d_p<-0.015 then
			flow_out=-(math.sqrt(p_ambient-p_cab_prev))*c_vlv_vac
		elseif d_p<0 and A_tot>0 then
			flow_out=-(math.sqrt(p_ambient-p_cab_prev))/c_vlv*A_tot
		else
			flow_out=flow_in
		end
		--Cabin Altitude and V/S
		local alt_cab=145366.45*(1-math.pow(p_cab*0.01/1013.25,0.190284))*0.3048
		local vs_cab_lp=passed/(T_vs+passed)*(vs_cab) +  vs_cab_lp_prev*T_vs/(T_vs+passed)
		if passed~=0 then
			vs_cab=(alt_cab-alt_cab_prev)/passed
		end
		-- Failures
		local fail_1=get(reg_fail_main)
		local fail_2=get(reg_fail_back)
		local fail_vlv_1=get(valve_1_fail)
		local fail_vlv_2=get(valve_2_fail)
		local fail_vlv_3=get(valve_3_fail)
		local fail_vlv_4=get(valve_4_fail)
		
		-- Ejector, ditch switch and Dump
		if get(gear_def)>0.1 and get(eject_sw)>0 and power_L and get(bleed_air)>0 then
			ejct=ejct+passed/2
			if ejct>1 then
				ejct=1
			end
		elseif ejct>0 then
			ejct=ejct-passed/2
			if ejct<0 then
				ejct=0
			end
		end
		A_vlv_ejct=A_vlv_ejct+0.04*(P_eject*ejct-A_vlv_ejct)*passed
		if get(emerg_decompress)>0 and power_L then
			dmp=1
		elseif get(emerg_decompress)==0 and power_L then
			dmp=0
		end
		--set(db1,A_vlv_dmp)
		local cls=0
		if get(ditch)>0 and power_L then
			cls=1
		end
		-- Commanded Pressure
		local p_set_main=reg_2077AT (p_set_prev_1,p_cab,p_ambient,tgt_press_1,max_diff_1,max_rate_1,passed,fail_1)
		local p_set_back=reg_2077AT (p_set_prev_2,p_cab,p_ambient,tgt_press_2,max_diff_2,max_rate_2,passed,fail_2)
		if get(dubl_sw)==0 and power_L then
			regulator_switched=0
		elseif get(dubl_sw)==1 and power_L then
			regulator_switched=1
		end
		local p_cmd=p_set_main
		if start_timer<20 then
			if get(rpm_high_1)>10 then
				p_cmd=p_cab
				p_set_prev_1=p_cab
				p_set_prev_2=p_cab
			else
				p_cmd=p_cab
				p_set_prev_1=p_cab
				p_set_prev_2=p_cab
			end
		end
		if regulator_switched==1 then
			p_cmd=p_set_back
		end
		A_vlv_1,p_set_1 =valve_4870T(p_ambient,A_vlv_1,p_cmd,p_set_1,p_cab,passed,A_max,A_vlv_ejct,ejct-regulator_switched,P_eject,dmp,fail_vlv_1,0)
		A_vlv_2,p_set_2 =valve_4870T(p_ambient,A_vlv_2,p_cmd,p_set_2,p_cab,passed,A_max,A_vlv_ejct,ejct-regulator_switched,P_eject,dmp,fail_vlv_2,0)
		A_vlv_3,p_set_3 =valve_4870T(p_ambient,A_vlv_3,p_cmd,p_set_3,p_cab,passed,A_max,A_vlv_ejct,ejct-regulator_switched,P_eject,dmp,fail_vlv_3,cls)
		A_vlv_4,p_set_4 =valve_4870T(p_ambient,A_vlv_4,p_cmd,p_set_4,p_cab,passed,A_max,A_vlv_ejct,ejct-regulator_switched,P_eject,dmp,fail_vlv_4,cls)
		-- set(db2,A_vlv_ejct)
		-- set(db3,ejct)
		-- hot start initialization
		if start_timer<20 then
			if get(rpm_high_1)>10 then
				A_vlv_1=1.4
				A_vlv_2=1.4
				A_vlv_3=1.4
				A_vlv_4=1.4
			else
				A_vlv_1=0
				A_vlv_2=0
				A_vlv_3=0
				A_vlv_4=0
			end
		end
		A_tot=(A_vlv_1+A_vlv_2+A_vlv_3+A_vlv_4)/4+0.01
		p_cab_prev=p_cab
		vs_cab_lp_prev=vs_cab_lp
		alt_cab_prev=alt_cab
		p_set_prev_1=p_set_main
		p_set_prev_2=p_set_back
		p_ambient_prev=p_ambient
	
		--set(db1,A_vlv_ejct)
	
	--print(acf_alt, "  ", alt_set, "  ", current_diff, "  ", sys_alt)

		local MASTER = get(ismaster) ~= 1	
			

		if MASTER then	
			local vs_cab_gauge=interpolate(var_tbl,vs_cab_lp)*34/4
			local alt_cab_gauge=math.max(math.min(5000,alt_cab),-300)/1000
			set(var_kab,vs_cab_gauge)
			set(vys_kab,alt_cab_gauge)
			set(izb_davl,d_p)
			set(cabin_vvi_fpm, vs_cab_lp*196.85)	
			set(cabin_altitude_ft, alt_cab*3.28084)
			set(cabin_outflow_vlv,A_tot/A_max)
		end
	end

	set(sard_panel_lit, get(bus115_1_volt) / 115)
	
end
function onModuleDone()
	set(override, 0)
end