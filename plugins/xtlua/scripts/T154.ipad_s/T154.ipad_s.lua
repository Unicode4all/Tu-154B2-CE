--replace create_command
function deferred_command(name,desc,realFunc)
	return replace_command(name,realFunc)
end
--replace deferred_dataref
function deferred_dataref(name,nilType,callFunction)
  if callFunction~=nil then
    --print("WARN:" .. name .. " is trying to wrap a function to a dataref -> use xlua")
    end
    return find_dataref(name)
end



--*************************************************************************************--
--** 				        CREATE READ-WRITE CUSTOM DATAREFS                        **--
--*************************************************************************************--


--fork calc 

simDR_lat		= find_dataref("sim/flightmodel/position/latitude")
simDR_lon		= find_dataref("sim/flightmodel/position/longitude")

fork = find_dataref("sim/custom/t154_efb/fork_result") 
dep_icao = find_dataref("sim/custom/t154_efb/fork_dep") 
arr_icao = find_dataref("sim/custom/t154_efb/fork_arr") 
wx_icao = find_dataref("sim/custom/t154_efb/wx_icao") 

icao_dep_1 = find_dataref("sim/custom/t154_efb/fork_dep1") 
icao_dep_2 = find_dataref("sim/custom/t154_efb/fork_dep2") 
icao_dep_3 = find_dataref("sim/custom/t154_efb/fork_dep3") 
icao_dep_4 = find_dataref("sim/custom/t154_efb/fork_dep4") 
icao_arr_1 = find_dataref("sim/custom/t154_efb/fork_arr1") 
icao_arr_2 = find_dataref("sim/custom/t154_efb/fork_arr2") 
icao_arr_3 = find_dataref("sim/custom/t154_efb/fork_arr3") 
icao_arr_4 = find_dataref("sim/custom/t154_efb/fork_arr4") 
icao_wx_1 = find_dataref("sim/custom/t154_efb/wx_icao1") 
icao_wx_2 = find_dataref("sim/custom/t154_efb/wx_icao2") 
icao_wx_3 = find_dataref("sim/custom/t154_efb/wx_icao3") 
icao_wx_4 = find_dataref("sim/custom/t154_efb/wx_icao4") 



wx_result_1 = find_dataref("sim/custom/t154_efb/wx_result_1") 
wx_result_2 = find_dataref("sim/custom/t154_efb/wx_result_2") 
wx_result_3 = find_dataref("sim/custom/t154_efb/wx_result_3") 
wx_result_4 = find_dataref("sim/custom/t154_efb/wx_result_4") 
kbd_popup = deferred_dataref("sim/custom/t154_efb/kbp_popup", "number") 
kbd_select = deferred_dataref("sim/custom/t154_efb/kbp_select", "number") 
qfe_elev = deferred_dataref("sim/custom/t154_efb/qfe_elev", "number") 


icao_dep_1 = 1
icao_dep_2 = 1
icao_dep_3 = 1 
icao_dep_4 = 1
icao_arr_1 = 1 
icao_arr_2 = 1
icao_arr_3 = 1
icao_arr_4 = 1
icao_wx_1 = 1
icao_wx_2 = 1
icao_wx_3 = 1
icao_wx_4 = 1
dep_icao = ""
arr_icao = ""
wx_icao = ""
wx_result = ""
local mag_dec = {}
local file_path = ""
local magvar_dep = 0
local magvar_arr = 0
local lon_dep = 0
local lon_arr = 0
local lat_dep = 0
local lat_arr = 0
local letters = {"A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"}



--*************************************************************************************--
--** 				        MAIN PROGRAM LOGIC                                       **--
--*************************************************************************************--

function debug()
	print(dep_icao, lat_dep,lon_dep,magvar_dep)
	print(arr_icao, lat_arr,lon_arr,magvar_arr)
end



--run_at_interval(debug, 5.0)


function icao()
	icao_dep_1 = math.floor(icao_dep_1)
	icao_dep_2 = math.floor(icao_dep_2)
	icao_dep_3 = math.floor(icao_dep_3)
	icao_dep_4 = math.floor(icao_dep_4)
	icao_arr_1 = math.floor(icao_arr_1)
	icao_arr_2 = math.floor(icao_arr_2)
	icao_arr_3 = math.floor(icao_arr_3)
	icao_arr_4 = math.floor(icao_arr_4)
	icao_wx_1 = math.floor(icao_wx_1)
	icao_wx_2 = math.floor(icao_wx_2)
	icao_wx_3 = math.floor(icao_wx_3)
	icao_wx_4 = math.floor(icao_wx_4)
	if icao_dep_1 > -1 and icao_dep_2 > -1 and icao_dep_3 > -1 and icao_dep_4 > -1 and icao_dep_1 < 27 and icao_dep_2 < 27 and icao_dep_3 < 27 and icao_dep_4 < 27 then
    	dep_icao=string.format(letters[icao_dep_1] .. letters[icao_dep_2] .. letters[icao_dep_3] .. letters[icao_dep_4])
	end
	if icao_arr_1 > -1 and icao_arr_2 > -1 and icao_arr_3 > -1 and icao_arr_4 > -1 and icao_arr_1 < 27 and icao_arr_2 < 27 and icao_arr_3 < 27 and icao_arr_4 < 27 then
    	arr_icao=string.format(letters[icao_arr_1] .. letters[icao_arr_2] .. letters[icao_arr_3] .. letters[icao_arr_4])
	end
	if icao_wx_1 > 0 and icao_wx_2 > 0 and icao_wx_3 > 0 and icao_wx_4 > 0 and icao_wx_1 < 27 and icao_wx_2 < 27 and icao_wx_3 < 27 and icao_wx_4 < 27 then
    	wx_icao=string.format(letters[icao_wx_1]..letters[icao_wx_2]..letters[icao_wx_3]..letters[icao_wx_4])
	end
end


function calc_fork_CMDhandler(phase, duration)
	if phase == 0 then
			coord_icao(dep_icao)
			magvar_dep = mag_variation_deg(lat_dep,lon_dep)
			coord_icao(arr_icao)
			magvar_arr = mag_variation_deg(lat_arr,lon_arr)
			fork = magvar_dep-magvar_arr-(lon_dep-lon_arr)*math.sin(math.rad((lat_dep+lat_arr)*0.5))
	end
end

function wxr_req_CMDhandler(phase, duration)
	if phase == 0 then
		--wxr_icao(wx_icao)
	elseif phase == 2 then
		kbd_popup = 0
		kbd_select = 0
	end
end




function efb_key_A_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 1
				end
				if kbd_select == 2 then
					icao_dep_2 = 1
				end
				if kbd_select == 3 then
					icao_dep_3 = 1
				end
				if kbd_select == 4 then
					icao_dep_4 = 1
				end
				if kbd_select == 5 then
					icao_arr_1 = 1
				end
				if kbd_select == 6 then
					icao_arr_2 = 1
				end
				if kbd_select == 7 then
					icao_arr_3 = 1
				end
				if kbd_select == 8 then
					icao_arr_4 = 1
				end
				if kbd_select == 9 then
					icao_wx_1 = 1
				end
				if kbd_select == 10 then
					icao_wx_2 = 1
				end
				if kbd_select == 11 then
					icao_wx_3 = 1
				end
				if kbd_select == 12 then
					icao_wx_4 = 1
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_B_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 2
				end
				if kbd_select == 2 then
					icao_dep_2 = 2
				end
				if kbd_select == 3 then
					icao_dep_3 = 2
				end
				if kbd_select == 4 then
					icao_dep_4 = 2
				end
				if kbd_select == 5 then
					icao_arr_1 = 2
				end
				if kbd_select == 6 then
					icao_arr_2 = 2
				end
				if kbd_select == 7 then
					icao_arr_3 = 2
				end
				if kbd_select == 8 then
					icao_arr_4 = 2
				end
				if kbd_select == 9 then
					icao_wx_1 = 2
				end
				if kbd_select == 10 then
					icao_wx_2 = 2
				end
				if kbd_select == 11 then
					icao_wx_3 = 2
				end
				if kbd_select == 12 then
					icao_wx_4 = 2
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_C_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 3
				end
				if kbd_select == 2 then
					icao_dep_2 = 3
				end
				if kbd_select == 3 then
					icao_dep_3 = 3
				end
				if kbd_select == 4 then
					icao_dep_4 = 3
				end
				if kbd_select == 5 then
					icao_arr_1 = 3
				end
				if kbd_select == 6 then
					icao_arr_2 = 3
				end
				if kbd_select == 7 then
					icao_arr_3 = 3
				end
				if kbd_select == 8 then
					icao_arr_4 = 3
				end
				if kbd_select == 9 then
					icao_wx_1 = 3
				end
				if kbd_select == 10 then
					icao_wx_2 = 3
				end
				if kbd_select == 11 then
					icao_wx_3 = 3
				end
				if kbd_select == 12 then
					icao_wx_4 = 3
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_D_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 4
				end
				if kbd_select == 2 then
					icao_dep_2 = 4
				end
				if kbd_select == 3 then
					icao_dep_3 = 4
				end
				if kbd_select == 4 then
					icao_dep_4 = 4
				end
				if kbd_select == 5 then
					icao_arr_1 = 4
				end
				if kbd_select == 6 then
					icao_arr_2 = 4
				end
				if kbd_select == 7 then
					icao_arr_3 = 4
				end
				if kbd_select == 8 then
					icao_arr_4 = 4
				end
				if kbd_select == 9 then
					icao_wx_1 = 4
				end
				if kbd_select == 10 then
					icao_wx_2 = 4
				end
				if kbd_select == 11 then
					icao_wx_3 = 4
				end
				if kbd_select == 12 then
					icao_wx_4 = 4
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_E_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 5
				end
				if kbd_select == 2 then
					icao_dep_2 = 5
				end
				if kbd_select == 3 then
					icao_dep_3 = 5
				end
				if kbd_select == 4 then
					icao_dep_4 = 5
				end
				if kbd_select == 5 then
					icao_arr_1 = 5
				end
				if kbd_select == 6 then
					icao_arr_2 = 5
				end
				if kbd_select == 7 then
					icao_arr_3 = 5
				end
				if kbd_select == 8 then
					icao_arr_4 = 5
				end
				if kbd_select == 9 then
					icao_wx_1 = 5
				end
				if kbd_select == 10 then
					icao_wx_2 = 5
				end
				if kbd_select == 11 then
					icao_wx_3 = 5
				end
				if kbd_select == 12 then
					icao_wx_4 = 5
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_F_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 6
				end
				if kbd_select == 2 then
					icao_dep_2 = 6
				end
				if kbd_select == 3 then
					icao_dep_3 = 6
				end
				if kbd_select == 4 then
					icao_dep_4 = 6
				end
				if kbd_select == 5 then
					icao_arr_1 = 6
				end
				if kbd_select == 6 then
					icao_arr_2 = 6
				end
				if kbd_select == 7 then
					icao_arr_3 = 6
				end
				if kbd_select == 8 then
					icao_arr_4 = 6
				end
				if kbd_select == 9 then
					icao_wx_1 = 6
				end
				if kbd_select == 10 then
					icao_wx_2 = 6
				end
				if kbd_select == 11 then
					icao_wx_3 = 6
				end
				if kbd_select == 12 then
					icao_wx_4 = 6
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end


function efb_key_G_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 7
				end
				if kbd_select == 2 then
					icao_dep_2 = 7
				end
				if kbd_select == 3 then
					icao_dep_3 = 7
				end
				if kbd_select == 4 then
					icao_dep_4 = 7
				end
				if kbd_select == 5 then
					icao_arr_1 = 7
				end
				if kbd_select == 6 then
					icao_arr_2 = 7
				end
				if kbd_select == 7 then
					icao_arr_3 = 7
				end
				if kbd_select == 8 then
					icao_arr_4 = 7
				end
				if kbd_select == 9 then
					icao_wx_1 = 7
				end
				if kbd_select == 10 then
					icao_wx_2 = 7
				end
				if kbd_select == 11 then
					icao_wx_3 = 7
				end
				if kbd_select == 12 then
					icao_wx_4 = 7
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end


function efb_key_H_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 8
				end
				if kbd_select == 2 then
					icao_dep_2 = 8
				end
				if kbd_select == 3 then
					icao_dep_3 = 8
				end
				if kbd_select == 4 then
					icao_dep_4 = 8
				end
				if kbd_select == 5 then
					icao_arr_1 = 8
				end
				if kbd_select == 6 then
					icao_arr_2 = 8
				end
				if kbd_select == 7 then
					icao_arr_3 = 8
				end
				if kbd_select == 8 then
					icao_arr_4 = 8
				end
				if kbd_select == 9 then
					icao_wx_1 = 8
				end
				if kbd_select == 10 then
					icao_wx_2 = 8
				end
				if kbd_select == 11 then
					icao_wx_3 = 8
				end
				if kbd_select == 12 then
					icao_wx_4 = 8
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_I_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 9
				end
				if kbd_select == 2 then
					icao_dep_2 = 9
				end
				if kbd_select == 3 then
					icao_dep_3 = 9
				end
				if kbd_select == 4 then
					icao_dep_4 = 9
				end
				if kbd_select == 5 then
					icao_arr_1 = 9
				end
				if kbd_select == 6 then
					icao_arr_2 = 9
				end
				if kbd_select == 7 then
					icao_arr_3 = 9
				end
				if kbd_select == 8 then
					icao_arr_4 = 9
				end
				if kbd_select == 9 then
					icao_wx_1 = 9
				end
				if kbd_select == 10 then
					icao_wx_2 = 9
				end
				if kbd_select == 11 then
					icao_wx_3 = 9
				end
				if kbd_select == 12 then
					icao_wx_4 = 9
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_J_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 10
				end
				if kbd_select == 2 then
					icao_dep_2 = 10
				end
				if kbd_select == 3 then
					icao_dep_3 = 10
				end
				if kbd_select == 4 then
					icao_dep_4 = 10
				end
				if kbd_select == 5 then
					icao_arr_1 = 10
				end
				if kbd_select == 6 then
					icao_arr_2 = 10
				end
				if kbd_select == 7 then
					icao_arr_3 = 10
				end
				if kbd_select == 8 then
					icao_arr_4 = 10
				end
				if kbd_select == 9 then
					icao_wx_1 = 10
				end
				if kbd_select == 10 then
					icao_wx_2 = 10
				end
				if kbd_select == 11 then
					icao_wx_3 = 10
				end
				if kbd_select == 12 then
					icao_wx_4 = 10
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end


function efb_key_K_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 11
				end
				if kbd_select == 2 then
					icao_dep_2 = 11
				end
				if kbd_select == 3 then
					icao_dep_3 = 11
				end
				if kbd_select == 4 then
					icao_dep_4 = 11
				end
				if kbd_select == 5 then
					icao_arr_1 = 11
				end
				if kbd_select == 6 then
					icao_arr_2 = 11
				end
				if kbd_select == 7 then
					icao_arr_3 = 11
				end
				if kbd_select == 8 then
					icao_arr_4 = 11
				end
				if kbd_select == 9 then
					icao_wx_1 = 11
				end
				if kbd_select == 10 then
					icao_wx_2 = 11
				end
				if kbd_select == 11 then
					icao_wx_3 = 11
				end
				if kbd_select == 12 then
					icao_wx_4 = 11
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_L_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 12
				end
				if kbd_select == 2 then
					icao_dep_2 = 12
				end
				if kbd_select == 3 then
					icao_dep_3 = 12
				end
				if kbd_select == 4 then
					icao_dep_4 = 12
				end
				if kbd_select == 5 then
					icao_arr_1 = 12
				end
				if kbd_select == 6 then
					icao_arr_2 = 12
				end
				if kbd_select == 7 then
					icao_arr_3 = 12
				end
				if kbd_select == 8 then
					icao_arr_4 = 12
				end
				if kbd_select == 9 then
					icao_wx_1 = 12
				end
				if kbd_select == 10 then
					icao_wx_2 = 12
				end
				if kbd_select == 11 then
					icao_wx_3 = 12
				end
				if kbd_select == 12 then
					icao_wx_4 = 12
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end


function efb_key_M_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 13
				end
				if kbd_select == 2 then
					icao_dep_2 = 13
				end
				if kbd_select == 3 then
					icao_dep_3 = 13
				end
				if kbd_select == 4 then
					icao_dep_4 = 13
				end
				if kbd_select == 5 then
					icao_arr_1 = 13
				end
				if kbd_select == 6 then
					icao_arr_2 = 13
				end
				if kbd_select == 7 then
					icao_arr_3 = 13
				end
				if kbd_select == 8 then
					icao_arr_4 = 13
				end
				if kbd_select == 9 then
					icao_wx_1 = 13
				end
				if kbd_select == 10 then
					icao_wx_2 = 13
				end
				if kbd_select == 11 then
					icao_wx_3 = 13
				end
				if kbd_select == 12 then
					icao_wx_4 = 13
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_N_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 14
				end
				if kbd_select == 2 then
					icao_dep_2 = 14
				end
				if kbd_select == 3 then
					icao_dep_3 = 14
				end
				if kbd_select == 4 then
					icao_dep_4 = 14
				end
				if kbd_select == 5 then
					icao_arr_1 = 14
				end
				if kbd_select == 6 then
					icao_arr_2 = 14
				end
				if kbd_select == 7 then
					icao_arr_3 = 14
				end
				if kbd_select == 8 then
					icao_arr_4 = 14
				end
				if kbd_select == 9 then
					icao_wx_1 = 14
				end
				if kbd_select == 10 then
					icao_wx_2 = 14
				end
				if kbd_select == 11 then
					icao_wx_3 = 14
				end
				if kbd_select == 12 then
					icao_wx_4 = 14
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_O_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 15
				end
				if kbd_select == 2 then
					icao_dep_2 = 15
				end
				if kbd_select == 3 then
					icao_dep_3 = 15
				end
				if kbd_select == 4 then
					icao_dep_4 = 15
				end
				if kbd_select == 5 then
					icao_arr_1 = 15
				end
				if kbd_select == 6 then
					icao_arr_2 = 15
				end
				if kbd_select == 7 then
					icao_arr_3 = 15
				end
				if kbd_select == 8 then
					icao_arr_4 = 15
				end
				if kbd_select == 9 then
					icao_wx_1 = 15
				end
				if kbd_select == 10 then
					icao_wx_2 = 15
				end
				if kbd_select == 11 then
					icao_wx_3 = 15
				end
				if kbd_select == 12 then
					icao_wx_4 = 15
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_P_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 16
				end
				if kbd_select == 2 then
					icao_dep_2 = 16
				end
				if kbd_select == 3 then
					icao_dep_3 = 16
				end
				if kbd_select == 4 then
					icao_dep_4 = 16
				end
				if kbd_select == 5 then
					icao_arr_1 = 16
				end
				if kbd_select == 6 then
					icao_arr_2 = 16
				end
				if kbd_select == 7 then
					icao_arr_3 = 16
				end
				if kbd_select == 8 then
					icao_arr_4 = 16
				end
				if kbd_select == 9 then
					icao_wx_1 = 16
				end
				if kbd_select == 10 then
					icao_wx_2 = 16
				end
				if kbd_select == 11 then
					icao_wx_3 = 16
				end
				if kbd_select == 12 then
					icao_wx_4 = 16
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_Q_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 17
				end
				if kbd_select == 2 then
					icao_dep_2 = 17
				end
				if kbd_select == 3 then
					icao_dep_3 = 17
				end
				if kbd_select == 4 then
					icao_dep_4 = 17
				end
				if kbd_select == 5 then
					icao_arr_1 = 17
				end
				if kbd_select == 6 then
					icao_arr_2 = 17
				end
				if kbd_select == 7 then
					icao_arr_3 = 17
				end
				if kbd_select == 8 then
					icao_arr_4 = 17
				end
				if kbd_select == 9 then
					icao_wx_1 = 17
				end
				if kbd_select == 10 then
					icao_wx_2 = 17
				end
				if kbd_select == 11 then
					icao_wx_3 = 17
				end
				if kbd_select == 12 then
					icao_wx_4 = 17
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_R_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 18
				end
				if kbd_select == 2 then
					icao_dep_2 = 18
				end
				if kbd_select == 3 then
					icao_dep_3 = 18
				end
				if kbd_select == 4 then
					icao_dep_4 = 18
				end
				if kbd_select == 5 then
					icao_arr_1 = 18
				end
				if kbd_select == 6 then
					icao_arr_2 = 18
				end
				if kbd_select == 7 then
					icao_arr_3 = 18
				end
				if kbd_select == 8 then
					icao_arr_4 = 18
				end
				if kbd_select == 9 then
					icao_wx_1 = 18
				end
				if kbd_select == 10 then
					icao_wx_2 = 18
				end
				if kbd_select == 11 then
					icao_wx_3 = 18
				end
				if kbd_select == 12 then
					icao_wx_4 = 18
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_S_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 19
				end
				if kbd_select == 2 then
					icao_dep_2 = 19
				end
				if kbd_select == 3 then
					icao_dep_3 = 19
				end
				if kbd_select == 4 then
					icao_dep_4 = 19
				end
				if kbd_select == 5 then
					icao_arr_1 = 19
				end
				if kbd_select == 6 then
					icao_arr_2 = 19
				end
				if kbd_select == 7 then
					icao_arr_3 = 19
				end
				if kbd_select == 8 then
					icao_arr_4 = 19
				end
				if kbd_select == 9 then
					icao_wx_1 = 19
				end
				if kbd_select == 10 then
					icao_wx_2 = 19
				end
				if kbd_select == 11 then
					icao_wx_3 = 19
				end
				if kbd_select == 12 then
					icao_wx_4 = 19
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_T_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 20
				end
				if kbd_select == 2 then
					icao_dep_2 = 20
				end
				if kbd_select == 3 then
					icao_dep_3 = 20
				end
				if kbd_select == 4 then
					icao_dep_4 = 20
				end
				if kbd_select == 5 then
					icao_arr_1 = 20
				end
				if kbd_select == 6 then
					icao_arr_2 = 20
				end
				if kbd_select == 7 then
					icao_arr_3 = 20
				end
				if kbd_select == 8 then
					icao_arr_4 = 20
				end
				if kbd_select == 9 then
					icao_wx_1 = 20
				end
				if kbd_select == 10 then
					icao_wx_2 = 20
				end
				if kbd_select == 11 then
					icao_wx_3 = 20
				end
				if kbd_select == 12 then
					icao_wx_4 = 20
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_U_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 21
				end
				if kbd_select == 2 then
					icao_dep_2 = 21
				end
				if kbd_select == 3 then
					icao_dep_3 = 21
				end
				if kbd_select == 4 then
					icao_dep_4 = 21
				end
				if kbd_select == 5 then
					icao_arr_1 = 21
				end
				if kbd_select == 6 then
					icao_arr_2 = 21
				end
				if kbd_select == 7 then
					icao_arr_3 = 21
				end
				if kbd_select == 8 then
					icao_arr_4 = 21
				end
				if kbd_select == 9 then
					icao_wx_1 = 21
				end
				if kbd_select == 10 then
					icao_wx_2 = 21
				end
				if kbd_select == 11 then
					icao_wx_3 = 21
				end
				if kbd_select == 12 then
					icao_wx_4 = 21
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_V_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 22
				end
				if kbd_select == 2 then
					icao_dep_2 = 22
				end
				if kbd_select == 3 then
					icao_dep_3 = 22
				end
				if kbd_select == 4 then
					icao_dep_4 = 22
				end
				if kbd_select == 5 then
					icao_arr_1 = 22
				end
				if kbd_select == 6 then
					icao_arr_2 = 22
				end
				if kbd_select == 7 then
					icao_arr_3 = 22
				end
				if kbd_select == 8 then
					icao_arr_4 = 22
				end
				if kbd_select == 9 then
					icao_wx_1 = 22
				end
				if kbd_select == 10 then
					icao_wx_2 = 22
				end
				if kbd_select == 11 then
					icao_wx_3 = 22
				end
				if kbd_select == 12 then
					icao_wx_4 = 22
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_W_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 23
				end
				if kbd_select == 2 then
					icao_dep_2 = 23
				end
				if kbd_select == 3 then
					icao_dep_3 = 23
				end
				if kbd_select == 4 then
					icao_dep_4 = 23
				end
				if kbd_select == 5 then
					icao_arr_1 = 23
				end
				if kbd_select == 6 then
					icao_arr_2 = 23
				end
				if kbd_select == 7 then
					icao_arr_3 = 23
				end
				if kbd_select == 8 then
					icao_arr_4 = 23
				end
				if kbd_select == 9 then
					icao_wx_1 = 23
				end
				if kbd_select == 10 then
					icao_wx_2 = 23
				end
				if kbd_select == 11 then
					icao_wx_3 = 23
				end
				if kbd_select == 12 then
					icao_wx_4 = 23
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_X_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 24
				end
				if kbd_select == 2 then
					icao_dep_2 = 24
				end
				if kbd_select == 3 then
					icao_dep_3 = 24
				end
				if kbd_select == 4 then
					icao_dep_4 = 24
				end
				if kbd_select == 5 then
					icao_arr_1 = 24
				end
				if kbd_select == 6 then
					icao_arr_2 = 24
				end
				if kbd_select == 7 then
					icao_arr_3 = 24
				end
				if kbd_select == 8 then
					icao_arr_4 = 24
				end
				if kbd_select == 9 then
					icao_wx_1 = 24
				end
				if kbd_select == 10 then
					icao_wx_2 = 24
				end
				if kbd_select == 11 then
					icao_wx_3 = 24
				end
				if kbd_select == 12 then
					icao_wx_4 = 24
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_Y_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 25
				end
				if kbd_select == 2 then
					icao_dep_2 = 25
				end
				if kbd_select == 3 then
					icao_dep_3 = 25
				end
				if kbd_select == 4 then
					icao_dep_4 = 25
				end
				if kbd_select == 5 then
					icao_arr_1 = 25
				end
				if kbd_select == 6 then
					icao_arr_2 = 25
				end
				if kbd_select == 7 then
					icao_arr_3 = 25
				end
				if kbd_select == 8 then
					icao_arr_4 = 25
				end
				if kbd_select == 9 then
					icao_wx_1 = 25
				end
				if kbd_select == 10 then
					icao_wx_2 = 25
				end
				if kbd_select == 11 then
					icao_wx_3 = 25
				end
				if kbd_select == 12 then
					icao_wx_4 = 25
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end

function efb_key_Z_CMDhandler(phase, duration)
	if phase == 0 then
			if kbd_popup > 0 then
				if kbd_select == 1 then
					icao_dep_1 = 26
				end
				if kbd_select == 2 then
					icao_dep_2 = 26
				end
				if kbd_select == 3 then
					icao_dep_3 = 26
				end
				if kbd_select == 4 then
					icao_dep_4 = 26
				end
				if kbd_select == 5 then
					icao_arr_1 = 26
				end
				if kbd_select == 6 then
					icao_arr_2 = 26
				end
				if kbd_select == 7 then
					icao_arr_3 = 26
				end
				if kbd_select == 8 then
					icao_arr_4 = 26
				end
				if kbd_select == 9 then
					icao_wx_1 = 26
				end
				if kbd_select == 10 then
					icao_wx_2 = 26
				end
				if kbd_select == 11 then
					icao_wx_3 = 26
				end
				if kbd_select == 12 then
					icao_wx_4 = 26
				end
			end
	elseif phase == 2 then
		if kbd_select > 0 and kbd_select < 4 then
			kbd_select = kbd_select +1
		elseif kbd_select > 4 and kbd_select < 8 then
			kbd_select = kbd_select +1
		elseif kbd_select > 8 and kbd_select < 12 then
			kbd_select = kbd_select +1
		else
			kbd_select = 0
		end
	end
end


efb_key_a_CMD = deferred_command("t154_efb/efb_key_a", "EFB KEY A", efb_key_A_CMDhandler)
efb_key_b_CMD = deferred_command("t154_efb/efb_key_b", "EFB KEY B", efb_key_B_CMDhandler)
efb_key_c_CMD = deferred_command("t154_efb/efb_key_c", "EFB KEY C", efb_key_C_CMDhandler)
efb_key_d_CMD = deferred_command("t154_efb/efb_key_d", "EFB KEY D", efb_key_D_CMDhandler)
efb_key_e_CMD = deferred_command("t154_efb/efb_key_e", "EFB KEY E", efb_key_E_CMDhandler)
efb_key_f_CMD = deferred_command("t154_efb/efb_key_f", "EFB KEY F", efb_key_F_CMDhandler)
efb_key_g_CMD = deferred_command("t154_efb/efb_key_g", "EFB KEY G", efb_key_G_CMDhandler)
efb_key_h_CMD = deferred_command("t154_efb/efb_key_h", "EFB KEY H", efb_key_H_CMDhandler)
efb_key_i_CMD = deferred_command("t154_efb/efb_key_i", "EFB KEY I", efb_key_I_CMDhandler)
efb_key_j_CMD = deferred_command("t154_efb/efb_key_j", "EFB KEY J", efb_key_J_CMDhandler)
efb_key_k_CMD = deferred_command("t154_efb/efb_key_k", "EFB KEY K", efb_key_K_CMDhandler)
efb_key_l_CMD = deferred_command("t154_efb/efb_key_l", "EFB KEY L", efb_key_L_CMDhandler)
efb_key_m_CMD = deferred_command("t154_efb/efb_key_m", "EFB KEY M", efb_key_M_CMDhandler)
efb_key_n_CMD = deferred_command("t154_efb/efb_key_n", "EFB KEY N", efb_key_N_CMDhandler)
efb_key_o_CMD = deferred_command("t154_efb/efb_key_o", "EFB KEY O", efb_key_O_CMDhandler)
efb_key_p_CMD = deferred_command("t154_efb/efb_key_p", "EFB KEY P", efb_key_P_CMDhandler)
efb_key_q_CMD = deferred_command("t154_efb/efb_key_q", "EFB KEY Q", efb_key_Q_CMDhandler)
efb_key_r_CMD = deferred_command("t154_efb/efb_key_r", "EFB KEY R", efb_key_R_CMDhandler)
efb_key_s_CMD = deferred_command("t154_efb/efb_key_s", "EFB KEY S", efb_key_S_CMDhandler)
efb_key_t_CMD = deferred_command("t154_efb/efb_key_t", "EFB KEY T", efb_key_T_CMDhandler)
efb_key_u_CMD = deferred_command("t154_efb/efb_key_u", "EFB KEY U", efb_key_U_CMDhandler)
efb_key_v_CMD = deferred_command("t154_efb/efb_key_v", "EFB KEY V", efb_key_V_CMDhandler)
efb_key_w_CMD = deferred_command("t154_efb/efb_key_w", "EFB KEY W", efb_key_W_CMDhandler)
efb_key_x_CMD = deferred_command("t154_efb/efb_key_x", "EFB KEY X", efb_key_X_CMDhandler)
efb_key_y_CMD = deferred_command("t154_efb/efb_key_y", "EFB KEY Y", efb_key_Y_CMDhandler)
efb_key_z_CMD = deferred_command("t154_efb/efb_key_z", "EFB KEY Z", efb_key_Z_CMDhandler)
calc_fork_CMD = deferred_command("t154_efb/calc_fork", "EFB CALC FORK", calc_fork_CMDhandler)
wxr_req_CMD = deferred_command("t154_efb/wxr_req", "EFB WXR req", wxr_req_CMDhandler)

function coord_icao(icao)
    local BUFSIZE = 2^13  --8K
    local f, lines, rest, s, g, h, j, k, i
    f = io.open("Custom Data/CIFP/" .. icao .. ".dat", "r")
	if f == nil then
		f = io.open("Resources/default data/CIFP/" .. icao .. ".dat", "r")
	end
	if f ~= nil then
		for s in io.input(f):lines() do
			if string.find(s, "^RWY+%g") then
				--print(s)
				if s ~= nil then
					if icao==arr_icao then
						qfe_elev = math.floor((tonumber(s:match("%d%d%d%d%d"))) * 0.2) * 5
					end
					h =string.sub(s:match("%a+%d+%p+%a+%d+"),1,9)
					if h:match("N") then
						h =string.gsub(string.sub(s:match("%a+%d+%p+%a+%d+"),1,9),"%a","")
						if icao==dep_icao then
							lat_dep = tonumber(h)*0.000001
						else
							lat_arr = tonumber(h)*0.000001
						end
					else
						h =string.gsub(string.sub(s:match("%a+%d+%p+%a+%d+"),1,9),"%a","")
						if icao==dep_icao then
							lat_dep = tonumber(h)*-0.000001
						else
							lat_arr = tonumber(h)*-0.000001
						end
					end
					--print(h)
					j =string.sub(s:match("%a+%d+%p+%a+%d+"),11,20)
					if j:match("E") then
						j =string.gsub(string.sub(s:match("%a+%d+%p+%a+%d+"),11,20),"%a","")
						if icao==dep_icao then
							lon_dep = tonumber(j)*0.000001
						else
							lon_arr = tonumber(j)*0.000001
						end
					else
						j =string.gsub(string.sub(s:match("%a+%d+%p+%a+%d+"),11,20),"%a","")
						if icao==dep_icao then
							lon_dep = tonumber(j)*-0.000001
						else
							lon_arr = tonumber(j)*-0.000001
						end
					end
					--print(j)
				end
				return
			end
		end
	end
    io.close(f)
    return
end

function wxr_icao(icao)
    --print("fx start")
    local BUFSIZE = 2^13  --8K
    local f, lines, rest, s, g, h, j, k, i
    f = io.open("METAR.rwx", "r")
    if f == nil then
        --print("wx not open")
        return
    else
        --print("wx open")
        for s in io.input(f):lines() do
            if string.find(s,icao) then
				wx_result_1 = string.sub(s,0,string.find(s, " ", 40))
				wx_result_2 = string.sub(s,string.len(wx_result_1)+1,string.find(s, " ", string.len(wx_result_1)+50))
				wx_result_3 = string.sub(s,string.len(wx_result_1)+string.len(wx_result_2)+1,string.find(s, " ", string.len(wx_result_1)+string.len(wx_result_2)+50))
				wx_result_4 = string.sub(s,string.len(wx_result_1)+string.len(wx_result_2)+string.len(wx_result_3)+1)
                return
            end
        end
    end
    io.close(f)
    return
end

function tu154_find_path()
	local i = 0
	local j = 0
	local k = 0
	local ii = 0
	local jj = 0
	local line = ""
	file_path = ""
	
	local file_name = "Log.txt"
	local file_navdata = io.open(file_name, "r")
	if file_navdata ~= nil then
		line = file_navdata:read()
		while line do
			ii,jj = string.find(line, "/plugins/xtlua/")
			if ii ~= nil then
				i,j = string.find(line, "/Aircraft/")
				if i ~= nil then
					file_path = string.sub(line, i+1, ii)
					break
				end
			end
			line = file_navdata:read()
		end
		file_navdata:close()
	end
end

function read_mag_declination()

	local ii = 0
	local jj = 0
	local kk = 0
	local line_trim = ""
	local line_char = ""
	local line_lenght = 0
	local apt_line = ""
	local apt_word = {}
	local mm = 0
	local md1 = 1
	local md2 = 0
	
	mag_dec = {}
	
	for ii = 1, 37 do
		mag_dec[ii] = {}
		for jj = 1, 73 do
			mag_dec[ii][jj] = 0
		end
	end
	
	local file_navdata2 = io.open(file_path .. "mag_dec.dat", "r")
	if file_navdata2 ~= nil then
		apt_line = file_navdata2:read()
		while apt_line do
				ii = 0
				jj = 0
				line_trim = ""
				line_char = ""
				line_lenght = string.len(apt_line)
				if line_lenght > 0 then
					for kk = 1, line_lenght do
						line_char = string.sub(apt_line, kk, kk)
						if line_char == "," then
							if ii == 1 then
								jj = jj + 1
								apt_word[jj] = line_trim
								ii = 0
								line_trim = ""
							end
						else
							line_trim = line_trim .. line_char
							ii = 1
						end
					end
					if string.len(line_trim) > 0 then
						jj = jj + 1
						apt_word[jj] = line_trim
					end
					
					if jj > 0 then
						if string.len(apt_word[jj]) > 1 and string.byte(apt_word[jj], -1) == 13 then	-- CR
							apt_word[jj] = string.sub(apt_word[jj], 1, -2)
						end
					end
					
					
					if jj > 4 then
						
						if md1 < 38 then
							md2 = md2 + 1
							
							kk = tonumber(apt_word[5])
							if kk ~= nil then
								mag_dec[md1][md2] = kk
							end
							
							if md2 == 73 then
								md2 = 0
								md1 = md1 + 1
							end
						end
						
					end
				end
			apt_line = file_navdata2:read()
		end
		file_navdata2:close()
	else
		print("mag_dec.dat false")
	end

end

function tu154_rescale(in1, out1, in2, out2, x)
    if x < in1 then return out1 end
    if x > in2 then return out2 end
    return out1 + (out2 - out1) * (x - in1) / (in2 - in1)
end

function mag_variation_deg(lat_mag, lon_mag)
	
	local lat_step1 = math.floor((lat_mag + 90.5)/5) + 1
	lat_step1 = math.min(lat_step1, 37)
	lat_step1 = math.max(lat_step1, 1)
	
	local lat_step2 = lat_step1 + 1
	if lat_step2 > 37 then
		lat_step2 = 1
	end
	
	local lon_step1 = math.floor((lon_mag + 180.5)/5) + 1
	lon_step1 = math.min(lon_step1, 73)
	lon_step1 = math.max(lon_step1, 1)
	
	local lon_step2 = lon_step1 + 1
	if lon_step2 > 73 then
		lon_step2 = 1
	end
	
	local mag_lu = mag_dec[lat_step1][lon_step2]
	local mag_ld = mag_dec[lat_step1][lon_step1]
	local mag_ru = mag_dec[lat_step2][lon_step2]
	local mag_rd = mag_dec[lat_step2][lon_step1]
	
	local mag_lon_left = 0
	local mag_lon_right = 0
	local temp7 = 0
	
	if lon_mag < 0 then
		temp7 = (lon_mag - ((lon_step2 * 5) - 185)) / 5
	else
		temp7 = (lon_mag - ((lon_step1 * 5) - 185)) / 5
	end
	if temp7 < 0 then
		temp7 = -temp7
	end
	temp7 = math.min(temp7, 1)
	temp7 = math.max(temp7, 0)
	
	
	if lon_mag < 0 then
		mag_lon_left = tu154_rescale(0, mag_lu, 1, mag_ld, temp7)
		mag_lon_right = tu154_rescale(0, mag_ru, 1, mag_rd, temp7)
	else
		mag_lon_left = tu154_rescale(0, mag_ld, 1, mag_lu, temp7)
		mag_lon_right = tu154_rescale(0, mag_rd, 1, mag_ru, temp7)
	end
	
	if lat_mag < 0 then
		temp7 = (lat_mag - ((lat_step2 * 5) - 95)) / 5
	else
		temp7 = (lat_mag - ((lat_step1 * 5) - 95)) / 5
	end
	if temp7 < 0 then
		temp7 = -temp7
	end
	temp7 = math.min(temp7, 1)
	temp7 = math.max(temp7, 0)
	
	local result = 0
	if lat_mag < 0 then
		result = tu154_rescale(0, mag_lon_right, 1, mag_lon_left, temp7)
	else
		result = tu154_rescale(0, mag_lon_left, 1, mag_lon_right, temp7)
	end                
	
	return result

end



function flight_start() 
    tu154_find_path()
	read_mag_declination()
end

function after_physics()
	icao()
end


