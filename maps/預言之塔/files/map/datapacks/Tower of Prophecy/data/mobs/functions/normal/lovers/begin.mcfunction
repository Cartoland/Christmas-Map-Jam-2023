execute positioned ^ ^1 ^ run function mobs:normal/lovers/summon_b
execute positioned ^ ^1 ^-4 run function mobs:normal/lovers/summon_a
execute as @e[tag=mobs] run data modify entity @s Rotation set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Rotation
