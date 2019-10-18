#########################################################
# UHC Project 
# Name    : nerf_arrow.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust nerf_arrow(scoreboard).
#########################################################

scoreboard players add @e[tag=book] nerf_arrow 1

scoreboard players set @e[tag=book,scores={nerf_arrow=2}] nerf_arrow 0