scoreboard players add $current system.tarot_tower.floor 1

tag @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.current] remove system.current
execute as @e[type=minecraft:marker,tag=system.tarot_tower] if score @s system.tarot_tower.floor = $current system.tarot_tower.floor run tag @s add system.current
data modify storage system:tarot_tower current set value {floor:0}
execute store result storage system:tarot_tower current.floor int 1 run scoreboard players get $current system.tarot_tower.floor
execute if score $current system.tarot_tower.floor matches 1..10 run function system:tarot_tower/storage/set_book with storage system:tarot_tower current
execute if score $current system.tarot_tower.floor matches 11 run function system:tarot_tower/storage/boss_book

function system:tarot_tower/reset_floor
execute if score $world system.tarot_tower.floor = $current system.tarot_tower.floor if score $world system.tarot_tower.states matches -2..-1 run scoreboard players set $world system.tarot_tower.states 0
