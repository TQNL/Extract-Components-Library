# iterate
function sntlibrary:assemble/5
data remove storage get_components:extract combining.list[0]
execute if data storage get_components:extract combining.list[0] run function sntlibrary:assemble/4

# list of the combined components wont do, we need a .n system
# we need an intelegent concatination system with commas
# describe the situation and make an algorithm
# since the combined thing is a string, we can concat commas in all entries of the list and then when the list is combined, remove the last character