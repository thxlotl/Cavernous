summon creeper ~ ~ ~ {Fuse:30,ExplosionRadius:-3,CustomName:'[{"text":"Glob"}]',Silent:1b,Tags:["glob","no_id","converted"],active_effects:[{id:invisibility,duration:-1,amplifier:0,show_particles:0b},{id:luck,duration:-1,amplifier:0,show_particles:0b}]}
summon block_display ~ ~ ~ {Tags:["glob_display","no_id"],block_state:{Name:"minecraft:nether_wart_block"},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},interpolation_duration:40,teleport_duration:5}

scoreboard players operation @e[tag=no_id] glob.id = .global glob.id
scoreboard players add .global glob.id 1
tag @e[tag=no_id] remove no_id