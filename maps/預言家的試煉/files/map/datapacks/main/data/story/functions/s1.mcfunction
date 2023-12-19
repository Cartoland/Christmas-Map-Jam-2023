execute if score s1 story matches -1 run title @p title {"text":"預言家的最終試煉","bold":true,"color":"dark_purple"}

execute if score s1 story matches 1 run tellraw @p ["",{"text":"【","bold":true,"color":"dark_aqua"},{"selector":"@p","color": "dark_aqua"},{"text":"】 我是一個準預言家","bold":true,"color":"dark_aqua"}]
execute if score s1 story matches 1 run kill @e[type=villager,tag=teacher]

execute if score s1 story matches 1 run summon villager 27.5 108 -4.5 {Silent:1b,NoAI:0b,Health:999f,Tags:["teacher"],CustomName:'{"text":"預言學教授","color":"dark_purple","bold":true}',active_effects:[{id:"minecraft:resistance",amplifier:9b,duration:-1,show_particles:0b}],Attributes:[{Name:generic.max_health,Base:999},{Name:generic.movement_speed,Base:0}],VillagerData:{level:5,profession:"minecraft:librarian",type:"minecraft:plains"},Offers:{}}
execute if score s1 story matches 2 run tellraw @p ["",{"text":"【","bold":true,"color":"dark_aqua"},{"selector":"@p","color": "dark_aqua"},{"text":"】 今天是我預言學修課的最後一天，準備最終測驗的日子","bold":true,"color":"dark_aqua"}]
execute if score s1 story matches 3 run function traps:get/1returner
execute if score s1 story matches 3 run function traps:get/2checker
execute if score s1 story matches 3 run function main:give_bread
execute if score s1 story matches 3 run tellraw @p {"text":"【預言學教授】 你來了阿","bold":true,"color":"gray"}
execute if score s1 story matches 4 run tellraw @p {"text":"【預言學教授】 當預言家不僅要能準確預測敵人的出現地","bold":true,"color":"gray"}
execute if score s1 story matches 5 run tellraw @p {"text":"【預言學教授】 還要能根據敵人的特性，事先擺好陣法來應對他們","bold":true,"color":"gray"}
execute if score s1 story matches 6 run tellraw @p {"text":"【預言學教授】 所以我選了這座洞窟當作你的最終測驗的地方","bold":true,"color":"gray"}
execute if score s1 story matches 7 run tellraw @p {"text":"【預言學教授】 在這座洞窟裡，會有許多魔物來攻擊中間的祭壇","bold":true,"color":"gray"}
execute if score s1 story matches 8 run tellraw @p {"text":"【預言學教授】 你的目標就是防止怪物打破中間的祭壇","bold":true,"color":"gray"}
execute if score s1 story matches 9 run tellraw @p {"text":"【預言學教授】 看到了嗎 ? 前面有一個怪物出現點","bold":true,"color":"gray"}
execute if score s1 story matches 9 run function waves:1
execute if score s1 story matches 10 run tellraw @p {"text":"【預言學教授】 你去判斷它是甚麼吧","bold":true,"color":"gray"}

execute if score s1 story matches 12 run tellraw @p {"text":"【預言學教授】 每隻怪物都會有不同的粒子效果","bold":true,"color":"gray"}
execute if score s1 story matches 13 run tellraw @p {"text":"【預言學教授】 精通預言學的人可以一眼就看的出來","bold":true,"color":"gray"}
execute if score s1 story matches 14 run tellraw @p {"text":"【預言學教授】 接下來是放置陷阱","bold":true,"color":"gray"}
execute if score s1 story matches 15 run tellraw @p {"text":"【預言學教授】 把陷阱右鍵，放在怪物到祭壇會經過的路上","bold":true,"color":"gray"}
execute if score s1 story matches 15 run function traps:get/3bomb

execute if score s1 story matches 17 run tellraw @p {"text":"【預言學教授】 不是放在那裏","bold":true,"color":"gray"}
execute if score s1 story matches 18 run tellraw @p {"text":"【預言學教授】 請放在怪物到祭壇會經過的路上","bold":true,"color":"gray"}

execute if score s1 story matches 20 run tellraw @p {"text":"【預言學教授】 就是這樣","bold":true,"color":"gray"}
execute if score s1 story matches 21 run tellraw @p {"text":"【預言學教授】 現在啟動祭壇試試看","bold":true,"color":"gray"}
execute if score s1 story matches 21 run give @p ender_eye{CanPlaceOn:["end_portal_frame"],display:{Name:'[{"text":"","italic":false},{"text":"祭壇能量塊","color":"dark_purple","bold":true}]',Lore:['[{"text":"","italic":false},{"text":"放入祭壇後可啟動","color":"gray"}]']}} 1

execute if score s1 story matches 23 run tellraw @p {"text":"【預言學教授】 就是這樣","bold":true,"color":"gray"}
execute if score s1 story matches 24 run tellraw @p {"text":"【預言學教授】 試著把所有的魔物打完吧","bold":true,"color":"gray"}
execute if score s1 story matches 25 run tp @e[tag=teacher] 30 109 10
execute if score s1 story matches 25 run give @p written_book{pages:["[\"\",{\"text\":\"陣法放置須知 :\",\"bold\":true,\"italic\":true,\"color\":\"black\"},\"\\n\",\"\\n\",{\"text\":\"1.同一格內不允許放置兩個陣法\",\"color\":\"dark_gray\"},\"\\n\",{\"text\":\"2.不得在敵人預知點附近放置陣法\",\"color\":\"dark_gray\"},\"\\n\",{\"text\":\"3.不得在祭壇內或洞穴外放置陣法\",\"color\":\"dark_gray\"},\"\\n\",{\"text\":\"4.陣法放置距離是用 distance判定的，如果你覺得那一格可以放置，但是系統又報錯時，請多試幾次\",\"bold\":true,\"color\":\"gray\"}]"],title:"陣法放置須知",author:"預言學教授"}

execute if score s1 story matches -1 run effect give @p blindness infinite 0 true
execute if score s1 story matches -1 run effect give @p levitation infinite 0 true
execute if score s1 story matches -1 as @p run tp 27.5 112 -6
execute if score s1 story matches 3 run effect clear @p

execute if score s1 story matches -1 at @p run playsound entity.player.levelup block @a ~ ~ ~ 1.0 1.0 0
execute if score s1 story matches 3..10 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s1 story matches 12..15 at @p run playsound entity.villager.ambient block @a ~ ~ ~ 1.0 1.0 0
execute if score s1 story matches 17..18 at @p run playsound entity.villager.no block @a ~ ~ ~ 1.0 1.0 0

execute if score s1 story matches ..10 run scoreboard players add s1 story 1 
execute if score s1 story matches 12..15 run scoreboard players add s1 story 1 
execute if score s1 story matches 17..18 run scoreboard players add s1 story 1 
execute if score s1 story matches 20..21 run scoreboard players add s1 story 1 
execute if score s1 story matches 23..25 run scoreboard players add s1 story 1 
execute if score s1 story matches ..25 run schedule function story:s1 3s