
execute unless predicate cavernous:ancient_armor/set run damage @s 6 magic at ~ ~ ~

particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~0.05 ~ 1.7 0.1 1.7 0.1 200 normal @a
particle minecraft:enchant ~ ~ ~ 0.8 1 0.8 1 120 normal @a
playsound minecraft:entity.phantom.death player @a ~ ~ ~ 0.8 0.2 0
playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 0.8 2 0

execute as @e[distance=..7,predicate=!cavernous:holding_ancient_shield] at @s run function cavernous:secrets/items/ancient_shield/stun

scoreboard players set @s shield.damage_blocked 0