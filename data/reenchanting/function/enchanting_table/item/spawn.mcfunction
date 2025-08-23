# Spawn temporary item
summon item ~ ~ ~ {Tags:["reenchanting.enchanting_item","reenchanting.temp_entity"], Item:{id:"minecraft:stick", components:{item_model:"air"}}, Invulnerable:1b, PickupDelay:-1, Age:-32768}

# Mount temporary item to enchanting table
ride @n[type=item, tag=reenchanting.temp_entity] mount @s

# Tag enchanting table as occupied
tag @s add reenchanting.occupied