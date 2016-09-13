@echo off
set xv_path=C:\\Xilinx\\Vivado\\2015.2\\bin
call %xv_path%/xelab  -wto b51dd95e9e0f4eab9c3223577598be1b -m64 --debug typical --relax --mt 2 -L xil_defaultlib -L secureip --snapshot TestBench_behav xil_defaultlib.TestBench -log elaborate.log
if "%errorlevel%"=="0" goto SUCCESS
if "%errorlevel%"=="1" goto END
:END
exit 1
:SUCCESS
exit 0
