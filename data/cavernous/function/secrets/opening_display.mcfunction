
execute if entity @s[scores={opening.timer=0..169}] run title @s times 0t 2s 3s

execute if entity @s[scores={opening.timer=140..170}] run title @s title [{"text":"The Undergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=130..140}] run title @s title ["T",{"text":"he Undergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=120..130}] run title @s title ["Th",{"text":"e Undergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=110..120}] run title @s title ["The",{"text":" Undergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=100..110}] run title @s title ["The U",{"text":"ndergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=90..100}] run title @s title ["The Un",{"text":"dergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=80..90}] run title @s title ["The Und",{"text":"ergrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=70..80}] run title @s title ["The Unde",{"text":"rgrowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=60..70}] run title @s title ["The Under",{"text":"growth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=50..60}] run title @s title ["The Underg",{"text":"rowth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=40..50}] run title @s title ["The Undergr",{"text":"owth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=30..40}] run title @s title ["The Undergro",{"text":"wth","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=20..30}] run title @s title ["The Undergrow",{"text":"th","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=10..20}] run title @s title ["The Undergrowt",{"text":"h","obfuscated":true,"color":"red"}]
execute if entity @s[scores={opening.timer=0..10}] run title @s title ["The Undergrowth"]

scoreboard players operation @s opening.timer.a = @s opening.timer
scoreboard players operation @s opening.timer.a %= 10 num
execute if score @s opening.timer.a matches 0 if entity @s[scores={opening.timer=0..140}] run playsound minecraft:block.sculk.step master @s ~ ~ ~ 1 0.5 1
execute if score @s opening.timer.a matches 0 if entity @s[scores={opening.timer=0..140}] run playsound minecraft:block.copper.place master @s ~ ~ ~ 1 1.8 1

execute if entity @s[scores={opening.timer=0..10}] run title @s subtitle {"text":"DISCOVERED","color":"yellow"}
execute if score @s opening.timer matches 15 run playsound minecraft:block.end_portal.spawn master @s ~ ~ ~ 0.7 0.1 1

scoreboard players remove @s opening.timer 1