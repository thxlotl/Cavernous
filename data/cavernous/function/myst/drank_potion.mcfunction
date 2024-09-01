execute at @s if entity @e[type=armor_stand,distance=..10,tag=gate_center] run function cavernous:myst/potion_accept
execute at @s unless entity @e[type=armor_stand,distance=..10,tag=gate_center] run function cavernous:myst/potion_reject
