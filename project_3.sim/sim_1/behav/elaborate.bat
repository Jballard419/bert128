@echo off
set xv_path=C:\\Xilinx\\Vivado\\2017.2\\bin
call %xv_path%/xelab  -wto 5425bfb36e674583bb390de17388c34e -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip -L xpm --snapshot tb_address_counter_behav xil_defaultlib.tb_address_counter -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
