kill @e[type=item,nbt={Item:{id:"minecraft:crossbow",count:1}},limit=1,sort=nearest]
summon item ~ ~0.5 ~ {Item:{id:"minecraft:crossbow",count:1,components:{unbreakable:{},repair_cost:1000,custom_data:{tag:ancient_repeater},item_name:[{"text":"Ancient Repeater","italic":false,"color":"dark_red"}],lore:[[{"text":"Auto Load I","italic":false,"color":"gray"}],[{"text":"","italic":false,"color":"gray"}],[{"text":"Shoot arrows quickly, taking","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}],[{"text":"damage with each shot.","italic":false,"color":"gray"}]],enchantments:{piercing:2},charged_projectiles:[{id:arrow,count:1}],tooltip_display:{hidden_components:["custom_data","equippable"]}}}}
tag @s add has_crafted

particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a
playsound block.end_portal_frame.fill block @a ~ ~ ~ 0.8 0.3 0