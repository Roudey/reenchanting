execute if score @s[tag=!reenchanting.looked_at_table] reenchanting.xp_cost matches 0 run return fail
title @s[tag=!reenchanting.looked_at_table] actionbar [{"color":"white", "text":"XP cost: "},{"score": {"name": "*", objective: "reenchanting.xp_cost"}}]
tag @s add reenchanting.looked_at_table