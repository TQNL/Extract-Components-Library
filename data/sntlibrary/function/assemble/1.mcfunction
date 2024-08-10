# iterate
function sntlibrary:assemble/2
data remove storage get_components:extract lists.list_component_keys_stripped[0]
data remove storage get_components:extract lists.list_component_data[0]
execute if data storage get_components:extract lists.list_component_keys_stripped[0] run function sntlibrary:assemble/1
