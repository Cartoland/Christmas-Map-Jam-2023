execute store result score $normalSize system.tarot_tower.states if data storage system:tarot_tower normal_pool[]
execute if score $current system.tarot_tower.floor matches 1 run scoreboard players set $specialSize system.tarot_tower.states 0
scoreboard players operation $maxIndex system.tarot_tower.states = $normalSize system.tarot_tower.states
scoreboard players remove $maxIndex system.tarot_tower.states 1

data modify storage system:utils random set value {max:0,min:0,value:0}
execute store result storage system:utils random.max int 1 run scoreboard players get $maxIndex system.tarot_tower.states
function system:utils/get_uniform with storage system:utils random

data modify storage system:tarot_tower justice set value {index:0,floor:0}
data modify storage system:tarot_tower justice.index set from storage system:utils radom.value
execute store result storage system:tarot_tower justice.floor int 1 run scoreboard players get $current system.tarot_tower.floor
function system:tarot_tower/special/justice_1 with storage system:tarot_tower justice

title @a subtitle {"text":"特殊選項"}
execute if score $reversed system.tarot_tower.states matches 0 run tellraw @a {"text":"","extra":[{"text":"<系統>","color":"gold"},{"text":" 特殊效果: "},{"text":"","color":"dark_red","bold":true,"extra":[{"storage":"system:tarot_tower","nbt":"special.text","interpret":true},{"text":" · 逆位"}]},{"text":"將成為這層樓的內容"}]}
execute if score $reversed system.tarot_tower.states matches 1 run tellraw @a {"text":"","extra":[{"text":"<系統>","color":"gold"},{"text":" 特殊效果: "},{"text":"","color":"dark_red","bold":true,"extra":[{"storage":"system:tarot_tower","nbt":"special.text","interpret":true},{"text":" · 正位"}]},{"text":"將進入下一個菁英樓層且本樓層跳過"}]}
