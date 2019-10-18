#########################################################
# UHC Project 
# Name    : room.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust final room settings.
#########################################################

execute if entity @e[scores={book=81}] run function uhc:lobby/settings/room_ask
execute if entity @e[scores={book=82}] run scoreboard players remove @s room_time 5
execute if entity @e[scores={book=83}] run scoreboard players add @s room_time 5

scoreboard players set @s[scores={room_time=121..}] room_time 40
scoreboard players set @s[scores={room_time=..39}] room_time 120
