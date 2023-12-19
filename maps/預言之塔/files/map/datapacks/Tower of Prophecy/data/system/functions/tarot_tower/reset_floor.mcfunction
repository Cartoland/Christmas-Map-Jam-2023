tag @e[tag=mobs] add mobs.delete
scoreboard players set $battle system.tarot_tower.states 0

execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,scores={system.tarot_tower.rotation=1}] run setblock ~ ~ ~ minecraft:lectern[facing=north,has_book=true]
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,scores={system.tarot_tower.rotation=2}] run setblock ~ ~ ~ minecraft:lectern[facing=west,has_book=true]
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,scores={system.tarot_tower.rotation=3}] run setblock ~ ~ ~ minecraft:lectern[facing=south,has_book=true]
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,scores={system.tarot_tower.rotation=0}] run setblock ~ ~ ~ minecraft:lectern[facing=east,has_book=true]
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run data modify block ~ ~ ~ Book set from storage system:tarot_tower Book
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ~ ~ ~ minecraft:heavy_weighted_pressure_plate
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ^-1 ^ ^-1 minecraft:heavy_weighted_pressure_plate
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ^1 ^ ^-1 minecraft:air
