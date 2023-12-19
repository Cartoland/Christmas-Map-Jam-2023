#declare tag mobs.temperance

advancement revoke @s only mobs:elite/temperance/attacked
effect give @s minecraft:weakness 3 0 false

execute as @e[type=minecraft:skeleton,tag=mobs.temperance,tag=mobs.reversed,nbt={HurtTime:10s}] at @s run function mobs:elite/temperance/resistance
