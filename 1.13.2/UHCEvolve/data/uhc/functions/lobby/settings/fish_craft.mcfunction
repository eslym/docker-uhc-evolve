#########################################################
# UHC Project 
# Name    : fish_craft.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust fish_bucket(scoreboard).
#########################################################

scoreboard players add @e[tag=book] fish_bucket 1

scoreboard players set @e[tag=book,scores={fish_bucket=2}] fish_bucket 0