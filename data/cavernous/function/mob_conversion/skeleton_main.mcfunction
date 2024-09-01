
execute if entity @s[tag=!converted] if predicate cavernous:underground if predicate cavernous:miner_skeleton run function cavernous:mob_conversion/miner_replace
execute if entity @s[tag=!miner] run tag @s add not_miner
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_stray run function cavernous:mob_conversion/stray_replace
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_mossclad run function cavernous:mob_conversion/bogged_replace
execute if entity @s[tag=!mossclad] run tag @s add not_mossclad
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_guard run function cavernous:secrets/mobs/guard/conversion
execute if entity @s[tag=!veil_guard] run tag @s add not_veil_guard
execute if entity @s[tag=!converted] if predicate cavernous:conversion/skeleton_to_ghost if predicate cavernous:chance_25 run function cavernous:myst/mobs/ghost/convert
execute if entity @s[tag=!ghost] run tag @s add not_ghost

execute if entity @s[tag=!converted] run tag @s add converted
execute if entity @s[tag=converted] run tag @s remove unconverted