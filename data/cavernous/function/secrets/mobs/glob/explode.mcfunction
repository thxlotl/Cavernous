kill @e[type=area_effect_cloud,distance=..4]

effect give @e[distance=..5] nausea 10 1 true
effect give @e[distance=..5] slowness 10 1 true

particle dust{color:[0.443, 0.055, 0.055],scale:3} ~ ~1 ~ 0.9 0.9 0.9 0 70 normal @a
playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 1 0.1 0

kill @s