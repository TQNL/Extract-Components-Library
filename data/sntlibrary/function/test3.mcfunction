#$give @p $(item_id)[$(components_command)]
$execute if items entity @s contents $(item_id)[$(components_command)] run return run tellraw @p {"color":"green","text":"this is the original item"}
tellraw @p {"color":"red","text":"this is NOT the original item"}