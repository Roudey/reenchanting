execute as @e[type=marker, tag=reenchanting.bookshelf] at @s run function reenchanting:bookshelves/update/2_tick_update

# Loop function
schedule function reenchanting:update/tick_2t 2t