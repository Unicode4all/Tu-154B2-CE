-- absu failures

-- failures
defineProperty("absu_ra56_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_roll_fail")) -- отказ ra56
defineProperty("absu_ra56_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_pitch_fail")) -- отказ ra56
defineProperty("absu_ra56_yaw_fail", globalPropertyi("tu154b2/custom/failures/absu_ra56_yaw_fail")) -- отказ ra56

defineProperty("absu_at1_fail", globalPropertyi("tu154b2/custom/failures/absu_at_chan1_fail")) -- отказ AT
defineProperty("absu_at2_fail", globalPropertyi("tu154b2/custom/failures/absu_at_chan2_fail")) -- отказ AT

defineProperty("absu_contr_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_roll_fail")) -- отказ бокового управления
defineProperty("absu_contr_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_contr_pitch_fail")) -- отказ продольного управления
defineProperty("absu_calc_toga_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_toga_fail")) -- отказ вычислителя УХОД

defineProperty("absu_calc_roll_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_roll_fail")) -- отказ бокового канала СТУ
defineProperty("absu_calc_pitch_fail", globalPropertyi("tu154b2/custom/failures/absu_calc_pitch_fail")) -- отказ продольного канала СТУ


-- define sources
defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time
defineProperty("failures_enabled", globalPropertyi("tu154b2/custom/failures/failures_enabled"))

-- Smart Copilot
defineProperty("ismaster", globalPropertyf("scp/api/ismaster")) -- Master. 0 = plugin not found, 1 = slave 2 = master
defineProperty("hascontrol_1", globalPropertyf("scp/api/hascontrol_1")) -- Have control. 0 = plugin not found, 1 = no control 2 = has control

defineProperty("mgv_thet_2", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_L"))
defineProperty("mgv_thet_3", globalPropertyf("tu154b2/custom/gyro/ahz_pitch_int_R"))
defineProperty("mgv_thet_1", globalPropertyf("tu154b2/custom/gyro/mgv_contr_pitch"))
defineProperty("mgv_gam_2", globalPropertyf("tu154b2/custom/bkk/pkp_roll_left")) -- крен на АГР + в право
defineProperty("mgv_gam_3", globalPropertyf("tu154b2/custom/bkk/pkp_roll_right")) -- крен на АГР + в право
defineProperty("mgv_gam_1", globalPropertyf("tu154b2/custom/gyro/mgv_contr_roll")) -- крен на АГР + в право
defineProperty("rel_trim_elv", globalPropertyi("sim/operation/failures/rel_trim_elv"))
defineProperty("elev_trimm_1_pk", globalPropertyi("sim/custom/b2/elev_trimm_1_pk")) -- 
defineProperty("elev_trimm_2_pk", globalPropertyi("sim/custom/b2/elev_trimm_2_pk")) -- 

defineProperty("db1", globalPropertyf("tu154b2/custom/controlls/debug1"))
defineProperty("db2", globalPropertyf("tu154b2/custom/controlls/debug2"))
defineProperty("db3", globalPropertyf("tu154b2/custom/controlls/debug3"))
defineProperty("db4", globalPropertyf("tu154b2/custom/controlls/debug4"))
defineProperty("db5", globalPropertyf("tu154b2/custom/controlls/debug5"))
defineProperty("db6", globalPropertyf("tu154b2/custom/controlls/debug6"))

absu_svk_tbl.bdg_tet_1_drive_fail = 0 
absu_svk_tbl.bdg_tet_2_drive_fail = 0 
absu_svk_tbl.bdg_tet_3_drive_fail = 0 
absu_svk_tbl.bdg_psi_1_drive_fail = 0 
absu_svk_tbl.bdg_psi_2_drive_fail = 0 
absu_svk_tbl.bdg_psi_3_drive_fail = 0 
absu_svk_tbl.bdg_gam_1_drive_fail = 0 
absu_svk_tbl.bdg_gam_2_drive_fail = 0 
absu_svk_tbl.bdg_gam_3_drive_fail = 0 

absu_svk_tbl.bap_thet_1_fail = 0
absu_svk_tbl.bap_thet_2_fail = 0
absu_svk_tbl.bap_thet_3_fail = 0
absu_svk_tbl.bap_gam_1_fail = 0 
absu_svk_tbl.bap_gam_2_fail = 0 
absu_svk_tbl.bap_gam_3_fail = 0 
absu_svk_tbl.stu_thet_1_fail = 0
absu_svk_tbl.stu_thet_2_fail = 0
absu_svk_tbl.stu_thet_3_fail = 0
absu_svk_tbl.stu_gam_1_fail = 0 
absu_svk_tbl.stu_gam_2_fail = 0 
absu_svk_tbl.stu_gam_3_fail = 0 
absu_svk_tbl.vu1_fail = 0
absu_svk_tbl.vu2_fail = 0
absu_svk_tbl.vu3_fail = 0
absu_svk_tbl.vkv_fail = 0
absu_svk_tbl.bshu_tet1_fail = 0 
absu_svk_tbl.bshu_tet2_fail = 0 
absu_svk_tbl.bshu_tet3_fail = 0 
absu_svk_tbl.bshu_gam1_fail = 0 
absu_svk_tbl.bshu_gam2_fail = 0 
absu_svk_tbl.bshu_gam3_fail = 0 
absu_svk_tbl.bns_tet1_fail = 0
absu_svk_tbl.bns_tet2_fail = 0
absu_svk_tbl.bns_tet3_fail = 0
absu_svk_tbl.bns_gam1_fail = 0
absu_svk_tbl.bns_gam2_fail = 0
absu_svk_tbl.bns_gam3_fail = 0
absu_svk_tbl.ute1_fail = 0 
absu_svk_tbl.ute2_fail = 0 

local fail_counter = 0
local check_time = math.random(15, 30)


local demf_tang1=0
local demf_tang2=0
local demf_tang3=0

local demf_kren1=0
local demf_kren2=0
local demf_kren3=0

local demf_kurs1=0
local demf_kurs2=0
local demf_kurs3=0

function update()
	local passed = get(frame_time)
	
	local MASTER = get(ismaster) ~= 1	
	
	--local power=bool2int(get(absu_power_cc)==0)
	if MASTER then	

		
		local FAIL = get(failures_enabled)
		FAIL = FAIL * 0.05 * 4 ^ (FAIL * 0.5)
		-- check failures
		if FAIL > 0 then
			
			fail_counter = fail_counter + passed
			
			if fail_counter > check_time then
				fail_counter = 0
				check_time = math.random(15, 30)
				
				-- random failures
				if get(absu_at1_fail) ~= 1 then set(absu_at1_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				if get(absu_at2_fail) ~= 1 then set(absu_at2_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
						

				local roll_1 = bool2int(get(absu_ra56_roll_fail) >= 1)
				local roll_2 = bool2int(get(absu_ra56_roll_fail) >= 2)
				local roll_3 = bool2int(get(absu_ra56_roll_fail) >= 3)
				
				if roll_1 ~= 1 then roll_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
				elseif roll_2 ~= 1 then roll_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
				elseif roll_3 ~= 1 then roll_3 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
				end
				
				set(absu_ra56_roll_fail, roll_1 + roll_2 + roll_3)

				
				
				local pitch_1 = bool2int(get(absu_ra56_pitch_fail) >= 1)
				local pitch_2 = bool2int(get(absu_ra56_pitch_fail) >= 2)
				local pitch_3 = bool2int(get(absu_ra56_pitch_fail) >= 3)
				
				if pitch_1 ~= 1 then pitch_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
				elseif pitch_2 ~= 1 then pitch_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
				elseif pitch_3 ~= 1 then pitch_3 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
				end
				
				set(absu_ra56_pitch_fail, pitch_1 + pitch_2 + pitch_3)
				
				
				
				
				local yaw_1 = bool2int(get(absu_ra56_yaw_fail) >= 1)
				local yaw_2 = bool2int(get(absu_ra56_yaw_fail) >= 2)
				local yaw_3 = bool2int(get(absu_ra56_yaw_fail) >= 3)
				
				if yaw_1 ~= 1 then yaw_1 = bool2int(math.random() < 0.00001 * FAIL * 0.3)
				elseif yaw_2 ~= 1 then yaw_2 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
				elseif yaw_3 ~= 1 then yaw_3 = bool2int(math.random() < 0.00001 * FAIL * 0.3) 
				end
				
				set(absu_ra56_yaw_fail, yaw_1 + yaw_2 + yaw_3)
				
				
				--if get(absu_contr_roll_fail) ~= 1 then set(absu_contr_roll_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				--if get(absu_contr_pitch_fail) ~= 1 then set(absu_contr_pitch_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				--if get(absu_calc_toga_fail) ~= 1 then set(absu_calc_toga_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				
				--if get(absu_calc_roll_fail) ~= 1 then set(absu_calc_roll_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				--if get(absu_calc_pitch_fail) ~= 1 then set(absu_calc_pitch_fail, bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1) end
				-- accelerometers
				if absu_svk_tbl.bdg_tet_1_drive_fail ~= 1 then absu_svk_tbl.bdg_tet_1_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_tet_2_drive_fail ~= 1 then absu_svk_tbl.bdg_tet_2_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_tet_3_drive_fail ~= 1 then absu_svk_tbl.bdg_tet_3_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_psi_1_drive_fail ~= 1 then absu_svk_tbl.bdg_psi_1_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_psi_2_drive_fail ~= 1 then absu_svk_tbl.bdg_psi_2_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_psi_3_drive_fail ~= 1 then absu_svk_tbl.bdg_psi_3_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_gam_1_drive_fail ~= 1 then absu_svk_tbl.bdg_gam_1_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_gam_2_drive_fail ~= 1 then absu_svk_tbl.bdg_gam_2_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bdg_gam_3_drive_fail ~= 1 then absu_svk_tbl.bdg_gam_3_drive_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				-- autopilot module
				if absu_svk_tbl.bap_thet_1_fail ~= 1 then absu_svk_tbl.bap_thet_1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bap_thet_2_fail ~= 1 then absu_svk_tbl.bap_thet_2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bap_thet_3_fail ~= 1 then absu_svk_tbl.bap_thet_3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bap_gam_1_fail ~= 1 then absu_svk_tbl.bap_gam_1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bap_gam_2_fail ~= 1 then absu_svk_tbl.bap_gam_2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bap_gam_3_fail ~= 1 then absu_svk_tbl.bap_gam_3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.stu_thet_1_fail ~= 1 then absu_svk_tbl.stu_thet_1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.stu_thet_2_fail ~= 1 then absu_svk_tbl.stu_thet_2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.stu_thet_3_fail ~= 1 then absu_svk_tbl.stu_thet_3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.stu_gam_1_fail ~= 1 then absu_svk_tbl.stu_gam_1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.stu_gam_2_fail ~= 1 then absu_svk_tbl.stu_gam_2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.stu_gam_3_fail ~= 1 then absu_svk_tbl.stu_gam_3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.vu1_fail ~= 1 then absu_svk_tbl.vu1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.vu2_fail ~= 1 then absu_svk_tbl.vu2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.vu3_fail ~= 1 then absu_svk_tbl.vu3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.vkv_fail ~= 1 then absu_svk_tbl.vkv_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bshu_tet1_fail ~= 1 then absu_svk_tbl.bshu_tet1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bshu_tet2_fail ~= 1 then absu_svk_tbl.bshu_tet2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bshu_tet3_fail ~= 1 then absu_svk_tbl.bshu_tet3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bshu_gam1_fail ~= 1 then absu_svk_tbl.bshu_gam1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bshu_gam2_fail ~= 1 then absu_svk_tbl.bshu_gam2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bshu_gam3_fail ~= 1 then absu_svk_tbl.bshu_gam3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bns_tet1_fail ~= 1 then absu_svk_tbl.bns_tet1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bns_tet2_fail ~= 1 then absu_svk_tbl.bns_tet2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bns_tet3_fail ~= 1 then absu_svk_tbl.bns_tet3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bns_gam1_fail ~= 1 then absu_svk_tbl.bns_gam1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bns_gam2_fail ~= 1 then absu_svk_tbl.bns_gam2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.bns_gam3_fail ~= 1 then absu_svk_tbl.bns_gam3_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.ute1_fail ~= 1 then absu_svk_tbl.ute1_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				if absu_svk_tbl.ute2_fail ~= 1 then absu_svk_tbl.ute2_fail = bool2int(math.random() < 0.00001 * FAIL * 0.3) * 1 end
				
			end
			
			-- dependent failures
			

			
			
		
		
		else
			-- no failures enabled
			fail_counter = 0
			
			set(absu_ra56_roll_fail, 0)
			set(absu_ra56_pitch_fail, 0)
			set(absu_ra56_yaw_fail, 0)
			
			set(absu_at1_fail, 0)
			set(absu_at2_fail, 0)
			
			-- set(bdg_tet_1_fail, 0)
			-- set(bdg_tet_2_fail, 0)
			-- set(bdg_tet_3_fail, 0)
			
			-- set(bdg_gam_1_fail, 0)
			-- set(bdg_gam_2_fail, 0)
			-- set(bdg_gam_3_fail, 0)
			-- set(bdg_psi_1_fail, 0)
			-- set(bdg_psi_2_fail, 0)
			-- set(bdg_psi_3_fail, 0)
			
			-- set(bap_thet_1_fail,0)
			-- set(bap_thet_2_fail,0)
			-- set(bap_thet_3_fail,0)
			-- set(bap_gam_1_fail,0)
			-- set(bap_gam_2_fail,0)
			-- set(bap_gam_3_fail,0)
			-- set(stu_thet_1_fail,0)
			-- set(stu_thet_2_fail,0)
			-- set(stu_thet_3_fail,0)
			-- set(stu_gam_1_fail,0)
			-- set(stu_gam_2_fail,0)
			-- set(stu_gam_3_fail,0)
			-- set(vu1_fail,0)
			-- set(vu2_fail,0)
			-- set(vu3_fail,0)
			-- set(vkv_fail,0)
			-- set(bshu_tet1_fail,0)
			-- set(bshu_tet2_fail,0)
			-- set(bshu_tet3_fail,0)
			-- set(bshu_gam1_fail,0)
            -- set(bshu_gam2_fail,0)
		    -- set(bshu_gam3_fail,0)
			-- set(ute1_fail,0)
			-- set(ute2_fail,0)
			-- set(bns_tet1_fail,0)
			-- set(bns_tet2_fail,0)
			-- set(bns_tet3_fail,0)
			-- set(bns_gam1_fail,0)
            -- set(bns_gam2_fail,0)
		    -- set(bns_gam3_fail,0)
			
			absu_svk_tbl.bap_thet_1_fail = 0
			absu_svk_tbl.bap_thet_2_fail = 0
			absu_svk_tbl.bap_thet_3_fail = 0
			absu_svk_tbl.bap_gam_1_fail = 0 
			absu_svk_tbl.bap_gam_2_fail = 0 
			absu_svk_tbl.bap_gam_3_fail = 0 
			absu_svk_tbl.stu_thet_1_fail = 0
			absu_svk_tbl.stu_thet_2_fail = 0
			absu_svk_tbl.stu_thet_3_fail = 0
			absu_svk_tbl.stu_gam_1_fail = 0 
			absu_svk_tbl.stu_gam_2_fail = 0 
			absu_svk_tbl.stu_gam_3_fail = 0 
			absu_svk_tbl.vu1_fail = 0
			absu_svk_tbl.vu2_fail = 0
			absu_svk_tbl.vu3_fail = 0
			absu_svk_tbl.vkv_fail = 0
			absu_svk_tbl.bshu_tet1_fail = 0 
			absu_svk_tbl.bshu_tet2_fail = 0 
			absu_svk_tbl.bshu_tet3_fail = 0 
			absu_svk_tbl.bshu_gam1_fail = 0 
			absu_svk_tbl.bshu_gam2_fail = 0 
			absu_svk_tbl.bshu_gam3_fail = 0 
			absu_svk_tbl.bns_tet1_fail = 0
			absu_svk_tbl.bns_tet2_fail = 0
			absu_svk_tbl.bns_tet3_fail = 0
			absu_svk_tbl.bns_gam1_fail = 0
			absu_svk_tbl.bns_gam2_fail = 0
			absu_svk_tbl.bns_gam3_fail = 0
			absu_svk_tbl.ute1_fail = 0 
			absu_svk_tbl.ute2_fail = 0 
			absu_svk_tbl.bdg_tet_1_drive_fail = 0
			absu_svk_tbl.bdg_tet_2_drive_fail = 0
			absu_svk_tbl.bdg_tet_3_drive_fail = 0
			absu_svk_tbl.bdg_psi_1_drive_fail = 0
			absu_svk_tbl.bdg_psi_2_drive_fail = 0
			absu_svk_tbl.bdg_psi_3_drive_fail = 0
			absu_svk_tbl.bdg_gam_1_drive_fail = 0
			absu_svk_tbl.bdg_gam_2_drive_fail = 0
			absu_svk_tbl.bdg_gam_3_drive_fail = 0
				
		end		
	end
end