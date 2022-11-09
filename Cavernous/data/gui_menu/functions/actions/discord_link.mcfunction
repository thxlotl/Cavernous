clear @s player_head{Tags:[discord]}

tellraw @s {"text":"Discord Link (Click)","underlined":true,"color":"blue","clickEvent":{"action":"open_url","value":"https://discord.gg/D7hyC7AWMJ"},"hoverEvent":{"action":"show_text","contents":[{"text":"Click to open","color":"blue"}]}}

scoreboard players set @s clickedDiscord 0