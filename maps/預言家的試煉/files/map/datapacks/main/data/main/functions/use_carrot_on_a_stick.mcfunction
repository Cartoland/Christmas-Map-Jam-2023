execute as @s[nbt={SelectedItem:{tag:{CustomModelData:1}}}] at @s run function traps:use/1returner
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:2}}}] at @s run function traps:use/2checker/_determine

scoreboard players set trap_type determine 0
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:3}}}] at @s run scoreboard players set trap_type determine 3
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:4}}}] at @s run scoreboard players set trap_type determine 4
execute as @s[nbt={SelectedItem:{tag:{CustomModelData:5}}}] at @s run scoreboard players set trap_type determine 5
execute if score 3bomb timer matches ..0 as @s[nbt={SelectedItem:{tag:{CustomModelData:103}}}] at @s run scoreboard players set trap_type determine 3
execute if score 4big_bomb timer matches ..0 as @s[nbt={SelectedItem:{tag:{CustomModelData:104}}}] at @s run scoreboard players set trap_type determine 4
execute if score 5thunder timer matches ..0 as @s[nbt={SelectedItem:{tag:{CustomModelData:105}}}] at @s run scoreboard players set trap_type determine 5
execute as @s at @s unless score trap_type determine matches 0 run function traps:use/trap_place_check