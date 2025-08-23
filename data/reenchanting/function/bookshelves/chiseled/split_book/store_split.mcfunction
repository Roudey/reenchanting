$data modify entity @s data.enchantments append value {$(temp_enchantment)}

data modify storage reenchanting:enchantments_tracker temp_enchantment set value ""
scoreboard players set #reenchanting.is_enchantment reenchanting.variables 0