execute if score #reenchanting.tried_random_enchantments reenchanting.variables matches 0 \
    unless score #reenchanting.bookshelf_count reenchanting.variables matches 0 run data modify storage reenchanting:enchantments_tracker enchantments set value \ 
    [{"minecraft:sharpness":1},{"minecraft:sharpness":2},{"minecraft:sharpness":3},{"minecraft:sharpness":4},{"minecraft:sharpness":5}, \
    {"minecraft:smite":1},{"minecraft:smite":2},{"minecraft:smite":3},{"minecraft:smite":4},{"minecraft:smite":5}, \
    {"minecraft:knockback":1},{"minecraft:knockback":2}, \
    {"minecraft:unbreaking":1}, {"minecraft:unbreaking":2}, {"minecraft:unbreaking":3}, \
    {"minecraft:efficiency":1}, {"minecraft:efficiency":2}, {"minecraft:efficiency":3}, {"minecraft:efficiency":4}, {"minecraft:efficiency":5}, \
    {"minecraft:fortune":1}, {"minecraft:fortune":2}, {"minecraft:fortune":3}, \
    {"minecraft:power":1}, {"minecraft:power":2}, {"minecraft:power":3}, {"minecraft:power":4}, {"minecraft:power":5}, \
    {"minecraft:protection":1}, {"minecraft:protection":2}, {"minecraft:protection":3}, {"minecraft:protection":4}, {"minecraft:protection":5}, \
    {"minecraft:blast_protection":1}, {"minecraft:blast_protection":2}, {"minecraft:blast_protection":3}, {"minecraft:blast_protection":4}, {"minecraft:blast_protection":5}, \
    {"minecraft:fire_protection":1}, {"minecraft:fire_protection":2}, {"minecraft:fire_protection":3}, {"minecraft:fire_protection":4}, {"minecraft:fire_protection":5}, \
    {"minecraft:projectile_protection":1}, {"minecraft:projectile_protection":2}, {"minecraft:projectile_protection":3}, {"minecraft:projectile_protection":4}, {"minecraft:projectile_protection":5}]

execute if score #reenchanting.tried_random_enchantments reenchanting.variables matches 0 unless score #reenchanting.bookshelf_count reenchanting.variables matches 0 run \
    scoreboard players set #reenchanting.enchantments_count reenchanting.variables 48

scoreboard players set #reenchanting.tried_random_enchantments reenchanting.variables 1