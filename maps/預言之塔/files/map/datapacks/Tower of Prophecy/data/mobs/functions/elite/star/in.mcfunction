execute store result score $centerY mobs.utils run data get entity @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] Pos[1]
scoreboard players add $centerY mobs.utils 3
execute store result entity @s BoundY int 1 run scoreboard players get $centerY mobs.utils
