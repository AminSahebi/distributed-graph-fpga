#!/bin/bash
prj_file=""
if [ -e "../_x_PR_4_PE/link/vivado/prj/prj.xpr" ]
then
prj_file=" ../_x_PR_4_PE/link/vivado/prj/prj.xpr"
fi

if [ -e "../_x_PR_4_PE/link/vivado/vpl/prj/prj.xpr" ]
then
prj_file=" ../_x_PR_4_PE/link/vivado/vpl/prj/prj.xpr"
fi



if [ -z ${prj_file} ]; then
    echo "no prj file"
else
	vivado -mode batch -source ./report_usage.tcl -tclargs ${prj_file}
fi
