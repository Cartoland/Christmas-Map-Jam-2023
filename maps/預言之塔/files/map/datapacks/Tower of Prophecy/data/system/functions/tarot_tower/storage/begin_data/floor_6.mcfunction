execute unless data storage system:tarot_tower floors_data[6].special run data modify storage system:tarot_tower floors_data[6].begin.type set from storage system:tarot_tower floors_data[6].mobs.id
execute unless data storage system:tarot_tower floors_data[6].special run data modify storage system:tarot_tower floors_data[6].begin.reversed set from storage system:tarot_tower floors_data[6].reversed
execute if data storage system:tarot_tower floors_data[6].special{reversed:1b} run data modify storage system:tarot_tower floors_data[6].begin.type set from storage system:tarot_tower floors_data[6].special.id
execute if data storage system:tarot_tower floors_data[6].special{reversed:1b} run data modify storage system:tarot_tower floors_data[6].begin.reversed set from storage system:tarot_tower floors_data[6].special.reversed
execute unless data storage system:tarot_tower floors_data[6].special run data modify storage system:tarot_tower floors_data[7].begin.normal2_type set from storage system:tarot_tower floors_data[6].mobs.id
execute unless data storage system:tarot_tower floors_data[6].special run data modify storage system:tarot_tower floors_data[7].begin.normal2_reversed set from storage system:tarot_tower floors_data[6].reversed
execute if data storage system:tarot_tower floors_data[6].special{reversed:0b} run data modify storage system:tarot_tower floors_data[7].begin.normal2_type set from storage system:tarot_tower floors_data[6].special.id
execute if data storage system:tarot_tower floors_data[6].special{reversed:0b} run data modify storage system:tarot_tower floors_data[7].begin.normal2_reversed set from storage system:tarot_tower floors_data[6].special.reversed
