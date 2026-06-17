-- this is RSBN logic



-- controls
defineProperty("rsbn_control_strobe", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_control_strobe")) -- контроль строба РСБН
defineProperty("rsbn_control_azimuth", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_control_azimuth")) -- контроль нуля азимут РСБН
defineProperty("rsbn_control_distance", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_control_distance")) -- контроль нуля дальность РСБН

defineProperty("rsbn_ch_ten", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_ch_ten")) -- установки десятков канала
defineProperty("rsbn_ch_one", globalPropertyi("tu154b2/custom/buttons/ovhd/rsbn_ch_one")) -- установки единиц канала

defineProperty("rsbn_on", globalPropertyi("tu154b2/custom/switchers/ovhd/rsbn_on")) -- питание РСБН
defineProperty("rsbn_recon", globalPropertyi("tu154b2/custom/switchers/ovhd/rsbn_recon")) -- опознавание РСБН

-- sources
defineProperty("latitude", globalPropertyd("sim/flightmodel/position/latitude")) -- real latitude position
defineProperty("longitude", globalPropertyd("sim/flightmodel/position/longitude")) -- The longitude of the aircraft
defineProperty("elevation", globalPropertyd("sim/flightmodel/position/elevation")) -- The longitude of the aircraft

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

-- power
defineProperty("bus27_volt_left", globalPropertyf("tu154b2/custom/elec/bus27_volt_left"))
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt"))
defineProperty("rsbn_cc", globalPropertyf("tu154b2/custom/radio/rsbn_cc")) -- потребление тока от РСБН

-- failures
defineProperty("rsbn_fail", globalPropertyi("tu154b2/custom/failures/rsbn_fail")) -- отказ РСБН
defineProperty("rsbn_rec", globalPropertyi("tu154b2/custom/failures/rsbn_rec"))

defineProperty("azimuth_init", globalPropertyi("tu154b2/custom/rsbn/azimuth_init"))
defineProperty("dist_init", globalPropertyi("tu154b2/custom/rsbn/dist_init"))


-- results
defineProperty("distance", globalPropertyf("tu154b2/custom/rsbn/distance")) -- геометрическая дистанция от маяка
defineProperty("azimuth", globalPropertyf("tu154b2/custom/rsbn/azimuth")) -- азимут от маяка

mrs_dot = globalPropertyi("tu154b2/custom/rsbn/morse_dot")
mrs_dash = globalPropertyi("tu154b2/custom/rsbn/morse_dash")
ismaster = globalPropertyi("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
-- defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
-- defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
-- defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))
-- defineProperty("dbstr", globalPropertyf("tu154b2/custom/controlls/debugstr"))

include("nav_funcs.lua")

local notLoaded = true
local start_timer = 0

local nav_table = {}
local work_table = {}
local channel_set = 0

local table_read_timer = 0
local path = sasl.getAircraftPath ()
local morse_tmr=0
local morse_dot=0
local morse_dash=0
local morse_timout=0.4
local morse_ind=1
local morse_char=1
local mrs_1 = {}
local mrs_2 = {}
local n_mrs_1 = 0
local n_mrs_2 = 0
local idnt=""
local idnt_prev=idnt
local morse_1={"12",   	--A
			"2111",		--B
			"2121",		--C
			"211",		--D
			"1",		--E
			"1121",		--F
			"221",		--G
			"1111",		--H
			"11",		--I
			"1222",		--J
			"212",		--K
			"1211",		--L
			"22",		--M
			"21",		--N
			"222",		--O
			"1221",		--P
			"2212",		--Q
			"121",		--R
			"111",		--S
			"2",		--T
			"112",		--U
			"1112",		--V
			"122",		--W
			"2112",		--X
			"2122",		--Y
			"2211",		--Z
			"12222",
			"11222",
			"11122",
			"11112",
			"11111",
			"21111",
			"22111",
			"22211",
			"22221",
			"22222"}
local morse_2="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"


--[[
function calc_range(lat1, lon1, lat2, lon2)
	local d = math.acos(math.sin(math.rad(lat1)) * math.sin(math.rad(lat2)) + math.cos(math.rad(lat1)) * math.cos(math.rad(lat2)) * math.cos(math.rad(lon1-lon2)))
	return math.deg(d) * 60, d -- in nm and radians
end


function calc_true_course(lat1, lon1, lat2, lon2, dist)
	-- dist must be in miles
	local tc = 0
	local foo, d = 0, 0
	
	if dist == nil then 
		foo, d = calc_range(lat1, lon1, lat2, lon2) 
	else d = math.rad(dist / 60) 
	end
	
	if d == 0 then return 0 end
	
	--if d <= 0.00001 and d >= 0.00001 then return 0 end
	
	if lat1 > 89.9999 then tc = math.pi
	elseif lat1 < -89.9999 then tc = 0
	elseif math.sin(math.rad(lon2-lon1)) > 0 then
		tc = math.acos((math.sin(math.rad(lat2)) - math.sin(math.rad(lat1)) * math.cos(d)) / (math.sin(d) * math.cos(math.rad(lat1))))
	else
		tc = 2 * math.pi - math.acos((math.sin(math.rad(lat2)) - math.sin(math.rad(lat1)) * math.cos(d)) / (math.sin(d) * math.cos(math.rad(lat1))))  
	end
	return math.deg(tc) -- return degrees
	-- need to add cases when lat1 and lat2 are at different sides from 180/-180 line
end

--]]

function get_morse (idnt)
	local n_mrs_1=0
	local n_mrs_2=0
	local ident_1={}
	local ident_2={}
	if string.len(idnt)==2 then
		local char_1=string.find(morse_2,string.sub(idnt,1,1))
		local char_2=string.find(morse_2,string.sub(idnt,2,2))
		local identstr_1=morse_1[char_1]
		local identstr_2=morse_1[char_2]
		for i = 1, string.len(identstr_1), 1
		do
			ident_1[i]=tonumber(string.sub(identstr_1,i,i))
			n_mrs_1=i
		end			
		for i = 1, string.len(identstr_2), 1
		do
			ident_2[i]=tonumber(string.sub(identstr_2,i,i))
			n_mrs_2=i
		end						
	else
		ident_1[1]=0
		ident_2[1]=0
	end
	return ident_1,ident_2,n_mrs_1,n_mrs_2
end






function read_nav_dat()
	local file_name = path .."/rsbn.dat"
	
	local file = io.open(file_name, "r")
	
	--print(panelDir, file_name)
	
	if file then
		nav_table = {}
		
		while true do
			local line = file:read("*line")
			if line == nil then break end
			local a = 1
			local b = string.find(line, "|", a) -- find a vertical line
			
			if b ~= nil then
				
				local channel = tonumber(string.sub(line, a, b-1))
				a = b+1
				b = string.find(line, "|", b+1)
				
				local name = string.sub(line, a, b-1)
				a = b+1
				b = string.find(line, "|", b+1)
				
				local code = string.sub(line, a, b-1)
				a = b+1
				b = string.find(line, "|", b+1)
				
				local freq = tonumber(string.sub(line, a, b-1))
				a = b+1
				b = string.find(line, "|", b+1)
				
				local lat = tonumber(string.sub(line, a, b-1))
				a = b+1
				b = string.find(line, "|", b+1)
				
				local long = tonumber(string.sub(line, a, b-1))
				a = b+1
				b = string.find(line, "|", b+1)
				
				local elev = tonumber(string.sub(line, a))
				
				--print(channel, name_full, name_short, freq, lat, long, elev)
				
				table.insert(nav_table, {["chan"] = channel, ["lat"] = lat, ["lon"] = long, ["elev"] = elev, ["icao"] = code, ["name"] = name})
				
				
			end
			
		end	
		print("rsbn.dat read OK")
		
		file:close()
	else print("can't read rsbn.dat")
	end
	
	--[[
	print("RSBN Nav table saved like this:")
	for k, m in pairs (nav_table) do
		print (m["name"].." | ".. m["chan"].." | ".. m["lat"].." | ".. m["lon"].." | "..  m["elev"].." | "..  m["icao"])
	end
	--]]
end

read_nav_dat() -- read the nav base once

local chan_last = 0
local function chan_select()
	channel_set = get(rsbn_ch_ten) * 10 + get(rsbn_ch_one)
	
	if channel_set ~= chan_last and table.maxn(nav_table) > 0 then
		work_table = {}
		table_read_timer = 0
		for k, m in pairs (nav_table) do
			if m["chan"] == channel_set then
				table.insert(work_table, {["chan"] = m["chan"], ["name"] = m["name"], ["lat"] = m["lat"], ["lon"] = m["lon"], ["elev"] = m["elev"], ["icao"] = m["icao"]})
			end
		end
		
	--[[
		for k, m in pairs (work_table) do
			print (m["chan"], m["name"], m["lat"], m["lon"], m["elev"])
		end
	--]]
	end
	
	chan_last = channel_set

end

local function get_nearest()

	local plane_lat = get(latitude)
	local plane_lon = get(longitude)
	
	local dist = 21600 -- nm
	local res_lat = 0
	local res_lon = 0
	local res_name = ""
	local res_id = ""
	local res_elev = 0
	
	for k, m in pairs (work_table) do
		local b_lat = m["lat"]
		local b_lon = m["lon"]
		
		local b_dist, rad_dist = calc_range(b_lat, b_lon, plane_lat, plane_lon)
		
		if b_dist < dist then 
			dist = b_dist 
			res_lat = b_lat
			res_lon = b_lon
			res_name = m["name"]
			res_elev = m["elev"]
			res_id = m["icao"]
		end
	
	end	
	
	return dist, res_lat, res_lon, res_elev, res_name,res_id


end



local beacon_dist = 0 -- nm
local beacon_lat = 0
local beacon_lon = 0
local beacon_name = "none"
local beacon_azimuth = 0
local beacon_elevation = 0

local dist_show = 0
local azimuth_show = 0


function update()
	local passed = get(frame_time)
	local plane_lat = get(latitude)
	local plane_lon = get(longitude)
	local plane_elev = get(elevation)
	local power = get(rsbn_on) == 1 and get(bus27_volt_left) > 13 and get(bus115_1_volt) > 100 and get(rsbn_fail) == 0
	local rsbn_receiving=1
	set(rsbn_cc, bool2int(power))
	
	if power then chan_select() end -- select beacons with given channel
	
	
	
	if table_read_timer == 0 and table.maxn(work_table) > 0 and power then -- get parameters of the nearest beacon
		beacon_dist, beacon_lat, beacon_lon, beacon_elevation, beacon_name,idnt = get_nearest()	
		
		--if beacon_dist ~= 0 then print(beacon_dist, "  ", beacon_lat, "  ", beacon_lon, "  ", beacon_name) end
	elseif table.maxn(work_table) == 0 or not power then
		beacon_dist, beacon_lat, beacon_lon, beacon_elevation, beacon_name = 0, 0, 0, 0, "none"
	end
	
	-- calculate distance and azimuth
	if beacon_name ~= "none" then
		beacon_dist = calc_range(beacon_lat, beacon_lon, plane_lat, plane_lon) -- in nm
		beacon_azimuth = calc_true_course(beacon_lat, beacon_lon, plane_lat, plane_lon, beacon_dist)
	end
	
	-- correct distance with altitude
	local res_distance = 0
	if beacon_name ~= "none" then
		res_distance = math.sqrt((beacon_dist * 1852)^2 + (plane_elev - beacon_elevation)^2) -- distance in meters
	end
	
	-- cut off indication if beacon is out of reach
	local dist_limit = 4120 * (math.sqrt(math.max(plane_elev, 0)) + math.sqrt(math.max(beacon_elevation, 0))) + 20000 -- distance limit in meters
	
	if beacon_dist * 1852 < math.abs(plane_elev - beacon_elevation) or res_distance > dist_limit then 
		rsbn_receiving=0
		res_distance = 0
		beacon_azimuth = 0
	end
	if not power then
		rsbn_receiving=-1
	end
	-- test values
	if power and get(rsbn_control_azimuth) == 1 then
		beacon_azimuth = 1 -- degree
	end
	
	if power and get(rsbn_control_distance) == 1 then
		res_distance = 2000 -- m
	end
	if idnt then
		if idnt~=idnt_prev then
			mrs_1,mrs_2,n_mrs_1,n_mrs_2=get_morse (idnt)
		end
		if morse_char==1 then
			if morse_ind<=n_mrs_1 then
				if morse_tmr>0 and morse_tmr<morse_timout/2 then
					if mrs_1[morse_ind]==1 then
						morse_dot=1
						morse_dash=0
					elseif mrs_1[morse_ind]==2 then
						morse_dot=0
						morse_dash=1
					end
					--morse_tmr=morse_tmr+passed
				elseif morse_tmr>morse_timout/2 and morse_tmr<morse_timout then
					morse_dot=0
					morse_dash=0
				elseif morse_tmr>morse_timout then
					morse_tmr=0
					morse_ind=morse_ind+1
				end
			else
				morse_tmr=-0.7
				morse_ind=1
				morse_char=2
			end
		else
			if morse_ind<=n_mrs_2 then
				if morse_tmr>0 and morse_tmr<morse_timout/2 then
					if mrs_2[morse_ind]==1 then
						morse_dot=1
						morse_dash=0
					elseif mrs_2[morse_ind]==2 then
						morse_dot=0
						morse_dash=1
					end
					--morse_tmr=morse_tmr+passed
				elseif morse_tmr>morse_timout/2 and morse_tmr<morse_timout then
					morse_dot=0
					morse_dash=0
				elseif morse_tmr>morse_timout then
					morse_tmr=0
					morse_ind=morse_ind+1
				end
			else
				morse_tmr=-5
				morse_ind=1
				morse_char=1
			end
		end
		--end
	end
	idnt_prev=idnt
	morse_tmr=morse_tmr+passed
	table_read_timer = table_read_timer + passed
	
	if table_read_timer > 1 then table_read_timer = 0 end
	
	if res_distance ~= 0 and res_distance then 
		dist_show = res_distance 
		set(dist_init,dist_show)
	end
	if beacon_azimuth ~= 0 and beacon_azimuth then 
		azimuth_show = beacon_azimuth 
		set(azimuth_init,azimuth_show*100)
	end
	-- initialize
	start_timer = start_timer + passed
	if notLoaded and start_timer > 2 then
		dist_show=get(dist_init)
		azimuth_show=get(azimuth_init)/100
		notLoaded = false
	end
	-- set results	
	if get(ismaster)~=1 then
		set(distance, dist_show * 0.001)
		if azimuth_show==azimuth_show then -- check for NaN
			set(azimuth, azimuth_show)
		end
	end
	set(rsbn_rec,rsbn_receiving)
	set(mrs_dot ,morse_dot*rsbn_receiving)
	set(mrs_dash,morse_dash*rsbn_receiving)
	
	

end




