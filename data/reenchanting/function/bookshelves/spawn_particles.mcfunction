tag @s add reenchanting.bookshelf_particles_temp

execute as @n[type=block_display,tag=reenchanting.enchanting_table_temp, distance=..3] at @s facing entity @n[type=marker,tag=reenchanting.bookshelf_particles_temp,distance=..3,sort=random] feet run \
    particle enchant ~ ~0.35 ~ ^ ^ ^10000000 0.000000175 0

tag @e[type=marker,tag=reenchanting.bookshelf_particles_temp] remove reenchanting.bookshelf_particles_temp