#!/bin/sh -f
xv_path="/opt/Xilinx/Vivado/2015.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto 65b02e9626a34ddab9c7c76d2fca3ac0 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot TestModule_SN74_behav xil_defaultlib.TestModule_SN74 -log elaborate.log
