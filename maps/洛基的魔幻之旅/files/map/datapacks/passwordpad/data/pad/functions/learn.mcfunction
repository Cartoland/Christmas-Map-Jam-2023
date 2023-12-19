#execute unless score .step input matches 0.. run scoreboard players set .step input 0
scoreboard players set .step input 0
execute if entity @s[nbt={Inventory:[{id:"minecraft:bat_spawn_egg",tag:{display:{Name:'{"text":"聯動裝置設定"}'}}}]}] run scoreboard players set .step input 1
execute if entity @e[tag=password] run scoreboard players set .step input 2
execute if entity @e[tag=select] run scoreboard players set .step input 3
execute if entity @e[tag=password,scores={input=0..}] run scoreboard players set .step input 4
execute if entity @e[tag=setcone] run scoreboard players set .step input 5
execute if entity @e[tag=cone] run scoreboard players set .step input 6






execute if score .step input matches 0 unless score .step input = .one input run tellraw @a ["",{"text":"歡迎使用教學模式，本模式將一步步帶你了解【密碼大師】的使用方式","bold":true},"\n",{"text":"請先點選[領取密碼鍵盤與聯動裝置]來獲得物品","bold":true}]
execute if score .step input matches 1 unless score .step input = .one input run tellraw @a ["",{"text":"1.新增鍵盤：將密碼鎖放置於任一位置","bold":true}]
execute if score .step input matches 2 unless score .step input = .one input run tellraw @a ["",{"text":"2.選取鍵盤：右鍵點擊密碼鍵盤(鍵盤將顯示綠色粒子)","bold":true}]
execute if score .step input matches 3 unless score .step input = .one input run tellraw @a ["",{"text":"3.設定密碼：點選數字輸入密碼，輸入完成後點擊[設定密碼]","bold":true},"\n",{"text":"※注意!請勿共用相同密碼於不同密碼鎖，否則單一密碼鎖將會開啟所有相同密碼的聯動點","bold":true}]
execute if score .step input matches 4 unless score .step input = .one input run tellraw @a ["",{"text":"4.設定聯動點：使用【聯動裝置設定】物品右鍵密碼鍵盤(鍵盤將顯示橘色粒子)","bold":true}]
execute if score .step input matches 5 unless score .step input = .one input run tellraw @a ["",{"text":"5.增加聯動點：將【聯動裝置設定】放置於任一位置(密碼輸入正確時則該位置生成紅石火把)","bold":true},"\n",{"text":"※提醒：一個密碼鎖可設置多個聯動點，密碼正確則所有聯動點都會觸發","bold":true}]
execute if score .step input matches 6 unless score .step input = .one input run tellraw @a ["",{"text":"恭喜你成功設置了一個密碼鎖!試試看輸入正確的密碼來確認聯動點是否生成紅石火把","bold":true},"\n",{"text":"※提示：刪除聯動點方式：未選定密碼鎖狀態下使用【聯動裝置設定】放置於先前設置的聯動點即可刪除該聯動點，若要刪除密碼鎖則左鍵該鎖即可，該鎖與其聯動點會一起刪除","bold":true}]
execute if score .step input matches 6 unless score .step input = .one input run tag @a remove learn


scoreboard players operation .one input = .step input