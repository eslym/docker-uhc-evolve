#########################################################
# UHC Project 
# Name    : nether_penalty.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/event
# Loop    : Yes, while function on.
# func    : Break portal and give wither effect.
#########################################################

execute at @a[gamemode=survival] if block ~ ~ ~ nether_portal run setblock ~ ~ ~ air
tag @a[tag=!nether,nbt={Dimension:-1}] add nether
tag @a[tag=nether,nbt={Dimension:0}] remove nether

#tag @a[gamemode=spectator,tag=nether] remove nether 

effect give @a[tag=nether,nbt=!{ActiveEffects:[{Id:20b}]}] wither 999999 0 true
effect clear @a[tag=!nether,tag=!sky,tag=!gnd] wither