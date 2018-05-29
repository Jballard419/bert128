# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "IDELAY_45_DEGREES" -parent ${Page_0}


}

proc update_PARAM_VALUE.IDELAY_45_DEGREES { PARAM_VALUE.IDELAY_45_DEGREES } {
	# Procedure called to update IDELAY_45_DEGREES when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.IDELAY_45_DEGREES { PARAM_VALUE.IDELAY_45_DEGREES } {
	# Procedure called to validate IDELAY_45_DEGREES
	return true
}


proc update_MODELPARAM_VALUE.IDELAY_45_DEGREES { MODELPARAM_VALUE.IDELAY_45_DEGREES PARAM_VALUE.IDELAY_45_DEGREES } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.IDELAY_45_DEGREES}] ${MODELPARAM_VALUE.IDELAY_45_DEGREES}
}

