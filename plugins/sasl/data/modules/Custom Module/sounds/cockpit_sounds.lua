-- createGlobalPropertyf("tu154b2/custom/buttons/console/sound_gain_test", 1)
-- defineProperty("gain_test", globalPropertyf("tu154b2/custom/buttons/console/sound_gain_test"))
-- createGlobalPropertyf("tu154b2/custom/buttons/console/sound_gain_test2", 27)
-- defineProperty("gain_test2", globalPropertyf("tu154b2/custom/buttons/console/sound_gain_test2"))


defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

defineProperty("external_view", globalPropertyi("sim/graphics/view/view_is_external")) -- enviroment
defineProperty("vr_outside", globalPropertyi("sim/graphics/VR/teleport_on_ground"))
-- power
defineProperty("bus27_volt_L", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus27_volt_R", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))
defineProperty("bus36_pts1_work", globalPropertyi("tu154b2/custom/elec/bus36_pts1_work")) -- ПТС250 1 работает
defineProperty("emerg_inv115", globalPropertyi("tu154b2/custom/switchers/eng/emerg_inv115"))
defineProperty("inv115_fail", globalPropertyf("tu154b2/custom/failures/inv115_fail"))
defineProperty("pilot_Z", globalPropertyf("sim/aircraft/view/acf_peZ")) -- Position of pilot's head relative to CG
defineProperty("pilot_X", globalPropertyf("sim/aircraft/view/acf_peX"))
defineProperty("pilot_Y", globalPropertyf("sim/aircraft/view/acf_peY"))
defineProperty("wind_speed", globalProperty("sim/weather/region/wind_speed_msc[0]"))
defineProperty("on_ground", globalProperty("sim/flightmodel2/gear/on_ground[0]"))

defineProperty("cockpit_door", globalPropertyf("tu154b2/custom/anim/cockpit_door")) -- положение правых аварийных дверей
defineProperty("in_plane", globalPropertyf("sim/custom/t154_camera/in_plane")) -- положение правых аварийных дверей

defineProperty("pilot_head", globalPropertyi("sim/graphics/view/pilots_head_psi"))

defineProperty("cockpit_window_left", globalPropertyf("tu154b2/custom/anim/cockpit_window_left")) -- открытие форточки
defineProperty("cockpit_window_right", globalPropertyf("tu154b2/custom/anim/cockpit_window_right")) -- открытие форточки

defineProperty("pax_door_1", globalPropertyf("tu154b2/custom/anim/pax_door_1")) -- положение передних пасс дверей
defineProperty("pax_door_2", globalPropertyf("tu154b2/custom/anim/pax_door_2")) -- положение средних пасс дверей
defineProperty("pax_door_3", globalPropertyf("tu154b2/custom/anim/pax_door_3")) -- положение правых аварийных дверей

defineProperty("bus36_volt_pts250_1", globalPropertyf("tu154b2/custom/elec/bus36_volt_pts250_1"))
defineProperty("agr_on", globalPropertyi("tu154b2/custom/switchers/ovhd/agr_on"))
defineProperty("agr_fail", globalPropertyi("tu154b2/custom/failures/agr_fail"))

defineProperty("eup_on", globalPropertyi("tu154b2/custom/switchers/ovhd/eup_on"))
defineProperty("eup_fail", globalPropertyi("sim/operation/failures/rel_ss_tsi"))

-- landing gears
defineProperty("gear1_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[0]"))  -- vertical deflection of front gear
defineProperty("gear2_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[1]"))  -- vertical deflection of left gear
defineProperty("gear3_deflect", globalProperty("sim/flightmodel2/gear/tire_vertical_deflection_mtr[2]"))  -- vertical deflection of right gear
defineProperty("grnd_spd", globalPropertyf("sim/flightmodel2/position/groundspeed")) --in m/s
defineProperty("control_force_pos", globalPropertyf("tu154b2/custom/controls/control_force_pos")) -- положение загружателя РВ. 0 - выклчюен, 1 - подключен
defineProperty("control_force_pos_rud", globalPropertyf("tu154b2/custom/controls/control_force_pos_rud")) -- положение загружателя РН. 0 - выклчюен, 1 - подключен

defineProperty("precip", globalPropertyf("sim/weather/aircraft/precipitation_on_aircraft_ratio"))
hail_rat = globalPropertyf("sim/weather/aircraft/hail_on_aircraft_ratio")
defineProperty("cam_agl", globalPropertyf("sim/graphics/view/view_elevation_agl_mtrs"))
defineProperty("oat", globalPropertyf("sim/cockpit2/temperature/outside_air_temp_degc"))
defineProperty("true_airspeed", globalPropertyf("sim/flightmodel/position/true_airspeed"))
defineProperty("gear1_deploy", globalProperty("sim/aircraft/parts/acf_gear_deploy[0]"))  -- deploy of front gear
defineProperty("pave", globalPropertyi("sim/flightmodel/ground/surface_texture_type")) -- type of pavement
defineProperty("shake_on", globalPropertyi("sim/custom/t154cfg/brake_heat"))

-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

local pts_start = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/pts_start.wav') --
local pts_run = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/pts_run.wav') --
local po_start = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/po_start.wav') --
local po_run = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/po_run.wav') --
local po_stop = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/po_stop.wav') --
local wind_L=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ambient_wind_t154_left.wav') 
local wind_R=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ambient_wind_t154_right.wav')
local wind_L_inn=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ambient_wind_t154_left_inn.wav') 
local wind_R_inn=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/ambient_wind_t154_right_inn.wav')  
local stop_played=0
local smooth_volt_L=0
local smooth_volt_R=0
local po_prev=0
local pts_prev=0
local agr_L=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/agr_72_L.wav')  
local agr_R=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/agr_72_R.wav')
local eup_L=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/eup53_L.wav')  
local eup_R=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/eup53_R.wav')    
local agr_pitch=0
local agr_gain=0
local eup_pitch=0
local eup_gain=0
local roll_snd=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/roll_ground.wav')
local gear_shk=loadSample(moduleDirectory .. '/Custom Sounds/new_snds/gear_shake.wav')      
local gear_1_prev=1
-- zagr_rv/rn_sounds
local rv_run = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/zagr_rv_run.wav')
local rv_stop = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/zagr_rv_stop.wav')
local rn_run = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/zagr_rn_run.wav')
local rn_stop = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/zagr_rn_stop.wav')
local rain = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/rain_sound2.wav')
local rain_out_L = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/rain_outside_L.wav')
local rain_out_R = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/rain_outside_R.wav')
local rain_fl = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/rain_inflight.wav')
local gear_noise = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/gear_noise.wav')
local thump = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/roll_thump.wav')
local roll_asph = loadSample(moduleDirectory .. '/Custom Sounds/new_snds/roll_asphalt.wav')
local force_pos_prev=0
local force_pos_rud_prev=0
local force_pos_rud_dir=0
local force_stopped=1
local force_rud_stopped=1

local plate_dist=7 -- size of concrete plates in meters (for ground thump)
local roll_dist=0
playSample(wind_L, true)
playSample(wind_R, true)
playSample(wind_L_inn, true)
playSample(wind_R_inn, true)
playSample(agr_L, true)
playSample(agr_R, true)
playSample(eup_L, true)
playSample(eup_R, true)
playSample(roll_snd, true)
playSample(rain, true)
playSample(rain_out_L, true)
playSample(rain_out_R, true)
playSample(rain_fl, true)
playSample(gear_noise, true)
playSample(roll_asph, true)

setSampleGain(wind_L, 0)
setSampleGain(wind_R, 0)
setSampleGain(wind_L_inn, 0)
setSampleGain(wind_R_inn, 0)
setSampleGain(agr_L, 0)
setSampleGain(agr_R, 0)
setSampleGain(eup_L, 0)
setSampleGain(eup_R, 0)
setSampleGain(roll_snd, 0)
setSampleGain(rain, 0)
setSampleGain(rain_out_L, 0)
setSampleGain(rain_out_R, 0)
setSampleGain(rain_fl, 0)
setSampleGain(gear_shk, 200)
setSampleGain(gear_noise, 0)
setSampleGain(roll_asph, 0)
local thump_fade_tbl=
{
{-100, 1},
{0, 1},
{35, 1},
{50, 0},
{10000, 0}
}

local tme=0
local tme_2=0
local shk=0
local shk_prev=0
local offst=0
local count=0
local dn = sasl.findCommand ( "sim/general/down_slow" )
local up = sasl.findCommand ( "sim/general/up_slow" )
local roll_dist_prev=0
local shk_speed = {
{-100000, 18},
{0, 18},
{100, 12},
{150, 5},
{250, 5.5},
{8000000, 5.5}
}
local shk_freq = {
{-10000, 1},
{60,0.8},
-- {120, 0.45},
-- {150, 0.35},
{163, 0.2},
{8000, 0.2}
}
local shk_length = {
{-10000, 0.3},
{40,0.5},
{100, 1},
{140, 1},
{8000, 1}
}

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


function update()

	local power=bool2int(get(bus27_volt_L)>18 or get(bus27_volt_R)>18)

	local passed = get(frame_time)
	
	local run = bool2int(passed ~= 0)
	
	local external = 0

	local dist = math.max(0,1-math.abs(19.8+get(pilot_Z)+1.42)/2)
	
	local po=get(emerg_inv115)*bool2int(get(bus27_volt_L)>16)*(1-get(inv115_fail))
	local pts=get(bus36_pts1_work)
	--PTS250
	if not isSamplePlaying(pts_start) and not isSamplePlaying(pts_run) and pts>0 then
		playSample(pts_run,true)
	end
	if pts>pts_prev then
		playSample(pts_start,false)
	end
	if pts==0 then
		stopSample(pts_start)
		stopSample(pts_run)
	end
	--PO750
	if not isSamplePlaying(po_start) and not isSamplePlaying(po_run) and po>0 then
		playSample(po_run,true)
	end
	if po>po_prev then
		playSample(po_start,false)
		stopSample(po_run)
		stopSample(po_stop)
	elseif po<po_prev then
		stopSample(po_start)
		stopSample(po_run)
		playSample(po_stop,false)
	end
	
	po_prev=po
	pts_prev=pts
	
	if smooth_volt_L-get(bus27_volt_L)<-5 then
		smooth_volt_L=smooth_volt_L-(smooth_volt_L-get(bus27_volt_L))*passed*7
	else
		smooth_volt_L=smooth_volt_L-(smooth_volt_L-get(bus27_volt_L))*passed
	end
	
	if smooth_volt_R-get(bus27_volt_R)<-5 then
		smooth_volt_R=smooth_volt_R-(smooth_volt_R-get(bus27_volt_R))*passed*7
	else
		smooth_volt_R=smooth_volt_R-(smooth_volt_R-get(bus27_volt_R))*passed
	end

	-- wind Sound
	local inplane = 1-get(in_plane)
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
	local door_1=math.max(0,get(pax_door_1)*2-0.4)
	door_1=math.min(1,door_1)
	local door_2=math.max(0,get(pax_door_2)*2-0.4)
	door_2=math.min(1,door_2)
	local door_3=math.max(0,get(pax_door_3)*2-0.4)
	door_3=math.min(1,door_3)
	local cpt_door = get(cockpit_door)
	local cpt_door = math.min(cpt_door,0.94)+0.06
	local chan_left = math.max(get(cockpit_window_left)*dist_windows*win1_L, math.max(get(cockpit_window_right),0.01)*dist_windows*win2_L, door_1 * cpt_door*dist_door1*door1_L, door_2 * cpt_door*dist_door2*door2_L, door_3 * cpt_door*dist_door3*door3_L)
	if z_pos>-19 then
		chan_left = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_L, get(cockpit_window_left)*dist_windows* cpt_door*win1_L, get(cockpit_window_right)*dist_windows* cpt_door*win2_L, door_1 *dist_door1*door1_L, door_2 *dist_door2*door2_L, door_3 *dist_door3*door3_L)
	end
	local chan_right = math.max(get(cockpit_window_left)*dist_windows*win1_R, math.max(get(cockpit_window_right),0.01)*dist_windows*win2_R, door_1 * cpt_door*dist_door1*door1_R, door_2 * cpt_door*dist_door2*door2_R, door_3 * cpt_door*dist_door3*door3_R)
	if z_pos>-19 then
		chan_right = math.max( math.max(-0.0003571*z_pos+0.003214,0)*cockpit_R, get(cockpit_window_left)*dist_windows* cpt_door*win1_R, get(cockpit_window_right)*dist_windows* cpt_door*win2_R, door_1 * dist_door1*door1_R, door_2 *dist_door2*door2_R, door_3*dist_door3*door3_R)
	end
	local wind_gain=get(wind_speed)/30*1.94384
	local wind_pitch=math.min(get(wind_speed)*80*1.94384,1500)
	local temp=get(oat)
	local prec=get(precip)
	local prec_hl=get(hail_rat)
	local rain_out_gain=prec*300
	local rain_out_pitch=prec*300+700
	if prec_hl>prec then
		rain_out_gain=prec_hl*500
		rain_out_pitch=prec_hl*300+700
	end
	setSamplePitch(wind_L,wind_pitch)
	setSamplePitch(wind_R,wind_pitch)
	setSamplePitch(wind_L_inn,wind_pitch)
	setSamplePitch(wind_R_inn,wind_pitch)
	setSamplePitch(rain_out_L,rain_out_pitch)
	setSamplePitch(rain_out_R,rain_out_pitch)
	-- Set PTS and PO gains
	setSampleGain(pts_run,dist * 75*4*run*(1-external))
	setSampleGain(pts_start,dist * 75*4*run*(1-external))
	setSampleGain(po_run, dist * 75*6*run*(1-external))
	setSampleGain(po_start, dist * 75*6*run*(1-external))
	setSampleGain(po_stop,dist * 75*6*run*(1-external))
	local gs=get(grnd_spd)--get(db1)/3.6--
	local asph=get(pave)==3
	if external==0 then
		setSampleGain(wind_L,300*wind_gain*chan_left*run)
		setSampleGain(wind_R,300*wind_gain*chan_right*run)
		setSampleGain(wind_L_inn,30*wind_gain*run)
		setSampleGain(wind_R_inn,30*wind_gain*run)
		setSampleGain(rain_out_L,rain_out_gain*chan_left*run)
		setSampleGain(rain_out_R,rain_out_gain*chan_right*run)
		-- ground roll
		local def_1=math.min(get(gear1_deflect),0.07)/0.07
		local def_2=math.min(get(gear2_deflect),0.1)/0.1
		local def_3=math.min(get(gear3_deflect),0.1)/0.1
		local spd_pitch=7.5*gs+612.5
		local spd_gain= math.max(0,16*gs-300)
		local asph_pitch=8.182*gs+727.3
		local asph_gain= math.max(0,5.455*gs-81.82)
		spd_gain=spd_gain*(def_1/3+def_2/3+def_3/3)
		asph_gain=asph_gain*(def_1/3+def_2/3+def_3/3)
		if asph then
			setSamplePitch(roll_asph,asph_pitch)
			setSampleGain(roll_asph,math.max(0,asph_gain)*run)
			setSampleGain(roll_snd,0)
			setSampleGain(gear_shk, 100)
			plate_dist=15+5*math.random()
		else
			setSamplePitch(roll_snd,spd_pitch)
			setSampleGain(roll_snd,math.max(0,spd_gain)*run)
			setSampleGain(roll_asph,0)
			setSampleGain(gear_shk, 200)
			plate_dist=7
		end
		-- ground roll thump
		roll_dist=roll_dist+gs*passed
		local thump_gn=1000*(-0.0002222*math.pow(gs,2)+0.01667*gs)*interpolate(thump_fade_tbl,gs)/(2.5+1*bool2int(asph))
		local thump_pt=1000*(0.01333*gs+0.7)
		setSampleGain(thump,thump_gn)
		setSamplePitch(thump,thump_pt)
		if roll_dist>plate_dist then
			roll_dist=0
			playSample(thump,false)
		end
		-- nose gear shake on nose liftoff
		if gear_1_prev>get(gear1_deflect) and get(gear1_deflect)==0 and not isSamplePlaying(gear_shk) then
			playSample(gear_shk,false)
		elseif  get(gear1_deflect)~=0 and isSamplePlaying(gear_shk) then
			stopSample(gear_shk)
		end
		gear_1_prev=get(gear1_deflect)
	else
		setSampleGain(wind_L,500*wind_gain*run)
		setSampleGain(wind_R,500*wind_gain*run)
		setSampleGain(wind_L_inn,0)
		setSampleGain(wind_R_inn,0)
		rain_out_gain=rain_out_gain*math.max(-get(cam_agl)/60+1,0)
		setSampleGain(rain_out_L,rain_out_gain*run)
		setSampleGain(rain_out_R,rain_out_gain*run)		
		setSampleGain(roll_snd,0)
		setSampleGain(roll_asph,0)
	end
	-- AGR
	if get(bus36_volt_pts250_1) > 30 and get(agr_on) == 1 and get(agr_fail) == 0 then
		if agr_pitch<1 then
			agr_pitch=agr_pitch+passed*0.02
		elseif agr_pitch>1 then
			agr_pitch=1
		end
		if agr_gain<1 then
			agr_gain=agr_gain+passed*0.05
		elseif agr_gain>1 then
			agr_gain=1
		end
	else
		if agr_pitch<0.25 and agr_gain>0 then
			agr_gain=agr_gain-passed*0.05/2
		end
		if agr_pitch>0 then
			agr_pitch=agr_pitch-passed*0.02/2
		elseif agr_gain<0 then
			agr_pitch=0
			agr_gain=0
		end
	end
	local agr72_L, agr72_R=inn_balance (-0.29, -21.51, x_pos, z_pos , plt_hdg)
	local dist_agr=math.max(-1*2/15*math.abs(z_pos+21.51)+1,0)
	if z_pos>-19 then
		dist_agr=dist_agr*cpt_door
	end
	setSamplePitch(agr_L,100*4+agr_pitch*(1000-100*4))
	setSamplePitch(agr_R,100*4+agr_pitch*(1000-100*4))
	setSampleGain(agr_L,400*agr72_L *run*agr_gain*dist_agr*(1-external) )
	setSampleGain(agr_R,400*agr72_R *run*agr_gain*dist_agr*(1-external) )
	--EUP
	if get(bus27_volt_L) > 13 and get(eup_on) == 1 and get(eup_fail) < 6 then	
		if eup_pitch<1 then
			eup_pitch=eup_pitch+passed*0.03
		elseif eup_pitch>1 then
			eup_pitch=1
		end
		if eup_gain<1 then
			eup_gain=eup_gain+passed*0.05
		elseif eup_gain>1 then
			eup_gain=1
		end
	else
		if eup_pitch<0.25 and eup_gain>0 then
			eup_gain=eup_gain-passed*0.05/2
		end
		if eup_pitch>0 then
			eup_pitch=eup_pitch-passed*0.02/2
		elseif eup_gain<0 then
			eup_pitch=0
			eup_gain=0
		end
	end
	local eup53_L, eup53_R=inn_balance (-0.18, -21.51, x_pos, z_pos , plt_hdg)
	local dist_eup=math.max(-1*2/15*math.abs(z_pos+21.51)+1,0)
	if z_pos>-19 then
		dist_eup=dist_eup*cpt_door
	end
	setSamplePitch(eup_L,100*4+eup_pitch*(1000-100*4))
	setSamplePitch(eup_R,100*4+eup_pitch*(1000-100*4))
	setSampleGain(eup_L,300*eup53_L *run*eup_gain*dist_eup*(1-external) )
	setSampleGain(eup_R,300*eup53_R *run*eup_gain*dist_eup*(1-external) )
	
	
		---- RV_RN_spring load sounds -----
	
	local dist_zagr=math.max(-1*2/10*math.abs(z_pos+21.51-0.1)+1,0)
	if z_pos>-19 then
		dist_zagr=dist_zagr*cpt_door
	end
	
	setSampleGain(rv_run,1000 *run*dist_zagr*(1-external))
	setSampleGain(rv_stop,1000*run*dist_zagr*(1-external))
	setSampleGain(rn_run,800* run*dist_zagr*(1-external))
	setSampleGain(rn_stop,800*run*dist_zagr*(1-external))
	local force_pos = get(control_force_pos)
	local force_pos_rud = get(control_force_pos_rud) 
	if force_pos~=force_pos_prev and power and not isSamplePlaying(rv_run) then
		playSample(rv_run, true)
		force_stopped=0
	elseif (force_pos==1 or force_pos==0) and isSamplePlaying(rv_run) and force_stopped==0 then
		stopSample(rv_run)
		playSample(rv_stop, false)
		force_stopped=1
	end
	force_pos_prev=force_pos
	

	if force_pos_rud-force_pos_rud_prev>0 and force_pos_rud_dir>0 and power>0 and not isSamplePlaying(rn_run) then
		force_rud_stopped=0
		playSample(rn_run, true)
	elseif force_pos_rud-force_pos_rud_prev<0 and force_pos_rud_dir<0 and power>0 and not isSamplePlaying(rn_run) then
		force_rud_stopped=0
		playSample(rn_run, true)
	elseif force_pos_rud-force_pos_rud_prev<0 and force_pos_rud_dir>0 and power>0 then
		force_rud_stopped=0
		playSample(rn_run, true)
	elseif force_pos_rud-force_pos_rud_prev>0 and force_pos_rud_dir<0 and power>0 then
		force_rud_stopped=0
		playSample(rn_run, true)
	elseif (force_pos_rud==1 or force_pos_rud==0) and isSamplePlaying(rn_run) and force_rud_stopped==0 then
		stopSample(rn_run)
		playSample(rn_stop, false)
		force_rud_stopped=1
	end
	if power==0 and isSamplePlaying(rn_run) then
		stopSample(rn_run)
	end
	if power==0 and isSamplePlaying(rv_run) then
		stopSample(rv_run)
	end
	force_pos_rud_dir=force_pos_rud-force_pos_rud_prev
	force_pos_rud_prev=force_pos_rud
	
	--- Rain Sound
	local rain_gain=get(precip)*500
	local rain_pitch=get(precip)*300+700
	setSampleGain(rain, rain_gain*run*math.max(dist_zagr,0.1)*(1-external))
	setSamplePitch(rain,rain_pitch)
	tas=math.max(100,get(true_airspeed)*3.6)
	local rain_gain_fl=0.0025*math.pow(tas,2)-0.25*tas
	rain_gain_fl=math.min(rain_gain_fl,350)
	rain_gain_fl=rain_gain_fl*get(precip)
	local rain_pitch_fl=math.max(tas,300)*2+100
	rain_pitch_fl=math.min(rain_pitch_fl,1100)
	setSampleGain(rain_fl, rain_gain_fl*run*math.max(dist_zagr,0.1)*(1-external))
	setSamplePitch(rain_fl,rain_pitch_fl)
	--- Nose gear wind noise
	--local dist_gear=math.max(1-1*1/15*math.abs(z_pos+21.51-0.1),0)
	local gear_gain=(-1e-05*math.pow(tas,2)+0.01*tas-0.9)*1000*math.min(0.2,get(gear1_deploy)/2)*run*(1-external)
	local gear_pitch=(0.001*tas+0.6)*1000
	setSampleGain(gear_noise, gear_gain)
	setSamplePitch(gear_noise,gear_pitch)
	----------Camera shake-------------------
	local speed=gs*3.6
	local defl_1=get(gear1_deflect)
	local defl_2=get(gear2_deflect)
	local defl_3=get(gear3_deflect)
	if ((speed>40+bool2int(asph)*20 and (defl_1>0.02 or defl_2+defl_3>0.05)) or count~=0) and external==0 and get(shake_on)>0 then
		tme_2=tme_2+passed
		-- local rand_1=math.min(0.005556*speed+0.1667,1)
		-- local rand_2=math.max(-0.005556*speed+1.833,1)
		local shk=0.2--interpolate(shk_freq,speed)*math.random(rand_1,rand_2)*get(db2)-- shake occurance frequency, i.e. how often is the shake triggered
		local freq=1+bool2int(asph)*2 --increase the shake frequency with nosewheel off the ground or rolling on ashpalt, this make the shake look less violent
		if defl_1<0.02 then
			freq=math.min(freq*2,3) 
		end
		if speed<140 then--tme_2>shk*2/freq then
			if roll_dist==0 then
				tme_2=0
				tme=0
			end
		else
			if tme_2>shk*2/freq then
				tme_2=0
				tme=0
			end
		end
		local w=interpolate(shk_speed,speed)*10*freq -- shake frequency
		w=math.min(w,18*10)
		local shake_per=interpolate(shk_length,speed)
		if tme<3*2*math.pi/w*shake_per then -- running the sine for 2*pi time the frequency--> hitting one bump
			tme=tme+passed
			offst=math.sin(w*tme)
			if tme>3*2*math.pi/w*shake_per then
				tme=3*2*math.pi/w*shake_per
				offst=0
			end
		end

		if offst>0 then
			count=count+1
			sasl.commandOnce (dn)
		elseif count>0 then --offst<0 and tme~=3*2*math.pi/w then
			sasl.commandOnce (up)
			count=count-1
		elseif offst==0 and count>0 then
			sasl.commandOnce (up)
			count=count-1
		elseif offst==0 and count<0 then
			sasl.commandOnce (dn)
			count=count+1
		end
	else
		tme_2=0
		tme=0
		count=0
		offst=0
	end
	-- set(db3,offst)
	-- set(db4,count)
end

-- setSampleGain(batt_stop,(1 - external) * dist * 75*1.5*run)
-- setSamplePitch(batt_stop,1000*math.min(math.max(smooth_volt_L/24+(1-28.5/24),smooth_volt_R/24+(1-28.5/24)),1))
-- if not isSamplePlaying(batt_sound) then
	-- playSample(batt_sound,true)
	-- stop_played=0
-- end
-- elseif power==0 and not isSamplePlaying(batt_stop) and stop_played==0 then
	-- stopSample(batt_sound)
	-- playSample(batt_stop,false)
	-- stop_played=1
--end
--setSampleGain(batt_sound,(1 - external) * dist * 75*1.5*run)
--setSamplePitch(batt_sound,1000*math.min(math.max(smooth_volt_L/24+(1-28.5/24),smooth_volt_R/24+(1-28.5/24)),1))
