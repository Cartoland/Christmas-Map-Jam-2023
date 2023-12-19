execute if score s2 story matches 1 run tellraw @p {"text":"【預言學教授】 陷阱只能打一個敵人，還是挺麻煩的","bold":true,"color":"gray"}
execute if score s2 story matches 2 run tellraw @p [{"text":"【預言學教授】 接下來試試看","bold":true,"color":"gray"},{"text":"【爆破】 ","bold":true,"color":"red"},{"text":"吧","bold":true,"color":"gray"}]
execute if score s2 story matches 3 run tellraw @p {"text":"【預言學教授】 他能一次攻擊很多個敵人","bold":true,"color":"gray"}
execute if score s2 story matches 1..3 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s2 story matches ..3 run scoreboard players add s2 story 1 
execute if score s2 story matches ..3 run schedule function story:s2 3s