

# data modify storage cavernous:storage spawn set value {}
# execute store result storage cavernous:storage spawn.pos_x float 1 run data get entity @s SpawnX
# execute store result storage cavernous:storage spawn.pos_y float 1 run data get entity @s SpawnY
# execute store result storage cavernous:storage spawn.pos_z float 1 run data get entity @s SpawnZ
# execute store result storage cavernous:storage spawn.dimension float 1 run data get entity @s SpawnDimension

function cavernous:myst/arena/teleport with entity @s
