
    scoreboard players add @a ancient_sword.dammage_timer 1
    execute if score @s ancient_sword.dammage_timer matches 10.. run damage @s 2.5 magic
    execute if score @s ancient_sword.dammage_timer matches 10.. run scoreboard players set @s ancient_sword.dammage_timer 0