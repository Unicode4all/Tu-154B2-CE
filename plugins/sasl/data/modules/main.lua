print("This is the Tu154B-2 for XP12")
size = { 4096, 4096 }
print("Lua version is", _VERSION)

if jit and jit.os ~= "Windows" then
	jit.off()
	jit.flush()
	print("LuaJIT disabled")
end

sasl.options.set3DRendering(true)
sasl.options.setAircraftPanelRendering(true)
sasl.options.setInteractivity(true)
sasl.options.setRenderingMode2D(SASL_RENDER_2D_MULTIPASS)
sasl.options.setUpdateDrawingReady (true)
addSearchPath(moduleDirectory .. "/Custom Module/KLN90/")
addSearchPath(moduleDirectory .. "/Custom Module/Custom Sounds")
addSearchPath(moduleDirectory .. "/Custom Module/gui")
addSearchPath(moduleDirectory .. "/Custom Module")
addSearchPath(moduleDirectory .. "/Custom Module/main_panel")
addSearchPath(moduleDirectory .. "/Custom Module/main_panel/taws")
nd_display = sasl.gl.createRenderTarget ( 500 , 400 )
--include("dataref_creator_4.lua")

sasl.gl.setRenderTextPixelAligned(true )

-- 3D panel issue workaround
fixedPanelWidth = 4096
fixedPanelHeight = 4096

math.randomseed(os.time()) -- randomise random :)

xplane_version = globalProperty("sim/version/xplane_internal_version")

-- global functions
function interpolate(tbl, value)
	local lastActual = 0
	local lastReference = 0
	for _k, v in pairs(tbl) do
		if value == v[1] then
			return v[2]
		end
		if value < v[1] then
			local a = value - lastActual
			local m = v[2] - lastReference
			return lastReference + a / (v[1] - lastActual) * m
		end
		lastActual = v[1]
		lastReference = v[2]
	end
	return value - lastActual + lastReference
end

-- return the sign of given number as +1 or -1
function sign(x)
	if x >= 0 then return 1 else return -1 end
end

-- return the integer 0 or 1 by give boolean
function bool2int(var)
	if var then
		return 1
	else
		return 0
	end
end

function line(x, x1, y1, x2, y2) -- returns Y on the line with two points by given X
	-- (x - x1)/(x2 - x1) = (y - y1)/(y2 - y1) -- line function

	if x2 - x1 ~= 0 then
		return (x - x1) * (y2 - y1) / (x2 - x1) + y1
	else
		return 0
	end
end

-- returns true if current beacon is ILS
function isILS(freq)
	if (10810 > freq) or (11195 < freq) then
		return false
	end
	local v, f = math.modf(freq / 100)
	v = math.floor(f * 10 + 0.001)
	return 1 == (v % 2)
end

--[[
test_panel = subpanel {
	position = { 50, 50, 1000, 500 };
	noBackground = true;
	noClose = true;
	resizeProportional = true;
	savePosition = true;
	name = "test_panel";	
	components = {
		rectangle {
			position = { 0, 0, 1000, 500 },
			color = {1,1,1,1};
		};
		
		afl_ch {
			position = { 0, 0, 1000, 500 },
		},
		
		
	};
}

test_panel.visible = true
--]]
-- absu_data={}
-- elec_data={}
-- engines_data={}
-- failures_data={}
-- kskv_data={}
tcas_data_tbl={}
sys_data_tbl={}
components = {

-- internal logic

	
	--creator_script {}, -- script for converting custom DataRef file to creator code.
	dataref_creator_1 {}, -- main datarefs. controls and indicatios
	dataref_creator_2 {}, -- internal datarefs
	dataref_creator_3 {}, -- failures datarefs
	
	save_state {}, -- safe current state
	
	time_logic {},
	flap_aero {},
	transsonic {},
	
	-- KLN90 {
			-- --position = { 0, 0, 2048, 2048 } 
			-- position = { 1018, 506, 1029, 329 }  
	-- },	

	-- gauges and systems
	main_panel { -- panel for simulated 2D gauges
		position = {0, 0, 2048, 2048},
	}, 
	overhead {},
	animation {},
	electric_system{},
	lights_system{},
	apu_system {},
	engines_system {},
	fuel_system {},
	hydro_system {},
	kskv {},
	start_system {},
	controls {},
	fire_system {},
	antiice{},
	msrp {},
	brake_system {},
	sounds {},
	panels_2d {},
	--camera_shake {},


}
