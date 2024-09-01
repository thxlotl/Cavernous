
# Display
execute as @e[tag=priest_2] at @s run particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~1 ~ 0.65 0.5 0.65 0.1 3 normal @a


# Special Attack
scoreboard players add @s priest.attack_timer 1
execute if score @s priest.attack_timer matches 240.. run function cavernous:secrets/items/ancient_staff/activate
execute if score @s priest.attack_timer matches 240.. run scoreboard players set @s priest.attack_timer 0

scoreboard players add @s priest.skeleton_timer 1
execute if score @s priest.skeleton_timer matches 1100.. run function cavernous:myst/arena/summon_skeletons
execute if score @s priest.skeleton_timer matches 1100.. run scoreboard players set @s priest.skeleton_timer 0


# Bossbar management
execute store result bossbar high_priest_health max run attribute @s generic.max_health get
bossbar set high_priest_health value 10000
###execute store result bossbar high_priest_health value run data get entity @s Health
bossbar set high_priest_health players @a[distance=..50]