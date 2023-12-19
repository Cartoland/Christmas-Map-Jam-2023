damage @a[distance=0..2,limit=1,tag=system.player] 12 minecraft:mob_attack by @s

execute store result score @s mobs.utils run data get entity @s Rotation[0]
scoreboard players add @s mobs.utils 30
scoreboard players operation @s mobs.utils %= $360 mobs.utils
execute store result entity @s Rotation[0] float 1 run scoreboard players get @s mobs.utils
data modify entity @s Pos set from entity @e[limit=1,sort=nearest,type=minecraft:silverfish,tag=mobs,tag=mobs.wheel_of_fortune,distance=0..1] Pos
execute positioned ~ ~-0.5 ~ anchored eyes run particle minecraft:sweep_attack ^ ^ ^0.5 0.2 0.2 0.2 1 1 normal
