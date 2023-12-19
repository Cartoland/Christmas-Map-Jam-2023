#選定鍵盤

#給予單一選定tag(select)
tag @e remove select
tag @s[tag=!done] add select

#給予單一選定聯動點tag(setcone)
tag @e remove setcone
execute if score @s input matches 0.. if entity @p[gamemode=creative,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run tag @s add setcone

#提示尚未設定密碼
execute unless score @s input matches 0.. if entity @p[gamemode=creative,nbt={SelectedItem:{id:"minecraft:bat_spawn_egg"}}] run tellraw @a[tag=ser] {"text":"請先設定密碼!","bold":true,"color":"dark_red"}

#顯示聯動點
execute as @e[type=minecraft:marker,tag=cone] at @s if score @s input = @e[tag=setcone,limit=1] input run summon shulker ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,Glowing:1b,CustomNameVisible:1b,NoAI:1b,AttachFace:0b,Color:14b,Tags:["showcone"],CustomName:'{"text":"連動點"}'}

#轉正鍵盤
data modify entity @s ItemRotation set value 0

#刪除互動玩家tag(ser)
tag @e remove ser