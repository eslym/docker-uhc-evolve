###################################################
# UHC Project 
# Name    : start.mcfunction 
# Made by : jelly99709 
# Path    : /
# Loop    : No
# func    : To start game settings.
###################################################

#gamerule
gamerule doDaylightCycle false
gamerule doFireTick false
gamerule doMobSpawning false
gamerule doWeatherCycle false
gamerule announceAdvancements false
gamerule commandBlockOutput false
gamerule sendCommandFeedback false
gamerule logAdminCommands false
gamerule disableElytraMovementCheck true
gamerule spectatorsGenerateChunks false
gamerule spawnRadius 0
defaultgamemode survival
weather clear 1
difficulty hard
time set day

#command region settings
fill ~-1 0 ~-1 ~2 3 ~3 bedrock hollow
fill ~ 1 ~2 ~1 1 ~2 end_portal replace

#armor_stand settings
execute align xz run summon area_effect_cloud ~0.5 1 ~0.5 {Tags:[main,book,lobby,carry],CustomName:"{\"text\":\"§a✔\"}",Duration:2147483647,Particle:"block air",UUIDLeast:1,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~ {Tags:[assist,book,carry],CustomName:"{\"text\":\"§4✘\"}",Duration:2147483647,Particle:"block air",UUIDLeast:2,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~1 ~ ~ {Tags:[sub1,mode,m1],CustomName:"{\"text\":\"§c漸縮\"}",Duration:2147483647,Particle:"block air",UUIDLeast:3,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~1 ~ ~ {Tags:[mode,m2],CustomName:"{\"text\":\"§c競技場\"}",Duration:2147483647,Particle:"block air",UUIDLeast:4,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~1 ~ ~ {Tags:[mode,m3,carry],CustomName:"{\"text\":\"§c隨機縮圈\"}",Duration:2147483647,Particle:"block air",UUIDLeast:11,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~1 {Tags:[sub2,pause,p1,carry],CustomName:"{\"text\":\"§6永晝\"}",Duration:2147483647,Particle:"block air",UUIDLeast:5,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~1 {Tags:[pause,p2,carry],CustomName:"{\"text\":\"§6永夜\"}",Duration:2147483647,Particle:"block air",UUIDLeast:6,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~1 ~ ~1 {Tags:[sub3],Duration:2147483647,Particle:"block air",UUIDLeast:7,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~1 ~2 {Tags:[load],Duration:2147483647,Particle:"block air",UUIDLeast:8,UUIDMost:0,Rotation:[180.0f,0.0f]}
execute at @e[tag=main] run summon area_effect_cloud ~ 255 ~ {Tags:[center],Duration:2147483647,Particle:"block air",UUIDLeast:9,UUIDMost:0}
execute at @e[tag=main] run summon armor_stand ~ 255 ~ {Tags:[move],Invisible:1,Invulnerable:1,Marker:1,Small:1,NoGravity:1,UUIDLeast:12,UUIDMost:0} 
execute at @e[tag=main] run summon armor_stand ~ ~ ~ {Tags:[show,lobby],CustomName:"{\"text\":\"UHC: \",\"color\":\"red\",\"bold\":true,\"extra\":[{\"text\":\"Evolve\",\"color\":\"gold\",\"italic\":true,\"bold\":false}]}",CustomNameVisible:1,NoGravity:1,Marker:0,Invisible:1,Invulnerable:1,Small:1,UUIDLeast:10,UUIDMost:0,DisabledSlots:2096896,ShowArms:1,ArmorItems:[{},{},{},{id:"minecraft:player_head",Count:1b,tag:{SkullOwner:"jelly99709"}}],HandItems:[{id:"trident",Count:1b,tag:{ench:[{id:16,lvl:1}]}},{id:"trident",Count:1b,tag:{ench:[{id:16,lvl:1}]}}],Pose:{LeftArm:[330f,90f,0f],RightArm:[330f,270f,0f]}}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~ {Tags:[weather,w1,carry],CustomName:"{\"text\":\"§8晴朗\"}",Duration:2147483647,Particle:"block air",UUIDLeast:13,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~ {Tags:[weather,w2,carry],CustomName:"{\"text\":\"§8下雨\"}",Duration:2147483647,Particle:"block air",UUIDLeast:14,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~ {Tags:[weather,w3,carry],CustomName:"{\"text\":\"§8雷暴\"}",Duration:2147483647,Particle:"block air",UUIDLeast:15,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~ {Tags:[gh,g1,carry],CustomName:"{\"text\":\"§5標準\"}",Duration:2147483647,Particle:"block air",UUIDLeast:16,UUIDMost:0}
execute at @e[tag=main] run summon area_effect_cloud ~ ~ ~ {Tags:[gh,g2,carry],CustomName:"{\"text\":\"§5快速\"}",Duration:2147483647,Particle:"block air",UUIDLeast:17,UUIDMost:0}

#set world center
execute at @e[tag=main] run tp @e[tag=lobby] ~-0.5 150 ~-0.5
execute at @e[tag=main] run setworldspawn ~ 150 ~
execute at @e[tag=main] run worldborder center ~-0.5 ~-0.5
worldborder set 496

#construct lobby
#execute at @e[tag=main] run fill ~-9 ~-1 ~-9 ~8 ~4 ~8 barrier hollow
#execute at @e[tag=main] run fill ~-8 ~4 ~-8 ~7 ~4 ~7 air replace
execute at @e[tag=main] run setblock ~ ~ ~ structure_block{mode:"LOAD",name:"uhc:new_lobby_13",powered:0,posX:-9,posY:-1,posZ:-9,sizeX:18,sizeY:8,sizeZ:6,ignoreEntities:0,showboundingbox:0} replace
execute at @e[tag=main] run setblock ~ ~1 ~ redstone_block replace

#scoreboard creat
#### state #########################################################
scoreboard objectives add state dummy {"text":"遊戲狀態"}
scoreboard objectives add underclock dummy {"text":"降頻"}
#### book0 #########################################################
scoreboard objectives add random_team_stop dummy {"text":"隨機分隊結束"}
scoreboard objectives add random_team_num dummy {"text":"隨機分隊數量"}
scoreboard objectives add book trigger {"text":"書本設定"}
scoreboard objectives add team_permission dummy {"text":"選隊權限"}
scoreboard objectives add choose_team trigger {"text":"選隊"}
scoreboard objectives add spec_permission dummy {"text":"死亡觀察"}
scoreboard objectives add map_size dummy {"text":"地圖大小"}
#### read map process ###############################################
scoreboard objectives add width_chunk dummy {"text":"邊長區塊數"}
scoreboard objectives add inv_width_chunk dummy {"text":"-邊長區塊數"}
scoreboard objectives add Xchunk dummy {"text":"跑圖X座標區塊單位"}
scoreboard objectives add Zchunk dummy {"text":"跑圖Z座標區塊單位"}
scoreboard objectives add corner dummy {"text":"跑圖轉彎點"}
scoreboard objectives add inv_corner dummy {"text":"-跑圖轉彎點"}
scoreboard objectives add read_map_state dummy {"text":"跑圖狀態"}
#### timer ##########################################################
scoreboard objectives add timer0_25 dummy {"text":"4分之一秒計時器"}
scoreboard objectives add timer_sec dummy {"text":"秒計時器"}
scoreboard objectives add timer_min dummy {"text":"分計時器"}
#### book1 ##########################################################
scoreboard objectives add diff dummy {"text":"遊戲難度"}
scoreboard objectives add slow_fall dummy {"text":"緩降"}
scoreboard objectives add friend_fire dummy {"text":"同隊傷害"}
scoreboard objectives add friend_push dummy {"text":"同隊推擠"}
#scoreboard objectives add friend_pos dummy {"text":"隊友位置"}
scoreboard objectives add tab_health dummy {"text":"tab血量"}
scoreboard objectives add name_health dummy {"text":"名條血量"}
scoreboard objectives add gold_head minecraft.used:minecraft.knowledge_book {"text":"金頭顱"}
scoreboard objectives add gh_mode dummy {"text":"金頭顱模式"}
scoreboard objectives add gh_craft minecraft.crafted:minecraft.creeper_head {"text":"金頭顱合成"}
#scoreboard objectives add first_day dummy {"text":"首日保護"}
scoreboard objectives add night_vision dummy {"text":"夜視效果"}
#### book2 ##########################################################
scoreboard objectives add nether_open dummy {"text":"開放地獄"}
scoreboard objectives add nether_time dummy {"text":"地獄時間"}
scoreboard objectives add stew_get dummy {"text":"可疑的湯"}
scoreboard objectives add potion_brew dummy {"text":"釀造藥水"}
scoreboard objectives add potion_regen dummy {"text":"回復藥水"}
scoreboard objectives add potion_reinforce dummy {"text":"二級藥水"}
scoreboard objectives add potion_turtle dummy {"text":"龜仙藥水"}
scoreboard objectives add notch_apple dummy {"text":"附魔金蘋果"}
scoreboard objectives add cut_clean dummy {"text":"物品免燒"}
scoreboard objectives add advance_announce dummy {"text":"成就通知"}
#### book3 ##########################################################
scoreboard objectives add border_on dummy {"text":"啟動邊界模式"}
scoreboard objectives add border_mode dummy {"text":"邊界模式"}
scoreboard objectives add border_start dummy {"text":"邊界啟動時間"}
scoreboard objectives add border_move dummy {"text":"收縮持續時間"}
scoreboard objectives add border_end dummy {"text":"邊界最終大小"}
scoreboard objectives add BR_cool_time dummy {"text":"隨機縮圈冷卻時間"}
scoreboard objectives add BR_shrink_time dummy {"text":"隨機縮圈收縮時間"}
scoreboard objectives add day_stop dummy {"text":"日夜暫停"}
scoreboard objectives add day_mode dummy {"text":"暫停模式"}
scoreboard objectives add day_time dummy {"text":"暫停時間"}
scoreboard objectives add monster_clean dummy {"text":"清怪"}
scoreboard objectives add monster_time dummy {"text":"清怪時間"}
scoreboard objectives add hide_name dummy {"text":"隱藏名條"}
scoreboard objectives add hide_time dummy {"text":"隱藏時間"}
scoreboard objectives add glowing dummy {"text":"發光"}
scoreboard objectives add glow_time dummy {"text":"發光時間"}
#### book4 ##########################################################
scoreboard objectives add weather_fix dummy {"text":"固定天氣"}
scoreboard objectives add weather_mode dummy {"text":"天氣狀態"}
scoreboard objectives add weather_time dummy {"text":"天氣時間"}
scoreboard objectives add sky_limit dummy {"text":"禁空"}
scoreboard objectives add sky_time dummy {"text":"禁空時間"}
scoreboard objectives add sky_height dummy {"text":"禁空高度"}
scoreboard objectives add ground_limit dummy {"text":"禁地"}
scoreboard objectives add ground_time dummy {"text":"禁地時間"}
scoreboard objectives add ground_height dummy {"text":"禁地高度"}
scoreboard objectives add room dummy {"text":"小房間"}
scoreboard objectives add room_time dummy {"text":"小房間時間"}
#### book5 ##########################################################
scoreboard objectives add branch_mine dummy {"text":"魚骨"}
scoreboard objectives add branch_limit dummy {"text":"魚骨限制"}
scoreboard objectives add rand_silverfish dummy {"text":"隨機蠹魚"}
scoreboard objectives add rand_apple dummy {"text":"隨機金蘋果"}
scoreboard objectives add reverse_craft dummy {"text":"分解金裝"}
scoreboard objectives add saddle dummy {"text":"合成馬鞍"}
scoreboard objectives add fish_bucket dummy {"text":"合成魚桶"}
scoreboard objectives add nerf_arrow dummy {"text":"弓箭削弱"}
scoreboard objectives add random_chest dummy {"text":"隨機物資箱"}
scoreboard objectives add chest_num dummy {"text":"物資箱數量"}
#### stats ############################################################
scoreboard objectives add information dummy {"text":"遊戲資訊","color":"gold","italic":true}
scoreboard objectives add health health {"text":"血量"}
scoreboard objectives add death deathCount {"text":"死亡"}
#####
scoreboard objectives add temp_kill playerKillCount {"text":"殺人數量"}
scoreboard objectives add temp_stone minecraft.mined:minecraft.stone {"text":"挖掘石頭"}
scoreboard objectives add temp_diamond minecraft.mined:minecraft.diamond_ore {"text":"挖掘鑽石"}
scoreboard objectives add temp_gold minecraft.mined:minecraft.gold_ore {"text":"挖掘黃金"}
scoreboard objectives add temp_apple minecraft.used:minecraft.golden_apple {"text":"使用金蘋果"}
scoreboard objectives add temp_hurt minecraft.custom:minecraft.damage_taken {"text":"受到傷害"}
scoreboard objectives add temp_absorb minecraft.custom:minecraft.damage_absorbed {"text":"吸收傷害"}
#scoreboard objectives add temp_hit minecraft.custom:minecraft.damage_dealt {"text":"近戰傷害"}
#scoreboard objectives add temp_hit dummy {"text":"對玩家近戰傷害"}
#scoreboard objectives add temp_hit_m dummy {"text":"對怪物近戰傷害"}
#####
#scoreboard objectives add hit_adv_buffer minecraft.custom:minecraft.damage_dealt {"text":"傷害暫存器"}
#####
scoreboard objectives add final_kill dummy {"text":"最終殺人數量"}
scoreboard objectives add final_stone dummy {"text":"最終挖掘石頭"}
scoreboard objectives add final_gold dummy {"text":"最終挖掘黃金"}
scoreboard objectives add final_apple dummy {"text":"最終使用金蘋果(1金頭顱=2金蘋果)"}
scoreboard objectives add final_diamond dummy {"text":"最終挖掘鑽石"}
scoreboard objectives add final_hurt dummy {"text":"最終受到傷害"}
#scoreboard objectives add final_hit dummy {"text":"最終近戰傷害(含生物)"}
#scoreboard objectives add final_hit_m dummy {"text":"最終近戰傷害(對怪物)"}
#####
scoreboard objectives add warn minecraft.custom:minecraft.damage_taken {"text":"受到傷害(通知)"}
#### position ################################################################
scoreboard objectives add posX dummy {"text":"X座標"}
scoreboard objectives add posY dummy {"text":"Y座標"}
scoreboard objectives add posZ dummy {"text":"Z座標"}
#### other ####################################################################
#scoreboard objectives add remain dummy {"text":"剩餘隊伍"}
scoreboard objectives add I dummy {"text":"常數1"}
scoreboard objectives add V dummy {"text":"常數5"}
scoreboard objectives add X dummy {"text":"常數10"}
scoreboard objectives add XIII dummy {"text":"常數13"}
scoreboard objectives add uuid dummy {"text":"UUID"}
scoreboard objectives add sky_notifier dummy {"text":"制空提醒"}
scoreboard objectives add gnd_notifier dummy {"text":"遁地提醒"}
scoreboard objectives add nether_notifier dummy {"text":"地獄提醒"}
#scoreboard objectives add think dummy {"text":"低頭時間"}
scoreboard objectives add stone_penalty minecraft.mined:minecraft.stone {"text":"石頭懲罰"}
scoreboard objectives add silver minecraft.mined:minecraft.stone {"text":"蠹魚生成"}
scoreboard objectives add leaf minecraft.mined:minecraft.oak_leaves {"text":"破壞樹葉"}
scoreboard objectives add shear minecraft.used:minecraft.shears {"text":"使用剪刀"}
#### battle royale border ####################################################
scoreboard objectives add BR_move dummy {"text":"中心移動狀態"}
scoreboard objectives add BR_xdiff dummy {"text":"X距離差"}
scoreboard objectives add BR_zdiff dummy {"text":"Z距離差"}
scoreboard objectives add BR_factor dummy {"text":"整數化因數"}
scoreboard objectives add BR_stage dummy {"text":"BR階段"}
#scoreboard objectives add BR_size dummy {"text":"縮圈大小"}
scoreboard objectives add n_I dummy {"text":"常數-1"}
#### fish bucket #############################################################
scoreboard objectives add cod minecraft.crafted:minecraft.cod_bucket {"text":"鱈魚桶"}
scoreboard objectives add salmon minecraft.crafted:minecraft.salmon_bucket {"text":"鮭魚桶"}
scoreboard objectives add pufferfish minecraft.crafted:minecraft.pufferfish_bucket {"text":"河豚桶"}
scoreboard objectives add tropicalfish minecraft.crafted:minecraft.tropical_fish_bucket {"text":"熱帶魚桶"}

#scoreboard initiallize
scoreboard players set @e[tag=main] underclock 0
#### book0 ##########################################################
scoreboard players set @e[tag=main] random_team_stop 1
scoreboard players set @e[tag=main] random_team_num 7
scoreboard players set @e[tag=main] rteam_start 0
scoreboard players set @e[tag=main] team_permission 1
scoreboard players set @e[tag=assist] team_permission 0
scoreboard players set @e[tag=main] spec_permission 1
scoreboard players set @e[tag=assist] spec_permission 0
scoreboard players set @e[tag=main] map_size 496
#### read map process ###############################################
scoreboard players set @e[tag=main] XVI 16
scoreboard players set @e[tag=main] II 2
scoreboard players set @e[tag=main] width_chunk 15
scoreboard players set @e[tag=main] Xchunk 0
scoreboard players set @e[tag=main] Zchunk 0
scoreboard players set @e[tag=main] corner 1
scoreboard players set @e[tag=main] inv_corner -1
scoreboard players set @e[tag=main] read_map_state 0
#### timer ##########################################################
scoreboard players set @e[tag=main] timer0_25 5
scoreboard players set @e[tag=main] timer_sec 11
scoreboard players set @e[tag=main] timer_min -1
#### book1 ##########################################################
scoreboard players set @e[tag=main] diff 3
scoreboard players set @e[tag=main] slow_fall 0
scoreboard players set @e[tag=assist] slow_fall 1
scoreboard players set @e[tag=main] tab_health 1
scoreboard players set @e[tag=assist] tab_health 0
scoreboard players set @e[tag=main] friend_fire 1
scoreboard players set @e[tag=assist] friend_fire 0
scoreboard players set @e[tag=main] friend_push 1
scoreboard players set @e[tag=assist] friend_push 0
#scoreboard players set @e[tag=main] friend_pos 1
#scoreboard players set @e[tag=assist] friend_pos 0
scoreboard players set @e[tag=main] name_health 1
scoreboard players set @e[tag=assist] name_health 0
scoreboard players set @e[tag=main] gold_head 1
scoreboard players set @e[tag=assist] gold_head 0
scoreboard players set @e[tag=g1] gh_mode 1
scoreboard players set @e[tag=g2] gh_mode 0
#scoreboard players set @e[tag=main] first_day 1
#scoreboard players set @e[tag=assist] first_day 0
scoreboard players set @e[tag=main] night_vision 0
scoreboard players set @e[tag=assist] night_vision 1
#### book2 ##########################################################
scoreboard players set @e[tag=main] nether_open 1
scoreboard players set @e[tag=assist] nether_open 0
scoreboard players set @e[tag=main] nether_time 80
scoreboard players set @e[tag=main] stew_get 1
scoreboard players set @e[tag=assist] stew_get 0
scoreboard players set @e[tag=main] potion_brew 0
scoreboard players set @e[tag=assist] potion_brew 1
scoreboard players set @e[tag=main] potion_regen 0
scoreboard players set @e[tag=assist] potion_regen 1
scoreboard players set @e[tag=main] potion_reinforce 1
scoreboard players set @e[tag=assist] potion_reforce 0
scoreboard players set @e[tag=main] potion_turtle 0
scoreboard players set @e[tag=assist] potion_turtle 1
scoreboard players set @e[tag=main] notch_apple 0
scoreboard players set @e[tag=assist] notch_apple 1
scoreboard players set @e[tag=main] cut_clean 0
scoreboard players set @e[tag=assist] cut_clean 1
scoreboard players set @e[tag=main] advance_announce 1
scoreboard players set @e[tag=assist] advance_announce 0
#### book3 ##########################################################
scoreboard players set @e[tag=main] border_on 1
scoreboard players set @e[tag=assist] border_on 0
scoreboard players set @e[tag=m1] border_mode 0
scoreboard players set @e[tag=m2] border_mode 2
scoreboard players set @e[tag=m3] border_mode 1
scoreboard players set @e[tag=main] border_start 70
scoreboard players set @e[tag=main] border_move 30
scoreboard players set @e[tag=main] border_end 16
scoreboard players set @e[tag=main] BR_cool_time 2
scoreboard players set @e[tag=main] BR_shrink_time 5
scoreboard players set @e[tag=main] day_stop 1
scoreboard players set @e[tag=assist] day_stop 0
scoreboard players set @e[tag=p1] day_mode 1
scoreboard players set @e[tag=p2] day_mode 0
scoreboard players set @e[tag=main] day_time 80
scoreboard players set @e[tag=main] monster_clean 1
scoreboard players set @e[tag=assist] monster_clean 0
scoreboard players set @e[tag=main] monster_time 80 
scoreboard players set @e[tag=main] hide_name 1
scoreboard players set @e[tag=assits] hide_name 0
scoreboard players set @e[tag=main] hide_time 20
scoreboard players set @e[tag=main] glowing 1
scoreboard players set @e[tag=assist] glowing 0
scoreboard players set @e[tag=main] glow_time 80
#### book4 ##########################################################
scoreboard players set @e[tag=main] weather_fix 1
scoreboard players set @e[tag=assist] weather_fix 0
scoreboard players set @e[tag=w1] weather_mode 1
scoreboard players set @e[tag=w2] weather_mode 0
scoreboard players set @e[tag=w3] weather_mode 2
scoreboard players set @e[tag=main] weather_time 80
scoreboard players set @e[tag=main] sky_limit 1
scoreboard players set @e[tag=assist] sky_limit 0
scoreboard players set @e[tag=main] sky_time 80
scoreboard players set @e[tag=main] sky_height 75
scoreboard players set @e[tag=main] ground_limit 1
scoreboard players set @e[tag=assist] ground_limit 0
scoreboard players set @e[tag=main] ground_time 80
scoreboard players set @e[tag=main] ground_height 55
scoreboard players set @e[tag=main] room 0
scoreboard players set @e[tag=assist] room 1
scoreboard players set @e[tag=main] room_time 100
#### book5 ##########################################################
scoreboard players set @e[tag=main] branch_mine 1
scoreboard players set @e[tag=assist] branch_mine 0
scoreboard players set @e[tag=main] branch_limit 800
scoreboard players set @e[tag=main] rand_silverfish 0
scoreboard players set @e[tag=assist] rand_silverfish 1
scoreboard players set @e[tag=main] rand_apple 0
scoreboard players set @e[tag=assist] rand_apple 1
scoreboard players set @e[tag=main] reverse_craft 1
scoreboard players set @e[tag=assist] reverse_craft 0
scoreboard players set @e[tag=main] saddle 1
scoreboard players set @e[tag=assist] saddle 0
scoreboard players set @e[tag=main] fish_bucket 1
scoreboard players set @e[tag=assist] fish_bucket 0
scoreboard players set @e[tag=main] nerf_arrow 1
scoreboard players set @e[tag=assist] nerf_arrow 0
scoreboard players set @e[tag=main] random_chest 0
scoreboard players set @e[tag=assist] random_chest 1
scoreboard players set @e[tag=main] chest_num 20
#### battleroyale ####################################################
scoreboard players set @e[tag=main] BR_move 0
scoreboard players set @e[tag=main] BR_stage 0
scoreboard players set @e[tag=main] BR_factor 20
#### constant ########################################################
scoreboard players set const1 I 1
scoreboard players set const5 V 5
scoreboard players set const10 X 10
scoreboard players set const13 XIII 13
scoreboard players set negative_I n_I -1

#team creat
team add solo
team add spec
team add red
team add blue
team add green
team add yellow
team add purple
team add gray
team add red_dark
team add blue_dark
team add green_dark
team add gold
team add aqua
team add aqua_dark
team add pink
team add gray_dark
team add winner

#team color
team modify solo color white
team modify spec color black
team modify red color red
team modify blue color blue
team modify green color green
team modify yellow color yellow
team modify purple color dark_purple
team modify gray color gray
team modify red_dark color dark_red
team modify blue_dark color dark_blue
team modify green_dark color dark_green
team modify gold color gold
team modify aqua color aqua
team modify aqua_dark color dark_aqua
team modify pink color light_purple
team modify gray_dark color dark_gray

#bossbar
bossbar add uhc:read_progress {"text":"跑圖進度"}
bossbar set uhc:read_progress color green
bossbar set uhc:read_progress visible false
bossbar add uhc:safe_x {"text":"X軸: 安全區內"}
bossbar set uhc:safe_x color green
bossbar set uhc:safe_x value 100
bossbar set uhc:safe_x visible false
bossbar add uhc:danger_x {"text":"X軸: 安全區外"}
bossbar set uhc:danger_x color red
bossbar set uhc:danger_x value 100
bossbar set uhc:danger_x visible false
bossbar add uhc:safe_z {"text":"Z軸: 安全區內"}
bossbar set uhc:safe_z color green
bossbar set uhc:safe_z value 100
bossbar set uhc:safe_z visible false
bossbar add uhc:danger_z {"text":"Z軸: 安全區外"}
bossbar set uhc:danger_z color red
bossbar set uhc:danger_z value 100
bossbar set uhc:danger_z visible false

#info settings
scoreboard objectives setdisplay sidebar information

#next stage: lobby
scoreboard players set @e[tag=main] state 1