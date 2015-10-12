
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name freq_meter -dir "C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/frequency_meter/freq_meter/planAhead_run_1" -part xc3s250evq100-4
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/frequency_meter/freq_meter/freq_meter.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {C:/Users/Gaurav/Documents/FPGA/Xilinx ISE/frequency_meter/freq_meter} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "freq_meter.ucf" [current_fileset -constrset]
add_files [list {freq_meter.ucf}] -fileset [get_property constrset [current_run]]
link_design
