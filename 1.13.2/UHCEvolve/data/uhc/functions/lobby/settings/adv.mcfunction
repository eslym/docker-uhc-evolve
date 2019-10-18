#########################################################
# UHC Project 
# Name    : adv.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust advance_announce settings.
#########################################################

execute if entity @a[scores={book=42}] run scoreboard players add @e[tag=book] advance_announce 1

scoreboard players set @e[tag=book,scores={advance_announce=2..}] advance_announce 0