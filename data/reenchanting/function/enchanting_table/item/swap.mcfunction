data modify entity @s data.Item set from entity @p[tag=reenchanting.place_item_player] SelectedItem
item replace entity @p[tag=reenchanting.place_item_player] weapon.mainhand from entity @s contents
data modify entity @s Item set from entity @s data.Item

function reenchanting:enchanting_table/redstone/get_strength

tag @s remove reenchanting.has_been_enchanted

playsound item.bundle.insert_fail block @a ~ ~ ~ 0.9 1.6
playsound entity.item_frame.add_item block @a ~ ~ ~ 0.9 0.8