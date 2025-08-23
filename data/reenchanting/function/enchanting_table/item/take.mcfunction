execute unless entity @s[tag=reenchanting.occupied] run return fail

# Replace player's emtpy hand with enchanting item
execute on passengers if entity @s[type=item, tag=reenchanting.enchanting_item] run \
    item replace entity @p[tag=reenchanting.take_item_player] weapon.mainhand from entity @s contents

function reenchanting:enchanting_table/redstone/power_off

tag @s remove reenchanting.occupied

playsound item.bundle.insert block @a ~ ~ ~ 1 1
playsound entity.item_frame.remove_item block @a ~ ~ ~ 0.5 0.4

# Kill item on enchanting table
execute on passengers if entity @s[type=item, tag=reenchanting.enchanting_item] run kill @s