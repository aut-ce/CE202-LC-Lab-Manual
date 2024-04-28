
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name Implementation -dir "/home/reza/Desktop/Implementation/planAhead_run_4" -part xc3s400pq208-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/reza/Desktop/Implementation/SOP_ParityGenerator.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/reza/Desktop/Implementation} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "ParityGenerator.ucf" [current_fileset -constrset]
add_files [list {ParityGenerator.ucf}] -fileset [get_property constrset [current_run]]
link_design
