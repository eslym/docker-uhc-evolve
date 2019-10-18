###################################################
# UHC Project 
# Name    : game2.mcfunction 
# Made by : jelly99709 
# Path    : /gameloop/
# Loop    : Yes. Execute as tag=main
# func    : Game machanism 2.
###################################################

#Y position
execute as @a[gamemode=survival] store result score @s posY run data get entity @s Pos[1]

#death
execute as @a[scores={death=1..},gamemode=survival] at @s run function uhc:gameloop/death

#diamond armor take
execute if score @s allow_diamond matches 0 run clear @a #uhc:diamond

#potion_brew
execute if score @s potion_brew matches 0 run clear @a #uhc:brew

#height limit
execute if score @s sky_limit matches 2 run function uhc:gameloop/event/sky_penalty

#monster clean
execute if score @s monster_clean matches 2 as @e[type=#uhc:hostile] at @s run tp @s ~ -999999 ~

#branch mined penalty
execute if score @s branch_mine matches 1 as @a[scores={stone_penalty=100}] run function uhc:apply/branch_penalty_effect

#fish rush
execute if score @s fish_rush matches 1 as @a[nbt={SelectedItem:{id:"minecraft:fishing_rod"}}] unless data entity @s SelectedItem.tag.FishRush run data modify entity @s SelectedItem.tag merge value {FishRush:1}

#fish bucket craft correction
execute as @a[scores={salmon=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/salmon