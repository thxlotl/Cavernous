#Scoreboards

scoreboard objectives add joinmsg minecraft.custom:minecraft.play_time "joinmsg"

schedule function cavernous:tick 1t

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