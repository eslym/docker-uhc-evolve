###################################################
# UHC Project 
# Name    : go.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No. Execute as tag=main
# func    : To end lobby stage and start game_loop stage
###################################################

#clear effect, inventory, experience, advancement and recipe
effect clear @a
clear @a
xp set @a 0 points
xp set @a 0 levels
advancement revoke @a everything

#give effect
effect give @a instant_health 1 9 true
effect give @a[team=!spec] resistance 15 9 true
effect give @a[team=!spec] hunger 15 3 true
effect give @a[team=spec] night_vision 999999 0 true
execute if score @s spec_permission matches 0 run effect give @a[team=spec] blindness 999999 0 true
#execute if score @s slow_fall matches 1 run effect give @a slow_falling 20 0 true

#gamemode
gamemode survival @a[team=!spec]
gamemode spectator @a[team=spec]

#gamerule
gamerule naturalRegeneration false
gamerule doFireTick true
gamerule doMobSpawning true
gamerule doWeatherCycle true
gamerule doDaylightCycle true
time set day
weather thunder 1

#information
scoreboard players reset 人數 information

#book settings --- difficulty
execute if score @s diff matches 0 run difficulty peaceful
execute if score @s diff matches 1 run difficulty easy
execute if score @s diff matches 2 run difficulty normal
execute if score @s diff matches 3 run difficulty hard

#book settings --- friendly fire
execute if score @s friend_fire matches 0 run function uhc:apply/friend_fire

#book settings --- friendly push
execute if score @s friend_push matches 0 run function uhc:apply/friend_push

#book settings --- tab health
execute if score @s tab_health matches 1 run scoreboard objectives setdisplay list health

#book settings --- belowName health
execute if score @s name_health matches 1 run scoreboard objectives setdisplay belowName health

#book settings --- advancement announce
execute if score @s advance_announce matches 1 run gamerule announceAdvancements true

#book settings --- hide name
execute if score @s hide_name matches 1 run function uhc:apply/name_visible_false

#book settings --- room
#execute at @e[tag=assist,scores={room=0}] run setblock ~ 126 ~ redstone_block replace

#book settings --- reverse_craft
execute if score @s reverse_craft matches 0 run function uhc:apply/golden_craft

#book settings --- saddle_craft
execute if score @s saddle matches 0 run function uhc:apply/saddle_craft

#book settings --- fish_bucket craft
execute if score @s fish_bucket matches 0 run function uhc:apply/fish_craft

#book settings --- battle royale moving factor
scoreboard players operation @s BR_factor /= @s BR_shrink_time

#spreadplayers 
#execute if score @s slow_fall matches 0 run function uhc:apply/spread_1
function uhc:apply/spread_1

#start sound
execute as @a at @s run playsound minecraft:entity.ender_dragon.growl ambient @s ~ ~ ~ 0.5

#clear lobby
execute at @s run fill ~-9 149 ~-9 ~8 155 ~8 air replace
tp @s 00000000-0000-0000-0000-000000000002
kill @e[tag=show]
kill @e[type=item]

#clear room setting ambiguity
execute at 00000000-0000-0000-0000-000000000002 run setblock ~ 125 ~ air replace
execute at 00000000-0000-0000-0000-000000000002 run setblock ~ 126 ~ air replace

#book settings about scoreboard --- friends position
#scoreboard players set @a think 0

#book settings about scoreboard --- time stop
execute if score @s day_time matches 0 if score @s day_stop matches 1 run function uhc:gameloop/event/day
execute if score @s day_time matches 0 if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run time set midnight
execute if score 00000000-0000-0000-0000-000000000006 day_mode matches 1 run scoreboard players operation @s day_time += const13 XIII

#book settings about scoreboard --- branch_mine
scoreboard players set @a stone_penalty 100
scoreboard players operation @a stone_penalty -= @s branch_limit 

#book settings about scoreboard --- random apple
scoreboard players set @a leaf 0
scoreboard players set @a shear 0

#tag
tag @a add game_start
#execute if score 00000000-0000-0000-0000-000000000001 rand_silverfish matches 1 run tag @a add silverfish
#execute if score 00000000-0000-0000-0000-000000000001 rand_apple matches 1 run tag @a add lucky_leaves

#notifier
scoreboard players operation @s nether_notifier = @s nether_time
scoreboard players operation @s nether_notifier -= const5 V
scoreboard players operation @s gnd_notifier = @s ground_time
scoreboard players operation @s gnd_notifier -= const5 V
scoreboard players operation @s sky_notifier = @s sky_time
scoreboard players operation @s sky_notifier -= const5 V

#stats reset
scoreboard players set @a death 0
scoreboard players set @a temp_kill 0
scoreboard players set @a temp_stone 0
scoreboard players set @a temp_diamond 0
scoreboard players set @a temp_gold 0
scoreboard players set @a temp_apple 0
#scoreboard players set @a temp_hit 0
#scoreboard players set @a temp_hit_m 0
scoreboard players set @a temp_hurt 0
#scoreboard players set @a hit_adv_buffer 0
scoreboard players set @a gh_craft 0
scoreboard players set @a cod 0
scoreboard players set @a salmon 0
scoreboard players set @a pufferfish 0
scoreboard players set @a tropicalfish 0

#judge system
execute as @a[team=solo] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,solo],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=red] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,r],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=blue] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,b],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=green] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,gr],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=yellow] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,y],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=purple] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,pr],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=gray] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,gy],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=red_dark] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,rd],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=blue_dark] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,bd],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=green_dark] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,grd],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=gold] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,yd],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=pink] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,pk],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=gray_dark] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,gyd],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=aqua] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,aq],Duration:2147483647,Particle:"block air"}
execute if entity @a[team=aqua_dark] at 00000000-0000-0000-0000-000000000005 run summon area_effect_cloud ~ ~ ~ {Tags:[carry,ref,aqd],Duration:2147483647,Particle:"block air"}

#center position recorder
execute store result score @s posX run data get entity 00000000-0000-0000-0000-000000000009 Pos[0]
execute store result score @s posZ run data get entity 00000000-0000-0000-0000-000000000009 Pos[2]

#remain team number record
execute store result score 剩餘隊伍 information run execute if entity @e[tag=ref]

#random chest
execute if score @s random_chest matches 1 run function uhc:apply/random_chest 

#next stage
scoreboard players set @s state 2

#information
execute store result score 剩餘人數 information run execute if entity @a[team=!spec,gamemode=survival]

#start timing
#execute at @e[tag=assist] run summon area_effect_cloud ~ ~ ~ {Tags:[min],Age:-1201,Particle:"block air"}
function uhc:gameloop/check_event