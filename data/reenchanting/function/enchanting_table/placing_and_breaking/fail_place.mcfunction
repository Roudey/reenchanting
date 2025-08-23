# Remove structure void and give back enchanting table item
setblock ~ ~ ~ air strict
function reenchanting:give_enchanting_table

scoreboard players set #reenchanting.raycast_complete reenchanting.variables 1