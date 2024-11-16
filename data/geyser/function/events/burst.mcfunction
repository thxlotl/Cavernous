playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.5 1.3
particle minecraft:cloud ~ ~5 ~ 0.09 3 0.09 0.06 60 force @a

execute positioned ~ ~1.95 ~ run effect give @e[type=!#geyser:can_place_block_on,distance=...7] minecraft:levitation 1 37 true
execute positioned ~ ~1.95 ~ run tag @e[type=!#geyser:can_place_block_on,distance=...7] add geysered

execute positioned ~ ~1.95 ~ run advancement grant @a[distance=...65,predicate=geyser:in_volcanic] only cavernous:come_on_geys