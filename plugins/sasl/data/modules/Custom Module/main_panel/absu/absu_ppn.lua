defineProperty("t1", globalPropertyi("sim/custom/t154/ppn13_t1"))
defineProperty("t2", globalPropertyi("sim/custom/t154/ppn13_t2"))
defineProperty("t3", globalPropertyi("sim/custom/t154/ppn13_t3"))
defineProperty("pol", globalPropertyi("sim/custom/t154/ppn13_pol"))
defineProperty("cap", globalPropertyi("sim/custom/t154/ppn13_cap"))
defineProperty("svk", globalPropertyi("sim/custom/t154/ppn13_sbk_test"))
defineProperty("auto_test", globalPropertyi("sim/custom/t154/ppn13_absu_test"))
defineProperty("start", globalPropertyi("sim/custom/t154/ppn13_pusk"))
defineProperty("search", globalPropertyi("sim/custom/t154/ppn13_search"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("search_go", globalPropertyi("tu154b2/custom/absu/ppn_search_delay"))
defineProperty("vr", globalPropertyi("sim/graphics/VR/enabled"))
defineProperty("ppn13_push_1", globalPropertyi("sim/custom/t154/ppn13_t1")) --
defineProperty("ppn13_push_2", globalPropertyi("sim/custom/t154/ppn13_t2")) --
defineProperty("ppn13_push_3", globalPropertyi("sim/custom/t154/ppn13_t3")) --
defineProperty("ppn13_push_4", globalPropertyi("sim/custom/t154/ppn13_pol")) --
defineProperty("ppn13_push_5", globalPropertyi("sim/custom/t154/ppn13_to_pwr")) --
defineProperty("ppn13_push_6", globalPropertyi("sim/custom/t154/ppn13_snp")) --
defineProperty("ppn13_push_7", globalPropertyi("sim/custom/t154/ppn13_search")) --
defineProperty("ppn13_push_8", globalPropertyi("sim/custom/t154/ppn13_pusk")) --
defineProperty("ppn13_sw_1", globalPropertyi("sim/custom/t154/ppn13_sbk_test")) --
defineProperty("ppn13_sw_2", globalPropertyi("sim/custom/t154/ppn13_absu_test")) --
defineProperty("ppn13_cap", globalPropertyi("sim/custom/t154/ppn13_cap")) --
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ"))
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))



local switcher_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_L.wav')
local cap_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/lustra_skrip_L.wav')
local button_sound_L = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_L.wav')

local switcher_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/metal_switch_R.wav')
local cap_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/lustra_skrip_R.wav')
local button_sound_R = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn_R.wav')

local panel_x=0.7217051
local panel_z=-21.363464
local dist_gain=5


local function inn_balance (src_x, src_z, x, z , cam_hdg)

	local hdg_rad = math.rad(cam_hdg)
	-- local x_s = acf_x + src_x * math.cos(hdg_rad) - src_z * math.sin(hdg_rad)
	-- local z_s = acf_z + src_x * math.sin(hdg_rad) + src_z * math.cos(hdg_rad)
	local dist = math.sqrt(math.pow(src_x - x, 2) + math.pow(src_z - z, 2))
	
	if dist < 1 then dist = 1 end
	
	local angle2source = cam_hdg + math.deg(math.atan2(x - src_x, z - src_z)) -- angle from camera to the source
	while angle2source > 180 do angle2source = angle2source - 360 end
	while angle2source < -180 do angle2source = angle2source + 360 end
	local ch_L = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(angle2source))) ) 
	local ch_R = (0.2/math.pow(dist,2) + (1 + math.sin(math.rad(-angle2source))) )
	if ch_L > 1 then ch_L = 1 end
	if ch_R > 1 then ch_R = 1 end

	
	-- local ch_L = 0.4 + (1 + math.sin(math.rad(cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)	
	
	-- local ch_R = 0.4 + (1 + math.sin(math.rad(-cam_hdg))) * 0.7 * 0.6 + (1 - dist / 20)
	
	return ch_L, ch_R
end

local pol_timer=0
local search_timer=0
local search_run=0

local changes_but_prev=0
local changes_caps_prev=0
local changes_sw_prev=0
function update()
	local isvr=get(vr)
	local passed=get(frame_time)
	local test1=get(t1)
	local test2=get(t2)
	local test3=get(t3)
	if test1+test2+test3>0 and isvr==0 then
		pol_timer=pol_timer+passed
	elseif test1+test2+test3==0 and pol_timer>0 then
		pol_timer=0
		set(pol,0)
	end
	if get(start)>0 and isvr==0 then
		search_timer=search_timer+passed
	elseif get(start)==0 and search_timer>0 then
		search_timer=0
		set(search,0)
	end
	if pol_timer>1 then
		set(pol,1)
	end
	if search_timer>1 then
		set(search,1)
	end
	if get(search)>0 then
		if search_run<0.05 then
			search_run=search_run+passed
		else 
			search_run=1
			set(search_go,1)
		end
	else
		if get(search_go)>0 then
			set(search_go,0)
		end
		search_run=0
	end
	if get(cap)==0 and get(svk)>0 then
		set(svk,0)
	end
	if get(cap)==0 and get(auto_test)>0 then
		set(auto_test,0)
	end
	
	local changes_but=get(ppn13_push_1)+get(ppn13_push_2)+get(ppn13_push_3)+get(ppn13_push_4)+get(ppn13_push_5)+get(ppn13_push_6)+get(ppn13_push_7)+get(ppn13_push_8)
	local changes_caps=get(ppn13_cap)
	local changes_sw=get(ppn13_sw_1)+get(ppn13_sw_2)
	
	if changes_but_prev~=changes_but then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(button_sound_L,gain_L*dist)
		setSampleGain(button_sound_R,gain_R*dist)
		playSample(button_sound_L, false)
		playSample(button_sound_R, false)
	end
	if changes_caps_prev~=changes_caps then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(cap_sound_L,gain_L*dist)
		setSampleGain(cap_sound_R,gain_R*dist)
		playSample(cap_sound_L, false)
		playSample(cap_sound_R, false)
	end
	if changes_sw_prev~=changes_sw then 		
		local z_pos=get(pilot_Z)
		local z_pos=get(pilot_Z)
		local x_pos=get(pilot_X)
		local plt_hdg=get(pilot_head)
		local gain_L, gain_R = inn_balance (panel_x, panel_z, x_pos, z_pos , plt_hdg)
		gain_L=gain_L*1000
		gain_R=gain_R*1000
		local dist=1
		if z_pos-panel_z~=0 then
			dist=math.min(1,1/math.sqrt(math.pow(z_pos-panel_z,2)+math.pow(x_pos-panel_x,2))/dist_gain)
		end
		setSampleGain(switcher_sound_L,gain_L*dist)
		setSampleGain(switcher_sound_R,gain_R*dist)
		playSample(switcher_sound_L, false)
		playSample(switcher_sound_R, false)
	end
	
	changes_but_prev=changes_but
	changes_caps_prev=changes_caps
	changes_sw_prev=changes_sw
	
end