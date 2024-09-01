#summon minecraft:creeper ~ ~ ~ {Fuse:0,ExplosionRadius:1,ignited:1,CustomName:'[{"text":"an explosive arrow"}]',NoAI:1b,Motion:[1d,3d,4d],ActiveEffects:[{Id:14,Duration:20,Amplifier:1,ShowParticles:0b}]}
summon tnt ~ ~ ~ {CustomName:'[{"text":"an explosive arrow"}]',fuse:0}
kill @e[type=area_effect_cloud,distance=..3]
kill @s