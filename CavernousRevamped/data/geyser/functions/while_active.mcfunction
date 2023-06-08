#Stood On
    execute positioned ~ ~2 ~ unless entity @e[tag=!geyser,distance=...65,type=!#geyser:can_place_block_on,predicate=geyser:not_sneaking,type=!bat] run scoreboard players set @s geyser.time_stood_on 0
    execute positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,type=!#geyser:can_place_block_on,predicate=geyser:not_sneaking,type=!bat] run scoreboard players add @s geyser.time_stood_on 1
    execute positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,scores={is_flying=1..},type=player] run scoreboard players set @s geyser.time_stood_on 20
    scoreboard players set @a is_flying 0

    execute if score @s geyser.time_stood_on matches 1.. if predicate geyser:chance/50 run playsound minecraft:entity.magma_cube.jump block @a ~ ~1.5 ~ 0.35 0.5
    execute if score @s geyser.time_stood_on matches 1.. run particle minecraft:cloud ~ ~2.2 ~ 0.25 0.05 0.25 0.03 1 normal @a

    execute if score @s geyser.time_stood_on matches 20.. run function geyser:events/burst
    execute if score @s geyser.time_stood_on matches 20.. run scoreboard players operation @s geyser.ambient_timer = @s geyser.ambient_timer.max
    execute if score @s geyser.time_stood_on matches 20.. run scoreboard players set @s geyser.time_stood_on 0