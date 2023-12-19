data modify storage system:tarot_tower book_content set value {}
$data modify storage system:tarot_tower book_content.plot set from storage system:tarot_tower plots[$(floor)]
$execute unless data storage system:tarot_tower floors_data[$(floor)].options run function system:tarot_tower/storage/command_1
$execute if data storage system:tarot_tower floors_data[$(floor)].options run function system:tarot_tower/storage/command_2

$execute store result score $book_selected system.tarot_tower.states run data get storage system:tarot_tower floors_data[$(floor)].selected
$execute store result score $book_reversed system.tarot_tower.states run data get storage system:tarot_tower floors_data[$(floor)].reversed

execute if score $world system.tarot_tower.states matches 1 if entity @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current,predicate=system:tarot_tower/is_elite_floor] run data modify storage system:tarot_tower book_content.world set value '{"text":"我想要重寫我的命運","color":"gray","italic":true,"clickEvent":{"action":"run_command","value":"/trigger system.tarot_tower.trigger set 22"}}'

execute if score $book_reversed system.tarot_tower.states matches 0 run data modify storage system:tarot_tower book_content.state set from storage system:tarot_tower data.upright
execute if score $book_reversed system.tarot_tower.states matches 1 run data modify storage system:tarot_tower book_content.state set from storage system:tarot_tower data.reversed

execute if score $book_selected system.tarot_tower.states matches 0 run function system:tarot_tower/storage/set_book_0
execute if score $book_selected system.tarot_tower.states matches 1 run function system:tarot_tower/storage/set_book_1
execute if score $book_selected system.tarot_tower.states matches 2 run function system:tarot_tower/storage/set_book_2
execute if score $book_selected system.tarot_tower.states matches 3 run function system:tarot_tower/storage/set_book_3
