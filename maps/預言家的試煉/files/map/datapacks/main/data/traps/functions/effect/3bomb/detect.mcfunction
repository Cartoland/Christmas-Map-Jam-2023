execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..1] run particle dust 0.3 0.3 0.3 1.0 ~ ~ ~ 0.4 0.4 0.4 1.0 100
execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..1] run playsound entity.iron_golem.repair block @a ~ ~ ~ 5.0 1.0 0
execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..1] at @s run function traps:effect/3bomb/attack