give @s minecraft:potion{CustomPotionEffects:[{Id:3,Amplifier:1,Duration:9600}],CustomPotionColor:16772930,display:{Name:'[{"text":"Mining Potion","italic":false}]'}}
clear @s minecraft:knowledge_book
advancement revoke @s only cave_items:mining_potion
recipe take @a cave_items:mining_potion