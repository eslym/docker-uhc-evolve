#########################################################
# UHC Project 
# Name    : start_countdown.mcfunction 
# Made by : jelly99709 
# Path    : /start_countdown/
# Loop    : Yes. Execute as tag=main
# func    : Prepare to start.
#########################################################

execute if entity @e[tag=sec,nbt={Age:-1}] run function uhc:start_countdown/second

#setting check
execute if score 00000000-0000-0000-0000-000000000004 border_mode matches 1 if score @s[scores={border_on=1}] border_start = @s[scores={room=1}] room_time run function uhc:start_countdown/tp_time_violation
execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 if entity @s[scores={border_on=1,map_size=1009..}] run function uhc:start_countdown/map_size_not_match
execute if score 00000000-0000-0000-0000-00000000000b border_mode matches 1 if entity @s[scores={border_on=1,room=1}] run function uhc:start_countdown/br_room_violation

execute if score @s timer_sec matches ..0 run function uhc:go
execute if score @s timer_sec matches ..0 run kill @e[tag=sec]
execute if score @s timer_sec matches ..0 run setblock ~ ~ ~ air replace