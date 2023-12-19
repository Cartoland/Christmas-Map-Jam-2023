tag @a[tag=system.player,scores={system.player_died=1..}] add system.died
gamemode spectator @a[tag=system.player,scores={system.player_died=1..}]

execute as @e[type=minecraft:enderman,tag=mobs.magician] at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] positioned ~ ~3 ~ unless predicate system:tarot_tower/same_floor run tp @s @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current]
execute as @e[type=minecraft:vex,tag=mobs.star] at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] positioned ~ ~3 ~ unless predicate system:tarot_tower/same_floor run function mobs:elite/star/out
execute as @e[type=minecraft:vex,tag=mobs.star] at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] positioned ~ ~3 ~ if predicate system:tarot_tower/same_floor run function mobs:elite/star/in

execute unless entity @e[tag=mobs] unless entity @e[tag=mobs.reviving] run function system:tarot_tower/succeeded
execute unless entity @a[tag=system.player,tag=!system.died] run function system:tarot_tower/failed
