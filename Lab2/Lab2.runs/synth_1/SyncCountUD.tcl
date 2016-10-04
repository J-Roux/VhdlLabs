# 
# Synthesis run script generated by Vivado
# 

debug::add_scope template.lib 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a200tfbg676-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir /home/stargrif/VhdlLabs/Lab2/Lab2.cache/wt [current_project]
set_property parent.project_path /home/stargrif/VhdlLabs/Lab2/Lab2.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property board_part xilinx.com:ac701:part0:1.2 [current_project]
read_vhdl -library xil_defaultlib {
  /home/stargrif/VhdlLabs/Lab2/Lab2.srcs/sources_1/new/D_trigger.vhd
  /home/stargrif/VhdlLabs/Lab2/Lab2.srcs/sources_1/new/SyncCountUD.vhd
}
synth_design -top SyncCountUD -part xc7a200tfbg676-2
write_checkpoint -noxdef SyncCountUD.dcp
catch { report_utilization -file SyncCountUD_utilization_synth.rpt -pb SyncCountUD_utilization_synth.pb }
