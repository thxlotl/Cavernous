clear @s player_head{Tags:[pm]}

tellraw @s {"text":"Planet Minecraft Page (Click)","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/data-pack/thxlotl-s-cave-biome-datapack/"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to open","color":"blue"}]}}

scoreboard players set @s clickedPM 0