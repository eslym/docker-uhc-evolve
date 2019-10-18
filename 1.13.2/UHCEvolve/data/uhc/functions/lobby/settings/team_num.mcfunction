#########################################################
# UHC Project 
# Name    : team_num.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust team_num.
#########################################################

# -1 or +1
execute if entity @a[scores={book=1}] run scoreboard players remove @s random_team_num 1
execute if entity @a[scores={book=2}] run scoreboard players add @s random_team_num 1

#make random_team_num be between 2~14
scoreboard players set @s[scores={random_team_num=15..}] random_team_num 2
scoreboard players set @s[scores={random_team_num=..1}] random_team_num 14