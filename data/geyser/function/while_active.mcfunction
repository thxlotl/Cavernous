#Stood On
    execute positioned ~ ~2 ~ unless entity @e[tag=!geyser,distance=...65,type=!#geyser:can_place_block_on,predicate=geyser:not_sneaking,type=!bat] run scoreboard players set @s geyser.time_stood_on 0
    execute positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,type=!#geyser:can_place_block_on,predicate=geyser:not_sneaking,type=!bat] run scoreboard players add @s geyser.time_stood_on 1
    execute positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,scores={is_flying=1..},type=player] run scoreboard players set @s geyser.time_stood_on 20
    scoreboard players set @a is_flying 0

    execute if score @s geyser.time_stood_on matches 1.. if predicate geyser:chance/50 run playsound minecraft:entity.magma_cube.jump block @a ~ ~1.5 ~ 0.35 0.5
    execute if score @s geyser.time_stood_on matches 1.. run particle minecraft:cloud ~ ~2.2 ~ 0.25 0.05 0.25 0.03 2 normal @a

    execute if score @s geyser.time_stood_on matches 7 run tag @s add gonna_bust
    execute if entity @s[tag=gonna_bust] run scoreboard players add @s geyser.main_timer 1

    execute if score @s geyser.main_timer matches 15.. run function geyser:events/burst
    execute if score @s geyser.main_timer matches 15.. run tag @s remove gonna_bust
    execute if score @s geyser.main_timer matches 15.. run scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max
    execute if score @s geyser.main_timer matches 15.. run scoreboard players set @s geyser.time_stood_on 0
    execute if score @s geyser.main_timer matches 15.. run scoreboard players set @s geyser.main_timer 0