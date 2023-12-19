execute store result score $eliteSize system.tarot_tower.states if data storage system:tarot_tower copied_elite_pool[]
scoreboard players operation $maxIndex system.tarot_tower.states = $eliteSize system.tarot_tower.states
scoreboard players remove $maxIndex system.tarot_tower.states 1

data modify storage system:utils random set value {max:0,min:0,value:0}
execute store result storage system:utils random.max int 1 run scoreboard players get $maxIndex system.tarot_tower.states
function system:utils/get_uniform with storage system:utils random

execute store result score $index system.tarot_tower.states run data get storage system:utils radom.value

data modify storage system:tarot_tower pop set value {index:0,floor:0}
execute store result storage system:tarot_tower pop.index int 1 run scoreboard players get $index system.tarot_tower.states
execute store result storage system:tarot_tower pop.floor int 1 run scoreboard players get $current system.tarot_tower.floor
function system:tarot_tower/storage/pop_elite with storage system:tarot_tower pop

scoreboard players add $count system.tarot_tower.states 1
execute if score $count system.tarot_tower.states matches 1 run function system:tarot_tower/storage/options_elite
