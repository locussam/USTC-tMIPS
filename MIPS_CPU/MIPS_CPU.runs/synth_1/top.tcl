# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a35tcpg236-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.cache/wt [current_project]
set_property parent.project_path D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files D:/project/MIPS/USTC-tMIPS/MIPS_CPU/rom_init.coe
add_files -quiet D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.runs/rom_synth_1/rom.dcp
set_property used_in_implementation false [get_files D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.runs/rom_synth_1/rom.dcp]
add_files -quiet D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.runs/ram_synth_1/ram.dcp
set_property used_in_implementation false [get_files D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.runs/ram_synth_1/ram.dcp]
read_verilog D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/param.v
set_property file_type "Verilog Header" [get_files D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/param.v]
read_verilog -library xil_defaultlib {
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/alu.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/register.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/branch_de.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/hazard_unit.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/control_unit.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/processor.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/data_mem.v
  D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/sources_1/top.v
}
read_xdc D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/constrs_1/imports/MIPS_CPU/Basys3_Master.xdc
set_property used_in_implementation false [get_files D:/project/MIPS/USTC-tMIPS/MIPS_CPU/MIPS_CPU.srcs/constrs_1/imports/MIPS_CPU/Basys3_Master.xdc]

synth_design -top top -part xc7a35tcpg236-1
write_checkpoint -noxdef top.dcp
catch { report_utilization -file top_utilization_synth.rpt -pb top_utilization_synth.pb }
