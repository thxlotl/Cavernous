execute as @e[tag=geyser,type=armor_stand] if predicate geyser:geyser/33 run scoreboard players set @s huff 1
execute as @e[tag=geyser,type=armor_stand] if score @s huff matches 0 if predicate geyser:geyser/50 run scoreboard players set @s bubble 1
execute as @e[tag=geyser,type=armor_stand] if score @s huff matches 0 if score @s bubble matches 0 run scoreboard players set @s burst 1

execute as @e[tag=geyser,type=armor_stand] at @s if block ~ ~2 ~ #geyser:geyser_open unless block ~ ~ ~ #geyser:ice if entity @a[distance=..35] if score @s huff matches 1 if predicate geyser:geyser/50 run function geyser:events/huff
execute as @e[tag=geyser,type=armor_stand] at @s if block ~ ~2 ~ #geyser:geyser_open unless block ~ ~ ~ #geyser:ice if entity @a[distance=..35] if score @s bubble matches 1 if predicate geyser:geyser/50 run function geyser:events/bubble
execute as @e[tag=geyser,type=armor_stand] at @s if block ~ ~2 ~ #geyser:geyser_open unless block ~ ~ ~ #geyser:ice if entity @a[distance=..35] if score @s burst matches 1 if predicate geyser:geyser/50 run function geyser:events/burst

scoreboard players set @e huff 0
scoreboard players set @e bubble 0
scoreboard players set @e burst 0

schedule function geyser:events/check 7s