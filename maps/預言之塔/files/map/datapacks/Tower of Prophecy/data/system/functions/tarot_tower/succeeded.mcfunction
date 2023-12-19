scoreboard players set $battle system.tarot_tower.states 0

tag @e[tag=mobs] add mobs.delete
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ^-1 ^ ^-1 minecraft:heavy_weighted_pressure_plate
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ^1 ^ ^-1 minecraft:heavy_weighted_pressure_plate

execute as @a at @s run playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5
title @a subtitle {"text":"第","extra":[{"score":{"name":"$current","objective":"system.tarot_tower.floor"}},{"text":"層"}]}
title @a title {"text":"通過","color":"gold"}

execute if score $current system.tarot_tower.floor matches 11 run function system:tarot_tower/bossfloor_done
execute if score $current system.tarot_tower.floor matches 1..10 run function system:tarot_tower/next_floor

