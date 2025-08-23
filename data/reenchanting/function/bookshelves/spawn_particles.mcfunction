execute positioned ~-2.5 ~-0.5 ~-2.5 as @e[type=marker, tag=reenchanting.bookshelves,dx=4,dy=1,dz=4] \
    positioned ~1 ~ ~1 unless entity @s[dx=2, dy=0, dz=2] run \
    tag @s add reenchanting.bookshelf_particles_temp

execute facing entity @n[type=marker,tag=reenchanting.bookshelf_particles_temp,distance=..3,sort=random] feet run particle enchant ~ ~0.35 ~ ^ ^0.45 ^1000000 0.000001 0

tag @e[type=marker,tag=reenchanting.bookshelf_particles_temp] remove reenchanting.bookshelf_particles_temp