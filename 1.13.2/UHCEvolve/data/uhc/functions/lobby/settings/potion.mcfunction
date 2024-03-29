#########################################################
# UHC Project 
# Name    : potion.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust potion settings, includes notch apple and suspicious stew.
#########################################################

execute if entity @a[scores={book=35}] run scoreboard players add @e[tag=book] stew_get 1
execute if entity @a[scores={book=36}] run scoreboard players add @e[tag=book] potion_brew 1
execute if entity @a[scores={book=37}] run scoreboard players add @e[tag=book] potion_regen 1
execute if entity @a[scores={book=38}] run scoreboard players add @e[tag=book] potion_reinforce 1
execute if entity @a[scores={book=39}] run scoreboard players add @e[tag=book] potion_turtle 1
execute if entity @a[scores={book=40}] run scoreboard players add @e[tag=book] notch_apple 1

scoreboard players set @e[tag=book,scores={stew_get=2..}] stew_get 0
scoreboard players set @e[tag=book,scores={potion_brew=2..}] potion_brew 0
scoreboard players set @e[tag=book,scores={potion_regen=2..}] potion_regen 0
scoreboard players set @e[tag=book,scores={potion_reinforce=2..}] potion_reinforce 0
scoreboard players set @e[tag=book,scores={potion_turtle=2..}] potion_turtle 0
scoreboard players set @e[tag=book,scores={notch_apple=2..}] notch_apple 0