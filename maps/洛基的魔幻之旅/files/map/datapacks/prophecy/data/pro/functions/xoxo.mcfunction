execute as @e[tag=ox] at @s if score @s error = ro temp if block ~ ~ ~ air run summon armor_stand ~ ~5 ~ {Invisible:1b,NoBasePlate:1b,Tags:["ap","op","tt"],ArmorItems:[{},{},{},{id:"minecraft:paper",Count:1b,tag:{CustomModelData:1}}]}


scoreboard players add ro temp 1
execute unless entity @e[tag=tt] run function pro:xoxo