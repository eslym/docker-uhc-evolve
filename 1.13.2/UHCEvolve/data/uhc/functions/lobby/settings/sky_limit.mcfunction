#########################################################
# UHC Project 
# Name    : sky_limit.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust sky limit settings.
#########################################################

execute if entity @a[scores={book=71}] run scoreboard players add @e[tag=book] sky_limit 1
execute if entity @a[scores={book=72}] run scoreboard players remove @s sky_time 10
execute if entity @a[scores={book=73}] run scoreboard players add @s sky_time 10
execute if entity @a[scores={book=74}] run scoreboard players remove @s sky_height 5
execute if entity @a[scores={book=75}] run scoreboard players add @s sky_height 5

scoreboard players set @e[tag=book,scores={sky_limit=2..}] sky_limit 0
scoreboard players set @s[scores={sky_time=101..}] sky_time 0
scoreboard players set @s[scores={sky_time=..-1}] sky_time 100
scoreboard players set @s[scores={sky_height=131..}] sky_height 60
scoreboard players set @s[scores={sky_height=..59}] sky_height 130