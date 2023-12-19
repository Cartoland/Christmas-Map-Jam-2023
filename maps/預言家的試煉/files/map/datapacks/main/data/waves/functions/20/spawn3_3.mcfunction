execute store result score temp determine run random value 1..10
execute if score temp determine matches 1..2 run function waves:20/2_1
execute if score temp determine matches 3..4 run function waves:20/2_2
execute if score temp determine matches 5..6 run function waves:20/2_3
execute if score temp determine matches 7..8 run function waves:20/3_1
execute if score temp determine matches 9..10 run function waves:20/3_2
execute at @a run playsound entity.wither.shoot block @a ~ ~ ~ 1.0 1.0 1.0

scoreboard players add boss1 determine 1
scoreboard players set complete determine 1
schedule function waves:20/start2 3s