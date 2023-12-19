execute if score $reversed system.tarot_tower.states matches 0 run scoreboard players set $world system.tarot_tower.states 1
execute if score $reversed system.tarot_tower.states matches 1 run scoreboard players set $world system.tarot_tower.states -1
scoreboard players operation $world system.tarot_tower.floor = $current system.tarot_tower.floor

data modify storage system:tarot_tower world set value {floor:0}
execute store result storage system:tarot_tower world.floor int 1 run scoreboard players get $current system.tarot_tower.floor
function system:tarot_tower/special/world_1 with storage system:tarot_tower world

title @a subtitle {"text":"特殊選項"}
execute if score $reversed system.tarot_tower.states matches 0 run tellraw @a {"text":"","extra":[{"text":"<系統>","color":"gold"},{"text":" 特殊效果: "},{"text":"本層跳過，並獲得一次重寫命運的機會"}]}
execute if score $reversed system.tarot_tower.states matches 1 run tellraw @a {"text":"","extra":[{"text":"<系統>","color":"gold"},{"text":" 特殊效果: "},{"text":"回到原點，再體驗一次至今為止的命運吧"}]}
