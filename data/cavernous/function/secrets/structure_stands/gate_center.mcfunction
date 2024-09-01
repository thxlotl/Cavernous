execute as @a[distance=..15] run advancement grant @s only cavernous:expansion/secrets/story/a2_discover_gate

execute if entity @a[distance=..30] if score @s portal.active matches 1 run function cavernous:myst/portal_active

execute unless score @s portal.active matches 1 if entity @a[distance=..10,scores={drank_bloodbound_potion=1..}] run function cavernous:myst/portal_activation/start

#summon armor_stand ~ ~ ~ {ShowArms:1b,Invisible:1b,Marker:1b,Invulnerable:1b,NoGravity:1b,PersistenceRequired:1b,Tags:["gate_center"]}