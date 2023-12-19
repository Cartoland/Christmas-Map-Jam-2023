playsound minecraft:entity.blaze.shoot hostile @a ~ ~2 ~ 1 1
summon minecraft:area_effect_cloud ~ ~0.3 ~ {Radius:5f,Duration:2,Particle:"minecraft:flame"}
execute as @a[distance=0..5,tag=system.player] run damage @s 5 minecraft:fireball
tag @s add mobs.skill
scoreboard players set @s mobs.skill_timer 60
