#Geyser---

#Disable toggle
execute if score .global geyser_toggle matches 2 run scoreboard players set .global geyser_toggle 0

#Place
execute as @e[type=armor_stand,tag=geyser,tag=!placed] run function geyser:place_check

execute as @e[type=armor_stand,tag=geyser,tag=!placed,tag=generated] run function geyser:place_geyser

#Break
execute as @e[tag=geyser,type=armor_stand,tag=placed] at @s unless block ~ ~1 ~ basalt run tag @s add broken
execute at @e[tag=geyser,type=armor_stand,tag=placed] unless block ~ ~1 ~ basalt run function geyser:break_geyser

#Generate
execute at @a[predicate=cavernous:in_volcanic] if score .global geyser_toggle matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 minecraft:repeating_command_block[conditional=false,facing=west]{Command:"function geyser:spawn_geyser",CustomName:'{"text":"@"}',LastExecution:68318L,LastOutput:'{"extra":[{"color":"red","extra":[{"translate":"arguments.function.unknown","with":["geyser:spawn_geyser"]}],"text":""}],"text":"[21:39:41] "}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b} replace structure_void
execute at @a[predicate=cavernous:in_inactive] if score .global geyser_toggle matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 minecraft:repeating_command_block[conditional=false,facing=west]{Command:"function geyser:spawn_geyser",CustomName:'{"text":"@"}',LastExecution:68318L,LastOutput:'{"extra":[{"color":"red","extra":[{"translate":"arguments.function.unknown","with":["geyser:spawn_geyser"]}],"text":""}],"text":"[21:39:41] "}',SuccessCount:0,TrackOutput:1b,UpdateLastExecution:1b,auto:1b,conditionMet:1b,powered:0b} replace structure_void

execute at @a[predicate=cavernous:in_volcanic] if score .global geyser_toggle matches 0 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 basalt replace structure_void
execute at @a[predicate=cavernous:in_inactive] if score .global geyser_toggle matches 0 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 basalt replace structure_void

#Events


    #Touch

    execute as @e[tag=geyser,type=armor_stand] at @s positioned ~ ~2 ~ unless entity @e[tag=!geyser,distance=...65,type=!item,predicate=geyser:not_sneaking,type=!bat] run scoreboard players set @s time_stood_on 0

    execute as @e[tag=geyser,type=armor_stand] at @s unless block ~ ~ ~ #geyser:ice if block ~ ~2 ~ #geyser:geyser_open if entity @a[distance=..35] positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,type=!item,predicate=geyser:not_sneaking,type=!bat] run scoreboard players add @s time_stood_on 1

    execute as @e[tag=geyser,type=armor_stand] at @s unless block ~ ~ ~ #geyser:ice if block ~ ~2 ~ #geyser:geyser_open if entity @a[distance=..35] positioned ~ ~2 ~ if entity @e[tag=!geyser,distance=...65,scores={is_flying=1..},type=player] run scoreboard players set @s time_stood_on 20
    scoreboard players set @a is_flying 0

    execute as @e[tag=geyser,type=armor_stand,scores={time_stood_on=1..}] at @s if predicate geyser:geyser/50 run playsound minecraft:entity.magma_cube.jump block @a ~ ~2 ~ 0.5 1
    execute as @e[tag=geyser,type=armor_stand,scores={time_stood_on=1..}] at @s run particle minecraft:cloud ~ ~2.2 ~ 0.2 0 0.2 0.03 1 force @a

    execute as @e[tag=geyser,type=armor_stand,scores={time_stood_on=20..}] at @s run function geyser:events/burst_extra

    #Redstone

    execute as @e[tag=geyser,type=armor_stand] at @s if score @s powered matches 1 if score @s bursted matches 0 run function geyser:events/burst
    execute as @e[tag=geyser,type=armor_stand] at @s if score @s powered matches 1 if score @s bursted matches 0 run scoreboard players set @s bursted 1

    execute as @e[tag=geyser,type=armor_stand] at @s if score @s powered matches 0 run scoreboard players set @s bursted 0

    execute as @e[tag=geyser,type=armor_stand] at @s positioned ~ ~1 ~ run function geyser:power