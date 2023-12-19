execute store result score temp determine run random value 1..5
execute if score temp determine matches 1..2 run function waves:20/1_1
execute if score temp determine matches 3..4 run function waves:20/1_2
execute if score temp determine matches 5 run function waves:20/1_3
execute at @a run playsound entity.wither.shoot block @a ~ ~ ~ 1.0 1.0 1.0

scoreboard players add boss1 determine 1
scoreboard players set complete determine 1
schedule function waves:20/start1 3s