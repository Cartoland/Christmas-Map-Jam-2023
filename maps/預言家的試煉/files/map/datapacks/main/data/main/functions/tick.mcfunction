#防止玩家攻擊他人 / 開其他模式
gamemode adventure @a[tag=!op]
effect give @a weakness infinite 0 true

#計時器
scoreboard players add @e[scores={timer=1..}] timer 1
execute as @e[tag=enemy,nbt={HurtByTimestamp:20}] run data modify entity @s HurtByTimestamp set value 0

#輸贏條件判斷
scoreboard players set enemy_num determine 0
execute as @e[tag=enemy] run scoreboard players add enemy_num determine 1
execute if score in_game determine matches 1 if score enemy_num determine matches 0 run function system:win
execute if score in_game determine matches 1 unless entity @e[tag=base] run function system:lose

#湖羅波釣竿使用
execute as @a[scores={use=1..9}] run function main:use_carrot_on_a_stick
scoreboard players set @a use 0
execute if score in_game determine matches 1 if score boss determine matches 0 run scoreboard players set @a use 10


#敵人預知粒子特效
execute at @e[tag=1zombie,tag=p] run particle dust 0 0.4 0 1.5 ~ ~ ~ 0 0.5 0 1.0 5
execute at @e[tag=2tank,tag=p] run particle dust 0.7 0.3 0 1.5 ~ ~ ~ 0 0.5 0 1.0 5
execute at @e[tag=3small,tag=p] run particle dust 0 0.4 0 0.75 ~ ~ ~ 0.14 0.7 0.14 1.0 20
execute at @e[tag=4smalltank,tag=p] run particle dust 0.7 0.3 0 0.75 ~ ~ ~ 0.14 0.7 0.14 1.0 20
execute at @e[tag=5iron,tag=p] run particle dust 0.5 0.5 0.5 1.5 ~ ~ ~ 0 0.5 0 1.0 5

#管理陣法
function traps:control
execute if score 3bomb timer matches 1.. run scoreboard players remove 3bomb timer 1 
execute if score 4big_bomb timer matches 1.. run scoreboard players remove 4big_bomb timer 1 
execute if score 5thunder timer matches 1.. run scoreboard players remove 5thunder timer 1 