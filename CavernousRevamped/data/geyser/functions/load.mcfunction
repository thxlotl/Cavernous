###SERVER UTILITY

scoreboard objectives add geyser.msg minecraft.custom:play_time
scoreboard objectives add geyser.msg.acknowledged dummy
scoreboard objectives add geyser.enabled dummy

scoreboard players set .global geyser.enabled 1

###GLOBAL

scoreboard objectives add rand.1 dummy

###GEYSER PROPERTIES

scoreboard objectives add geyser.can_place dummy

scoreboard objectives add geyser.ambient_timer dummy
scoreboard objectives add geyser.ambient_timer.max dummy
scoreboard objectives add geyser.event_selector dummy
scoreboard objectives add geyser.time_stood_on dummy

scoreboard objectives add geyser.power.powered dummy
scoreboard objectives add geyser.power.activated dummy

scoreboard objectives add geyser.active dummy

###PLAYER STATES

scoreboard objectives add is_flying minecraft.custom:aviate_one_cm

scoreboard objectives add geyser.effect_timer dummy



