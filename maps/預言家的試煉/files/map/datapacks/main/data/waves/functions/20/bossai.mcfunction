#boss 狀態
execute if score boss1 determine matches 0 run data modify entity @e[tag=boss1,limit=1] NoAI set value 1b
execute if score boss1 determine matches 0 run scoreboard players set in_game determine 1
execute if score boss1 determine matches 0 run scoreboard players set s4 story 1
execute if score boss1 determine matches 0 run schedule clear story:s4
execute if score boss1 determine matches 0 run bossbar set boss1 visible true

#第一階段
execute if score boss1 determine matches 0 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1 3s
execute if score boss1 determine matches 1 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1 3s
execute if score boss1 determine matches 1 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1_1 10s
execute if score boss1 determine matches 3 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1 3s
execute if score boss1 determine matches 3 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1_1 10s
execute if score boss1 determine matches 5 if score enemy_num determine matches 1 if score complete determine matches 1 run data modify entity @e[tag=boss1,limit=1] NoAI set value 0b
execute if score boss1 determine matches 5 if score boss_health determine matches ..100 run data modify entity @e[tag=boss1,limit=1] NoAI set value 1b
execute if score boss1 determine matches 5 if score boss_health determine matches ..100 run tp @e[tag=boss1,limit=1] 27.5 113 -9
execute if score boss1 determine matches 5 if score boss_health determine matches ..100 at @a run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 1.0
execute if score boss1 determine matches 5 if score boss_health determine matches ..100 run scoreboard players set boss1 determine 6

#第二階段
execute if score boss1 determine matches 6 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2 5s
execute if score boss1 determine matches 7 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2 3s
execute if score boss1 determine matches 7 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2_2 10s
execute if score boss1 determine matches 9 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2 3s
execute if score boss1 determine matches 9 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2_2 10s
execute if score boss1 determine matches 9 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1 8s
execute if score boss1 determine matches 9 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn1_1 15s
execute if score boss1 determine matches 13 if score enemy_num determine matches 1 if score complete determine matches 1 run data modify entity @e[tag=boss1,limit=1] NoAI set value 0b
execute if score boss1 determine matches 13 if score boss_health determine matches ..50 run data modify entity @e[tag=boss1,limit=1] NoAI set value 1b
execute if score boss1 determine matches 13 if score boss_health determine matches ..50 run tp @e[tag=boss1,limit=1] 27.5 113 -9
execute if score boss1 determine matches 13 if score boss_health determine matches ..50 at @a run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 1.0
execute if score boss1 determine matches 13 if score boss_health determine matches ..50 run scoreboard players set boss1 determine 14

#第三階段
execute if score boss1 determine matches 14 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3 5s
execute if score boss1 determine matches 15 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3 3s
execute if score boss1 determine matches 15 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3_3 10s
execute if score boss1 determine matches 17 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3 3s
execute if score boss1 determine matches 17 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3_3 10s
execute if score boss1 determine matches 17 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2 7.5s
execute if score boss1 determine matches 20 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3 3s
execute if score boss1 determine matches 20 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn3_3 10s
execute if score boss1 determine matches 20 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2 15.5s
execute if score boss1 determine matches 20 if score enemy_num determine matches 1 if score complete determine matches 1 run schedule function waves:20/spawn2_2 15.5s
execute if score boss1 determine matches 24 if score enemy_num determine matches 1 if score complete determine matches 1 run data modify entity @e[tag=boss1,limit=1] NoAI set value 0b

execute if score enemy_num determine matches 1 unless score boss1 determine matches 5 unless score boss1 determine matches 13 unless score boss1 determine matches 24 run scoreboard players set complete determine 0

execute store result bossbar boss1 value run data get entity @e[tag=boss1,limit=1] Health 
execute store result score boss_health determine run data get entity @e[tag=boss1,limit=1] Health 
execute if entity @e[tag=boss1] run schedule function waves:20/bossai 1t
execute unless entity @e[tag=boss1] run schedule function story:s5 1t