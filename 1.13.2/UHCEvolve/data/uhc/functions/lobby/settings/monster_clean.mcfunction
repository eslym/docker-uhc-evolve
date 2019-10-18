#########################################################
# UHC Project 
# Name    : time_stop.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust monster clean settings.
#########################################################

execute if entity @a[scores={book=57}] run scoreboard players add @e[tag=book] monster_clean 1
execute if entity @a[scores={book=58}] run scoreboard players remove @s monster_time 10
execute if entity @a[scores={book=59}] run scoreboard players add @s monster_time 10

scoreboard players set @e[tag=book,scores={monster_clean=2..}] monster_clean 0
scoreboard players set @s[scores={monster_time=101..}] monster_time 20
scoreboard players set @s[scores={monster_time=..19}] monster_time 100