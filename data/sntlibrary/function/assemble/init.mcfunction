function sntlibrary:assemble/1
#data modify storage get_components:extract combining.list_backup set from storage get_components:extract combining.list
function sntlibrary:assemble/4
data remove storage get_components:extract combining.component
data remove storage get_components:extract combining.data
#function sntlibrary:assemble/6
#data remove storage get_components:extract combining