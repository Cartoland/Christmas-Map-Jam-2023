execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=81..100,mobs.reviving.type=1}] run particle minecraft:smoke ~ ~0.15 ~ 0.075 0.075 0.075 0.01 2 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=80,mobs.reviving.type=1}] on vehicle run data modify entity @s height set value 0.475f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=61..80,mobs.reviving.type=1}] run particle minecraft:smoke ~ ~0.2375 ~ 0.075 0.11875 0.075 0.01 4 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=60,mobs.reviving.type=1}] on vehicle run data modify entity @s height set value 0.65f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=41..60,mobs.reviving.type=1}] run particle minecraft:smoke ~ ~0.325 ~ 0.075 0.1625 0.075 0.01 6 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=40,mobs.reviving.type=1}] on vehicle run data modify entity @s height set value 0.825f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=21..40,mobs.reviving.type=1}] run particle minecraft:smoke ~ ~0.4125 ~ 0.075 0.20625 0.075 0.01 8 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=20,mobs.reviving.type=1}] on vehicle run data modify entity @s height set value 1.00f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=1..20,mobs.reviving.type=1}] run particle minecraft:smoke ~ ~0.5 ~ 0.075 0.25 0.075 0.01 10 normal
