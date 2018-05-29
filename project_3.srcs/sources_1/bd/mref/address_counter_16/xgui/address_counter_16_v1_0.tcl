# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "repeat" -parent ${Page_0}
  ipgui::add_param $IPINST -name "terminalcount" -parent ${Page_0}


}

proc update_PARAM_VALUE.repeat { PARAM_VALUE.repeat } {
	# Procedure called to update repeat when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.repeat { PARAM_VALUE.repeat } {
	# Procedure called to validate repeat
	return true
}

proc update_PARAM_VALUE.terminalcount { PARAM_VALUE.terminalcount } {
	# Procedure called to update terminalcount when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.terminalcount { PARAM_VALUE.terminalcount } {
	# Procedure called to validate terminalcount
	return true
}


proc update_MODELPARAM_VALUE.repeat { MODELPARAM_VALUE.repeat PARAM_VALUE.repeat } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.repeat}] ${MODELPARAM_VALUE.repeat}
}

proc update_MODELPARAM_VALUE.terminalcount { MODELPARAM_VALUE.terminalcount PARAM_VALUE.terminalcount } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.terminalcount}] ${MODELPARAM_VALUE.terminalcount}
}

