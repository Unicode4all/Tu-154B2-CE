pax_door_1 = globalPropertyf("tu154b2/custom/anim/pax_door_1")
pax_door_2 = globalPropertyf("tu154b2/custom/anim/pax_door_2")
pax_door_3 = globalPropertyf("tu154b2/custom/anim/pax_door_3")
cockpit_door = globalPropertyf("tu154b2/custom/anim/cockpit_door")

pilot_Z = globalPropertyf("sim/aircraft/view/acf_peZ") -- Position of pilot's head relative to CG
pilot_X = globalPropertyf("sim/aircraft/view/acf_peX")
pilot_Y = globalPropertyf("sim/aircraft/view/acf_peY")
pilot_head = globalPropertyi("sim/graphics/view/pilots_head_psi")

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

external_view = globalPropertyi("sim/graphics/view/view_is_external") -- enviroment
vr_outside = globalPropertyi("sim/graphics/VR/teleport_on_ground")
defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

local door_1_lock_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_lock_L.wav')
local door_1_lock_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_lock_R.wav')
local door_1_unlock_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_unlock_L.wav')
local door_1_unlock_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_unlock_R.wav')
local door_1_closed_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_closed_L.wav')
local door_1_closed_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_closed_R.wav')
local door_1_move_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_move_L.wav')
local door_1_move_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_move_R.wav')

local door_2_lock_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_lock_L.wav')
local door_2_lock_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_lock_R.wav')
local door_2_unlock_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_unlock_L.wav')
local door_2_unlock_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_unlock_R.wav')
local door_2_closed_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_closed_L.wav')
local door_2_closed_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_closed_R.wav')
local door_2_move_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_move_L.wav')
local door_2_move_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_move_R.wav')

local door_3_lock_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_lock_L.wav')
local door_3_lock_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_lock_R.wav')
local door_3_unlock_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_unlock_L.wav')
local door_3_unlock_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_unlock_R.wav')
local door_3_closed_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_closed_L.wav')
local door_3_closed_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_closed_R.wav')
local door_3_move_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_move_L.wav')
local door_3_move_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/door_move_R.wav')

local door_1_prev=0
local door_2_prev=0
local door_3_prev=0


local function inn_balance (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (1 + math.sin(math.rad(angle2source))) / math.pow(dist,2)
	local ch_R = (1 + math.sin(math.rad(-angle2source)))/ math.pow(dist,2)
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end
	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end


function update()

	-- local passed = get(frame_time)
	
	-- local run = bool2int(passed ~= 0)
	
	local external = 0
	
	if get(external_view) > 0 or math.abs(get(pilot_X)) > 1.6 or get(pilot_Y) < -1 or get(vr_outside)==1 then
	   external = 1
    end
	local z_pos=get(pilot_Z)+1.42
	local x_pos=get(pilot_X)
	local plt_hdg=get(pilot_head)
	local dist_windows=math.max(-1*2/10*math.abs(z_pos+21.2)+1,0)
	local dist_door1=math.max(-1*2/10*math.abs(z_pos+17.62)+1,0)
	local dist_door2=math.max(-1*2/10*math.abs(z_pos+8.12)+1,0)
	local dist_door3=math.max(-1*2/10*math.abs(z_pos+6.57)+1,0)
	local cockpit_L,cockpit_R=inn_balance (0, -21.2, x_pos, z_pos , plt_hdg)
	local win1_L, win1_R=inn_balance (-0.7, -21.2, x_pos, z_pos , plt_hdg)
	local win2_L, win2_R=inn_balance (0.7, -21.2, x_pos, z_pos , plt_hdg)
	local door1_L, door1_R=inn_balance (-1.87, -17.62, x_pos, z_pos , plt_hdg)
	local door2_L, door2_R=inn_balance (-1.98, -6.57, x_pos, z_pos , plt_hdg)
	local door3_L, door3_R=inn_balance (1.95, -8.12, x_pos, z_pos , plt_hdg)
	local cpt_door = get(cockpit_door)
	if z_pos<-20.8 then
		door1_L=door1_L*(0.05+0.95*cpt_door)
		door1_R=door1_R*(0.05+0.95*cpt_door)
		door2_L=door2_L*(0.05+0.95*cpt_door)
		door2_R=door2_R*(0.05+0.95*cpt_door)
		door3_L=door3_L*(0.05+0.95*cpt_door)
		door3_R=door3_R*(0.05+0.95*cpt_door)
	end
	-- local chan_left = math.max(get(cockpit_window_left)*dist_windows*win1_L, math.max(get(cockpit_window_right),0.01)*dist_windows*win2_L, get(pax_door_1) * cpt_door*dist_door1*door1_L, get(pax_door_2) * cpt_door*dist_door2*door2_L, get(pax_door_3) * cpt_door*dist_door3*door3_L)
	-- if z_pos>-19 then
		-- chan_left = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*win2_L, get(pax_door_1) *dist_door1*door1_L, get(pax_door_2) *dist_door2*door2_L, get(pax_door_3) *dist_door3*door3_L)
	-- end
	-- local chan_right = math.max(get(cockpit_window_left)*dist_windows*win1_R, math.max(get(cockpit_window_right),0.01)*dist_windows*win2_R, get(pax_door_1) * cpt_door*dist_door1*door1_R, get(pax_door_2) * cpt_door*dist_door2*door2_R, get(pax_door_3) * cpt_door*dist_door3*door3_R)
	-- if z_pos>-19 then
		-- chan_right = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*win2_R, get(pax_door_1) * dist_door1*door1_R, get(pax_door_2) *dist_door2*door2_R, get(pax_door_3)*dist_door3*door3_R)
	-- end
	local door_1=get(pax_door_1)
	local door_2=get(pax_door_2)
	local door_3=get(pax_door_3)
	-- door 1
	if door_1>0 and door_1_prev==0 then
		playSample(door_1_unlock_L,false)
		playSample(door_1_unlock_R,false)
	end
	if door_1<0.2 and door_1_prev>0.2 then
		playSample(door_1_lock_L,false)
		playSample(door_1_lock_R,false)
	end
	if door_1<0.3 and door_1_prev>0.3 then
		playSample(door_1_closed_L,false)
		playSample(door_1_closed_R,false)
	end
	if door_1>0.3 and door_1_prev<0.3 then
		playSample(door_1_move_L,false)
		playSample(door_1_move_R,false)
	end
	if door_1<0.5 and door_1_prev>0.5 then
		playSample(door_1_move_L,false)
		playSample(door_1_move_R,false)
	end
	-- door 2
	if door_2>0 and door_2_prev==0 then
		playSample(door_2_unlock_L,false)
		playSample(door_2_unlock_R,false)
	end
	if door_2<0.2 and door_2_prev>0.2 then
		playSample(door_2_lock_L,false)
		playSample(door_2_lock_R,false)
	end
	if door_2<0.3 and door_2_prev>0.3 then
		playSample(door_2_closed_L,false)
		playSample(door_2_closed_R,false)
	end
	if door_2>0.3 and door_2_prev<0.3 then
		playSample(door_2_move_L,false)
		playSample(door_2_move_R,false)
	end
	if door_2<0.5 and door_2_prev>0.5 then
		playSample(door_2_move_L,false)
		playSample(door_2_move_R,false)
	end
	-- door 3
	if door_3>0 and door_3_prev==0 then
		playSample(door_3_unlock_L,false)
		playSample(door_3_unlock_R,false)
	end
	if door_3<0.2 and door_3_prev>0.2 then
		playSample(door_3_lock_L,false)
		playSample(door_3_lock_R,false)
	end
	if door_3<0.3 and door_3_prev>0.3 then
		playSample(door_3_closed_L,false)
		playSample(door_3_closed_R,false)
	end
	if door_3>0.3 and door_3_prev<0.3 then
		playSample(door_3_move_L,false)
		playSample(door_3_move_R,false)
	end
	if door_3<0.5 and door_3_prev>0.5 then
		playSample(door_3_move_L,false)
		playSample(door_3_move_R,false)
	end
	local door_gain=800*(1-external)
	setSampleGain(door_1_unlock_L,door1_L*door_gain)
	setSampleGain(door_1_unlock_R,door1_R*door_gain)
	setSampleGain(door_1_lock_L,door1_L*door_gain)
	setSampleGain(door_1_lock_R,door1_R*door_gain)
	setSampleGain(door_1_closed_L,door1_L*door_gain)
	setSampleGain(door_1_closed_R,door1_R*door_gain)
	setSampleGain(door_1_move_L,door1_L*door_gain)
	setSampleGain(door_1_move_R,door1_R*door_gain)
	
	setSampleGain(door_2_unlock_L,door2_L*door_gain)
	setSampleGain(door_2_unlock_R,door2_R*door_gain)
	setSampleGain(door_2_lock_L,door2_L*door_gain)
	setSampleGain(door_2_lock_R,door2_R*door_gain)
	setSampleGain(door_2_closed_L,door2_L*door_gain)
	setSampleGain(door_2_closed_R,door2_R*door_gain)
	setSampleGain(door_2_move_L,door2_L*door_gain)
	setSampleGain(door_2_move_R,door2_R*door_gain)
	
	setSampleGain(door_3_unlock_L,door3_L*door_gain)
	setSampleGain(door_3_unlock_R,door3_R*door_gain)
	setSampleGain(door_3_lock_L,door3_L*door_gain)
	setSampleGain(door_3_lock_R,door3_R*door_gain)
	setSampleGain(door_3_closed_L,door3_L*door_gain)
	setSampleGain(door_3_closed_R,door3_R*door_gain)
	setSampleGain(door_3_move_L,door3_L*door_gain)
	setSampleGain(door_3_move_R,door3_R*door_gain)	
	
	
	door_1_prev=door_1
	door_2_prev=door_2
	door_3_prev=door_3
end