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
ExecStep $xv_path/bin/xelab -wto 9d34628816bb43bd95260c848617652f -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot TestModule_behav xil_defaultlib.TestModule -log elaborate.log
