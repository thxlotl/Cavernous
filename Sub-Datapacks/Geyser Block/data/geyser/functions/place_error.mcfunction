kill @s
execute at @s run title @p actionbar {"text":"Geyser cannot be placed here","italic":true,"color":"white"}
execute at @s as @p run function geyser:give_egg
