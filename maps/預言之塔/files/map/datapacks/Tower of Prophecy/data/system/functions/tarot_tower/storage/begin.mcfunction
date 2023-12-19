data modify storage system:tarot_tower current set value {floor:0}
execute store result storage system:tarot_tower current.floor int 1 run scoreboard players get $current system.tarot_tower.floor
execute if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=!system:tarot_tower/is_elite_floor] run function system:tarot_tower/storage/begin_normal with storage system:tarot_tower current
execute if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=system:tarot_tower/is_elite_floor] run function system:tarot_tower/storage/begin_elite with storage system:tarot_tower current
