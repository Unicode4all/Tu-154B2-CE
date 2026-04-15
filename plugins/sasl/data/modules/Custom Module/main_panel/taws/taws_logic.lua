-- TAWS main logic
size = {1000, 770}

-- controls
defineProperty("but_view", globalPropertyi("tu154b2/custom/buttons/srpbz/but_view")) -- кнопка ВИД
defineProperty("but_empty", globalPropertyi("tu154b2/custom/buttons/srpbz/but_empty")) -- кнопка -
defineProperty("but_down", globalPropertyi("tu154b2/custom/buttons/srpbz/but_down")) -- кнопка масштаб вниз
defineProperty("but_up", globalPropertyi("tu154b2/custom/buttons/srpbz/but_up")) -- масштаб вверх


defineProperty("egpws_alarm_1", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_alarm_1")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_alarm_2")) -- сигнализация СРПБЗ
defineProperty("egpws_alarm_1_cap", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_alarm_1_cap")) -- сигнализация СРПБЗ общ
defineProperty("egpws_alarm_2_cap", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_alarm_2_cap")) -- сигнализация СРПБЗ 
defineProperty("egpws_relief", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_relief")) -- рельеф
defineProperty("egpws_mode", globalPropertyi("tu154b2/custom/switchers/ovhd/egpws_mode")) -- QNH - QFE

defineProperty("egpws_control", globalPropertyi("tu154b2/custom/buttons/ovhd/egpws_control")) -- кнопка контроля СРПБЗ
defineProperty("on_ground", globalPropertyi("sim/flightmodel/failures/onground_all")) -- 


defineProperty("egpws_contr_gs", globalPropertyi("tu154b2/custom/buttons/ovhd/egpws_contr_gs")) -- контроль СРПБЗ глиссада


-- power
defineProperty("bus115_1_volt", globalPropertyf("tu154b2/custom/elec/bus115_1_volt")) -- напряжение сети 115
defineProperty("bus115_3_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))

defineProperty("rv_on", globalPropertyi("tu154b2/custom/switchers/ovhd/rv5_2_on"))  -- switcher

defineProperty("bus27_volt", globalPropertyf("tu154b2/custom/elec/bus27_volt_left")) 
defineProperty("bus27_volt_r", globalPropertyf("tu154b2/custom/elec/bus27_volt_right"))-- напряжение сети 27
defineProperty("bus115_volt", globalPropertyf("tu154b2/custom/elec/bus115_3_volt"))
defineProperty("taws_fail", globalPropertyi("tu154b2/custom/failures/taws_fail")) -- отказ СРПБЗ


-- sources
defineProperty("vvi_L", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_pilot")) -- vertical speed in ft/min
defineProperty("vvi_R", globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_copilot"))

--defineProperty("rv5_alt", globalPropertyf("tu154b2/custom/misc/rv5_alt_right"))  -- высота на левом высотомере


-- results
defineProperty("mode_set", globalPropertyi("tu154b2/custom/taws/mode_set")) -- режим работы экрана. 0 - выкл, 1 - карта высот, 2 - вид сбоку, 3 - часы, 4 - процесс включения, 5 - тест, 6 - игра
defineProperty("distance_set", globalPropertyi("tu154b2/custom/taws/distance_set")) -- дистанция для рисования карты, км. 0 = 10, 1 = 20, 2 = 40, 3 = 80, 4 = 160, 5 = 320, 6 = 640

defineProperty("taws_cc", globalPropertyf("tu154b2/custom/taws/taws_cc")) -- потребление тока системой СРПБЗ


-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

--- tta12
--defineProperty("svs_on", globalPropertyf("tu154b2/custom/switchers/ovhd/svs_on")) -- 
--defineProperty("var_left", globalPropertyf("tu154b2/custom/switchers/ovhd/var_left")) -- 
--defineProperty("var_right", globalPropertyf("tu154b2/custom/switchers/ovhd/var_right")) -- 
--defineProperty("vbe_1_on", globalPropertyf("tu154b2/custom/switchers/ovhd/vbe_1_on")) -- 
defineProperty("vbe_2_on", globalPropertyf("tu154b2/custom/switchers/ovhd/vbe_2_on")) -- 
defineProperty("diss_mode", globalPropertyf("tu154b2/custom/nvu/diss_mode")) --
defineProperty("srpbz", globalPropertyf("tu154b2/custom/kontur/srpbz")) --
defineProperty("svs_on", globalPropertyi("tu154b2/custom/switchers/ovhd/svs_on"))
defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_left")) -- напряжение сети 36
defineProperty("svs_fail", globalPropertyi("sim/operation/failures/rel_adc_comp"))  -- static fail
defineProperty("sns", globalPropertyi("tu154b2/custom/switchers/ovhd/kln_on"))
defineProperty("kln_flag", globalPropertyi("tu154b2/custom/kln90/kln_flag"))
defineProperty("show_gns", globalPropertyi("tu154b2/custom/anim/show_gns"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("sp_fail", globalPropertyi("tu154b2/custom/taws/sppz_fail"))
defineProperty("rp_fail", globalPropertyi("tu154b2/custom/taws/rppz_fail"))
defineProperty("rv_fail", globalPropertyi("tu154b2/custom/failures/rv2_fail"))
defineProperty("vbe_fail", globalPropertyi("sim/operation/failures/rel_cop_alt"))
show_taws= globalPropertyi("tu154b2/custom/anim/show_taws")

local but_view_last = 0
local but_empt_last = 0

local but_rng_up_last = 0
local but_rng_dn_last = 0

local up_counter = 0
local sns_timer=0
local sppz_fail=0
local rppz_fail=0
function update()

local MASTER = get(ismaster) ~= 1	
	

if MASTER then	
	local passed=get(frame_time)
	local power = get(bus27_volt) > 13 and get(srpbz) == 1 and get(show_taws)==1
	--local sns_power=get(sns)>0 and (get(show_gns)==1 or kln_flag==0)
	if not power then
		set(mode_set, 0)
		set(distance_set, 1)
		set(taws_cc, 0)
		if sns_timer>0 then
			sns_timer=sns_timer-passed/10
		end
		but_view_last = 0
		but_empt_last = 0

		but_rng_up_last = 0
		but_rng_dn_last = 0
		
		sppz_fail=1
		rppz_fail=1
	else
		sns_timer=sns_timer+passed
		
		local current_mode = get(mode_set)
		
		if current_mode == 0 then set(mode_set, 4) end -- system just started
		
		local but_view_now = get(but_view)
		local but_empty_now = get(but_empty)
		local but_down_now = get(but_down)
		local but_up_now = get(but_up)
		local svs_power = get(svs_on) == 1 and get(bus27_volt) > 13 and get(bus36_volt) > 30 and get(bus115_1_volt) > 100 and get(svs_fail) == 0
		local vbe_power=get(bus27_volt) > 13 and get(vbe_2_on) == 1 and get(vbe_fail) < 6
		local rv_power=get(bus27_volt_r) > 13 and get(bus115_volt) > 100 and get(rv_on) == 1 and get(rv_fail) == 0
		sppz_fail=1-bool2int(rv_power and vbe_power and svs_power)
		rppz_fail=bool2int(sns_timer<16 or get(diss_mode)==0)
		if (current_mode > 0 and current_mode < 4) or current_mode == 10 then
			if sns_timer<16 then
				set(mode_set, 3)
			end
            -- if not sources_taws then              
				-- sppz_fail=1
            if sns_timer>16 and get(mode_set) == 3 then
                set(mode_set,1)				
            end
                
			if get(egpws_control) == 1 and get(on_ground) == 1 then -- test mode
				set(mode_set, 5) 
				sppz_fail=1
				rppz_fail=1
			end 
			
			

			if but_view_now == 1 and but_view_now ~= but_view_last then
				if current_mode ~= 1 then set(mode_set, 1)
				else set(mode_set, 2) end
				up_counter = 0
			end
			
			
			if but_up_now == 1 and but_up_now ~= but_rng_up_last then
				local a = math.min(4, get(distance_set) + 1)
				set(distance_set, a)
				up_counter = 0
			end
			
			if but_down_now == 1 and but_down_now ~= but_rng_dn_last then
				local a = math.max(0, get(distance_set) - 1)
				set(distance_set, a)
				up_counter = 0
			end
			
			if get(taws_fail) == 1 or (not svs_power and not rv_power and not vbe_power and get(diss_mode)==0) then 
				set(mode_set, 10)
			elseif current_mode == 10 and get(taws_fail) == 0 then
				set(mode_set, 1)
			end
			
			
		end
        
	
		if current_mode == 6 and but_view_now == 1 and but_view_now ~= but_view_last then
			set(mode_set, 1)
		end
		
		but_view_last = but_view_now
		but_empt_last = but_empty_now

		but_rng_up_last = but_up_now
		but_rng_dn_last = but_down_now
	
		set(taws_cc, 1.5)
	end
	set(sp_fail,sppz_fail)
	set(rp_fail,rppz_fail)
end	

	--set(mode_set, 6) -- test game

end




