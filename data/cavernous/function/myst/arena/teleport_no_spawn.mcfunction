execute in overworld run tp @s 0 ~10000 0
tag @s add send_to_0_0
playsound block.portal.travel master @s ~ ~ ~ 0.8 0.5 0
schedule function cavernous:myst/arena/send_0_0 1s