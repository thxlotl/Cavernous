### General
scoreboard objectives add num dummy
scoreboard players set 620 num 620
scoreboard players set 200 num 200
scoreboard players set 100 num 100
scoreboard players set 20 num 20
scoreboard players set 10 num 10
scoreboard players set 15 num 15
scoreboard players set 12 num 12
scoreboard players set 6 num 6
scoreboard players set 4 num 4
scoreboard players set 2 num 2
scoreboard players set 1 num 1
scoreboard players set 0 num 0

### Opening
scoreboard objectives add opening.timer dummy
scoreboard objectives add opening.timer.a dummy
scoreboard objectives add opening.playing dummy

### Curse
scoreboard objectives add curse.has_notified dummy
scoreboard objectives add curse.cooldown_active dummy
scoreboard objectives add curse.cooldown_timer dummy

### Mobs

    #### Glob
    
    scoreboard objectives add glob.id dummy
    #execute unless score .global glob.id matches 1.. run scoreboard players set .global mimic.id 1
    #whats happening
    
    scoreboard objectives add glob.step_timer dummy
    scoreboard objectives add glob.animation_timer dummy
    scoreboard objectives add glob.has_played_fuse dummy
    
    #Position Logic
    scoreboard objectives add moving dummy
    scoreboard objectives add current_x dummy
    scoreboard objectives add current_y dummy
    scoreboard objectives add current_z dummy
    scoreboard objectives add stored_x dummy
    scoreboard objectives add stored_y dummy
    scoreboard objectives add stored_z dummy


### Items

    #### Ancient Staff
    scoreboard objectives add ancient_staff.casting dummy
    scoreboard objectives add ancient_staff.activating dummy
    scoreboard objectives add ancient_staff.distance_travelled dummy
    scoreboard objectives add ancient_staff.ray_distance dummy

    scoreboard objectives add ancient_staff.cooldown_timer dummy
    scoreboard objectives add ancient_staff.cooldown_timer.display dummy

    #### Ancient Shield
        #Multiplies the damage taken by 10 for whatever reason
    scoreboard objectives add shield.damage_blocked custom:damage_blocked_by_shield
    scoreboard objectives add shield.stunned dummy
    scoreboard objectives add shield.stun_timer dummy
    scoreboard objectives add shield.stun_length dummy
    scoreboard objectives add health dummy

    #### Ancient Armor
    scoreboard objectives add motion.y dummy
    scoreboard objectives add armor.hunger food

    scoreboard objectives add armor.health_sub dummy
    scoreboard objectives add armor.health_set dummy
    scoreboard objectives add armor.strength_set dummy

    scoreboard objectives add armor.mask.on dummy
    scoreboard objectives add armor.robe.on dummy
    scoreboard objectives add armor.leggings.on dummy
    scoreboard objectives add armor.boots.on dummy

    scoreboard objectives add armor.mask_hint_given dummy
    
        ##### Original
    scoreboard objectives add armor.mask.on.o dummy
    scoreboard objectives add armor.robe.on.o dummy
    scoreboard objectives add armor.leggings.on.o dummy
    scoreboard objectives add armor.boots.on.o dummy
    
    scoreboard objectives add armor.update dummy
    scoreboard objectives add fix_ancient_mask trigger

    #### Ancient Blade
    scoreboard objectives add ancient_sword.dammage_timer dummy
    
    #### Ancient Repeater
    scoreboard objectives add ancient_repeater.has_shot dummy
    scoreboard objectives add ancient_repeater.has_arrow dummy
    