scoreboard players set $current system.tarot_tower.floor 0
scoreboard players set $world system.tarot_tower.states -2
function system:tarot_tower/next_floor
tp @a[tag=system.player] @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current]
execute as @a[tag=system.player] at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~
