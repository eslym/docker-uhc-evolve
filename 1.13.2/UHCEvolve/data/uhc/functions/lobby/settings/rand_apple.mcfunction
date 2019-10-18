#########################################################
# UHC Project 
# Name    : rand_apple.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust rand_apple.
#########################################################

scoreboard players add @e[tag=book] rand_apple 1

scoreboard players set @e[tag=book,scores={rand_apple=2}] rand_apple 0