$execute unless data storage system:tarot_tower floors_data[$(floor)].options run data modify storage system:tarot_tower floors_data[$(floor)].options set value []
$data modify storage system:tarot_tower floors_data[$(floor)].options append from storage system:tarot_tower copied_normal_pool[$(index)]
$data remove storage system:tarot_tower copied_normal_pool[$(index)]
