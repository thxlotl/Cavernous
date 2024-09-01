particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~0.15 ~ 0.3 0.3 0.3 0 1 normal @a

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:stone_sword",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_blade}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/sword

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_helmet",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_armor}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/mask
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_chestplate",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_armor}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/robe
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_leggings",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_armor}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/leggings
execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:diamond_boots",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_armor}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/boots

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:shield",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_shield}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/shield

execute if entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:crossbow",count:1}},nbt=!{Item:{components:{"minecraft:custom_data":{tag:ancient_repeater}}}}] if entity @s[tag=!has_crafted] run function cavernous:secrets/items/ancient_tablet/craft/repeater



execute if entity @s[tag=has_crafted] run kill @s