playsound minecraft:entity.player.splash.high_speed master @a ~ ~ ~ 0.1 1.3
execute positioned ~ ~2 ~ run effect give @e[distance=...65] minecraft:levitation 1 22 true
schedule function geyser:events/effect_clear 10t
execute positioned ~ ~2 ~ run advancement grant @a[distance=...65,predicate=cavernous:in_volcanic] only cavernous:come_on_geys
particle minecraft:cloud ~ ~5 ~ 0.1 3 0.1 0.06 55 force @a