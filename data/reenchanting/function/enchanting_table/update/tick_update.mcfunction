# Check if enchanting table is broken
execute unless block ~ ~ ~ blackstone_slab[type=bottom] unless block ~ ~ ~ structure_void run return run function reenchanting:enchanting_table/placing_and_breaking/break

# Output redstone signal
execute if block ~ ~ ~ blackstone_slab[waterlogged=true] on passengers if entity @s[type=item, tag=reenchanting.enchanting_item, tag=!reenchanting.has_been_enchanted] run return run \
    function reenchanting:enchanting_table/redstone/power_on_water with entity @s data
execute on passengers if entity @s[type=item, tag=reenchanting.enchanting_item, tag=!reenchanting.has_been_enchanted] run function reenchanting:enchanting_table/redstone/power_on with entity @s data
