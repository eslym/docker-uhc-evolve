#########################################################
# UHC Project 
# Name    : slow_fall.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust start slow fall settings.
#########################################################

scoreboard players add @e[tag=book] slow_fall 1
scoreboard players set @e[tag=book,scores={slow_fall=2..}] slow_fall 0