### Noxwoods Poison Water
execute as @e[predicate=cavernous:in_noxwoods] at @s if predicate cavernous:swimming if block ~ ~ ~ water run scoreboard players set @s nox.time_poisoned 20
execute as @e[predicate=cavernous:in_noxwoods] at @s if predicate cavernous:standing if block ~ ~ ~ water run scoreboard players set @s nox.time_poisoned 20
execute as @e[predicate=cavernous:in_noxwoods] at @s if predicate cavernous:standing if block ~ ~1 ~ water run scoreboard players set @s nox.time_poisoned 20

execute as @e[scores={nox.time_poisoned=0..}] run effect give @s poison 3 1 true
execute as @e[scores={nox.time_poisoned=0..}] run scoreboard players remove @s nox.time_poisoned 1

### Remnant Crafting
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_wart",count:3,components:{"minecraft:custom_data":{tag:blood_remnant}}}}] at @s run function cavernous:myst/remnant_craft

### Portal
execute as @e[type=armor_stand,tag=gate_center,scores={portal.activating=1..}] at @s run function cavernous:myst/portal_activation/run
execute as @a[tag=to_clear_glass_bottle] run clear @s glass_bottle 1
tag @a[tag=to_clear_glass_bottle] remove to_clear_glass_bottle

### Openings
execute as @a[tag=entered_myst_1st_time] run scoreboard players add @s title_card.delay 1
execute as @a[tag=entered_myst_1st_time,scores={title_card.delay=100}] run function cavernous:myst/title_cards/dreadmire

### Mobs

    #### Oozer
    execute as @e[type=item,nbt={Item:{id:"minecraft:rotten_flesh",count:1,components:{"minecraft:custom_data":{tag:oozer_death}}}}] at @s positioned ~ ~1 ~ run function cavernous:myst/mobs/oozer/explode

    #### Ghost
    execute as @e[type=skeleton,tag=ghost] at @s if entity @a[distance=..30] run function cavernous:myst/mobs/ghost/run

### Final Boss

    #### Phase 1
execute as @e[type=skeleton,tag=priest_1] at @s run function cavernous:myst/arena/priest_run_1

    #### Phase 2
    
execute as @e[type=skeleton,tag=priest_2] at @s run function cavernous:myst/arena/priest_run_2


    #### Management
    execute if entity @e[type=skeleton,tag=priest_1] run scoreboard players set .global priest.active_global 1
    execute if entity @e[type=skeleton,tag=priest_2] run scoreboard players set .global priest.active_global 1
    execute unless entity @e[type=skeleton,tag=priest_1] unless entity @e[type=skeleton,tag=priest_2] run scoreboard players set .global priest.active_global 0

    execute if score .global priest.active_global matches 0 run bossbar set high_priest_health players

    #### return Portal
    execute as @e[type=armor_stand,tag=return_portal,scores={return_portal.active=1}] at @s if entity @a[distance=..30] run function cavernous:myst/arena/return_portal_run
    execute as @e[scores={return_portal.to_be_tped_to_ws=1}] positioned over world_surface run tp @s ~ ~ ~
    execute as @e[scores={return_portal.to_be_tped_to_ws=1}] run scoreboard players set @s return_portal.to_be_tped_to_ws 0
