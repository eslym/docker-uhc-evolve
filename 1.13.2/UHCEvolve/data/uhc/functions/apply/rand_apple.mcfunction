#########################################################
# UHC Project 
# Name    : rand_apple.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/apply/
# Loop    : Yes, while function on. Execute by players.
# func    : Random golden apple.
#########################################################

summon area_effect_cloud ~ ~ ~ {Tags:[apple],Duration:5,Particle:"block air"}
execute as @e[tag=apple,distance=..0.5,limit=1] store result score @s uuid run data get entity @s UUIDMost 0.00000000000000001

execute if entity @e[tag=apple,scores={uuid=87},distance=..0.5,limit=1,sort=nearest] anchored eyes run summon item ^ ^1 ^2 {Item:{id:"minecraft:golden_apple",Count:1},PickupDelay:40}

#execute if entity @e[tag=apple,scores={uuid=0..},distance=..0.5] run summon item ^ ^1 ^2 {Item:{id:"minecraft:golden_apple",Count:1},PickupDelay:40}

kill @e[tag=apple,distance=..0.5]
scoreboard players remove @a[scores={leaf=1..}] leaf 1