#########################################################
# UHC Project 
# Name    : gold_head.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust gold_head.
#########################################################

execute if entity @a[scores={book=23}] run scoreboard players add @e[tag=book] gold_head 1
execute if entity @a[scores={book=24..25}] run scoreboard players add @e[tag=gh] gh_mode 1

scoreboard players set @e[tag=book,scores={gold_head=2..}] gold_head 0
scoreboard players set @e[tag=gh,scores={gh_mode=2..}] gh_mode 0