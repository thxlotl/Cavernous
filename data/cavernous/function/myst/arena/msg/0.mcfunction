playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1 0.8 0
tellraw @a ["",{"text":"<","color":"white"},{"text":"High Priest Veridian","bold":true,"color":"red"},{"text":"> AT LAST, MY PLAN WILL COME TO FRUITION","color":"white"}]
scoreboard players add @s priest.dialogue_counter 1