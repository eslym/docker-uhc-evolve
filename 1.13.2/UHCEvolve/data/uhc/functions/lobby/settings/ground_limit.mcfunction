#########################################################
# UHC Project 
# Name    : ground_limit.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust under ground limit settings.
#########################################################

execute if entity @a[scores={book=76}] run scoreboard players add @e[tag=book] ground_limit 1
execute if entity @a[scores={book=77}] run scoreboard players remove @s ground_time 10
execute if entity @a[scores={book=78}] run scoreboard players add @s ground_time 10
execute if entity @a[scores={book=79}] run scoreboard players remove @s ground_height 5
execute if entity @a[scores={book=80}] run scoreboard players add @s ground_height 5

scoreboard players set @e[tag=book,scores={ground_limit=2..}] ground_limit 0
scoreboard players set @s[scores={ground_time=101..}] ground_time 0
scoreboard players set @s[scores={ground_time=..-1}] ground_time 100
scoreboard players set @s[scores={ground_height=91..}] ground_height 20
scoreboard players set @s[scores={ground_height=..19}] ground_height 90