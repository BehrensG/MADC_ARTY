# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  ipgui::add_param $IPINST -name "DATA_SIZE"
  ipgui::add_param $IPINST -name "ADDR_SIZE"
  ipgui::add_param $IPINST -name "NPLC"
  ipgui::add_param $IPINST -name "VREF"

}

proc update_PARAM_VALUE.ADDR_SIZE { PARAM_VALUE.ADDR_SIZE } {
	# Procedure called to update ADDR_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.ADDR_SIZE { PARAM_VALUE.ADDR_SIZE } {
	# Procedure called to validate ADDR_SIZE
	return true
}

proc update_PARAM_VALUE.DATA_SIZE { PARAM_VALUE.DATA_SIZE } {
	# Procedure called to update DATA_SIZE when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.DATA_SIZE { PARAM_VALUE.DATA_SIZE } {
	# Procedure called to validate DATA_SIZE
	return true
}

proc update_PARAM_VALUE.NPLC { PARAM_VALUE.NPLC } {
	# Procedure called to update NPLC when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.NPLC { PARAM_VALUE.NPLC } {
	# Procedure called to validate NPLC
	return true
}

proc update_PARAM_VALUE.VREF { PARAM_VALUE.VREF } {
	# Procedure called to update VREF when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.VREF { PARAM_VALUE.VREF } {
	# Procedure called to validate VREF
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to update C_S00_AXI_BASEADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_BASEADDR { PARAM_VALUE.C_S00_AXI_BASEADDR } {
	# Procedure called to validate C_S00_AXI_BASEADDR
	return true
}

proc update_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to update C_S00_AXI_HIGHADDR when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.C_S00_AXI_HIGHADDR { PARAM_VALUE.C_S00_AXI_HIGHADDR } {
	# Procedure called to validate C_S00_AXI_HIGHADDR
	return true
}


proc update_MODELPARAM_VALUE.DATA_SIZE { MODELPARAM_VALUE.DATA_SIZE PARAM_VALUE.DATA_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.DATA_SIZE}] ${MODELPARAM_VALUE.DATA_SIZE}
}

proc update_MODELPARAM_VALUE.ADDR_SIZE { MODELPARAM_VALUE.ADDR_SIZE PARAM_VALUE.ADDR_SIZE } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.ADDR_SIZE}] ${MODELPARAM_VALUE.ADDR_SIZE}
}

proc update_MODELPARAM_VALUE.NPLC { MODELPARAM_VALUE.NPLC PARAM_VALUE.NPLC } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.NPLC}] ${MODELPARAM_VALUE.NPLC}
}

proc update_MODELPARAM_VALUE.VREF { MODELPARAM_VALUE.VREF PARAM_VALUE.VREF } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.VREF}] ${MODELPARAM_VALUE.VREF}
}

