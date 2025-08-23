# Loops though enchantment compound backwards (because id is stored last and can be found faster), and stringifies enchantment id and lvl

function reenchanting:enchanting_table/enchant/stringify/store_lvl with storage reenchanting:enchantments_tracker
execute if data storage reenchanting:enchantments_tracker {char:':'} run return run function reenchanting:enchanting_table/enchant/stringify/store_name

# Continue to next char
data modify storage reenchanting:enchantments_tracker random_enchantment_string set string storage reenchanting:enchantments_tracker random_enchantment_string 0 -1
data remove storage reenchanting:enchantments_tracker char
execute store success score #reenchanting.continue reenchanting.variables run data modify storage reenchanting:enchantments_tracker char set string storage reenchanting:enchantments_tracker random_enchantment_string -1
execute if score #reenchanting.continue reenchanting.variables matches 1 run function reenchanting:enchanting_table/enchant/stringify/loop