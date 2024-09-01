### Make sure it is active

scoreboard objectives add geyser.enabled dummy
scoreboard objectives add geyser.uninstalled dummy
scoreboard objectives add geyser.has_uninstalled dummy

execute unless score .global geyser.has_uninstalled matches 1 run scoreboard players set .global geyser.enabled 1
execute unless score .global geyser.has_uninstalled matches 1 run scoreboard players set .global geyser.uninstalled 0

execute unless score .global geyser.uninstalled matches 1 run function geyser:create_scoreboards