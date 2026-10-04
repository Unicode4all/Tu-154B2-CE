defineProperty("absu_at1_fail", globalPropertyi("tu154b2/custom/failures/absu_at1_fail")) -- отказ AT
defineProperty("absu_at2_fail", globalPropertyi("tu154b2/custom/failures/absu_at2_fail")) -- отказ AT
defineProperty("absu_ch1_fail", globalPropertyi("tu154b2/custom/failures/absu_at_chan1_fail")) -- отказ AT
defineProperty("absu_ch2_fail", globalPropertyi("tu154b2/custom/failures/absu_at_chan2_fail"))
defineProperty("absu_at_fail", globalPropertyi("tu154b2/custom/failures/absu_at_fail"))
defineProperty("absu_speed_prepare", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_prepare"))
defineProperty("absu_speed_test", globalPropertyi("tu154b2/custom/buttons/console/absu_speed_test_1"))
defineProperty("absu_speed_off", globalPropertyi("tu154b2/custom/switchers/console/absu_speed_off"))
defineProperty("absu_stu_test", globalPropertyi("tu154b2/custom/buttons/console/absu_speed_test_2"))
defineProperty("absu_damp_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_roll_fail")) -- отказ демперов крена
defineProperty("absu_damp_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_pitch_fail")) -- отказ демперов тангажа
defineProperty("absu_damp_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_damp_yaw_fail")) -- отказ демперов курса
defineProperty("absu_contr_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД
defineProperty("absu_speed_fail", globalPropertyi("tu154b2/custom/failures/absu_speed_fail"))
defineProperty("absu_alt_fail", globalPropertyi("tu154b2/custom/failures/absu_alt_fail"))
defineProperty("absu_calc_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ
absu_svk_tbl.ra1_pitch_fail = 0
absu_svk_tbl.ra2_pitch_fail = 0
absu_svk_tbl.ra3_pitch_fail = 0

absu_svk_tbl.ra1_roll_fail = 0
absu_svk_tbl.ra2_roll_fail = 0
absu_svk_tbl.ra3_roll_fail = 0

absu_svk_tbl.ra1_yaw_fail = 0
absu_svk_tbl.ra2_yaw_fail = 0
absu_svk_tbl.ra3_yaw_fail = 0

absu_svk_tbl.bdg_tet_rate = 0
absu_svk_tbl.bdg_gam_rate = 0
absu_svk_tbl.bdg_psi_rate = 0

defineProperty("mgv_tet_2", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_L"))
defineProperty("mgv_tet_3", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_R"))
defineProperty("mgv_tet_1", globalPropertyf("tu154b2/custom/gyro/mgv_contr_pitch"))
defineProperty("mgv_gam_2", globalPropertyf("tu154b2/custom/bkk/pkp_roll_left")) -- крен на АГР + в право
defineProperty("mgv_gam_3", globalPropertyf("tu154b2/custom/bkk/pkp_roll_right")) -- крен на АГР + в право
defineProperty("mgv_gam_1", globalPropertyf("tu154b2/custom/gyro/mgv_contr_roll")) -- крен на АГР + в право

absu_svk_tbl.bdg_tet_1_fail = 0 
absu_svk_tbl.bdg_tet_2_fail = 0 
absu_svk_tbl.bdg_tet_3_fail = 0 
absu_svk_tbl.bdg_psi_1_fail = 0 
absu_svk_tbl.bdg_psi_2_fail = 0 
absu_svk_tbl.bdg_psi_3_fail = 0 
absu_svk_tbl.bdg_gam_1_fail = 0 
absu_svk_tbl.bdg_gam_2_fail = 0 
absu_svk_tbl.bdg_gam_3_fail = 0 
absu_svk_tbl.mgv_thet_1_fail = 0
absu_svk_tbl.mgv_thet_2_fail = 0
absu_svk_tbl.mgv_thet_3_fail = 0
absu_svk_tbl.mgv_gam_1_fail = 0
absu_svk_tbl.mgv_gam_2_fail = 0
absu_svk_tbl.mgv_gam_3_fail = 0
absu_svk_tbl.bshu_tet1_mem = 0 
absu_svk_tbl.bshu_tet2_mem = 0 
absu_svk_tbl.bshu_tet3_mem = 0 
absu_svk_tbl.bshu_gam1_mem = 0 
absu_svk_tbl.bshu_gam2_mem = 0 
absu_svk_tbl.bshu_gam3_mem = 0 
absu_svk_tbl.bns_tet1_mem = 0
absu_svk_tbl.bns_tet2_mem = 0
absu_svk_tbl.bns_tet3_mem = 0
absu_svk_tbl.bns_gam1_mem = 0
absu_svk_tbl.bns_gam2_mem = 0
absu_svk_tbl.bns_gam3_mem = 0
absu_svk_tbl.ute1_fail_mem = 0
absu_svk_tbl.ute2_fail_mem = 0
absu_svk_tbl.ra_tet_fail = 0
absu_svk_tbl.ra_gam_fail = 0  
absu_svk_tbl.ra_psi_fail = 0  

defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv"))
defineProperty("elev_trimm_1_pk", globalPropertyi("sim/custom/b2/elev_trimm_1_pk")) -- 
defineProperty("elev_trimm_2_pk", globalPropertyi("sim/custom/b2/elev_trimm_2_pk")) -- 

defineProperty("bshu_tet_fail",globalPropertyi("tu154b2/custom/failures/bshu_tet_fail"))
defineProperty("bshu_gam_fail",globalPropertyi("tu154b2/custom/failures/bshu_gam_fail"))
defineProperty("absu_power_cc", globalPropertyf("tu154b2/custom/absu_power_cc"))
defineProperty("absu_power_27", globalPropertyf("tu154b2/custom/absu_power_27"))


defineProperty("ra_tet", globalPropertyi("sim/custom/t154/ppn13_lamp1"))
defineProperty("ra_gam", globalPropertyi("sim/custom/t154/ppn13_lamp2"))
defineProperty("ra_psi", globalPropertyi("sim/custom/t154/ppn13_lamp3"))
defineProperty("bdg_tet", globalPropertyi("sim/custom/t154/ppn13_lamp4"))
defineProperty("bdg_gam", globalPropertyi("sim/custom/t154/ppn13_lamp5"))
defineProperty("bdg_psi", globalPropertyi("sim/custom/t154/ppn13_lamp6"))
defineProperty("bshu_1", globalPropertyi("sim/custom/t154/ppn13_lamp7"))
defineProperty("bshu_2", globalPropertyi("sim/custom/t154/ppn13_lamp8"))
defineProperty("bns_tet", globalPropertyi("sim/custom/t154/ppn13_lamp9"))
defineProperty("bap_tet", globalPropertyi("sim/custom/t154/ppn13_lamp10"))
defineProperty("bap_gam", globalPropertyi("sim/custom/t154/ppn13_lamp11"))
defineProperty("vkv", globalPropertyi("sim/custom/t154/ppn13_lamp12"))
defineProperty("vu", globalPropertyi("sim/custom/t154/ppn13_lamp13"))
defineProperty("ute", globalPropertyi("sim/custom/t154/ppn13_lamp14"))
defineProperty("stu_tet", globalPropertyi("sim/custom/t154/ppn13_lamp15"))
defineProperty("stu_gam", globalPropertyi("sim/custom/t154/ppn13_lamp16"))
defineProperty("at", globalPropertyi("sim/custom/t154/ppn13_lamp17"))
defineProperty("bsn", globalPropertyi("sim/custom/t154/ppn13_lamp18"))
defineProperty("mgv_tet", globalPropertyi("sim/custom/t154/ppn13_lamp19"))
defineProperty("mgv_gam", globalPropertyi("sim/custom/t154/ppn13_lamp20"))
defineProperty("mgv_tet2", globalPropertyi("sim/custom/t154/ppn13_lamp21"))
defineProperty("mgv_gam2", globalPropertyi("sim/custom/t154/ppn13_lamp22"))
defineProperty("ks", globalPropertyi("sim/custom/t154/ppn13_lamp23"))
defineProperty("bns_gam", globalPropertyi("sim/custom/t154/ppn13_lamp24"))
defineProperty("otk_1", globalPropertyi("sim/custom/t154/ppn13_lamp25"))
defineProperty("otk_2", globalPropertyi("sim/custom/t154/ppn13_lamp26"))
defineProperty("otk_3", globalPropertyi("sim/custom/t154/ppn13_lamp27"))
defineProperty("otk_4", globalPropertyi("sim/custom/t154/ppn13_lamp28"))
-- defineProperty("cap", globalPropertyi("tu154b2/custom/t154/ppn13_cap"))
defineProperty("svk", globalPropertyi("sim/custom/t154/ppn13_sbk_test"))
-- defineProperty("auto_test", globalPropertyi("tu154b2/custom/t154/ppn13_absu_test"))

defineProperty("t1", globalPropertyi("sim/custom/t154/ppn13_t1"))
defineProperty("t2", globalPropertyi("sim/custom/t154/ppn13_t2"))
defineProperty("t3", globalPropertyi("sim/custom/t154/ppn13_t3"))
defineProperty("stop", globalPropertyi("sim/custom/t154/ppn13_to_pwr"))
defineProperty("search", globalPropertyi("sim/custom/t154/ppn13_search"))
defineProperty("start", globalPropertyi("sim/custom/t154/ppn13_pusk"))
defineProperty("pol", globalPropertyi("sim/custom/t154/ppn13_pol"))
defineProperty("snp", globalPropertyi("sim/custom/t154/ppn13_snp"))
defineProperty("at_mode", globalPropertyi("tu154b2/custom/absu/stu_mode"))
defineProperty("land_mode", globalPropertyi("tu154b2/custom/switchers/console/absu_landing_on"))
defineProperty("nav_mode", globalPropertyi("tu154b2/custom/switchers/console/absu_nav_on"))
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- time of frame
defineProperty("hydro_circuit_auto_man", globalPropertyi("tu154b2/custom/absu/kolc"))

defineProperty("mgv_thet_2", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_L"))
defineProperty("mgv_thet_3", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_R"))
defineProperty("mgv_thet_1", globalPropertyf("tu154b2/custom/gyro/mgv_contr_pitch"))
defineProperty("mgv_gam_2", globalPropertyf("tu154b2/custom/bkk/pkp_roll_left")) -- крен на АГР + в право
defineProperty("mgv_gam_3", globalPropertyf("tu154b2/custom/bkk/pkp_roll_right")) -- крен на АГР + в право
defineProperty("mgv_gam_1", globalPropertyf("tu154b2/custom/gyro/mgv_contr_roll")) -- крен на АГР + в право
defineProperty("bdlu_fail", globalPropertyi("tu154b2/custom/failures/absu_bdlu_fail"))
defineProperty("work_state", globalPropertyi("tu154b2/custom/failures/absu_work_state"))

defineProperty("stu_roll_lamp", globalPropertyf("tu154b2/custom/lights/small/stu_roll")) -- крен
defineProperty("stu_pitch_lamp", globalPropertyf("tu154b2/custom/lights/small/stu_pitch")) -- тангаж
defineProperty("stu_toga_lamp", globalPropertyf("tu154b2/custom/lights/small/stu_toga")) -- УХОД

defineProperty("bkk_pitch", globalPropertyf("tu154b2/custom/bkk/bkk_pitch")) -- результирующий тангаж от БКК
defineProperty("bkk_roll", globalPropertyf("tu154b2/custom/bkk/bkk_roll")) -- результирующий тангаж от БКК
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("search_run", globalPropertyf("tu154b2/custom/absu/ppn_search_delay"))
-- search_started = globalPropertyi("tu154b2/custom/absu/ppn_search_started")
defineProperty("absu_bap_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_bap_pitch_fail"))
defineProperty("absu_bap_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_bap_roll_fail"))
defineProperty("absu_bns_pitch_fail", globalPropertyi("tu154b2/custom/failures/bns_tet_fail"))
defineProperty("absu_bns_roll_fail", globalPropertyi("tu154b2/custom/failures/bns_gam_fail"))
defineProperty("roll_submode", globalPropertyi("tu154b2/custom/absu/roll_sub_mode"))
defineProperty("pitch_submode", globalPropertyi("tu154b2/custom/absu/pitch_sub_mode")) -- режим АБСУ по тангажу. 0 - выкл, 1 - стаб, 2 - V, 3 - M, 4 - H, 5 - глисс, 6 - уход, 10 - арм глисс
defineProperty("test_stu", globalPropertyi("tu154b2/custom/failures/absu_stu_test"))
defineProperty("test_vu", globalPropertyi("tu154b2/custom/failures/absu_vu_test"))
defineProperty("v_left", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_stby"))
defineProperty("v_right", globalPropertyf("sim/cockpit2/gauges/indicators/airspeed_kts_copilot"))
-- defineProperty("h_left", globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_stby"))
-- defineProperty("h_right", globalPropertyf("sim/cockpit2/gauges/indicators/altitude_ft_copilot"))
defineProperty("at_fail_signal", globalPropertyi("tu154b2/custom/absu/at_fail_signal"))




-- defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
-- defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
-- defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))

function KE_otkaz(chan_1,chan_2,chan_3,thres)
	local ch_1_fail = 0
	local ch_2_fail = 0
	local ch_3_fail = 0
	if math.abs(chan_1-chan_2)>thres and math.abs(chan_1-chan_3)>thres then
		ch_1_fail = 1
		if math.abs(chan_3-chan_2)>thres then
			ch_2_fail = 1
		end
	elseif math.abs(chan_2-chan_3)>thres and math.abs(chan_2-chan_1)>thres then
		ch_2_fail = 1
		if math.abs(chan_3-chan_1)>thres then
			ch_3_fail = 1
		end
	elseif math.abs(chan_3-chan_2)>thres and math.abs(chan_3-chan_1)>thres then
		ch_3_fail = 1
		if math.abs(chan_1-chan_2)>thres then
			ch_2_fail = 1
		end
	end
	return ch_1_fail, ch_2_fail, ch_3_fail
end

function kommutator(signal_1,signal_2,signal_3,signal_1_mem,signal_2_mem,signal_3_mem)
	local signal_res=(signal_1+signal_2+signal_3)/3
	if signal_1_mem + signal_2_mem + signal_3_mem < 2 then
		signal_res=(signal_1 * (1-signal_1_mem) + signal_2 * (1-signal_2_mem) + signal_3 * (1-signal_3_mem))/( 3 - signal_1_mem - signal_2_mem - signal_3_mem)
	end
	return signal_res
end

local ra_tet1_mem=0
local ra_tet2_mem=0
local ra_tet3_mem=0
local ra_gam1_mem=0
local ra_gam2_mem=0
local ra_gam3_mem=0
local ra_psi1_mem=0
local ra_psi2_mem=0
local ra_psi3_mem=0
local bdg_tet1_mem=0
local bdg_tet2_mem=0
local bdg_tet3_mem=0
local bdg_gam1_mem=0
local bdg_gam2_mem=0
local bdg_gam3_mem=0
local bdg_psi1_mem=0
local bdg_psi2_mem=0
local bdg_psi3_mem=0
local bap_tet1_mem=0
local bap_tet2_mem=0
local bap_tet3_mem=0
local bap_gam1_mem=0
local bap_gam2_mem=0
local bap_gam3_mem=0
local vkv_mem=0
local vkv2_mem=0
local vu1_mem=0
local vu2_mem=0
local vu3_mem=0
local stu_tet1_mem=0
local stu_tet2_mem=0
local stu_tet3_mem=0
local stu_gam1_mem=0
local stu_gam2_mem=0
local stu_gam3_mem=0
local at1_mem =0
local at2_mem =0
local at3_mem=0
--local at3_test=0
local mgv_tet1_mem=0
local mgv_tet2_mem=0
local mgv_tet3_mem=0
local mgv_gam1_mem=0
local mgv_gam2_mem=0
local mgv_gam3_mem=0
local mgv_tet_sau1_mem=0
local mgv_tet_sau2_mem=0
local mgv_tet_sau3_mem=0
local mgv_gam_sau1_mem=0
local mgv_gam_sau2_mem=0
local mgv_gam_sau3_mem=0

local s_reg=-2
local s_run=0

--local pol_timer=0
absu_svk_tbl.start_timer= -math.random(20)
local skipped=0
local init_timer=10
local test1=-0.2
local test2=-0.25
local test3=-0.25
local ra_1_timer=0
local ra_2_timer=0
local ra_3_timer=0
function update()
	if get(ismaster) ~= 1 then
		local passed=get(frame_time)
		local power27=get(absu_power_27)>0
		local power=get(absu_power_cc)>0
		if get(t1)>0 then
			test1=test1+passed
		else
			test1=-0.25
		end
		if get(t2)>0 then
			test2=test2+passed
		else
			test2=-0.25
		end
		if get(t3)>0 then
			test3=test3+passed
		else
			test3=-0.25
		end
		local plr=get(pol)
		local eras=get(snp)
		local test_svk=get(svk)
		local kolc=get(hydro_circuit_auto_man)
		if absu_svk_tbl.start_timer < 100 and power then
			absu_svk_tbl.start_timer = absu_svk_tbl.start_timer + passed
		end
		if init_timer>0 then
			ra_tet1_mem=0
			ra_tet2_mem=0
			ra_tet3_mem=0
			ra_gam1_mem=0
			ra_gam2_mem=0
			ra_gam3_mem=0
			ra_psi1_mem=0
			ra_psi2_mem=0
			ra_psi3_mem=0
			bdg_tet1_mem=0
			bdg_tet2_mem=0
			bdg_tet3_mem=0
			bdg_gam1_mem=0
			bdg_gam2_mem=0
			bdg_gam3_mem=0
			bdg_psi1_mem=0
			bdg_psi2_mem=0
			bdg_psi3_mem=0
			bap_tet1_mem=0
			bap_tet2_mem=0
			bap_tet3_mem=0
			bap_gam1_mem=0
			bap_gam2_mem=0
			bap_gam3_mem=0
			vkv_mem=0
			vkv2_mem=0
			vu1_mem=0
			vu2_mem=0
			vu3_mem=0
			stu_tet1_mem=0
			stu_tet2_mem=0
			stu_tet3_mem=0
			stu_gam1_mem=0
			stu_gam2_mem=0
			stu_gam3_mem=0
			at1_mem =0
			at2_mem =0
			at3_mem=0
			mgv_tet1_mem=0
			mgv_tet2_mem=0
			mgv_tet3_mem=0
			mgv_gam1_mem=0
			mgv_gam2_mem=0
			mgv_gam3_mem=0
			mgv_tet_sau1_mem=0
			mgv_tet_sau2_mem=0
			mgv_tet_sau3_mem=0
			mgv_gam_sau1_mem=0
			mgv_gam_sau2_mem=0
			mgv_gam_sau3_mem=0
			set(ra_tet,0)
			set(ra_gam,0)
			set(ra_psi,0)
			set(bdg_tet,0)
			set(bdg_gam,0)
			set(bdg_psi,0)
			set(bshu_1,0)
			set(bshu_2,0)
			set(bns_tet,0)
			set(bap_tet,0)
			set(bap_gam,0)
			set(vkv,0)
			set(vu,0)
			set(ute,0)
			set(stu_tet,0)
			set(stu_gam,0)
			set(at,0)
			set(bsn,0)
			set(mgv_tet,0)
			set(mgv_gam,0)
			set(mgv_tet2,0)
			set(mgv_gam2,0)
			set(ks,0)
			set(bns_gam,0)
			set(otk_1,0)
			set(otk_2,0)
			set(otk_3,0)
			set(otk_4,0)
			absu_svk_tbl.ute1_fail_mem = 0
			absu_svk_tbl.ute2_fail_mem = 0
			absu_svk_tbl.bshu_tet1_mem = 0
			absu_svk_tbl.bshu_tet2_mem = 0
			absu_svk_tbl.bshu_tet3_mem = 0
			absu_svk_tbl.bshu_gam1_mem = 0
			absu_svk_tbl.bshu_gam2_mem = 0
			absu_svk_tbl.bshu_gam3_mem = 0
			init_timer=init_timer-passed
		end
		
		
		
		
		
		
		
		
		-- if test1+test2+test3>-1.5 then
			-- pol_timer=pol_timer+passed
		-- elseif test1+test2+test3==-1.5 and pol_timer>0 then
			-- pol_timer=0
			-- set(pol,0)
		-- end
		
		-- if get(search)>0 then
			-- start_timer=start_timer+passed
		-- elseif get(search)==0 and start_timer>0 then
			-- start_timer=0
			-- set(start,0)
		-- end
		-- if pol_timer>1 then
			-- set(pol,1)
		-- end
		-- if start_timer>1 then
			-- set(start,1)
		-- end
		if power27 then -- 
			local at_on=get(absu_speed_prepare)>0
			local stu_pitch_on=get(land_mode)>0
			local stu_roll_on=get(land_mode)>0 or get(nav_mode)>0
			local vu_on=get(land_mode)
			local at1_test=math.max(0,get(absu_speed_off))
			local at2_test=math.min(0,get(absu_speed_off))*-1
			local at3_test=get(bdlu_fail)
			local stu_check=get(test_stu)
			local vu_check=get(test_vu)
			-- update failure memory
			if ra_tet1_mem==0 and absu_svk_tbl.ra1_pitch_fail==1 then ra_tet1_mem=1 end
			if ra_tet2_mem==0 and absu_svk_tbl.ra2_pitch_fail==1 then ra_tet2_mem=1 end
			if ra_tet3_mem==0 and absu_svk_tbl.ra3_pitch_fail==1 then ra_tet3_mem=1 end
			if ra_gam1_mem==0 and absu_svk_tbl.ra1_roll_fail==1 then ra_gam1_mem=1 end
			if ra_gam2_mem==0 and absu_svk_tbl.ra2_roll_fail==1 then ra_gam2_mem=1 end
			if ra_gam3_mem==0 and absu_svk_tbl.ra3_roll_fail==1 then ra_gam3_mem=1 end
			if ra_psi1_mem==0 and absu_svk_tbl.ra1_yaw_fail==1 then ra_psi1_mem=1 end
			if ra_psi2_mem==0 and absu_svk_tbl.ra2_yaw_fail==1 then ra_psi2_mem=1 end
			if ra_psi3_mem==0 and absu_svk_tbl.ra3_yaw_fail==1 then ra_psi3_mem=1 end
			if bdg_tet1_mem==0 and absu_svk_tbl.bdg_tet_1_fail==1 then bdg_tet1_mem=1 end
			if bdg_tet2_mem==0 and absu_svk_tbl.bdg_tet_2_fail==1 then bdg_tet2_mem=1 end
			if bdg_tet3_mem==0 and absu_svk_tbl.bdg_tet_3_fail==1 then bdg_tet3_mem=1 end
			if bdg_gam1_mem==0 and absu_svk_tbl.bdg_gam_1_fail==1 then bdg_gam1_mem=1 end
			if bdg_gam2_mem==0 and absu_svk_tbl.bdg_gam_2_fail==1 then bdg_gam2_mem=1 end
			if bdg_gam3_mem==0 and absu_svk_tbl.bdg_gam_3_fail==1 then bdg_gam3_mem=1 end
			if bdg_psi1_mem==0 and absu_svk_tbl.bdg_psi_1_fail==1 then bdg_psi1_mem=1 end
			if bdg_psi2_mem==0 and absu_svk_tbl.bdg_psi_2_fail==1 then bdg_psi2_mem=1 end
			if bdg_psi3_mem==0 and absu_svk_tbl.bdg_psi_3_fail==1 then bdg_psi3_mem=1 end
			if bap_tet1_mem==0 and absu_svk_tbl.bap_tet_1_fail==1 then bap_tet1_mem=1 end
			if bap_tet2_mem==0 and absu_svk_tbl.bap_tet_2_fail==1 then bap_tet2_mem=1 end
			if bap_tet3_mem==0 and absu_svk_tbl.bap_tet_3_fail==1 then bap_tet3_mem=1 end
			if bap_gam1_mem==0 and absu_svk_tbl.bap_gam_1_fail==1 then bap_gam1_mem=1 end
			if bap_gam2_mem==0 and absu_svk_tbl.bap_gam_2_fail==1 then bap_gam2_mem=1 end
			if bap_gam3_mem==0 and absu_svk_tbl.bap_gam_3_fail==1 then bap_gam3_mem=1 end
			if vkv_mem==0 and absu_svk_tbl.vkv_fail==1 then vkv_mem=1 end
			if vu1_mem==0 and absu_svk_tbl.vu1_fail==1 then vu1_mem=1 end
			if vu2_mem==0 and absu_svk_tbl.vu2_fail==1 then vu2_mem=1 end
			if vu3_mem==0 and absu_svk_tbl.vu3_fail==1 then vu3_mem=1 end
			if stu_tet1_mem==0 and absu_svk_tbl.stu_tet_1_fail==1 then stu_tet1_mem=1 end
			if stu_tet2_mem==0 and absu_svk_tbl.stu_tet_2_fail==1 then stu_tet2_mem=1 end
			if stu_tet3_mem==0 and absu_svk_tbl.stu_tet_3_fail==1 then stu_tet3_mem=1 end
			if stu_gam1_mem==0 and absu_svk_tbl.stu_gam_1_fail==1 then stu_gam1_mem=1 end
			if stu_gam2_mem==0 and absu_svk_tbl.stu_gam_2_fail==1 then stu_gam2_mem=1 end
			if stu_gam3_mem==0 and absu_svk_tbl.stu_gam_3_fail==1 then stu_gam3_mem=1 end
			if at1_mem==0 and math.max(get(absu_ch1_fail),at1_test)>0 and at_on then at1_mem=math.max(get(absu_ch1_fail),at1_test) end
			if at2_mem==0 and math.max(get(absu_ch2_fail),at2_test)>0 and at_on then at2_mem=math.max(get(absu_ch2_fail),at2_test) end
			--if at3_mem==0 and get(bdlu_fail)==1 then at3_mem=get(bdlu_fail) end
			
			if mgv_tet1_mem==0 and absu_svk_tbl.mgv_tet_1_fail==1 and stu_pitch_on then mgv_tet1_mem = 1 end
			if mgv_tet2_mem==0 and absu_svk_tbl.mgv_tet_2_fail==1 and stu_pitch_on then mgv_tet2_mem = 1 end
			if mgv_tet3_mem==0 and absu_svk_tbl.mgv_tet_3_fail==1 and stu_pitch_on then mgv_tet3_mem = 1 end
			if mgv_gam1_mem==0 and absu_svk_tbl.mgv_gam_1_fail==1 and stu_roll_on then mgv_gam1_mem = 1 end
			if mgv_gam2_mem==0 and absu_svk_tbl.mgv_gam_2_fail==1 and stu_roll_on then mgv_gam2_mem = 1 end
			if mgv_gam3_mem==0 and absu_svk_tbl.mgv_gam_3_fail==1 and stu_roll_on then mgv_gam3_mem = 1 end
			if mgv_tet_sau1_mem==0 and absu_svk_tbl.mgv_tet_1_fail==1 then mgv_tet_sau1_mem = 1 end
			if mgv_tet_sau2_mem==0 and absu_svk_tbl.mgv_tet_2_fail==1 then mgv_tet_sau2_mem = 1 end
			if mgv_tet_sau3_mem==0 and absu_svk_tbl.mgv_tet_3_fail==1 then mgv_tet_sau3_mem = 1 end
			if mgv_gam_sau1_mem==0 and absu_svk_tbl.mgv_gam_1_fail==1 then mgv_gam_sau1_mem = 1 end
			if mgv_gam_sau2_mem==0 and absu_svk_tbl.mgv_gam_2_fail==1 then mgv_gam_sau2_mem = 1 end
			if mgv_gam_sau3_mem==0 and absu_svk_tbl.mgv_gam_3_fail==1 then mgv_gam_sau3_mem = 1 end
			
			if absu_svk_tbl.ute1_fail_mem==0 and absu_svk_tbl.ute1_fail==1 or get(elev_trimm_1_pk)>0 then absu_svk_tbl.ute1_fail_mem = 1 end
			if absu_svk_tbl.ute2_fail_mem==0 and absu_svk_tbl.ute2_fail==1 or get(elev_trimm_2_pk)>0 then absu_svk_tbl.ute2_fail_mem = 1 end
			if absu_svk_tbl.bshu_tet1_mem==0 and absu_svk_tbl.bshu_tet1_fail==1 then absu_svk_tbl.bshu_tet1_mem = 1 end
			if absu_svk_tbl.bshu_tet2_mem==0 and absu_svk_tbl.bshu_tet2_fail==1 then absu_svk_tbl.bshu_tet2_mem = 1 end
			if absu_svk_tbl.bshu_tet3_mem==0 and absu_svk_tbl.bshu_tet3_fail==1 then absu_svk_tbl.bshu_tet3_mem = 1 end
			if absu_svk_tbl.bshu_gam1_mem==0 and absu_svk_tbl.bshu_gam1_fail==1 then absu_svk_tbl.bshu_gam1_mem = 1 end
			if absu_svk_tbl.bshu_gam2_mem==0 and absu_svk_tbl.bshu_gam2_fail==1 then absu_svk_tbl.bshu_gam2_mem = 1 end
			if absu_svk_tbl.bshu_gam3_mem==0 and absu_svk_tbl.bshu_gam3_fail==1 then absu_svk_tbl.bshu_gam3_mem = 1 end
			if absu_svk_tbl.bns_tet1_mem==0 and absu_svk_tbl.bns_tet1_fail==1 then absu_svk_tbl.bns_tet1_mem = 1 end
			if absu_svk_tbl.bns_tet2_mem==0 and absu_svk_tbl.bns_tet2_fail==1 then absu_svk_tbl.bns_tet2_mem = 1 end
			if absu_svk_tbl.bns_tet3_mem==0 and absu_svk_tbl.bns_tet3_fail==1 then absu_svk_tbl.bns_tet3_mem = 1 end
			if absu_svk_tbl.bns_gam1_mem==0 and absu_svk_tbl.bns_gam1_fail==1 then absu_svk_tbl.bns_gam1_mem = 1 end
			if absu_svk_tbl.bns_gam2_mem==0 and absu_svk_tbl.bns_gam2_fail==1 then absu_svk_tbl.bns_gam2_mem = 1 end
			if absu_svk_tbl.bns_gam3_mem==0 and absu_svk_tbl.bns_gam3_fail==1 then absu_svk_tbl.bns_gam3_mem = 1 end
			--ABSU work light
			local work=ra_tet1_mem+ra_tet2_mem+ra_tet3_mem+ra_gam1_mem+ra_gam2_mem+ra_gam3_mem+ra_psi1_mem+ra_psi2_mem+ra_psi3_mem+bdg_tet1_mem+bdg_tet2_mem+bdg_tet3_mem+bdg_gam1_mem+bdg_gam2_mem+bdg_gam3_mem+bdg_psi1_mem+bdg_psi2_mem+bdg_psi3_mem+
			bap_tet1_mem+bap_tet2_mem+bap_tet3_mem+bap_gam1_mem+bap_gam2_mem+bap_gam3_mem+vkv_mem+vkv2_mem+vu1_mem+vu3_mem+stu_tet1_mem+stu_tet2_mem+stu_tet3_mem+stu_gam1_mem+stu_gam2_mem+stu_gam3_mem+at1_mem +at2_mem +at3_mem+mgv_tet1_mem+
			mgv_tet2_mem+mgv_tet3_mem+mgv_gam1_mem+mgv_gam2_mem+mgv_gam3_mem+mgv_tet_sau1_mem+mgv_tet_sau2_mem+mgv_tet_sau3_mem+mgv_gam_sau1_mem+mgv_gam_sau2_mem+mgv_gam_sau3_mem+(at1_test+at2_test+at3_test)*bool2int(at_on)+absu_svk_tbl.ute1_fail_mem+absu_svk_tbl.ute2_fail_mem+absu_svk_tbl.bshu_tet1_mem+absu_svk_tbl.bshu_tet2_mem+absu_svk_tbl.bshu_tet3_mem+absu_svk_tbl.bshu_gam1_mem+absu_svk_tbl.bshu_gam2_mem+absu_svk_tbl.bshu_gam3_mem+absu_svk_tbl.bns_tet1_mem+absu_svk_tbl.bns_tet2_mem+absu_svk_tbl.bns_tet3_mem+absu_svk_tbl.bns_gam1_mem+absu_svk_tbl.bns_gam2_mem+absu_svk_tbl.bns_gam3_mem+stu_check+vu_check+absu_svk_tbl.bkvg_tet_fail+absu_svk_tbl.bkvg_gam_fail+absu_svk_tbl.bkvg_psi_fail+bool2int(absu_svk_tbl.start_timer< 20)
			if work==0 then
				set(work_state,1)
			else
				set(work_state,0)
			end	
			
			if kolc>0 then
				ra_gam1_mem=absu_svk_tbl.ra1_roll_fail
				ra_gam2_mem=absu_svk_tbl.ra2_roll_fail
				ra_gam3_mem=absu_svk_tbl.ra3_roll_fail
			end
			if kolc>0 then
				ra_tet1_mem=absu_svk_tbl.ra1_pitch_fail
				ra_tet2_mem=absu_svk_tbl.ra2_pitch_fail
				ra_tet3_mem=absu_svk_tbl.ra3_pitch_fail
			end
			if kolc>0 then
				ra_psi1_mem=absu_svk_tbl.ra1_yaw_fail
				ra_psi2_mem=absu_svk_tbl.ra2_yaw_fail
				ra_psi3_mem=absu_svk_tbl.ra3_yaw_fail
			end
			--shift register moves while search is pressed and no faults
			if get(search_run)==1 then
				if get(otk_1)+get(otk_2)+get(otk_3)==0 then
					s_run=1
				end
			else
				s_run=0
			end
			-- skip fault
			if get(start)>0 and skipped==0 then
				if s_reg < 0 then
					s_reg=1.01
				else
					s_reg=s_reg+1
				end
				skipped=1
			elseif get(start)==0 and skipped>0 then
				skipped=0
			end
			-- run shift register
			if s_reg>1 and s_reg<2 then
				set(ra_tet,1*math.max(get(search),get(test_svk)))
				if ra_tet1_mem+ra_tet2_mem+ra_tet3_mem>0 then--stop on fault
					s_run=0
				end
				set(otk_1,ra_tet1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,ra_tet2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,ra_tet3_mem*math.max(get(search),get(test_svk)))
				-- if test1>0 and plr>0 then
					-- set(otk_1,1)
				-- end
				-- if test2>0 and plr>0 then
					-- set(otk_2,1)
				-- end
				-- if test3>0 and plr>0 then
					-- set(otk_3,1)
				-- end
			elseif s_reg>2 and s_reg<3 then
				set(ra_tet,0*math.max(get(search),get(test_svk)))
				set(ra_gam,1*math.max(get(search),get(test_svk)))
				if ra_gam1_mem+ra_gam2_mem+ra_gam3_mem>0 then
					s_run=0
				end
				set(otk_1,ra_gam1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,ra_gam2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,ra_gam3_mem*math.max(get(search),get(test_svk)))
			elseif s_reg>3 and s_reg<4 then
				set(ra_gam,0*math.max(get(search),get(test_svk)))
				set(ra_psi,1*math.max(get(search),get(test_svk)))
				if ra_psi1_mem+ra_psi2_mem+ra_psi3_mem>0 then
					s_run=0
				end
				set(otk_1,ra_psi1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,ra_psi2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,ra_psi3_mem*math.max(get(search),get(test_svk)))
			elseif s_reg>4 and s_reg<5 then
				set(ra_psi,0)
				set(bdg_tet,1*math.max(get(search),get(test_svk)))
				if bdg_tet1_mem+bdg_tet2_mem+bdg_tet3_mem+absu_svk_tbl.bkvg_tet_fail>0 then
					s_run=0
				end
				set(otk_1,bdg_tet1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,bdg_tet2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,bdg_tet3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					bdg_tet1_mem=1
					absu_svk_tbl.bkvg_tet_fail = 1
				end
				if test2>0 and get(test_svk)>0 then
					bdg_tet2_mem=1
					absu_svk_tbl.bkvg_tet_fail = 1
				end
				if test3>0 and get(test_svk)>0 then
					bdg_tet3_mem=1
					absu_svk_tbl.bkvg_tet_fail = 1
				end
				if eras>0 and get(test_svk)>0 then
					bdg_tet1_mem=0
					bdg_tet2_mem=0
					bdg_tet3_mem=0
				end
				set(otk_4,bool2int(absu_svk_tbl.bkvg_tet_fail > 0))
			elseif s_reg>5 and s_reg<6 then
				set(bdg_tet,0)
				set(bdg_gam,1*math.max(get(search),get(test_svk)))
				if bdg_gam1_mem+bdg_gam2_mem+bdg_gam3_mem+absu_svk_tbl.bkvg_gam_fail>0 then
					s_run=0
				end
				set(otk_1,bdg_gam1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,bdg_gam2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,bdg_gam3_mem*math.max(get(search),get(test_svk)))
				
				if test1>0 and get(test_svk)>0 then
					bdg_gam1_mem=1
					absu_svk_tbl.bkvg_gam_fail = 1
				end
				if test2>0 and get(test_svk)>0 then
					bdg_gam2_mem=1
					absu_svk_tbl.bkvg_gam_fail = 1
				end
				if test3>0 and get(test_svk)>0 then
					bdg_gam3_mem=1
					absu_svk_tbl.bkvg_gam_fail = 1
				end
				if eras>0 and get(test_svk)>0 then
					bdg_gam1_mem=0
					bdg_gam2_mem=0
					bdg_gam3_mem=0
				end
				set(otk_4,bool2int(absu_svk_tbl.bkvg_gam_fail > 0))
			elseif s_reg>6 and s_reg<7 then
				set(bdg_gam,0)
				set(bdg_psi,1*math.max(get(search),get(test_svk)))
				if bdg_psi1_mem+bdg_psi2_mem+bdg_psi3_mem+absu_svk_tbl.bkvg_psi_fail>0 then
					s_run=0
				end
				set(otk_1,bdg_psi1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,bdg_psi2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,bdg_psi3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					bdg_psi1_mem=1
					absu_svk_tbl.bkvg_psi_fail = 1
				end
				if test2>0 and get(test_svk)>0 then
					bdg_psi2_mem=1
					absu_svk_tbl.bkvg_psi_fail = 1
				end
				if test3>0 and get(test_svk)>0 then
					bdg_psi3_mem=1
					absu_svk_tbl.bkvg_psi_fail = 1
				end
				if eras>0 and get(test_svk)>0 then
					bdg_psi1_mem=0
					bdg_psi2_mem=0
					bdg_psi3_mem=0
				end
				set(otk_4,bool2int(absu_svk_tbl.bkvg_psi_fail>0))
			elseif s_reg>7 and s_reg<8 then
				set(bdg_psi,0)
				set(bshu_1,1*math.max(get(search),get(test_svk)))
				if absu_svk_tbl.bshu_tet1_mem+absu_svk_tbl.bshu_tet2_mem+absu_svk_tbl.bshu_tet3_mem>0 then
					s_run=0
				end
				set(otk_1,absu_svk_tbl.bshu_tet1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,absu_svk_tbl.bshu_tet2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,absu_svk_tbl.bshu_tet3_mem*math.max(get(search),get(test_svk)))
				set(otk_4,0)
				if test1>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_tet1_mem = 1
				end
				if test2>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_tet2_mem = 1
				end
				if test3>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_tet3_mem = 1
				end
				if eras>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_tet1_mem = 0
					absu_svk_tbl.bshu_tet2_mem = 0
					absu_svk_tbl.bshu_tet3_mem = 0
				end
			elseif s_reg>8 and s_reg<9 then
				set(bshu_1,0)
				set(bshu_2,1*math.max(get(search),get(test_svk)))
				if absu_svk_tbl.bshu_gam1_mem+absu_svk_tbl.bshu_gam2_mem+absu_svk_tbl.bshu_gam3_mem>0 then
					s_run=0
				end
				set(otk_1,absu_svk_tbl.bshu_gam1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,absu_svk_tbl.bshu_gam2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,absu_svk_tbl.bshu_gam3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_gam1_mem = 1
				end
				if test2>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_gam2_mem = 1
				end
				if test3>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_gam3_mem = 1
				end
				if eras>0 and get(test_svk)>0 then
					absu_svk_tbl.bshu_gam1_mem = 0
					absu_svk_tbl.bshu_gam2_mem = 0
					absu_svk_tbl.bshu_gam3_mem = 0
				end
			elseif s_reg>9 and s_reg<10 then
				set(bshu_2,0)
				set(bns_tet,1*math.max(get(search),get(test_svk)))
				if absu_svk_tbl.bns_tet1_mem+absu_svk_tbl.bns_tet2_mem+absu_svk_tbl.bns_tet3_mem>0 then
					s_run=0
				end
				set(otk_1,absu_svk_tbl.bns_tet1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,absu_svk_tbl.bns_tet2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,absu_svk_tbl.bns_tet3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_tet1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_tet2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_tet3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_tet1_mem=0
					absu_svk_tbl.bns_tet2_mem=0
					absu_svk_tbl.bns_tet3_mem=0
				end
			elseif s_reg>10 and s_reg<11 then
				set(bns_tet,0)
				set(bap_tet,1*math.max(get(search),get(test_svk)))
				if bap_tet1_mem+bap_tet2_mem+bap_tet3_mem>0 then
					s_run=0
				end
				set(otk_1,bap_tet1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,bap_tet2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,bap_tet3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					bap_tet1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					bap_tet2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					bap_tet3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					bap_tet1_mem=0
					bap_tet2_mem=0
					bap_tet3_mem=0
				end
			elseif s_reg>11 and s_reg<12 then
				set(bap_tet,0)
				set(bap_gam,1*math.max(get(search),get(test_svk)))
				if bap_gam1_mem+bap_gam2_mem+bap_gam3_mem>0 then
					s_run=0
				end
				set(otk_1,bap_gam1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,bap_gam2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,bap_gam3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					bap_gam1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					bap_gam2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					bap_gam3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					bap_gam1_mem=0
					bap_gam2_mem=0
					bap_gam3_mem=0
				end
			elseif s_reg>12 and s_reg<13 then
				set(bap_gam,0)
				set(vkv,1*math.max(get(search),get(test_svk)))
				if vkv_mem+vkv2_mem>0 then
					s_run=0
				end
				set(otk_1,vkv_mem*math.max(get(search),get(test_svk)))
				set(otk_4,vkv2_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					vkv_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					vkv2_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					vkv_mem=0
					vkv2_mem=0
				end
			elseif s_reg>13 and s_reg<14 then
				set(vkv,0)
				set(vu,1*math.max(get(search),get(test_svk)))
				if vu1_mem+vu2_mem+vu3_mem+vu_check>0 then
					s_run=0
				end
				set(otk_1,math.max(vu1_mem,vu_check*vu_on)*math.max(get(search),get(test_svk)))
				set(otk_2,math.max(vu2_mem,vu_check*vu_on)*math.max(get(search),get(test_svk)))
				set(otk_3,math.max(vu3_mem,vu_check*vu_on)*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					vu1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					vu2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					vu3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					vu1_mem=0
					vu2_mem=0
					vu3_mem=0
				end
				set(otk_4,0)
			elseif s_reg>14 and s_reg<15 then
				set(vu,0)
				set(ute,1*math.max(get(search),get(test_svk)))
				if absu_svk_tbl.ute1_fail_mem+absu_svk_tbl.ute2_fail_mem>0 then
					s_run=0
				end
				set(otk_1,absu_svk_tbl.ute1_fail_mem*math.max(get(search),get(test_svk)))
				set(otk_2,absu_svk_tbl.ute2_fail_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					absu_svk_tbl.ute1_fail_mem = 1
				end
				if test2>0 and get(test_svk)>0 then
					absu_svk_tbl.ute2_fail_mem = 1
				end
				if eras>0 and get(test_svk)>0 then
					absu_svk_tbl.ute1_fail_mem = 0
					absu_svk_tbl.ute2_fail_mem = 0
				end
			elseif s_reg>15 and s_reg<16 then
				set(ute,0)
				if stu_pitch_on then
					set(stu_tet,1*math.max(get(search),get(test_svk)))
					if stu_tet1_mem+stu_tet2_mem+stu_tet3_mem+stu_check>0 then
						s_run=0
					end
					set(otk_1,math.max(stu_tet1_mem,stu_check)*math.max(get(search),get(test_svk)))
					set(otk_2,math.max(stu_tet2_mem,stu_check)*math.max(get(search),get(test_svk)))
					set(otk_3,math.max(stu_tet3_mem,stu_check)*math.max(get(search),get(test_svk)))
					if test1>0 and get(test_svk)>0 then
						stu_tet1_mem=1
					end
					if test2>0 and get(test_svk)>0 then
						stu_tet2_mem=1
					end
					if test3>0 and get(test_svk)>0 then
						stu_tet3_mem=1
					end
					if eras>0 and get(test_svk)>0 then
						stu_tet1_mem=0
						stu_tet2_mem=0
						stu_tet3_mem=0
					end
				else
					set(otk_1,0)
					set(otk_2,0)
					set(otk_3,0)
					set(stu_tet,0)
				end
			elseif s_reg>16 and s_reg<17 then
				set(stu_tet,0)
				if stu_roll_on then
					set(stu_gam,1*math.max(get(search),get(test_svk)))
					if stu_gam1_mem+stu_gam2_mem+stu_gam3_mem+stu_check>0 then
						s_run=0
					end
					set(otk_1,math.max(stu_gam1_mem,stu_check)*math.max(get(search),get(test_svk)))
					set(otk_2,math.max(stu_gam2_mem,stu_check)*math.max(get(search),get(test_svk)))
					set(otk_3,math.max(stu_gam3_mem,stu_check)*math.max(get(search),get(test_svk)))
					if test1>0 and get(test_svk)>0 then
						stu_gam1_mem=1
					end
					if test2>0 and get(test_svk)>0 then
						stu_gam2_mem=1
					end
					if test3>0 and get(test_svk)>0 then
						stu_gam3_mem=1
					end
					if eras>0 and get(test_svk)>0 then
						stu_gam1_mem=0
						stu_gam2_mem=0
						stu_gam3_mem=0
					end
				else
					set(otk_1,0)
					set(otk_2,0)
					set(otk_3,0)
					set(stu_gam,0)
				end
			elseif s_reg>17 and s_reg<18 then
				set(stu_gam,0)
				if at_on then
					set(at,1*math.max(get(search),get(test_svk)))
					if at1_mem+at2_mem+at3_mem+at3_test+vkv2_mem>0 then
						s_run=0
					end
					set(otk_1,math.max(vkv2_mem,at1_mem)*math.max(get(search),get(test_svk)))
					set(otk_2,math.max(vkv2_mem,at2_mem)*math.max(get(search),get(test_svk)))
					set(otk_3,math.max(at3_mem,at3_test)*math.max(get(search),get(test_svk)))
					set(otk_4,math.max(vkv2_mem,get(at_fail_signal))*math.max(get(search),get(test_svk)))
					if test1>0 and get(test_svk)>0 then
						at1_mem=1
					end
					if test2>0 and get(test_svk)>0 then
						at2_mem=1
					end
					if test3>0 and get(test_svk)>0 then
						at3_mem=1
					end
					if eras>0 and get(test_svk)>0 then
						at1_mem=0
						at2_mem=0
						at3_mem=0
					end
				else
					at1_mem=0
					at2_mem=0
					at3_mem=0
					set(otk_1,0)
					set(otk_2,0)
					set(otk_3,0)
					set(otk_4,0)
				end
			elseif s_reg>18 and s_reg<19 then
				set(otk_4,0)
				set(at,0)
				set(bsn,1*math.max(get(search),get(test_svk)))
				set(otk_1,0)
				set(otk_2,0)
				set(otk_3,0)
			elseif s_reg>19 and s_reg<20 then
				set(bsn,0)			
				set(mgv_tet,1*math.max(get(search),get(test_svk)))
				if mgv_tet1_mem+mgv_tet2_mem+mgv_tet3_mem>0 then
					s_run=0
				end
				set(otk_1,mgv_tet1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,mgv_tet2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,mgv_tet3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					mgv_tet1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					mgv_tet2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					mgv_tet3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					mgv_tet1_mem=0
					mgv_tet2_mem=0
					mgv_tet3_mem=0
				end
			elseif s_reg>20 and s_reg<21 then
				set(mgv_tet,0)			
				set(mgv_gam,1*math.max(get(search),get(test_svk)))
				if mgv_gam1_mem+mgv_gam2_mem+mgv_gam3_mem>0 then
					s_run=0
				end
				set(otk_1,mgv_gam1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,mgv_gam2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,mgv_gam3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					mgv_gam1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					mgv_gam2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					mgv_gam3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					mgv_gam1_mem=0
					mgv_gam2_mem=0
					mgv_gam3_mem=0
				end
			elseif s_reg>21 and s_reg<22 then
				set(mgv_gam,0)
				set(mgv_tet2,1*math.max(get(search),get(test_svk)))
				if mgv_tet_sau1_mem+mgv_tet_sau2_mem+mgv_tet_sau3_mem>0 then
					s_run=0
				end
				set(otk_1,mgv_tet_sau1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,mgv_tet_sau2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,mgv_tet_sau3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					mgv_tet_sau1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					mgv_tet_sau2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					mgv_tet_sau3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					mgv_tet_sau1_mem=0
					mgv_tet_sau2_mem=0
					mgv_tet_sau3_mem=0
				end
			elseif s_reg>22 and s_reg<23 then
				set(mgv_tet2,0)
				set(mgv_gam2,1*math.max(get(search),get(test_svk)))
				if mgv_gam_sau1_mem+mgv_gam_sau2_mem+mgv_gam_sau3_mem>0 then
					s_run=0
				end
				set(otk_1,mgv_gam_sau1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,mgv_gam_sau2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,mgv_gam_sau3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					mgv_gam_sau1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					mgv_gam_sau2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					mgv_gam_sau3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					mgv_gam_sau1_mem=0
					mgv_gam_sau2_mem=0
					mgv_gam_sau3_mem=0
				end
			elseif s_reg>23 and s_reg<24 then
				set(mgv_gam2,0)
				set(ks,1*math.max(get(search),get(test_svk)))
				set(otk_1,0)
				set(otk_2,0)
				set(otk_3,0)
			elseif s_reg>24 and s_reg<25 then
				set(ks,0)
				set(bns_gam,1*math.max(get(search),get(test_svk)))
				if absu_svk_tbl.bns_gam1_mem+absu_svk_tbl.bns_gam2_mem+absu_svk_tbl.bns_gam3_mem>0 then
					s_run=0
				end
				set(otk_1,absu_svk_tbl.bns_gam1_mem*math.max(get(search),get(test_svk)))
				set(otk_2,absu_svk_tbl.bns_gam2_mem*math.max(get(search),get(test_svk)))
				set(otk_3,absu_svk_tbl.bns_gam3_mem*math.max(get(search),get(test_svk)))
				if test1>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_gam1_mem=1
				end
				if test2>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_gam2_mem=1
				end
				if test3>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_gam3_mem=1
				end
				if eras>0 and get(test_svk)>0 then
					absu_svk_tbl.bns_gam1_mem=0
					absu_svk_tbl.bns_gam2_mem=0
					absu_svk_tbl.bns_gam3_mem=0
				end
			elseif s_reg>25 then
				set(bns_gam,0)
				set(otk_1,0)
				set(otk_2,0)
				set(otk_3,0)
				s_run=0
				s_reg=0
			end
					-- reset register
			if get(start)>0 and get(search)>0 then
				set(ra_tet,0)
				set(ra_gam,0)
				set(ra_psi,0)
				set(bdg_tet,0)
				set(bdg_gam,0)
				set(bdg_psi,0)
				set(bshu_1,0)
				set(bshu_2,0)
				set(bns_tet,0)
				set(bap_tet,0)
				set(bap_gam,0)
				set(vkv,0)
				set(vu,0)
				set(ute,0)
				set(stu_tet,0)
				set(stu_gam,0)
				set(at,0)
				set(bsn,0)
				set(mgv_tet,0)
				set(mgv_gam,0)
				set(mgv_tet2,0)
				set(mgv_gam2,0)
				set(ks,0)
				set(bns_gam ,0)
				set(otk_1,0)
				set(otk_2,0)
				set(otk_3,0)
				set(otk_4,0)
				s_run=0
				s_reg=-2
			end
			if s_run==1 then
				s_reg=s_reg+passed*3
			end
	-- deactivate component with more than one sub channel failure		
			-- if bdg_gam1_mem+bdg_gam2_mem+bdg_gam3_mem>1 then
				-- bdg_gam1_mem=1
				-- bdg_gam2_mem=1
				-- bdg_gam3_mem=1
			-- end
			-- if bdg_tet1_mem+bdg_tet2_mem+bdg_tet3_mem>1 then
				-- bdg_tet1_mem=1
				-- bdg_tet2_mem=1
				-- bdg_tet3_mem=1
			-- end
			
			-- if bdg_psi1_mem+bdg_psi2_mem+bdg_psi3_mem>1 then
				-- bdg_psi1_mem=1
				-- bdg_psi2_mem=1
				-- bdg_psi3_mem=1
			-- end
			
			-- if bap_gam1_mem+bap_gam2_mem+bap_gam3_mem>1 then
				-- bap_gam1_mem=1
				-- bap_gam2_mem=1
				-- bap_gam3_mem=1
			-- end
			-- if bap_tet1_mem+bap_tet2_mem+bap_tet3_mem>1 then
				-- bap_tet1_mem=1
				-- bap_tet2_mem=1
				-- bap_tet3_mem=1
			-- end
			
			-- if stu_gam1_mem+stu_gam2_mem+stu_gam3_mem>1 then
				-- stu_gam1_mem=1
				-- stu_gam2_mem=1
				-- stu_gam3_mem=1
			-- end
			-- if stu_tet1_mem+stu_tet2_mem+stu_tet3_mem>1 then
				-- stu_tet1_mem=1
				-- stu_tet2_mem=1
				-- stu_tet3_mem=1
			-- end
			-- if vu1_mem+vu2_mem+vu3_mem>1 then
				-- vu1_mem=1
				-- vu2_mem=1
				-- vu3_mem=1
			-- end
			
			
			-- set failures
			-- dampers
			local mgv_tet1=get(mgv_tet_1)
			local mgv_tet2=get(mgv_tet_2)
			local mgv_tet3=get(mgv_tet_3)
			local mgv_tet_res=0
			
			local mgv_gam1=get(mgv_gam_1)
			local mgv_gam2=get(mgv_gam_2)
			local mgv_gam3=get(mgv_gam_3)
			local mgv_gam_res=0
			--- bdg fail detector and commutator commutator --
			absu_svk_tbl.bdg_tet_1_fail, absu_svk_tbl.bdg_tet_2_fail, absu_svk_tbl.bdg_tet_3_fail = KE_otkaz(absu_svk_tbl.bdg_tet_rate_1,absu_svk_tbl.bdg_tet_rate_2,absu_svk_tbl.bdg_tet_rate_3,0.3)
			absu_svk_tbl.bdg_gam_1_fail, absu_svk_tbl.bdg_gam_2_fail, absu_svk_tbl.bdg_gam_3_fail = KE_otkaz(absu_svk_tbl.bdg_gam_rate_1,absu_svk_tbl.bdg_gam_rate_2,absu_svk_tbl.bdg_gam_rate_3,0.3)
			absu_svk_tbl.bdg_psi_1_fail, absu_svk_tbl.bdg_psi_2_fail, absu_svk_tbl.bdg_psi_3_fail = KE_otkaz(absu_svk_tbl.bdg_psi_rate_1,absu_svk_tbl.bdg_psi_rate_2,absu_svk_tbl.bdg_psi_rate_3,0.3)
			
			absu_svk_tbl.bdg_gam_rate=kommutator(absu_svk_tbl.bdg_gam_rate_1,absu_svk_tbl.bdg_gam_rate_2,absu_svk_tbl.bdg_gam_rate_3,bdg_gam1_mem,bdg_gam2_mem,bdg_gam3_mem)
			absu_svk_tbl.bdg_tet_rate=kommutator(absu_svk_tbl.bdg_tet_rate_1,absu_svk_tbl.bdg_tet_rate_2,absu_svk_tbl.bdg_tet_rate_3,bdg_tet1_mem,bdg_tet2_mem,bdg_tet3_mem)
			absu_svk_tbl.bdg_psi_rate=kommutator(absu_svk_tbl.bdg_psi_rate_1,absu_svk_tbl.bdg_psi_rate_2,absu_svk_tbl.bdg_psi_rate_3,bdg_psi1_mem,bdg_psi2_mem,bdg_psi3_mem)
			--- mgv fail detector and commutator ---
			absu_svk_tbl.mgv_gam_1_fail, absu_svk_tbl.mgv_gam_2_fail, absu_svk_tbl.mgv_gam_3_fail = KE_otkaz(mgv_gam1,mgv_gam2,mgv_gam3,8)
			absu_svk_tbl.mgv_tet_1_fail, absu_svk_tbl.mgv_tet_2_fail, absu_svk_tbl.mgv_tet_3_fail = KE_otkaz(mgv_tet1,mgv_tet2,mgv_tet3,8)

			if get(roll_submode) > 2 then
				mgv_gam_res=kommutator(mgv_gam1,mgv_gam2,mgv_gam3,mgv_gam1_mem,mgv_gam2_mem,mgv_gam3_mem)
			else
				mgv_gam_res=kommutator(mgv_gam1,mgv_gam2,mgv_gam3,mgv_gam_sau1_mem,mgv_gam_sau2_mem,mgv_gam_sau3_mem)			
			end
			if get(pitch_submode) == 5 then
				mgv_tet_res=kommutator(mgv_tet1,mgv_tet2,mgv_tet3,mgv_tet1_mem,mgv_tet2_mem,mgv_tet3_mem)
			else				
				mgv_tet_res=kommutator(mgv_tet1,mgv_tet2,mgv_tet3,mgv_tet_sau1_mem,mgv_tet_sau2_mem,mgv_tet_sau3_mem)
			end
			set(bkk_pitch, mgv_tet_res)
			set(bkk_roll, mgv_gam_res)
			--- Servo fails, with 250ms delay ---
			if (ra_tet1_mem+ra_tet2_mem+ra_tet3_mem)>1 or not power then 
				if ra_1_timer<0.25 then
					ra_1_timer=ra_1_timer+passed
				end
			else
				if ra_1_timer>0 then
					ra_1_timer=ra_1_timer-passed*2.5
					if ra_1_timer<0 then
						ra_1_timer=0
					end
				end
			end
			
			if ra_gam1_mem+ra_gam2_mem+ra_gam3_mem>1 or not power then 
				if ra_2_timer<0.25 then
					ra_2_timer=ra_2_timer+passed
				end
			else
				if ra_2_timer>0 then
					ra_2_timer=ra_2_timer-passed*2.5
					if ra_2_timer<0 then
						ra_2_timer=0
					end
				end
			end
			
			if ra_psi1_mem+ra_psi2_mem+ra_psi3_mem>1 or not power then 
				if ra_3_timer<0.25 then
					ra_3_timer=ra_3_timer+passed
				end
			else
				if ra_3_timer>0 then
					ra_3_timer=ra_3_timer-passed*2.5
					if ra_3_timer<0 then
						ra_3_timer=0
					end
				end
			end
			if ra_1_timer==0 then
				absu_svk_tbl.ra_tet_fail = 0
			elseif ra_1_timer>=0.2 then
				absu_svk_tbl.ra_tet_fail = 1
			end
			if ra_2_timer==0 then
				absu_svk_tbl.ra_gam_fail = 0
			elseif ra_2_timer>=0.2 then
				absu_svk_tbl.ra_gam_fail = 1
			end
			if ra_3_timer==0 then
				absu_svk_tbl.ra_psi_fail = 0
			elseif ra_3_timer>=0.2 then
				absu_svk_tbl.ra_psi_fail = 1
			end
			--mode fallbacks
			
			if (mgv_gam_sau1_mem+mgv_gam_sau2_mem+mgv_gam_sau3_mem>1) then 
				set(absu_contr_roll_fail, 1)
			else
				set(absu_contr_roll_fail, 0)
			end
			
			if (bap_gam1_mem+bap_gam2_mem+bap_gam3_mem>1) then
				set(absu_bap_roll_fail,1)
			else
				set(absu_bap_roll_fail,0)
			end
			
			if (mgv_tet_sau1_mem+mgv_tet_sau2_mem+mgv_tet_sau3_mem>1) or (absu_svk_tbl.ute1_fail_mem+absu_svk_tbl.ute2_fail_mem>1) then 
				set(absu_contr_pitch_fail, 1)
			else
				set(absu_contr_pitch_fail, 0)
			end
			if (bap_tet1_mem+bap_tet2_mem+bap_tet3_mem>1) then
				set(absu_bap_pitch_fail,1)
			else
				set(absu_bap_pitch_fail,0)
			end
			if get(roll_submode)==6 and stu_gam1_mem+stu_gam2_mem+stu_gam3_mem>0 then --special condition for approach modes
				stu_gam1_mem=1
				stu_gam2_mem=1
				stu_gam3_mem=1
			end
			if get(pitch_submode)==5 and stu_tet1_mem+stu_tet2_mem+stu_tet3_mem>0 then
				stu_tet1_mem=1
				stu_tet2_mem=1
				stu_tet3_mem=1
			end
			if (stu_gam1_mem+stu_gam2_mem+stu_gam3_mem>1) or (mgv_gam1_mem+mgv_gam2_mem+mgv_gam3_mem>1) or stu_check>0 or absu_svk_tbl.bns_gam1_mem+absu_svk_tbl.bns_gam2_mem+absu_svk_tbl.bns_gam3_mem>1 then 
				set(absu_calc_roll_fail, 1)
			else
				set(absu_calc_roll_fail, 0)
			end
			
			if (stu_tet1_mem+stu_tet2_mem+stu_tet3_mem>1) or (mgv_tet1_mem+mgv_tet2_mem+mgv_tet3_mem>1) or stu_check>0 or absu_svk_tbl.bns_tet1_mem+absu_svk_tbl.bns_tet2_mem+absu_svk_tbl.bns_tet3_mem>1 then 
				set(absu_calc_pitch_fail, 1)
			else
				set(absu_calc_pitch_fail, 0)
			end
		
			if (vu1_mem+vu2_mem+vu3_mem>1) or (mgv_tet1_mem+mgv_tet2_mem+mgv_tet3_mem>1) or vkv2_mem>0 or vu_check>0 then 
				set(absu_calc_toga_fail, 1)
			else
				set(absu_calc_toga_fail, 0)
			end
			--- Damper fails --- 
			if bdg_gam1_mem+bdg_gam2_mem+bdg_gam3_mem>1 then 
				set(absu_damp_roll_fail, 1)
			else
				set(absu_damp_roll_fail, 0)
			end
			if bdg_tet1_mem+bdg_tet2_mem+bdg_tet3_mem>1 then 
				set(absu_damp_pitch_fail, 1)
			else
				set(absu_damp_pitch_fail, 0)
			end
			if bdg_psi1_mem+bdg_psi2_mem+bdg_psi3_mem>1 then 
				set(absu_damp_yaw_fail, 1)
			else
				set(absu_damp_yaw_fail, 0)
			end
			--VKV fails
			if math.abs(get(v_left)-get(v_right))>10 and get(v_left) + get(v_right)>100 then  -- vkv fail from indicator difference
				vkv2_mem=1
			end
			-- if math.abs(get(h_left)-get(h_right))>100 then
				-- vkv_mem=1
			-- end
			if vkv_mem>0 then
				set(absu_alt_fail,1)
			else
				set(absu_alt_fail, 0)
			end
			if vkv2_mem>0 then
				set(absu_speed_fail,1)
			else
				set(absu_speed_fail, 0)
			end
			if (mgv_tet_sau1_mem+mgv_tet_sau2_mem+mgv_tet_sau3_mem>1) then
				at3_mem=1
			end
			if get(at_fail_signal)>0 then
				at1_mem=1
				at2_mem=1
			end
			if (at1_mem+at2_mem>1) or at3_mem>0  then
				set(absu_at_fail,1)
				at1_mem=1
				at2_mem=1
			else
				set(absu_at_fail,0)
			end
			set(absu_at1_fail,at1_mem)
			set(absu_at2_fail,at2_mem)
			
			-- if absu_svk_tbl.ute1_fail_mem+absu_svk_tbl.ute2_fail_mem>1 then
				-- set(rel_trim_elv,6)
			-- else
				-- set(rel_trim_elv,0)
			-- end
			if absu_svk_tbl.bshu_tet1_mem+absu_svk_tbl.bshu_tet2_mem+absu_svk_tbl.bshu_tet3_mem>1 then
				set(bshu_tet_fail,1)
			else
				set(bshu_tet_fail,0)
			end
			if absu_svk_tbl.bshu_gam1_mem+absu_svk_tbl.bshu_gam2_mem+absu_svk_tbl.bshu_gam3_mem>1 then
				set(bshu_gam_fail,1)
			else
				set(bshu_gam_fail,0)
			end
			if absu_svk_tbl.bns_tet1_mem+absu_svk_tbl.bns_tet2_mem+absu_svk_tbl.bns_tet3_mem>1 then
				set(absu_bns_pitch_fail,1)
			else
				set(absu_bns_pitch_fail,0)
			end
			if absu_svk_tbl.bns_gam1_mem+absu_svk_tbl.bns_gam2_mem+absu_svk_tbl.bns_gam3_mem>1 then
				set(absu_bns_roll_fail,1)
			else
				set(absu_bns_roll_fail,0)
			end
			
			if not at_on then
			at1_mem =0
			at2_mem =0
			at3_mem =0
			end
			if not stu_roll_on then
				stu_gam1_mem=0
				stu_gam2_mem=0
				stu_gam3_mem=0
				stu_tet1_mem=0
				stu_tet2_mem=0
				stu_tet3_mem=0
			end
		else
			--clear memory on shutdown
			ra_tet1_mem=0
			ra_tet2_mem=0
			ra_tet3_mem=0
			ra_gam1_mem=0
			ra_gam2_mem=0
			ra_gam3_mem=0
			ra_psi1_mem=0
			ra_psi2_mem=0
			ra_psi3_mem=0
			-- random fails for next power up
			bdg_tet1_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_tet2_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_tet3_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_gam1_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_gam2_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_gam3_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_psi1_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_psi2_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bdg_psi3_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bap_tet1_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bap_tet2_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bap_tet3_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bap_gam1_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bap_gam2_mem=bool2int(math.random() < 0.00001 * 0.3) 
			bap_gam3_mem=bool2int(math.random() < 0.00001 * 0.3) 
			vkv_mem=bool2int(math.random() < 0.00001 * 0.3) 
			vkv2_mem=0
			vu1_mem=0
			vu2_mem=0
			vu3_mem=bool2int(math.random() < 0.00001 * 0.3) 
			stu_tet1_mem=0
			stu_tet2_mem=0
			stu_tet3_mem=0
			stu_gam1_mem=0
			stu_gam2_mem=0
			stu_gam3_mem=0
			at1_mem =bool2int(math.random() < 0.00001 * 0.3) 
			at2_mem =bool2int(math.random() < 0.00001 * 0.3) 
			at3_mem =0
			mgv_tet1_mem=0
			mgv_tet2_mem=0
			mgv_tet3_mem=0
			mgv_gam1_mem=0
			mgv_gam2_mem=0
			mgv_gam3_mem=0
			mgv_tet_sau1_mem=0
			mgv_tet_sau2_mem=0
			mgv_tet_sau3_mem=0
			mgv_gam_sau1_mem=0
			mgv_gam_sau2_mem=0
			mgv_gam_sau3_mem=0
			absu_svk_tbl.ute1_fail_mem = 0 
			absu_svk_tbl.ute2_fail_mem = 0 
			absu_svk_tbl.bshu_tet1_mem = bool2int(math.random() < 0.00001 * 0.3)
			absu_svk_tbl.bshu_tet2_mem = bool2int(math.random() < 0.00001 * 0.3)
			absu_svk_tbl.bshu_tet3_mem = bool2int(math.random() < 0.00001 * 0.3)
			absu_svk_tbl.bshu_gam1_mem = bool2int(math.random() < 0.00001 * 0.3)
			absu_svk_tbl.bshu_gam2_mem = bool2int(math.random() < 0.00001 * 0.3)
			absu_svk_tbl.bshu_gam3_mem = bool2int(math.random() < 0.00001 * 0.3)
			absu_svk_tbl.bns_tet1_mem = 0
			absu_svk_tbl.bns_tet2_mem = 0
			absu_svk_tbl.bns_tet3_mem = 0
			absu_svk_tbl.bns_gam1_mem = 0
			absu_svk_tbl.bns_gam2_mem = 0
			absu_svk_tbl.bns_gam3_mem = 0
			set(ra_tet,0)
			set(ra_gam,0)
			set(ra_psi,0)
			set(bdg_tet,0)
			set(bdg_gam,0)
			set(bdg_psi,0)
			set(bshu_1,0)
			set(bshu_2,0)
			set(bns_tet,0)
			set(bap_tet,0)
			set(bap_gam,0)
			set(vkv,0)
			set(vu,0)
			set(ute,1)
			set(ute,0)
			set(stu_tet,0)
			set(stu_gam,0)
			set(at,0)
			set(bsn,0)
			set(mgv_tet,0)
			set(mgv_gam,0)
			set(mgv_tet2,0)
			set(mgv_gam2,1)
			set(mgv_gam2,0)
			set(bns_gam,0)
			set(otk_1,0)
			set(otk_2,0)
			set(otk_3,0)
			set(otk_4,0)
			set(absu_bns_pitch_fail,1)
			set(absu_bns_roll_fail,1)
			set(absu_damp_pitch_fail,0)
			set(absu_damp_roll_fail,0)
			set(absu_damp_yaw_fail,0)
			absu_svk_tbl.mgv_tet_1_fail = 0
			absu_svk_tbl.mgv_tet_2_fail = 0
			absu_svk_tbl.mgv_tet_3_fail = 0
			absu_svk_tbl.mgv_gam_1_fail = 0
			absu_svk_tbl.mgv_gam_2_fail = 0
			absu_svk_tbl.mgv_gam_3_fail = 0
			absu_svk_tbl.ra_tet_fail = 0
			absu_svk_tbl.ra_gam_fail = 0
			absu_svk_tbl.ra_psi_fail = 0
			set(work_state,0)
			s_run=0
			s_reg=-2
			if absu_svk_tbl.start_timer > 0 then
				absu_svk_tbl.start_timer = 0
			end
		end
	end
end