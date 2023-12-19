execute as @a[tag=system.player] run trigger system.tarot_tower.trigger set -1
scoreboard players operation $selected system.tarot_tower.states = @s system.tarot_tower.trigger
scoreboard players set @a[tag=system.player] system.tarot_tower.trigger 0

execute store result score $reversed system.tarot_tower.states run random value 0..1

data modify storage system:tarot_tower current set value {floor:0}
execute store result storage system:tarot_tower current.floor int 1 run scoreboard players get $current system.tarot_tower.floor
function system:tarot_tower/storage/selected_1 with storage system:tarot_tower current
function system:tarot_tower/storage/set_book with storage system:tarot_tower current

execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run data modify block ~ ~ ~ Book set from storage system:tarot_tower Book
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run playsound minecraft:block.end_portal.spawn block @a ~ ~ ~
