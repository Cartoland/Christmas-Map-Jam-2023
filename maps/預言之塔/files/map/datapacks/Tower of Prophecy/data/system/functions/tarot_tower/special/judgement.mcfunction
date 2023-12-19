execute store result score $judgement system.tarot_tower.states run random value 1..2
execute unless score $judgement system.tarot_tower.states = $selected system.tarot_tower.states run scoreboard players remove $judgement system.tarot_tower.states 1

data modify storage system:tarot_tower judgement set value {index:0,floor:0}
execute store result storage system:tarot_tower judgement.index int 1 run scoreboard players get $judgement system.tarot_tower.states
execute store result storage system:tarot_tower judgement.floor int 1 run scoreboard players get $current system.tarot_tower.floor
function system:tarot_tower/special/judgement_1 with storage system:tarot_tower judgement
function system:tarot_tower/special/judgement_2 with storage system:tarot_tower judgement

title @a subtitle {"text":"特殊選項"}
execute if score $reversed system.tarot_tower.states matches 0 run tellraw @a {"text":"","extra":[{"text":"<系統>","color":"gold"},{"text":" 特殊效果: "},{"text":"","color":"dark_red","bold":true,"extra":[{"storage":"system:tarot_tower","nbt":"special.text","interpret":true},{"text":" · 逆位"}]},{"text":"將成為這層樓的內容"}]}
execute if score $reversed system.tarot_tower.states matches 1 run tellraw @a {"text":"","extra":[{"text":"<系統>","color":"gold"},{"text":" 特殊效果: "},{"text":"","color":"dark_red","bold":true,"extra":[{"storage":"system:tarot_tower","nbt":"special.text","interpret":true},{"text":" · 正位"}]},{"text":"將進入下一個菁英樓層且本樓層跳過"}]}
