
#Run as @a
execute as @a at @s run function gui_menu:player
execute as @a[gamemode=spectator] at @s run function gui_menu:minecart/kill

#Loops
execute as @a if score @s pageNum matches 3 run scoreboard players set @s pageNum 1
execute as @a if score @s showCaveAir matches 2.. run scoreboard players set @s showCaveAir 0

scoreboard players add .global randomDialouge 1
execute if score .global randomDialouge matches 12.. run scoreboard players set .global randomDialouge 0

execute if score .global geyser_toggle matches 2 run scoreboard players set .global geyser_toggle 0
 
#Trigger
scoreboard players enable @a settings