

 #data modify storage cavernous:storage spawn set value {}
execute store result storage cavernous:storage spawn.pos_x float 1 run data get entity @s respawn.pos[0]
execute store result storage cavernous:storage spawn.pos_y float 1 run data get entity @s respawn.pos[1]
execute store result storage cavernous:storage spawn.pos_z float 1 run data get entity @s respawn.pos[2]
# execute store result storage cavernous:storage spawn.dimension float 1 run data get entity @s respawn.dimension

execute if data entity @s respawn if data entity @s respawn.dimension run function cavernous:myst/arena/teleport with entity @s respawn
execute if data entity @s respawn unless data entity @s respawn.dimension run function cavernous:myst/arena/teleport_overworld with entity @s respawn
execute unless data entity @s respawn run function cavernous:myst/arena/teleport_no_spawn

