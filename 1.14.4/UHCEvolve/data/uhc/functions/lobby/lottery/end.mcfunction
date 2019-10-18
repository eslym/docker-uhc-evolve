#########################################################
# UHC Project 
# Name    : end.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/lottery/
# Loop    : Yes. Execute as tag=lottery.
# func    : Lottery end
#########################################################

schedule function uhc:lobby/lottery/end_sound 15t
scoreboard players set @e[tag=lottery] lottery_count 0
