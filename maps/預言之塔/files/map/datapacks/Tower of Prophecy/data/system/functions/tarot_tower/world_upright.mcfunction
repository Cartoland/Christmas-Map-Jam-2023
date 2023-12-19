execute as @a[tag=system.player] run trigger system.tarot_tower.trigger set -1
scoreboard players set @a[tag=system.player] system.tarot_tower.trigger 0

data modify storage system:tarot_tower current set value {floor:0}
execute store result storage system:tarot_tower current.floor int 1 run scoreboard players get $current system.tarot_tower.floor
execute store result score $isElite system.tarot_tower.states if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=system:tarot_tower/is_elite_floor]
execute if score $isElite system.tarot_tower.states matches 0 run function system:tarot_tower/storage/revert_normal with storage system:tarot_tower current
execute if score $isElite system.tarot_tower.states matches 1 run function system:tarot_tower/storage/revert_elite with storage system:tarot_tower current

scoreboard players remove $current system.tarot_tower.floor 1
tag @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.current] remove system.current
execute as @e[type=minecraft:marker,tag=system.tarot_tower] if score @s system.tarot_tower.floor = $current system.tarot_tower.floor run tag @s add system.current
execute if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=system:tarot_tower/is_elite_floor] run scoreboard players set $world system.tarot_tower.states 0
execute if score $world system.tarot_tower.states matches 0 run function system:tarot_tower/next_floor
execute if score $world system.tarot_tower.states matches 0 run tp @a[tag=system.player] @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current]
execute if score $world system.tarot_tower.states matches 0 run execute as @a[tag=system.player] at @s run playsound minecraft:block.bell.resonate player @a ~ ~ ~ 1 1.5
execute if score $world system.tarot_tower.states matches 0 run execute as @a[tag=system.player] at @s run playsound minecraft:block.bell.resonate player @a ~ ~ ~ 1 1.5
execute if score $world system.tarot_tower.states matches 1 run function system:tarot_tower/world_upright
