#########################################################
# UHC Project 
# Name    : friend.mcfunction 
# Made by : jelly99709
# Path    : /lobby/settings/
# Loop    : No. Called by book_controller in lobby stage.
# func    : Adjust friend_fire, friend_push and friend_pos.
#########################################################

execute if entity @a[scores={book=18}] run scoreboard players add @e[tag=book] friend_fire 1
execute if entity @a[scores={book=19}] run scoreboard players add @e[tag=book] friend_push 1
execute if entity @a[scores={book=20}] run scoreboard players add @e[tag=book] friend_pos 1

scoreboard players set @e[tag=book,scores={friend_fire=2..}] friend_fire 0
scoreboard players set @e[tag=book,scores={friend_push=2..}] friend_push 0
scoreboard players set @e[tag=book,scores={friend_pos=2..}] friend_pos 0