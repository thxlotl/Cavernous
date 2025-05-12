
# Display
particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~1 ~ 0.5 0.5 0.5 0.1 2 normal @a

# Switching to phase 2
execute store result score @s max_health run attribute @s max_health get
scoreboard players operation @s max_health /= 2 num
execute store result score @s health run data get entity @s Health
execute if score @s health < @s max_health run function cavernous:myst/arena/phase_2_start

# Bossbar management
execute store result bossbar high_priest_health max run attribute @s max_health get
execute store result bossbar high_priest_health value run data get entity @s Health
bossbar set high_priest_health players @a[distance=..50]

# Dialogue
execute unless score @s priest.dialogue_counter matches 1.. run scoreboard players set @s priest.dialogue_counter 0
function cavernous:myst/arena/dialogue

# Special Attack
scoreboard players add @s priest.attack_timer 1
execute if score @s priest.attack_timer matches 240.. run function cavernous:secrets/items/ancient_staff/activate
execute if score @s priest.attack_timer matches 240.. run scoreboard players set @s priest.attack_timer 0