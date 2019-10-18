#########################################################
# UHC Project 
# Name    : rand_silver.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust rand_silvefish.
#########################################################

scoreboard players add @e[tag=book] rand_silverfish 1

scoreboard players set @e[tag=book,scores={rand_silverfish=2}] rand_silverfish 0