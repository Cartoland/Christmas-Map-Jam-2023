execute store result score @s mobs.utils run data get entity @s Pos[1]
execute store result score $centerY mobs.utils run data get entity @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] Pos[1]
execute if score @s mobs.utils < $centerY mobs.utils run scoreboard players add $centerY mobs.utils 6
execute store result entity @s BoundY int 1 run scoreboard players get $centerY mobs.utils
