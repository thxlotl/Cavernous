



execute if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] store success score @s ancient_repeater.has_shot run item replace entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{tag:ancient_repeater}}}},nbt=!{SelectedItem:{id:"minecraft:crossbow",components:{"minecraft:custom_data":{tag:ancient_repeater},"minecraft:charged_projectiles":[{id:"minecraft:arrow",count:1}]}}}] weapon with crossbow[unbreakable={},repair_cost=1000,custom_data={tag:ancient_repeater},item_name=[{"text":"Ancient Repeater","italic":false,"color":"dark_red"}],lore=[[{"text":"Auto Load I","italic":false,"color":"gray"}],[{"text":"","italic":false,"color":"gray"}],[{"text":"Shoot arrows quickly, taking","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}],[{"text":"damage with each shot.","italic":false,"color":"gray"}]],enchantment_glint_override=true,tooltip_display={hidden_components:["custom_data","enchantment_glint_override"]},charged_projectiles=[{id:arrow,count:1}]]


execute if score @s ancient_repeater.has_shot matches 0 if entity @s[nbt={Inventory:[{id:"minecraft:arrow"}]}] store success score @s ancient_repeater.has_shot run item replace entity @s[predicate=cavernous:holding_ancient_repeater_unloaded_offhand] weapon.offhand with crossbow[unbreakable={},repair_cost=1000,custom_data={tag:ancient_repeater},item_name=[{"text":"Ancient Repeater","italic":false,"color":"dark_red"}],lore=[[{"text":"Auto Load I","italic":false,"color":"gray"}],[{"text":"","italic":false,"color":"gray"}],[{"text":"Shoot arrows quickly, taking","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}],[{"text":"damage with each shot.","italic":false,"color":"gray"}]],enchantment_glint_override=true,tooltip_display={hidden_components:["custom_data","enchantment_glint_override"]},charged_projectiles=[{id:arrow,count:1}]]


execute if score @s ancient_repeater.has_shot matches 1 run clear @s arrow 1
execute if score @s ancient_repeater.has_shot matches 1 unless predicate cavernous:ancient_armor/set run damage @s 3 magic

scoreboard players set @s ancient_repeater.has_shot 0
