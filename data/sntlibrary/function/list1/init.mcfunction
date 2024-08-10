# assuming the player called this function, at their location:

forceload add -14 19

# instruction: make source configurable
# intruction: make the situation of no components directly return `[]`
# if those coords arent bedrock, pick somewhere else

$setblock -14 -64 19 oak_sign{front_text:{messages:['{"nbt":"$(path).components","$(source)":"$(target)"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage get_components:extract handling.string set string block -14 -64 19 front_text.messages[0] 3 -1
scoreboard players set #snt_lib_iteration get_components_library 0
scoreboard players set #snt_lib_iteration_plus get_components_library 1
function sntlibrary:list1/iterate {iteration:0,iteration_plus:1}

# instruction: clean other data
scoreboard players reset * get_components_library
data remove storage get_components:extract handling
clone -14 -64 18 -14 -64 18 -14 -64 19
forceload remove -14 19
