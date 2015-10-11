
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name nec_decoder -dir "C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/NECIR_Decoder/nec_decoder/planAhead_run_1" -part xc3s250evq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/NECIR_Decoder/nec_decoder/nec_decoder.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/NECIR_Decoder/nec_decoder} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "nec_decoder.ucf" [current_fileset -constrset]
add_files [list {nec_decoder.ucf}] -fileset [get_property constrset [current_run]]
link_design
