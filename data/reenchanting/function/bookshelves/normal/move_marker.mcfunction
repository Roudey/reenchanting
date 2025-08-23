execute if predicate reenchanting:moving_piston_check run return fail
execute unless predicate reenchanting:bookshelf_check run return run kill @s

execute positioned ~1 ~ ~ if block ~ ~ ~ bookshelf unless entity @n[type=marker, tag=reenchanting.bookshelf, distance=..0.1] run tp @s ~ ~ ~
execute positioned ~-1 ~ ~ if block ~ ~ ~ bookshelf unless entity @n[type=marker, tag=reenchanting.bookshelf, distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~1 ~ if block ~ ~ ~ bookshelf unless entity @n[type=marker, tag=reenchanting.bookshelf, distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~-1 ~ if block ~ ~ ~ bookshelf unless entity @n[type=marker, tag=reenchanting.bookshelf, distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~ ~1 if block ~ ~ ~ bookshelf unless entity @n[type=marker, tag=reenchanting.bookshelf, distance=..0.1] run tp @s ~ ~ ~
execute positioned ~ ~ ~-1 if block ~ ~ ~ bookshelf unless entity @n[type=marker, tag=reenchanting.bookshelf, distance=..0.1] run tp @s ~ ~ ~

execute at @s unless block ~ ~ ~ bookshelf run kill @s