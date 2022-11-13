#Shoutout to PauseKawa for the way he did this on his waystone pack!: https://www.planetminecraft.com/data-pack/waystones-a-fast-way-to-travel-in-your-world-with-waypoints/

execute if entity @s[predicate=geyser:can_be_placed] unless entity @e[tag=!geyser,type=!item,distance=...81] run scoreboard players set @s can_place 1

execute at @s if entity @e[tag=!geyser,distance=...81,type=!item] run scoreboard players set @s can_place 0
execute at @s positioned ~ ~-1 ~ if entity @e[distance=...81,type=player] run scoreboard players set @s can_place 0
execute unless entity @s[predicate=geyser:can_be_placed] run scoreboard players set @s can_place 0

execute if score @s can_place matches 0 run function geyser:place_error
execute if score @s can_place matches 1 run function geyser:place_geyser