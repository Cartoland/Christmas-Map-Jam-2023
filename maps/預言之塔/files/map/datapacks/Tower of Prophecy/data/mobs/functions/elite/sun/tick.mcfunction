#declare tag mobs.sun

execute store result score $sunCount mobs.utils if entity @e[type=minecraft:magma_cube,tag=mobs.sun_baby]
execute as @e[type=minecraft:magma_cube,tag=mobs.sun,tag=mobs.reversed,tag=!mobs.skill] at @s run function mobs:elite/sun/skill
execute at @e[type=minecraft:magma_cube,tag=mobs.sun] run particle minecraft:dust_color_transition 0.8671875 0.80859375 0.1640625 2 0.91796875 0.53125 0.265625 ~ ~2 ~ 1 1 1 0.1 10 normal
