# If the block is in the surrounding, finish from there
execute positioned ~1 ~ ~ if block ~ ~ ~ #reenchanting:raycast_blocks unless entity @n[type=marker,tag=reenchanting.bookshelves, dx=0, dy=0, dz=0] run return run function reenchanting:raycast/finish
execute positioned ~-1 ~ ~ if block ~ ~ ~ #reenchanting:raycast_blocks unless entity @n[type=marker,tag=reenchanting.bookshelves, dx=0, dy=0, dz=0] run return run function reenchanting:raycast/finish
execute positioned ~ ~1 ~ if block ~ ~ ~ #reenchanting:raycast_blocks unless entity @n[type=marker,tag=reenchanting.bookshelves, dx=0, dy=0, dz=0] run return run function reenchanting:raycast/finish
execute positioned ~ ~-1 ~ if block ~ ~ ~ #reenchanting:raycast_blocks unless entity @n[type=marker,tag=reenchanting.bookshelves, dx=0, dy=0, dz=0] run return run function reenchanting:raycast/finish
execute positioned ~ ~ ~1 if block ~ ~ ~ #reenchanting:raycast_blocks unless entity @n[type=marker,tag=reenchanting.bookshelves, dx=0, dy=0, dz=0] run return run function reenchanting:raycast/finish
execute positioned ~ ~ ~-1 if block ~ ~ ~ #reenchanting:raycast_blocks unless entity @n[type=marker,tag=reenchanting.bookshelves, dx=0, dy=0, dz=0] run return run function reenchanting:raycast/finish
