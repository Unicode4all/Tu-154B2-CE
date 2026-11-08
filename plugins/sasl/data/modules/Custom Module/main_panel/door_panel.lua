-- this is the door lights panel

-- controlls
test_lamps = globalPropertyi("tu154b2/custom/buttons/lamp_test_doors") -- кнопка проверки ламп панели двигателей
day_night_set = globalPropertyf("tu154b2/custom/lights/day_night_set_eng") -- переключатель день - ночь. 0 - день, 1 - ночь. приглушает яркость сигнальных ламп.

-- other sources
bus27_volt_left = globalPropertyf("tu154b2/custom/elec/bus27_volt_left") -- напряжение сети 27
bus27_volt_right = globalPropertyf("tu154b2/custom/elec/bus27_volt_right") -- напряжение сети 27
frame_time = globalPropertyf("tu154b2/custom/time/frame_time") -- flight time

nosewheel_turn_enable = globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_enable") -- выключатель поворота передней стойки на штурвале
nosewheel_turn_sel = globalPropertyi("tu154b2/custom/switchers/nosewheel_turn_sel") -- переключатель угла поворота передней стойки. 0 - 10, 1 - 63

-- lamps
other_hatches = globalPropertyf("tu154b2/custom/lights/other_hatches") -- лампа для незадействованных люков
left_front_pax_door = globalPropertyf("tu154b2/custom/lights/left_front_pax_door") -- левая передняя дверь открыта
left_mid_pax_door = globalPropertyf("tu154b2/custom/lights/left_mid_pax_door") -- левая средняя дверь открыта
right_mid_pax_door = globalPropertyf("tu154b2/custom/lights/right_mid_pax_door") -- средняя средняя дверь открыта
cargo_front_door = globalPropertyf("tu154b2/custom/lights/cargo_front_door") -- передний багажный люк
cargo_back_door = globalPropertyf("tu154b2/custom/lights/cargo_back_door") -- задний багажный люк
turn63_lamp = globalPropertyf("tu154b2/custom/lights/turn63_lamp") -- разворот 63 
nosewheel_turn_off = globalPropertyf("tu154b2/custom/lights/nosewheel_turn_off") -- поворот не включен
busters_off = globalPropertyf("tu154b2/custom/lights/busters_off") -- лампа бустера

-- hatches
cargo_1 = globalPropertyf("tu154b2/custom/anim/cargo_1") -- положение багажной двери 1. 0 - закрыта, 1 - открыта
cargo_2 = globalPropertyf("tu154b2/custom/anim/cargo_2") -- положение багажной двери 1. 0 - закрыта, 1 - открыта
pax_door_1 = globalPropertyf("tu154b2/custom/anim/pax_door_1") -- положение передних пасс дверей
pax_door_2 = globalPropertyf("tu154b2/custom/anim/pax_door_2") -- положение средних пасс дверей
pax_door_3 = globalPropertyf("tu154b2/custom/anim/pax_door_3") -- положение правых аварийных дверей


busters_cap = globalPropertyi("tu154b2/custom/switchers/console/busters_cap") -- крышка выключателей бустеров

local door1=0
local door2=0
local door3=0
local door4=0
local door5=0

local passed = get(frame_time)



local function lamps()
	local day_night = 1 - get(day_night_set) * 0.5
	local test_btn = get(test_lamps) * math.max((get(bus27_volt_right) - 10) / 18.5, 0)
	local lamps_brt = math.max((math.max(get(bus27_volt_left), get(bus27_volt_right)) - 10) / 18.5, 0)
	
	local other_hatches_brt = math.max(0 * lamps_brt * day_night, test_btn) -- fake for now
	set(other_hatches, other_hatches_brt)
	if get(nosewheel_turn_sel)>0 then
		door1=bool2int(get(pax_door_1) > 0)
	    door2=bool2int(get(pax_door_2) > 0)
	    door3=bool2int(get(pax_door_3) > 0)
	    door4=bool2int(get(cargo_1) > 0)
	    door5=bool2int(get(cargo_2) > 0)
	else
		door1=math.min(door1,1-bool2int(get(pax_door_1) == 0))
	    door2=math.min(door2,1-bool2int(get(pax_door_2) == 0))
	    door3=math.min(door3,1-bool2int(get(pax_door_3) == 0))
	    door4=math.min(door4,1-bool2int(get(cargo_1) == 0))
	    door5=math.min(door5,1-bool2int(get(cargo_2) == 0))
	end
		
	local left_front_pax_door_brt = math.max(door1 * lamps_brt * day_night, test_btn)
	set(left_front_pax_door, left_front_pax_door_brt)
	
	local left_mid_pax_door_brt = math.max(door2 * lamps_brt * day_night, test_btn) 
	set(left_mid_pax_door, left_mid_pax_door_brt)
	
	local right_mid_pax_door_brt = math.max(door3 * lamps_brt * day_night, test_btn)
	set(right_mid_pax_door, right_mid_pax_door_brt)
	
	local cargo_front_door_brt = math.max(door4 * lamps_brt * day_night, test_btn)
	set(cargo_front_door, cargo_front_door_brt)
	
	local cargo_back_door_brt = math.max(door5 * lamps_brt * day_night, test_btn)
	
	set(cargo_back_door, cargo_back_door_brt)
	local turn63_lamp_brt = math.max(get(nosewheel_turn_sel) * get(nosewheel_turn_enable) * lamps_brt * day_night, test_btn)
	set(turn63_lamp, turn63_lamp_brt)
	
	local nosewheel_turn_off_brt = math.max((1-get(nosewheel_turn_enable)) * lamps_brt * day_night, test_btn)
	set(nosewheel_turn_off, nosewheel_turn_off_brt)
	
	local busters_off_brt = math.max(get(busters_cap) * lamps_brt * day_night, test_btn)
	set(busters_off, busters_off_brt)
	
	
end

-- local button_sound = loadSample(moduleDirectory .. '/Custom Sounds/plastic_btn.wav')

-- local buttn_last = get(test_lamps)

function update()

	lamps()
	
	-- local button_sw = get(test_lamps)
	
	-- if button_sw ~= buttn_last then playSample(button_sound, false) end
	-- buttn_last = button_sw


end








