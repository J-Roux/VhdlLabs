#!/bin/sh -f
xv_path="/home/pavel/apps/Vivado/Vivado/2015.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xsim TestModule_2_behav -key {Behavioral:sim_3:Functional:TestModule_2} -tclbatch TestModule_2.tcl -log simulate.log
