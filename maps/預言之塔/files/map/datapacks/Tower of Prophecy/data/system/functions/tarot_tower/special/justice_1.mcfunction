$data modify storage system:tarot_tower floors_data[$(floor)].special set from storage system:tarot_tower normal_pool[$(index)]
$execute store success storage system:tarot_tower floors_data[$(floor)].special.reversed byte 1 if score $reversed system.tarot_tower.states matches 0
$data remove storage system:tarot_tower normal_pool[$(index)]
$function system:tarot_tower/special/get_text with storage system:tarot_tower floors_data[$(floor)].special
