#########################################################
# UHC Project 
# Name    : nether.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust nether settings.
#########################################################

execute if entity @a[scores={book=31}] run scoreboard players add @e[tag=book] nether_open 1
execute if entity @a[scores={book=32}] run scoreboard players remove @s nether_time 10
execute if entity @a[scores={book=33}] run scoreboard players add @s nether_time 10

scoreboard players set @e[tag=book,scores={nether_open=2..}] nether_open 0
scoreboard players set @s[scores={nether_time=121..}] nether_time 40
scoreboard players set @s[scores={nether_time=..39}] nether_time 120