execute positioned ~5 ~ ~ run function cavernous:myst/arena/summon_priest_1
playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 0.8 2 0
particle dust{color:[0.443, 0.055, 0.055],scale:4} ~ ~1.5 ~ 1.7 1.7 1.7 0.2 200 normal @a
title @a[distance=..50] subtitle {"text":"PRISONER OF THE MYST","bold":true,"color":"yellow"}
title @a[distance=..50] title {"text":"HIGH PRIEST VERIDIAN","bold":true,"color":"red"}

execute as @e[tag=return_portal,sort=nearest,limit=1] at @s run playsound minecraft:music_disc.ward master @a ~ ~ ~ 3 1.85 0

advancement grant @a[distance=..500] only cavernous:expansion/myst/priest_summon


scoreboard players set @e[tag=return_portal,sort=nearest,limit=1] return_portal.active 0