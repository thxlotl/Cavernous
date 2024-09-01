tp @s ^ ^ ^-1
effect give @s slow_falling 2 0 true
effect give @s resistance 1 255 true

playsound entity.blaze.death player @a ~ ~ ~ 0.7 0.8 0
particle minecraft:enchant ~ ~ ~ 0.8 1 0.8 1 120 normal @a


execute as @e[tag=to_damage_with_staff] unless score @s ancient_staff.casting matches 1 at @s run damage @s 3 magic by @e[scores={ancient_staff.casting=1},sort=nearest,limit=1]
tag @e[tag=to_damage_with_staff] remove to_damage_with_staff


scoreboard players set @s ancient_staff.casting 0
scoreboard players set @s ancient_staff.distance_travelled 0
