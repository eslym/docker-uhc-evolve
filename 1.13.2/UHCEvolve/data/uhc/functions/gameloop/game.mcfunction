###################################################
# UHC Project 
# Name    : game.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism.
###################################################

#damage notifier.
execute as @a[scores={warn=1..}] run function uhc:gameloop/damage

#action bar information.
#execute as @a[gamemode=survival] run title @s actionbar {"text":"","color":"light_purple","bold":true,"extra":[{"text":"中心座標: ("},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posX"}},{"text":","},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posZ"}},{"text":")  擊殺數: "},{"score":{"name":"@s","objective":"temp_kill"}},{"text":"  挖掘石頭數: "},{"score":{"name":"@s","objective":"temp_stone"}}]}
execute as @a[gamemode=!spectator] run title @s actionbar {"text":"","color":"light_purple","bold":true,"extra":[{"text":"中心座標: ("},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posX"}},{"text":","},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posZ"}},{"text":")  擊殺數: "},{"score":{"name":"@s","objective":"temp_kill"}},{"text":"  挖掘石頭數: "},{"score":{"name":"@s","objective":"temp_stone"}}]}

#Y position.
execute as @a[gamemode=survival] store result score @s posY run data get entity @s Pos[1]

#death.
execute as @a[scores={death=1..},gamemode=survival] at @s run function uhc:gameloop/death

#stats
#execute as @a[advancements={uhc:hit_player=true}] run function uhc:apply/hit_player
#execute as @a[advancements={uhc:hit_animal=true}] run function uhc:apply/hit_animal
#execute as @a[advancements={uhc:hit_monster=true}] run function uhc:apply/hit_monster

#spectator
#effect give @a[gamemode=spectator] night_vision 20 0 true

#join game
execute as @a[tag=!game_start] run function uhc:gameloop/join_game

#chunk loader
execute unless entity @a[gamemode=!spectator,nbt={Dimension:0}] run function uhc:gameloop/chunk_loader

#win judge.
execute if score 剩餘隊伍 information matches 1 unless entity @a[tag=win] run function uhc:win

#### option #############################################################################################

#death spectator permission
#execute if entity @s[scores={spec_permission=0}] run effect give @a[gamemode=spectator] blindness 20 0 true

#friend position
#execute if entity @s[scores={friend_pos=1}] run function uhc:apply/friend_pos

#gold head.
execute as @a[scores={gold_head=1..}] at @s run function uhc:apply/gold_head
execute as @a[scores={gh_craft=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:creeper_head"}]}] at @s run function uhc:apply/gh_craft

#night_vision.
execute if score @s night_vision matches 1.. run effect give @a night_vision 999999 0 true
effect give @a[gamemode=spectator] night_vision 999999 0 true

#nether.
execute if score @s nether_open matches ..0 run function uhc:gameloop/event/nether_penalty

#potion_take.
#execute if score @s stewe_get matches 0 run clear @a #uhc:potion

#potion_brew.
execute if score @s potion_brew matches 0 run clear @a #uhc:brew

#potion_regen.
execute if score @s potion_regen matches 0 run clear @a ghast_tear

#potion_reinforce.
execute if score @s potion_reinforce matches 0 as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run data merge entity @s {Item:{id:"minecraft:glowstone"}}

#potion_turtle.
execute if entity @s[scores={potion_turtle=0,potion_brew=1}] run function uhc:apply/potion_turtle

#notch_apple.
execute if score @s notch_apple matches 0 as @a[nbt={Inventory:[{id:"minecraft:enchanted_golden_apple"}]}] run function uhc:apply/notch_apple

#cut clean.
execute if score @s cut_clean matches 1 run function uhc:apply/cut_clean

#monster clean.
#execute if score @s monster_clean matches 2 as @e[type=#uhc:hostile] at @s run tp @s ~ -999999 ~
execute if score @s monster_clean matches 2 run function uhc:gameloop/event/monster/monster_2
#execute if entity @s[scores={monster_clean=2}] run function uhc:gameloop/event/monster/monster_3

#glow.
execute if score @s glowing matches 2 run effect give @a glowing 999999 0 true

#height limit.
execute if score @s sky_limit matches 2 run function uhc:gameloop/event/sky_penalty
execute if score @s ground_limit matches 2 run function uhc:gameloop/event/ground_penalty

#room night vision
#execute if entity @s[scores={room=2}] run effect give @a[gamemode=!spectator] night_vision 999999 0 true

#branch mined penalty.
execute if score @s branch_mine matches 1 as @a[scores={stone_penalty=100}] run function uhc:apply/branch_penalty_effect

#random silverfish.
execute if score @s rand_silverfish matches 1 at @a[scores={silver=1..}] run function uhc:apply/rand_silverfish
#execute as @e[type=item,nbt={Item:{id:"minecraft:debug_stick"}}] at @s run function uhc:apply/rand_silverfish

#random apple.
execute if score @s rand_apple matches 1 at @a[scores={leaf=1..,shear=0}] run function uhc:apply/rand_apple
scoreboard players set @a[scores={shear=1..}] shear 0

#nerf arrow.
execute if score @s nerf_arrow matches 1 as @e[type=arrow,tag=!arrow] run function uhc:apply/nerf_arrow
execute if score @s nerf_arrow matches 1 as @e[type=spectral_arrow,tag=!arrow] run function uhc:apply/nerf_arrow

#random chest penalty.
execute as @e[type=item,nbt={Item:{id:"minecraft:structure_void"}}] at @s run function uhc:apply/random_chest_bad

#battle royale hint.
execute if score @s BR_stage matches 1..8 as @a run function uhc:gameloop/event/battle_royale/self_check 

#fish bucket craft correction
execute as @a[scores={cod=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/cod
execute as @a[scores={salmon=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/salmon
execute as @a[scores={pufferfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/pufferfish
execute as @a[scores={tropicalfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/tropicalfish

############################################################################################

#timer.
execute at @s unless entity @e[tag=min] run function uhc:gameloop/check_event

#information.
scoreboard players operation 現在時間 information = @s timer_min
#execute store result score 剩餘人數 information run execute if entity @a[team=!spec,gamemode=survival]
execute store result score 邊界大小 information run worldborder get
#scoreboard players operation 剩餘隊伍 information = @s remain