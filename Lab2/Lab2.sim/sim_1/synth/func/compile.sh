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
echo "xvhdl -m64 --relax -prj D_trigger_benchmark_vhdl.prj"
ExecStep $xv_path/bin/xvhdl -m64 --relax -prj D_trigger_benchmark_vhdl.prj 2>&1 | tee -a compile.log