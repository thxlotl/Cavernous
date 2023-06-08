#Determines if active
scoreboard players set @s geyser.active 0
execute if block ~ ~2 ~ #geyser:geyser_open unless block ~ ~ ~ #geyser:ice if entity @a[distance=..35] run scoreboard players set @s geyser.active 1

#Ambient
scoreboard players remove @s geyser.ambient_timer 1
execute if score @s geyser.active matches 1 if score @s geyser.ambient_timer matches 0 if predicate geyser:chance/66 run function geyser:event_check
execute if score @s geyser.ambient_timer matches 0 run scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max

#Stood On
execute if score @s geyser.active matches 1 run function geyser:while_active

#Power
execute if score @s geyser.power.powered matches 1 if score @s geyser.power.activated matches 0 run function geyser:events/burst
execute if score @s geyser.power.powered matches 1 if score @s geyser.power.activated matches 0 run scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max
execute if score @s geyser.power.powered matches 1 if score @s geyser.power.activated matches 0 run scoreboard players set @s geyser.power.activated 1

execute if score @s geyser.power.powered matches 0 run scoreboard players set @s geyser.power.activated 0

execute positioned ~ ~1 ~ run function geyser:power