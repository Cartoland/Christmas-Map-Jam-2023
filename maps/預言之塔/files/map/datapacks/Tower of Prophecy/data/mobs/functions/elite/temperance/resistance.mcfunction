execute if score @s mobs.utils matches 1 run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 1.6
execute if score @s mobs.utils matches 1 run particle minecraft:item minecraft:shield ~ ~1 ~ 0.1 0.1 0.1 0.2 4 normal
execute if score @s mobs.utils matches 2 run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 1.4
execute if score @s mobs.utils matches 2 run particle minecraft:item minecraft:shield ~ ~1 ~ 0.1 0.1 0.1 0.2 8 normal
execute if score @s mobs.utils matches 3 run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 1.2
execute if score @s mobs.utils matches 3 run particle minecraft:item minecraft:shield ~ ~1 ~ 0.1 0.1 0.1 0.2 12 normal
execute if score @s mobs.utils matches 4 run playsound minecraft:item.shield.block hostile @a ~ ~ ~ 1 1.0
execute if score @s mobs.utils matches 4 run particle minecraft:item minecraft:shield ~ ~1 ~ 0.1 0.1 0.1 0.2 16 normal

execute if score @s mobs.skill_timer matches 1.. unless score @s mobs.utils matches 4.. run scoreboard players add @s mobs.utils 1
tag @s add mobs.skill
scoreboard players set @s mobs.skill_timer 60

execute if score @s mobs.utils matches 1 run effect give @s minecraft:resistance 3 0
execute if score @s mobs.utils matches 2 run effect give @s minecraft:resistance 3 1
execute if score @s mobs.utils matches 3 run effect give @s minecraft:resistance 3 2
execute if score @s mobs.utils matches 4 run effect give @s minecraft:resistance 3 3
