
execute if score @s chain_arrow.timer matches 1 if block ~ ~ ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 2 if block ~ ~-1 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 3 if block ~ ~-2 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 4 if block ~ ~-3 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 5 if block ~ ~-4 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 6 if block ~ ~-5 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 7 if block ~ ~-6 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0
execute if score @s chain_arrow.timer matches 8 if block ~ ~-7 ~ #cavernous:torch_replaceable run playsound block.chain.place block @a ~ ~ ~ 1 1 0

execute if score @s chain_arrow.timer matches 1 if block ~ ~ ~ #cavernous:torch_replaceable run setblock ~ ~ ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 2 if block ~ ~-1 ~ #cavernous:torch_replaceable run setblock ~ ~-1 ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 3 if block ~ ~-2 ~ #cavernous:torch_replaceable run setblock ~ ~-2 ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 4 if block ~ ~-3 ~ #cavernous:torch_replaceable run setblock ~ ~-3 ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 5 if block ~ ~-4 ~ #cavernous:torch_replaceable run setblock ~ ~-4 ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 6 if block ~ ~-5 ~ #cavernous:torch_replaceable run setblock ~ ~-5 ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 7 if block ~ ~-6 ~ #cavernous:torch_replaceable run setblock ~ ~-6 ~ chain[axis=y]
execute if score @s chain_arrow.timer matches 8 if block ~ ~-7 ~ #cavernous:torch_replaceable run setblock ~ ~-7 ~ chain[axis=y]

execute if score @s chain_arrow.timer matches 9 run kill @s

scoreboard players add @s chain_arrow.timer 1
data modify entity @s pickup set value 2b