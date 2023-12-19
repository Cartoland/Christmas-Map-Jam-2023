#declare tag mobs.star

execute as @e[type=minecraft:vex,tag=mobs.star,tag=mobs.reversed,tag=!mobs.cooldown] run function mobs:elite/star/check
