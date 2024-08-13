# assuming the player called this function, at their location:

data remove storage get_components:extract item_id
$data modify storage get_components:extract item_id set from $(source) $(target) $(path).id
data remove storage get_components:extract item_count
$data modify storage get_components:extract item_count set from $(source) $(target) $(path).count

$execute unless data $(source) $(target) $(path).components run return run data modify storage get_components:extract components_command set value ''

data remove storage get_components:extract lists_backup
data remove storage get_components:extract combining
data remove storage get_components:extract components_command

forceload add -14 19

# instruction: make config tutorial

$data merge storage get_components:extract {handling:{get:{source:"$(source)",target:"$(target)",path:"$(path)"}}}
$setblock -14 -64 19 oak_sign{front_text:{messages:['{"nbt":"$(path).components","$(source)":"$(target)"}','{"text":""}','{"text":""}','{"text":""}']}} replace
data modify storage get_components:extract handling.string set string block -14 -64 19 front_text.messages[0] 3 -1
scoreboard players set #snt_lib_iteration get_components_library 0
scoreboard players set #snt_lib_iteration_plus get_components_library 1
execute store result score #snt_lib_string_length get_components_library run data get storage get_components:extract handling.string
function sntlibrary:list1/iterate {iteration:0,iteration_plus:1}


# assemble whole components-based command structure
data modify storage get_components:extract lists_backup set from storage get_components:extract lists
function sntlibrary:assemble/init
scoreboard players reset * get_components_library
scoreboard players set #two get_components_library 2
data remove storage get_components:extract handling


# clean leftovers from setup, all data except the command structure and a backup of the lists are cleared in function sntlibrary:assemble/init
clone -14 -64 18 -14 -64 18 -14 -64 19
forceload remove -14 19
