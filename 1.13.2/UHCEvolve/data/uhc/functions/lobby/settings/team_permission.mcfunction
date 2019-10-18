#########################################################
# UHC Project 
# Name    : team_permission.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust team_permission.
#########################################################

scoreboard players add @e[tag=book] team_permission 1

scoreboard players set @e[tag=book,scores={team_permission=2}] team_permission 0