execute as @e[type=minecraft:skeleton,tag=mobs.strength,tag=mobs.reversed,tag=!mobs.cooldown,scores={mobs.skill_timer=1}] run function mobs:normal/strength/cooldown
execute as @e[type=minecraft:skeleton,tag=mobs.wheel_of_fortune,tag=!mobs.reversed,tag=!mobs.cooldown,scores={mobs.skill_timer=1}] run function mobs:normal/wheel_of_fortune/cooldown
execute as @e[type=minecraft:skeleton,tag=mobs.temperance,scores={mobs.skill_timer=1}] run scoreboard players set @s mobs.utils 0

tag @e[scores={mobs.skill_timer=1}] remove mobs.skill
scoreboard players remove @e[scores={mobs.skill_timer=1..}] mobs.skill_timer 1

tag @e[scores={mobs.cooldown_timer=1}] remove mobs.cooldown
scoreboard players remove @e[scores={mobs.cooldown_timer=1..}] mobs.cooldown_timer 1

execute as @e[scores={mobs.halt_timer=1}] run data modify entity @s NoAI set value 0b
execute as @e[scores={mobs.halt_timer=1}] run attribute @s minecraft:generic.follow_range modifier remove 3d9999ac-0a6c-43a9-a490-a922a8dde5ff
execute as @e[scores={mobs.halt_timer=1}] run tag @s remove mobs.halt
scoreboard players remove @e[scores={mobs.halt_timer=1..}] mobs.halt_timer 1

execute if entity @e[tag=mobs.reviving] run function mobs:common/reviving/tick

###

execute if entity @e[type=minecraft:evoker,tag=mobs.high_priestess] run function mobs:normal/high_priestess/tick
execute as @e[type=minecraft:vex,tag=mobs.high_priestess] unless entity @e[type=minecraft:evoker,tag=mobs.high_priestess] run kill @s
execute if entity @e[type=minecraft:skeleton,tag=mobs.high_priest] run function mobs:normal/high_priest/tick
execute if entity @e[type=minecraft:skeleton,tag=mobs.lovers,tag=mobs.reversed] run function mobs:normal/lovers/tick
execute if entity @e[type=minecraft:skeleton,tag=mobs.strength] run function mobs:normal/strength/tick
execute if entity @e[type=minecraft:skeleton,tag=mobs.wheel_of_fortune] run function mobs:normal/wheel_of_fortune/tick
execute as @e[type=minecraft:silverfish,tag=mobs.wheel_of_fortune] at @s unless entity @e[type=minecraft:skeleton,tag=mobs.wheel_of_fortune,distance=0..1] run tag @s add mobs.delete
execute if entity @e[type=minecraft:skeleton,tag=mobs.hanged_man,tag=mobs.reversed] run function mobs:normal/hanged_man/tick
execute if entity @e[type=minecraft:zombie,tag=mobs.devil,tag=mobs.reversed] run function mobs:normal/devil/tick
kill @e[type=minecraft:horse,tag=mobs.death,predicate=!mobs:common/passengers]
execute if entity @e[tag=mobs.tower] run function mobs:elite/tower/tick
execute if entity @e[type=minecraft:vex,tag=mobs.star,tag=mobs.reversed] run function mobs:elite/star/tick
execute if entity @e[type=minecraft:magma_cube,tag=mobs.moon] run function mobs:elite/moon/tick
execute as @e[type=minecraft:skeleton,tag=mobs.moon_baby] unless entity @e[type=minecraft:magma_cube,tag=mobs.moon] run kill @s
execute if entity @e[type=minecraft:magma_cube,tag=mobs.sun] run function mobs:elite/sun/tick
execute as @e[type=minecraft:magma_cube,tag=mobs.sun_baby] unless entity @e[type=minecraft:magma_cube,tag=mobs.sun] run kill @s

tag @e[type=minecraft:magma_cube,tag=!mobs] add mobs.delete
execute as @e[tag=mobs.delete] at @s run function mobs:common/delete
