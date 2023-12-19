particle minecraft:dust 0.6875 0.1796875 0.1484375 0.6 ~ ~ ~ 0 1000000000 0 1000000000 0 normal
execute positioned ^ ^ ^0.5 as @s[distance=0..16] positioned ~ ~-1 ~ unless entity @e[type=minecraft:skeleton,tag=mobs.lovers_a,distance=0..0.5,tag=mobs.reversed] positioned ~ ~1 ~ run function mobs:normal/lovers/ray_0
