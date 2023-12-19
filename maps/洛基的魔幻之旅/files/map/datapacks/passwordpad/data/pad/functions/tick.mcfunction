
#給予特定tag，若物品被取下則刪除展示框
tag @e[nbt={Item:{tag:{pass:word}}},tag=!password] add password
execute as @e[tag=password] unless entity @s[nbt={Item:{tag:{pass:word}}}] run function pad:remove

#啟用鍵盤
execute as @e[type=minecraft:glow_item_frame,nbt={ItemRotation:1B,Item:{tag:{pass:word}}}] run function pad:select

#顯示粒子(1.選定輸入鍵盤 2.選定聯動點鍵盤 3.所有聯動點
execute as @e[tag=select,tag=!done,tag=!setcone] at @s positioned ^0.06 ^0.06 ^0.11 run particle minecraft:composter ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=setcone] at @s positioned ^ ^ ^0.11 run particle minecraft:wax_on ~ ~ ~ 0 0 0 0 0 force
execute as @e[tag=cone] at @s if entity @a[gamemode=creative,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}},distance=..10] unless entity @e[type=minecraft:shulker,distance=..0.1] run particle minecraft:electric_spark ~ ~0.5 ~ 0 0 0 0 1 force @a[gamemode=creative,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}]

#距離過遠取消選定
execute as @e[tag=select] at @s unless entity @p[distance=0..4] run tag @s remove select

#玩家未拿取聯動裝置設定則取消聯動選取
execute as @e[tag=setcone] if entity @p[gamemode=creative,nbt=!{SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run tag @s remove setcone

#顯示訊息
execute as @a at @s run function pad:message

#點擊鍵盤
execute as @a[scores={code=-1..}] at @s run function pad:click

#設定聯動位置
execute as @e[type=bat,tag=temp] at @s if entity @e[tag=setcone,scores={input=0..}] run function pad:cone

#顯示選取鍵盤密碼
execute if entity @e[tag=setcone,scores={input=0..}] run title @a[gamemode=creative,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] actionbar ["",{"text":"選定鍵盤密碼：","bold":true,"color":"dark_blue"},{"score":{"name":"@e[tag=setcone]","objective":"input"},"bold":true,"color":"gold"}]

#刪除聯動位置
execute as @e[type=bat,tag=temp] at @s if entity @e[tag=cone,tag=!temp,distance=..0.1] run tellraw @p[gamemode=creative,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] {"text":"聯動已刪除!","bold":true,"color":"dark_red"}
execute as @e[type=bat,tag=temp] at @s if entity @e[tag=cone,tag=!temp,distance=..0.1] run kill @e[tag=cone,distance=..0.1]
tp @e[type=bat,tag=temp] ~ -10000 ~

#刪除聯動位置顯示
execute unless entity @e[tag=setcone] as @e[tag=showcone] at @s run tp @s ~ -10000 ~
execute as @e[tag=cone] at @s unless score @s input = @e[tag=setcone,limit=1] input if entity @e[type=minecraft:shulker,distance=..0.1] run tp @e[type=minecraft:shulker,distance=..0.1] ~ -1000 ~

#教學模式
execute as @a[tag=learn] at @s run function pad:learn