data modify storage system:tarot_tower revert set value {id:""}
$data modify storage system:tarot_tower revert.id set from storage system:tarot_tower floors_data[$(floor)].begin.type
$data modify storage system:tarot_tower floors_data[$(floor)] set value {begin:{type:"",reversed:0b}}
data modify storage system:tarot_tower normal_pool append from storage system:tarot_tower revert
