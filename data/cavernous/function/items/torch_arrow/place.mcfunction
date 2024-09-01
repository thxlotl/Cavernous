
execute if entity @s if block ~1 ~ ~ #cavernous:torch_can_place run setblock ~ ~ ~ wall_torch[facing=west] replace
execute if block ~1 ~ ~ #cavernous:torch_can_place run kill @s

execute if entity @s if block ~-1 ~ ~ #cavernous:torch_can_place run setblock ~ ~ ~ wall_torch[facing=east] replace
execute if block ~-1 ~ ~ #cavernous:torch_can_place run kill @s

execute if entity @s if block ~ ~ ~1 #cavernous:torch_can_place run setblock ~ ~ ~ wall_torch[facing=north] replace
execute if block ~ ~ ~1 #cavernous:torch_can_place run kill @s

execute if entity @s if block ~ ~ ~-1 #cavernous:torch_can_place run setblock ~ ~ ~ wall_torch[facing=south] replace
execute if block ~ ~ ~-1 #cavernous:torch_can_place run kill @s

execute if entity @s if block ~ ~-1 ~ #cavernous:torch_can_place run setblock ~ ~ ~ torch replace
execute if block ~ ~-1 ~ #cavernous:torch_can_place run kill @s

execute if entity @s[nbt={pickup:1b}] unless block ~ ~ ~ torch unless block ~ ~ ~ wall_torch run function cavernous:items/torch_arrow/fail
