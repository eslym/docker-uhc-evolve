#########################################################
# UHC Project 
# Name    : lobby_system.mcfunction 
# Made by : jelly99709 
# Path    : /lobby/
# Loop    : Yes. Execute as tag=main.
# func    : Handle all functions looping in lobby stage.
#########################################################

#join_game
execute as @a[team=] run function uhc:lobby/join_game

#give_book
function uhc:lobby/book/give_book

#effect
effect give @a saturation 999999 0 true
effect give @a resistance 999999 9 true
effect give @a weakness 999999 9 true

#kill item
kill @e[type=item]

#trigger
scoreboard players enable @a[gamemode=creative] book
scoreboard players enable @a choose_team

#random team stop
execute unless entity @a[team=solo] run scoreboard players set @s random_team_stop 1

#info display
execute store result score 人數 information run execute if entity @a[team=!spec]

#show
execute as 00000000-0000-0000-0000-00000000000a at @s run tp @s ~ ~ ~ ~4 ~ 
execute at @s run particle minecraft:portal ~ ~ ~ .5 .25 .5 .5 1 force

#signs
execute if entity @a[scores={lottery=1}] as @e[tag=lottery] at @s run function uhc:lobby/lottery/init
execute as @a[scores={view_settings=1}] run function uhc:lobby/view_settings

#choose team controller
execute if entity @a[scores={choose_team=1},team=!solo] run team join solo @a[scores={choose_team=1},team=!solo]
execute if entity @a[scores={choose_team=2},team=!spec] run team join spec @a[scores={choose_team=2},team=!spec]
execute if entity @s[scores={team_permission=1}] if entity @a[scores={choose_team=3..}] run function uhc:lobby/settings/self_team
execute if entity @s[scores={team_permission=1}] as @a[scores={choose_team=1..}] at @s run playsound entity.experience_orb.pickup voice @s ~ ~ ~
execute as @a[scores={choose_team=1..2}] run playsound entity.experience_orb.pickup voice @s ~ ~ ~
execute if entity @a[scores={choose_team=1..}] run scoreboard players reset @a choose_team

#random team
execute if score @s random_team_stop matches 0 run function uhc:lobby/settings/random_team

#book setting controller
execute if entity @a[scores={book=1..}] run function uhc:lobby/book/book_controller
