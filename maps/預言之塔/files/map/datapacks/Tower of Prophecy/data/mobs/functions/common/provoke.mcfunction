#declare tag mobs.provoke

execute as @e[tag=mobs.provoke] run data modify entity @s AngerTime set value 2147483647
execute as @e[tag=mobs.provoke] at @s run data modify entity @s AngryAt set from entity @p[gamemode=!creative,gamemode=!spectator] UUID
tag @e[tag=mobs.provoke] remove mobs.provoke
