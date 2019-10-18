#########################################################
# UHC Project 
# Name    : cut_clean.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust cut_clean settings.
#########################################################

execute if entity @a[scores={book=41}] run scoreboard players add @e[tag=book] cut_clean 1

scoreboard players set @e[tag=book,scores={cut_clean=2..}] cut_clean 0