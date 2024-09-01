scoreboard players set @s portal.activating 0
scoreboard players set @s portal.active 1
fill ~-1 ~-1 ~-1 ~1 ~1 ~1 light[level=15] replace air
particle dust{color:[0.443, 0.055, 0.055],scale:3} ~ ~ ~ 2 2 2 0.7 100 force @a
playsound minecraft:block.end_portal.spawn block @a ~ ~ ~ 1 0.2 0
summon lightning_bolt ~ ~ ~

advancement grant @a[distance=..50] only cavernous:expansion/secrets/story/a7_portal