#########################################################
# UHC Project 
# Name    : weather.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust weather settings.
#########################################################

execute if entity @a[scores={book=95}] run scoreboard players add @e[tag=book] weather_fix 1
execute if entity @a[scores={book=96}] run scoreboard players remove @e[tag=weather] weather_mode 1
execute if entity @a[scores={book=97}] run scoreboard players add @e[tag=weather] weather_mode 1
execute if entity @a[scores={book=98}] run scoreboard players remove @s weather_time 10
execute if entity @a[scores={book=99}] run scoreboard players add @s weather_time 10

scoreboard players set @e[tag=book,scores={weather_fix=2}] weather_fix 0
scoreboard players set @e[tag=weather,scores={weather_mode=3}] weather_mode 0
scoreboard players set @e[tag=weather,scores={weather_mode=-1}] weather_mode 2
scoreboard players set @s[scores={weather_time=101..}] weather_time 0
scoreboard players set @s[scores={weather_time=..-1}] weather_time 100