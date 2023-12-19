execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=49..60,mobs.reviving.type=99}] run particle minecraft:cloud ~ ~0.3 ~ 0.150 0.150 0.150 0.01 1 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=48,mobs.reviving.type=99}] on vehicle run data modify entity @s height set value 0.95f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=37..48,mobs.reviving.type=99}] run particle minecraft:cloud ~ ~0.475 ~ 0.150 0.2375 0.150 0.01 2 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=36,mobs.reviving.type=99}] on vehicle run data modify entity @s height set value 1.30f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=25..36,mobs.reviving.type=99}] run particle minecraft:cloud ~ ~0.65 ~ 0.150 0.325 0.150 0.01 3 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=24,mobs.reviving.type=99}] on vehicle run data modify entity @s height set value 1.65f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=13..24,mobs.reviving.type=99}] run particle minecraft:cloud ~ ~0.825 ~ 0.150 0.4125 0.150 0.01 4 normal
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=12,mobs.reviving.type=99}] on vehicle run data modify entity @s height set value 2.00f
execute at @e[type=minecraft:marker,scores={mobs.reviving.timer=1..12,mobs.reviving.type=99}] run particle minecraft:cloud ~ ~1.0 ~ 0.150 0.5 0.150 0.01 5 normal
