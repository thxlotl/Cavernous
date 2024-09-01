# Conversion
tag @s remove priest_1
tag @s add priest_2
data modify entity @s Invulnerable set value 1b
attribute @s generic.max_health base set 100000
data modify entity @s Health set value 100000
attribute @s generic.movement_speed base set 0.15

function cavernous:myst/arena/summon_skeletons

playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1 0.8 0
tellraw @a ["",{"text":"<","color":"white"},{"text":"High Priest Veridian","bold":true,"color":"red"},{"text":"> I WILL NOT FALTER","color":"white"}]
particle dust{color:[0.443, 0.055, 0.055],scale:4} ~ ~1.5 ~ 1.7 1.7 1.7 0.2 200 normal @a

bossbar set high_priest_health color white

# Bossbar management
execute store result bossbar high_priest_health max run attribute @s generic.max_health get
execute store result bossbar high_priest_health value run data get entity @s Health
bossbar set high_priest_health players @a[distance=..50]
