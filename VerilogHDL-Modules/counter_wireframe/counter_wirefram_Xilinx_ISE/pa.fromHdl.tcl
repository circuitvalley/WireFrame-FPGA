
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name counter_wireframe -dir "C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/Counter/counter_wireframe/counter_wireframe/planAhead_run_1" -part xc3s250evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "counter.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../counter.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top counter $srcset
add_files [list {counter.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250evq100-4
