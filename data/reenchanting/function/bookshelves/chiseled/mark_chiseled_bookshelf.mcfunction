# Summon marker if there isn't one
execute unless entity @n[type=marker, dx=0, dy=0, dz=0, tag=reenchanting.chiseled_bookshelf] run summon marker ~0.5 ~0.5 ~0.5 {Tags:["reenchanting.chiseled_bookshelf"], data:{enchantments:[]}}

execute as @n[type=marker, dx=0, dy=0, dz=0, tag=reenchanting.chiseled_bookshelf] run function reenchanting:bookshelves/chiseled/store_enchantments
