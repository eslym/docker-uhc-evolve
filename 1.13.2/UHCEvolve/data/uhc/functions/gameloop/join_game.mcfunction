###################################################
# UHC Project 
# Name    : join_game.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : No. Execute as players.
# func    : Players that join during the game.
###################################################

gamemode spectator @s
team join spec @s[team=!]
#effect give @s night_vision 999999 0 true
tellraw @s {"text":"UHCE >>> ","color":"gray","extra":[{"text":"遊戲已經開始，","color":"white"},{"text":"以觀眾身份進行遊戲","color":"dark_aqua"}]}
tag @s add game_start