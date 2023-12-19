#顯示訊息

#4位數鍵盤顯示
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:4}}}] unless score @s input matches 0.. run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"00000","bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:4}}}] if score @s input matches 0..9 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"0000","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:4}}}] if score @s input matches 10..99 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"000","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:4}}}] if score @s input matches 100..999 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"00","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:4}}}] if score @s input matches 1000..9999 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:4}}}] if score @s input matches 10000..99999 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]

#3位數鍵盤顯示
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:3}}}] unless score @s input matches 0.. run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"000","bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:3}}}] if score @s input matches 0..9 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"00","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:3}}}] if score @s input matches 10..99 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"0","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
execute if entity @e[tag=select,tag=!done,distance=0..4,nbt={Item:{tag:{pad:3}}}] if score @s input matches 100..999 run title @a actionbar ["",{"text":"密碼：","bold":true,"color":"dark_green"},{"text":"","bold":true,"color":"gold"},{"score":{"name":"@s","objective":"input"},"bold":true,"color":"gold"}]
