
execute unless predicate cavernous:ancient_armor/set run damage @s 7 magic at ~ ~ ~
particle minecraft:enchant ~ ~ ~ 0.8 1 0.8 1 120 normal @a
playsound entity.blaze.death player @a ~ ~ ~ 0.5 0.8 0

execute positioned ^ ^ ^0.5 run function cavernous:secrets/items/ancient_staff/cast

scoreboard players set @s ancient_staff.casting 1
scoreboard players set @s ancient_staff.cooldown_timer 0
