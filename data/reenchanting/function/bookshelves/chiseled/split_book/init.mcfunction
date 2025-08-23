$data modify storage reenchanting:enchantments_tracker temp_book_enchantments_string set value '$(temp_book_enchantments)'

scoreboard players set #reenchanting.is_enchantment reenchanting.variables 0

data modify storage reenchanting:enchantments_tracker temp_enchantment set value ""

data modify storage reenchanting:enchantments_tracker char set string storage reenchanting:enchantments_tracker temp_book_enchantments_string 0 1

function reenchanting:bookshelves/chiseled/split_book/loop