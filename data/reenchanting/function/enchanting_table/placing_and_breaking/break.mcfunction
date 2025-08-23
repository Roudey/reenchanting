# Make enchanted item be able to be picked up
execute on passengers run data merge entity @s[type=item] {PickupDelay:10s,Invulnerable:0b, Age:0}

# Remove everything associated with the enchanting table and spawn an item
execute on passengers run kill @s[type=interaction]
execute as @e[type=item, distance=..1.5] if items entity @s contents blackstone_slab run kill @s
setblock ~ ~ ~ air
loot spawn ~ ~ ~ loot reenchanting:enchanting_table
kill @s
