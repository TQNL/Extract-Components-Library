$data modify storage get_components:extract combining.data set value '$(string_cut)'
function sntlibrary:assemble/3/fix_single_quotes/sq3 with storage get_components:extract combining
data modify storage test:test data set from storage get_components:extract combining.data
data modify storage test:test component set from storage get_components:extract combining.component
