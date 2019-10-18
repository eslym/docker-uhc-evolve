#########################################################
# UHC Project 
# Name    : glow.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust glowing time settings.
#########################################################

execute if entity @a[scores={book=63}] run scoreboard players add @e[tag=book] glowing 1
execute if entity @a[scores={book=64}] run scoreboard players remove @s glow_time 10
execute if entity @a[scores={book=65}] run scoreboard players add @s glow_time 10

scoreboard players set @e[tag=book,scores={glowing=2..}] glowing 0
scoreboard players set @s[scores={glow_time=121..}] glow_time 20
scoreboard players set @s[scores={glow_time=..19}] glow_time 120