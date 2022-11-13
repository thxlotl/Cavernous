#built using mc-build (https://github.com/mc-build/mc-build)

schedule function wasd.get_recipes:30_sec 30s
execute as @a[tag=!wasd.given_all_recipes] run function wasd.get_recipes:__generated__/block/0
tag @a[tag=!wasd.given_all_recipes] add wasd.given_all_recipes