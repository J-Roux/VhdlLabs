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
ExecStep $xv_path/bin/xsim TestModule_SyncCount_behav -key {Behavioral:sim_2:Functional:TestModule_SyncCount} -tclbatch TestModule_SyncCount.tcl -log simulate.log
