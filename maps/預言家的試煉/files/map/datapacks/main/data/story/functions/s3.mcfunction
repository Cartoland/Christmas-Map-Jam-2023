execute if score s3 story matches 1 run tellraw @p {"text":"【預言學教授】 小魔僵走得很快","bold":true,"color":"gray"}
execute if score s3 story matches 2 run tellraw @p [{"text":"【預言學教授】 它的速度可以可以完美躲避 ","bold":true,"color":"gray"},{"text":"【爆破】","bold":true,"color":"red"},{"text":" 陣法","bold":true,"color":"gray"}]
execute if score s3 story matches 3 run tellraw @p {"text":"【預言學教授】 那如果將它緩速呢","bold":true,"color":"gray"}
execute if score s3 story matches 4 run tellraw @p [{"text":"【預言學教授】 試試看","bold":true,"color":"gray"},{"text":"【閃雷】","bold":true,"color":"#8348B8"},{"text":"吧","bold":true,"color":"gray"}]

execute if score s3 story matches 1..4 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s3 story matches ..4 run scoreboard players add s3 story 1 
execute if score s3 story matches ..4 run schedule function story:s3 3s