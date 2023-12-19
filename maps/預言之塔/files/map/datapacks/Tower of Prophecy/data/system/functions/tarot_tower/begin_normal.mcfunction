scoreboard players set $battle system.tarot_tower.states 1
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run spawnpoint @a[tag=system.player] ~ ~ ~ ~

execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current] run setblock ^-1 ^ ^-1 minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ~ ~ ~ minecraft:air
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.exit,tag=system.current] run setblock ^1 ^ ^-1 minecraft:air
$execute if score $true system.utils matches $(reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] run function mobs:normal/$(type)/begin_reversed
$execute if score $false system.utils matches $(reversed) at @e[limit=1,type=minecraft:marker,tag=system.center,tag=system.current] run function mobs:normal/$(type)/begin
