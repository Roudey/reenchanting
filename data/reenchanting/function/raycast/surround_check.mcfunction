# If the block is in the surrounding, finish from there
execute if block ~1 ~ ~ #reenchanting:raycast_blocks run return run execute positioned ~1 ~ ~ run function reenchanting:raycast/finish
execute if block ~-1 ~ ~ #reenchanting:raycast_blocks run return run execute positioned ~-1 ~ ~ run function reenchanting:raycast/finish
execute if block ~ ~1 ~ #reenchanting:raycast_blocks run return run execute positioned ~ ~1 ~ run function reenchanting:raycast/finish
execute if block ~ ~-1 ~ #reenchanting:raycast_blocks run return run execute positioned ~ ~-1 ~ run function reenchanting:raycast/finish
execute if block ~ ~ ~1 #reenchanting:raycast_blocks run return run execute positioned ~ ~ ~1 run function reenchanting:raycast/finish
execute if block ~ ~ ~-1 #reenchanting:raycast_blocks run return run execute positioned ~ ~ ~-1 run function reenchanting:raycast/finish
