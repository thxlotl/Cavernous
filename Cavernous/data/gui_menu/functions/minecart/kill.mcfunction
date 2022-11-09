execute as @e[type=chest_minecart,distance=..4,tag=gui] run function gui_menu:minecart/clear
kill @e[type=chest_minecart,distance=..4,tag=gui]
scoreboard players set @s isHolding 0