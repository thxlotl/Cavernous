kill @e[type=item,nbt={Item:{id:"minecraft:stone_sword",count:1}},limit=1,sort=nearest]
summon item ~ ~0.5 ~ {Item:{id:"minecraft:stone_sword",count:1,components:{unbreakable:{},repair_cost:1000,custom_data:{tag:ancient_blade},attribute_modifiers:[{type:attack_damage,amount:20,slot:"mainhand",id:"1",operation:"add_value"}],item_name:[{"text":"Ancient Blade","italic":false,"color":"dark_red"}],lore:[[{"text":"Drains health while using","italic":false}]],enchantment_glint_override:true,tooltip_display:{hidden_components:["custom_data","enchantment_glint_override"]}}}}

tag @s add has_crafted

particle dust{color:[0.443, 0.055, 0.055],scale:2} ~ ~ ~ 0.3 0.3 0.3 1 30 normal @a
playsound block.end_portal_frame.fill block @a ~ ~ ~ 0.8 0.3 0
