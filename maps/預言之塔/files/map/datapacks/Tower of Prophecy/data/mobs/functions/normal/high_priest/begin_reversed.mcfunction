execute positioned ^ ^1 ^-4 run function mobs:normal/high_priest/summon_reversed
execute positioned ^2 ^1 ^-2 run function mobs:normal/high_priest/summon_servant
execute positioned ^-2 ^1 ^-2 run function mobs:normal/high_priest/summon_servant
execute as @e[tag=mobs] run data modify entity @s Rotation set from entity @e[limit=1,tag=system.tarot_tower,tag=system.center,tag=system.current] Rotation
