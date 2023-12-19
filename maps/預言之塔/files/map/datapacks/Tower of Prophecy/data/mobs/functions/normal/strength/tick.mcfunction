#declare tag mobs.strength

execute as @e[type=minecraft:skeleton,tag=mobs.strength,tag=mobs.reversed,tag=!mobs.skill,tag=!mobs.cooldown] run function mobs:normal/strength/check
