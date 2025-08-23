function reenchanting:enchanting_table/xp_cost/calculate

execute store result score #reenchanting.player_xp reenchanting.variables run xp query @p[tag=reenchanting.enchant_item_player] levels
execute store result storage reenchanting:enchantments_tracker xp_cost byte 1 run scoreboard players get #reenchanting.xp_cost reenchanting.variables

execute if entity @p[tag=reenchanting.enchant_item_player, gamemode=!creative] if score #reenchanting.xp_cost reenchanting.variables > #reenchanting.player_xp reenchanting.variables run return run \
    title @p[tag=reenchanting.enchant_item_player] actionbar {"color":red,"text":"Enchantment is too expensive!"}

scoreboard players set #reenchanting.tried_random_enchantments reenchanting.variables 0

function reenchanting:enchanting_table/enchant/loop