
execute if entity @s[tag=!converted] if predicate cavernous:conversion/creeper_to_glob run function cavernous:secrets/mobs/glob/convert
execute if entity @s[tag=!glob] run tag @s add not_glob

execute if entity @s[tag=!converted] run tag @s add converted