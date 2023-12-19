execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..2] unless score @s trap_trigger matches 1.. run particle dust 0.3 0.3 0.3 1.0 ~ ~ ~ 0.4 0.4 0.4 1.0 100
execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..2] unless score @s trap_trigger matches 1.. run playsound entity.tnt.primed block @a ~ ~ ~ 5.0 1.0 0
execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..2] unless score @s trap_trigger matches 1.. run scoreboard players set @s timer 1
execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..2] unless score @s trap_trigger matches 1.. run function traps:effect/4big_bomb/attack
execute positioned ~0.25 ~ ~0.25 if entity @e[tag=enemy,distance=..2] unless score @s trap_trigger matches 1.. run scoreboard players set @s trap_trigger 1