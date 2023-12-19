data modify storage system:tarot_tower revert set value {id:""}
$data modify storage system:tarot_tower revert.id set from storage system:tarot_tower floors_data[$(floor)].begin.elite_type
$data modify storage system:tarot_tower floors_data[$(floor)] set value {begin:{elite_type:"",elite_reversed:0b,normal1_type:"",normal1_reversed:0b,normal2_type:"",normal2_reversed:0b}}
data modify storage system:tarot_tower elite_pool append from storage system:tarot_tower revert
