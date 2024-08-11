# iterate
function sntlibrary:assemble/2
data remove storage get_components:extract lists.list_component_keys_stripped[0]
data remove storage get_components:extract lists.list_component_data[0]
execute if data storage get_components:extract lists.list_component_keys_stripped[0] run return run function sntlibrary:assemble/1
execute store result score #snt_lib_comps_count get_components_library run data get storage get_components:extract combining.list
#scoreboard players operation #snt_lib_comps_count_backup get_components_library = #snt_lib_comps_count get_components_library