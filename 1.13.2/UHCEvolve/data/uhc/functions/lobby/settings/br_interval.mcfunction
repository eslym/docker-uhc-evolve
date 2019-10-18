#########################################################
# UHC Project 
# Name    : BR_interval.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust battle royale mode timing settings.
#########################################################

#cool time
execute if entity @a[scores={book=66}] run scoreboard players remove @s BR_cool_time 1
execute if entity @a[scores={book=66}] run scoreboard players set @s[scores={BR_cool_time=0}] BR_cool_time 5

execute if entity @a[scores={book=67}] run scoreboard players add @s BR_cool_time 1
execute if entity @a[scores={book=67}] run scoreboard players set @s[scores={BR_cool_time=6}] BR_cool_time 1

#shrink time
execute if entity @a[scores={book=68}] run scoreboard players remove @s BR_shrink_time 1
execute if entity @a[scores={book=68}] run scoreboard players set @s[scores={BR_shrink_time=3}] BR_shrink_time 2
execute if entity @a[scores={book=68}] run scoreboard players set @s[scores={BR_shrink_time=0}] BR_shrink_time 5

execute if entity @a[scores={book=69}] run scoreboard players add @s BR_shrink_time 1
execute if entity @a[scores={book=69}] run scoreboard players set @s[scores={BR_shrink_time=3}] BR_shrink_time 4
execute if entity @a[scores={book=69}] run scoreboard players set @s[scores={BR_shrink_time=6}] BR_shrink_time 1