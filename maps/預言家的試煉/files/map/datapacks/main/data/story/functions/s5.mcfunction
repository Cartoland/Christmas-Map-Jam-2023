execute if score s5 story matches 1 run tellraw @p {"text":"【預言學教授】 很棒","bold":true,"color":"gray"}
execute if score s5 story matches 2 run tellraw @p {"text":"【預言學教授】 你成功把機器人擊倒了","bold":true,"color":"gray"}
execute if score s5 story matches 3 run tellraw @p {"text":"【預言學教授】 你充分展現了預言學的技術","bold":true,"color":"gray"}
execute if score s5 story matches 4 run tellraw @p {"text":"【預言學教授】 今天的考試到此為止了","bold":true,"color":"gray"}
execute if score s5 story matches 5 run tellraw @p {"text":"【預言學教授】 我叫機械兵器學的教授來處理一下殘局","bold":true,"color":"gray"}
execute if score s5 story matches 6 run tellraw @p {"text":"【預言學教授】 你可以先離開洞穴了","bold":true,"color":"gray"}
execute if score s5 story matches 7 run title @p title {"text":"恭喜通關","bold":true,"color":"green"}
execute if score s5 story matches 7 run title @p subtitle {"text":"未完待續...","bold":true,"color":"dark_gray"}
execute if score s5 story matches 7 run give @p written_book{pages:["{\"text\":\"嗨你好 我是地圖的作者Gamedier。這是一張map_jam比賽中做出來的地圖，這張地圖目前只是一個半成品，目前只有三個陷阱和六種怪物。 由於我是第一次做這種解謎地圖，所以Debug做了超久，如果有發現新的bug，也歡迎私訊跟我說喔。 最後，如果各位喜歡這張地圖，我會陸陸續續把更多陷阱、怪物出完的owob。\",\"bold\":true,\"color\":\"dark_gray\"}","[\"\",\"OP指令: \",\"\\n\",\"\\n\",\"\\n\",\"1.切換模式 /tag add @s op    \",\"\\n\",\"\\n\",\"2.取得陷阱 /function trap:get/陷阱    \",\"\\n\",\"\\n\",\"3.選擇關卡 /function waves:關卡    \",\"\\n\",\"[注意]再打一次boss是要用/function wave:20/0\"]"],title:"作者自白",author:"Gamedier"}

execute if score s5 story matches 1..6 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s5 story matches ..7 run scoreboard players add s5 story 1 
execute if score s5 story matches ..7 run schedule function story:s5 3s