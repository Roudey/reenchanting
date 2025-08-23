# Update enchanting table
execute as @e[type=block_display, tag=reenchanting.enchanting_table] at @s run function reenchanting:enchanting_table/update/tick_update

# Loop function
schedule function reenchanting:update/tick_1t 1t