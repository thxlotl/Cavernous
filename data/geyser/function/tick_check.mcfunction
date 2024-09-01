
execute unless score .global geyser.uninstalled matches 1 run function geyser:tick

execute if score .global geyser.uninstalled matches 1 run scoreboard players set .global geyser.enabled 0 
execute if score .global geyser.uninstalled matches 0 run scoreboard players set .global geyser.enabled 1

execute at @a[predicate=cavernous:in_volcanic] if score .global geyser.uninstalled matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 basalt replace structure_void
execute at @a[predicate=cavernous:in_inactive] if score .global geyser.uninstalled matches 1 run fill ~25 ~3 ~25 ~-25 ~-8 ~-25 basalt replace structure_void

execute if score .global geyser.uninstalled matches 1 run kill @e[type=armor_stand,tag=geyser]