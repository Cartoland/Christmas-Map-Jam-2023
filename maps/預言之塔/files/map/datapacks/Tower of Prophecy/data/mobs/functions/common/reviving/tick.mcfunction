execute as @e[type=#minecraft:mobs,tag=mobs.reviving,tag=!mobs.reviving.set] at @s run function mobs:common/reviving/set
execute as @e[type=minecraft:marker,tag=mobs.reviving,predicate=!mobs:common/vehicle] at @s run function mobs:common/reviving/core
execute as @e[type=minecraft:marker,tag=mobs.reviving.core,predicate=!mobs:common/reviving/base] run function mobs:common/kill_below
execute if entity @e[type=minecraft:marker,scores={mobs.reviving.type=0}] run function mobs:common/reviving/tick_0
execute if entity @e[type=minecraft:marker,scores={mobs.reviving.type=1}] run function mobs:common/reviving/tick_1
execute if entity @e[type=minecraft:marker,scores={mobs.reviving.type=99}] run function mobs:common/reviving/tick_99
execute as @e[type=minecraft:marker,scores={mobs.reviving.timer=0}] run function mobs:common/reviving/revive with entity @s data
scoreboard players remove @e[type=minecraft:marker,scores={mobs.reviving.timer=1..}] mobs.reviving.timer 1
