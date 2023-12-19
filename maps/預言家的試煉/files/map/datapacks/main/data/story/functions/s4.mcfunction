execute if score s4 story matches 1 run tellraw @p {"text":"(洞穴外傳來不妙的聲音)","bold":true,"color":"dark_gray"}
execute if score s4 story matches 2 run tellraw @p {"text":"【預言學教授】 又闖進來了嗎? 真是的","bold":true,"color":"gray"}
execute if score s4 story matches 3 run tellraw @p {"text":"【預言學教授】 機械兵器學的研究室正在我們旁邊","bold":true,"color":"gray"}
execute if score s4 story matches 4 run tellraw @p {"text":"【預言學教授】 他們時不時就會有一些代碼失控的機器人闖進這裡","bold":true,"color":"gray"}
execute if score s4 story matches 5 run tellraw @p {"text":"(一台失控的機器人飛了過來)","bold":true,"color":"dark_gray"}
execute if score s4 story matches 5 positioned 27.5 113 -9 run function mobs:spawn/6rt1013 
execute if score s4 story matches 6 run tellraw @p {"text":"【失控的機器人】 監測_* .到* 不明-  *._開-*_.攻擊模式","bold":true,"color":"dark_gray"}
execute if score s4 story matches 7 run tellraw @p {"text":"【預言學教授】 看來我們要使出全力了","bold":true,"color":"gray"}
execute if score s4 story matches 8 run tellraw @p {"text":"【預言學教授】 拿著吧，這是在臨時戰鬥用的緊急陷阱","bold":true,"color":"gray"}
execute if score s4 story matches 8 run function traps:get/3bomb_unlimited
execute if score s4 story matches 8 run function traps:get/4big_bomb_unlimited
execute if score s4 story matches 8 run function traps:get/5thunder_unlimited
execute if score s4 story matches 9 run tellraw @p {"text":"【預言學教授】 加油! 擊潰這台破機器人 !","bold":true,"color":"gray"}

execute if score s4 story matches 1 at @p run playsound block.stone.break block @a ~ ~ ~ 1.0 1.0 0
execute if score s4 story matches 2..4 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s4 story matches 5 at @p run playsound block.stone.break block @a ~ ~ ~ 1.0 1.0 0
execute if score s4 story matches 6 at @p run playsound entity.vex.charge block @a ~ ~ ~ 1.0 1.0 0
execute if score s4 story matches 7..9 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s4 story matches 10 run function waves:20/bossai
execute if score s4 story matches 10 run scoreboard players set in_game determine 1
execute if score s4 story matches 10 run scoreboard players set boss1 determine 0
execute if score s4 story matches 10 run bossbar set boss1 visible true
execute if score s4 story matches 10 run bossbar set boss1 players @a
execute if score s4 story matches 9 run scoreboard players set complete determine 1

execute if score s4 story matches ..11 run scoreboard players add s4 story 1 
execute if score s4 story matches ..10 run schedule function story:s4 3s