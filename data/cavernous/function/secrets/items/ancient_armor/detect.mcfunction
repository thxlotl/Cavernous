
scoreboard players set @s armor.mask.on 0
scoreboard players set @s armor.robe.on 0
scoreboard players set @s armor.leggings.on 0
scoreboard players set @s armor.boots.on 0

execute if predicate cavernous:ancient_armor/mask run scoreboard players set @s armor.mask.on 1
execute if predicate cavernous:ancient_armor/robe run scoreboard players set @s armor.robe.on 1
execute if predicate cavernous:ancient_armor/leggings run scoreboard players set @s armor.leggings.on 1
execute if predicate cavernous:ancient_armor/boots run scoreboard players set @s armor.boots.on 1

execute unless score @s armor.mask.on = @s armor.mask.on.o run scoreboard players set @s armor.update 1
scoreboard players operation @s armor.mask.on.o = @s armor.mask.on
execute unless score @s armor.robe.on = @s armor.robe.on.o run scoreboard players set @s armor.update 1
scoreboard players operation @s armor.robe.on.o = @s armor.robe.on
execute unless score @s armor.leggings.on = @s armor.leggings.on.o run scoreboard players set @s armor.update 1
scoreboard players operation @s armor.leggings.on.o = @s armor.leggings.on
execute unless score @s armor.boots.on = @s armor.boots.on.o run scoreboard players set @s armor.update 1
scoreboard players operation @s armor.boots.on.o = @s armor.boots.on

execute as @a[predicate=cavernous:ancient_armor/mask] unless score @s armor.mask_hint_given matches 1 run advancement grant @s only cavernous:expansion/secrets/hints/ancient_mask
execute as @a[predicate=cavernous:ancient_armor/mask] unless score @s armor.mask_hint_given matches 1 run scoreboard players set @s armor.mask_hint_given 1