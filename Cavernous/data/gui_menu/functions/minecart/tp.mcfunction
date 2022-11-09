tp @e[type=chest_minecart,distance=..4,tag=gui] ^ ^1.3 ^2
execute if score @s pageNum matches 1 as @e[type=chest_minecart,distance=..4,tag=gui] run function gui_menu:pages/pg1
execute if score @s pageNum matches 2 as @e[type=chest_minecart,distance=..4,tag=gui] run function gui_menu:pages/pg2
#tp @e[type=chest_minecart,distance=..4,tag=gui] ~ ~1 ~