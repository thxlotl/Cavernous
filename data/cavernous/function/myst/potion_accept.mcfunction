scoreboard players set @s drank_bloodbound_potion 1
execute if entity @s[predicate=!cavernous:ancient_armor/set] run damage @s 19 magic
playsound minecraft:block.sculk_shrieker.shriek master @a ~ ~ ~ 1 1.4 0

advancement revoke @s only cavernous:expansion/myst/drank_bloodbound_potion