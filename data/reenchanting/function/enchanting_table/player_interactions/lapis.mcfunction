# Reset advancement trigger
advancement revoke @s only reenchanting:enchanting_table/interact_lapis


tag @s add reenchanting.enchant_item_player

# Try to enchant item
execute as @n[type=interaction,tag=reenchanting.table_interaction,nbt={interaction:{}}] on vehicle at @s on passengers if entity @s[type=item, tag=reenchanting.enchanting_item] run function reenchanting:enchanting_table/enchant/init

tag @s remove reenchanting.enchant_item_player

# Reset interaction entity
data remove entity @n[type=interaction,tag=reenchanting.table_interaction,nbt={interaction:{}}] interaction
