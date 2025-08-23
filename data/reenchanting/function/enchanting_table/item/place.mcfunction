# If enchanting table already has an item, swap it
execute on passengers if entity @s[type=item] run \
    return run function reenchanting:enchanting_table/item/swap

function reenchanting:enchanting_table/item/spawn

# Replace temporary item with player's selected item
execute on passengers run item replace entity @s[type=item, tag=reenchanting.temp_entity] contents from entity @p[tag=reenchanting.place_item_player] weapon.mainhand

# Get what redstone strength enchanting table should output
execute on passengers if entity @s[type=item, tag=reenchanting.temp_entity] run function reenchanting:enchanting_table/redstone/get_strength
execute on passengers run tag @s remove reenchanting.temp_entity

# Remove player's selected item
item replace entity @p[tag=reenchanting.place_item_player] weapon.mainhand with air

playsound item.bundle.insert_fail block @a ~ ~ ~ 0.9 1.6
playsound entity.item_frame.add_item block @a ~ ~ ~ 0.9 0.8