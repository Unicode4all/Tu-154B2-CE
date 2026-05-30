-- this is TCAS root
size = {2048, 2048}


components = {
	
	tcas_panel {
		position = {0, 0, size[1], size[2]},
	},

	so72_panel {
		position = {23, 1046, 440, 167},
	},
	
	tcas_logic {
		position = {0, 0, size[1], size[2]},
	},
	
	tcas_gau {
		position = {11, 11, 482, 530},
		side = 1,
	},

	tcas_gau {
		position = {518, 11, 482, 530},
		var_on = globalPropertyi("tu154b2/custom/switchers/ovhd/var_right"),  -- оерхед. вар лев
		bus27_volt = globalPropertyf("tu154b2/custom/elec/bus27_volt_right"), -- напряжение сети 27
		bus115_volt = globalPropertyf("tu154b2/custom/elec/bus115_3_volt"), -- напряжение на сети 115в
		vsi_brt = globalPropertyf("tu154b2/custom/gauges/vsi/vsi_brt_right"),  -- яркость
		vvi_int2 = globalPropertyf("tu154b2/custom/gauges/vvi_right"), -- VVI
		vvi_int = globalPropertyf("sim/custom/gauges/vvi_right_new"), -- VVI
		vvi_fail = globalPropertyi("sim/operation/failures/rel_cop_vvi"), -- fail
		vvi = globalPropertyf("sim/cockpit2/gauges/indicators/vvi_fpm_copilot"),
		static_fail = globalPropertyi("sim/operation/failures/rel_static"),
		side = 2,
	},
	
	
	

}