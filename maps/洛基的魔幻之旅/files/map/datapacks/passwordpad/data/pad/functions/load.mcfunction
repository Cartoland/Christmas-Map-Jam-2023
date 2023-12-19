scoreboard objectives add code trigger
scoreboard objectives add input dummy
scoreboard objectives add error dummy
scoreboard players set #10 code 10
scoreboard players set #1000 code 1000
scoreboard players set #10000 code 10000
scoreboard players reset .one input
tag @e[nbt={Item:{tag:{pass:word}}}] remove done
tag @e[nbt={Item:{tag:{pass:word}}}] remove select
tag @a remove learn

tellraw @a[gamemode=creative] ["",{"text":"【密碼大師】","bold":true,"color":"dark_purple"},{"text":" by 邪神洛基","bold":true,"color":"dark_green"},"\n",{"text":"[使用教學]","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/tag @s add learn"},"hoverEvent":{"action":"show_text","contents":[{"text":"步驟化教學模式(限單人)","bold":true}]}},"\n",{"text":"====================","bold":true,"color":"gray"},"\n",{"text":"[領取密碼鍵盤與聯動裝置]","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function pad:givepad"},"hoverEvent":{"action":"show_text","contents":[{"text":"內含3&4位數密碼鎖與聯動裝置","bold":true}]}},"\n",{"text":"[重置已完成鍵盤與聯動點]","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function pad:reset"},"hoverEvent":{"action":"show_text","contents":[{"text":"將所有鍵盤恢復為未開鎖狀態","bold":true},"\n",{"text":"並清空所有聯動點紅石火把","bold":true}]}}]








