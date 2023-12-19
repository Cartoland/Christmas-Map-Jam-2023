#declare tag mobs.lovers

execute as @e[type=minecraft:skeleton,tag=mobs.lovers_b,tag=mobs.reversed] at @s facing entity @e[limit=1,sort=nearest,type=minecraft:skeleton,tag=mobs.lovers_a,tag=mobs.reversed] feet positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function mobs:normal/lovers/ray_0
execute as @e[type=minecraft:marker,tag=mobs.reviving,scores={mobs.reviving.type=99}] at @s facing entity @e[limit=1,sort=nearest,type=minecraft:skeleton,tag=mobs.lovers,tag=mobs.reversed] feet positioned ~ ~1 ~ positioned ^ ^ ^0.5 run function mobs:normal/lovers/ray_1
