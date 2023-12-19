scoreboard players set $battle system.tarot_tower.states 1
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run spawnpoint @a[tag=system.player] ~ ~ ~ ~

execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ^-1 ^ ^-1 minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ^1 ^ ^-1 minecraft:air
$execute if score $true system.utils matches $(elite_reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] run function mobs:elite/$(elite_type)/begin_reversed
$execute if score $false system.utils matches $(elite_reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] run function mobs:elite/$(elite_type)/begin
$execute if score $true system.utils matches $(normal1_reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] positioned ^4 ^ ^ run function mobs:normal/$(normal1_type)/begin_reversed
$execute if score $false system.utils matches $(normal1_reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] positioned ^4 ^ ^ run function mobs:normal/$(normal1_type)/begin
$execute if score $true system.utils matches $(normal2_reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] positioned ^-4 ^ ^ run function mobs:normal/$(normal2_type)/begin_reversed
$execute if score $false system.utils matches $(normal2_reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] positioned ^-4 ^ ^ run function mobs:normal/$(normal2_type)/begin
