
scoreboard objectives add geyser_toggle dummy
scoreboard players set .global geyser_toggle 1

schedule clear geyser:events/check
function geyser:events/check

scoreboard objectives add huff dummy
scoreboard objectives add bubble dummy
scoreboard objectives add burst dummy

scoreboard objectives add time_stood_on dummy

scoreboard objectives add powered dummy
scoreboard objectives add bursted dummy

scoreboard objectives add is_flying minecraft.custom:aviate_one_cm

scoreboard players set cavernous load.status 1

scoreboard objectives add can_place dummy

#Recipe Shenanigans

#Links: https://wasdbuildteam.website/ https://wasdbuildteam.website/data-packs/unlock-all-recipes/download/
#This caused me unimaginable pain so thank you WASD for your datapack and for allowing me to use it

scoreboard objectives add add dummy
scoreboard objectives add hasIncompatiblePacks dummy

execute store success score .global add run datapack disable "file/unlock all recipes v2.0.4"
scoreboard players operation .global hasIncompatiblePacks += .global add
execute store success score .global add run datapack disable "file/unlock all recipes v2.0.4.zip"
scoreboard players operation .global hasIncompatiblePacks += .global add
execute store success score .global add run datapack disable "file/Recipes Unlocked Datapack"
scoreboard players operation .global hasIncompatiblePacks += .global add
execute store success score .global add run datapack disable "file/Recipes Unlocked Datapack.zip"
scoreboard players operation .global hasIncompatiblePacks += .global add

execute if score .global hasIncompatiblePacks matches 1.. run schedule function wasd.get_recipes:30_sec 10s