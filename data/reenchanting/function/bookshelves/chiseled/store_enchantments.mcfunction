data remove entity @s data.enchantments

tag @s remove reenchanting.particle
execute if data block ~ ~ ~ Items[] run tag @s add reenchanting.particle

# Store book enchantments in marker
execute store result score #reenchanting.book0_enchantments_count reenchanting.variables run data get block ~ ~ ~ Items[0].components.minecraft:stored_enchantments
execute if score #reenchanting.book0_enchantments_count reenchanting.variables matches 1 run \
    data modify entity @s data.enchantments append from block ~ ~ ~ Items[0].components.minecraft:stored_enchantments
    
execute store result score #reenchanting.book1_enchantments_count reenchanting.variables run data get block ~ ~ ~ Items[1].components.minecraft:stored_enchantments
execute if score #reenchanting.book1_enchantments_count reenchanting.variables matches 1 run \
    data modify entity @s data.enchantments append from block ~ ~ ~ Items[1].components.minecraft:stored_enchantments

execute store result score #reenchanting.book2_enchantments_count reenchanting.variables run data get block ~ ~ ~ Items[2].components.minecraft:stored_enchantments
execute if score #reenchanting.book2_enchantments_count reenchanting.variables matches 1 run \
    data modify entity @s data.enchantments append from block ~ ~ ~ Items[2].components.minecraft:stored_enchantments

execute store result score #reenchanting.book3_enchantments_count reenchanting.variables run data get block ~ ~ ~ Items[3].components.minecraft:stored_enchantments
execute if score #reenchanting.book3_enchantments_count reenchanting.variables matches 1 run \
    data modify entity @s data.enchantments append from block ~ ~ ~ Items[3].components.minecraft:stored_enchantments

execute store result score #reenchanting.book4_enchantments_count reenchanting.variables run data get block ~ ~ ~ Items[4].components.minecraft:stored_enchantments
execute if score #reenchanting.book4_enchantments_count reenchanting.variables matches 1 run \
    data modify entity @s data.enchantments append from block ~ ~ ~ Items[4].components.minecraft:stored_enchantments

execute store result score #reenchanting.book5_enchantments_count reenchanting.variables run data get block ~ ~ ~ Items[5].components.minecraft:stored_enchantments
execute if score #reenchanting.book5_enchantments_count reenchanting.variables matches 1 run \
    data modify entity @s data.enchantments append from block ~ ~ ~ Items[5].components.minecraft:stored_enchantments

# Split enchantments if there's multiple on the same book
data modify storage reenchanting:enchantments_tracker temp_book_enchantments set from block ~ ~ ~ Items[0].components.minecraft:stored_enchantments
execute if score #reenchanting.book0_enchantments_count reenchanting.variables matches 2.. run \
    function reenchanting:bookshelves/chiseled/split_book/init with storage reenchanting:enchantments_tracker

data modify storage reenchanting:enchantments_tracker temp_book_enchantments set from block ~ ~ ~ Items[1].components.minecraft:stored_enchantments
execute if score #reenchanting.book1_enchantments_count reenchanting.variables matches 2.. run \
    function reenchanting:bookshelves/chiseled/split_book/init with storage reenchanting:enchantments_tracker

data modify storage reenchanting:enchantments_tracker temp_book_enchantments set from block ~ ~ ~ Items[2].components.minecraft:stored_enchantments
execute if score #reenchanting.book2_enchantments_count reenchanting.variables matches 2.. run \
    function reenchanting:bookshelves/chiseled/split_book/init with storage reenchanting:enchantments_tracker

data modify storage reenchanting:enchantments_tracker temp_book_enchantments set from block ~ ~ ~ Items[3].components.minecraft:stored_enchantments
execute if score #reenchanting.book3_enchantments_count reenchanting.variables matches 2.. run \
    function reenchanting:bookshelves/chiseled/split_book/init with storage reenchanting:enchantments_tracker

data modify storage reenchanting:enchantments_tracker temp_book_enchantments set from block ~ ~ ~ Items[4].components.minecraft:stored_enchantments
execute if score #reenchanting.book4_enchantments_count reenchanting.variables matches 2.. run \
    function reenchanting:bookshelves/chiseled/split_book/init with storage reenchanting:enchantments_tracker

data modify storage reenchanting:enchantments_tracker temp_book_enchantments set from block ~ ~ ~ Items[5].components.minecraft:stored_enchantments
execute if score #reenchanting.book5_enchantments_count reenchanting.variables matches 2.. run \
    function reenchanting:bookshelves/chiseled/split_book/init with storage reenchanting:enchantments_tracker