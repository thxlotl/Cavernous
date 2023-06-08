execute if entity @s[predicate=geyser:can_be_placed] unless entity @e[tag=!geyser,type=!#geyser:can_place_block_on,distance=...81] run scoreboard players set @s geyser.can_place 1

execute at @s if entity @e[tag=!geyser,distance=...81,type=!item] run scoreboard players set @s geyser.can_place 0
execute at @s positioned ~ ~-1 ~ if entity @e[distance=...81,type=#geyser:2_tall] run scoreboard players set @s geyser.can_place 0
execute at @s positioned ~ ~-2 ~ if entity @e[distance=...81,type=#geyser:3_tall] run scoreboard players set @s geyser.can_place 0
execute unless entity @s[predicate=geyser:can_be_placed] run scoreboard players set @s geyser.can_place 0

execute if score @s geyser.can_place matches 0 run function geyser:place_error
execute if score @s geyser.can_place matches 1 run function geyser:place_geyser