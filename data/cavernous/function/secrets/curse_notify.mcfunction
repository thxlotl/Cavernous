playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 0.5 1
playsound minecraft:item.armor.equip_generic master @s ~ ~ ~ 1 0.1 1
title @s times 1s 3s 2s
title @s actionbar {"text":"An ominous energy permeates this place... It's harder to mine here","italic":true,"color":"red"}

scoreboard players set @s curse.has_notified 1
scoreboard players set @s curse.cooldown_active 1