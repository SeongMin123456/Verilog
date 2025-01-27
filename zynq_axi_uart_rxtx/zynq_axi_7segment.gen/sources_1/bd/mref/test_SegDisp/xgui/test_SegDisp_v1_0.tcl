# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "TICK_FREQ" -parent ${Page_0}


}

proc update_PARAM_VALUE.TICK_FREQ { PARAM_VALUE.TICK_FREQ } {
	# Procedure called to update TICK_FREQ when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.TICK_FREQ { PARAM_VALUE.TICK_FREQ } {
	# Procedure called to validate TICK_FREQ
	return true
}


proc update_MODELPARAM_VALUE.TICK_FREQ { MODELPARAM_VALUE.TICK_FREQ PARAM_VALUE.TICK_FREQ } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.TICK_FREQ}] ${MODELPARAM_VALUE.TICK_FREQ}
}

