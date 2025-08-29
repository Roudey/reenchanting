tag @s add reenchanting.enchanting_table_temp

# Spawn particles
execute positioned ~-2.5 ~-0.5 ~-2.5 as @e[type=marker, tag=reenchanting.particle,dx=4,dy=1,dz=4, limit=3, sort=random] \
    positioned ~1 ~ ~1 unless entity @s[dx=2, dy=0, dz=2] run \
    function reenchanting:bookshelves/spawn_particles

tag @s remove reenchanting.enchanting_table_temp

execute if entity @s[nbt=!{Passengers:[{id:"minecraft:item"}]}] run tag @s remove reenchanting.occupied

# Check if hopper removed item
execute if entity @s[tag=!reenchanting.occupied] if block ~ ~-1 ~ hopper[enabled=true] run function reenchanting:enchanting_table/redstone/power_off

# Store xp cost to block display
execute if entity @p[predicate=reenchanting:looking_at_table, distance=..3] run function reenchanting:enchanting_table/xp_cost/calculate

# Display xp cost
tag @a[tag=reenchanting.looked_at_table, predicate=!reenchanting:looking_at_table] remove reenchanting.looked_at_table
execute store result score @p[predicate=reenchanting:looking_at_table, distance=..3] reenchanting.xp_cost run data get entity @s data.xp_cost
execute as @p[predicate=reenchanting:looking_at_table, distance=..3, gamemode=!creative] run function reenchanting:enchanting_table/xp_cost/display