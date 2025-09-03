execute as @e[type=hopper_minecart, tag=!reenchanting.updated, limit=20] at @s run function reenchanting:enchanting_table/redstone/update/hopper_minecart/check_above

execute if entity @e[type=hopper_minecart, tag=!reenchanting.updated] run return run schedule function reenchanting:enchanting_table/redstone/update/hopper_minecart/2_tick_update 1t

tag @e[type=hopper_minecart,tag=reenchanting.updated] remove reenchanting.updated
