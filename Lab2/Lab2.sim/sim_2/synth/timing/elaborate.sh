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
ExecStep $xv_path/bin/xelab -wto 9d34628816bb43bd95260c848617652f -m64 --debug typical --relax --mt 8 --maxdelay -L xil_defaultlib -L simprims_ver -L secureip --snapshot TestbenchSyncCountUD_time_synth -transport_int_delays -pulse_r 0 -pulse_int_r 0 xil_defaultlib.TestbenchSyncCountUD xil_defaultlib.glbl -log elaborate.log
