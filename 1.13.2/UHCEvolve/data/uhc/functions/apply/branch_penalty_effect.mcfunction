#########################################################
# UHC Project 
# Name    : branch_penalty.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : No. Execute by players.
# func    : Branch-mined penalty effect.
#########################################################

effect give @s glowing 10 0 true
effect give @s weakness 30 1 true
effect give @s slowness 30 2 true
effect give @s mining_fatigue 30 1 true
clear @s #uhc:pickaxe

tellraw @a {"text":"","extra":[{"text":"UHCE >>> ","color":"gray"},{"selector":"@s"},{"text":" 受到魚骨懲罰","color":"white"}]}
execute as @a at @s run playsound minecraft:block.anvil.land ambient @s ~ ~ ~

scoreboard players set @s stone_penalty 0