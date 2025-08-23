# Store redstone strength as amount of enchantments +1 in item's data
execute store result score #reenchanting.redstone_strength reenchanting.variables run data get entity @s Item.components.minecraft:enchantments
execute store result entity @s data.redstone_strength byte 1 run \
    scoreboard players add #reenchanting.redstone_strength reenchanting.variables 1