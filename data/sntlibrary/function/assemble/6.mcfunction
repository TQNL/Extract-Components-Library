# iterate
## remove early to get 0 as an index
scoreboard players operation #snt_lib_comps_count_backup_plus1 get_components_library = #snt_lib_comps_count_backup get_components_library
scoreboard players remove #snt_lib_comps_count_backup get_components_library 1
execute store result storage get_components:extract handling.comps_count int 1 run scoreboard players get #snt_lib_comps_count_backup get_components_library
execute store result storage get_components:extract handling.comps_count_plus1 int 1 run scoreboard players get #snt_lib_comps_count_backup_plus1 get_components_library

function sntlibrary:assemble/7 with storage get_components:extract handling

execute unless score #snt_lib_comps_count_backup get_components_library matches 0 run return run function sntlibrary:assemble/6
data modify storage get_components:extract command_components set from storage get_components:extract combining.comps.0
data remove storage get_components:extract combining.comps.0
