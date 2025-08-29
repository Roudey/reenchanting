# If block is found, finish
execute if block ~ ~ ~ #reenchanting:raycast_blocks run \
    return run \
        function reenchanting:raycast/finish

# Check if block is misaligned
execute if predicate reenchanting:raycast_surround_check run function reenchanting:raycast/surround_check

# Increment step
scoreboard players add #reenchanting.raycast_step reenchanting.variables 1

# Loop function
execute unless score #reenchanting.raycast_complete reenchanting.variables matches 1 \
    unless score #reenchanting.raycast_step reenchanting.variables >= #reenchanting.max_raycast_range reenchanting.variables \
    positioned ^ ^ ^0.1 run \
        function reenchanting:raycast/step
