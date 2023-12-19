#刪除展示框&相關聯動點

tag @s add remove
execute as @e[tag=cone] if score @s input = @e[tag=remove,limit=1] input run kill @s
tp @s ~ -10000 ~
tellraw @p[gamemode=creative] {"text":"鍵盤&聯動點已刪除!","bold":true,"color":"dark_red"}

