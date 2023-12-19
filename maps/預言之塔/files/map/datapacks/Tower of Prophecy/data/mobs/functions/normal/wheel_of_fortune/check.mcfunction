scoreboard players set $if_target mobs.states 0
execute unless data entity @s {NoAI:1b} on target run scoreboard players set $if_target mobs.states 1
execute if data entity @s {NoAI:1b} as @e[limit=1,sort=nearest,type=minecraft:silverfish,tag=mobs,tag=mobs.wheel_of_fortune,distance=0..1] on target run scoreboard players set $if_target mobs.states 1
execute if score $if_target mobs.states matches 1 run function mobs:normal/wheel_of_fortune/skill
execute if score $if_target mobs.states matches 0 run tag @e[limit=1,sort=nearest,type=minecraft:silverfish,tag=mobs,tag=mobs.wheel_of_fortune,distance=0..1] add mobs.delete
execute if score $if_target mobs.states matches 0 run data modify entity @s NoAI set value 0b
