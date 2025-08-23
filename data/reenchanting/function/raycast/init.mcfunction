# Reset raycast
scoreboard players set #reenchanting.raycast_step reenchanting.variables 0
scoreboard players set #reenchanting.raycast_complete reenchanting.variables 0

# Store player's max block interaction range
execute store result score #reenchanting.max_raycast_range reenchanting.variables run \
    attribute @s block_interaction_range get 10

# Raycast to block
execute anchored eyes \
    positioned ^ ^ ^ \
    anchored feet run \
        function reenchanting:raycast/step