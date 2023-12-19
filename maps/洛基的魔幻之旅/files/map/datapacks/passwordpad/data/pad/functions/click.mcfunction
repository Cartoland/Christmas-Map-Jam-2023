#點擊鍵盤設定

#聲音
execute as @a[scores={code=1..10}] at @s run playsound minecraft:block.stone_button.click_on ambient @s ~ ~ ~ 0.2 0 0
execute as @a[scores={code=99}] at @s run playsound minecraft:block.stone_button.click_on ambient @s ~ ~ ~ 0.2 1 0
execute as @a[scores={code=-1}] at @s run playsound minecraft:block.stone_button.click_on ambient @s ~ ~ ~ 0.2 2 0

#導入至玩家input分數
execute if score @s code matches 1..10 run scoreboard players operation @s input *= #10 code
execute if score @s code matches 1..9 run scoreboard players operation @s input += @s code

#處理溢出分數
execute if entity @e[tag=select,distance=0..4,nbt={Item:{tag:{pad:4}}}] if score @s input matches 100000.. run scoreboard players operation @s input %= #100000 code
execute if entity @e[tag=select,distance=0..4,nbt={Item:{tag:{pad:3}}}] if score @s input matches 1000.. run scoreboard players operation @s input %= #1000 code

#處理功能鍵(刪除與確認)
execute if score @s code matches -1 run scoreboard players operation @s input /= #10 code
execute if score @s code matches 99 if score @s input = @e[tag=select,limit=1] input run function pad:right
execute if score @s code matches 99 unless score @s input = @e[tag=select,limit=1] input run function pad:error

#重置trigger(code)
scoreboard players reset @s code
scoreboard players enable @s code





