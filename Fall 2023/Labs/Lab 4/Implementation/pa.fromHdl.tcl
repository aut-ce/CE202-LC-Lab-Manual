
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Implementation -dir "/home/reza/Desktop/Implementation/planAhead_run_2" -part xc3s400pq208-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ParityGenerator.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {ParityGenerator.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ParityGenerator $srcset
add_files [list {ParityGenerator.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s400pq208-5
