# Reset advancement trigger
advancement revoke @s only reenchanting:enchanting_table/place

function reenchanting:raycast/init

# If raycast completes, return
execute if score #reenchanting.raycast_complete reenchanting.variables matches 1 run \
    return 1

# If raycast doesn't complete, remove nearby structure voids and give back the item
fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace structure_void strict
function reenchanting:give_enchanting_table