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
ExecStep $xv_path/bin/xsim TestbenchSyncCountUD_time_synth -key {Post-Synthesis:sim_2:Timing:TestbenchSyncCountUD} -tclbatch TestbenchSyncCountUD.tcl -view /home/stargrif/VhdlLabs/Lab2/TestbenchSyncCountUD_behav.wcfg -log simulate.log
