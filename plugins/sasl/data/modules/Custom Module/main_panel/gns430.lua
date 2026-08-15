-- this is GNS supplement logic
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame

defineProperty("show_gns", globalPropertyi("tu154b2/custom/anim/show_gns"))
defineProperty("overrideGPS", globalPropertyi("sim/operation/override/override_gps"))

-- source
defineProperty("kln_on", globalPropertyi("tu154b2/custom/switchers/ovhd/kln_on"))  -- выключатель КЛН
defineProperty("kln_power", globalPropertyi("tu154b2/custom/KLN_power"))
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) -- напряжение сети 27
defineProperty("bus27_volt_right", globalPropertyf("tu154b2/custom/elec/bus27_volt_right")) -- напряжение сети 27

defineProperty("gps_course_degtm", globalPropertyf("sim/cockpit/radios/gps_course_degtm")) -- DTK magnetic
defineProperty("gps_hdef_dot", globalPropertyf("sim/cockpit/radios/gps_hdef_dot")) -- Course dev in dots
defineProperty("gps_fromto", globalPropertyi("sim/cockpit/radios/gps_fromto"))
defineProperty("gps_dot", globalPropertyf("sim/cockpit/radios/gps_hdef_nm_per_dot"))
defineProperty("ground_trk", globalPropertyf("sim/cockpit2/gauges/indicators/ground_track_mag_pilot"))

-- results
defineProperty("gps_power", globalPropertyi("sim/cockpit2/radios/actuators/gps2_power")) -- GPS power
defineProperty("gps1_power", globalPropertyi("sim/cockpit2/radios/actuators/gps_power")) -- GPS power
defineProperty("gns_lit", globalPropertyf("tu154b2/custom/lights/gns430_lit")) -- GPS power


defineProperty("GNS430_dtk", globalPropertyf("tu154b2/custom/SC/GNS430_dtk")) -- курс на ГНС
defineProperty("GNS430_dev", globalPropertyf("tu154b2/custom/SC/GNS430_dev")) -- отклонение от курса на ГНС
defineProperty("GNS430_flag", globalPropertyi("tu154b2/custom/SC/GNS430_flag")) -- отклонение от курса на ГНС
defineProperty("GNS_direct", globalPropertyi("tu154b2/custom/SC/GNS430_dir"))

-- animation
defineProperty("LB_angle", globalPropertyf("tu154b2/custom/rotary/GNS430/LB_angle")) -- LB_angle
defineProperty("LS_angle", globalPropertyf("tu154b2/custom/rotary/GNS430/LS_angle")) -- LS_angle
defineProperty("RB_angle", globalPropertyf("tu154b2/custom/rotary/GNS430/RB_angle")) -- RB_angle
defineProperty("RS_angle", globalPropertyf("tu154b2/custom/rotary/GNS430/RS_angle")) -- RS_angle

kill_map_fms_line = globalPropertyi("sim/graphics/misc/kill_map_fms_line") --
-- gps_dest = globalPropertyi("tu154b2/custom/radio/curr_wp")
-- gps_dest_app = globalPropertyi("tu154b2/custom/radio/curr_wp_app")
-- gps_phase = globalPropertyi("tu154b2/custom/radio/appr_phase")
-- gps_n_wp = globalPropertyi("tu154b2/custom/radio/gns_n_waypoints")
-- gps_dest_lat = globalPropertyf("tu154b2/custom/radio/dest_lat")
-- gps_dest_lon = globalPropertyf("tu154b2/custom/radio/dest_lon")
-- curr_lat = globalPropertyf("sim/flightmodel/position/latitude")
-- curr_lon = globalPropertyf("sim/flightmodel/position/longitude")
-- frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- time of frame
-- gps_dest_app_lat = globalPropertyf("tu154b2/custom/radio/dest_app_lat")
-- gps_dest_app_lon = globalPropertyf("tu154b2/custom/radio/dest_app_lon")
-- gps_dest_lat2 = globalPropertyf("tu154b2/custom/radio/dest_lat2")
-- gps_dest_lon2 = globalPropertyf("tu154b2/custom/radio/dest_lon2")
-- gps_dest_app_lat2 = globalPropertyf("tu154b2/custom/radio/dest_app_lat2")
-- gps_dest_app_lon2 = globalPropertyf("tu154b2/custom/radio/dest_app_lon2")
-- magv = globalPropertyf("sim/flightmodel/position/magnetic_variation")
but_up = globalPropertyi("tu154b2/custom/taws/taws_button")
tss_rot = globalPropertyi("tu154b2/custom/rotary/GNS430/tss_rot")
--hsi_source = globalPropertyi("sim/cockpit/switches/HSI_selector2")
show_taws= globalPropertyi("tu154b2/custom/anim/show_taws")
kontur_on = globalPropertyi("tu154b2/custom/b2/kontur_on") 
-- kontur_off = globalPropertyi("sim/custom/b2/kontur_off")
kontur70 = globalPropertyi("sim/custom/b2/kontur_70th")
-- z_bok = globalPropertyf("sim/custom/kontur/zbok")
-- z_bok_nm = globalPropertyf("sim/custom/kontur/zbok_nm")
-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control
-- defineProperty("dbstr", globalPropertys("tu154b2/custom/controlls/debugstr"))
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))

local dir_arm=0
local gps_course_prev=0
--local gps_switchover_timer=0
local gps_dest_prev=0
local gps_dest_app_prev=0
local LB_left = findCommand("sim/GPS/g430n1_coarse_down")
local but_sound=0
local rot_sound=0
-- local dir_lat = get(curr_lat)
-- local dir_lon = get(curr_lon)
local dir_to = 0

function LB_left_hnd(phase)
	if 1 == phase then
		set(LB_angle, get(LB_angle) - 10)
	end
	return 1
end

registerCommandHandler(LB_left, 0, LB_left_hnd)

local LB_right = findCommand("sim/GPS/g430n1_coarse_up")

function LB_right_hnd(phase)
	if 1 == phase then
		set(LB_angle, get(LB_angle) + 10)
	end
	return 1
end

registerCommandHandler(LB_right, 0, LB_right_hnd)


local LS_left = findCommand("sim/GPS/g430n1_fine_down")

function LS_left_hnd(phase)
	if 1 == phase then
		set(LS_angle, get(LS_angle) - 10)
	end
	return 1
end

registerCommandHandler(LS_left, 0, LS_left_hnd)

local LS_right = findCommand("sim/GPS/g430n1_fine_up")

function LS_right_hnd(phase)
	if 1 == phase then
		set(LS_angle, get(LS_angle) + 10)
	end
	return 1
end

registerCommandHandler(LS_right, 0, LS_right_hnd)




local RB_left = findCommand("sim/GPS/g430n1_chapter_dn")

function RB_left_hnd(phase)
	if 1 == phase then
		rot_sound=rot_sound+1
		set(RB_angle, get(RB_angle) - 10)
	end
	return 1
end

registerCommandHandler(RB_left, 0, RB_left_hnd)

local RB_right = findCommand("sim/GPS/g430n1_chapter_up")

function RB_right_hnd(phase)
	if 1 == phase then
		rot_sound=rot_sound-1
		set(RB_angle, get(RB_angle) + 10)
	end
	return 1
end

registerCommandHandler(RB_right, 0, RB_right_hnd)


local RS_left = findCommand("sim/GPS/g430n1_page_dn")

function RS_left_hnd(phase)
	if 1 == phase then
		rot_sound=rot_sound-1
		set(RS_angle, get(RS_angle) - 10)
	end
	return 1
end

registerCommandHandler(RS_left, 0, RS_left_hnd)

local RS_right = findCommand("sim/GPS/g430n1_page_up")

function RS_right_hnd(phase)
	if 1 == phase then
		rot_sound=rot_sound-1
		set(RS_angle, get(RS_angle) + 10)
	end
	return 1
end

registerCommandHandler(RS_right, 0, RS_right_hnd)


local dirct = findCommand("sim/GPS/g430n1_direct")

function dirct_hnd(phase)
	if 0 == phase then
		but_sound = 1
		if dir_arm==0 then
			dir_arm=1
		else
			dir_to = 1
			dir_arm=0
			-- dir_lat = get(curr_lat)
			-- dir_lon = get(curr_lon)
		end
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(dirct, 0, dirct_hnd)

local fpl = findCommand("sim/GPS/g430n1_fpl")

function fpl_hnd(phase)
	if 0 == phase then	
		but_sound = 1
		dir_arm=0
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(fpl, 0, fpl_hnd)


local proc = findCommand("sim/GPS/g430n1_proc")

function proc_hnd(phase)
	if 0 == phase then
		but_sound = 1
		dir_arm=0
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(proc, 0, proc_hnd)


local clr=findCommand("sim/GPS/g430n1_clr")

function clr_hnd(phase)
	if 0 == phase then
		but_sound = 1
		dir_arm=0
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(clr, 0, clr_hnd)

local ent=findCommand("sim/GPS/g430n1_ent")

function ent_hnd(phase)
	if 1 == phase then
		but_sound = 1
		--set(sync,1)
		if dir_arm==1 then
			dir_to = 1
			-- dir_lat = get(curr_lat)
			-- dir_lon = get(curr_lon)
			dir_arm=0
		else
			dir_arm=0
		end
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(ent, 0, ent_hnd)

local menu=findCommand("sim/GPS/g430n1_menu")
function menu_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(menu, 0, menu_hnd)

local obs=findCommand("sim/GPS/g430n1_obs")
function obs_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(obs, 0, obs_hnd)

local cdi=findCommand("sim/GPS/g430n1_cdi")
function cdi_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(cdi, 0, cdi_hnd)

local zoom_out=findCommand("sim/GPS/g430n1_zoom_out")
function zoom_out_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(zoom_out, 0, zoom_out_hnd)

local zoom_in=findCommand("sim/GPS/g430n1_zoom_in")
function zoom_in_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(zoom_in, 0, zoom_in_hnd)

local msg=findCommand("sim/GPS/g430n1_msg")
function msg_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(msg, 0, msg_hnd)


local cursor=findCommand("sim/GPS/g430n1_cursor")
function cursor_hnd(phase)
	if 1 == phase then
		but_sound = 1
	elseif phase == 2 then
        but_sound = 0
	end
	return 1
end

registerCommandHandler(cursor, 0, cursor_hnd)
--[[
sim/GPS/g430n1_popup			Popup 2D panel

sim/GPS/g430n1_coarse_down		LB left
sim/GPS/g430n1_coarse_up		LB right
sim/GPS/g430n1_fine_down 		LS left
sim/GPS/g430n1_fine_up			LS right
sim/GPS/g430n1_nav_com_tog		LS push

sim/GPS/g430n1_chapter_dn		RB left
sim/GPS/g430n1_chapter_up		RB right
sim/GPS/g430n1_page_dn			RS left
sim/GPS/g430n1_page_up			RS right
sim/GPS/g430n1_cursor			RS push

sim/GPS/g430n1_com_ff			Com up-dn
sim/GPS/g430n1_nav_ff			Nav up-dn

sim/GPS/g430n1_cdi				CDI button
sim/GPS/g430n1_obs				OBS button
sim/GPS/g430n1_msg				MSG button
sim/GPS/g430n1_fpl				FPL button
sim/GPS/g430n1_proc				PROC button

sim/GPS/g430n1_zoom_out			RNG down
sim/GPS/g430n1_zoom_in			RNG up

sim/GPS/g430n1_direct			Dir button
sim/GPS/g430n1_menu				MENU button
sim/GPS/g430n1_clr				CLR button
sim/GPS/g430n1_ent				ENT button

--]]

-- local function distance(lat,lon,lat2,lon2,magvar)
	-- local phi_1=lat*math.pi/180
	-- local phi_2=lat2*math.pi/180
	-- local phi=phi_2-phi_1
	-- local lam=(lon2-lon)*math.pi/180
	-- local a=math.sin(phi/2)*math.sin(phi/2)+math.cos(phi_1)*math.cos(phi_2)*math.sin(lam/2)*math.sin(lam/2)
	-- local c=2*math.atan2(math.sqrt(a),math.sqrt(1-a))
	-- local d=6371*c/1.852
	-- return d
-- end

-- local function crs(lat,lon,lat2,lon2,magvar)
	-- local phi_1=lat*math.pi/180
	-- local phi_2=lat2*math.pi/180
	-- local phi=phi_1-phi_2
	-- local lam=(lon2-lon)*math.pi/180
	-- local course=math.atan2(math.sin(lam)*math.cos(phi_2),math.cos(phi_1)*math.sin(phi_2)-math.sin(phi_1)*math.cos(phi_2)*math.cos(lam))+magvar*math.pi/180
	-- course=course/math.pi*180
	-- if course < 0 then 
		-- course = 360+course
	-- elseif course > 360 then 
		-- course =course - 360 
	-- end
	-- return course
-- end

-- local function x_trk(pos_lat,pos_lon,lat,lon,lat2,lon2)
	-- local d13=distance(lat,lon,pos_lat,pos_lon)*1.852/6371
	-- local tet13=crs(lat,lon,pos_lat,pos_lon,0)
	-- local tet12=crs(lat,lon,lat2,lon2,0)
	-- local xtr=math.asin(math.sin(d13)*math.sin((tet13-tet12)*math.pi/180))*6371
	-- return xtr
-- end



-- local overr = 0
-- local side_filt=0
-- local appr=0
function update()
	-- local passed = get(frame_time)
	-- local magvar=get(magv)
	-- local wp_lat=get(gps_dest_lat)
	-- local wp_lon=get(gps_dest_lon)
	-- local wp_lat2=get(gps_dest_lat2)
	-- local wp_lon2=get(gps_dest_lon2)
	-- -- Calculate distance to destination WP
	-- local d=-1
	-- local phi_1=get(curr_lat)*math.pi/180
	-- local course=0
	-- local curr_dest=get(gps_dest)
	-- local curr_dest_app=get(gps_dest_app)
	-- local app_lat=get(gps_dest_app_lat)
	-- local app_lon=get(gps_dest_app_lon)
	-- local app_lat2=get(gps_dest_app_lat2)
	-- local app_lon2=get(gps_dest_app_lon2)
	-- -- force right HSI to radnav mode
	-- if get(hsi_source)~=1 then
		-- set(hsi_source,1)
	-- end
	-- -- calculate next leg course
	-- if wp_lat~=0 and wp_lon~=0 then
		-- d=distance(wp_lat,wp_lon,get(curr_lat),get(curr_lon))
		-- if wp_lat2~=0 and wp_lon2~=0 then
			-- course=crs(wp_lat,wp_lon,wp_lat2,wp_lon2,magvar)
		-- end
		-- if curr_dest==get(gps_n_wp)-1 and app_lat~=0 and app_lon~=0 then
			-- course=crs(wp_lat,wp_lon,app_lat,app_lon,magvar)
		-- end
	-- end
	-- distance to approach FP destination WP
	-- local d_app=-1
	-- local course_app=0
	-- -- calculate next leg course for approach phase
	-- if app_lat~=0 and app_lon~=0 then
		-- d_app=distance(app_lat,app_lon,get(curr_lat),get(curr_lon))
		-- if app_lat2~=0 and app_lon2~=0 then
			-- course_app=crs(app_lat,app_lon,app_lat2,app_lon2,magvar)
		-- end
	-- end
	set(kln_power, get(kln_on) * bool2int(get(bus27_volt_right) > 13))
	set(gps_power, get(kln_on) * bool2int(get(bus27_volt_right) > 13))
	set(gps1_power, get(kln_on) * bool2int(get(bus27_volt_right) > 13))
	set(gns_lit, get(gps_power) * 0.7)
	-- if get(overrideGPS)==0 then
		-- set(overrideGPS, 1)
		-- overr = 1
	-- -- elseif get(show_gns) == 0 then
		-- -- overrideSet = false
	-- end
	--set(gps_dot,1)
	--print(get(gps_hdef_dot))
	if get(ismaster) ~= 1 then
		--set(GNS430_dev, get(gps_hdef_dot))
		set(GNS430_flag, bool2int(get(gps_fromto) == 0 or get(gps_power) == 0))
		-- Approach phase flag
		-- if (d<3 and d>0 and get(gps_phase)==0 and curr_dest==get(gps_n_wp)-1) or (curr_dest_app~=gps_dest_app_prev and appr==0) then
			-- appr=1
			-- --set(gps_phase,1)
		-- elseif (get(gps_phase)==1 and curr_dest<get(gps_n_wp)-1) or curr_dest~=gps_dest_prev then
			-- appr=0
			-- --set(gps_phase,0)
		-- end
		
		local gps_course=get(gps_course_degtm)
		-- local z=get(gps_hdef_dot)* 1.852* get(gps_dot)
		-- local cross=0
		-- calculate cross track error for either enroute or approach legs
		-- if dir_to == 1 then
			-- wp_lat = dir_lat
			-- wp_lon = dir_lon
			-- app_lat = dir_lat
			-- app_lon = dir_lon
		-- end
		-- set(db2,dir_lat)
		-- set(db3,dir_lon)
		-- if appr==0 then			
			-- if get(gps_n_wp)>0 then
				-- cross=x_trk(get(curr_lat),get(curr_lon),wp_lat,wp_lon,wp_lat2,wp_lon2)
			-- else
				-- cross_x = 0
			-- end
		-- elseif curr_dest==get(gps_n_wp)-1 and math.abs(app_lat)>0.1 and math.abs(app_lon)>0.1 and appr==0 then
			-- cross=x_trk(get(curr_lat),get(curr_lon),wp_lat,wp_lon,app_lat,app_lon)
		-- else
			-- if get(gps_n_wp)>0 then
				-- cross=x_trk(get(curr_lat),get(curr_lon),app_lat,app_lon,app_lat2,app_lon2)
			-- else
				-- cross_x = 0
			-- end
		-- end
				-- -- switch to cross-track from next leg for ABSU
		-- if math.abs(gps_course-gps_course_prev)>2 then 
			-- gps_switchover_timer=30
		-- end
		-- gps_course_prev=gps_course
		-- if ((distance(get(curr_lat),get(curr_lon),wp_lat2,wp_lon2,0)<5 and appr == 0) or (distance(get(curr_lat),get(curr_lon),app_lat2,app_lon2,0)<5 and appr == 1)) and dir_to == 1 then
			-- --dir_to = 0
		-- end
		-- set(db1,cross)
		-- switch back to GPS provided cross-track after WP switch
		-- if (curr_dest~=gps_dest_prev and appr==0) or (curr_dest_app~=gps_dest_app_prev and appr==1) or get(GNS_direct)>0 then
			-- gps_switchover_timer=0
		-- end
		-- -- fail safe timer for X-track switch
		-- if gps_switchover_timer>0 then
			-- gps_switchover_timer=gps_switchover_timer-passed
			-- if gps_switchover_timer<1 then
				-- gps_switchover_timer=0
			-- end
		-- end
		-- gps_dest_app_prev=curr_dest_app
		-- gps_dest_prev=curr_dest
		local side = get(gps_hdef_dot)* 1.852* get(gps_dot) -- z--*(1-math.min(gps_switchover_timer,1))-cross*math.min(gps_switchover_timer,1) -- meters
		if get(GNS430_flag) == 1 then 
			side = 0
		end
		-- if math.abs(get(gps_hdef_dot))>=2.5 then
			-- set(z_bok,cross)
			-- set(z_bok_nm,cross/1.852)
			-- side = cross
		-- else
			-- set(z_bok,z)
			-- set(z_bok_nm,z/1.852)
		-- end
		set(GNS430_dev, side) 
		set(GNS430_dtk, gps_course)	
		-- set variable to hide TAWS
		local taws_show=0
		if get(kontur70)==1 and get(show_gns)==1 then
			taws_show=1
		end
		local fms_line = 1
		if get(kontur_on) == 1 and fms_line == 1 then
			fms_line = 0
		end
		set(kill_map_fms_line,fms_line)
		set(show_taws,taws_show)
	end
	set(but_up,but_sound)
	set(tss_rot,rot_sound)
	set(GNS_direct,dir_to)
end

function onModuleDone()
	set(kill_map_fms_line,0)
	set(gps_power, 1)
	set(overrideGPS,0)
	print("GPS reset")

end