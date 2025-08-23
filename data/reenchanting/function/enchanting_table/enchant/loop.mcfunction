# Get enchantment count 
execute store result score #reenchanting.enchantments_count reenchanting.variables run data get storage reenchanting:enchantments_tracker enchantments

execute if score #reenchanting.enchantments_count reenchanting.variables matches ..0 run function reenchanting:enchanting_table/enchant/bookshelf_fallback
execute if score #reenchanting.enchantments_count reenchanting.variables matches ..0 if score #reenchanting.tried_random_enchantments reenchanting.variables matches 1 run return run \
    title @p[tag=reenchanting.enchant_item_player] actionbar {"color":red,"text":"No compatible enchantment available!"}

# Get a random enchantment from enchantments list
function reenchanting:enchanting_table/enchant/random/get_enchant

# Summon temporary zombie to hold item
summon zombie ~ ~-10000 ~ {Tags:["reenchanting.temp_entity"], NoAI:1b, NoGravity:1b, Health:1b}

item replace entity @n[type=zombie, tag=reenchanting.temp_entity] weapon.mainhand from entity @s contents

# Try to apply enchantment to item
function reenchanting:enchanting_table/enchant/try_enchantment with storage reenchanting:enchantments_tracker

item replace entity @s contents from entity @n[type=zombie, tag=reenchanting.temp_entity] weapon.mainhand

# Check if enchantment was applied successfully
execute if score #reenchanting.enchanting_success reenchanting.variables matches 1 run function reenchanting:enchanting_table/enchant/finish with storage reenchanting:enchantments_tracker
execute unless score #reenchanting.enchanting_success reenchanting.variables matches 1 run function reenchanting:enchanting_table/enchant/loop