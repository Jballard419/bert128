@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xsim tb_address_counter_behav -key {Behavioral:sim_1:Functional:tb_address_counter} -tclbatch tb_address_counter.tcl -view C:/SharedProjects/BERT/project_3/tb_address_counter_behav.wcfg -log simulate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
