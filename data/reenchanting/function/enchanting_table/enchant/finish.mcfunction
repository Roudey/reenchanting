# Use xp and lapis
$xp add @p[tag=reenchanting.enchant_item_player, gamemode=!creative] -$(xp_cost) levels
item modify entity @p[tag=reenchanting.enchant_item_player, gamemode=!creative] weapon.mainhand {"function":"minecraft:set_count", add:true, count:-1}

function reenchanting:enchanting_table/redstone/power_off

# Tag item as enchanted
tag @s add reenchanting.has_been_enchanted

playsound block.beacon.power_select block @a ~ ~ ~ 0.5 2
playsound block.amethyst_block.chime block @a ~ ~ ~ 1 0.6
playsound item.dye.use block @a ~ ~ ~ 0.7 0.8

particle minecraft:trial_spawner_detection_ominous ~ ~ ~ 0.2 0.1 0.2 0 5