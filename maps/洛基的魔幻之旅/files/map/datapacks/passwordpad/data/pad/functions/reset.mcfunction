#重置所有已完成鍵盤與聯動點

execute as @e[tag=cone] at @s run setblock ~ ~ ~ air
tag @e remove done
tellraw @p[gamemode=creative] {"text":"鍵盤&聯動點已重製!","bold":true,"color":"green"}