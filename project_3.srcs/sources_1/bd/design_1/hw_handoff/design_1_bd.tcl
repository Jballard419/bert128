
################################################################
# This is a generated script based on design: design_1
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# address_counter, clock_change, clock_change, Buffer_help, b10_to_2b, os48_1011x20bTo10b_top2, oversample_8x, CDR_state_machine, FIFO_enabler, Head_state, address_counter_16, fifo_filled_lock, serial_pipeline_delay, error_valid, serial_pipeline_delay, serial_pipeline_delay, serial_pipeline_delay

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7vx485tffg1761-2
   set_property BOARD_PART xilinx.com:vc707:part0:1.3 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name design_1

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: microblaze_0_local_memory
proc create_hier_cell_microblaze_0_local_memory { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_microblaze_0_local_memory() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 DLMB
  create_bd_intf_pin -mode MirroredMaster -vlnv xilinx.com:interface:lmb_rtl:1.0 ILMB

  # Create pins
  create_bd_pin -dir I -type clk LMB_Clk
  create_bd_pin -dir I -type rst SYS_Rst

  # Create instance: dlmb_bram_if_cntlr, and set properties
  set dlmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 dlmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $dlmb_bram_if_cntlr

  # Create instance: dlmb_v10, and set properties
  set dlmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 dlmb_v10 ]

  # Create instance: ilmb_bram_if_cntlr, and set properties
  set ilmb_bram_if_cntlr [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_bram_if_cntlr:4.0 ilmb_bram_if_cntlr ]
  set_property -dict [ list \
   CONFIG.C_ECC {0} \
 ] $ilmb_bram_if_cntlr

  # Create instance: ilmb_v10, and set properties
  set ilmb_v10 [ create_bd_cell -type ip -vlnv xilinx.com:ip:lmb_v10:3.0 ilmb_v10 ]

  # Create instance: lmb_bram, and set properties
  set lmb_bram [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 lmb_bram ]
  set_property -dict [ list \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Use_RSTB_Pin {true} \
   CONFIG.use_bram_block {BRAM_Controller} \
 ] $lmb_bram

  # Create interface connections
  connect_bd_intf_net -intf_net microblaze_0_dlmb [get_bd_intf_pins DLMB] [get_bd_intf_pins dlmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_bus [get_bd_intf_pins dlmb_bram_if_cntlr/SLMB] [get_bd_intf_pins dlmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_cntlr [get_bd_intf_pins dlmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTA]
  connect_bd_intf_net -intf_net microblaze_0_ilmb [get_bd_intf_pins ILMB] [get_bd_intf_pins ilmb_v10/LMB_M]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_bus [get_bd_intf_pins ilmb_bram_if_cntlr/SLMB] [get_bd_intf_pins ilmb_v10/LMB_Sl_0]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_cntlr [get_bd_intf_pins ilmb_bram_if_cntlr/BRAM_PORT] [get_bd_intf_pins lmb_bram/BRAM_PORTB]

  # Create port connections
  connect_bd_net -net SYS_Rst_1 [get_bd_pins SYS_Rst] [get_bd_pins dlmb_bram_if_cntlr/LMB_Rst] [get_bd_pins dlmb_v10/SYS_Rst] [get_bd_pins ilmb_bram_if_cntlr/LMB_Rst] [get_bd_pins ilmb_v10/SYS_Rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins LMB_Clk] [get_bd_pins dlmb_bram_if_cntlr/LMB_Clk] [get_bd_pins dlmb_v10/LMB_Clk] [get_bd_pins ilmb_bram_if_cntlr/LMB_Clk] [get_bd_pins ilmb_v10/LMB_Clk]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: error_count
proc create_hier_cell_error_count { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_error_count() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir I -from 0 -to 0 Op1
  create_bd_pin -dir I -from 0 -to 0 Op2
  create_bd_pin -dir O Res
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I delayin
  create_bd_pin -dir I delayin1
  create_bd_pin -dir O delayout

  # Create instance: error_valid_0, and set properties
  set block_name error_valid
  set block_cell_name error_valid_0
  if { [catch {set error_valid_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $error_valid_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: serial_pipeline_delay_1, and set properties
  set block_name serial_pipeline_delay
  set block_cell_name serial_pipeline_delay_1
  if { [catch {set serial_pipeline_delay_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_pipeline_delay_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.stages {0} \
 ] $serial_pipeline_delay_1

  # Create instance: serial_pipeline_delay_2, and set properties
  set block_name serial_pipeline_delay
  set block_cell_name serial_pipeline_delay_2
  if { [catch {set serial_pipeline_delay_2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_pipeline_delay_2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.stages {1} \
 ] $serial_pipeline_delay_2

  # Create instance: serial_pipeline_delay_3, and set properties
  set block_name serial_pipeline_delay
  set block_cell_name serial_pipeline_delay_3
  if { [catch {set serial_pipeline_delay_3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_pipeline_delay_3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {xor} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_xorgate.png} \
 ] $util_vector_logic_1

  # Create port connections
  connect_bd_net -net Net [get_bd_pins delayin] [get_bd_pins serial_pipeline_delay_1/delayin] [get_bd_pins serial_pipeline_delay_3/delayin]
  connect_bd_net -net Net1 [get_bd_pins delayin1] [get_bd_pins serial_pipeline_delay_2/delayin]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins Op2] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins serial_pipeline_delay_1/clk] [get_bd_pins serial_pipeline_delay_2/clk] [get_bd_pins serial_pipeline_delay_3/clk]
  connect_bd_net -net error_valid_0_valid_error [get_bd_pins Res] [get_bd_pins error_valid_0/valid_error]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins Op1] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net serial_pipeline_delay_1_delayout [get_bd_pins delayout] [get_bd_pins serial_pipeline_delay_1/delayout]
  connect_bd_net -net serial_pipeline_delay_2_delayout [get_bd_pins error_valid_0/tc] [get_bd_pins serial_pipeline_delay_2/delayout]
  connect_bd_net -net serial_pipeline_delay_3_delayout [get_bd_pins error_valid_0/test] [get_bd_pins serial_pipeline_delay_3/delayout]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins error_valid_0/error] [get_bd_pins util_vector_logic_1/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_1
proc create_hier_cell_hier_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_hier_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART

  # Create pins
  create_bd_pin -dir I -type clk Clk
  create_bd_pin -dir I dcm_locked
  create_bd_pin -dir I -type rst ext_reset_in
  create_bd_pin -dir O -from 9 -to 0 gpio2_io_o
  create_bd_pin -dir I -from 31 -to 0 gpio_io_i
  create_bd_pin -dir I -from 1 -to 0 -type intr intr
  create_bd_pin -dir O -from 0 -to 0 -type rst peripheral_aresetn

  # Create instance: axi_gpio_0, and set properties
  set axi_gpio_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 axi_gpio_0 ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {10} \
   CONFIG.C_GPIO_WIDTH {32} \
   CONFIG.C_IS_DUAL {1} \
   CONFIG.GPIO2_BOARD_INTERFACE {Custom} \
   CONFIG.GPIO_BOARD_INTERFACE {Custom} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_gpio_0

  # Create instance: axi_timer_0, and set properties
  set axi_timer_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_timer:2.0 axi_timer_0 ]

  # Create instance: axi_uartlite_0, and set properties
  set axi_uartlite_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 axi_uartlite_0 ]
  set_property -dict [ list \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {200000000} \
   CONFIG.UARTLITE_BOARD_INTERFACE {rs232_uart} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $axi_uartlite_0

  # Create instance: mdm_1, and set properties
  set mdm_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:mdm:3.2 mdm_1 ]

  # Create instance: microblaze_0, and set properties
  set microblaze_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:microblaze:10.0 microblaze_0 ]
  set_property -dict [ list \
   CONFIG.C_DEBUG_ENABLED {1} \
   CONFIG.C_D_AXI {1} \
   CONFIG.C_D_LMB {1} \
   CONFIG.C_I_LMB {1} \
 ] $microblaze_0

  # Create instance: microblaze_0_axi_intc, and set properties
  set microblaze_0_axi_intc [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 microblaze_0_axi_intc ]
  set_property -dict [ list \
   CONFIG.C_HAS_FAST {1} \
 ] $microblaze_0_axi_intc

  # Create instance: microblaze_0_axi_periph, and set properties
  set microblaze_0_axi_periph [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 microblaze_0_axi_periph ]
  set_property -dict [ list \
   CONFIG.NUM_MI {5} \
   CONFIG.NUM_SI {1} \
   CONFIG.SYNCHRONIZATION_STAGES {2} \
 ] $microblaze_0_axi_periph

  # Create instance: microblaze_0_local_memory
  create_hier_cell_microblaze_0_local_memory $hier_obj microblaze_0_local_memory

  # Create instance: rst_clk_wiz_1_100M, and set properties
  set rst_clk_wiz_1_100M [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 rst_clk_wiz_1_100M ]
  set_property -dict [ list \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
 ] $rst_clk_wiz_1_100M

  # Create interface connections
  connect_bd_intf_net -intf_net h_microblaze_M03_AXI [get_bd_intf_pins axi_gpio_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M03_AXI]
  connect_bd_intf_net -intf_net h_microblaze_UART [get_bd_intf_pins UART] [get_bd_intf_pins axi_uartlite_0/UART]
  connect_bd_intf_net -intf_net microblaze_0_axi_dp [get_bd_intf_pins microblaze_0/M_AXI_DP] [get_bd_intf_pins microblaze_0_axi_periph/S00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M01_AXI [get_bd_intf_pins axi_uartlite_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M01_AXI]
  connect_bd_intf_net -intf_net microblaze_0_axi_periph_M02_AXI [get_bd_intf_pins axi_timer_0/S_AXI] [get_bd_intf_pins microblaze_0_axi_periph/M02_AXI]
  connect_bd_intf_net -intf_net microblaze_0_debug [get_bd_intf_pins mdm_1/MBDEBUG_0] [get_bd_intf_pins microblaze_0/DEBUG]
  connect_bd_intf_net -intf_net microblaze_0_dlmb_1 [get_bd_intf_pins microblaze_0/DLMB] [get_bd_intf_pins microblaze_0_local_memory/DLMB]
  connect_bd_intf_net -intf_net microblaze_0_ilmb_1 [get_bd_intf_pins microblaze_0/ILMB] [get_bd_intf_pins microblaze_0_local_memory/ILMB]
  connect_bd_intf_net -intf_net microblaze_0_intc_axi [get_bd_intf_pins microblaze_0_axi_intc/s_axi] [get_bd_intf_pins microblaze_0_axi_periph/M00_AXI]
  connect_bd_intf_net -intf_net microblaze_0_interrupt [get_bd_intf_pins microblaze_0/INTERRUPT] [get_bd_intf_pins microblaze_0_axi_intc/interrupt]

  # Create port connections
  connect_bd_net -net ARESETN_1 [get_bd_pins microblaze_0_axi_periph/ARESETN] [get_bd_pins rst_clk_wiz_1_100M/interconnect_aresetn]
  connect_bd_net -net SYS_Rst_1 [get_bd_pins microblaze_0_local_memory/SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/bus_struct_reset]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins gpio2_io_o] [get_bd_pins axi_gpio_0/gpio2_io_o]
  connect_bd_net -net dcm_locked_1 [get_bd_pins dcm_locked] [get_bd_pins rst_clk_wiz_1_100M/dcm_locked]
  connect_bd_net -net ext_reset_in_1 [get_bd_pins ext_reset_in] [get_bd_pins rst_clk_wiz_1_100M/ext_reset_in]
  connect_bd_net -net h_bert_Q [get_bd_pins gpio_io_i] [get_bd_pins axi_gpio_0/gpio_io_i]
  connect_bd_net -net h_microblaze_peripheral_aresetn [get_bd_pins peripheral_aresetn] [get_bd_pins axi_gpio_0/s_axi_aresetn] [get_bd_pins axi_timer_0/s_axi_aresetn] [get_bd_pins axi_uartlite_0/s_axi_aresetn] [get_bd_pins microblaze_0_axi_intc/s_axi_aresetn] [get_bd_pins microblaze_0_axi_periph/M00_ARESETN] [get_bd_pins microblaze_0_axi_periph/M01_ARESETN] [get_bd_pins microblaze_0_axi_periph/M02_ARESETN] [get_bd_pins microblaze_0_axi_periph/M03_ARESETN] [get_bd_pins microblaze_0_axi_periph/M04_ARESETN] [get_bd_pins microblaze_0_axi_periph/S00_ARESETN] [get_bd_pins rst_clk_wiz_1_100M/peripheral_aresetn]
  connect_bd_net -net mdm_1_Debug_SYS_Rst [get_bd_pins mdm_1/Debug_SYS_Rst] [get_bd_pins rst_clk_wiz_1_100M/mb_debug_sys_rst]
  connect_bd_net -net microblaze_0_Clk [get_bd_pins Clk] [get_bd_pins axi_gpio_0/s_axi_aclk] [get_bd_pins axi_timer_0/s_axi_aclk] [get_bd_pins axi_uartlite_0/s_axi_aclk] [get_bd_pins microblaze_0/Clk] [get_bd_pins microblaze_0_axi_intc/processor_clk] [get_bd_pins microblaze_0_axi_intc/s_axi_aclk] [get_bd_pins microblaze_0_axi_periph/ACLK] [get_bd_pins microblaze_0_axi_periph/M00_ACLK] [get_bd_pins microblaze_0_axi_periph/M01_ACLK] [get_bd_pins microblaze_0_axi_periph/M02_ACLK] [get_bd_pins microblaze_0_axi_periph/M03_ACLK] [get_bd_pins microblaze_0_axi_periph/M04_ACLK] [get_bd_pins microblaze_0_axi_periph/S00_ACLK] [get_bd_pins microblaze_0_local_memory/LMB_Clk] [get_bd_pins rst_clk_wiz_1_100M/slowest_sync_clk]
  connect_bd_net -net microblaze_0_xlconcat_dout [get_bd_pins intr] [get_bd_pins microblaze_0_axi_intc/intr]
  connect_bd_net -net rst_clk_wiz_1_100M_mb_reset [get_bd_pins microblaze_0/Reset] [get_bd_pins microblaze_0_axi_intc/processor_rst] [get_bd_pins rst_clk_wiz_1_100M/mb_reset]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: hier_0
proc create_hier_cell_hier_0 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_hier_0() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 0 -to 0 Res
  create_bd_pin -dir O -from 13 -to 0 address
  create_bd_pin -dir I -type clk clk
  create_bd_pin -dir I -from 1 -to 0 d_in
  create_bd_pin -dir O -from 1 -to 0 d_out
  create_bd_pin -dir O -from 1 -to 0 d_out1
  create_bd_pin -dir O d_write
  create_bd_pin -dir I delayin
  create_bd_pin -dir O delayout
  create_bd_pin -dir O -from 1 -to 0 delayout1
  create_bd_pin -dir O -from 0 -to 0 dout_fifo
  create_bd_pin -dir O -from 0 -to 0 dout_mem
  create_bd_pin -dir I -from 1 -to 0 dv
  create_bd_pin -dir O empty
  create_bd_pin -dir O go
  create_bd_pin -dir O -from 0 -to 0 tc
  create_bd_pin -dir O test
  create_bd_pin -dir O -from 15 -to 0 wr_data_count
  create_bd_pin -dir O wr_en

  # Create instance: CDR_state_machine_0, and set properties
  set block_name CDR_state_machine
  set block_cell_name CDR_state_machine_0
  if { [catch {set CDR_state_machine_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CDR_state_machine_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: FIFO_enabler_0, and set properties
  set block_name FIFO_enabler
  set block_cell_name FIFO_enabler_0
  if { [catch {set FIFO_enabler_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $FIFO_enabler_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: Head_state_0, and set properties
  set block_name Head_state
  set block_cell_name Head_state_0
  if { [catch {set Head_state_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Head_state_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: address_counter_16_0, and set properties
  set block_name address_counter_16
  set block_cell_name address_counter_16_0
  if { [catch {set address_counter_16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $address_counter_16_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.terminalcount {14400} \
 ] $address_counter_16_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../5b_bitstream_copy.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {14400} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: error_count
  create_hier_cell_error_count $hier_obj error_count

  # Create instance: fifo_filled_lock_0, and set properties
  set block_name fifo_filled_lock
  set block_cell_name fifo_filled_lock_0
  if { [catch {set fifo_filled_lock_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $fifo_filled_lock_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.2 fifo_generator_1 ]
  set_property -dict [ list \
   CONFIG.Data_Count_Width {15} \
   CONFIG.Full_Threshold_Assert_Value {32765} \
   CONFIG.Full_Threshold_Negate_Value {32764} \
   CONFIG.Input_Data_Width {2} \
   CONFIG.Input_Depth {32768} \
   CONFIG.Output_Data_Width {1} \
   CONFIG.Output_Depth {65536} \
   CONFIG.Read_Data_Count_Width {17} \
   CONFIG.Use_Extra_Logic {true} \
   CONFIG.Write_Data_Count {true} \
   CONFIG.Write_Data_Count_Width {16} \
 ] $fifo_generator_1

  # Create instance: serial_pipeline_delay_0, and set properties
  set block_name serial_pipeline_delay
  set block_cell_name serial_pipeline_delay_0
  if { [catch {set serial_pipeline_delay_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $serial_pipeline_delay_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.stages {20} \
 ] $serial_pipeline_delay_0

  # Create instance: util_vector_logic_0, and set properties
  set util_vector_logic_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_0 ]
  set_property -dict [ list \
   CONFIG.C_SIZE {1} \
 ] $util_vector_logic_0
  set_property USER_COMMENTS.comment_0 "Enter Comments here" [get_bd_pins /hier_0/util_vector_logic_0/Op1]

  # Create instance: util_vector_logic_1, and set properties
  set util_vector_logic_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_1 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {or} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_orgate.png} \
 ] $util_vector_logic_1

  # Create instance: util_vector_logic_2, and set properties
  set util_vector_logic_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 util_vector_logic_2 ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $util_vector_logic_2

  # Create port connections
  connect_bd_net -net CDR_state_machine_0_d_out [get_bd_pins d_out] [get_bd_pins delayout1] [get_bd_pins CDR_state_machine_0/d_out] [get_bd_pins Head_state_0/d_in]
  connect_bd_net -net CDR_state_machine_0_d_write [get_bd_pins d_write] [get_bd_pins CDR_state_machine_0/d_write] [get_bd_pins Head_state_0/en]
  connect_bd_net -net FIFO_enabler_0_wr_en [get_bd_pins wr_en] [get_bd_pins FIFO_enabler_0/wr_en] [get_bd_pins fifo_generator_1/wr_en]
  connect_bd_net -net Head_state_0_Failed [get_bd_pins Head_state_0/Failed] [get_bd_pins util_vector_logic_1/Op1]
  connect_bd_net -net Head_state_0_d_out [get_bd_pins d_out1] [get_bd_pins Head_state_0/d_out] [get_bd_pins fifo_generator_1/din]
  connect_bd_net -net Head_state_0_go [get_bd_pins go] [get_bd_pins FIFO_enabler_0/d_write] [get_bd_pins Head_state_0/go]
  connect_bd_net -net Net [get_bd_pins test] [get_bd_pins FIFO_enabler_0/isreading] [get_bd_pins address_counter_16_0/en] [get_bd_pins error_count/delayin] [get_bd_pins fifo_filled_lock_0/test]
  connect_bd_net -net Net1 [get_bd_pins FIFO_enabler_0/tc] [get_bd_pins address_counter_16_0/tc] [get_bd_pins error_count/delayin1] [get_bd_pins fifo_filled_lock_0/rst] [get_bd_pins util_vector_logic_1/Op2]
  connect_bd_net -net address_counter_16_0_address [get_bd_pins address] [get_bd_pins address_counter_16_0/address] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins dout_mem] [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins error_count/Op2]
  connect_bd_net -net clk_1 [get_bd_pins clk] [get_bd_pins CDR_state_machine_0/clk] [get_bd_pins Head_state_0/clk] [get_bd_pins address_counter_16_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins error_count/clk] [get_bd_pins fifo_filled_lock_0/clk] [get_bd_pins fifo_generator_1/clk] [get_bd_pins serial_pipeline_delay_0/clk]
  connect_bd_net -net d_in_1 [get_bd_pins d_in] [get_bd_pins CDR_state_machine_0/d_in]
  connect_bd_net -net delayin_1 [get_bd_pins delayin] [get_bd_pins Head_state_0/rst] [get_bd_pins fifo_generator_1/srst] [get_bd_pins serial_pipeline_delay_0/delayin]
  connect_bd_net -net dv_1 [get_bd_pins dv] [get_bd_pins CDR_state_machine_0/dv]
  connect_bd_net -net error_count_Res [get_bd_pins Res] [get_bd_pins error_count/Res]
  connect_bd_net -net error_count_delayout [get_bd_pins error_count/delayout] [get_bd_pins util_vector_logic_0/Op2]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins dout_fifo] [get_bd_pins error_count/Op1] [get_bd_pins fifo_generator_1/dout]
  connect_bd_net -net fifo_generator_0_empty [get_bd_pins empty] [get_bd_pins fifo_generator_1/empty] [get_bd_pins util_vector_logic_2/Op1]
  connect_bd_net -net fifo_generator_0_wr_data_count [get_bd_pins wr_data_count] [get_bd_pins fifo_filled_lock_0/data_in] [get_bd_pins fifo_generator_1/wr_data_count]
  connect_bd_net -net serial_pipeline_delay_0_delayout [get_bd_pins delayout] [get_bd_pins CDR_state_machine_0/rst] [get_bd_pins FIFO_enabler_0/gpio] [get_bd_pins address_counter_16_0/rst] [get_bd_pins serial_pipeline_delay_0/delayout]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins fifo_generator_1/rd_en] [get_bd_pins util_vector_logic_0/Res]
  connect_bd_net -net util_vector_logic_1_Res [get_bd_pins tc] [get_bd_pins util_vector_logic_1/Res]
  connect_bd_net -net util_vector_logic_2_Res [get_bd_pins util_vector_logic_0/Op1] [get_bd_pins util_vector_logic_2/Res]

  # Restore current instance
  current_bd_instance $oldCurInst
}

# Hierarchical cell: New_cdr
proc create_hier_cell_New_cdr { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_msg_id "BD_TCL-102" "ERROR" "create_hier_cell_New_cdr() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins

  # Create pins
  create_bd_pin -dir O -from 9 -to 0 A_dout10b
  create_bd_pin -dir I clk0
  create_bd_pin -dir I clk90
  create_bd_pin -dir I in_n
  create_bd_pin -dir I in_p
  create_bd_pin -dir O -from 1 -to 0 out_2
  create_bd_pin -dir O -from 1 -to 0 out_ready
  create_bd_pin -dir I -type clk ref_clk
  create_bd_pin -dir I -type rst rst
  create_bd_pin -dir I -type rst rst1

  # Create instance: Buffer_help_0, and set properties
  set block_name Buffer_help
  set block_cell_name Buffer_help_0
  if { [catch {set Buffer_help_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Buffer_help_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: b10_to_2b_0, and set properties
  set block_name b10_to_2b
  set block_cell_name b10_to_2b_0
  if { [catch {set b10_to_2b_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $b10_to_2b_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: os48_1011x20bTo10b_top2_0, and set properties
  set block_name os48_1011x20bTo10b_top2
  set block_cell_name os48_1011x20bTo10b_top2_0
  if { [catch {set os48_1011x20bTo10b_top2_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $os48_1011x20bTo10b_top2_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: oversample_8x_0, and set properties
  set block_name oversample_8x
  set block_cell_name oversample_8x_0
  if { [catch {set oversample_8x_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $oversample_8x_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {01} \
   CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_1

  # Create port connections
  connect_bd_net -net Buffer_help_0_sdat_0_dly [get_bd_pins Buffer_help_0/sdat_0_dly] [get_bd_pins oversample_8x_0/sdat_0_dly]
  connect_bd_net -net Buffer_help_0_sdatb_45_dly [get_bd_pins Buffer_help_0/sdatb_45_dly] [get_bd_pins oversample_8x_0/sdatb_45_dly]
  connect_bd_net -net b10_to_2b_0_out_2 [get_bd_pins out_2] [get_bd_pins b10_to_2b_0/out_2]
  connect_bd_net -net b10_to_2b_0_out_ready [get_bd_pins out_ready] [get_bd_pins b10_to_2b_0/out_ready]
  connect_bd_net -net clk_wiz_1_clk [get_bd_pins clk0] [get_bd_pins Buffer_help_0/clk0] [get_bd_pins b10_to_2b_0/clk] [get_bd_pins os48_1011x20bTo10b_top2_0/A_recclk] [get_bd_pins os48_1011x20bTo10b_top2_0/B_recclk] [get_bd_pins oversample_8x_0/clk0]
  connect_bd_net -net clk_wiz_1_clk90 [get_bd_pins clk90] [get_bd_pins oversample_8x_0/clk90]
  connect_bd_net -net in_n_1 [get_bd_pins in_n] [get_bd_pins Buffer_help_0/PAD_din_n]
  connect_bd_net -net in_p_1 [get_bd_pins in_p] [get_bd_pins Buffer_help_0/PAD_din_p]
  connect_bd_net -net os48_1011x20bTo10b_top2_0_A_dout10b [get_bd_pins A_dout10b] [get_bd_pins b10_to_2b_0/input_10] [get_bd_pins os48_1011x20bTo10b_top2_0/A_dout10b]
  connect_bd_net -net os48_1011x20bTo10b_top2_0_A_dout10bEn [get_bd_pins b10_to_2b_0/new_set] [get_bd_pins os48_1011x20bTo10b_top2_0/A_dout10bEn]
  connect_bd_net -net oversample_8x_0_dout [get_bd_pins os48_1011x20bTo10b_top2_0/A_din20b] [get_bd_pins os48_1011x20bTo10b_top2_0/B_din20b] [get_bd_pins oversample_8x_0/dout]
  connect_bd_net -net oversample_8x_0_dout_rdy [get_bd_pins os48_1011x20bTo10b_top2_0/A_en] [get_bd_pins os48_1011x20bTo10b_top2_0/B_en] [get_bd_pins oversample_8x_0/dout_rdy]
  connect_bd_net -net ref_clk_1 [get_bd_pins ref_clk] [get_bd_pins Buffer_help_0/ref_clk]
  connect_bd_net -net rst1_1 [get_bd_pins rst1] [get_bd_pins os48_1011x20bTo10b_top2_0/rst]
  connect_bd_net -net rst_1 [get_bd_pins rst] [get_bd_pins oversample_8x_0/rst]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins os48_1011x20bTo10b_top2_0/bitOrderDinLSB] [get_bd_pins os48_1011x20bTo10b_top2_0/bitOrderDoutLSB] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins os48_1011x20bTo10b_top2_0/B_mode] [get_bd_pins xlconstant_1/dout]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set rs232_uart [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 rs232_uart ]
  set sys_diff_clock [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 sys_diff_clock ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $sys_diff_clock

  # Create ports
  set clk_out [ create_bd_port -dir O -type clk clk_out ]
  set in_n [ create_bd_port -dir I in_n ]
  set in_p [ create_bd_port -dir I in_p ]
  set out_n [ create_bd_port -dir O -from 0 -to 0 out_n ]
  set out_p [ create_bd_port -dir O -from 0 -to 0 out_p ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $reset

  # Create instance: New_cdr
  create_hier_cell_New_cdr [current_bd_instance .] New_cdr

  # Create instance: address_counter_1, and set properties
  set block_name address_counter
  set block_cell_name address_counter_1
  if { [catch {set address_counter_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $address_counter_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.terminalcount {14399} \
 ] $address_counter_1

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {../../../../../../5b_bitstream_copy.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_A {Always_Enabled} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {Single_Port_ROM} \
   CONFIG.Port_A_Write_Rate {0} \
   CONFIG.Read_Width_A {1} \
   CONFIG.Read_Width_B {1} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Write_Depth_A {14400} \
   CONFIG.Write_Width_A {1} \
   CONFIG.Write_Width_B {1} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: c_accum_0, and set properties
  set c_accum_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:c_accum:12.0 c_accum_0 ]
  set_property -dict [ list \
   CONFIG.Bypass {false} \
   CONFIG.Implementation {DSP48} \
   CONFIG.Input_Type {Unsigned} \
   CONFIG.Input_Width {1} \
   CONFIG.Latency {2} \
   CONFIG.Latency_Configuration {Automatic} \
   CONFIG.Output_Width {32} \
   CONFIG.SCLR {true} \
 ] $c_accum_0

  # Create instance: clk_wiz_1, and set properties
  set clk_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_1 ]
  set_property -dict [ list \
   CONFIG.AXI_DRP {false} \
   CONFIG.CLKIN1_JITTER_PS {50.0} \
   CONFIG.CLKOUT1_JITTER {119.805} \
   CONFIG.CLKOUT1_PHASE_ERROR {97.786} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {80} \
   CONFIG.CLKOUT2_JITTER {87.396} \
   CONFIG.CLKOUT2_PHASE_ERROR {97.786} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {400} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {87.396} \
   CONFIG.CLKOUT3_PHASE_ERROR {97.786} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {400} \
   CONFIG.CLKOUT3_REQUESTED_PHASE {90} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {100.010} \
   CONFIG.CLKOUT4_PHASE_ERROR {97.786} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {200} \
   CONFIG.CLKOUT4_REQUESTED_PHASE {0} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_JITTER {87.396} \
   CONFIG.CLKOUT5_PHASE_ERROR {97.786} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT5_REQUESTED_PHASE {0.000} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_JITTER {87.396} \
   CONFIG.CLKOUT6_PHASE_ERROR {97.786} \
   CONFIG.CLKOUT6_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT6_USED {false} \
   CONFIG.CLK_IN1_BOARD_INTERFACE {sys_diff_clock} \
   CONFIG.CLK_OUT1_PORT {second_clk} \
   CONFIG.CLK_OUT2_PORT {clk} \
   CONFIG.CLK_OUT3_PORT {clk90} \
   CONFIG.CLK_OUT4_PORT {blaze} \
   CONFIG.CLK_OUT5_PORT {clk_out5} \
   CONFIG.CLK_OUT6_PORT {clk_out6} \
   CONFIG.ENABLE_CLOCK_MONITOR {false} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {4.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {2} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {2} \
   CONFIG.MMCM_CLKOUT2_PHASE {90.000} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {4} \
   CONFIG.MMCM_CLKOUT3_PHASE {0.000} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_PHASE {0.000} \
   CONFIG.MMCM_CLKOUT5_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.PHASE_DUTY_CONFIG {false} \
   CONFIG.PRIMITIVE {MMCM} \
   CONFIG.PRIM_IN_FREQ {200.000} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.RESET_BOARD_INTERFACE {reset} \
   CONFIG.USE_BOARD_FLOW {true} \
   CONFIG.USE_DYN_RECONFIG {false} \
 ] $clk_wiz_1

  # Create instance: clock_change_0, and set properties
  set block_name clock_change
  set block_cell_name clock_change_0
  if { [catch {set clock_change_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clock_change_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clock_change_1, and set properties
  set block_name clock_change
  set block_cell_name clock_change_1
  if { [catch {set clock_change_1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clock_change_1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: hier_0
  create_hier_cell_hier_0 [current_bd_instance .] hier_0

  # Create instance: hier_1
  create_hier_cell_hier_1 [current_bd_instance .] hier_1

  # Create instance: microblaze_0_xlconcat, and set properties
  set microblaze_0_xlconcat [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 microblaze_0_xlconcat ]

  # Create instance: util_ds_buf_1, and set properties
  set util_ds_buf_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_ds_buf:2.1 util_ds_buf_1 ]
  set_property -dict [ list \
   CONFIG.C_BUF_TYPE {OBUFDS} \
 ] $util_ds_buf_1

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {9} \
   CONFIG.DIN_TO {2} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {8} \
 ] $xlslice_0

  # Create instance: xlslice_bit0, and set properties
  set xlslice_bit0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_bit0 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {1} \
   CONFIG.DIN_TO {1} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_bit0

  # Create instance: xlslice_bit1, and set properties
  set xlslice_bit1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_bit1 ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {0} \
   CONFIG.DIN_TO {0} \
   CONFIG.DIN_WIDTH {10} \
   CONFIG.DOUT_WIDTH {1} \
 ] $xlslice_bit1

  # Create interface connections
  connect_bd_intf_net -intf_net h_microblaze_UART [get_bd_intf_ports rs232_uart] [get_bd_intf_pins hier_1/UART]
  connect_bd_intf_net -intf_net sys_diff_clock_1 [get_bd_intf_ports sys_diff_clock] [get_bd_intf_pins clk_wiz_1/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net address_counter_0_address [get_bd_pins address_counter_1/address] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net axi_gpio_0_gpio2_io_o [get_bd_pins hier_1/gpio2_io_o] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_bit0/Din] [get_bd_pins xlslice_bit1/Din]
  connect_bd_net -net clk_wiz_1_blaze [get_bd_pins clk_wiz_1/blaze] [get_bd_pins hier_1/Clk]
  connect_bd_net -net clk_wiz_1_clk [get_bd_pins New_cdr/clk0] [get_bd_pins New_cdr/ref_clk] [get_bd_pins address_counter_1/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins c_accum_0/CLK] [get_bd_pins clk_wiz_1/clk] [get_bd_pins clock_change_0/clk] [get_bd_pins clock_change_1/clk] [get_bd_pins hier_0/clk]
  connect_bd_net -net clk_wiz_1_clk90 [get_bd_pins New_cdr/clk90] [get_bd_pins clk_wiz_1/clk90]
  connect_bd_net -net clk_wiz_1_locked [get_bd_pins clk_wiz_1/locked] [get_bd_pins hier_1/dcm_locked]
  connect_bd_net -net d_in_1 [get_bd_pins New_cdr/out_ready] [get_bd_pins hier_0/dv]
  connect_bd_net -net dv_1 [get_bd_pins New_cdr/out_2] [get_bd_pins hier_0/d_in]
  connect_bd_net -net gpio_io_i_1 [get_bd_pins c_accum_0/Q] [get_bd_pins hier_1/gpio_io_i]
  connect_bd_net -net h_bert_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins util_ds_buf_1/OBUF_IN]
  connect_bd_net -net hier_0_Res [get_bd_pins c_accum_0/B] [get_bd_pins hier_0/Res]
  connect_bd_net -net hier_0_tc [get_bd_pins hier_0/tc] [get_bd_pins microblaze_0_xlconcat/In0]
  connect_bd_net -net in_n_1 [get_bd_ports in_n] [get_bd_pins New_cdr/in_n]
  connect_bd_net -net in_p_1 [get_bd_ports in_p] [get_bd_pins New_cdr/in_p]
  connect_bd_net -net microblaze_0_xlconcat_dout [get_bd_pins hier_1/intr] [get_bd_pins microblaze_0_xlconcat/dout]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins clk_wiz_1/reset] [get_bd_pins clock_change_0/rst] [get_bd_pins clock_change_1/rst] [get_bd_pins hier_1/ext_reset_in]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_N [get_bd_ports out_n] [get_bd_pins util_ds_buf_1/OBUF_DS_N]
  connect_bd_net -net util_ds_buf_1_OBUF_DS_P [get_bd_ports out_p] [get_bd_pins util_ds_buf_1/OBUF_DS_P]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins microblaze_0_xlconcat/In1] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlslice_bit0_Dout [get_bd_pins c_accum_0/SCLR] [get_bd_pins clock_change_1/o]
  connect_bd_net -net xlslice_bit0_Dout1 [get_bd_pins clock_change_1/i] [get_bd_pins xlslice_bit0/Dout]
  connect_bd_net -net xlslice_bit1_Dout [get_bd_pins New_cdr/rst] [get_bd_pins New_cdr/rst1] [get_bd_pins address_counter_1/rst] [get_bd_pins clock_change_0/o] [get_bd_pins hier_0/delayin]
  connect_bd_net -net xlslice_bit1_Dout1 [get_bd_pins clock_change_0/i] [get_bd_pins xlslice_bit1/Dout]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0x40000000 [get_bd_addr_spaces hier_1/microblaze_0/Data] [get_bd_addr_segs hier_1/axi_gpio_0/S_AXI/Reg] SEG_axi_gpio_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x41C00000 [get_bd_addr_spaces hier_1/microblaze_0/Data] [get_bd_addr_segs hier_1/axi_timer_0/S_AXI/Reg] SEG_axi_timer_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x40600000 [get_bd_addr_spaces hier_1/microblaze_0/Data] [get_bd_addr_segs hier_1/axi_uartlite_0/S_AXI/Reg] SEG_axi_uartlite_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces hier_1/microblaze_0/Data] [get_bd_addr_segs hier_1/microblaze_0_local_memory/dlmb_bram_if_cntlr/SLMB/Mem] SEG_dlmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x00000000 [get_bd_addr_spaces hier_1/microblaze_0/Instruction] [get_bd_addr_segs hier_1/microblaze_0_local_memory/ilmb_bram_if_cntlr/SLMB/Mem] SEG_ilmb_bram_if_cntlr_Mem
  create_bd_addr_seg -range 0x00010000 -offset 0x41200000 [get_bd_addr_spaces hier_1/microblaze_0/Data] [get_bd_addr_segs hier_1/microblaze_0_axi_intc/S_AXI/Reg] SEG_microblaze_0_axi_intc_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


