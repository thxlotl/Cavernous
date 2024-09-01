#Display
particle minecraft:crit ~ ~ ~ 0.5 1 0.5 0 4 normal @a

#Calculate the time the mob should be stunned for
execute store result score @s health run data get entity @s Health
scoreboard players operation @s shield.stun_length = 0 num
scoreboard players operation @s shield.stun_length -= @s health
scoreboard players operation @s shield.stun_length += 620 num
scoreboard players operation @s shield.stun_length /= 12 num

#Timer Logic
scoreboard players add @s shield.stun_timer 1
execute if score @s shield.stun_timer >= @s shield.stun_length run function cavernous:secrets/items/ancient_shield/unstun