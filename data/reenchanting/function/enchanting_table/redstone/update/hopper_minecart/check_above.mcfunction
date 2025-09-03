tag @s add reenchanting.updated

execute positioned ~ ~1 ~ as @n[type=marker, tag=reenchanting.chiseled_bookshelf, distance=..1] run function reenchanting:bookshelves/chiseled/store_enchantments

# Check if hopper minecart removed item
execute positioned ~ ~1 ~ at @n[type=block_display, tag=reenchanting.enchanting_table, distance=..1] run function reenchanting:enchanting_table/redstone/power_off
