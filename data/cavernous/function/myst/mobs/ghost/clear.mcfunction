
execute as @e[type=skeleton,tag=ghost,tag=!hand_items_cleared] run data modify entity @s equipment set value {}
tag @e[type=skeleton,tag=ghost,tag=!hand_items_cleared] add hand_items_cleared