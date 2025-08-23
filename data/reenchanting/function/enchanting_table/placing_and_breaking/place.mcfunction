# If entity is standing in the way of placement, fail
execute align xyz if entity @n[dx=0,dy=0,dz=0] run return run function reenchanting:enchanting_table/placing_and_breaking/fail_place

# Set raycast completion
scoreboard players set #reenchanting.raycast_complete reenchanting.variables 1

# Summon display and interaction entity
execute align xyz run summon minecraft:block_display ~0.5 ~0.75 ~0.5 {Tags:["reenchanting.enchanting_table"],block_state: {Name: "minecraft:enchanting_table"}, transformation: {left_rotation: [0.0f, 0.0f, 0.0f, 1.0f], right_rotation: [0.0f, 0.0f, 0.0f, 1.0f], scale: [1.002f, 1.002f, 1.002f], translation: [-0.501f, -0.751f, -0.501f]},Passengers: [{id:"minecraft:interaction",Tags:["reenchanting.table_interaction"],height:-0.25f, response:1b}]}

function reenchanting:enchanting_table/redstone/power_off