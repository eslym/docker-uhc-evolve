#########################################################
# UHC Project 
# Name    : spectator.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust spec_permission.
#########################################################

scoreboard players add @e[tag=book] spec_permission 1

scoreboard players set @e[tag=book,scores={spec_permission=2..}] spec_permission 0