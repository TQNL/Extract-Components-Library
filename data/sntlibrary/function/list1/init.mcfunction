# assuming the player called this function, at their location:

forceload add -14 19

data remove storage get_components:extract lists
data remove storage get_components:extract lists_backup

# instruction: make  config tutorial
# intruction: make the situation of no components directly return `[]`
# if those coords arent bedrock, pick somewhere else

$data merge storage get_components:extract {handling:{get:{source:"$(source)",target:"$(target)",path:"$(path)"}}}
$setblock -14 -64 19 oak_sign{front_text:{messages:['{"nbt":"$(path).components","$(source)":"$(target)"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage get_components:extract handling.string set string block -14 -64 19 front_text.messages[0] 3 -1
scoreboard players set #snt_lib_iteration get_components_library 0
scoreboard players set #snt_lib_iteration_plus get_components_library 1
function sntlibrary:list1/iterate {iteration:0,iteration_plus:1}

# instruction: clean other data
clone -14 -64 18 -14 -64 18 -14 -64 19
forceload remove -14 19


# assemble whole components-based command structure
data modify storage get_components:extract lists_backup set from storage get_components:extract lists
function sntlibrary:assemble/init
scoreboard players reset * get_components_library
data remove storage get_components:extract handling
