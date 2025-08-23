$execute store result score #reenchanting.compound_length reenchanting.variables run data get storage reenchanting:enchantments_tracker enchantments[$(enchantment_list_index)]
execute if score #reenchanting.compound_length reenchanting.variables matches 0 run function reenchanting:enchanting_table/enchant/random/remove_multiple/remove with storage reenchanting:enchantments_tracker

execute store result score #reenchanting.enchantment_list_index reenchanting.variables run data get storage reenchanting:enchantments_tracker enchantment_list_index
execute if score #reenchanting.compound_length reenchanting.variables matches 1.. run scoreboard players add #reenchanting.enchantment_list_index reenchanting.variables 1
execute store result storage reenchanting:enchantments_tracker enchantment_list_index byte 1 run scoreboard players get #reenchanting.enchantment_list_index reenchanting.variables
execute if score #reenchanting.enchantment_list_index reenchanting.variables <= #reenchanting.enchantments_count reenchanting.variables run \
    function reenchanting:enchanting_table/enchant/random/remove_multiple/loop with storage reenchanting:enchantments_tracker