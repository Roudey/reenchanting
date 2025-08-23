data remove storage reenchanting:enchantments_tracker temp_hopper_item
scoreboard players set #reenchanting.hopper_slot reenchanting.variables -1

# Check slot 0
execute if items block ~ ~1 ~ container.0 #reenchanting:enchantable run scoreboard players set #reenchanting.hopper_slot reenchanting.variables 0
execute if score #reenchanting.hopper_slot reenchanting.variables matches 0 run data modify storage reenchanting:enchantments_tracker temp_hopper_item set from block ~ ~1 ~ Items[{Slot:0b}]
execute if score #reenchanting.hopper_slot reenchanting.variables matches 0 run item replace block ~ ~1 ~ container.0 with air

# Check slot 1
execute unless score #reenchanting.hopper_slot reenchanting.variables matches 0 if items block ~ ~1 ~ container.1 #reenchanting:enchantable run scoreboard players set #reenchanting.hopper_slot reenchanting.variables 1
execute if score #reenchanting.hopper_slot reenchanting.variables matches 1 run data modify storage reenchanting:enchantments_tracker temp_hopper_item set from block ~ ~1 ~ Items[{Slot:1b}]
execute if score #reenchanting.hopper_slot reenchanting.variables matches 1 run item replace block ~ ~1 ~ container.1 with air

# Check slot 2
execute unless score #reenchanting.hopper_slot reenchanting.variables matches 0..1 if items block ~ ~1 ~ container.2 #reenchanting:enchantable run scoreboard players set #reenchanting.hopper_slot reenchanting.variables 2
execute if score #reenchanting.hopper_slot reenchanting.variables matches 2 run data modify storage reenchanting:enchantments_tracker temp_hopper_item set from block ~ ~1 ~ Items[{Slot:2b}]
execute if score #reenchanting.hopper_slot reenchanting.variables matches 2 run item replace block ~ ~1 ~ container.2 with air

# Check slot 3
execute unless score #reenchanting.hopper_slot reenchanting.variables matches 0..2 if items block ~ ~1 ~ container.3 #reenchanting:enchantable run scoreboard players set #reenchanting.hopper_slot reenchanting.variables 3
execute if score #reenchanting.hopper_slot reenchanting.variables matches 3 run data modify storage reenchanting:enchantments_tracker temp_hopper_item set from block ~ ~1 ~ Items[{Slot:3b}]
execute if score #reenchanting.hopper_slot reenchanting.variables matches 3 run item replace block ~ ~1 ~ container.3 with air

# Check slot 4
execute unless score #reenchanting.hopper_slot reenchanting.variables matches 0..3 if items block ~ ~1 ~ container.4 #reenchanting:enchantable run scoreboard players set #reenchanting.hopper_slot reenchanting.variables 4
execute if score #reenchanting.hopper_slot reenchanting.variables matches 4 run data modify storage reenchanting:enchantments_tracker temp_hopper_item set from block ~ ~1 ~ Items[{Slot:4b}]
execute if score #reenchanting.hopper_slot reenchanting.variables matches 4 run item replace block ~ ~1 ~ container.4 with air

# Fail if no enchantable item was found
execute unless data storage reenchanting:enchantments_tracker temp_hopper_item run return fail

# Spawn temp item
function reenchanting:enchanting_table/item/spawn

# Replace temporary item with hopper's item
execute on passengers if entity @s[type=item, tag=reenchanting.temp_entity] run data modify entity @s Item set from storage reenchanting:enchantments_tracker temp_hopper_item

execute on passengers if entity @s[type=item, tag=reenchanting.temp_entity] run function reenchanting:enchanting_table/redstone/get_strength
execute on passengers run tag @s remove reenchanting.temp_entity

