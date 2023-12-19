#declare tag mobs.wheel_of_fortune

execute as @e[type=minecraft:skeleton,tag=mobs.wheel_of_fortune,tag=!mobs.skill,tag=!mobs.cooldown] at @s run function mobs:normal/wheel_of_fortune/check
execute as @e[type=minecraft:skeleton,tag=mobs.wheel_of_fortune,tag=mobs.skill] at @s run function mobs:normal/wheel_of_fortune/rotate
