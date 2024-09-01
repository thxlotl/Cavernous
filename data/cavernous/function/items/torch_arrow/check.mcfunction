execute if entity @s[nbt={pickup:1b}] unless block ~ ~ ~ #cavernous:torch_replaceable run function cavernous:items/torch_arrow/fail

execute if block ~ ~ ~ #cavernous:torch_replaceable run function cavernous:items/torch_arrow/place

execute unless entity @s[nbt={pickup:1b}] run kill @s