

scoreboard players set @s opening.playing 1
scoreboard players set @s opening.timer 170
playsound minecraft:block.sculk_shrieker.shriek master @s ~ ~ ~ 1 0.2 1
playsound minecraft:ambient.crimson_forest.mood master @s ~ ~ ~ 1 0.5 1

title @s times 1s 2s 3s
title @s title [{"text":"The Undergrowth","obfuscated":true,"color":"red"}]

advancement grant @s only cavernous:expansion/secrets/hint
advancement grant @s only cavernous:expansion/secrets/story