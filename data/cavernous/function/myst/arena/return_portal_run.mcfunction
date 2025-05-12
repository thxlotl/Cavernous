### Display
particle dust{color:[0.443, 0.055, 0.055],scale:4} ~ ~ ~ 0.4 1.5 0.4 0 20 force @a

fill ~ ~ ~ ~ ~1 ~ light[level=15] replace air

scoreboard players add @s portal.ambient_sound_timer 1
execute if score @s portal.ambient_sound_timer matches 80 if predicate cavernous:chance_50 run playsound block.portal.ambient block @a ~ ~ ~ 0.8 0.5 0
execute if score @s portal.ambient_sound_timer matches 80 run scoreboard players set @s portal.ambient_sound_timer 0

### Teleport
execute as @a[gamemode=!spectator,distance=..1.5,tag=!priest_1,tag=!priest_2] at @s run function cavernous:myst/arena/through_return_portal
execute as @e[type=!player,type=!armor_stand,distance=..1.5] at @s run scoreboard players set @s return_portal.to_be_tped_to_ws 1