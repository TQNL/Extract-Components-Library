execute if data entity @p SelectedItem.components run function sntlibrary:do_smth_with_components with entity @s SelectedItem
execute unless data entity @p SelectedItem.components run function sntlibrary:do_smth_without_components with entity @s SelectedItem

# following functions:
$loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)"}],"functions":[{"function":"minecraft:set_count","count":$(count)},{"function":"minecraft:set_components","components":$(components)}]}]}
# or
$loot give @s loot {"pools":[{"rolls":1,"entries":[{"type":"minecraft:item","name":"$(id)"}],"functions":[{"function":"minecraft:set_count","count":$(count)}]}]}




##this data pack library
function sntlibrary:list1/init {source:"entity",target:"@p",path:"SelectedItem"}
function sntlibrary:do_smth with storage get_components:extract

# following function
$give @p $(item_id)[$(components_command)]

# other uses:
$item replace block ~ ~ ~ container.0 with $(item_id)[$(components_command)] $(item_count)

## test:
$execute if items $(source) $(target) hotbar.0 $(item_id)[$(components_command)] run return run tellraw @p {"color":"green","text":"this is the original item"}
tellraw @p {"color":"red","text":"this is NOT the original item"}
