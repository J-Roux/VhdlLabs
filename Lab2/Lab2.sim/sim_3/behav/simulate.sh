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
ExecStep $xv_path/bin/xsim D_trigger_benchmark_behav -key {Behavioral:sim_3:Functional:D_trigger_benchmark} -tclbatch D_trigger_benchmark.tcl -log simulate.log
