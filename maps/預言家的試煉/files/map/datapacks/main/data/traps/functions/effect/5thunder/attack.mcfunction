execute positioned ~0.25 ~ ~0.25 as @e[distance=..1,tag=enemy,limit=1,sort=nearest] run damage @s[tag=!iron] 10 out_of_world
execute positioned ~0.25 ~ ~0.25 as @e[distance=..1,tag=enemy,limit=1,sort=nearest] run damage @s[tag=iron] 1 out_of_world
execute positioned ~0.25 ~ ~0.25 run effect give @e[distance=..1,tag=enemy,limit=1,sort=nearest] slowness 2 3 false
summon lightning_bolt ~ ~-10 ~
kill @s