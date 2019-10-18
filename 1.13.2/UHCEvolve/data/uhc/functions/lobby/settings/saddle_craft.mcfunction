#########################################################
# UHC Project 
# Name    : saddle_craft.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust saddle(scoreboard).
#########################################################

scoreboard players add @e[tag=book] saddle 1

scoreboard players set @e[tag=book,scores={saddle=2}] saddle 0