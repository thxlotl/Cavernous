clear @s player_head{Tags:[credit]}

execute if score .global randomDialouge matches 0 run tellraw @s "<thxlotl> stop clicking on my head"
execute if score .global randomDialouge matches 1 run tellraw @s "<thxlotl> how'd i get in this game"
execute if score .global randomDialouge matches 2 run tellraw @s "<thxlotl> where am i"
execute if score .global randomDialouge matches 3 run tellraw @s "<thxlotl> im stuck in a computer and forced to make datapacks all day help me"
execute if score .global randomDialouge matches 4 run tellraw @s "<thxlotl> i hope you enjoy this pack"
execute if score .global randomDialouge matches 5 run tellraw @s "<thxlotl> cavernous 2: too cavernous 2 cavernous"
execute if score .global randomDialouge matches 6 run tellraw @s "<thxlotl> i love when he said its cavernous'in time and cavernoused all over the bad guys"
execute if score .global randomDialouge matches 7 run tellraw @s "<thxlotl> check out terralith, wwoo, tectonic, and just all the worldgen datapacks in general"
execute if score .global randomDialouge matches 8 run tellraw @s "<thxlotl> if you give me your credit card number you get a secret extra cave biome (;"
execute if score .global randomDialouge matches 9 run tellraw @s "<thxlotl> amount of hours worked on cavernous: too many (a lot of them past midnight)"
execute if score .global randomDialouge matches 10 run tellraw @s "<thxlotl> if you get this message i hope you have a good day :D"
execute if score .global randomDialouge matches 11 run tellraw @s "<thxlotl> don't do worldgen kids"

scoreboard players set @s clickedCredit 0