execute positioned ^ ^1 ^-4 run function mobs:normal/strength/summon_reversed
execute as @e[tag=mobs] run data modify entity @s Rotation set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Rotation
