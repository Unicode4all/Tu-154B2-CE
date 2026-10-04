
hod1 = globalPropertyf("tu154b2/custom/absu/d_ra1_p")
hod2 = globalPropertyf("tu154b2/custom/absu/d_ra2_p")
hod3 = globalPropertyf("tu154b2/custom/absu/d_ra3_p")

hydro_ra56_1 = globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_1") -- гидропитание РА56 тангаж
hydro_ra56_2 = globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_2") -- гидропитание РА56 тангаж
hydro_ra56_3 = globalPropertyi("tu154b2/custom/switchers/eng/hydro_ra56_elev_3") -- гидропитание РА56 тангаж


-- failures
absu_ra56_fail = globalPropertyi("tu154b2/custom/failures/absu_ra56_pitch_fail") -- отказ ra56
hydro_circuit_auto_man = globalPropertyi("tu154b2/custom/absu/kolc")
absu_contr = globalPropertyf("tu154b2/custom/absu/contr_pitch") -- отклонение штока РА56 по тангажу

gs_press_1 = globalPropertyf("tu154b2/custom/hydro/gs_press_1") -- давление в ГС1
gs_press_2 = globalPropertyf("tu154b2/custom/hydro/gs_press_2") -- давление в ГС2
gs_press_3 = globalPropertyf("tu154b2/custom/hydro/gs_press_3") -- давление в ГС3


absu_cmd = globalPropertyf("tu154b2/custom/absu/cmd_pitch")

frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- time of frame
ppn_ra = globalPropertyf("sim/custom/t154/ppn13_lamp1")
t1 = globalPropertyi("sim/custom/t154/ppn13_t1")
t2 = globalPropertyi("sim/custom/t154/ppn13_t2")
t3 = globalPropertyi("sim/custom/t154/ppn13_t3")
ppn_snp = globalPropertyf("sim/custom/t154/ppn13_sbk_test")
pol = globalPropertyi("sim/custom/t154/ppn13_pol")
absu_power_27 = globalPropertyi("tu154b2/custom/absu_power_27")
absu_power = globalPropertyi("tu154b2/custom/absu_power_cc")
ismaster = globalPropertyf("scp/api/ismaster") -- Master. 0 = plugin not found, 1 = slave 2 = master
bus36_volt = globalPropertyf("tu154b2/custom/elec/bus36_volt_left")
spread = globalPropertyf("tu154b2/custom/engines/thro_spread")
main_mode = globalPropertyi("tu154b2/custom/absu/pitch_main_mode")
yoke = globalPropertyf("tu154b2/custom/controlls/yoke_pitch")
-- db1 = globalPropertyf("tu154b2/custom/controlls/debug1")
-- db2 = globalPropertyf("tu154b2/custom/controlls/debug2")
-- db3 = globalPropertyf("tu154b2/custom/controlls/debug3")
-- db4 = globalPropertyf("tu154b2/custom/controlls/debug4")
-- db5 = globalPropertyf("tu154b2/custom/controlls/debug5")
-- db6 = globalPropertyf("tu154b2/custom/controlls/debug6")

local ra56_act=0
local kolc1=0
local kolc2=0
local kolc3=0
local kolc_zad=0.25
local kolc1t=0
local kolc2t=0
local kolc3t=0
local pow_36_prev=0

local c_contr = 0.345
local c_ra56 = 30 -- servo efficiency coeff
local c_hs = 2 -- hydro spring coefficient without hydraulic power
local c_centr = 0.3 -- center spring coefficient with hydraulic power
local c_ret = 4
local delta_lim=0.4 -- maximum difference for channel failure detection
local act_delay_1=8 -- reactivation delay factor (higher=faster)
local act_delay_2=8
local act_delay_3=8
local kolc_delay=20 --deactivation delay factor (higher=faster)
local lim_exp = 2 -- low hydraulic speed dropoff exponent
local gs_exp = 0.5 -- low hydraulic efficiency dropoff exponent
local lock_lim = 0.00001 -- servo locking threshold, if commanded minus actual value is below this, a servo channel is considered stationary and will lock the lever, locking other channels

local fail1=1
local fail2=1
local fail3=1
local fail1_timer=0
local fail_time_delay=0.3
local start_timer=10
local locked_1=1
local locked_2=1
local locked_3=1

local ra_act={0,0,0}
ra_act[0] = math.random() * 0.12 - 0.06
ra_act[1] = math.random() * 0.12 - 0.06
ra_act[2] = math.random() * 0.12 - 0.06
local ra_act_prev={0,0,0}
ra_act_prev[0] = ra_act[0]
ra_act_prev[1] = ra_act[1]
ra_act_prev[2] = ra_act[2]
local v_ra = {0,0,0}
local yoke_prev = 0

local ra56_cmd = 0 --low pass for command
local T_lp = 0

function min_ind(val1,val2,val3)
	local min_ind = 0
	if val2 < val1 or fail1 == 1 then
		min_ind = 1
	end
	if (min_ind == 1 and val3 < val2) or fail2 == 1 then 
		min_ind = 2
	end
	if (min_ind == 0 and val3 < val1) or fail1 == 1 then 
		min_ind = 2
	end
	if (min_ind == 2 and val2 < val3) or fail3 == 1 then 
		min_ind = 1
	end
	return min_ind
end

function update()
	local MASTER = get(ismaster) ~= 1	
	local dt = get(frame_time)
	if MASTER then
		if dt~=0 then
			-- channel max speed spread
			local sprd = 0 --get(spread)
			local v_lim_base_1=2.10 + 0.5 * sprd
			local v_lim_base_2=2.0 - 0.5 * sprd
			local v_lim_base_3=2.6  + 0.1 * sprd
			local gs1=math.max(get(gs_press_1),0)
			local gs2=math.max(get(gs_press_2),0)
			local gs3=math.max(get(gs_press_3),0)
			if get(main_mode) > 1 then
				T_lp = 0.5
			else
				T_lp = 0
			end
			local v_yoke = 0
			ra56_cmd = T_lp/(T_lp+dt)*ra56_cmd+dt/(T_lp+dt)*get(absu_cmd) / c_contr
			local yoke_pos = get(yoke)
			v_yoke = (yoke_pos - yoke_prev) / dt
			yoke_prev = yoke_pos

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
			local otk1=bool2int(get(absu_ra56_fail)==1)
			local otk2=bool2int(get(absu_ra56_fail)==2)
			local otk3=0
			local ppn_test1=get(ppn_ra)+get(t1)>1 and get(ppn_snp)>0 and get(pol)>0
			local ppn_test2=get(ppn_ra)+get(t2)>1 and get(ppn_snp)>0 and get(pol)>0
			local ppn_test3=get(ppn_ra)+get(t3)>1 and get(ppn_snp)>0 and get(pol)>0
			local power27=get(absu_power_27)
			local pow_36=bool2int(get(bus36_volt)>30)
			-- if pow_36>pow_36_prev then
				-- start_timer=3
			-- end
			-- pow_36_prev=pow_36
			-- power monitoring shutoff
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
				fail1=kolc1
			else
				fail1=1
			end
			
			if power27==1 then
				fail2=kolc2
			else
				fail2=1
			end
			
			if power27==1 then
				fail3=kolc3
			else
				fail3=1
			end

			--- servo speeds ---
			local ra_gs1=math.pow(gs1/210,gs_exp)
			local ra_gs2=math.pow(gs2/210,gs_exp)
			local ra_gs3=math.pow(gs3/210,gs_exp)
			
			local d_cmd_ra1=(ra56_cmd-ra56_act) * (1-otk1) + otk1
			local d_cmd_ra2=(ra56_cmd-ra56_act) * (1-otk2) + otk2
			local d_cmd_ra3=(ra56_cmd-ra56_act) * (1-otk3) + otk3

			v_ra[0]=d_cmd_ra1*ra_gs1*c_ra56*(1-fail1)*power
			v_ra[1]=d_cmd_ra2*ra_gs2*c_ra56*(1-fail2)*power
			v_ra[2]=d_cmd_ra3*ra_gs3*c_ra56*(1-fail3)*power
			-- speed limits as function of hydro pressure
			local v_lim_1=v_lim_base_1*math.pow(gs1/210,lim_exp)
			local v_lim_2=v_lim_base_2*math.pow(gs2/210,lim_exp)
			local v_lim_3=v_lim_base_3*math.pow(gs3/210,lim_exp)
			if v_ra[0]>v_lim_1 then
				v_ra[0]=v_lim_1
			elseif v_ra[0]<-v_lim_1 then
				v_ra[0]=-v_lim_1
			end    
			if v_ra[1]>v_lim_2 then
				v_ra[1]=v_lim_2
			elseif v_ra[1]<-v_lim_2 then
				v_ra[1]=-v_lim_2
			end
			if v_ra[2]>v_lim_3 then
				v_ra[2]=v_lim_3
			elseif v_ra[2]<-v_lim_3 then
				v_ra[2]=-v_lim_3
			end
			-- ensure stability at low fps
			if dt ~= 0 then
				if math.abs(v_ra[0]*dt)>math.abs(d_cmd_ra1) then
					v_ra[0]=d_cmd_ra1/dt
				end
				if math.abs(v_ra[1]*dt)>math.abs(d_cmd_ra2) then
					v_ra[1]=d_cmd_ra2/dt
				end
				if math.abs(v_ra[2]*dt)>math.abs(d_cmd_ra3) then
					v_ra[2]=d_cmd_ra3/dt
				end
			end
			--- servo positions ---
			
			ra_act[0]=ra_act[0] + v_ra[0] * dt - (ra_act[0] - ra56_act) *c_hs * fail1 * dt * (1-locked_1)
			ra_act[1]=ra_act[1] + v_ra[1] * dt - (ra_act[1] - ra56_act) *c_hs * fail1 * dt * (1-locked_2)
			ra_act[2]=ra_act[2] + v_ra[2] * dt - (ra_act[2] - ra56_act) *c_hs * fail1 * dt * (1-locked_3)
			-- hydro spring works only in one direction
			if ra_act[0] > ra56_act then
				ra_act[0] = ra56_act
			end       
			if ra_act[1] > ra56_act then
				ra_act[1] = ra56_act
			end 
			if ra_act[2] > ra56_act then
				ra_act[2] = ra56_act
			end 
			
			--- servo lever position ---
			local centr = ra56_act * c_centr -- centering spring
			local v_ra56 = (v_ra[0] * (1-fail1) + v_ra[1] * (1-fail2) + v_ra[2] * (1-fail3)) / (3-fail1-fail2-fail3) -- servo speed as mean of channel speeds
			if fail1 + fail2 + fail3 < 3 then	
				if bool2int(math.abs(d_cmd_ra1) < lock_lim and fail1 == 0) + bool2int(math.abs(d_cmd_ra2) < lock_lim and fail2 == 0) + bool2int(math.abs(d_cmd_ra3) < lock_lim and fail3 == 0) == 0 then 
					local c_yoke = 0
					if v_yoke ~= 0 then
						c_yoke = math.max(0,-2.360925747810605 * math.pow(math.abs(v_yoke),-0.073013223183586)+2.357218227854616) * 1.25 -- yoke movement coefficient (works opposite servo direction)
					end
					ra56_act = ra56_act + (v_ra56-centr - c_yoke * v_yoke)*dt
				else -- if at least one servo has power and is not commanded to move, it will block the lever and other channels. 
					ra_act[0]=ra_act[0] + (ra56_act-ra_act[0]) * c_ret * dt
					ra_act[1]=ra_act[1] + (ra56_act-ra_act[1]) * c_ret * dt
					ra_act[2]=ra_act[2] + (ra56_act-ra_act[2]) * c_ret * dt
				end
			else
				ra56_act=ra56_act - centr * dt
			end
			-- Fade out channel dispersion will fade over time.
			if math.abs(v_ra56) < 0.1 then
				ra_act[0]=ra_act[0] + (ra56_act-ra_act[0]) * c_ret * dt * (1-fail1)
				ra_act[1]=ra_act[1] + (ra56_act-ra_act[1]) * c_ret * dt * (1-fail2)
				ra_act[2]=ra_act[2] + (ra56_act-ra_act[2]) * c_ret * dt * (1-fail3)
			end
			
			--- detect channel failures
			if power27==1 then
				local d_ra1=ra_act[0]-ra56_act
				local d_ra2=ra_act[1]-ra56_act
				local d_ra3=ra_act[2]-ra56_act
				if math.abs(d_ra1) > delta_lim or ppn_test1 or power_1==0 then
					if kolc1t < 1 then
						kolc1t=kolc1t + dt * kolc_delay
					end
				else
					if kolc1t>0 and avt == 1 then
						kolc1t=kolc1t - dt * act_delay_1
					end
				end
				if math.abs(d_ra2) > delta_lim or ppn_test2 or power_2==0 then
					if kolc2t < 1 then
						kolc2t=kolc2t + dt * kolc_delay
					end
				else
					if kolc2t>0 and avt == 1 then
						kolc2t=kolc2t - dt * act_delay_2
					end
				end
				if math.abs(d_ra3) > delta_lim or ppn_test3 or power_3==0 then
					if kolc3t < 1 then
						kolc3t=kolc3t + dt * kolc_delay
					end
				else
					if kolc3t>0 and avt == 1 then
						kolc3t=kolc3t - dt * act_delay_3
					end
				end
				--- set channel fails ---
				if kolc1t >= 1 or (power_1==0) then
					kolc1 = 1
				elseif kolc1t <= 0 then
					kolc1 = 0
				end
				if kolc2t >= 1 or (power_2==0) then
					kolc2 = 1
				elseif kolc2t <= 0 then
					kolc2 = 0
				end
				if kolc3t >= 1 or (power_3==0) then
					kolc3 = 1
				elseif kolc3t <= 0 then
					kolc3 = 0
				end
				if kolc1+kolc2+kolc3>1 and avt==0 then
					kolc1=1
					kolc2=1
					kolc3=1
				end
			else
				kolc1=0
				kolc2=0
				kolc3=0
				kolc1t=0
				kolc2t=0
				kolc3t=0
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
			-- limit travel
			if ra56_act>1 then
				ra56_act=1
			elseif ra56_act<-1 then
				ra56_act=-1
			end	
			if ra_act[0] > 1 then
				ra_act[0]=1
			elseif ra_act[0]<-1 then
				ra_act[0]=-1
			end
			if ra_act[1] > 1 then
				ra_act[1]=1
			elseif ra_act[1]<-1 then
				ra_act[1]=-1
			end
			if ra_act[2] > 1 then
				ra_act[2]=1
			elseif ra_act[2]<-1 then
				ra_act[2]=-1
			end
			
			absu_svk_tbl.ra1_pitch_fail = bool2int(kolc1>0)
			absu_svk_tbl.ra2_pitch_fail = bool2int(kolc2>0)
			absu_svk_tbl.ra3_pitch_fail = bool2int(kolc3>0)
			set(absu_contr,ra56_act * c_contr)
			set(hod1,(ra_act[0] - ra_act_prev[0]) / dt)
			set(hod2,(ra_act[1] - ra_act_prev[1]) / dt)
			set(hod3,(ra_act[2] - ra_act_prev[2]) / dt)
			ra_act_prev[0]=ra_act[0]
			ra_act_prev[1]=ra_act[1]
			ra_act_prev[2]=ra_act[2]
		else
			set(hod1,0)
			set(hod2,0)
			set(hod3,0)
		end
	end
end