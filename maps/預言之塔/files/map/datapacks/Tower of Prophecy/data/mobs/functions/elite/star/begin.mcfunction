execute positioned ^ ^1 ^-4 run function mobs:elite/star/summon
execute positioned ^2 ^1 ^-2 run function mobs:elite/star/summon
execute positioned ^-2 ^1 ^-2 run function mobs:elite/star/summon
execute as @e[tag=mobs] run data modify entity @s Rotation set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Rotation
execute as @e[type=minecraft:vex,tag=mobs.star] run data modify entity @s BoundX set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Pos[0]
execute as @e[type=minecraft:vex,tag=mobs.star] run data modify entity @s BoundY set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Pos[1]
execute as @e[type=minecraft:vex,tag=mobs.star] run data modify entity @s BoundZ set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Pos[2]
