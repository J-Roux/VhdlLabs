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
ExecStep $xv_path/bin/xsim TestbenchSyncCountUD_behav -key {Behavioral:sim_2:Functional:TestbenchSyncCountUD} -tclbatch TestbenchSyncCountUD.tcl -view /home/stargrif/VhdlLabs/Lab2/TestbenchSyncCountUD_behav.wcfg -log simulate.log
