#########################################################
# UHC Project 
# Name    : difficulty.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust difficulty.
#########################################################

execute if entity @a[scores={book=16}] run scoreboard players remove @s diff 1
execute if entity @a[scores={book=17}] run scoreboard players add @s diff 1

scoreboard players set @s[scores={diff=4..}] diff 0
scoreboard players set @s[scores={diff=..-1}] diff 3