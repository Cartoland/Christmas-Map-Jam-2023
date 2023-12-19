$execute store result storage system:tarot_tower floors_data[$(floor)].selected byte 1 run scoreboard players get $selected system.tarot_tower.states
$execute store result storage system:tarot_tower floors_data[$(floor)].reversed byte 1 run scoreboard players get $reversed system.tarot_tower.states
$execute if score $selected system.tarot_tower.states matches 1 run data modify storage system:tarot_tower floors_data[$(floor)].mobs set from storage system:tarot_tower floors_data[$(floor)].options[0]
$execute if score $selected system.tarot_tower.states matches 2 run data modify storage system:tarot_tower floors_data[$(floor)].mobs set from storage system:tarot_tower floors_data[$(floor)].options[1]
$execute if score $selected system.tarot_tower.states matches 3 run data modify storage system:tarot_tower floors_data[$(floor)].mobs set from storage system:tarot_tower floors_data[$(floor)].options[2]
$function system:tarot_tower/storage/remove_id with storage system:tarot_tower floors_data[$(floor)].mobs

$execute if data storage system:tarot_tower floors_data[$(floor)].mobs{id:"justice"} run function system:tarot_tower/special/justice
$execute if data storage system:tarot_tower floors_data[$(floor)].mobs{id:"judgement"} run function system:tarot_tower/special/judgement
$execute if data storage system:tarot_tower floors_data[$(floor)].mobs{id:"world"} run function system:tarot_tower/special/world

execute if score $current system.tarot_tower.floor matches 1 run function system:tarot_tower/storage/begin_data/floor_1
execute if score $current system.tarot_tower.floor matches 2 run function system:tarot_tower/storage/begin_data/floor_2
execute if score $current system.tarot_tower.floor matches 3 run function system:tarot_tower/storage/begin_data/floor_3
execute if score $current system.tarot_tower.floor matches 4 run function system:tarot_tower/storage/begin_data/floor_4
execute if score $current system.tarot_tower.floor matches 5 run function system:tarot_tower/storage/begin_data/floor_5
execute if score $current system.tarot_tower.floor matches 6 run function system:tarot_tower/storage/begin_data/floor_6
execute if score $current system.tarot_tower.floor matches 7 run function system:tarot_tower/storage/begin_data/floor_7
execute if score $current system.tarot_tower.floor matches 8 run function system:tarot_tower/storage/begin_data/floor_8
execute if score $current system.tarot_tower.floor matches 9 run function system:tarot_tower/storage/begin_data/floor_9
execute if score $current system.tarot_tower.floor matches 10 run function system:tarot_tower/storage/begin_data/floor_10
