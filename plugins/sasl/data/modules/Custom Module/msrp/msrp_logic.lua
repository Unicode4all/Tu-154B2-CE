-- this is MSRP recording logic

-- power and controls
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27

msrp_recording = globalPropertyi("tu154b2/custom/msrp/msrp_recording") -- МСРП в режиме записи

msrp_date_ten = globalPropertyf("tu154b2/custom/switchers/eng/msrp_date_ten") -- МРСП дата число десятки
msrp_date_one = globalPropertyf("tu154b2/custom/switchers/eng/msrp_date_one") -- МРСП дата число единицы
msrp_month_ten = globalPropertyf("tu154b2/custom/switchers/eng/msrp_month_ten") -- МРСП дата месяц десятки
msrp_month_one = globalPropertyf("tu154b2/custom/switchers/eng/msrp_month_one") -- МРСП дата месяц единицы
msrp_year_ten = globalPropertyf("tu154b2/custom/switchers/eng/msrp_year_ten") -- кнопка проверки ламп МСРП
msrp_year_one = globalPropertyf("tu154b2/custom/switchers/eng/msrp_year_one") -- кнопка проверки ламп МСРП
msrp_route_hun = globalPropertyf("tu154b2/custom/switchers/eng/msrp_route_hun") -- кнопка проверки ламп МСРП
msrp_route_ten = globalPropertyf("tu154b2/custom/switchers/eng/msrp_route_ten") -- кнопка проверки ламп МСРП
msrp_route_one = globalPropertyf("tu154b2/custom/switchers/eng/msrp_route_one") -- кнопка проверки ламп МСРП
msrp_mlp_1 = globalPropertyf("tu154b2/custom/switchers/eng/msrp_mlp_1") -- кнопка проверки ламп МСРП
msrp_mlp_2 = globalPropertyf("tu154b2/custom/switchers/eng/msrp_mlp_2") -- кнопка проверки ламп МСРП
msrp_night_day = globalPropertyf("tu154b2/custom/switchers/eng/msrp_night_day") -- кнопка проверки ламп МСРП
msrp_main_switch = globalPropertyf("tu154b2/custom/switchers/eng/msrp_main_switch") -- главный выключатель
nose_switch = globalProperty("sim/flightmodel2/gear/on_ground[0]")


-- new sources


total_flight_time_sec = globalPropertyf("sim/time/total_flight_time_sec")

zulu_time_hours = globalPropertyf("sim/cockpit2/clock_timer/zulu_time_hours")
zulu_time_minutes = globalPropertyf("sim/cockpit2/clock_timer/zulu_time_minutes")
zulu_time_seconds = globalPropertyf("sim/cockpit2/clock_timer/zulu_time_seconds")

latitude = globalPropertyf("sim/flightmodel/position/latitude") -- degrees	The latitude of the aircraft
longitude = globalPropertyf("sim/flightmodel/position/longitude") -- degrees The longitude of the aircraft
true_crs = globalPropertyf("sim/flightmodel/position/true_psi") -- degrees True course of the aircraft
MSL = globalPropertyf("sim/flightmodel/position/elevation") -- altitude MSL



mgv_pitch = globalPropertyf("tu154b2/custom/gyro/mgv_contr_pitch") -- тангаж на АГР + нос вверх
mgv_roll = globalPropertyf("tu154b2/custom/gyro/mgv_contr_roll") -- крен на АГР + в право
sideslip_degrees = globalPropertyf("sim/cockpit2/gauges/indicators/sideslip_degrees")

yoke_pitch = globalPropertyf("tu154b2/custom/controlls/yoke_pitch") -- поворот штурвала ко тангажу
yoke_roll = globalPropertyf("tu154b2/custom/controlls/yoke_roll") -- поворот штурвала ко тангажу
pedals_turn = globalPropertyf("tu154b2/custom/controlls/pedals") -- поворот штурвала ко тангажу

int_pitch_trim = globalPropertyf("tu154b2/custom/trimmers/int_pitch_trim") -- положение триммера руля высоты
int_roll_trim = globalPropertyf("tu154b2/custom/trimmers/int_roll_trim") -- положение триммера элеронов
int_yaw_trim = globalPropertyf("tu154b2/custom/trimmers/int_yaw_trim") -- положение триммера руля направления

stab_ind = globalPropertyf("tu154b2/custom/gauges/misc/stab_ind") -- индикатор положения стаб
flap_left_ind = globalPropertyf("tu154b2/custom/gauges/misc/flap_left_ind") -- индикатор положения стаб
flap_right_ind = globalPropertyf("tu154b2/custom/gauges/misc/flap_right_ind") -- индикатор положения стаб
slats = globalPropertyf("sim/flightmodel2/controls/slat1_deploy_ratio") -- slats position. this one works too

ail_L = globalPropertyf("sim/flightmodel/controls/wing3l_ail1def") -- aileron left Degrees, positive is trailing-edge down. +- 20
ail_R = globalPropertyf("sim/flightmodel/controls/wing3r_ail1def") -- aileron right Degrees, positive is trailing-edge down. +- 20

elevator_L = globalPropertyf("sim/flightmodel/controls/hstab1_elv1def") -- Degrees, positive is trailing-edge down.
elevator_R = globalPropertyf("sim/flightmodel/controls/hstab2_elv1def") -- Degrees, positive is trailing-edge down.

rudder = globalPropertyf("sim/flightmodel/controls/vstab2_rud1def") -- degrees, positive is trailing-edge left

--speedbrake_ratio = globalPropertyf("sim/cockpit2/controls/speedbrake_ratio") -- sim speedbrake lever

-- spoilers
spd_brk_inn_L = globalProperty("sim/flightmodel2/wing/speedbrake1_deg[0]") -- inner speedbrake left Degrees
spd_brk_inn_R = globalProperty("sim/flightmodel2/wing/speedbrake1_deg[1]") -- inner speedbrake right Degrees

spd_brk_mid_L = globalPropertyf("sim/flightmodel/controls/wing2l_spo2def") -- middle speedbrake left Degrees
spd_brk_mid_R = globalPropertyf("sim/flightmodel/controls/wing2r_spo2def") -- middle speedbrake right Degrees

roll_spoil_L = globalPropertyf("sim/flightmodel/controls/wing2l_spo1def") -- roll spoiler left Degrees
roll_spoil_R = globalPropertyf("sim/flightmodel/controls/wing2r_spo1def") -- roll spoiler right Degrees


msl_alt = globalPropertyf("sim/flightmodel/position/elevation")  -- phisical altitude MSL. meters
msl_press = globalPropertyf("sim/weather/barometer_sealevel_inhg")  -- pressire at sea level in.Hg
rv5_alt = globalPropertyf("tu154b2/custom/misc/rv5_alt_left")  -- высота на левом высотомере
vvi = globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot") -- vertical speed in ft/min
aoa_ind = globalPropertyf("tu154b2/custom/gauges/misc/aoa_ind") -- индикатор угла атаки
gforce_ind = globalPropertyf("tu154b2/custom/gauges/misc/gforce_ind") -- индикатор макс перегрузки
ias = globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_pilot")
mach_svs = globalPropertyf("tu154b2/custom/svs/machno") -- Mach number

course_gpk = globalPropertyf("tu154b2/custom/tks/course_gpk") -- результирующий курс ТКС - ГПК
course_gmk = globalPropertyf("tu154b2/custom/tks/course_gmk") -- результирующий курс ТКС - ГМК

rpm_high_1 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1") -- обороты турбины высокого давления №1
rpm_high_2 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2") -- обороты турбины высокого давления №2
rpm_high_3 = globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3") -- обороты турбины высокого давления №3

ENGN_propmode_1 = globalProperty("sim/flightmodel/engine/ENGN_propmode[0]")
ENGN_propmode_2 = globalProperty("sim/flightmodel/engine/ENGN_propmode[1]")
ENGN_propmode_3 = globalProperty("sim/flightmodel/engine/ENGN_propmode[2]")


fuel_flow_1 = globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_1") -- расход топлива двиг 1
fuel_flow_2 = globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_2") -- расход топлива двиг 2
fuel_flow_3 = globalPropertyf("tu154b2/custom/gauges/eng/fuel_flow_3") -- расход топлива двиг 3

m_total = globalPropertyf("sim/flightmodel/weight/m_total") -- kgs	Total Weight
m_fuel = globalPropertyf("sim/flightmodel/weight/m_fuel_total") -- kgs	Fuel Tank Weight - for 9 tanks
cg_pos_actual = globalPropertyf("tu154b2/custom/misc/cg_pos_actual") -- актуальное положение CG

deflection_mtr_3 = globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]") -- 

roll_main_mode = globalPropertyi("tu154b2/custom/absu/roll_main_mode") -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб
pitch_main_mode = globalPropertyi("tu154b2/custom/absu/pitch_main_mode") -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб
stu_mode = globalPropertyi("tu154b2/custom/absu/stu_mode") -- режимы автомата тяги 0 - выкл, 1 - вкл, 2 - готов, 3 стаб, 4 - уход	

deploy_ratio_1 = globalProperty("sim/flightmodel2/gear/deploy_ratio[0]") -- 
deploy_ratio_2 = globalProperty("sim/flightmodel2/gear/deploy_ratio[1]") -- 
deploy_ratio_3 = globalProperty("sim/flightmodel2/gear/deploy_ratio[2]") -- 

outer_marker = globalPropertyi("sim/cockpit/misc/outer_marker_lit")   -- runway markers
middle_marker = globalPropertyi("sim/cockpit/misc/middle_marker_lit")
inner_marker = globalPropertyi("sim/cockpit/misc/inner_marker_lit")

nav_cs_flag = globalPropertyi("tu154b2/custom/radio/nav1_cs_flag")
nav_gs_flag = globalPropertyi("tu154b2/custom/radio/nav1_gs_flag")

nav_cs = globalPropertyf("tu154b2/custom/radio/nav1_cs")
nav_gs = globalPropertyf("tu154b2/custom/radio/nav1_gs")


wind_direction_degt = globalPropertyf("sim/weather/wind_direction_degt")
wind_speed_kt = globalPropertyf("sim/weather/wind_speed_kt")


-- currents
msrp_27_L_cc = globalPropertyf("tu154b2/custom/msrp/msrp_27_L_cc") -- нагрузка на сеть
msrp_27_R_cc = globalPropertyf("tu154b2/custom/msrp/msrp_27_R_cc") -- нагрузка на сеть

gen1 = globalPropertyf("tu154b2/custom/elec/gen1_work")
gen2 = globalPropertyf("tu154b2/custom/elec/gen2_work")
gen3 = globalPropertyf("tu154b2/custom/elec/gen3_work")




msrp_power = globalPropertyi("tu154b2/custom/msrp/msrp_power")  -- MSRP power


-- time
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time


local path=sasl.getAircraftPath ()
local filename =path .."/black_box/default_file.bbox" -- current name of file
local panel_numbers = "0"



local function createFileName()

	local date_ten = get(msrp_date_ten)
	local date_one = get(msrp_date_one)
	local month_ten = get(msrp_month_ten)
	local month_one = get(msrp_month_one)
	local year_ten = get(msrp_year_ten)
	local year_one = get(msrp_year_one)
	local route_hun = get(msrp_route_hun)
	local route_ten = get(msrp_route_ten)
	local route_one = get(msrp_route_one)
	
	panel_numbers = date_ten .. date_one .."_".. month_ten .. month_one .."_".. year_ten .. year_one .."_".. route_hun .. route_ten .. route_one
	
	filename = path .."/black_box/".. panel_numbers .. ".bbox"
	


end

createFileName()

function create_file()
	-- this function creates new file with new name and stores it for further work

	local savefile = io.open(filename, "r")
	
	if savefile then -- if file already exist - exit function and don't touch it
		savefile:close()
		return true
	else
		savefile = io.open(filename, "w") -- start new file
	end
	
	
	if savefile then
		savefile:write("0\t"..panel_numbers.."\n") -- flight number
		
		savefile:write("1\t") -- variables names
			savefile:write("Sim time\t") -- 1
			savefile:write("Time stamp\t") -- 2
			savefile:write("Latitude\t") -- 3
			savefile:write("Longtitude\t") -- 4
			savefile:write("TrueCRS\t") -- 4
			savefile:write("MSL alt\t") -- 4
			savefile:write("Pitch\t") -- 5
			savefile:write("Roll\t") -- 6
			savefile:write("Slip\t") -- 7
			savefile:write("Yoke pitch\t") -- 8
			savefile:write("Yoke roll\t") -- 9
			savefile:write("Yoke yaw\t") -- 10
			savefile:write("Trim pitch\t") -- 11
			savefile:write("Trim roll\t") -- 12
			savefile:write("Trim yaw\t") -- 13
			savefile:write("Stab pos\t") -- 14
			savefile:write("Flaps L\t") -- 15
			savefile:write("Flaps R\t") -- 16
			savefile:write("Slats\t") -- 17
			savefile:write("Aileron L\t") -- 18
			savefile:write("Aileron R\t") -- 19
			savefile:write("Elevator L\t") -- 20
			savefile:write("Elevator R\t") -- 21
			savefile:write("Rudder\t") -- 22
			--savefile:write("Spoiler hnd\t") -- 23
			
			savefile:write("Spoiler OUT L\t") -- 23
			savefile:write("Spoiler MID L\t") -- 23
			savefile:write("Spoiler INN L\t") -- 23
			
			savefile:write("Spoiler OUT R\t") -- 23
			savefile:write("Spoiler MID R\t") -- 23
			savefile:write("Spoiler INN R\t") -- 23
			
			savefile:write("Baro alt\t") -- 24
			savefile:write("Radio alt\t") -- 25
			savefile:write("Vertical spd\t") -- 26
			savefile:write("AoA\t") -- 27
			savefile:write("G-load\t") -- 28
			savefile:write("Airspeed\t") -- 29
			savefile:write("Mach No\t") -- 39
			savefile:write("Mag CRS\t") -- 31
			savefile:write("TKS CRS\t") -- 32
			
			savefile:write("ILS CRS\t") -- ILS Course
			savefile:write("ILS GS\t") -- ILS GS
			savefile:write("CRS Flag\t") -- CRS Flag
			savefile:write("GS Flag\t") -- GS Flag
			
			savefile:write("Wind dir\t") -- Wind direction
			savefile:write("Wind speed\t") -- Wind speed
			
			savefile:write("ENG 1 RPM\t") -- 33
			savefile:write("ENG 2 RPM\t") -- 34
			savefile:write("ENG 3 RPM\t") -- 35
			savefile:write("ENG 1 FF\t") -- 36
			savefile:write("ENG 2 FF\t") -- 37
			savefile:write("ENG 3 FF\t") -- 38
			savefile:write("Total weight\t") -- 39
			savefile:write("Total CG\t") -- 40
			savefile:write("Total fuel\t") -- 41
			savefile:write("On Ground\t") -- 42
			savefile:write("Gear Down\t") -- 43
			savefile:write("ABSU Roll mode\t") -- 44 off, man, auto
			savefile:write("ABSU Pitch mode\t") -- 45
			savefile:write("ABSU AT mode\t") -- 46
			savefile:write("Marker\t") -- 47 off, inn, mid, out
			--savefile:write("ILS est\t") -- 48

			savefile:write("\n") -- end of line
		
		savefile:write("2\t") -- variables units
			savefile:write("sec\t") -- Sim time
			savefile:write("HH:MM:SS\t") -- ZULU time
			savefile:write("deg\t") -- Latitude
			savefile:write("deg\t") -- Longtitude
			savefile:write("deg\t") -- True course
			savefile:write("m\t") -- True course
			savefile:write("deg\t") -- Pitch
			savefile:write("deg\t") -- Roll
			savefile:write("deg\t") -- Slip
			savefile:write("ratio\t") -- Yoke pitch
			savefile:write("ratio\t") -- Yoke roll
			savefile:write("ratio\t") -- Yoke yaw
			savefile:write("ratio\t") -- Trim pitch
			savefile:write("ratio\t") -- Trim roll
			savefile:write("ratio\t") -- Trim yaw
			savefile:write("deg\t") -- Stab pos
			savefile:write("deg\t") -- Flaps L
			savefile:write("deg\t") -- Flaps R
			savefile:write("deg\t") -- Slats
			savefile:write("deg\t") -- Aileron L
			savefile:write("deg\t") -- Aileron R
			savefile:write("deg\t") -- Elevator L
			savefile:write("deg\t") -- Elevator R
			savefile:write("deg\t") -- Rudder
			--savefile:write("ratio\t") -- Spoiler hnd
			
			savefile:write("ratio\t") -- Spoiler hnd
			savefile:write("ratio\t") -- Spoiler hnd
			savefile:write("ratio\t") -- Spoiler hnd
			savefile:write("ratio\t") -- Spoiler hnd
			savefile:write("ratio\t") -- Spoiler hnd
			savefile:write("ratio\t") -- Spoiler hnd
			
			savefile:write("m\t") -- Baro alt
			savefile:write("m\t") -- Radio alt
			savefile:write("m/s\t") -- Vertical spd
			savefile:write("deg\t") -- AoA
			savefile:write("g\t") -- G-load
			savefile:write("km/h\t") -- Airspeed
			savefile:write("M\t") -- Mach No
			savefile:write("deg\t") -- Mag CRS
			savefile:write("deg\t") -- TKS CRS
			
			savefile:write("dot\t") -- ILS Course
			savefile:write("dot\t") -- ILS GS
			savefile:write("bool\t") -- CRS Flag
			savefile:write("bool\t") -- GS Flag
			
			savefile:write("deg\t") -- Wind direction
			savefile:write("km/h\t") -- Wind speed
			
			savefile:write("%\t") -- ENG 1 N1
			savefile:write("%\t") -- ENG 2 N1
			savefile:write("%\t") -- ENG 3 N1
			savefile:write("kg/h\t") -- ENG 1 FF
			savefile:write("kg/h\t") -- ENG 2 FF
			savefile:write("kg/h\t") -- ENG 3 FF
			savefile:write("kg\t") -- Total weight
			savefile:write("%MAC\t") -- Total CG
			savefile:write("kg\t") -- Total fuel
			
			savefile:write("bool\t") -- On Ground
			savefile:write("bool\t") -- Gear Down
			savefile:write("mode\t") -- ABSU Roll mode
			savefile:write("mode\t") -- ABSU Pitch mode
			savefile:write("mode\t") -- ABSU AT mode
			savefile:write("mode\t") -- Marker
			--savefile:write("bool\t") -- ILS est
			
			savefile:write("\n") -- end of line

		savefile:write("3\t") -- Limits
			savefile:write("0/0\t") -- Sim time
			savefile:write("0/0\t") -- ZULU time
			savefile:write("0/0\t") -- Latitude
			savefile:write("0/0\t") -- Longtitude
			savefile:write("0/0\t") -- True course
			savefile:write("0/0\t") -- MSL
			savefile:write("-10/20\t") -- Pitch
			savefile:write("-30/30\t") -- Roll
			savefile:write("-20/20\t") -- Slip
			savefile:write("-1/1\t") -- Yoke pitch
			savefile:write("-1/1\t") -- Yoke roll
			savefile:write("-1/1\t") -- Yoke yaw
			savefile:write("-1/1\t") -- Trim pitch
			savefile:write("-1/1\t") -- Trim roll
			savefile:write("-1/1\t") -- Trim yaw
			savefile:write("0/-5.5\t") -- Stab pos
			savefile:write("0/45\t") -- Flaps L
			savefile:write("0/45\t") -- Flaps R
			savefile:write("0/22\t") -- Slats
			savefile:write("-20/20\t") -- Aileron L
			savefile:write("-20/20\t") -- Aileron R
			savefile:write("-20/25\t") -- Elevator L
			savefile:write("-20/25\t") -- Elevator R
			savefile:write("-25/25\t") -- Rudder
			--savefile:write("0/1\t") -- Spoiler hnd
			
			savefile:write("0/1\t") -- Spoiler hnd
			savefile:write("0/1\t") -- Spoiler hnd
			savefile:write("0/1\t") -- Spoiler hnd
			savefile:write("0/1\t") -- Spoiler hnd
			savefile:write("0/1\t") -- Spoiler hnd
			savefile:write("0/1\t") -- Spoiler hnd
			
			savefile:write("0/0\t") -- Baro alt
			savefile:write("0/900\t") -- Radio alt
			savefile:write("-30/30\t") -- Vertical spd
			savefile:write("-5/12\t") -- AoA
			savefile:write("-0.5/2.5\t") -- G-load
			savefile:write("-100/600\t") -- Airspeed
			savefile:write("-0.2/0.86\t") -- Mach No
			savefile:write("0/0\t") -- Mag CRS
			savefile:write("0/0\t") -- TKS CRS
			
			savefile:write("-1/1\t") -- ILS Course
			savefile:write("-1/1\t") -- ILS GS
			savefile:write("0/0\t") -- CRS Flag
			savefile:write("0/0\t") -- GS Flag
			
			savefile:write("0/0\t") -- Wind direction
			savefile:write("0/0\t") -- Wind speed
			
			savefile:write("40/96\t") -- ENG 1 N1
			savefile:write("40/96\t") -- ENG 2 N1
			savefile:write("40/96\t") -- ENG 3 N1
			savefile:write("400/5300\t") -- ENG 1 FF
			savefile:write("400/5300\t") -- ENG 2 FF
			savefile:write("400/5300\t") -- ENG 3 FF
			savefile:write("54000/100000\t") -- Total weight
			savefile:write("18/32\t") -- Total CG
			savefile:write("2500/40000\t") --  Total fuel
			savefile:write("0/0\t") -- On Ground
			savefile:write("0/0\t") -- Gear Down
			savefile:write("0/0\t") -- ABSU Roll mode
			savefile:write("0/0\t") -- ABSU Pitch mode
			savefile:write("0/0\t") -- ABSU AT mode 
			savefile:write("0/0\t") -- Marker
			--savefile:write("0/0\t") -- ILS est

			savefile:write("\n") -- end of line
		
		
		savefile:write("4\t") -- Groups
			savefile:write("time\t") -- Sim time
			savefile:write("time\t") -- ZULU time
			savefile:write("coordinates\t") -- Latitude
			savefile:write("coordinates\t") -- Longtitude
			savefile:write("course\t") -- True course
			savefile:write("MSL\t") -- MSL altitude
			savefile:write("orientation\t") -- Pitch
			savefile:write("orientation\t") -- Roll
			savefile:write("orientation\t") -- Slip
			savefile:write("yoke\t") -- Yoke pitch
			savefile:write("yoke\t") -- Yoke roll
			savefile:write("yoke\t") -- Yoke yaw
			savefile:write("trim\t") -- Trim pitch
			savefile:write("trim\t") -- Trim roll
			savefile:write("trim\t") -- Trim yaw
			savefile:write("stab\t") -- Stab pos
			savefile:write("wing mech\t") -- Flaps L
			savefile:write("wing mech\t") -- Flaps R
			savefile:write("wing mech\t") -- Slats
			savefile:write("controls\t") -- Aileron L
			savefile:write("controls\t") -- Aileron R
			savefile:write("controls\t") -- Elevator L
			savefile:write("controls\t") -- Elevator R
			savefile:write("controls\t") -- Rudder
			--savefile:write("spoilers\t") -- Spoiler hnd
			
			savefile:write("spoilers\t") -- Spoiler hnd
			savefile:write("spoilers\t") -- Spoiler hnd
			savefile:write("spoilers\t") -- Spoiler hnd
			savefile:write("spoilers\t") -- Spoiler hnd
			savefile:write("spoilers\t") -- Spoiler hnd
			savefile:write("spoilers\t") -- Spoiler hnd
			
			savefile:write("altitude\t") -- Baro alt
			savefile:write("altitude\t") -- Radio alt
			savefile:write("vertical speed\t") -- Vertical spd
			savefile:write("aoa\t") -- AoA
			savefile:write("G-load\t") -- G-load
			savefile:write("airspeed\t") -- Airspeed
			savefile:write("mach\t") -- Mach No
			savefile:write("course\t") -- Mag CRS
			savefile:write("course\t") -- TKS CRS
			
			savefile:write("ILS\t") -- ILS Course
			savefile:write("ILS\t") -- ILS GS
			savefile:write("ILS\t") -- CRS Flag
			savefile:write("ILS\t") -- GS Flag
			
			savefile:write("course\t") -- Wind direction
			savefile:write("wind speed\t") -- Wind speed
			
			savefile:write("engine RPM\t") -- ENG 1 N1
			savefile:write("engine RPM\t") -- ENG 2 N1
			savefile:write("engine RPM\t") -- ENG 3 N1
			savefile:write("fuel flow\t") -- ENG 1 FF
			savefile:write("fuel flow\t") -- ENG 2 FF
			savefile:write("fuel flow\t") -- ENG 3 FF
			savefile:write("mass\t") -- Total weight
			savefile:write("CG\t") -- Total CG
			savefile:write("mass\t") -- Total fuel
			savefile:write("event\t") -- On Ground
			savefile:write("event\t") -- Gear Down
			savefile:write("event\t") -- ABSU Roll mode
			savefile:write("event\t") -- ABSU Pitch mode
			savefile:write("event\t") -- ABSU AT mode 
			savefile:write("event\t") -- Marker
			--savefile:write("event\t") -- ILS est

			savefile:write("\n") -- end of line
		
		--savefile:write("#(sek)\tHH:MM:SS\t(deg)\t(deg)\t(deg)\t(m)\t(m)\t(km/h)\t(m/sek)\t(deg)\t(g)\t(mm)\t(deg)\t(mm)\t(deg)\t(deg)\t(deg)\t(deg)\t(deg)\t(rpm)\t(rpm)\t(t/hour)\t(deg)\t(deg)\n\n")
		

		--savefile:write("\n\n")
		savefile:close()
		return true
	else
		--print("error saving file. check if there is \"black_box\" folder here: "..panelDir.. " and permissions for it")
		return false
	end
	
	
end

function write_file() -- write parameters to file
	local savefile = io.open(filename, "a")
	if savefile then
		
		savefile:write("9\t") -- recorded data
			-- sim time
			savefile:write(math.floor(get(total_flight_time_sec)*100)*0.01, "\t") 
			
			-- zulu time
			local ZULU = get(zulu_time_hours)..":"..get(zulu_time_minutes)..":"..get(zulu_time_seconds)
			savefile:write(ZULU.."\t") -- 2
			
			-- latitude
			savefile:write(math.floor(get(latitude)*1000000)*0.000001, "\t") -- 3
			
			-- longtitude
			savefile:write(math.floor(get(longitude)*1000000)*0.000001, "\t") -- 4
			
			-- True course
			savefile:write(math.floor(get(true_crs)*100)*0.01, "\t") -- 4
			
			-- MSL
			savefile:write(math.floor(get(MSL)*100)*0.01, "\t") -- 4
			
			-- pitch, roll, slip
			local pitch = get(mgv_pitch)
			if pitch > 0 then pitch = math.floor(pitch*100)*0.01
			elseif pitch < 0 then pitch = math.ceil(pitch*100)*0.01 end
		
			savefile:write(pitch, "\t")
			
			local roll = get(mgv_roll)
			if roll > 0 then roll = math.floor(roll*100)*0.01
			elseif roll < 0 then roll = math.ceil(roll*100)*0.01 end
			
			savefile:write(roll, "\t") 
			
			local slip = get(sideslip_degrees)
			if slip > 0 then slip = math.floor(slip*100)*0.01
			elseif slip < 0 then slip = math.ceil(slip*100)*0.01 end
			
			savefile:write(slip, "\t") 
			
			-- yoke pos
			local Y_pitch = get(yoke_pitch)
			if Y_pitch > 0 then Y_pitch = math.floor(Y_pitch*100)*0.01
			elseif Y_pitch < 0 then Y_pitch = math.ceil(Y_pitch*100)*0.01 end
			
			savefile:write(Y_pitch, "\t") 
			
			local Y_roll = get(yoke_roll)
			if Y_roll > 0 then Y_roll = math.floor(Y_roll*100)*0.01
			elseif Y_roll < 0 then Y_roll = math.ceil(Y_roll*100)*0.01 end
			
			savefile:write(Y_roll, "\t")
			
			local Y_yaw = get(pedals_turn)
			if Y_yaw > 0 then Y_yaw = math.floor(Y_yaw*100)*0.01
			elseif Y_yaw < 0 then Y_yaw = math.ceil(Y_yaw*100)*0.01 end
			
			savefile:write(Y_yaw, "\t")
			

			-- trimmers
			local T_pitch = get(int_pitch_trim)
			if T_pitch > 0 then T_pitch = math.floor(T_pitch*100)*0.01
			elseif T_pitch < 0 then T_pitch = math.ceil(T_pitch*100)*0.01 end
			
			savefile:write(T_pitch, "\t")
			
			local T_roll = get(int_roll_trim)
			if T_roll > 0 then T_roll = math.floor(T_roll*100)*0.01
			elseif T_roll < 0 then T_roll = math.ceil(T_roll*100)*0.01 end
			
			savefile:write(T_roll, "\t")
			
			local T_yaw = get(int_yaw_trim)
			if T_yaw > 0 then T_yaw = math.floor(T_yaw*100)*0.01
			elseif T_yaw < 0 then T_yaw = math.ceil(T_yaw*100)*0.01 end
			
			savefile:write(T_yaw, "\t")
			
			
			-- mechanics
			
			savefile:write(math.floor(get(stab_ind)*100)*0.01 .."\t") 
			
			savefile:write(math.floor(get(flap_left_ind)*100)*0.01 .."\t") 
			
			savefile:write(math.floor(get(flap_right_ind)*100)*0.01 .."\t")
			
			savefile:write(math.floor(get(slats)*100)*0.22 .."\t")
			
			
			-- controls
			local AIL_L = get(ail_L)
			if AIL_L > 0 then AIL_L = math.floor(AIL_L*100)*0.01
			elseif AIL_L < 0 then AIL_L = math.ceil(AIL_L*100)*0.01 end
			
			savefile:write(AIL_L, "\t")
			
			local AIL_R = get(ail_R)
			if AIL_R > 0 then AIL_R = math.floor(AIL_R*100)*0.01
			elseif AIL_R < 0 then AIL_R = math.ceil(AIL_R*100)*0.01 end
			
			savefile:write(AIL_R, "\t")
			
			local ELEV_L = -get(elevator_L)
			if ELEV_L > 0 then ELEV_L = math.floor(ELEV_L*100)*0.01
			elseif ELEV_L < 0 then ELEV_L = math.ceil(ELEV_L*100)*0.01 end
			
			savefile:write(ELEV_L, "\t")
			
			local ELEV_R = -get(elevator_R)
			if ELEV_R > 0 then ELEV_R = math.floor(ELEV_R*100)*0.01
			elseif ELEV_R < 0 then ELEV_R = math.ceil(ELEV_R*100)*0.01 end
			
			savefile:write(ELEV_R, "\t")
			
			local RUDD = get(rudder)
			if RUDD > 0 then RUDD = math.floor(RUDD*100)*0.01
			elseif RUDD < 0 then RUDD = math.ceil(RUDD*100)*0.01 end
			
			savefile:write(RUDD, "\t")
			
			savefile:write(math.floor(get(roll_spoil_L)*100/20)*0.01 .."\t") -- spoilers OUT L
			savefile:write(math.floor(get(spd_brk_mid_L)*100/45)*0.01 .."\t") -- spoilers MID L
			savefile:write(math.floor(get(spd_brk_inn_L)*100/50)*0.01 .."\t") -- spoilers INN L
			
			savefile:write(math.floor(get(roll_spoil_R)*100/20)*0.01 .."\t") -- spoilers OUT R
			savefile:write(math.floor(get(spd_brk_mid_R)*100/45)*0.01 .."\t") -- spoilers MID R
			savefile:write(math.floor(get(spd_brk_inn_R)*100/50)*0.01 .."\t") -- spoilers INN R
			
			
			-- flight parameters
			-- baro alt		
			local baro_alt = get(msl_alt) + (29.92 - get(msl_press)) * 1000 * 0.3048  -- calculate barometric altitude in meters
			if baro_alt > 0 then baro_alt = math.floor(baro_alt*10)*0.1
			elseif baro_alt < 0 then baro_alt = math.ceil(baro_alt*10)*0.1 end
			
			savefile:write(baro_alt, "\t") 
			
			-- radio alt
			savefile:write(math.floor(get(rv5_alt)*10)*0.1, "\t") 
			
			-- vertical speed
			savefile:write(math.floor(get(vvi)*0.00508*100)*0.01, "\t")
			
			-- AoA
			savefile:write(math.floor(get(aoa_ind)*100)*0.01, "\t") 
			
			-- G-force
			savefile:write(math.floor(get(gforce_ind)*100)*0.01, "\t") 
			
			-- airspeed
			savefile:write(math.floor(get(ias)*1.852*10)*0.1, "\t") 
			
			-- mach
			savefile:write(math.floor(get(mach_svs)*10000)*0.0001, "\t")
			
			-- mag course
			savefile:write(math.floor(get(course_gmk)*100)*0.01, "\t")
			
			-- gyro course
			savefile:write(math.floor(get(course_gpk)*100)*0.01, "\t")
			
			-- ILS
			savefile:write(math.floor(get(nav_cs)*100*2.5)*0.01, "\t")
			savefile:write(math.floor(get(nav_gs)*100*2.5)*0.01, "\t")
			savefile:write(get(nav_cs_flag), "\t")
			savefile:write(get(nav_gs_flag), "\t")
			
			-- Wind
			savefile:write(math.floor(get(wind_direction_degt)*100)*0.01, "\t")
			savefile:write(math.floor(get(wind_speed_kt)*1.852*100)*0.01, "\t")
			
			-- engines RPM. Reverse is negative
			savefile:write(math.floor(get(rpm_high_1)*100)*0.01 * (1 - 2*bool2int(get(ENGN_propmode_1) == 3)), "\t")
			savefile:write(math.floor(get(rpm_high_2)*100)*0.01 * (1 - 2*bool2int(get(ENGN_propmode_2) == 3)), "\t")
			savefile:write(math.floor(get(rpm_high_3)*100)*0.01 * (1 - 2*bool2int(get(ENGN_propmode_3) == 3)), "\t")
			
			-- fuel flow
			savefile:write(math.floor(get(fuel_flow_1)*100)*0.01, "\t")
			savefile:write(math.floor(get(fuel_flow_2)*100)*0.01, "\t")
			savefile:write(math.floor(get(fuel_flow_3)*100)*0.01, "\t")
			
			-- acf status
			savefile:write(math.floor(get(m_total)), "\t")
			savefile:write(math.floor(get(cg_pos_actual)*100)*0.01, "\t")
			savefile:write(math.floor(get(m_fuel)), "\t")
			
			-- on ground
			savefile:write(bool2int(get(deflection_mtr_3) > 0.01), "\t")
			
			-- gear down
			local gear = bool2int(get(deploy_ratio_1) > 0.99 and get(deploy_ratio_2) > 0.99 and get(deploy_ratio_3) > 0.99)
			savefile:write(gear, "\t")
			
			-- ABSU
			savefile:write(get(roll_main_mode), "\t")
			savefile:write(get(pitch_main_mode), "\t")
			savefile:write(get(stu_mode), "\t")
			
			-- Marker
			local mark = 0
			if get(inner_marker) == 1 then mark = 1
			elseif get(middle_marker) == 1 then mark = 2
			elseif get(outer_marker) == 1 then mark = 3
			end
			savefile:write(mark.."\t")
			
			-- ILS
			--local ILS = bool2int(get(nav_cs_flag) == 0 and get(nav_gs_flag) == 0)
			
			--savefile:write(ILS.."\t") -- 46
			
			
			
			-- finish line
			
			savefile:write("\n") -- end of line
		
		
		
		
		
		
		
		--savefile:write("\n")
		savefile:close()
		return true
	else
		print("cannot write into file")
		return false
	end

end


local save_timer = 0

function update()
	
	local passed = get(frame_time)
	local airspeed = get(ias) * 1.852
	local power27_L = get(bus27_volt_left) > 13
	local power27_R = get(bus27_volt_right) > 13
	
	
	save_timer = save_timer + passed
	local power = (power27_L or power27_R) and (get(msrp_main_switch) == 1 or get(gen1)+get(gen2)+get(gen3)>0 )
	
	if save_timer > 1 then
		save_timer = 0
		if (airspeed > 80 or (get(msrp_mlp_1) == 1 or get(msrp_mlp_2) == 1)) and power then
			create_file()
			write_file()
			set(msrp_recording, 1)
		else
			createFileName()
			set(msrp_recording, 0)
		end
		
	end
	
	if power then
		if power27_R then
			set(msrp_27_L_cc, 0)
			set(msrp_27_R_cc, 5)
		elseif power27_L then
			set(msrp_27_L_cc, 5)
			set(msrp_27_R_cc, 0)
		end
	else
		set(msrp_27_L_cc, 0)
		set(msrp_27_R_cc, 0)
	end
	
	
	
	set(msrp_power, bool2int(power))
	


end


