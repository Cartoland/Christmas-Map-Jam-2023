#與3位數鍵盤互動

#重置
advancement revoke @s only pad:pad3
scoreboard players reset @s input

#鍵盤文字生成
execute if entity @e[type=minecraft:glow_item_frame,nbt={ItemRotation:1B,Item:{tag:{pass:word}}},tag=!done] run tellraw @s ["",{"text":"[請輸入3位數密碼]","bold":true,"color":"dark_green"},"\n",{"text":"╔═╦═╦═╗","color":"gray"},"\n",{"text":"║","color":"gray"},{"text":"①","clickEvent":{"action":"run_command","value":"/trigger code set 1"}},{"text":"║","color":"gray"},{"text":"②","clickEvent":{"action":"run_command","value":"/trigger code set 2"}},{"text":"║","color":"gray"},{"text":"③","clickEvent":{"action":"run_command","value":"/trigger code set 3"}},{"text":"║","color":"gray"},"\n",{"text":"╠═╬═╬═╣","color":"gray"},"\n",{"text":"║","color":"gray"},{"text":"④","clickEvent":{"action":"run_command","value":"/trigger code set 4"}},{"text":"║","color":"gray"},{"text":"⑤","clickEvent":{"action":"run_command","value":"/trigger code set 5"}},{"text":"║","color":"gray"},{"text":"⑥","clickEvent":{"action":"run_command","value":"/trigger code set 6"}},{"text":"║","color":"gray"},"\n",{"text":"╠═╬═╬═╣","color":"gray"},"\n",{"text":"║","color":"gray"},{"text":"⑦","clickEvent":{"action":"run_command","value":"/trigger code set 7"}},{"text":"║","color":"gray"},{"text":"⑧","clickEvent":{"action":"run_command","value":"/trigger code set 8"}},{"text":"║","color":"gray"},{"text":"⑨","clickEvent":{"action":"run_command","value":"/trigger code set 9"}},{"text":"║","color":"gray"},"\n",{"text":"╠═╬═╬═╣","color":"gray"},"\n",{"text":"║","color":"gray"},{"text":"☒","clickEvent":{"action":"run_command","value":"/trigger code set -1"}},{"text":"║","color":"gray"},{"text":"⓪","clickEvent":{"action":"run_command","value":"/trigger code set 10"}},{"text":"║","color":"gray"},{"text":"☑","clickEvent":{"action":"run_command","value":"/trigger code set 99"}},{"text":"║","color":"gray"},"\n",{"text":"╚═╩═╩═╝","color":"gray"}]

#創造模式[設定密碼]文字
tellraw @s[gamemode=creative] ["",{"text":"點選數字設定密碼，完成後請點擊：","bold":true,"color":"dark_green"},{"text":"[設定密碼]","bold":true,"underlined":true,"color":"gold","clickEvent":{"action":"run_command","value":"/function pad:setcode"}}]

#設定互動玩家tag(ser)
tag @s add ser