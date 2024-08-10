# storage get_components:extract combining
data modify storage get_components:extract combining.component set from storage get_components:extract lists.list_component_keys_stripped[0].key
data modify storage get_components:extract combining.data set from storage get_components:extract lists.list_component_data[0].data
function sntlibrary:assemble/3 with storage get_components:extract combining
