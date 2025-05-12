
effect give @s invisibility infinite 1 true
attribute @s movement_speed base set 0.35
attribute @s attack_damage base set 4.5
data modify entity @s Silent set value 1b
schedule function cavernous:myst/mobs/ghost/clear 3t
tag @s add ghost
tag @s add converted