execute if entity @s[tag=!converted] if predicate cavernous:conversion/zombie_to_husk run function cavernous:mob_conversion/husk_replace
tag @s add not_mimic
execute if entity @s[tag=!converted] if predicate cavernous:conversion/zombie_to_oozer run function cavernous:myst/mobs/oozer/convert
execute if entity @s[tag=!oozer] run tag @s add not_oozer

execute if entity @s[tag=!converted] run tag @s add converted