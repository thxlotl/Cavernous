kill @e[type=item,nbt={Item:{id:"minecraft:basalt",count:1}},distance=..2]

execute at @e[tag=geyser,type=armor_stand,tag=broken] run summon item ~ ~0.9 ~ {Item:{id:"magma_cube_spawn_egg",count:1,components:{item_name:{"text": "Geyser Block"},item_model:"player_head",entity_data:{id:armor_stand,Invisible:1b,Marker:1b,DisabledSlots:4144959,NoGravity:1b,Rotation:[0b, 0b],Tags:[geyser],"equipment": {"head": {"id": "player_head","components": {"profile": {"properties": [{"value": "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzIxZDA5MzBiZDYxZmVhNGNiOTAyN2IwMGU5NGUxM2Q2MjAyOWM1MjRlYTBiMzI2MGM3NDc0NTdiYTFiY2ZhMSJ9fX0=","name": "textures"}]}}}}}, "profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNGNkZWVmZmViMjIwNTgzZDIyNjcyN2NiN2U5MjMwOWM4Zjk2ZTQxMTY1YzkzY2IxN2IxNThmYTVjZWRkOGQwZCJ9fX0="}]}}}}
kill @e[type=armor_stand,tag=geyser,tag=broken,tag=placed]

