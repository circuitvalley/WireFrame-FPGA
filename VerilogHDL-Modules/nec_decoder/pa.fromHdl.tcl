
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name nec_decoder -dir "C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/NECIR_Decoder/nec_decoder/planAhead_run_1" -part xc3s250evq100-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "nec_decoder.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {timer.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {nec_decoder.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top nec_decoder $srcset
add_files [list {nec_decoder.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s250evq100-4
