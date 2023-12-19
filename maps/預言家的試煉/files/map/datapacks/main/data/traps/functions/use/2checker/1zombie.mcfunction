tellraw @p {"text":""}
tellraw @p {"text":"【魔僵】","bold":true,"color":"gray"}
tellraw @p {"text":" - 最基礎的敵人","bold":true,"color":"dark_gray"}
tellraw @p [{"text":" - 攻擊力","bold":true,"color":"gray"},{"text":" 2 ","bold":true,"color":"dark_green"},{"text":"血量","bold":true,"color":"gray"},{"text":" 5","bold":true,"color":"dark_green"}]
playsound block.enchantment_table.use block @a ~ ~ ~ 1.0 1.0 0

execute if score s1 story matches 10..11 run scoreboard players set s1 story 12