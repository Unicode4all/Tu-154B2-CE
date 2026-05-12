-- this is logic for GPU Hobart 60kVA - 150A


-- GPU 
defineProperty("gpu_present", globalPropertyi("tu154b2/custom/anim/gpu_present")) -- 
defineProperty("gpu_work_anim", globalPropertyf("tu154b2/custom/anim/gpu_work")) -- 
defineProperty("gpu_volt", globalPropertyf("tu154b2/custom/elec/gpu_volt"))
defineProperty("gpu_load_A", globalPropertyf("tu154b2/custom/elec/gpu_amp_A"))
defineProperty("gpu_load_B", globalPropertyf("tu154b2/custom/elec/gpu_amp_B"))
defineProperty("gpu_load_C", globalPropertyf("tu154b2/custom/elec/gpu_amp_C"))
defineProperty("gpu_overload", globalPropertyi("tu154b2/custom/elec/gpu_overload"))
defineProperty("gpu_on", globalPropertyi("tu154b2/custom/switchers/eng/gpu_on")) -- выключатель РАП

defineProperty("gpu_work_bus", globalPropertyi("tu154b2/custom/elec/gpu_work"))

-- bus 27v
defineProperty("DC_27_volt1", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- 27 volt
defineProperty("DC_27_volt2", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- 27 volt

-- sim
defineProperty("GS", globalPropertyf("sim/flightmodel/position/groundspeed"))  -- ground speed
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- enviroment
defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external"))

-- coordinates of airplane and camera
defineProperty("local_x", globalPropertyf("sim/flightmodel/position/local_x")) -- position X
defineProperty("local_y", globalPropertyf("sim/flightmodel/position/local_y")) -- position Y
defineProperty("local_z", globalPropertyf("sim/flightmodel/position/local_z")) -- position Z

defineProperty("view_x", globalPropertyf("sim/graphics/view/view_x")) -- camera position X
defineProperty("view_y", globalPropertyf("sim/graphics/view/view_y")) -- camera position Y
defineProperty("view_z", globalPropertyf("sim/graphics/view/view_z")) -- camera position Z


defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX")) -- Position of pilot's head relative to CG
defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY")) -- Position of pilot's head relative to CG

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control



defineProperty("cockpit_window_left", globalPropertyf("tu154b2/custom/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154b2/custom/anim/cockpit_window_right")) -- открытие форточки

defineProperty("pax_door_1", globalPropertyf("tu154b2/custom/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154b2/custom/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154b2/custom/anim/pax_door_3")) -- положение правых аварийных дверей

defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door")) -- положение правых аварийных дверей
defineProperty("in_plane", globalPropertyf("sim/custom/t154_camera/in_plane")) -- положение правых аварийных дверей


--refuel


defineProperty("fuel_tanker", globalPropertyf("tu154b2/custom/anim/fuel_tanker")) --
defineProperty("smooth_loading", globalPropertyf("sim/custom/start_smooth_loading")) --

defineProperty("rp_test_push", globalPropertyf("sim/custom/t154gnd/rp_test_push")) -- 

defineProperty("rp_tank4_lamp", globalPropertyf("sim/custom/t154gnd/rp_tank4_lamp")) -- 
defineProperty("rp_tank1_lamp", globalPropertyf("sim/custom/t154gnd/rp_tank1_lamp")) -- 
defineProperty("rp_tank2L_lamp", globalPropertyf("sim/custom/t154gnd/rp_tank2L_lamp")) -- 
defineProperty("rp_tank3L_lamp", globalPropertyf("sim/custom/t154gnd/rp_tank3L_lamp")) -- 
defineProperty("rp_tank2R_lamp", globalPropertyf("sim/custom/t154gnd/rp_tank2R_lamp")) -- 
defineProperty("rp_tank3R_lamp", globalPropertyf("sim/custom/t154gnd/rp_tank3R_lamp")) -- 

defineProperty("acf_hdg", globalPropertyf("sim/flightmodel/position/psi")) -- degrees	The true heading of the aircraft in degrees from the Z axis - OpenGL coordinates
defineProperty("cam_HDG", globalPropertyf("sim/graphics/view/view_heading")) -- CW from true north

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
defineProperty("main_sound_on", globalPropertyi("sim/operation/sound/sound_on")) -- выключатель звука
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))
defineProperty("tech", globalPropertyi("sim/custom/t154cfg/hide_def"))
local refuel_out = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/refuel.wav')




-- local gpu_start_out = loadSample('Custom Sounds/gpu_start_out.wav')
-- local gpu_run_out = loadSample('Custom Sounds/gpu_run_out.wav')
-- local gpu_stop_out = loadSample('Custom Sounds/gpu_stop_out.wav')

--local gpu_start_inn = loadSample('Custom Sounds/gpu_start_inn.wav')
local gpu_run_L = loadSample(moduleDirectory .. '/Custom Sounds/gpu_run_L.wav')
local gpu_run_R = loadSample(moduleDirectory .. '/Custom Sounds/gpu_run_R.wav')
local gpu_start_L = loadSample(moduleDirectory .. '/Custom Sounds/gpu_start_L.wav')
local gpu_start_R = loadSample(moduleDirectory .. '/Custom Sounds/gpu_start_R.wav')
local gpu_stop_L = loadSample(moduleDirectory .. '/Custom Sounds/gpu_stop_L.wav')
local gpu_stop_R = loadSample(moduleDirectory .. '/Custom Sounds/gpu_stop_R.wav')


local work_timer = 0
local last_dist = 0
local smooth_refuel = 0


local gpu_connect_timer = 0

local gpuSoundsLoaded = true

local gpu_eject_timer = 0


-- local function loadSounds()
	-- gpu_start_out = loadSample('Custom Sounds/gpu_start_out.wav')
	-- gpu_run_out = loadSample('Custom Sounds/gpu_run_out.wav')
	-- gpu_stop_out = loadSample('Custom Sounds/gpu_stop_out.wav')
	
	-- gpu_start_inn = loadSample('Custom Sounds/gpu_start_inn.wav')
	-- gpu_run_inn = loadSample('Custom Sounds/gpu_run_inn.wav')
	-- gpu_stop_inn = loadSample('Custom Sounds/gpu_stop_inn.wav')
	
	-- gpuSoundsLoaded = true
-- end

-- local function unloadSounds()
	-- unloadSample(gpu_start_out)
	-- unloadSample(gpu_run_out)
    
	-- unloadSample(gpu_stop_out)
	
	-- unloadSample(gpu_start_inn)
	-- unloadSample(gpu_run_inn)
	-- unloadSample(gpu_stop_inn)
	
	-- gpuSoundsLoaded = false
-- end


local cam_hd = get(cam_HDG)
local acf_hd = get(acf_hdg)

local cam_x = get(view_x)
local cam_y = get(view_y)
local cam_z = get(view_z)
	
local acf_x = get(local_x)
local acf_y = get(local_y)
local acf_z = get(local_z)

local def_gpu=1
local external = 0
local gpu_pitch=1000
local gpu_volt_tgt = 120.7
local gpu_v=0
local gpu_amp_prev=0

local function out_balance (src_x, src_z, src_hdg, src_cone, fade_deg, fade_dist)


	-- need to calculate the world location of the sound source
	local hdg_rad = math.rad(acf_hd)
	local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	
	
	local angle2source = cam_hd + math.deg(math.atan2(cam_x - x_s, cam_z - z_s)) -- angle from camera to the source
	
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	--set(db3,angle2source)
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

local function inn_balance (src_x, src_z, x, z , cam_hdg)

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


function update()
    
    local inplane = 1-get(in_plane)
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.41 or get(pilot_Y) < -1 or get(vr_outside)==1 then
	   external = 1
    else
	   external = 0
    end
	local z_pos=get(pilot_Z)+1.42
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_head)
	local dist_windows=math.max(-1*0.4/10*math.abs(z_pos+21.2)+1,0)
	local dist_door1=math.max(-1*0.4/10*math.abs(z_pos+17.62)+1,0)
	local dist_door2=math.max(-1*0.4/10*math.abs(z_pos+8.12)+1,0)
	local dist_door3=math.max(-1*0.4/10*math.abs(z_pos+6.57)+1,0)
	local cockpit_L,cockpit_R=inn_balance (0, -21.2, x_pos, z_pos , plt_hdg)
	local win1_L, win1_R=inn_balance (-0.7, -21.2, x_pos, z_pos , plt_hdg)
	local win2_L, win2_R=inn_balance (0.7, -21.2, x_pos, z_pos , plt_hdg)
	local door1_L, door1_R=inn_balance (-1.87, -17.62, x_pos, z_pos , plt_hdg)
	local door2_L, door2_R=inn_balance (-1.98, -6.57, x_pos, z_pos , plt_hdg)
	local door3_L, door3_R=inn_balance (1.95, -8.12, x_pos, z_pos , plt_hdg)
	local cpt_door = get(cockpit_door)
	local cpt_door = math.min(cpt_door,0.94)+0.06
	local chan_left = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_L, math.max(get(cockpit_window_right),0.01)*dist_windows*0.9*win2_L, get(pax_door_1) * cpt_door*0.7*dist_door1*door1_L, get(pax_door_2) * cpt_door*0.5*dist_door2*door2_L, get(pax_door_3) * cpt_door*0.6*dist_door3*door3_L)
	if z_pos>-19 then
		chan_left = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*0.9*win2_L, get(pax_door_1) * 0.7*dist_door1*door1_L, get(pax_door_2) * 0.5*dist_door2*door2_L, get(pax_door_3) * 0.6*dist_door3*door3_L)
	end
	local chan_right = math.max(get(cockpit_window_left)*0.7*dist_windows*win1_R, math.max(get(cockpit_window_right),0.01)*dist_windows*0.9*win2_R, get(pax_door_1) * cpt_door*0.7*dist_door1*door1_R, get(pax_door_2) * cpt_door*0.5*dist_door2*door2_R, get(pax_door_3) * cpt_door*0.6*dist_door3*door3_R)
	if z_pos>-19 then
		chan_right = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*0.7*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*0.9*win2_R, get(pax_door_1) * 0.7*dist_door1*door1_R, get(pax_door_2) * 0.5*dist_door2*door2_R, get(pax_door_3) * 0.6*dist_door3*door3_R)
	end
	--local dist = -get(pilot_Z) + 15
	local passed = get(frame_time)

	
	-- check if GPU can be conected
	local present = get(gpu_present)
	if math.abs(get(GS)) > 0.1 then
		gpu_eject_timer = gpu_eject_timer + passed
	else
		gpu_eject_timer = 0
	end
	local new_tech=get(tech)==0
	local gpu_amp=(get(gpu_load_A)+get(gpu_load_B)+get(gpu_load_C))/3
	local gpu_pitch_tgt=1000+gpu_amp*0.5
	--local T=get(db2)
	--gpu_pitch=gpu_pitch-(gpu_pitch-gpu_pitch_tgt)*passed*get(db2)
	gpu_pitch=passed/(10+passed)*(gpu_pitch_tgt) +  gpu_pitch*10/(10+passed)
	--set(db3,gpu_pitch)
	sasl.al.setSamplePitch(gpu_run_L, gpu_pitch_tgt)
	sasl.al.setSamplePitch(gpu_run_R, gpu_pitch_tgt)
	gpu_v =gpu_v + (gpu_amp_prev-gpu_amp) / 25
	gpu_v = (gpu_v - (gpu_v-gpu_volt_tgt)*passed*1.2*(1+bool2int(new_tech)))  
	gpu_amp_prev=gpu_amp
	if gpu_eject_timer < 1 then
	
		if present == 1 then 
			work_timer = work_timer + passed * 0.25 -- 3 sec for start
		else 
			work_timer = work_timer - passed * 0.1 -- 10 sec for stop
			set(gpu_overload, 0) -- reset overload flag
		end
		-- set limits and working parameters
		if work_timer > 1 then 
			work_timer = 1
			if get(DC_27_volt1) > 13 or get(DC_27_volt2) > 13 then 
				set(gpu_volt, gpu_v * (1 - get(gpu_overload)))
			else
				set(gpu_volt, 0)
			end
		elseif work_timer < 0 then 
			work_timer = 0
			set(gpu_volt, 0)
		elseif work_timer < 0.9 then 
			set(gpu_volt, 0)
		end
		set(gpu_work_anim, work_timer) -- set animation
		
		-- connect GPU to the bus
		if get(gpu_on) == 1 then 
			gpu_connect_timer = gpu_connect_timer + passed
			if gpu_connect_timer >= 0.1 then
				if work_timer == 1 and get(gpu_overload) ~= 1 then set(gpu_work_bus, 1) 
				else set(gpu_work_bus, 0) end
				gpu_connect_timer = 0.1
			else
				set(gpu_work_bus, 0) 
			end
			
			
		else 
			set(gpu_work_bus, 0) 
			gpu_connect_timer = 0
			
		end
		
		
		
		
		-- set overload flag and reset it when GPU is disconnected
		if gpu_amp > 500 then set(gpu_overload, 1)
		elseif get(gpu_on) == 0 then set(gpu_overload, 0) end


		-- set sounds
		if work_timer > 0 and work_timer < 1 and not sasl.al.isSamplePlaying(gpu_start_L) and present == 1 then
			--sasl.al.playSample(gpu_start_out, 0)
			sasl.al.playSample(gpu_start_L, false)
			sasl.al.playSample(gpu_start_R, false)
			--sasl.al.stopSample(gpu_run_out)
			sasl.al.stopSample(gpu_run_L)
			sasl.al.stopSample(gpu_run_R)
		elseif work_timer == 1 and not sasl.al.isSamplePlaying(gpu_run_L) then
			--sasl.al.playSample(gpu_run_out, 1)
			sasl.al.playSample(gpu_run_L, true)
			sasl.al.playSample(gpu_run_R, true)
		elseif work_timer > 0 and work_timer < 1 and not sasl.al.isSamplePlaying(gpu_stop_L) and present == 0 then
			--sasl.al.playSample(gpu_stop_out, 0)
			sasl.al.playSample(gpu_stop_L, false)
			sasl.al.playSample(gpu_stop_R, false)
			--sasl.al.stopSample(gpu_start_out)
			sasl.al.stopSample(gpu_start_L)
			sasl.al.stopSample(gpu_start_R)
			--sasl.al.stopSample(gpu_run_out)
			sasl.al.stopSample(gpu_run_L)
			sasl.al.stopSample(gpu_run_R)
		elseif work_timer == 0 then
			--sasl.al.stopSample(gpu_start_out)
			sasl.al.stopSample(gpu_start_L)
			sasl.al.stopSample(gpu_start_R)
			--sasl.al.stopSample(gpu_run_out)
			sasl.al.stopSample(gpu_run_L)
			sasl.al.stopSample(gpu_run_R)
		end
        
        
        
    
        if get(fuel_tanker) == 0 and get(rp_test_push) < 1 and (get(rp_tank4_lamp)+get(rp_tank1_lamp)+get(rp_tank2L_lamp)+get(rp_tank2R_lamp)+get(rp_tank3L_lamp)+get(rp_tank3R_lamp)) > 0 then
            if not sasl.al.isSamplePlaying(refuel_out) then
                sasl.al.playSample(refuel_out,false)
            end
            if smooth_refuel < 1 then
                smooth_refuel = smooth_refuel + 2*passed
            end
        elseif get(fuel_tanker) == 0 and get(smooth_loading) > 0 then
            if not sasl.al.isSamplePlaying(refuel_out) then
                sasl.al.playSample(refuel_out,false)
            end
            if smooth_refuel < 1 then
                smooth_refuel = smooth_refuel + 2*passed
            end
        else
            if smooth_refuel > 0 then
                smooth_refuel = smooth_refuel - 2*passed
            else
                smooth_refuel = 0
                sasl.al.stopSample(refuel_out)
            end
        end
        
			-- define localtions
		cam_hd = get(cam_HDG)
		acf_hd = get(acf_hdg)
		
		cam_x = get(view_x)
		cam_y = get(view_y)
		cam_z = get(view_z)
		
		acf_x = get(local_x)
		acf_y = get(local_y)
		acf_z = get(local_z)
		-- set effects to external GPU sound
		local gpu_L, gpu_R = out_balance (3.24,-21, 0, 180, 120, 150)
		local window_open = 0 -- temp
		
		-- set sound volume
        
        
		-- set sound volume
		if external==0 then
			sasl.al.setSampleGain(gpu_run_L,  chan_left*400)
			sasl.al.setSampleGain(gpu_run_R,  chan_right*400)
			sasl.al.setSampleGain(gpu_start_L,  chan_left*400)
			sasl.al.setSampleGain(gpu_start_R,  chan_right*400)
			sasl.al.setSampleGain(gpu_stop_L,  chan_left*400)
			sasl.al.setSampleGain(gpu_stop_R,  chan_right*400)
        else
			sasl.al.setSampleGain(gpu_run_L, gpu_L*800)
			sasl.al.setSampleGain(gpu_run_R, gpu_R*800)
			sasl.al.setSampleGain(gpu_start_L, gpu_L*800)
			sasl.al.setSampleGain(gpu_start_R, gpu_R*800)
			sasl.al.setSampleGain(gpu_stop_L, gpu_L*800)
			sasl.al.setSampleGain(gpu_stop_R, gpu_R*800)
		end
		if passed == 0 or get(main_sound_on) == 0 then
			sasl.al.setSampleGain(gpu_run_L, 0)
			sasl.al.setSampleGain(gpu_run_R, 0)
			sasl.al.setSampleGain(gpu_start_L, 0)
			sasl.al.setSampleGain(gpu_start_R, 0)
			sasl.al.setSampleGain(gpu_stop_L, 0)
			sasl.al.setSampleGain(gpu_stop_R, 0)
		end
		-- sasl.al.setSampleGain(gpu_start_inn, 0)
		-- sasl.al.setSampleGain(gpu_run_inn, 0)
		-- sasl.al.setSampleGain(gpu_stop_inn, 0)
        
        
        
        

        
        
		--sasl.al.setSampleGain(prop_out_1, prop_loud_1 * (external + window_open * (1 - external)) * N1 * dist_coef) -- example
	
	else
		work_timer = 0
		
		set(gpu_work_anim, 0)
		set(gpu_present, 0)
		set(gpu_volt, 0)
		set(gpu_overload, 0)
		set(gpu_work_bus, 0)
		
		-- unload sounds
		-- sasl.al.stopSample(gpu_run_out)
		-- sasl.al.stopSample(gpu_start_out)
		-- sasl.al.stopSample(gpu_stop_out)
		
		--if gpuSoundsLoaded then unloadSounds() end
	end
	
	
end