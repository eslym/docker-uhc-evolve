###################################################
# UHC Project 
# Name    : game1.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism 1.
###################################################

#action bar information
execute as @a run title @s actionbar {"text":"","color":"light_purple","bold":true,"extra":[{"text":"中心座標: ("},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posX"}},{"text":","},{"score":{"name":"00000000-0000-0000-0000-000000000001","objective":"posZ"}},{"text":")  擊殺數: "},{"score":{"name":"@s","objective":"temp_kill"}},{"text":"  挖掘石頭數: "},{"score":{"name":"@s","objective":"temp_stone"}}]}

#join game
execute as @a[tag=!game_start] run function uhc:gameloop/join_game

#damage notifier
execute as @a[scores={warn=1..}] run function uhc:gameloop/damage

#potion_take
#execute if score @s potion_get matches 0 run clear @a #uhc:potion

#potion_reinforce
execute if score @s potion_reinforce matches 0 as @e[type=item,nbt={Item:{id:"minecraft:glowstone_dust"}}] run data merge entity @s {Item:{id:"minecraft:glowstone"}}

#nether
execute if score @s nether_open matches ..0 run function uhc:gameloop/event/nether_penalty

#cut clean
execute if score @s cut_clean matches 1 run function uhc:apply/cut_clean

#random apple
execute if score @s rand_apple matches 1 at @a[scores={leaf=1..,shear=0}] run function uhc:apply/rand_apple
scoreboard players set @a[scores={shear=1..}] shear 0

#fish bucket craft correction
execute as @a[scores={pufferfish=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/pufferfish