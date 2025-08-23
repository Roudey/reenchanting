execute as @e[type=marker, tag=reenchanting.chiseled_bookshelf] at @s run function reenchanting:bookshelves/update/second_update
execute as @e[type=block_display, tag=reenchanting.enchanting_table] at @s run function reenchanting:enchanting_table/update/second_update

# Loop function
schedule function reenchanting:update/tick_1s 1s