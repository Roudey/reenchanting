# Find enchantment compound entries
execute if data storage reenchanting:enchantments_tracker {char:'"'} run scoreboard players set #reenchanting.is_enchantment reenchanting.variables 1
execute if score #reenchanting.is_enchantment reenchanting.variables matches 1 run function reenchanting:bookshelves/chiseled/split_book/add_char with storage reenchanting:enchantments_tracker

# Split at "," or "}"
execute if data storage reenchanting:enchantments_tracker {char:','} run data modify storage reenchanting:enchantments_tracker temp_enchantment set string storage reenchanting:enchantments_tracker temp_enchantment 0 -1
execute if data storage reenchanting:enchantments_tracker {char:'}'} run data modify storage reenchanting:enchantments_tracker temp_enchantment set string storage reenchanting:enchantments_tracker temp_enchantment 0 -1
execute if data storage reenchanting:enchantments_tracker {char:','} run function reenchanting:bookshelves/chiseled/split_book/store_split with storage reenchanting:enchantments_tracker
execute if data storage reenchanting:enchantments_tracker {char:'}'} run function reenchanting:bookshelves/chiseled/split_book/store_split with storage reenchanting:enchantments_tracker

# Continue to next char
data modify storage reenchanting:enchantments_tracker temp_book_enchantments_string set string storage reenchanting:enchantments_tracker temp_book_enchantments_string 1
data remove storage reenchanting:enchantments_tracker char
execute store success score #reenchanting.continue reenchanting.variables run data modify storage reenchanting:enchantments_tracker char set string storage reenchanting:enchantments_tracker temp_book_enchantments_string 0 1
execute if score #reenchanting.continue reenchanting.variables matches 1 run function reenchanting:bookshelves/chiseled/split_book/loop