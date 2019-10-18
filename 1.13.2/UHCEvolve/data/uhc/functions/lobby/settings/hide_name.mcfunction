#########################################################
# UHC Project 
# Name    : hide_name.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust hiding name settings.
#########################################################

execute if entity @a[scores={book=60}] run scoreboard players add @e[tag=book] hide_name 1
execute if entity @a[scores={book=61}] run scoreboard players remove @s hide_time 10
execute if entity @a[scores={book=62}] run scoreboard players add @s hide_time 20

scoreboard players set @e[tag=book,scores={hide_name=2..}] hide_name 0
scoreboard players set @s[scores={hide_time=121..}] hide_time 10
scoreboard players set @s[scores={hide_time=..9}] hide_time 120