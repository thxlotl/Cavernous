scoreboard players set @s portal.activating 1
setblock ~ ~ ~ light[level=15]
scoreboard players set @e[type=armor_stand,tag=conduit,sort=nearest,limit=4] conduit.has_activated 0
scoreboard players set @a[scores={drank_bloodbound_potion=1..},distance=..10] drank_bloodbound_potion 0