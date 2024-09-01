#In first phase priest goes from 550 hp to 275

execute if score @s health matches ..525 if score @s priest.dialogue_counter matches 0 run function cavernous:myst/arena/msg/0
execute if score @s health matches ..500 if score @s priest.dialogue_counter matches 1 run function cavernous:myst/arena/msg/1
execute if score @s health matches ..475 if score @s priest.dialogue_counter matches 2 run function cavernous:myst/arena/msg/2
execute if score @s health matches ..450 if score @s priest.dialogue_counter matches 3 run function cavernous:myst/arena/msg/3
execute if score @s health matches ..430 if score @s priest.dialogue_counter matches 4 run function cavernous:myst/arena/msg/4
execute if score @s health matches ..390 if score @s priest.dialogue_counter matches 5 run function cavernous:myst/arena/msg/5
execute if score @s health matches ..355 if score @s priest.dialogue_counter matches 6 run function cavernous:myst/arena/msg/6
execute if score @s health matches ..315 if score @s priest.dialogue_counter matches 7 run function cavernous:myst/arena/msg/7
execute if score @s health matches ..280 if score @s priest.dialogue_counter matches 8 run function cavernous:myst/arena/msg/8