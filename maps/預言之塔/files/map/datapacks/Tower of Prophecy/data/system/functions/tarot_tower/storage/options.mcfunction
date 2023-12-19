execute as @a[tag=system.player] run trigger system.tarot_tower.trigger set -1
scoreboard players set @a[tag=system.player] system.tarot_tower.trigger 0

scoreboard players set $hasSpecial system.tarot_tower.states 0
scoreboard players set $count system.tarot_tower.states 0
data modify storage system:tarot_tower copied_normal_pool set from storage system:tarot_tower normal_pool
data modify storage system:tarot_tower copied_elite_pool set from storage system:tarot_tower elite_pool
data modify storage system:tarot_tower copied_special_pool set from storage system:tarot_tower special_pool
execute if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=!system:tarot_tower/is_elite_floor] run function system:tarot_tower/storage/options_normal
execute if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=system:tarot_tower/is_elite_floor] run function system:tarot_tower/storage/options_elite
#execute if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=!system:tarot_tower/is_elite_floor] if score $current system.tarot_tower.floor matches 3 run function system:tarot_tower/storage/options_debug

data modify storage system:tarot_tower current set value {floor:0}
execute store result storage system:tarot_tower current.floor int 1 run scoreboard players get $current system.tarot_tower.floor
function system:tarot_tower/storage/set_book with storage system:tarot_tower current

execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run data modify block ~ ~ ~ Book set from storage system:tarot_tower Book
execute at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run playsound minecraft:entity.ender_eye.death block @a ~ ~ ~ 1 0.1
title @a subtitle {"text":""}
title @a title {"text":"做出選擇吧","color":"gray"}
