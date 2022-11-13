
#Minecart Pos
execute if score @s[gamemode=!spectator] isHolding matches 0 if predicate gui_menu:holding_menu_item run function gui_menu:minecart/summon
execute if predicate gui_menu:holding_menu_item unless score @s isHolding matches 1 run scoreboard players set @s isHolding 1
execute if score @s isHolding matches 1 run function gui_menu:minecart/tp
execute unless predicate gui_menu:holding_menu_item run function gui_menu:minecart/kill

#Run Item Functions
execute if predicate gui_menu:holding_menu_item store result score @s hasIllegalItem run clear @s black_stained_glass_pane{display:{Name:'[{"text":""}]'}} 0
execute if score @s hasIllegalItem matches 1.. run function gui_menu:actions/reset

execute if predicate gui_menu:holding_menu_item store result score @s toggledGeysers run clear @s #gui_menu:toggle_items{Tags:[geyserToggleButton]} 0
execute if score @s toggledGeysers matches 1.. run function gui_menu:actions/geyser_toggle

execute if predicate gui_menu:holding_menu_item store result score @s switchedPages run clear @s #gui_menu:page_switchers{Tags:[pageSwitcher]} 0
execute if score @s switchedPages matches 1.. run function gui_menu:actions/switch_page

execute if predicate gui_menu:holding_menu_item store result score @s toggledCaveAir run clear @s structure_void{Tags:[caveAirToggleButton]} 0
execute if score @s toggledCaveAir matches 1.. run function gui_menu:actions/cave_air_toggle

execute if predicate gui_menu:holding_menu_item store result score @s enteredDebugMode run clear @s barrier{display:{Name:'[{"text":"Enter spectator mode (F3 + N to exit)"}]'},Tags:[debugButton]} 0
execute if score @s enteredDebugMode matches 1.. run function gui_menu:actions/debug_mode

execute if predicate gui_menu:holding_menu_item store result score @s clickedDiscord run clear @s minecraft:player_head{Tags:[discord]} 0
execute if score @s clickedDiscord matches 1.. run function gui_menu:actions/discord_link

execute if predicate gui_menu:holding_menu_item store result score @s clickedPM run clear @s minecraft:player_head{Tags:[pm]} 0
execute if score @s clickedPM matches 1.. run function gui_menu:actions/planet_minecraft_link

execute if predicate gui_menu:holding_menu_item store result score @s clickedCredit run clear @s minecraft:player_head{Tags:[credit]} 0
execute if score @s clickedCredit matches 1.. run function gui_menu:actions/credit

execute if predicate gui_menu:holding_menu_item store result score @s clickedAdmin run clear @s minecraft:player_head{Tags:[admin]} 0
execute if score @s clickedAdmin matches 1.. run function gui_menu:actions/admin_disclaimer

#Cave Air Tester
execute if score @s showCaveAir matches 1 if block ~ ~ ~ cave_air run title @s actionbar {"text":"In carver","italic":true,"color":"white"}
execute if score @s showCaveAir matches 1 unless block ~ ~ ~ cave_air run title @s actionbar {"text":"Not in carver","italic":true,"color":"gray"}

#Trigger
execute if score @s settings matches 1.. run function gui_menu:trigger