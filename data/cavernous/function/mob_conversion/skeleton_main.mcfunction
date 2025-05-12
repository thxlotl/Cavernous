
execute if entity @n[type=skeleton,tag=!converted] if predicate cavernous:underground if predicate cavernous:miner_skeleton run function cavernous:mob_conversion/miner_replace
execute if entity @n[type=skeleton,tag=!miner] run tag @n[type=skeleton] add not_miner
execute if entity @n[type=skeleton,tag=!converted] if predicate cavernous:conversion/skeleton_to_stray run function cavernous:mob_conversion/stray_replace
execute if entity @n[type=skeleton,tag=!converted] if predicate cavernous:conversion/skeleton_to_mossclad run function cavernous:mob_conversion/bogged_replace
execute if entity @n[type=skeleton,tag=!mossclad] run tag @n[type=skeleton] add not_mossclad
execute if entity @n[type=skeleton,tag=!converted] if predicate cavernous:conversion/skeleton_to_guard run function cavernous:secrets/mobs/guard/conversion
execute if entity @n[type=skeleton,tag=!veil_guard] run tag @n[type=skeleton] add not_veil_guard
execute if entity @n[type=skeleton,tag=!converted] if predicate cavernous:conversion/skeleton_to_ghost if predicate cavernous:chance_25 run function cavernous:myst/mobs/ghost/convert
execute if entity @n[type=skeleton,tag=!ghost] run tag @n[type=skeleton] add not_ghost

execute if entity @n[type=skeleton,tag=!converted] run tag @n[type=skeleton] add converted
execute if entity @n[type=skeleton,tag=converted] run tag @n[type=skeleton] remove unconverted