

simDR_tcas_lat                = find_dataref("sim/cockpit2/tcas/targets/position/lat")
simDR_tcas_lon                = find_dataref("sim/cockpit2/tcas/targets/position/lon")
simDR_tcas_type			  = find_dataref("sim/cockpit2/tcas/targets/threat")
simDR_tcas_elev			  = find_dataref("sim/cockpit2/tcas/targets/position/ele")
simDR_tcas_vs 			  = find_dataref("sim/cockpit2/tcas/targets/position/vertical_speed")
simDR_tcas_level 	      = find_dataref("tu154b2/custom/tcas/level_mode")
simDR_fl_mode 			  = find_dataref("tu154b2/custom/tcas/fl_mode")
simDR_radarAlt1 = find_dataref("sim/cockpit2/gauges/indicators/radio_altimeter_height_ft_pilot")
simDR_tcas_vs                = find_dataref("sim/cockpit2/tcas/targets/position/vertical_speed")
simDR_radio_nav03_ID                = find_dataref("sim/cockpit2/radios/indicators/nav3_nav_id")
simDR_radio_nav04_ID                = find_dataref("sim/cockpit2/radios/indicators/nav4_nav_id")
konturDR_text_capt_show 				= find_dataref("sim/custom/kontur/capt/text/show")
konturDR_text_capt_heading			= find_dataref("sim/custom/kontur/capt/text/heading")
konturDR_text_capt_distance			= find_dataref("sim/custom/kontur/capt/text/distance")
--konturDR_text_capt_icon				= find_dataref("sim/custom/kontur/capt/text/icon","array[60]")
konturDR_nd_mode_capt_sel_dial_pos                = find_dataref("sim/cockpit2/EFIS/map_range", "number")
konturDR_nd_mode_fo_sel_dial_pos                  = find_dataref("sim/cockpit2/EFIS/map_range", "number")
konturDR_text_fo_show 				= find_dataref("sim/custom/kontur/fo/text/show")
konturDR_text_fo_heading			= find_dataref("sim/custom/kontur/fo/text/heading")
konturDR_text_fo_distance			= find_dataref("sim/custom/kontur/fo/text/distance")
konturDR_capt_nav			= find_dataref("sim/custom/kontur/left_nav")
konturDR_fo_nav			= find_dataref("sim/custom/kontur/right_nav")

kontur_on = find_dataref("tu154b2/custom/b2/kontur_on")

--konturDR_text_fo_icon				= find_dataref("sim/custom/kontur/fo/text/icon","array[60]")
iconTextDataCapt={}
iconTextDataCapt.icons=find_dataref("sim/custom/kontur/capt/text/icon")
for n=0,59,1 do
  iconTextDataCapt[n]={}
  iconTextDataCapt[n].whitetext=find_dataref("sim/custom/kontur/capt/text/whitetext"..n)
  iconTextDataCapt[n].bluetext=find_dataref("sim/custom/kontur/capt/text/bluetext"..n)
  iconTextDataCapt[n].redtext=find_dataref("sim/custom/kontur/capt/text/redtext"..n)
  iconTextDataCapt[n].greentext=find_dataref("sim/custom/kontur/capt/text/greentext"..n)
  iconTextDataCapt[n].ambertext=find_dataref("sim/custom/kontur/capt/text/ambertext"..n)
  iconTextDataCapt[n].magentatext=find_dataref("sim/custom/kontur/capt/text/magentatext"..n)
end

iconTextDataFO={}
iconTextDataFO.icons=find_dataref("sim/custom/kontur/fo/text/icon")
for n=0,59,1 do
  iconTextDataFO[n]={}
  iconTextDataFO[n].whitetext=find_dataref("sim/custom/kontur/fo/text/whitetext"..n)
  iconTextDataFO[n].bluetext=find_dataref("sim/custom/kontur/fo/text/bluetext"..n)
  iconTextDataFO[n].redtext=find_dataref("sim/custom/kontur/fo/text/redtext"..n)
  iconTextDataFO[n].greentext=find_dataref("sim/custom/kontur/fo/text/greentext"..n)
  iconTextDataFO[n].ambertext=find_dataref("sim/custom/kontur/fo/text/ambertext"..n)
  iconTextDataFO[n].magentatext=find_dataref("sim/custom/kontur/fo/text/magentatext"..n)
end

navAidsJSON   = find_dataref("xtlua/navaids")
fmsJSON = find_dataref("xtlua/fms")
simDRTime=find_dataref("sim/time/total_running_time_sec")
simDR_latitude				= find_dataref("sim/flightmodel/position/latitude")
simDR_longitude				= find_dataref("sim/flightmodel/position/longitude")
simDR_true_heading			= find_dataref("sim/flightmodel/position/psi")
simDR_mag_heading			= find_dataref("sim/cockpit/gyros/psi_ind_ahars_pilot_degm")
simDR_ground_track			= find_dataref("sim/cockpit2/gauges/indicators/ground_track_mag_pilot")
simDR_map_range				= find_dataref("sim/cockpit2/EFIS/map_range")
simDR_map_mode				= find_dataref("sim/cockpit2/EFIS/map_mode")
simDR_map_range_copilot				= find_dataref("sim/cockpit2/EFIS/map_range_copilot")
simDR_map_mode_copilot				= find_dataref("sim/cockpit2/EFIS/map_mode_copilot")
simDR_range_dial_capt			= find_dataref("sim/cockpit/switches/EFIS_map_range_selector")
simDR_range_dial_fo			= find_dataref("sim/cockpit2/EFIS/map_range_copilot")

kontur_nd_map_center_fo                   = find_dataref("sim/custom/kontur/map_center/fo")
kontur_nd_map_center_capt                 = find_dataref("sim/custom/kontur/map_center/capt")
konturDR_nd_capt_vor_ndb                  = find_dataref("sim/cockpit2/EFIS/EFIS_vor_on")
konturDR_nd_fo_vor_ndb                    = find_dataref("sim/cockpit2/EFIS/EFIS_vor_on")
konturDR_nd_capt_wpt                  = find_dataref("sim/cockpit2/EFIS/EFIS_fix_on")
konturDR_nd_fo_wpt                    = find_dataref("sim/cockpit2/EFIS/EFIS_fix_on")
konturDR_nd_capt_apt	                = find_dataref("sim/cockpit2/EFIS/EFIS_airport_on")
konturDR_nd_fo_apt	                = find_dataref("sim/cockpit2/EFIS/EFIS_airport_on")
konturDR_nd_capt_tfc	                        = find_dataref("sim/cockpit2/EFIS/EFIS_tcas_on")
konturDR_nd_fo_tfc	                        = find_dataref("sim/cockpit2/EFIS/EFIS_tcas_on_copilot")
simDR_fms_line					= find_dataref("sim/graphics/misc/kill_map_fms_line")
simDR_vbe_msl = find_dataref("tu154b2/custom/gauges/alt/vbe_msl")
konturDR_nav_left = find_dataref("sim/cockpit2/radios/actuators/gps_power")

local captIRS=1
local foIRS=1
local ranges = {5, 10, 20, 50, 100, 200, 320}
local usedNaviadsTableFO={}
local usedNaviadsTableCapt={}
local currentNaviadsTable={}
local fmsTable={}
local lastCaptNavaid=0
local lastFONavaid=0
local lastUpdate=0
local lastUpdateIcon=0
local lastUpdateFixes=0
local nLength=0
local numFixes=0
local localFixes={}
local scansize=1000
dofile("json/json.lua")
dofile("numberlua.lua")
function livery_load()
  scansize=1000
end

function decodeNAVAIDS()
  if string.len(navAidsJSON) ~= nLength then
      currentNaviadsTable=json.decode(navAidsJSON)
      nLength=string.len(navAidsJSON)
  end
end

function decodeFlightPlan()
  if string.len(fmsJSON) >0 then
      fmsTable=json.decode(fmsJSON)
  end
  
end
function getHeading(lat1,lon1,lat2,lon2)
  b10=math.rad(lat1)
  b11=math.rad(lon1)
  b12=math.rad(lat2)
  b13=math.rad(lon2)
  retVal=math.atan2(math.sin(b13-b11)*math.cos(b12),math.cos(b10)*math.sin(b12)-math.sin(b10)*math.cos(b12)*math.cos(b13-b11))
  return math.deg(retVal)
end
function getHeadingDifference(desireddirection,current_heading)
	error = current_heading - desireddirection
	if (error >  180) then error =error- 360 end
	if (error < -180) then error =error+ 360 end
	return error
end

function getDistance(lat1,lon1,lat2,lon2)
  alat=math.rad(lat1)
  alon=math.rad(lon1)
  blat=math.rad(lat2)
  blon=math.rad(lon2)
  av=math.sin(alat)*math.sin(blat) + math.cos(alat)*math.cos(blat)*math.cos(blon-alon)
  if av > 1 then av=1 end
  retVal=math.acos(av) * 3440
  --print(lat1.." "..lon1.." "..lat2.." "..lon2)
  --print("Distance = "..retVal) 
  return retVal
end
function makeIcon(iconTextData,navtype,text,latitude,longitude,distance)
  if text~=nil and string.lower(text)~="latlong" and iconTextData==iconTextDataCapt and usedNaviadsTableCapt[text]~=nil then return end
  if text~=nil and string.lower(text)~="latlong" and iconTextData==iconTextDataFO and usedNaviadsTableFO[text]~=nil then return end
  if text~=nil and string.lower(text)=="latlong" then text=" " end
  if text~=nil and string.lower(text)=="latlon" then text=" " end
  local abs_heading=getHeading(simDR_latitude,simDR_longitude,latitude,longitude)
  local heading_diff=0
  if simDR_map_mode==2 then
    mag_diff=getHeadingDifference(simDR_true_heading,simDR_mag_heading)
    heading_diff=getHeadingDifference(simDR_ground_track-mag_diff,abs_heading)
  else
    heading_diff=getHeadingDifference(simDR_true_heading,abs_heading)
  end

  
  local lastNavaid=0
  local vor_ndb=0
  local wpt=0
  local apt=0
  local nav=0
  local displayDistance=0
  local range=0
  if iconTextData==iconTextDataCapt then
    range=ranges[simDR_range_dial_capt]
    displayDistance=distance*(455/ranges[simDR_range_dial_capt])
    if (heading_diff < -135 or heading_diff > 135) and displayDistance> 160 and kontur_nd_map_center_capt<1 then return end
    if (heading_diff < -60 or heading_diff > 60) and displayDistance> 270 and kontur_nd_map_center_capt<1 then return end
    if displayDistance> 270 and kontur_nd_map_center_capt>0 then return end
    if (heading_diff < -45 or heading_diff > 45) and displayDistance> 480 and kontur_nd_map_center_capt<1 then return end
    if (heading_diff < -55 or heading_diff > 55) and displayDistance> 400 and kontur_nd_map_center_capt<1 then return end
    lastNavaid=lastCaptNavaid
    apt=konturDR_nd_capt_apt
    nav=konturDR_nav_left
    vor_ndb=konturDR_nd_capt_vor_ndb
    wpt=konturDR_nd_capt_wpt
  else
    range=ranges[simDR_range_dial_fo]
    displayDistance=distance*(455/ranges[simDR_range_dial_fo])
    if (heading_diff < -135 or heading_diff > 135) and displayDistance> 160 and kontur_nd_map_center_fo<1 then return end 
     if displayDistance> 270 and kontur_nd_map_center_fo>0 then return end
     if (heading_diff < -45 or heading_diff > 45) and displayDistance> 480 and kontur_nd_map_center_fo<1 then return end
     if (heading_diff < -55 or heading_diff > 55) and displayDistance> 400 and kontur_nd_map_center_fo<1 then return end
    lastNavaid=lastFONavaid
    apt=konturDR_nd_fo_apt
    nav=konturDR_nav_left
    vor_ndb=konturDR_nd_fo_vor_ndb
    wpt=konturDR_nd_fo_wpt
  end
  
  if lastNavaid > 59 then return end
  
  if navtype==0 then --blank
    iconTextData.icons[lastNavaid]=3
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" "
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" " 
  elseif navtype==1 and apt>0 then --airport
    iconTextData.icons[lastNavaid]=2
    iconTextData[lastNavaid].bluetext=text
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" "
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3003 and nav>0 then --current FMS waypoint
    iconTextData.icons[lastNavaid]=4
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=text
    iconTextData[lastNavaid].greentext=" "
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3005 and nav>0 then --non current FMS waypoint
    iconTextData.icons[lastNavaid]=5
    iconTextData[lastNavaid].whitetext=text
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" "
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3006 then --white tcas no vspeed
    iconTextData.icons[lastNavaid]=22
    iconTextData[lastNavaid].whitetext=text
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3016 then --white tcas dn
    iconTextData.icons[lastNavaid]=21
    iconTextData[lastNavaid].whitetext=text
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
   elseif navtype==3026 then --white tcas up
    iconTextData.icons[lastNavaid]=20
    iconTextData[lastNavaid].whitetext=text
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3036 then --yellow tcas no vspeed
    iconTextData.icons[lastNavaid]=19
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=text
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3046 then --yellow tcas dn
    iconTextData.icons[lastNavaid]=18
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=text
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3056 then --yellow tcas up
    iconTextData.icons[lastNavaid]=17
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=text
	iconTextData[lastNavaid].magentatext=" "
  elseif navtype==3066 then --red tcas no vspeed
    iconTextData.icons[lastNavaid]=16
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=text
  elseif navtype==3076 then --red tcas dn
    iconTextData.icons[lastNavaid]=15
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=text
  elseif navtype==3086 then --red tcas up
    iconTextData.icons[lastNavaid]=14
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=text
  elseif (navtype==3007) then --FIX
    if range>40 or wpt==0 then return end
    iconTextData.icons[lastNavaid]=13
    iconTextData[lastNavaid].bluetext=text
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif (navtype==3096) then --TCAS white solid
    iconTextData.icons[lastNavaid]=8
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].whitetext=text
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" "
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif (navtype==3097) then --TCAS white solid up
    iconTextData.icons[lastNavaid]=9
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].whitetext=text 
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif (navtype==3098) then --TCAS white solid dn
    iconTextData.icons[lastNavaid]=12
    iconTextData[lastNavaid].bluetext=" "
    iconTextData[lastNavaid].whitetext=text 
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" " 
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  elseif bit_and(navtype,4)>0 and vor_ndb>0 then
    iconTextData.icons[lastNavaid]=11
    if text==simDR_radio_nav03_ID or text==simDR_radio_nav04_ID then
      iconTextData.icons[lastNavaid]=10
      iconTextData[lastNavaid].bluetext=" "
      iconTextData[lastNavaid].greentext=text
    else
      iconTextData.icons[lastNavaid]=11
      iconTextData[lastNavaid].bluetext=text
      iconTextData[lastNavaid].greentext=" "
    end
    
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].redtext=" "
    
  elseif navtype==2 and vor_ndb>0 and range<10 then
    iconTextData.icons[lastNavaid]=0
    iconTextData[lastNavaid].bluetext=text
    iconTextData[lastNavaid].whitetext=" "
    iconTextData[lastNavaid].redtext=" "
    iconTextData[lastNavaid].greentext=" "
	iconTextData[lastNavaid].ambertext=" "
	iconTextData[lastNavaid].magentatext=" "
  else
    return
  end
  iconTextData[lastNavaid].latitude=latitude
  iconTextData[lastNavaid].longitude=longitude
  if iconTextData==iconTextDataCapt then
    konturDR_text_capt_show[lastNavaid]=1
    konturDR_text_capt_heading[lastNavaid]=heading_diff
    konturDR_text_capt_distance[lastNavaid]=displayDistance
    lastCaptNavaid=lastCaptNavaid+1
    if text~=nil then usedNaviadsTableCapt[text]=true end
  else
     konturDR_text_fo_show[lastNavaid]=1
     konturDR_text_fo_heading[lastNavaid]=heading_diff
     konturDR_text_fo_distance[lastNavaid]=displayDistance
     lastFONavaid=lastFONavaid+1
     if text~=nil then usedNaviadsTableFO[text]=true end
  end
  
end

function updateIcon(iconData,n,isCaptain)
   local distance = getDistance(simDR_latitude,simDR_longitude,iconData[n].latitude,iconData[n].longitude)
  local abs_heading=getHeading(simDR_latitude,simDR_longitude,iconData[n].latitude,iconData[n].longitude)
  local heading_diff=0
  if simDR_map_mode==2 then
    mag_diff=getHeadingDifference(simDR_true_heading,simDR_mag_heading)
    heading_diff=getHeadingDifference(simDR_ground_track-mag_diff,abs_heading)
  else
    heading_diff=getHeadingDifference(simDR_true_heading,abs_heading)
  end
  if isCaptain==1 then
    displayDistance=distance*(455/ranges[simDR_range_dial_capt])
    konturDR_text_capt_heading[n]=heading_diff
    konturDR_text_capt_distance[n]=displayDistance
  else
     displayDistance=distance*(455/ranges[simDR_range_dial_fo])
     konturDR_text_fo_heading[n]=heading_diff
     konturDR_text_fo_distance[n]=displayDistance

  end
end
function updateIcons()
  for n=0,lastCaptNavaid,1 do
    if konturDR_text_capt_show[n]==0 then break end
    updateIcon(iconTextDataCapt,n,1)
  end
  for n=0,lastFONavaid,1 do
    if konturDR_text_fo_show[n]==0 then break end
    updateIcon(iconTextDataFO,n,0)
  end
end

function newIcons()
  lastCaptNavaid=0
  lastFONavaid=0
  captIRS=1
  foIRS=1
  if simDR_map_mode==4 then
    for n=0,59,1 do
    konturDR_text_capt_show[n]=0
    konturDR_text_fo_show[n]=0
    end
    return
  end
  usedNaviadsTableCapt={}
  usedNaviadsTableFO={}
  --flightplan
  local start=0
  if start<1 then start=1 end
  for n=start,table.getn(fmsTable),1 do
    local distance = getDistance(simDR_latitude,simDR_longitude,fmsTable[n][5],fmsTable[n][6])
    --Captain flightplan
    if distance < ranges[simDR_range_dial_capt] then 
      if fmsTable[n][10]==true then
	      makeIcon(iconTextDataCapt,3003*konturDR_capt_nav,fmsTable[n][8],fmsTable[n][5],fmsTable[n][6],distance)
      else
	      makeIcon(iconTextDataCapt,3005*konturDR_capt_nav,fmsTable[n][8],fmsTable[n][5],fmsTable[n][6],distance)
      end
    end
    --FO flightplan
    if distance < ranges[simDR_range_dial_fo] then 

      if fmsTable[n][10]==true then
	      makeIcon(iconTextDataFO,3003*konturDR_fo_nav,fmsTable[n][8],fmsTable[n][5],fmsTable[n][6],distance)
      else
	      makeIcon(iconTextDataFO,3005*konturDR_fo_nav,fmsTable[n][8],fmsTable[n][5],fmsTable[n][6],distance)
      end
    end
  end 
  --NAVAIDS
  -- for n=table.getn(currentNaviadsTable),1,-1 do
    -- local distance = getDistance(simDR_latitude,simDR_longitude,currentNaviadsTable[n][5],currentNaviadsTable[n][6])
    -- if distance < ranges[simDR_range_dial_capt] then 
      -- makeIcon(iconTextDataCapt,currentNaviadsTable[n][2]*konturDR_capt_nav,currentNaviadsTable[n][8],currentNaviadsTable[n][5],currentNaviadsTable[n][6],distance)
    -- end
    -- if distance < ranges[simDR_range_dial_fo] then 
      -- makeIcon(iconTextDataFO,currentNaviadsTable[n][2]*konturDR_fo_nav,currentNaviadsTable[n][8],currentNaviadsTable[n][5],currentNaviadsTable[n][6],distance)
    -- end
  -- end
  -- --FIXES
  -- for n=1,numFixes do
    -- local distance = getDistance(simDR_latitude,simDR_longitude,localFixes[n]["lat"],localFixes[n]["long"])
    -- if distance < ranges[simDR_range_dial_capt] then 
      -- makeIcon(iconTextDataCapt,3007*konturDR_capt_nav,localFixes[n]["name"],localFixes[n]["lat"],localFixes[n]["long"],distance)
    -- end
    -- if distance < ranges[simDR_range_dial_fo] then 
      -- makeIcon(iconTextDataFO,3007*konturDR_fo_nav,localFixes[n]["name"],localFixes[n]["lat"],localFixes[n]["long"],distance)
    -- end
  -- end

  --TCAS
  for n=1,64,1 do
    local distance = getDistance(simDR_latitude,simDR_longitude,simDR_tcas_lat[n],simDR_tcas_lon[n])
	local threat = simDR_tcas_type[n]
	local vert_spd = simDR_tcas_vs[n]
	local tcas_type = 3006
	local alt_lim_dn=-27
	local alt_lim_up=27
	if simDR_tcas_level==1 then
		alt_lim_up=90
	elseif simDR_tcas_level==1 then
		alt_lim_dn=-90
	end
	
	-- TCAS target elevation
	local alt_show = math.floor((simDR_tcas_elev[n] * 3.280839895013-simDR_vbe_msl) / 100)
	local sign_mark = "+"
	if alt_show < 0 then sign_mark = "-" end
	if simDR_fl_mode==0 then
		if alt_show <= alt_lim_up and alt_show >= alt_lim_dn then
			alt_show = string.format("%s%s", "", math.abs(alt_show) )
			if string.len(alt_show) == 1 then alt_show = string.format("%s%s", "0", alt_show ) end
			alt_show = sign_mark..alt_show
		else
			alt_show = ""
		end			
	else
		alt_show=math.floor((simDR_tcas_elev[n]) * 3.280839895013 / 100)
		alt_show = string.format("%s%s", "", alt_show )
		if string.len(alt_show) == 1 then 
			alt_show = string.format("%s%s", "00", alt_show ) 
		elseif string.len(alt_show) == 2 then
			alt_show = string.format("%s%s", "0", alt_show ) 
		end
	end
	local alt_tgt = math.floor((simDR_tcas_elev[n] * 3.280839895013-simDR_vbe_msl) / 100)
	if threat==-1 then
		tcas_type=0
	else
		if vert_spd<=-500 then
			if threat==0 and alt_tgt <= alt_lim_up and alt_tgt >= alt_lim_dn then
				tcas_type = 3016
			elseif threat==1 then
				tcas_type = 3098
			elseif threat==2 then
				tcas_type = 3046
			elseif threat>2 then
				tcas_type = 3076
			end
		elseif vert_spd>=500 then
			if threat==0 and alt_tgt <= alt_lim_up and alt_tgt >= alt_lim_dn then
				tcas_type = 3026
			elseif threat==1 then
				tcas_type = 3097
			elseif threat==2 then
				tcas_type = 3056
			elseif threat>2 then
				tcas_type = 3086
			end
		else
			if threat==1 then
				tcas_type = 3096
			elseif threat==2 then
				tcas_type = 3036
			elseif threat>2 then
				tcas_type = 3066
			end
		end
	end
	
    if konturDR_nd_capt_tfc>0 and distance < ranges[simDR_range_dial_capt]*1.2 then 
      makeIcon(iconTextDataCapt,tcas_type,alt_show,simDR_tcas_lat[n],simDR_tcas_lon[n],distance)
    end
    if konturDR_nd_fo_tfc>0 and distance < ranges[simDR_range_dial_fo]*1.2 then 
      makeIcon(iconTextDataFO,tcas_type,alt_show,simDR_tcas_lat[n],simDR_tcas_lon[n],distance)
    end
  end 
  for n=lastCaptNavaid,59,1 do
    konturDR_text_capt_show[n]=0
  end
  for n=lastFONavaid,59,1 do
    konturDR_text_fo_show[n]=0
  end
  --print(lastCaptNavaid.." ".. lastFONavaid)
end



local fix_data_file=nil
local nLines=0
local numTempFixes=0
local tmplocalFixes={}


function read_fixes()
  if fix_data_file==nil then
    fix_data_file = io.open( "Resources/default data/earth_fix.dat", "r" )
    fix_data_file:read( "*line")
    fix_data_file:read( "*line")
    fix_data_file:read( "*line") 
  end

  local line=""
  local lat=0
  local long=0
  local name=""
  local distance=0
  --scansize kept low after first pass to ensure time constraints met/no warn:xtlua time overflow during flight
  for n=0 ,scansize do
    line=fix_data_file:read( "*line" )
    if line~=nil then 
      lat=tonumber(string.sub(line,1,13))
      long=tonumber(string.sub(line,16,29))
      if lat~=nil and long~=nil then 
        distance=getDistance(simDR_latitude,simDR_longitude,lat,long)
        name=string.sub(line,31,36)
        i, j = string.find(name, "%d+")
        if distance<40 and string.sub(name,1,1)~=" " and i==nil then
          numTempFixes=numTempFixes+1
          tmplocalFixes[numTempFixes]={}
          tmplocalFixes[numTempFixes]["name"]=name
          tmplocalFixes[numTempFixes]["lat"]=lat
          tmplocalFixes[numTempFixes]["long"]=long
          
          --print(name)
        end
      end
      nLines=nLines+1
    else
      break
    end
  end
  if line==nil then 
    fix_data_file:close()
    fix_data_file=nil
    localFixes={}
    scansize=50
    numFixes=numTempFixes
    for n=1 ,numTempFixes do
      localFixes[n]={}
      localFixes[n]["name"]=tmplocalFixes[n]["name"]
      localFixes[n]["lat"]=tmplocalFixes[n]["lat"]
      localFixes[n]["long"]=tmplocalFixes[n]["long"]
    end
    tmplocalFixes={}
    numTempFixes=0
    nLines=0
    lastUpdateFixes=simDRTime
  end
end
last_range_dial = 0
function aircraft_unload()
  --print("ND aircraft unload")
  if fix_data_file~=nil then
    --print("ND close fix_data_file")
    fix_data_file:close()
    fix_data_file=nil
  end
end
function after_physics()
    
    if kontur_on > 0 then


        if simDR_map_mode == 5 then
            kontur_nd_map_center_capt                   = 1
        else
            kontur_nd_map_center_capt                   = 0
        end
		 if simDR_map_mode_copilot == 5 then
            kontur_nd_map_center_fo                   = 1
        else
            kontur_nd_map_center_fo                   = 0
        end
	
      local diff=simDRTime-lastUpdate

      --force new icons if range dial changes (stop bleed into other displays)
      if simDR_range_dial_capt~=last_range_dial then
        last_range_dial=simDR_range_dial_capt
        newIcons()
      end

      updateIcons()
      local diff2=simDRTime-lastUpdateIcon
      if diff>0.5 then 
        newIcons()
        lastUpdateIcon=simDRTime
      end
      diff2=simDRTime-lastUpdateFixes
      if diff2>10 then 
        read_fixes()
      end
      if diff<2 then return end
      lastUpdate=simDRTime
      decodeNAVAIDS()
      decodeFlightPlan()
      newIcons()

      --print("navaids size="..table.getn(currentNaviadsTable))
      --print("fms size="..table.getn(fmsTable))
    end
  
end 
