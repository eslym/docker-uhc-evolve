#########################################################
# UHC Project 
# Name    : golden_craft.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust reverse_craft.
#########################################################

scoreboard players add @e[tag=book] reverse_craft 1

scoreboard players set @e[tag=book,scores={reverse_craft=2}] reverse_craft 0