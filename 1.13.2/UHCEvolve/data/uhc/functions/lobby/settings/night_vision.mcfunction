#########################################################
# UHC Project 
# Name    : night_vision.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust night_vision.
#########################################################

scoreboard players add @e[tag=book] night_vision 1

scoreboard players set @e[tag=book,scores={night_vision=2}] night_vision 0