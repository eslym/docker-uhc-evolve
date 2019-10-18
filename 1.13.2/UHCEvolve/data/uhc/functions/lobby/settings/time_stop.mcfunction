#########################################################
# UHC Project 
# Name    : time_stop.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust daylight stop settings.
#########################################################

execute if entity @a[scores={book=52}] run scoreboard players add @e[tag=book] day_stop 1
execute if entity @a[scores={book=53}] run scoreboard players remove @e[tag=pause] day_mode 1
execute if entity @a[scores={book=54}] run scoreboard players add @e[tag=pause] day_mode 1
execute if entity @a[scores={book=55}] run scoreboard players remove @s day_time 20
execute if entity @a[scores={book=56}] run scoreboard players add @s day_time 20

scoreboard players set @e[tag=book,scores={day_stop=2..}] day_stop 0
scoreboard players set @e[tag=pause,scores={day_mode=2..}] day_mode 0
scoreboard players set @e[tag=pause,scores={day_mode=..-1}] day_mode 1
scoreboard players set @s[scores={day_time=101..}] day_time 0
scoreboard players set @s[scores={day_time=..-1}] day_time 100