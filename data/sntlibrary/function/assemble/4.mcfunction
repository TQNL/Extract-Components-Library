# iterate
## remove early to get 0 as an index
scoreboard players remove #snt_lib_comps_count get_components_library 1
execute store result storage get_components:extract handling.comps_count int 1 run scoreboard players get #snt_lib_comps_count get_components_library

function sntlibrary:assemble/5 with storage get_components:extract handling

data remove storage get_components:extract combining.list[-1]
execute if data storage get_components:extract combining.list[0] run function sntlibrary:assemble/4
