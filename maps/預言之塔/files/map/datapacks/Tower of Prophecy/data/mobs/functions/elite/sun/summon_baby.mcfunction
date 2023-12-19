summon minecraft:magma_cube ~ ~ ~ {Tags:["mobs","mobs.elite","mobs.sun_baby"],Team:"mobs",Size:1,Health:1f,Attributes:[{Name:"minecraft:generic.max_health",Base:1d},{Name:"minecraft:generic.attack_damage",Base:20d},{Name:"minecraft:generic.movement_speed",Base:0.5d}]}
tag @s add mobs.cooldown
scoreboard players set @s mobs.cooldown_timer 100
