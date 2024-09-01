scoreboard players set @s geyser.ambient_timer.max 160
scoreboard players operation @s geyser.ambient_timer.max += .global rand.1
scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max

execute at @s run setblock ~ ~ ~ basalt
execute at @s run tp @s ~ ~-.95 ~

tag @s add placed