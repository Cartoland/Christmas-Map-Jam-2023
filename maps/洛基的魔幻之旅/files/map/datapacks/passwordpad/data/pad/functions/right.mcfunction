#輸入正確密碼

#顯示title與聲音
title @s title {"text":"密碼正確!","bold":true,"color":"green"}
playsound minecraft:entity.player.levelup ambient @s ~ ~ ~ 1 2 0

#聯動點生成紅石火把
execute as @e[type=minecraft:marker,tag=cone] at @s if score @s input = @e[tag=select,limit=1] input run setblock ~ ~ ~ minecraft:redstone_torch

#鍵盤給予已完成tag(done)
execute as @e[tag=select] run tag @s add done

#取消選定tag(select)
tag @e remove select
