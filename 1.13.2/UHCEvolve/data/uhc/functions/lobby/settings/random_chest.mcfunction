#########################################################
# UHC Project 
# Name    : random_chest.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust random_chest(scoreboard).
#########################################################

execute if entity @a[scores={book=92}] run scoreboard players add @e[tag=book] random_chest 1
execute if entity @a[scores={book=93}] run scoreboard players remove @s chest_num 5
execute if entity @a[scores={book=94}] run scoreboard players add @s chest_num 5

scoreboard players set @e[tag=book,scores={random_chest=2}] random_chest 0
scoreboard players set @s[scores={chest_num=..4}] chest_num 25
scoreboard players set @s[scores={chest_num=26..}] chest_num 5