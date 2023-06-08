
### Tellraw

execute as @a if score @s joinmsg matches 1 run function cavernous:tellraw

### Advancements

execute as @a at @s if score @s broke.spore_blossom matches 1.. if biome ~ ~ ~ cavernous:tropical_caves run advancement grant @s only cavernous:plantera
scoreboard players set @a broke.spore_blossom 0

### Mob Conversion

tag @e[type=zombie,predicate=cavernous:conversion/zombie_arid,tag=!not_husk] add husk
tag @e[type=zombie,predicate=cavernous:conversion/zombie_desert,tag=!not_husk] add husk
tag @e[type=zombie,predicate=cavernous:conversion/zombie_painted,tag=!not_husk] add husk

tag @e[type=zombie,tag=!husk] add not_husk

execute as @e[type=zombie,tag=!not_husk] at @s if biome ~ ~ ~ #cavernous:desert run function cavernous:mob_conversion/husk_replace

tag @e[type=skeleton,predicate=!cavernous:conversion/skeleton_icy] add not_stray
execute as @e[type=skeleton,tag=!not_stray] at @s if biome ~ ~ ~ #cavernous:ice run function cavernous:mob_conversion/stray_replace
