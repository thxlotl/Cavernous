### Display
particle dust{color:[0.443, 0.055, 0.055],scale:3} ~ ~ ~ 0.7 0.7 0.7 0 30 force @a
particle minecraft:electric_spark ~ ~ ~ 1 1 1 0.2 5 normal @a

scoreboard players add @s portal.ambient_sound_timer 1
execute if score @s portal.ambient_sound_timer matches 80 if predicate cavernous:chance_50 run playsound block.portal.ambient block @a ~ ~ ~ 0.8 0.5 0
execute if score @s portal.ambient_sound_timer matches 80 run scoreboard players set @s portal.ambient_sound_timer 0

### Teleport
execute as @e[gamemode=!spectator,distance=..2] at @s in cavernous:the_myst run function cavernous:myst/through_portal