#Scoreboards
schedule clear geyser:events/check
function geyser:events/check

scoreboard objectives add huff dummy
scoreboard objectives add bubble dummy
scoreboard objectives add burst dummy

scoreboard objectives add geyser_toggle dummy
scoreboard players set .global geyser_toggle 1

scoreboard objectives add time_stood_on dummy

scoreboard objectives add powered dummy
scoreboard objectives add bursted dummy

scoreboard objectives add is_flying minecraft.custom:aviate_one_cm

scoreboard players set cavernous load.status 1

scoreboard objectives add can_place dummy

scoreboard objectives add joinmsg minecraft.custom:minecraft.play_time "joinmsg"

schedule function cavernous:tick 1t
