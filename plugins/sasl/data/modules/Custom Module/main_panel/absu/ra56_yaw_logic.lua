-- createGlobalPropertyf("tu154b2/custom/buttons/console/d_inz_p", 0)
-- createGlobalPropertyf("tu154b2/custom/buttons/console/d_inz_r", 0)
-- createGlobalPropertyf("tu154b2/custom/buttons/console/d_inz_y", 0)
-- createGlobalPropertyf("tu154b2/custom/buttons/console/pt_inz", 0)

-- defineProperty("d_inz_p", globalPropertyf("tu154b2/custom/buttons/console/d_inz_p"))
-- defineProperty("d_inz_r", globalPropertyf("tu154b2/custom/buttons/console/d_inz_r"))
-- defineProperty("d_inz_y", globalPropertyf("tu154b2/custom/buttons/console/d_inz_y"))
-- defineProperty("pt_inz", globalPropertyf("tu154b2/custom/buttons/console/pt_inz"))

-- createGlobalPropertyf("tu154b2/custom/controlls/absu_debug1", 1)
-- createGlobalPropertyf("tu154b2/custom/controlls/absu_debug2", 0)
-- createGlobalPropertyf("tu154b2/custom/controlls/absu_debug3", 0)
--defineProperty("absu_debug1", globalPropertyf("tu154b2/custom/controlls/absu_debug1")) 
-- defineProperty("absu_debug2", globalPropertyf("tu154b2/custom/controlls/absu_debug2")) 
-- defineProperty("absu_debug3", globalPropertyf("tu154b2/custom/controlls/absu_debug3")) 


-- createGlobalPropertyf("tu154b2/custom/controlls/absu_debug1", 1)

-- defineProperty("absu_debug1", globalPropertyf("tu154b2/custom/controlls/absu_debug1")) 

-- defineProperty("hydro_ra56_rud_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_1")) -- гидропитание РА56 курс
-- defineProperty("hydro_ra56_rud_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_2")) -- гидропитание РА56 курс
-- defineProperty("hydro_ra56_rud_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_3")) -- гидропитание РА56 курс

-- defineProperty("hydro_ra56_ail_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_1")) -- гидропитание РА56 крен
-- defineProperty("hydro_ra56_ail_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_2")) -- гидропитание РА56 крен
-- defineProperty("hydro_ra56_ail_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_ail_3")) -- гидропитание РА56 крен
defineProperty("hod1", globalPropertyf("tu154b2/custom/absu/d_ra1_y"))
defineProperty("hod2", globalPropertyf("tu154b2/custom/absu/d_ra2_y"))
defineProperty("hod3", globalPropertyf("tu154b2/custom/absu/d_ra3_y"))

defineProperty("hydro_ra56_1", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_1")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_2", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_2")) -- гидропитание РА56 тангаж
defineProperty("hydro_ra56_3", globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_rud_3")) -- гидропитание РА56 тангаж


-- failures
--defineProperty("absu_ra56_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_roll_fail")) -- отказ ra56
defineProperty("absu_ra56_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_yaw_fail")) -- отказ ra56
--defineProperty("absu_ra56_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_yaw_fail")) -- отказ ra56
--defineProperty("roll_main_mode", globalPropertyi("tu154b2/custom/absu/roll_main_mode")) 
--defineProperty("pitch_main_mode", globalPropertyi("tu154b2/custom/absu/pitch_main_mode")) -- основной режим АБСУ по тангажу. 0 - выкл, 1 - штурвальный - 2 - стаб

defineProperty("absu_ra1_fail", globalPropertyi("tu154b2/custom/failures/absu_ra1_yaw_fail"))
defineProperty("absu_ra2_fail", globalPropertyi("tu154b2/custom/failures/absu_ra2_yaw_fail"))
defineProperty("absu_ra3_fail", globalPropertyi("tu154b2/custom/failures/absu_ra3_yaw_fail"))

defineProperty("hydro_circuit_auto_man", globalPropertyi("tu154b2/custom/absu/kolc"))
defineProperty("absu_contr", globalPropertyf("tu154b2/custom/absu/contr_yaw")) -- отклонение штока РА56 по тангажу
-- defineProperty("absu_contr_roll", globalPropertyf("tu154b2/custom/absu/contr_roll")) -- отклонение штока РА56 по крену
-- defineProperty("absu_contr_yaw", globalPropertyf("tu154b2/custom/absu/contr_yaw")) -- отклонение штока РА56 по направлению

defineProperty("gs_press_1", globalPropertyf("tu154b2/custom/hydro/gs_press_1")) -- давление в ГС1
defineProperty("gs_press_2", globalPropertyf("tu154b2/custom/hydro/gs_press_2")) -- давление в ГС2
defineProperty("gs_press_3", globalPropertyf("tu154b2/custom/hydro/gs_press_3")) -- давление в ГС3
--defineProperty("buster_on_1", globalPropertyi("tu154b2/custom/switchers/console/buster_on_1")) -- выключатель бустера
--defineProperty("buster_on_2", globalPropertyi("tu154b2/custom/switchers/console/buster_on_2")) -- выключатель бустера
--defineProperty("buster_on_3", globalPropertyi("tu154b2/custom/switchers/console/buster_on_3")) -- выключатель бустера


defineProperty("absu_cmd", globalPropertyf("tu154b2/custom/absu/cmd_yaw"))
--defineProperty("absu_cmd_roll", globalPropertyf("tu154b2/custom/absu/cmd_roll"))
--defineProperty("absu_cmd_yaw", globalPropertyf("tu154b2/custom/absu/cmd_yaw"))

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("ppn_ra", globalPropertyf("sim/custom/t154/ppn13_lamp3"))
defineProperty("t1", globalPropertyi("sim/custom/t154/ppn13_t1"))
defineProperty("t2", globalPropertyi("sim/custom/t154/ppn13_t2"))
defineProperty("t3", globalPropertyi("sim/custom/t154/ppn13_t3"))
defineProperty("ppn_snp", globalPropertyf("sim/custom/t154/ppn13_sbk_test"))
defineProperty("pol", globalPropertyi("sim/custom/t154/ppn13_pol"))
defineProperty("absu_power_27", globalPropertyi("tu154b2/custom/absu_power_27"))
defineProperty("absu_power", globalPropertyi("tu154b2/custom/absu_power_cc"))
--defineProperty("eng1_N1", globalPropertyf("sim/flightmodel/engine/ENGN_N1_[0]")) -- engine 1 rpm
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
--defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_pitch_fail"))
bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_left")
-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

local ra56_act_p=0
local ra1_act_p=math.random()*0.12-0.06
local ra2_act_p=math.random()*0.12-0.06
local ra3_act_p=math.random()*0.12-0.06
local p_kolc1=0
local p_kolc2=0
local p_kolc3=0
local kolc_zad=0.25
local p_kolc1t=0
local p_kolc2t=0
local p_kolc3t=0
local c_cent=0.01
local ra56_act_p_prev=0
local ra1_act_p_prev=0
local ra2_act_p_prev=0
local ra3_act_p_prev=0
local ra_gs1=0
local ra_gs2=0
local ra_gs3=0
local d_ra1_p=0
local d_ra2_p=0
local d_ra3_p=0
local centr=0
local pow_36_prev=0
local lim = 0.5
--local ail_lim = 0.4
--local yaw_lim = 0.4


local c_ra56=1
local c_act=1
local c_hs=0.5
local start_timer=10
local locked_1=1
local locked_2=1
local locked_3=1

local fail1=1
local fail2=1
local fail3=1
local fail1_timer=0
local fail_time_delay=0.3


function update()
	local MASTER = get(ismaster) ~= 1	
	if MASTER then
		local dt = get(frame_time)
		local gs1=get(gs_press_1)
		local gs2=get(gs_press_2)
		local gs3=get(gs_press_3)
		local ra56_cmd_p=get(absu_cmd)
		local avt=get(hydro_circuit_auto_man)
		if start_timer>0 then
			if start_timer>5 then
				locked_1=1
				locked_2=1
				locked_3=1
			end
			avt=1
			start_timer=start_timer-dt
		end
		--local absu_work_p=bool2int(get(pitch_main_mode)>0)
		local otk1=0
		local otk2=bool2int(get(absu_ra56_fail)==1)
		local otk3=bool2int(get(absu_ra56_fail)>1)
		local ppn_test1=get(ppn_ra)+get(t1)>1 and get(ppn_snp)>0 and get(pol)>0
		local ppn_test2=get(ppn_ra)+get(t2)>1 and get(ppn_snp)>0 and get(pol)>0
		local ppn_test3=get(ppn_ra)+get(t3)>1 and get(ppn_snp)>0 and get(pol)>0
		local power27=get(absu_power_27)
		local pow_36=bool2int(get(bus36_volt)>30)
		-- if pow_36>pow_36_prev then
			-- start_timer=3
		-- end
		-- pow_36_prev=pow_36
		if pow_36==0 then
			if fail1_timer<=fail_time_delay then
				fail1_timer=fail1_timer+dt
			end
		else
			fail1_timer=0
		end
			
		local power=bool2int(get(absu_power)>0 and pow_36>0)
		
		local power_1=get(hydro_ra56_1)*bool2int(fail1_timer<fail_time_delay)
		local power_2=get(hydro_ra56_2)*bool2int(fail1_timer<fail_time_delay)
		local power_3=get(hydro_ra56_3)*bool2int(fail1_timer<fail_time_delay)
		
		if power27==1 then
			fail1=p_kolc1
		else
			fail1=1
		end
		
		if power27==1 then
			fail2=p_kolc2
		else
			fail2=1
		end
		
		if power27==1 then
			fail3=p_kolc3
		else
			fail3=1
		end

		
		if gs1>180 then
			ra_gs1=6.122841035013264e-12*math.exp(0.122947593444847*gs1)*50
		else
			ra_gs1=0.025/180*gs1*50
		end
		if gs2>180 then
			ra_gs2=6.122841035013264e-12*math.exp(0.122947593444847*gs2)*50
		else
			ra_gs2=0.025/180*gs2*50
		end
		if gs3>180 then
			ra_gs3=6.122841035013264e-12*math.exp(0.122947593444847*gs3)*50
		else
			ra_gs3=0.025/180*gs3*50
		end
		d_ra1_p=(ra56_cmd_p-ra1_act_p*(1-otk1))*ra_gs1*c_ra56*(1-fail1)*power
		d_ra2_p=(ra56_cmd_p-ra2_act_p*(1-otk2))*ra_gs2*c_ra56*(1-fail2)*power
		d_ra3_p=(ra56_cmd_p-ra3_act_p*(1-otk3))*ra_gs3*c_ra56*(1-fail3)*power
		if d_ra1_p>0.8 then
			d_ra1_p=0.8
		elseif d_ra1_p<-0.8 then
			d_ra1_p=-0.8
		end
		if d_ra2_p>0.8 then
			d_ra2_p=0.8
		elseif d_ra2_p<-0.8 then
			d_ra2_p=-0.8
		end
		if d_ra3_p>0.8 then
			d_ra3_p=0.8
		elseif d_ra3_p<-0.8 then
			d_ra3_p=-0.8
		end
		
		if math.abs(d_ra1_p*dt)>math.abs(ra56_cmd_p-ra1_act_p) then
			d_ra1_p=(ra56_cmd_p-ra1_act_p)/dt;
		end
		
		if math.abs(d_ra2_p*dt)>math.abs(ra56_cmd_p-ra2_act_p) then
			d_ra2_p=(ra56_cmd_p-ra2_act_p)/dt;
		end
		
		if math.abs(d_ra3_p*dt)>math.abs(ra56_cmd_p-ra3_act_p) then
			d_ra3_p=(ra56_cmd_p-ra3_act_p)/dt;
		end	
		
		ra1_act_p=ra1_act_p+d_ra1_p*dt-(ra1_act_p-ra56_act_p)*c_hs*fail1*(1-locked_1)
		ra2_act_p=ra2_act_p+d_ra2_p*dt-(ra2_act_p-ra56_act_p)*c_hs*fail2*(1-locked_2)
		ra3_act_p=ra3_act_p+d_ra3_p*dt-(ra3_act_p-ra56_act_p)*c_hs*fail3*(1-locked_3)
		if power27==1 then
		
			if math.abs(ra1_act_p-ra56_act_p)>0.075 or ppn_test1 or power_1==0 then
				p_kolc1t=kolc_zad
			else
				if p_kolc1t>0  and avt==1 then
					p_kolc1t=p_kolc1t-dt
				end
			end
			if math.abs(ra56_act_p-ra2_act_p)>0.075 or ppn_test2 or power_2==0 then
				p_kolc2t=kolc_zad
			else
				if p_kolc2t>0 and avt==1 then
					p_kolc2t=p_kolc2t-dt
				end
			end
			if math.abs(ra3_act_p-ra56_act_p)>0.075 or ppn_test3 or power_3==0 then
				p_kolc3t=kolc_zad
			else
				if p_kolc3t>0   and avt==1 then
					p_kolc3t=p_kolc3t-dt
				end
			end
			
			if p_kolc1t>0 or (power_1==0) then
				p_kolc1=1
			else
				p_kolc1=0
			end
			if p_kolc2t>0 or (power_2==0) then
				p_kolc2=1
			else
				p_kolc2=0
			end
			if p_kolc3t>0 or (power_3==0) then
				p_kolc3=1
			else
				p_kolc3=0
			end
			if p_kolc1+p_kolc2+p_kolc3>1 and avt==0 then
				p_kolc1=1
				p_kolc2=1
				p_kolc3=1
			end
		else
			p_kolc1=0
			p_kolc2=0
			p_kolc3=0
			p_kolc1t=0
			p_kolc2t=0
			p_kolc3t=0
		end
		-- Unlock servos with hydraulic power application
		if (fail1+avt==0 or power_1*avt==1) and power27==1 and locked_1==1 then
			locked_1=0
		end
		if (fail2+avt==0 or power_2*avt==1) and power27==1 and locked_2==1 then
			locked_2=0
		end
		if (fail3+avt==0 or power_3*avt==1) and power27==1 and locked_3==1 then
			locked_3=0
		end
		-- if p_kolc1+p_kolc2+p_kolc3<3  then 
			-- centr=0
		-- else
			centr=ra56_act_p*c_cent        
		--end
		if fail1+fail2+fail3==0 then
			ra56_act_p=ra56_act_p+((ra1_act_p+ra2_act_p+ra3_act_p)/3-ra56_act_p)*c_act-centr
		elseif fail1==1 and fail2==0 and fail3==0 then
			ra56_act_p=ra56_act_p+((ra2_act_p+ra3_act_p)/2-ra56_act_p)*c_act-centr
		elseif fail2==1 and fail1==0 and fail3==0 then
			ra56_act_p=ra56_act_p+((ra1_act_p+ra3_act_p)/2-ra56_act_p)*c_act-centr
		elseif fail3==1 and fail1==0 and fail2==0 then
			ra56_act_p=ra56_act_p+((ra1_act_p+ra2_act_p)/2-ra56_act_p)*c_act-centr
		elseif fail1==1 and fail3==1 then
			ra56_act_p=ra56_act_p+(ra2_act_p-ra56_act_p)*c_act-centr
		elseif fail2==1 and fail3==1 then
			ra56_act_p=ra56_act_p+(ra1_act_p-ra56_act_p)*c_act-centr
		elseif fail1==1 and fail2==1 then
			ra56_act_p=ra56_act_p+(ra3_act_p-ra56_act_p)*c_act-centr
		else
			ra56_act_p=ra56_act_p_prev-centr
		end
		ra56_act_p_prev=ra56_act_p
		
		if ra56_act_p>lim then
			ra56_act_p=lim
		elseif ra56_act_p<-lim then
			ra56_act_p=-lim
		end
		
		set(absu_ra1_fail,bool2int(p_kolc1>0))
		set(absu_ra2_fail,bool2int(p_kolc2>0))
		set(absu_ra3_fail,bool2int(p_kolc3>0))
		-- if get(absu_damp_pitch_fail)==1 then
			-- set(absu_ra1_pitch_fail,1)
            -- set(absu_ra2_pitch_fail,1)
            -- set(absu_ra3_pitch_fail,1)
		-- end
		
		-- set(absu_ra1_pitch_kolc,p_kolc1)
		-- set(absu_ra2_pitch_kolc,p_kolc2)
		-- set(absu_ra3_pitch_kolc,p_kolc3)
		
		set(absu_contr,ra56_act_p)
		set(hod1,d_ra1_p)
		set(hod2,d_ra2_p)
		set(hod3,d_ra3_p)
		-- set(db1,ra1_act_p)
		-- set(db2,ra2_act_p)
		-- set(db3,locked_2)
	end
end