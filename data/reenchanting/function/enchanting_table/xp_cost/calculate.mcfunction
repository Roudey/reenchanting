
data modify storage reenchanting:enchantments_tracker enchantments set value []
scoreboard players set #reenchanting.bookshelf_count reenchanting.variables 0

# Get available enchantments
execute positioned ~-2.5 ~-0.5 ~-2.5 as @e[type=marker, tag=reenchanting.chiseled_bookshelf,dx=4,dy=1,dz=4] \
    positioned ~1 ~ ~1 unless entity @s[dx=2, dy=0, dz=2] run \
    data modify storage reenchanting:enchantments_tracker enchantments append from entity @s data.enchantments[]

execute store result score #reenchanting.enchantments_xp_count reenchanting.variables run data get storage reenchanting:enchantments_tracker enchantments

# Add bookshelfs for use in xp calculation
execute positioned ~-2.5 ~-0.5 ~-2.5 as @e[type=marker, tag=reenchanting.bookshelf,dx=4,dy=1,dz=4] \
    positioned ~1 ~ ~1 unless entity @s[dx=2, dy=0, dz=2] run \
    scoreboard players add #reenchanting.bookshelf_count reenchanting.variables 1

# Do a lookup for xp cost
execute store result score #reenchanting.enchantments_count reenchanting.variables run data get storage reenchanting:enchantments_tracker enchantments
execute store result storage reenchanting:enchantments_tracker enchantments_count byte 1 run scoreboard players get #reenchanting.enchantments_count reenchanting.variables
execute store result storage reenchanting:enchantments_tracker enchantments_xp_count byte 1 run \
    scoreboard players operation #reenchanting.enchantments_xp_count reenchanting.variables += #reenchanting.bookshelf_count reenchanting.variables
execute store result score #reenchanting.xp_cost reenchanting.variables run \ 
    function reenchanting:enchanting_table/xp_cost/lookup with storage reenchanting:enchantments_tracker

execute store result entity @s data.xp_cost byte 1 run scoreboard players get #reenchanting.xp_cost reenchanting.variables