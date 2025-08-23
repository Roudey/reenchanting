# Anything for optimization :P
$execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 0..15 run return run function reenchanting:enchanting_table/xp_cost/lookup_macro/xp_$(enchantments_xp_count)
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 16..17 run return 9
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 18..19 run return 8
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 20..21 run return 7
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 22..24 run return 6
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 25..27 run return 5
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 28..31 run return 4
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 32..37 run return 3
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 38..47 run return 2
execute if score #reenchanting.enchantments_xp_count reenchanting.variables matches 48.. run return 1