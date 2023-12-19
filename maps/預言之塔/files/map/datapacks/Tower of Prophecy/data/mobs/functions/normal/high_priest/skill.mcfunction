effect give @e[type=#minecraft:undead,tag=mobs] instant_damage 1 1
effect give @e[type=!#minecraft:undead,tag=mobs] instant_health 1 1
execute at @e[tag=mobs] run summon minecraft:area_effect_cloud ~ ~0.3 ~ {Potion:"minecraft:healing",Duration:3,Radius:2f,ReapplicationDelay:20}
tag @s add mobs.cooldown
scoreboard players set @s mobs.cooldown_timer 60
