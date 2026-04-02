-- RV-5 радио высотомер
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

-- radio altitude
defineProperty("altitude", globalPropertyf("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot"))  -- altitude, measured by gauge
defineProperty("press_altitude", globalPropertyf("sim/flightmodel2/position/pressure_altitude"))
-- controls
defineProperty("dh_set", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_left"))  -- DH angle
defineProperty("test_btn", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_button_left"))  -- Test button

defineProperty("rv_on", globalPropertyi("tu154b2/custom/switchers/ovhd/rv5_1_on"))  -- switcher

defineProperty("rv_fail", globalPropertyi("tu154b2/custom/failures/rv1_fail"))  -- fail

-- power
defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus115_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))

-- results
defineProperty("rv_angle", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_left"))  -- RV needle
defineProperty("rv_flag", globalPropertyi("tu154b2/custom/gauges/alt/radioalt_flag_left"))  -- RV flag
defineProperty("rv5_alt", globalPropertyf("tu154b2/custom/misc/rv5_alt_left"))  -- высота на левом высотомере

defineProperty("rv5_dh_signal", globalPropertyi("tu154b2/custom/misc/rv5_dh_signal_left"))

defineProperty("roll_main_mode", globalPropertyi("tu154b2/custom/absu/roll_main_mode")) -- основной режим АБСУ по крену. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("roll_sub_mode", globalPropertyi("tu154b2/custom/absu/roll_sub_mode")) 


defineProperty("rv_lamp", globalPropertyf("tu154b2/custom/lights/small/rv5_left_dh"))  -- RV lamp

defineProperty("rv_сс", globalPropertyf("tu154b2/custom/elec/rv5_left_cc"))  -- Current consumption
defineProperty("kontur_90th", globalPropertyi("sim/custom/b2/kontur_90th"))
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
bank = globalPropertyf("sim/flightmodel2/position/true_phi")

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))


local alt2angle = {
{-100000, 0},
{0, 0},
{20, 30},
{50, 80},
{100, 160},
{700, 314},
{700, 314},
{800, 340},
{8000000, 340}
}

local function needle_pos (ang_actual_prev,ang_need,dt,v_prev,k_spr,k_dmp,k_v,v_needle_max)
	local e_c=(ang_need-ang_actual_prev)*k_spr
    local v=v_prev+e_c*k_v*dt-v_prev*k_dmp
	if v>v_needle_max then
		v=v_needle_max
	elseif v<-v_needle_max then
		v=-v_needle_max
	end
    local ang_actual=ang_actual_prev+v*dt
	if ang_actual<0 or ang_actual>340 then
        v=-v
    end
	return v,ang_actual
end

local k_dmp=0.15*8
local k_spr=2000*5
local k_v=0.008*10
local v_angle_max=50

local alt_angle = 0
local alt_angle_act = 0
local alt_angle_v = 0
local start_timer = 0
local alt = 0
local loaded=false

function update()
	
	local passed = get(frame_time)
	
	local power = get(bus27_volt) > 13 and get(bus115_volt) > 100 and get(rv_on) == 1 and get(rv_fail) == 0
	local test = power and get(test_btn) == 1 and (get(roll_sub_mode)~=6 or get(roll_main_mode)~=2)
	local roll=math.cos(math.rad(get(bank)))
	local rad_alt=get(altitude) * 0.3048 / math.max(0.1,math.abs(roll))
	
	if power then
		start_timer = start_timer + passed
		
		if start_timer < 20 then 
			alt_angle = 340
			alt = 800
			if test then 
				alt = 15 
				alt_angle = interpolate(alt2angle, alt)
			end
		elseif start_timer <= 30 then 
			alt_angle = 340 - (start_timer - 20) * 34
			alt = rad_alt
			if alt_angle < interpolate(alt2angle, alt) then alt_angle = interpolate(alt2angle, alt) end
			if test then 
				alt = 15 
				alt_angle = interpolate(alt2angle, alt)
			end
		else 
			alt = rad_alt
			if alt > 800 then alt = 800
			elseif alt < 0 then alt = 0 end
			
			if test then alt = 15 end
			
			alt_angle = interpolate(alt2angle, alt)
			
			if start_timer > 50 then start_timer = 50 end
		end
		

		
		set(rv_сс, 1*bool2int(get(press_altitude)<3850*3.28 or get(kontur_90th)>0))
	else
		start_timer = start_timer - passed
		if start_timer < 20 then start_timer = 0 end
		--if start_timer < 0 then start_timer = 0 end
		set(rv_сс, 0)
	end
	-- if start_timer>0 and not loaded then
		-- --set(rv_angle,0)
		-- alt_angle_act=0
		-- alt_angle=0
		-- loaded=true
	-- end
	-- local v_alt_set,alt_angle_set = needle_pos (alt_angle_act,alt_angle,passed,alt_angle_v,k_spr,k_dmp,k_v,v_angle_max)
	-- alt_angle_act=alt_angle_set
	-- alt_angle_v=v_alt_set
	alt_angle_act = alt_angle_act + (alt_angle - alt_angle_act) * passed * 4
	
	-- flag logic
	local flag_show = bool2int(not power or (start_timer <= 30 and not test) or rad_alt>1500+100000*get(kontur_90th)) -- tcas equipped versions block rv1 flag from alt
	
	set(rv_flag, flag_show)
	
	-- lamp logic
	local lamp_lit = bool2int(alt_angle < get(dh_set) - 1 and power)
	
	
	
	local lamp_coef = math.max((get(bus27_volt) - 10) / 18.5, 0)
	-- set results
	if get(ismaster)~=1 then
		set(rv_lamp, lamp_lit * lamp_coef)
		set(rv5_dh_signal, lamp_lit)
		set(rv_angle, alt_angle_act)
		set(rv5_alt, alt)
	end


end


