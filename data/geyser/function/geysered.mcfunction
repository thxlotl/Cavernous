scoreboard players add @s geyser.effect_timer 1

execute if score @s geyser.effect_timer matches 6.. run effect clear @s levitation
execute if score @s geyser.effect_timer matches 6.. run tag @s remove geysered
execute if score @s geyser.effect_timer matches 6.. run scoreboard players set @s geyser.effect_timer 0