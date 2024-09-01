
### IN MYST

scoreboard objectives add nox.time_poisoned dummy

    #### Boss Battle
    scoreboard objectives add priest.active_global dummy

    scoreboard objectives add max_health dummy

    scoreboard objectives add priest.dialogue_counter dummy

    scoreboard objectives add priest.attack_timer dummy
    scoreboard objectives add priest.skeleton_timer dummy

    scoreboard objectives add return_portal.active dummy
    scoreboard objectives add return_portal.to_be_tped_to_ws dummy
    
        ##### Bossbar
        bossbar add high_priest_health {"text":"----HIGH PRIEST VERIDIAN----","bold":true,"color":"gold"}
        bossbar set high_priest_health color red
        bossbar set high_priest_health style notched_6
        bossbar set high_priest_health max 8008135

### IN UNDERGROWTH

    #### Portal
    scoreboard objectives add portal.active dummy
    scoreboard objectives add portal.ambient_sound_timer dummy

    scoreboard objectives add drank_bloodbound_potion dummy

        ##### Activation
        scoreboard objectives add portal.activating dummy
        scoreboard objectives add portal.activation_timer dummy
        
        scoreboard objectives add conduit.has_activated dummy
        scoreboard objectives add conduit.has_powered dummy

    #### Remnant
    scoreboard objectives add remnant.used dummy
    scoreboard objectives add remnant.has_set_up dummy

    #### Openings
    scoreboard objectives add title_card.delay dummy