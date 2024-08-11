data modify storage get_components:extract combining.end set from storage get_components:extract combining.list[-1]
data modify storage get_components:extract combining.start set from storage get_components:extract combining.list[-2]
function sntlibrary:assemble/5 with storage get_components:extract combining
