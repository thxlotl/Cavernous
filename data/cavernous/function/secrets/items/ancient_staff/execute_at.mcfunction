
scoreboard players add @s ancient_staff.distance_travelled 1

execute if block ~ ~ ~ #cavernous:can_teleport_through positioned ^ ^ ^0.5 unless score @s ancient_staff.distance_travelled matches 30.. run function cavernous:secrets/items/ancient_staff/cast

execute positioned ~ ~ ~ as @e[distance=..3] unless score @s ancient_staff.casting matches 1 run scoreboard players set @s ancient_staff.casting 0
execute positioned ~ ~ ~ run tag @e[distance=..3,scores={ancient_staff.casting=0}] add to_damage_with_staff


particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~0.5 ~ 0.38 0.38 0.38 0 15 normal @a
playsound block.nether_wart.break player @a ~ ~ ~ 0.7 0.5 0


execute unless block ~ ~ ~ #cavernous:can_teleport_through run function cavernous:secrets/items/ancient_staff/hit
execute if score @s ancient_staff.distance_travelled matches 30.. run function cavernous:secrets/items/ancient_staff/hit