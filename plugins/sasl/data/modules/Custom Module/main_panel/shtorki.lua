-- this lowers the captain's shtork above the DH for instrument training
-- functionality enabled by the СИВ-1 switch but not a realistic implementation of the СИВ-1 system

defineProperty("siv1", globalPropertyf("sim/custom/misc/siv1"))

defineProperty("rv_dh_left", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_dh_left"))
defineProperty("rv_needle_left", globalPropertyf("tu154b2/custom/gauges/alt/radioalt_needle_left"))

defineProperty("shtork1", globalPropertyi("tu154b2/custom/switchers/spu_4_source"))
-- defineProperty("shtork2", globalPropertyi("tu154b2/custom/switchers/spu_4_mode"))

-- defineProperty("bus36_volt", globalPropertyf("tu154b2/custom/elec/bus36_volt_left"))

defineProperty("frame_time", globalPropertyf("tu154b2/custom/time/frame_time")) -- flight time

local siv1_last = 0
local shtork_target = nil
local shtork1_ratio = 0
-- local shtork2_ratio = 0

local above_dh_last = false

function update()
    local passed = get(frame_time)

    local siv1_now = get(siv1) > 0
    local shtork1_actual = get(shtork1)
    -- local shtork2_actual = get(shtork2)

    local above_dh = get(rv_needle_left) >= get(rv_dh_left)
    
    if siv1_now and not siv1_last and above_dh then
        shtork_target = 2
        shtork1_ratio = shtork1_actual * 0.5
        -- shtork2_ratio = shtork2_actual * 0.5
    elseif not siv1_now and siv1_last then
        shtork_target = 0
        shtork1_ratio = shtork1_actual * 0.5
        -- shtork2_ratio = shtork2_actual * 0.5
    elseif siv1_now and above_dh_last and not above_dh then
        shtork_target = 0
        shtork1_ratio = shtork1_actual * 0.5
        -- shtork2_ratio = shtork2_actual * 0.5
    elseif siv1_now and not above_dh_last and above_dh then
        shtork_target = 2
        shtork1_ratio = shtork1_actual * 0.5
        -- shtork2_ratio = shtork2_actual * 0.5
    end

    if shtork_target ~= nil then
        if shtork_target == 2 then
            shtork1_ratio = math.min(1, shtork1_ratio + passed * 8)
            -- shtork2_ratio = math.min(1, shtork2_ratio + passed * 8)
        else
            shtork1_ratio = math.max(0, shtork1_ratio - passed * 8)
            -- shtork2_ratio = math.max(0, shtork2_ratio - passed * 8)
        end

        local command1 = 0
        if shtork1_ratio > 0.99 then
            command1 = 2
        elseif shtork1_ratio > 0.49 then
            command1 = 1
        end

        -- local command2 = 0
        -- if shtork2_ratio > 0.99 then
        --     command2 = 2
        -- elseif shtork2_ratio > 0.49 then
        --     command2 = 1
        -- end

        if command1 ~= shtork1_actual then
            set(shtork1, command1)
        end

        -- if command2 ~= shtork2_actual then
        --     set(shtork2, command2)
        -- end

        local close_finished = shtork_target == 2 and shtork1_ratio >= 1 -- math.min(shtork1_ratio, shtork2_ratio) >= 1
        local open_finished = shtork_target == 0 and shtork1_ratio <= 0 -- math.max(shtork1_ratio, shtork2_ratio) <= 0

        if open_finished or close_finished then
            shtork_target = nil
        end
    end

    siv1_last = siv1_now
    above_dh_last = above_dh
end
