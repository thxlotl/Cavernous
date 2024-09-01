
execute if score @s curse.has_notified matches 0 if score @s curse.cooldown_active matches 0 run function cavernous:secrets/curse_notify

effect give @s mining_fatigue 5 1 true