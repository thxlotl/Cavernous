tag @e[type=zombie,predicate=!cavernous:is_zombie_sandstone_caves] add not_sandstone
execute as @e[type=zombie,tag=!not_sandstone] at @e[type=zombie,tag=!not_sandstone,sort=nearest,limit=1] if predicate cavernous:is_zombie_sandstone_caves run function cavernous:mob_conversion/husk_replace

tag @e[type=zombie,predicate=!cavernous:is_zombie_desert_caves] add not_desert
execute as @e[type=zombie,tag=!not_desert] at @e[type=zombie,tag=!not_desert,sort=nearest,limit=1] if predicate cavernous:is_zombie_desert_caves run function cavernous:mob_conversion/husk_replace

tag @e[type=skeleton,predicate=!cavernous:is_skeleton_icy_caves] add not_icy
execute as @e[type=skeleton,tag=!not_icy] at @e[type=skeleton,tag=!not_icy,sort=nearest,limit=1] if predicate cavernous:is_skeleton_icy_caves run function cavernous:mob_conversion/stray_replace

#Send Message
execute as @a if score @s joinmsg matches 1 run function cavernous:tellraw_private

#Repeat

#schedule function cavernous:tick 1t
