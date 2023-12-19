advancement revoke @s only mobs:elite/sun/attacked

execute as @e[type=minecraft:magma_cube,tag=mobs.sun,tag=!mobs.cooldown,nbt={HurtTime:10s}] at @s run function mobs:elite/sun/summon_baby
