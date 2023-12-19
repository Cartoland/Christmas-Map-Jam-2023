#declare tag mobs.moon

execute store result score $moonCount mobs.utils if entity @e[type=minecraft:magma_cube,tag=mobs.moon_baby]
execute as @e[type=minecraft:magma_cube,tag=mobs.moon,tag=!mobs.reversed,tag=!mobs.cooldown] if score $moonCount mobs.utils matches 0..4 at @s run function mobs:elite/moon/summon_baby
execute as @e[type=minecraft:magma_cube,tag=mobs.moon,tag=mobs.reversed,tag=!mobs.cooldown] at @s run function mobs:elite/moon/skill
execute at @e[type=minecraft:magma_cube,tag=mobs.moon] run particle minecraft:dust_color_transition 0.9375 0.9375 0.9375 2 0.26171875 0.26171875 0.26171875 ~ ~2 ~ 1 1 1 0.1 10 normal
execute if entity @e[type=minecraft:magma_cube,tag=mobs.moon,tag=mobs.reversed] run effect give @a[tag=system.player] minecraft:darkness 3 0 true
