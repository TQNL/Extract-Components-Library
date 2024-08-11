$data modify storage get_components:extract combining.place.start set from storage get_components:extract combining.list[$(comps_count)].comp
$data modify storage get_components:extract combining.place.end set from storage get_components:extract combining.list[$(comps_count_plus1)].comp
$data modify storage get_components:extract combining.place.entry set value '$(comps_count)'
function sntlibrary:assemble/final with storage get_components:extract combining.place
