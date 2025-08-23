# Reset advancement trigger
advancement revoke @s only reenchanting:enchanting_table/interact_empty

tag @s add reenchanting.take_item_player

# Take item from enchanting table
execute as @n[type=interaction,tag=reenchanting.table_interaction,nbt={interaction:{}}] on vehicle at @s run function reenchanting:enchanting_table/item/take

tag @s remove reenchanting.take_item_player

# Reset interaction entity
data remove entity @n[type=interaction,tag=reenchanting.table_interaction,nbt={interaction:{}}] interaction