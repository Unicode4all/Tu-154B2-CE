-- this is simple logic of generators. calculations for each gen are here.


-- gen parameters
defineProperty("gen1_volt_bus", globalPropertyf("tu154b2/custom/elec/gen1_volt"))  -- generator voltage, initial 115
defineProperty("gen2_volt_bus", globalPropertyf("tu154b2/custom/elec/gen2_volt"))
defineProperty("gen3_volt_bus", globalPropertyf("tu154b2/custom/elec/gen3_volt"))
defineProperty("gen4_volt_bus", globalPropertyf("tu154b2/custom/elec/gen4_volt"))
defineProperty("gpu_volt_bus", globalPropertyf("tu154b2/custom/elec/gpu_volt"))


gen1_amp_bus_A = globalPropertyf("tu154b2/custom/elec/gen1_amp_A") -- generator current load from bus, initial 0A
gen2_amp_bus_A = globalPropertyf("tu154b2/custom/elec/gen2_amp_A") 
gen3_amp_bus_A = globalPropertyf("tu154b2/custom/elec/gen3_amp_A")
gen4_amp_bus_A = globalPropertyf("tu154b2/custom/elec/gen4_amp_A")
gpu_amp_A = globalPropertyf("tu154b2/custom/elec/gpu_amp_A")

gen1_amp_bus_B = globalPropertyf("tu154b2/custom/elec/gen1_amp_B")
gen2_amp_bus_B = globalPropertyf("tu154b2/custom/elec/gen2_amp_B") 
gen3_amp_bus_B = globalPropertyf("tu154b2/custom/elec/gen3_amp_B")
gen4_amp_bus_B = globalPropertyf("tu154b2/custom/elec/gen4_amp_B")
gpu_amp_B = globalPropertyf("tu154b2/custom/elec/gpu_amp_B")

gen1_amp_bus_C = globalPropertyf("tu154b2/custom/elec/gen1_amp_C")
gen2_amp_bus_C = globalPropertyf("tu154b2/custom/elec/gen2_amp_C") 
gen3_amp_bus_C = globalPropertyf("tu154b2/custom/elec/gen3_amp_C")
gen4_amp_bus_C = globalPropertyf("tu154b2/custom/elec/gen4_amp_C")
gpu_amp_C = globalPropertyf("tu154b2/custom/elec/gpu_amp_C")


defineProperty("gen1_overload", globalPropertyf("tu154b2/custom/elec/gen1_overload")) -- 140A maximum
defineProperty("gen2_overload", globalPropertyf("tu154b2/custom/elec/gen2_overload"))
defineProperty("gen3_overload", globalPropertyf("tu154b2/custom/elec/gen3_overload"))
defineProperty("gen4_overload", globalPropertyf("tu154b2/custom/elec/gen4_overload"))
defineProperty("gpu_overload", globalPropertyi("tu154b2/custom/elec/gpu_overload"))

-- controls
defineProperty("gen_1_on", globalPropertyi("tu154b2/custom/switchers/eng/gen_1_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_2_on", globalPropertyi("tu154b2/custom/switchers/eng/gen_2_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("gen_3_on", globalPropertyi("tu154b2/custom/switchers/eng/gen_3_on")) -- выключатель генератора 1. -1 - проверка, 0 - выкл, +1 - вкл
defineProperty("apu_gen_on", globalPropertyi("tu154b2/custom/switchers/eng/apu_gen_on")) -- выключатель ген ВСУ
defineProperty("gpu_on_sw", globalPropertyi("tu154b2/custom/switchers/eng/gpu_on")) -- выключатель РАП

defineProperty("gen1_work", globalPropertyf("tu154b2/custom/elec/gen1_work"))  -- generators connected to the busses and working
defineProperty("gen2_work", globalPropertyf("tu154b2/custom/elec/gen2_work"))
defineProperty("gen3_work", globalPropertyf("tu154b2/custom/elec/gen3_work"))
defineProperty("gen4_work", globalPropertyf("tu154b2/custom/elec/gen4_work"))
defineProperty("gpu_work_bus", globalPropertyi("tu154b2/custom/elec/gpu_work"))


-- bus 27v
defineProperty("DC_27_volt1", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- 27 volt
defineProperty("DC_27_volt2", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- 27 volt

-- all generators work from their engines
defineProperty("eng1_N1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_1")) -- engine 1 rpm
defineProperty("eng2_N1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_2")) -- engine 2 rpm
defineProperty("eng3_N1", globalPropertyf("tu154b2/custom/gauges/engine/rpm_high_3")) -- engine 3 rpm
defineProperty("eng4_N1", globalPropertyf("tu154b2/custom/eng/apu_n1")) -- обороты ВСУ

-- default sim variables
defineProperty("sim_gen1_on", globalProperty("sim/cockpit/electrical/generator_on[0]"))
defineProperty("sim_gen2_on", globalProperty("sim/cockpit/electrical/generator_on[1]"))
defineProperty("sim_gen3_on", globalProperty("sim/cockpit/electrical/generator_on[2]"))
defineProperty("sim_gen4_on", globalProperty("sim/cockpit2/electrical/APU_generator_on"))

-- sim failures
defineProperty("sim_gen1_fail", globalPropertyi("sim/operation/failures/rel_genera0"))
defineProperty("sim_gen2_fail", globalPropertyi("sim/operation/failures/rel_genera1"))
defineProperty("sim_gen3_fail", globalPropertyi("sim/operation/failures/rel_genera2"))
defineProperty("apu_gen_fail", globalPropertyi("tu154b2/custom/failures/apu_gen_fail"))

defineProperty("avto_1", globalPropertyf("sim/custom/elec/gen_1_bus_auto"))
defineProperty("avto_2", globalPropertyf("sim/custom/elec/gen_2_bus_auto"))
defineProperty("avto_3", globalPropertyf("sim/custom/elec/gen_3_bus_auto"))
defineProperty("vsu_rezh", globalPropertyi("tu154b2/custom/eng/apu_ready"))
defineProperty("freq_gen_1", globalPropertyf("tu154b2/custom/elec/gen_1_freq")) 
defineProperty("freq_gen_2", globalPropertyf("tu154b2/custom/elec/gen_2_freq")) 
defineProperty("freq_gen_3", globalPropertyf("tu154b2/custom/elec/gen_3_freq")) 
defineProperty("freq_gen_4", globalPropertyf("tu154b2/custom/elec/gen_4_freq")) 
defineProperty("gen_1_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_1_regulator_fail"))
defineProperty("gen_2_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_2_regulator_fail"))
defineProperty("gen_3_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_3_regulator_fail"))
defineProperty("gen_4_reg_fail", globalPropertyi("tu154b2/custom/failures/gen_4_regulator_fail"))
defineProperty("gen_1_run", globalPropertyi("tu154b2/custom/elec/gen1_run"))
defineProperty("gen_2_run", globalPropertyi("tu154b2/custom/elec/gen2_run"))
defineProperty("gen_3_run", globalPropertyi("tu154b2/custom/elec/gen3_run"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("pilot_hdg", globalPropertyf("sim/graphics/view/pilots_head_psi")) -- CW from forward in cockpit
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX")) -- Position of pilot's head relative to CG
defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY")) -- Position of pilot's head relative to CG
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment

defineProperty("acf_hdg", globalPropertyf("sim/flightmodel/position/psi")) -- degrees	The true heading of the aircraft in degrees from the Z axis - OpenGL coordinates
defineProperty("acf_X", globalPropertyf("sim/flightmodel/position/local_x")) -- The location of the plane in OpenGL coordinates
defineProperty("acf_Y", globalPropertyf("sim/flightmodel/position/local_y")) -- The location of the plane in OpenGL coordinates
defineProperty("acf_Z", globalPropertyf("sim/flightmodel/position/local_z")) -- The location of the plane in OpenGL coordinates
defineProperty("cam_HDG", globalPropertyf("sim/graphics/view/view_heading")) -- CW from true north
defineProperty("cam_X", globalPropertyf("sim/graphics/view/view_x")) -- The location of the camera, X coordinate (OpenGL)
defineProperty("cam_Y", globalPropertyf("sim/graphics/view/view_y")) -- The location of the camera, Y coordinate (OpenGL)
defineProperty("cam_Z", globalPropertyf("sim/graphics/view/view_z")) -- The location of the camera, Z coordinate (OpenGL)

defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door")) 
defineProperty("cockpit_window_left", globalPropertyf("tu154b2/custom/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154b2/custom/anim/cockpit_window_right")) -- открытие форточки

defineProperty("pax_door_1", globalPropertyf("tu154b2/custom/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154b2/custom/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154b2/custom/anim/pax_door_3")) -- положение правых аварийных дверей

defineProperty("eng_main_vol", globalPropertyf("sim/operation/sound/engine_volume_ratio")) 

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control


local ppo_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ppo_L.wav')
local ppo_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ppo_R.wav')
setSamplePitch(ppo_L, 600)
setSamplePitch(ppo_R, 600)
local apu_gen_counter = 0
local gen_1_counter = 1
local gen_2_counter = 1
local gen_3_counter = 1
local gen_4_counter = 0

local gen_on_1_last = get(gen_1_on)
local gen_on_2_last = get(gen_2_on)
local gen_on_3_last = get(gen_3_on)

local ovrld_count_1 = 0
local ovrld_count_2 = 0
local ovrld_count_3 = 0
local ovrld_count_4 = 0

local gen1_volt = 0
local gen2_volt = 0
local gen3_volt = 0
local gen4_volt = 0

local gen1_volt_tgt = 118.5
local gen2_volt_tgt = 119.2
local gen3_volt_tgt = 118.8
local gen4_volt_tgt = 118.3

local gen1_fail_timer=0
local gen2_fail_timer=0
local gen3_fail_timer=0
local gen4_fail_timer=0

local gen1_amp_prev=0
local gen2_amp_prev=0
local gen3_amp_prev=0
local gen4_amp_prev=0

local freq_1=400
local freq_2=400
local freq_3=400
local freq_4=400
local gpu_freq_tgt=400+math.random(-2,2)

local gen_work_1=0
local gen_work_2=0
local gen_work_3=0
local gen_work_4=0

local switch_timer_1=0
local switch_timer_3=0
local switch_timer_2=0
gn_prev=0


local cam_hd = get(cam_HDG)
local acf_hd = get(acf_hdg)

local cam_x = get(cam_X)
local cam_y = get(cam_Y)
local cam_z = get(cam_Z)
	
local acf_x = get(acf_X)
local acf_y = get(acf_Y)
local acf_z = get(acf_Z)

local cam_dist_last=0

local function out_balance (src_x, src_z, src_hdg, src_cone, fade_deg, fade_dist)


	-- need to calculate the world location of the sound source
	local hdg_rad = math.rad(acf_hd)
	local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	local z_s = acf_z - src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	
	
	local angle2source = cam_hd + math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) -- angle from camera to the source
	
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	
	local angle2cam = math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) + acf_hd + src_hdg - 180 -- angle from source to camera
	
	while angle2cam > 180 do angle2cam = angle2cam - 360 end
	while angle2cam < -180 do angle2cam = angle2cam + 360 end
	
	local dist = math.sqrt(math.pow(x_s - cam_x, 2) + math.pow(z_s - cam_z, 2) + math.pow(cam_y - acf_y, 2))
	
	if dist < 1 then dist = 1 end
	
	local dist_coef = fade_dist / dist ^ 1.6
	if dist_coef > 1.5 then dist_coef = 1.5 end
	
	local cone_angle = math.abs(angle2cam)
	
	while cone_angle > 180 do cone_angle = cone_angle - 360 end
	--while cone_angle < 0 do cone_angle = cone_angle + 180 end
	
	local cone_coef = 1
	
	if cone_angle > src_cone then
		cone_coef = math.max(1 - (cone_angle - src_cone) / (fade_deg), 0)
	end
	
	--print(cone_angle)
	
	
	
	if cone_coef > 1 then cone_coef = 1 end
	
	
	

	local ch_L = (0.05 + (1 + math.sin(math.rad(angle2source))) * 0.7) * dist_coef * cone_coef
	local ch_R = (0.05 + (1 + math.sin(math.rad(-angle2source))) * 0.7) * dist_coef * cone_coef
	
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end
	
	
	
	
	return ch_L, ch_R
end


local function inn_balance2 (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.8/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) ) 
	local ch_R = (0.8/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end

	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end




function update() -- every frame calculations are here
	-- pre calculation defifnitions
	
	local passed = get(frame_time)
	local MASTER = get(ismaster) ~= 1	
	if passed > 0 then
		
		if switch_timer_1>0 then
			switch_timer_1=switch_timer_1-passed
		end
		if switch_timer_2>0 then
			switch_timer_2=switch_timer_2-passed
		end
		if switch_timer_3>0 then
			switch_timer_3=switch_timer_3-passed
		end
		local eng_rpm1 = get(eng1_N1)
		local eng_rpm2 = get(eng2_N1)
		local eng_rpm3 = get(eng3_N1)
		local eng_rpm4 = get(eng4_N1)
		
		local gen1_freq_tgt=400*math.min(1,eng_rpm1/40)
		local gen2_freq_tgt=400.5*math.min(1,eng_rpm2/40)
		local gen3_freq_tgt=399.5*math.min(1,eng_rpm3/40)
		local gen4_freq_tgt=400 * eng_rpm4/99
		gen4_volt_tgt = 118.3 * eng_rpm4/99
		
		local eng1_work = 0
		local eng2_work = 0
		local eng3_work = 0
		local eng4_work = 0
		
		local gen1_amp = (get(gen1_amp_bus_A)+get(gen1_amp_bus_B)+get(gen1_amp_bus_C))/3
		local gen2_amp = (get(gen2_amp_bus_A)+get(gen2_amp_bus_B)+get(gen2_amp_bus_C))/3
		local gen3_amp = (get(gen3_amp_bus_A)+get(gen3_amp_bus_B)+get(gen3_amp_bus_C))/3
		local gen4_amp = (get(gen4_amp_bus_A)+get(gen4_amp_bus_B)+get(gen4_amp_bus_C))/3
		
		local avt_1=get(avto_1)
		local avt_2=get(avto_2)
		local avt_3=get(avto_3)
		
		local DC = 0-- generator cannot work, if there is no power for start it.
		if get(DC_27_volt1) > 13 or get(DC_27_volt2) > 13 then
			DC = 1 -- generators on Tu154 requres 27v power to connect on bus
		end

		local gen_on1 = get(gen_1_on)*(1-avt_1)
		local gen_on2 = get(gen_2_on)*(1-avt_2)
		local gen_on3 = get(gen_3_on)*(1-avt_3)
		local gen_on4 = get(apu_gen_on)
		
		if gen_on1 ~= gen_on_1_last then switch_timer_1 = 0.05 end -- check switch through 0
		if gen_on2 ~= gen_on_2_last then switch_timer_2 = 0.05 end -- check switch through 0
		if gen_on3 ~= gen_on_3_last then switch_timer_3 = 0.05 end -- check switch through 0
		
		gen_on_1_last = get(gen_1_on)
		gen_on_2_last = get(gen_2_on)
		gen_on_3_last = get(gen_3_on)

		-- check engine work
		if eng_rpm1 > 48 then eng1_work = 1 else eng1_work = 0 end
		if eng_rpm2 > 48 then eng2_work = 1 else eng2_work = 0 end
		if eng_rpm3 > 48 then eng3_work = 1 else eng3_work = 0 end
		if get(vsu_rezh) > 0 then eng4_work = 1 else eng4_work = 0 end
		
		-- sim generators failures
		local gen1_fail = get(sim_gen1_fail) == 6 or get(gen1_overload) == 1 or gen1_fail_timer>=1
		local gen2_fail = get(sim_gen2_fail) == 6 or get(gen2_overload) == 1
		local gen3_fail = get(sim_gen3_fail) == 6 or get(gen3_overload) == 1
		local gen4_fail = get(gen4_overload) == 1 or get(apu_gen_fail) == 1

		-- calculations for generator 1
		--local gen_work_1 = 0
		local gen_run_1 = 0
		if math.max(math.abs(gen_on1),avt_1) * DC * eng1_work == 1 and not gen1_fail then 
			gen_run_1=1
		end
				
		-- if gen_1_counter > 1 then 
			-- gen_1_counter = 1
			-- gen_work_1 = 1
		-- end
		local fail_1=get(gen_1_reg_fail)
		freq_1=freq_1+(gen1_amp_prev-gen1_amp)/20*(1+fail_1*5) -- load induced change
		if gen_run_1==1 then
			freq_1=freq_1-(freq_1-gen1_freq_tgt)*passed*1.5*(1-fail_1)-- frequency regulator
		else
			if freq_1>0 then
				freq_1=freq_1-passed*40
			end
		end
		gen1_volt =gen1_volt + (gen1_amp_prev-gen1_amp) / 30
		gen1_volt = (gen1_volt - (gen1_volt-gen1_volt_tgt*gen_run_1)*passed*3)*bool2int(freq_1>100)  -- voltage regulator 
		-- connect to busses
		if freq_1>380 and gen1_volt>105 and gen1_fail_timer<1 and gen_work_1==0 and (gen_on1~=0 or avt_1==1) and switch_timer_1<=0 then
			gen_work_1=1
			if freq_1<385 then
				----------- PPO sound ------------
				local main_vol = get(eng_main_vol)
				cam_hd = get(cam_HDG)
				acf_hd = get(acf_hdg)
				
				cam_x = get(cam_X)
				cam_y = get(cam_Y)
				cam_z = get(cam_Z)
				
				acf_x = get(acf_X)
				acf_y = get(acf_Y)
				acf_z = get(acf_Z)
				local cam_dist = math.sqrt(math.pow(acf_x - cam_x, 2) + math.pow(acf_z - cam_z, 2) + math.pow(cam_y - acf_y, 2))
				
				local external = 0
				if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.4 or get(vr_outside)==1 then
				   external = 1
				end
				if external == 0 then -- internal

					local z_pos=get(pilot_Z)+1.42
					local x_pos=get(pilot_X)
					local plt_hdg=get(pilot_hdg)
					local dist_windows=math.max(-1*0.4/10*math.abs(z_pos+21.2)+1,0)
					local dist_door1=math.max(-1*0.4/10*math.abs(z_pos+17.62)+1,0)
					local dist_door2=math.max(-1*0.4/10*math.abs(z_pos+8.12)+1,0)
					local dist_door3=math.max(-1*0.4/10*math.abs(z_pos+6.57)+1,0)
					local cockpit_L,cockpit_R=inn_balance2 (0, -21.2, x_pos, z_pos , plt_hdg)
					local win1_L, win1_R=inn_balance2 (-0.7, -21.2, x_pos, z_pos , plt_hdg)
					local win2_L, win2_R=inn_balance2 (0.7, -21.2, x_pos, z_pos , plt_hdg)
					local door1_L, door1_R=inn_balance2 (-1.87, -17.62, x_pos, z_pos , plt_hdg)
					local door2_L, door2_R=inn_balance2 (-1.98, -6.57, x_pos, z_pos , plt_hdg)
					local door3_L, door3_R=inn_balance2 (1.95, -8.12, x_pos, z_pos , plt_hdg)
					local cpt_door = get(cockpit_door)
					local cpt_door = math.min(cpt_door,0.94)+0.06
					local chan_left2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_L, get(cockpit_window_right)*dist_windows*0.7*win2_L, get(pax_door_1) * cpt_door*0.8*dist_door1*door1_L, get(pax_door_2) * cpt_door*1.1*dist_door2*door2_L, get(pax_door_3) * cpt_door*1*dist_door3*door3_L)
					if z_pos>-19 then
						chan_left2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_L, get(pax_door_1) * 0.8*dist_door1*door1_L, get(pax_door_2) * 1.1*dist_door2*door2_L, get(pax_door_3) * 1*dist_door3*door3_L)
					end
					local chan_right2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_R, get(cockpit_window_right)*dist_windows*0.7*win2_R, get(pax_door_1) * cpt_door*0.8*dist_door1*door1_R, get(pax_door_2) * cpt_door*1.1*dist_door2*door2_R, get(pax_door_3) * cpt_door*1*dist_door3*door3_R)
					if z_pos>-19 then
						chan_right2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_R, get(pax_door_1) * 0.8*dist_door1*door1_R, get(pax_door_2) * 1.1*dist_door2*door2_R, get(pax_door_3) * 1*dist_door3*door3_R)
					end
					-- local ppo_gn=get(db1)*1000
					-- local ppo_pt=get(db2)*1000
					-- setSamplePitch(ppo_L, ppo_pt)
					-- setSamplePitch(ppo_R, ppo_pt)
					setSampleGain(ppo_L, 50 * main_vol*chan_left2)
					setSampleGain(ppo_R, 50 * main_vol*chan_right2)
				else
					local chan_left2, chan_right2 = out_balance (0, 9.18, 0, 90, 120, 700)
					setSampleGain(ppo_L, 100*main_vol*chan_left2)
					setSampleGain(ppo_R, 100*main_vol*chan_right2)
				end
				playSample(ppo_L,false)
				playSample(ppo_R,false)
			end
		elseif gen_work_1==1 and (gen1_fail_timer>=1 or (gen_on1==0 and avt_1==0) or switch_timer_1>0 or eng1_work==0) then
			gen_work_1=0
		end
		--connetion delay
		if gen_work_1 == 1 then 
			gen_1_counter = 1
		else 
			if gen_1_counter>0 then
				gen_1_counter = 0
			end
		end

		if gen_1_counter > 1 then 
			gen_1_counter = 1
		end
		local gen_on_bus_1=bool2int(gen_1_counter==1 and gen_on1==1)
		 		
		-- voltage/freq protection
		if gen1_volt < 105 and gen_on1 ~=0 and gen_1_counter==1 then
			gen1_fail_timer=gen1_fail_timer+passed/4
		elseif gen1_volt > 127 and gen_on1 ~=0 and gen_1_counter==1  then
			gen1_fail_timer=gen1_fail_timer+passed*2
		elseif (freq_1<375 or freq_1>420) and gen_on1 ~=0 and gen_1_counter==1 then
			gen1_fail_timer=gen1_fail_timer+passed/10
		elseif gen_on1==0 then
			gen1_fail_timer=0
		end
		gen1_amp_prev=gen1_amp
		-- calculations for generator 2
		local gen_run_2 = 0
		if math.max(math.abs(gen_on2),avt_2) * DC * eng2_work == 1 and not gen2_fail then 
			gen_run_2=1
		end
				
		-- if gen_2_counter > 1 then 
			-- gen_2_counter = 1
			-- gen_work_2 = 1
		-- end
		local fail_2=get(gen_2_reg_fail)
		freq_2=freq_2+(gen2_amp_prev-gen2_amp)/20*(1+fail_2*5) -- load induced change
		if gen_run_2==1 then
			freq_2=freq_2-(freq_2-gen2_freq_tgt)*passed*1.5*(1-fail_2)-- frequency regulator
		else
			if freq_2>0 then
				freq_2=freq_2-passed*40
			end
		end
		gen2_volt =gen2_volt + (gen2_amp_prev-gen2_amp) / 30
		gen2_volt = (gen2_volt - (gen2_volt-gen2_volt_tgt*gen_run_2)*passed*3)*bool2int(freq_2>100)  -- voltage regulator 
		-- connect to busses
		if freq_2>380 and gen2_volt>105 and gen2_fail_timer<1 and gen_work_2==0 and (gen_on2~=0 or avt_2==1) and switch_timer_2<=0 then
			gen_work_2=1
			if freq_2<385 then
				----------- PPO sound ------------
				local main_vol = get(eng_main_vol)
				cam_hd = get(cam_HDG)
				acf_hd = get(acf_hdg)
				
				cam_x = get(cam_X)
				cam_y = get(cam_Y)
				cam_z = get(cam_Z)
				
				acf_x = get(acf_X)
				acf_y = get(acf_Y)
				acf_z = get(acf_Z)
				local cam_dist = math.sqrt(math.pow(acf_x - cam_x, 2) + math.pow(acf_z - cam_z, 2) + math.pow(cam_y - acf_y, 2))
				
				local external = 0
				if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.4 or get(vr_outside)==1 then
				   external = 1
				end
				if external == 0 then -- internal

					local z_pos=get(pilot_Z)+1.42
					local x_pos=get(pilot_X)
					local plt_hdg=get(pilot_hdg)
					local dist_windows=math.max(-1*0.4/10*math.abs(z_pos+21.2)+1,0)
					local dist_door1=math.max(-1*0.4/10*math.abs(z_pos+17.62)+1,0)
					local dist_door2=math.max(-1*0.4/10*math.abs(z_pos+8.12)+1,0)
					local dist_door3=math.max(-1*0.4/10*math.abs(z_pos+6.57)+1,0)
					local cockpit_L,cockpit_R=inn_balance2 (0, -21.2, x_pos, z_pos , plt_hdg)
					local win1_L, win1_R=inn_balance2 (-0.7, -21.2, x_pos, z_pos , plt_hdg)
					local win2_L, win2_R=inn_balance2 (0.7, -21.2, x_pos, z_pos , plt_hdg)
					local door1_L, door1_R=inn_balance2 (-1.87, -17.62, x_pos, z_pos , plt_hdg)
					local door2_L, door2_R=inn_balance2 (-1.98, -6.57, x_pos, z_pos , plt_hdg)
					local door3_L, door3_R=inn_balance2 (1.95, -8.12, x_pos, z_pos , plt_hdg)
					local cpt_door = get(cockpit_door)
					local cpt_door = math.min(cpt_door,0.94)+0.06
					local chan_left2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_L, get(cockpit_window_right)*dist_windows*0.7*win2_L, get(pax_door_1) * cpt_door*0.8*dist_door1*door1_L, get(pax_door_2) * cpt_door*1.1*dist_door2*door2_L, get(pax_door_3) * cpt_door*1*dist_door3*door3_L)
					if z_pos>-19 then
						chan_left2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_L, get(pax_door_1) * 0.8*dist_door1*door1_L, get(pax_door_2) * 1.1*dist_door2*door2_L, get(pax_door_3) * 1*dist_door3*door3_L)
					end
					local chan_right2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_R, get(cockpit_window_right)*dist_windows*0.7*win2_R, get(pax_door_1) * cpt_door*0.8*dist_door1*door1_R, get(pax_door_2) * cpt_door*1.1*dist_door2*door2_R, get(pax_door_3) * cpt_door*1*dist_door3*door3_R)
					if z_pos>-19 then
						chan_right2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_R, get(pax_door_1) * 0.8*dist_door1*door1_R, get(pax_door_2) * 1.1*dist_door2*door2_R, get(pax_door_3) * 1*dist_door3*door3_R)
					end
					-- local ppo_gn=get(db1)*1000
					-- local ppo_pt=get(db2)*1000
					-- setSamplePitch(ppo_L, ppo_pt)
					-- setSamplePitch(ppo_R, ppo_pt)
					setSampleGain(ppo_L, 50 * main_vol*chan_left2)
					setSampleGain(ppo_R, 50 * main_vol*chan_right2)
				else
					local chan_left2, chan_right2 = out_balance (0, 9.18, 0, 90, 120, 700)
					setSampleGain(ppo_L, 100*main_vol*chan_left2)
					setSampleGain(ppo_R, 100*main_vol*chan_right2)
				end
				playSample(ppo_L,false)
				playSample(ppo_R,false)
			end
		elseif gen_work_2==1 and (gen2_fail_timer>=1 or (gen_on2==0 and avt_2==0) or switch_timer_2>0 or eng2_work==0) then
			gen_work_2=0
		end
		--connetion delay
		if gen_work_2 == 1 then 
			gen_2_counter = 1
		else 
			if gen_2_counter>0 then
				gen_2_counter = 0
			end
		end
		
		if gen_2_counter > 1 then 
			gen_2_counter = 1
		end
		local gen_on_bus_2=bool2int(gen_2_counter==1 and gen_on2==1)
		 		
		-- voltage/freq protection
		if gen2_volt < 105 and gen_on2 ~=0 and gen_2_counter==1 then
			gen2_fail_timer=gen2_fail_timer+passed/4
		elseif gen2_volt > 127 and gen_on2 ~=0 and gen_2_counter==1  then
			gen2_fail_timer=gen2_fail_timer+passed*2
		elseif (freq_2<375 or freq_2>420) and gen_on2 ~=0 and gen_2_counter==1 then
			gen2_fail_timer=gen2_fail_timer+passed/10
		elseif gen_on2==0 then
			gen2_fail_timer=0
		end
		gen2_amp_prev=gen2_amp
		-- calculations for generator 3
		local gen_run_3 = 0
		if math.max(math.abs(gen_on3),avt_3) * DC * eng3_work == 1 and not gen3_fail then 
			gen_run_3=1
		end
				
		-- if gen_3_counter > 1 then 
			-- gen_3_counter = 1
			-- gen_work_3 = 1
		-- end
		local fail_3=get(gen_3_reg_fail)
		freq_3=freq_3+(gen3_amp_prev-gen3_amp)/20*(1+fail_3*5) -- load induced change
		if gen_run_3==1 then
			freq_3=freq_3-(freq_3-gen3_freq_tgt)*passed*1.5*(1-fail_3)-- frequency regulator
		else
			if freq_3>0 then
				freq_3=freq_3-passed*40
			end
		end
		gen3_volt =gen3_volt + (gen3_amp_prev-gen3_amp) / 30
		gen3_volt = (gen3_volt - (gen3_volt-gen3_volt_tgt*gen_run_3)*passed*3)*bool2int(freq_3>100)  -- voltage regulator 
		-- connect to busses
		if freq_3>380 and gen3_volt>105 and gen3_fail_timer<1 and gen_work_3==0 and (gen_on3~=0 or avt_3==1) and switch_timer_3<=0  then
			gen_work_3=1
			if freq_3<385 then
				----------- PPO sound ------------
				local main_vol = get(eng_main_vol)
				cam_hd = get(cam_HDG)
				acf_hd = get(acf_hdg)
				
				cam_x = get(cam_X)
				cam_y = get(cam_Y)
				cam_z = get(cam_Z)
				
				acf_x = get(acf_X)
				acf_y = get(acf_Y)
				acf_z = get(acf_Z)
				local cam_dist = math.sqrt(math.pow(acf_x - cam_x, 2) + math.pow(acf_z - cam_z, 2) + math.pow(cam_y - acf_y, 2))
				
				local external = 0
				if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -0.4 or get(vr_outside)==1 then
				   external = 1
				end
				if external == 0 then -- internal

					local z_pos=get(pilot_Z)+1.42
					local x_pos=get(pilot_X)
					local plt_hdg=get(pilot_hdg)
					local dist_windows=math.max(-1*0.4/10*math.abs(z_pos+21.2)+1,0)
					local dist_door1=math.max(-1*0.4/10*math.abs(z_pos+17.62)+1,0)
					local dist_door2=math.max(-1*0.4/10*math.abs(z_pos+8.12)+1,0)
					local dist_door3=math.max(-1*0.4/10*math.abs(z_pos+6.57)+1,0)
					local cockpit_L,cockpit_R=inn_balance2 (0, -21.2, x_pos, z_pos , plt_hdg)
					local win1_L, win1_R=inn_balance2 (-0.7, -21.2, x_pos, z_pos , plt_hdg)
					local win2_L, win2_R=inn_balance2 (0.7, -21.2, x_pos, z_pos , plt_hdg)
					local door1_L, door1_R=inn_balance2 (-1.87, -17.62, x_pos, z_pos , plt_hdg)
					local door2_L, door2_R=inn_balance2 (-1.98, -6.57, x_pos, z_pos , plt_hdg)
					local door3_L, door3_R=inn_balance2 (1.95, -8.12, x_pos, z_pos , plt_hdg)
					local cpt_door = get(cockpit_door)
					local cpt_door = math.min(cpt_door,0.94)+0.06
					local chan_left2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_L, get(cockpit_window_right)*dist_windows*0.7*win2_L, get(pax_door_1) * cpt_door*0.8*dist_door1*door1_L, get(pax_door_2) * cpt_door*1.1*dist_door2*door2_L, get(pax_door_3) * cpt_door*1*dist_door3*door3_L)
					if z_pos>-19 then
						chan_left2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_L, get(pax_door_1) * 0.8*dist_door1*door1_L, get(pax_door_2) * 1.1*dist_door2*door2_L, get(pax_door_3) * 1*dist_door3*door3_L)
					end
					local chan_right2 = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_R, get(cockpit_window_right)*dist_windows*0.7*win2_R, get(pax_door_1) * cpt_door*0.8*dist_door1*door1_R, get(pax_door_2) * cpt_door*1.1*dist_door2*door2_R, get(pax_door_3) * cpt_door*1*dist_door3*door3_R)
					if z_pos>-19 then
						chan_right2 = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*0.7*win2_R, get(pax_door_1) * 0.8*dist_door1*door1_R, get(pax_door_2) * 1.1*dist_door2*door2_R, get(pax_door_3) * 1*dist_door3*door3_R)
					end
					-- local ppo_gn=get(db1)*1000
					-- local ppo_pt=get(db2)*1000
					-- setSamplePitch(ppo_L, ppo_pt)
					-- setSamplePitch(ppo_R, ppo_pt)
					setSampleGain(ppo_L, 50 * main_vol*chan_left2)
					setSampleGain(ppo_R, 50 * main_vol*chan_right2)
				else
					local chan_left2, chan_right2 = out_balance (0, 9.18, 0, 90, 120, 700)
					setSampleGain(ppo_L, 100*main_vol*chan_left2)
					setSampleGain(ppo_R, 100*main_vol*chan_right2)
				end
				playSample(ppo_L,false)
				playSample(ppo_R,false)
			end
		elseif gen_work_3==1 and (gen3_fail_timer>=1 or (gen_on3==0 and avt_3==0) or switch_timer_3>0 or eng3_work==0) then
			gen_work_3=0
		end
		--connetion delay
		if gen_work_3 == 1 then 
			gen_3_counter = 1
		else 
			if gen_3_counter>0 then
				gen_3_counter = 0
			end
		end
		
		if gen_3_counter > 1 then 
			gen_3_counter = 1
		end
		local gen_on_bus_3=bool2int(gen_3_counter==1 and gen_on3==1)
		 		
		-- voltage/freq protection
		if gen3_volt < 105 and gen_on3 ~=0 and gen_3_counter==1 then
			gen3_fail_timer=gen3_fail_timer+passed/4
		elseif gen3_volt > 127 and gen_on3 ~=0 and gen_3_counter==1  then
			gen3_fail_timer=gen3_fail_timer+passed*2
		elseif (freq_3<375 or freq_3>420) and gen_on3 ~=0 and gen_3_counter==1 then
			gen3_fail_timer=gen3_fail_timer+passed/10
		elseif gen_on3==0 then
			gen3_fail_timer=0
		end
		gen3_amp_prev=gen3_amp

		-- calculations for generator 4 (APU)
		local gen_run_4 = 0
		if gen_on4* eng4_work * DC==1 and not gen4_fail then 
			gen_run_4=1
		end
				
		-- if gen_4_counter > 1 then 
			-- gen_4_counter = 1
			-- gen_work_4 = 1
		-- end
		local gen_on_bus_4=bool2int(gen_4_counter==1 and gen_on4==1)
		local fail_4=get(gen_4_reg_fail)
		--freq_4=freq_4+(gen4_amp_prev-gen4_amp)/20*(1+fail_4*5) -- load induced change
		freq_4=gen4_freq_tgt*gen_run_4-- frequency regulator
		if gen_on_bus_4==1 then
			gen4_volt =gen4_volt + (gen4_amp_prev-gen4_amp) / 30 
			gen4_volt = (gen4_volt - (gen4_volt-gen4_volt_tgt)*passed*2) * (1-fail_4)*gen_4_counter*gen_on4  -- voltage regulator 
		else
			gen4_volt = gen4_volt_tgt * (1-fail_4)*gen_run_4
		end
		-- connect to busses
		if freq_4>380 and gen4_volt>105 and gen4_fail_timer<1 and gen_work_4==0 and gen_on4~=0 then
			gen_work_4=1
		elseif gen_work_4==1 and (gen4_fail_timer>=1 or gen_on4==0 or eng4_work==0) then
			gen_work_4=0
		end
		--small connetion delay for APU
		if gen_work_4 == 1 then 
			gen_4_counter = gen_4_counter + passed * 40
		else 
			if gen_4_counter>0 then
				gen_4_counter = 0
			end
		end
		if gen_4_counter > 1 then 
			gen_4_counter = 1
		end
		
		 		
		-- voltage/freq protection
		if gen4_volt < 105 and gen_on4 ~=0 and gen_4_counter==1 then
			gen4_fail_timer=gen4_fail_timer+passed/4
		elseif gen4_volt > 127 and gen_on4 ~=0 and gen_4_counter==1  then
			gen4_fail_timer=gen4_fail_timer+passed*2
		elseif (freq_4<375 or freq_4>420) and gen_on4 ~=0 and gen_4_counter==1 then
			gen4_fail_timer=gen4_fail_timer+passed/10
		elseif gen_on4==0 then
			gen4_fail_timer=0
		end
		gen4_amp_prev=gen4_amp

		
		-- check load on generators
		if gen1_amp > 170 then 
			ovrld_count_1 = 6
		elseif gen1_amp > 145 then 
			ovrld_count_1 = ovrld_count_1 + passed
		else 
			ovrld_count_1 = 0
		end
		
		if ovrld_count_1 > 5 then 
			set(gen1_overload, 1)
		elseif gen_on1 == 0 then 
			set(gen1_overload, 0) 
		end
		
		---
		if gen2_amp > 170 then 
			ovrld_count_2 = 6
		elseif gen2_amp > 145 then 
			ovrld_count_2 = ovrld_count_2 + passed
		else
			ovrld_count_2 = 0 
		end
		
		if ovrld_count_2 > 5 then 
			set(gen2_overload, 1)
		elseif gen_on2 == 0 then 
			set(gen2_overload, 0) 
		end
		
		if gen3_amp > 170 then 
			ovrld_count_3 = 6
		elseif gen3_amp > 145 then 
			ovrld_count_3 = ovrld_count_3 + passed
		else 
			ovrld_count_3 = 0 
		end
		
		if ovrld_count_3 > 5 then 
			set(gen3_overload, 1)
		elseif gen_on3 == 0 then 
			set(gen3_overload, 0) 
		end
		
		if gen4_amp > 170 then 
			ovrld_count_4 = 6
		elseif gen4_amp > 145 then 
			ovrld_count_4 = ovrld_count_4 + passed
		else 
			ovrld_count_4 = 0 
		end
		
		if ovrld_count_4 > 5 then 
			set(gen4_overload, 1)
		elseif gen_on4 == 0 then 
			set(gen4_overload, 0) 
		end
		
		--print(ovrld_count_1, "  ", ovrld_count_2, "  ", ovrld_count_3)
		
		-- set simulator's generators status
		if gen1_volt * gen_on1 > 0 then 
			set(sim_gen1_on, 1)
		else 
			set(sim_gen1_on, 0)
		end
		
		if gen2_volt * gen_on2 > 0 then 
			set(sim_gen2_on, 1)
		else 
			set(sim_gen2_on, 0)
		end
		
		if gen3_volt * gen_on3 > 0 then 
			set(sim_gen3_on, 1)
		else 
			set(sim_gen3_on, 0)
		end
		
		if gen4_volt * gen_on4 > 0 then 
			set(sim_gen4_on, 1)
		else 
			set(sim_gen4_on, 0)
		end
		set(gen1_volt_bus, gen1_volt) 
		set(freq_gen_1,freq_1)		
		set(gen1_work, gen_on_bus_1)
		set(gen2_volt_bus, gen2_volt) 
		set(freq_gen_2,freq_2)		
		set(gen2_work, gen_on_bus_2)
		set(gen3_volt_bus, gen3_volt) 
		set(freq_gen_3,freq_3)		
		set(gen3_work, gen_on_bus_3)
		set(gen4_volt_bus, gen4_volt) 
		set(freq_gen_4,freq_4)		
		set(gen4_work, gen_on_bus_4)
		set(gen_1_run,gen_work_1)
		set(gen_2_run,gen_work_2)
		set(gen_3_run,gen_work_3)
	end
			
end
