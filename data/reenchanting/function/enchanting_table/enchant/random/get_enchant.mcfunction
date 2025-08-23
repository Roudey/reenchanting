scoreboard players remove #reenchanting.enchantments_count reenchanting.variables 1
execute store result storage reenchanting:enchantments_tracker enchantments_count byte 1 run scoreboard players get #reenchanting.enchantments_count reenchanting.variables

# Get random list index
function reenchanting:enchanting_table/enchant/random/index with storage reenchanting:enchantments_tracker

# Store random enchantment
function reenchanting:enchanting_table/enchant/random/store with storage reenchanting:enchantments_tracker

# Stringify enchantment name and id
function reenchanting:enchanting_table/enchant/stringify/init with storage reenchanting:enchantments_tracker

# Remove all of the randomly picked enchantment from enchantments list
function reenchanting:enchanting_table/enchant/random/remove_multiple/init with storage reenchanting:enchantments_tracker