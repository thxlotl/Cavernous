
### Strength Set

scoreboard players set @s armor.strength_set 0
scoreboard players operation @s armor.strength_set += @s armor.robe.on
scoreboard players operation @s armor.strength_set += @s armor.leggings.on

### Detect

scoreboard players operation @s armor.health_sub = 0 num

scoreboard players operation @s armor.mask.on *= 4 num
scoreboard players operation @s armor.health_sub += @s armor.mask.on

scoreboard players operation @s armor.robe.on *= 6 num
scoreboard players operation @s armor.health_sub += @s armor.robe.on

scoreboard players operation @s armor.leggings.on *= 4 num
scoreboard players operation @s armor.health_sub += @s armor.leggings.on

scoreboard players operation @s armor.boots.on *= 4 num
scoreboard players operation @s armor.health_sub += @s armor.boots.on

scoreboard players operation @s armor.health_set = 20 num
scoreboard players operation @s armor.health_set -= @s armor.health_sub


### Set

data modify storage cavernous:storage params set value {}
execute store result storage cavernous:storage params.health_set int 1 run scoreboard players get @s armor.health_set
function cavernous:secrets/items/ancient_armor/remove_health with storage cavernous:storage params
