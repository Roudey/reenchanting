$data remove storage reenchanting:enchantments_tracker enchantments[$(random_index)]
scoreboard players remove #reenchanting.enchantments_count reenchanting.variables 1

$data remove storage reenchanting:enchantments_tracker enchantments[]."$(temp_enchantment_name)"
data modify storage reenchanting:enchantments_tracker enchantment_list_index set value 0
function reenchanting:enchanting_table/enchant/random/remove_multiple/loop with storage reenchanting:enchantments_tracker