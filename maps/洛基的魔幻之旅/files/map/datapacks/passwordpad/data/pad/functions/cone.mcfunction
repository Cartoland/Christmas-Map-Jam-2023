#聯動設置(玩家正確輸入後生成紅石火把至特定位置)

#生成marker至聯動位置並同步分數
summon minecraft:marker ~ ~ ~ {Tags:["cone","temp"]}
scoreboard players operation @e[tag=cone,tag=temp] input = @e[tag=setcone] input
summon shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["showcone"],CustomName:'{"text":"聯動點"}'}

#刪除tag
#tag @e remove setcone
tag @e[tag=cone,tag=temp] remove temp

#刪除蝙蝠
tp @s ~ -10000 ~