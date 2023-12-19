execute if score time temp matches 10 if score level temp matches 0 run tellraw @a ["",{"text":"歡迎來到","bold":true,"color":"green"},{"text":"『洛基的魔幻之旅』","bold":true,"color":"gold"}]
execute if score time temp matches 30 if score level temp matches 0 run tellraw @a {"text":"這是一個僅限一次的迷你互動體驗。","bold":true,"color":"aqua"}
execute if score time temp matches 50 if score level temp matches 0 run tellraw @a {"text":"請確保過程中所有的選擇都是由自己所決定。","bold":true,"color":"green"}
execute if score time temp matches 70 if score level temp matches 0 run tellraw @a {"text":"並保管好接下來所獲得的物品。","bold":true,"color":"aqua"}
execute if score time temp matches 90 if score level temp matches 0 run tellraw @a {"text":"進入下個房間開始體驗之旅吧。","bold":true,"color":"green"}

execute if score time temp matches 1 if score t temp matches 0 if score level temp matches 1 run title @a title {"text":"【礦物排行】","bold":true,"color":"dark_green"}
execute if score time temp matches 20 if score t temp matches 0 if score level temp matches 1 run tellraw @a {"text":"首先來做個小調查吧，哪種礦物是你跟我最喜歡的礦物呢？","bold":true,"color":"aqua"}
execute if score time temp matches 60 if score t temp matches 0 if score level temp matches 1 run tellraw @a {"text":"先讓我示範這個排行是如何執行的。","bold":true,"color":"green"}
execute if score time temp matches 90 if score t temp matches 0 if score level temp matches 1 run tellraw @a {"text":"第一步，一位玩家選擇兩種礦物。","bold":true,"color":"aqua"}

execute if score time temp matches 90 if score t temp matches 0 if score level temp matches 1 at @e[tag=1,tag=!p,limit=2,sort=random] run summon armor_stand ~ ~5 ~ {Invisible:1b,NoBasePlate:1b,Tags:["ap","pp"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}
execute if score time temp matches 120 if score t temp matches 0 if score level temp matches 1 run tellraw @a {"text":"第二步，另一位玩家淘汰其中一種礦物。","bold":true,"color":"green"}
execute if score time temp matches 120.. if score t temp matches 0 if score level temp matches 1 run title @a actionbar {"text":"[洛基選擇了兩種礦物，請淘汰一種礦物]","bold":true,"color":"dark_green"}
execute if score time temp matches 120.. if score t temp matches 0 if score level temp matches 1 at @e[tag=2] run summon text_display ~ ~-0.5 ~ {Glowing:1b,billboard:"vertical",see_through:1b,Tags:["hh"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[5f,5f,5f]},text:'{"text":"▼","color":"gold","bold":true}',background:0}
execute if score time temp matches 1 if score t temp matches 0 if score level temp matches 2 run tellraw @a {"text":"第三步，兩邊交換，重新開始第一步，直到最後剩下一種礦物。","bold":true,"color":"aqua"}
#execute if score time temp matches 1 if score t temp matches 0 if score level temp matches 2 at @e[tag=1] unless block ~ ~ ~ air run summon text_display ~ ~-0.5 ~ {Glowing:1b,billboard:"vertical",see_through:1b,Tags:["hh"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"▼","color":"gold","bold":true}',background:0}
execute if score time temp matches 1 if score t temp matches 0 if score level temp matches 2 run scoreboard players set t temp 1
execute if score time temp matches 2 if score level temp matches 2 as @e[tag=1] at @s unless block ~ ~-1 ~ air run summon text_display ~ ~-0.5 ~ {Glowing:1b,billboard:"vertical",see_through:1b,Tags:["hh"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[3f,3f,3f]},text:'{"text":"▼","color":"gold","bold":true}',background:0}
execute if score time temp matches 2 if score level temp matches 2 as @e[tag=1] at @s unless block ~ ~-1 ~ air run setblock ~ ~ ~ minecraft:stone_button[face=floor]

execute if score level temp matches 2 run title @a actionbar {"text":"[請選擇兩種礦物]","bold":true,"color":"gold"}
execute if score level temp matches 3 run title @a actionbar {"text":"[等待洛基淘汰礦物]","bold":true,"color":"dark_green"}

execute if score time temp matches 20 if score level temp matches 3 if block 7 -59 -26 emerald_block run summon armor_stand 13 -54 -24 {Invisible:1b,NoBasePlate:1b,Tags:["ap","dp"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}
execute if score time temp matches 20 if score level temp matches 3 if block 13 -59 -26 emerald_block run summon armor_stand 7 -54 -24 {Invisible:1b,NoBasePlate:1b,Tags:["ap","dp"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}
execute if score time temp matches 20 if score level temp matches 3 unless block 7 -59 -26 emerald_block unless block 13 -59 -26 emerald_block at @e[tag=2,limit=1,sort=random] run summon armor_stand ~ ~5 ~ {Invisible:1b,NoBasePlate:1b,Tags:["ap","dp"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}
execute if score level temp matches 4 run scoreboard players set time temp 0
execute if score level temp matches 4 run scoreboard players set level temp 1
execute if score time temp matches 20 if score t temp matches 1 if score level temp matches 1 at @e[tag=1,tag=!p,limit=2,sort=random] run summon armor_stand ~ ~5 ~ {Invisible:1b,NoBasePlate:1b,Tags:["ap","pp"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}
execute if score time temp matches 20.. if score t temp matches 1 if score cl temp matches ..7 if score level temp matches 1 run title @a actionbar {"text":"[洛基選擇了兩種礦物，請淘汰一種礦物]","bold":true,"color":"dark_green"}

execute if score cl temp matches 8 run title @a title {"text":"【結果出爐！】","bold":true,"color":"gold"}
execute if score cl temp matches 8 run title @a subtitle {"text":"《綠寶石》","bold":true,"color":"green"}
execute if score cl temp matches 8 run give @a emerald{display:{Name:'{"text":"❤綠寶石❤","color":"green"}'}} 1
execute if score cl temp matches 8 run tellraw @a ["",{"text":"恭喜","bold":true,"color":"green"},{"text":"《綠寶石》","bold":true,"color":"dark_green"},{"text":"成為最受歡迎礦物！","bold":true,"color":"green"}]
execute if score cl temp matches 8 run tellraw @a [{"text":"本關已完成，準備就緒後即可進入下一個房間。","bold":true,"color":"aqua"}]
execute if score cl temp matches 8 run playsound entity.player.levelup ambient @a
execute if score cl temp matches 8 run setblock 11 -61 -30 minecraft:redstone_torch
execute if score cl temp matches 8 run scoreboard players set cl temp 9

execute if score time temp matches 1 if score level temp matches 10 run tellraw @a {"text":"完成了簡單的調查後，接下來就要稍微考考你了。","bold":true,"color":"green"}
execute if score time temp matches 30 if score level temp matches 10 run tellraw @a {"text":"請先將箱子中的數字隨機擺放到對應的羊毛上。","bold":true,"color":"aqua"}
execute if score time temp matches 50 if score level temp matches 10 run tellraw @a {"text":"依據你選擇的數字不同，這四個顏色將生成一個不一樣的四位數。","bold":true,"color":"green"}
execute if score level temp matches 11 run tellraw @a {"text":"接著請依序將下方擺放完成。","bold":true,"color":"aqua"}
execute if score level temp matches 11 run clone -1 -58 -37 2 -60 -37 5 -60 -37
execute if score level temp matches 11 if block 5 -60 -37 minecraft:yellow_wool run scoreboard players set level temp 13
execute if score level temp matches 13 run title @a actionbar {"text":"[擺放數字於羊毛上]","bold":true,"color":"gold"}
execute if score level temp matches 15 run tellraw @a {"text":"接下來將這四組四位數(黑線)進行相加。","bold":true,"color":"green"}
execute if score level temp matches 15 run tellraw @a {"text":"指令已將運算過後的答案設定成門的密碼。","bold":true,"color":"aqua"}
execute if score level temp matches 15 run scoreboard players set level temp 12

execute if score time temp matches 1 if score level temp matches 20 run tellraw @a {"text":"恭喜過關，不過我想簡單的加法應該是難不倒你。","bold":true,"color":"green"}
execute if score time temp matches 30 if score level temp matches 20 run tellraw @a {"text":"但接下來，可就是高強度的心理博弈了。","bold":true,"color":"aqua"}
execute if score time temp matches 60 if score level temp matches 20 run tellraw @a ["",{"text":"沒錯，從古至今流傳下來的腦力對戰：","bold":true,"color":"green"},{"text":"圈叉遊戲","bold":true,"color":"dark_green"},{"text":"！","bold":true,"color":"green"}]
execute if score time temp matches 120 if score level temp matches 20 run tellraw @a {"text":"其實我也清楚這並沒有甚麼難度，但製作時間有限，就請你陪我下個一盤吧。","bold":true,"color":"aqua"}
execute if score time temp matches 150 if score level temp matches 20 run tellraw @a {"text":"身為作者的優勢選擇先攻，請你不要輕易認輸了。","bold":true,"color":"green"}
execute if score time temp matches 180 if score level temp matches 20 run tellraw @a {"text":"遊戲開始！","bold":true,"color":"red"}
execute if score time temp matches 200 if score level temp matches 20 run summon armor_stand 10 -55 -47 {Invisible:1b,NoBasePlate:1b,Tags:["ap","op"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}
#execute if score time temp matches 210 if score level temp matches 20 run clone 6 -63 -43 14 -63 -51 6 -60 -51
execute if score time temp matches 210.. if score level temp matches 20 run title @a[tag=!wait] actionbar {"text":"[點擊按鈕放置叉叉]","bold":true,"color":"gold"}
title @a[tag=wait] actionbar {"text":"[等待洛基放置圈圈]","bold":true,"color":"dark_green"}
execute if score time temp matches 40 if score level temp matches 21 run function pro:xoxo

execute if score time temp matches 20 if score level temp matches 30 run tellraw @a {"text":"呼～終於結束了，真是場精彩的對決。","bold":true,"color":"aqua"}
execute if score time temp matches 50 if score level temp matches 30 run tellraw @a ["",{"text":"為了方便留下紀錄，先讓我幫你移動到上方，然後","bold":true,"color":"green"},{"text":"務必留下一張截圖","bold":true,"color":"gold"},{"text":"！","bold":true,"color":"green"}]
execute if score time temp matches 50 if score level temp matches 30 at @e[tag=ox,scores={temp=1}] as @e[tag=see,limit=1,sort=nearest] run tag @s add ps
execute if score time temp matches 50 if score level temp matches 30 as @a at @s rotated as @e[tag=ps,limit=1] run tp @s ~ ~ ~ ~ ~
execute if score time temp matches 50 if score level temp matches 30 run ride @p mount @e[tag=ps,limit=1]
execute if score time temp matches 0..50 if score level temp matches 30 run scoreboard players set @a sh 0
execute if score time temp matches 50.. if score level temp matches 30 run title @a actionbar {"text":"[使用【蹲下】回到地面]","bold":true,"color":"gold"}
execute if score @p sh matches 1.. if score level temp matches 30 run scoreboard players set time temp 0
execute if score @p sh matches 1.. if score level temp matches 30 run scoreboard players set level temp 31
execute if score time temp matches 20 if score level temp matches 31 run tellraw @a {"text":"好的，本地圖的互動體驗到此告一段落，感謝遊玩。","bold":true,"color":"aqua"}
execute if score time temp matches 60 if score level temp matches 31 run tellraw @a {"text":"你一定很好奇，這個地圖就這樣？預言在哪裡呢？","bold":true,"color":"green"}
execute if score time temp matches 100 if score level temp matches 31 run tellraw @a {"text":"其實我在遊戲資料夾裡面偷偷藏了個檔案，把final.dat副檔名改為rar後解壓縮。","bold":true,"color":"aqua"}
execute if score time temp matches 140 if score level temp matches 31 run tellraw @a {"text":"你會發現我預言了最後留下來的礦物、隨機組合後相加的密碼、以及最後圈叉的戰況發展。","bold":true,"color":"green"}
execute if score time temp matches 200 if score level temp matches 31 run tellraw @a {"text":"現在，你還相信自由意志存在嗎？","bold":true,"color":"aqua"}
execute if score time temp matches 220 if score level temp matches 31 run tellraw @a {"text":"【THE END】","bold":true,"color":"dark_red"}
execute if score time temp matches 220 if score level temp matches 31 run title @a title {"text":"【THE END】","bold":true,"color":"dark_red"}

#==========

execute if score time temp matches 20 if score level temp matches 40 run tellraw @a {"text":"耶～我的勝利，你是不是粗心了啊。","bold":true,"color":"aqua"}
execute if score time temp matches 50 if score level temp matches 40 run tellraw @a {"text":"雖然有種勝之不武的感覺，但依舊還是感謝你的參與。","bold":true,"color":"green"}
execute if score time temp matches 50 if score level temp matches 40 run give @p book{display:{Name:'{"text":"你\'輸\'了","color":"red","bold":true}'}} 1
execute if score time temp matches 80 if score level temp matches 40 run tellraw @a {"text":"本地圖的互動體驗到此告一段落，感謝遊玩。","bold":true,"color":"aqua"}
execute if score time temp matches 150 if score level temp matches 40 run tellraw @a {"text":"你一定很好奇，這個地圖就這樣？預言在哪裡呢？","bold":true,"color":"green"}
execute if score time temp matches 190 if score level temp matches 40 run tellraw @a {"text":"其實我在遊戲資料夾裡面偷偷藏了個檔案，將final.dat的副檔名改為jpg。","bold":true,"color":"aqua"}
execute if score time temp matches 230 if score level temp matches 40 run tellraw @a {"text":"你會發現我預言了最後留下來的礦物、隨機組合後相加的密碼、以及最後圈叉的勝利者。","bold":true,"color":"green"}
execute if score time temp matches 300 if score level temp matches 40 run tellraw @a {"text":"現在，你還相信自由意志存在嗎？","bold":true,"color":"aqua"}
execute if score time temp matches 310 if score level temp matches 40 run tellraw @a {"text":"【THE END】","bold":true,"color":"dark_red"}
execute if score time temp matches 310 if score level temp matches 40 run title @a title {"text":"【THE END】","bold":true,"color":"dark_red"}

























