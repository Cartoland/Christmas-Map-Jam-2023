execute positioned ~0.25 ~0.75 ~0.25 at @e[tag=4big_bomb,scores={timer=21..}] as @e[distance=..3.25,tag=enemy,tag=!iron] run damage @s 5 out_of_world
execute positioned ~0.25 ~0.75 ~0.25 at @e[tag=4big_bomb,scores={timer=21..}] as @e[distance=..3.25,tag=enemy,tag=iron] run damage @s 1 out_of_world
execute positioned ~0.25 ~ ~0.25 at @e[tag=4big_bomb,scores={timer=21..}] run playsound entity.generic.explode block @a ~ ~ ~ 5.0 1.0 0
execute positioned ~0.25 ~ ~0.25 as @e[tag=4big_bomb,scores={timer=21..}] run kill @s
execute positioned ~0.25 ~ ~0.25 run particle dust 0.8 0.15 0.15 2 ~ ~ ~ 1.6 0 1.6 1.0 500
execute positioned ~0.25 ~ ~0.25 as @e[tag=4big_bomb,scores={timer=1..},limit=1] run schedule function traps:effect/4big_bomb/attack 1t