###################################################
# UHC Project 
# Name    : damage.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. While someone hurt
# func    : Damage Notifier.
###################################################

tellraw @a[gamemode=spectator] {"text":"UHCE >>> ","color":"gray","bold":false,"extra":[{"selector":"@s"},{"text":" 受到 ","color":"white"},{"score":{"name":"@s","objective":"warn"},"color":"gold"},{"text":" 點傷害!!","color":"white"}]}
scoreboard players set @a[scores={warn=1..}] warn 0