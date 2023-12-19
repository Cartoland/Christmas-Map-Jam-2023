#declare tag mobs.high_priest

execute as @e[type=minecraft:skeleton,tag=mobs.high_priest,tag=mobs.reversed,tag=!mobs.cooldown] run function mobs:normal/high_priest/skill
