
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Keyboard_interface -dir "C:/Users/psf/Desktop/Sem 7/Digital System Design/Lab/haswal-labs/Keyboard_interface/planAhead_run_2" -part xc3s500efg320-4
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "main_module.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {serial_data_in.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Scancode_to_7segment.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {main_module.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top main_module $srcset
add_files [list {main_module.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s500efg320-4
