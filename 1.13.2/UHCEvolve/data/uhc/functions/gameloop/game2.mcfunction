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

#potion_brew
execute if score @s potion_brew matches 0 run clear @a #uhc:brew

#potion_turtle
execute if entity @s[scores={potion_turtle=0,potion_get=1,potion_brew=1}] run function uhc:apply/potion_turtle

#height limit
execute if score @s sky_limit matches 2 run function uhc:gameloop/event/sky_penalty

#monster clean
#execute if score @s monster_clean matches 2 as @e[type=#uhc:hostile] at @s run tp @s ~ -999999 ~
execute if score @s monster_clean matches 2 run function uhc:gameloop/event/monster/monster_2
#execute if entity @s[scores={monster_clean=2}] run function uhc:gameloop/event/monster/monster_3

#branch mined penalty
execute if score @s branch_mine matches 1 as @a[scores={stone_penalty=100}] run function uhc:apply/branch_penalty_effect

#fish bucket craft correction
execute as @a[scores={salmon=1..}] if entity @s[nbt={Inventory:[{id:"minecraft:bucket"}]}] run function uhc:apply/fish/salmon