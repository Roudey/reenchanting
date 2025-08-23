execute as @e[type=block_display, tag=reenchanting.enchanting_table, tag=!reenchanting.occupied] at @s if block ~ ~1 ~ hopper[facing=down,enabled=true] run \
    function reenchanting:enchanting_table/redstone/hopper_pull

# Loop function
schedule function reenchanting:update/tick_8t 8t