# Reset advancement trigger
advancement revoke @s only reenchanting:enchanting_table/interact_equipment

tag @s add reenchanting.place_item_player

# Place selected item on enchanting table
execute as @n[type=interaction,tag=reenchanting.table_interaction,nbt={interaction:{}}] on vehicle at @s run function reenchanting:enchanting_table/item/place

tag @s remove reenchanting.place_item_player

# Reset interaction entity
data remove entity @n[type=interaction,tag=reenchanting.table_interaction,nbt={interaction:{}}] interaction
