$data modify storage reenchanting:enchantments_tracker random_enchantment_string set value '$(random_enchantment)'

data modify storage reenchanting:enchantments_tracker temp_enchantment_name set value ""
data modify storage reenchanting:enchantments_tracker temp_enchantment_lvl set value ""

data modify storage reenchanting:enchantments_tracker char set string storage reenchanting:enchantments_tracker random_enchantment_string -1

function reenchanting:enchanting_table/enchant/stringify/loop