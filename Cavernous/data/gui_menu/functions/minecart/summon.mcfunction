summon chest_minecart ^ ^1 ^2 {Tags:[gui],CustomName:'[{"text":"Cavernous Settings"}]',Invulnerable:1b,CustomDisplayTile:1d,DisplayState:{Name:"command_block"},CustomNameVisible:1b}
execute as @e[type=chest_minecart,distance=..4,tag=gui] run function gui_menu:pages/pg1
scoreboard players set @s pageNum 1