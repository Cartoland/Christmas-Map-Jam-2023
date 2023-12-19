tag @s add mobs.cooldown
scoreboard players set @s mobs.cooldown_timer 300
execute at @s run tag @e[limit=1,sort=nearest,type=minecraft:silverfish,tag=mobs,tag=mobs.wheel_of_fortune,distance=0..1] add mobs.delete
data modify entity @s NoAI set value 0b
