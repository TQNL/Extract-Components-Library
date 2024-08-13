$execute if items $(source) $(target) hotbar.0 $(item_id)[$(components_command)] run return run tellraw @p {"color":"green","text":"this is the original item"}
tellraw @p {"color":"red","text":"this is NOT the original item"}
