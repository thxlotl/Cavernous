bossbar set high_priest_health players
bossbar set high_priest_health color red
scoreboard players set @e[tag=return_portal,sort=nearest,limit=1] return_portal.active 1

summon item ~ ~1 ~ {Item:{id:"minecraft:player_head",count:1b,components:{profile:{id:[I;-787218465,-1361886700,-1374898445,-730938295],properties:[{value:eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzJkOThhOTA2N2ZmOWQzOTVhMjdiYmRkMGE5MTZlNjQ0YTFlMDJmYjdkOGQxZDc3NzAyNjU1MjEzZTQzZDA5In19fQ,name:textures}]},item_name:'{"text":"High Priest Veridian\'s Head"}',lore:['{"text":"Trophy","color":"yellow"}']}}}

playsound minecraft:block.end_portal.spawn master @a ~ ~ ~ 1 2 0
playsound minecraft:block.sculk_shrieker.shriek hostile @a ~ ~ ~ 1 0.4 0
tellraw @a ["",{"text":"<","color":"white"},{"text":"High Priest Veridian","bold":true,"color":"red"},{"text":"> NOOOOOOOOOOOOO","color":"white"}]
particle dust{color:[0.443, 0.055, 0.055],scale:4} ~ ~1.5 ~ 1.7 1.7 1.7 0.2 200 normal @a

advancement grant @a[distance=..500] only cavernous:expansion/myst/priest_defeat

kill @s