execute as @a[tag=system.player] run trigger system.tarot_tower.trigger set -1
scoreboard players set @a[tag=system.player] system.tarot_tower.trigger 0
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run spawnpoint @a[tag=system.player] ~ ~ ~ ~

execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run data remove block ~ ~ ~ Book
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ^-1 ^ ^-1 minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ^1 ^ ^-1 minecraft:air

tp @a[tag=system.player,predicate=!system:tarot_tower/same_floor] @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current]
effect give @a minecraft:instant_health 10 10 true

scoreboard players set $countDown system.tarot_tower.states 60
