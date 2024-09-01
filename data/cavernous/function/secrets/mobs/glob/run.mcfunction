
### Mob Upkeep
scoreboard players operation $current glob.id = @s glob.id

tp @e[type=block_display,tag=glob_display,predicate=cavernous:glob_id] @s

### Movement Check
scoreboard players operation @s stored_x = @s current_x
scoreboard players operation @s stored_y = @s current_y
scoreboard players operation @s stored_z = @s current_z

execute store result score @s current_x run data get entity @s Pos[0] 10
execute store result score @s current_y run data get entity @s Pos[1] 10
execute store result score @s current_z run data get entity @s Pos[2] 10

scoreboard players set @s moving 0
execute unless score @s stored_x = @s current_x run scoreboard players set @s moving 1
execute unless score @s stored_y = @s current_y run scoreboard players set @s moving 1
execute unless score @s stored_z = @s current_z run scoreboard players set @s moving 1

### Sounds
#Walking
execute if score @s moving matches 1 run scoreboard players add @s glob.step_timer 1
execute if score @s moving matches 1 if score @s glob.step_timer matches 7 run playsound minecraft:block.honey_block.slide hostile @a ~ ~ ~ 0.4 0.1 0
execute if score @s glob.step_timer matches 7 run scoreboard players set @s glob.step_timer 0

#Fuse
execute if score @s moving matches 0 if entity @a[distance=..3] if score @s glob.has_played_fuse matches 0 run playsound minecraft:entity.bee.hurt hostile @a ~ ~ ~ 0.4 0.1 0
execute if score @s moving matches 0 if entity @a[distance=..3] if score @s glob.has_played_fuse matches 0 run scoreboard players set @s glob.has_played_fuse 1
execute if score @s moving matches 1 run scoreboard players set @s glob.has_played_fuse 0
execute unless entity @a[distance=..3] run scoreboard players set @s glob.has_played_fuse 0

### Particle Display
particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~0.5 ~ 0.38 0.38 0.38 0 1 normal @a

#Ambient Sound playsound minecraft:block.sculk.charge hostile @a ~ ~ ~ 1 0.1 0