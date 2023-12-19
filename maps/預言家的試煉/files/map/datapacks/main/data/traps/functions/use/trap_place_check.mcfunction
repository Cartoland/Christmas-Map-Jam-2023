scoreboard players set success determine 1

execute if entity @e[tag=p,distance=..2.5] unless score boss determine matches 1 run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0
execute if entity @e[tag=p,distance=..2.5] unless score boss determine matches 1 run tellraw @p {"text":""}
execute if entity @e[tag=p,distance=..2.5] unless score boss determine matches 1 run tellraw @p {"text":"陣法不可放在預知點附近! 請重新放置","bold":true,"color":"dark_red"}
execute if entity @e[tag=p,distance=..2.5] unless score boss determine matches 1 run scoreboard players set success determine 0

execute align xz if score success determine matches 1 if entity @e[tag=trap,distance=..0.5] run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0
execute align xz if score success determine matches 1 if entity @e[tag=trap,distance=..0.5] unless score boss determine matches 1 run tellraw @p {"text":""}
execute align xz if score success determine matches 1 if entity @e[tag=trap,distance=..0.5] unless score boss determine matches 1 run tellraw @p {"text":"陣法間距過小! 請重新放置","bold":true,"color":"dark_red"}
execute align xz if score success determine matches 1 if entity @e[tag=trap,distance=..0.5] run scoreboard players set success determine 0

execute if score success determine matches 1 if block ~ ~ ~ light[level=1] run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0
execute if score success determine matches 1 if block ~ ~ ~ light[level=1] run tellraw @p {"text":""}
execute if score success determine matches 1 if block ~ ~ ~ light[level=1] run tellraw @p {"text":"禁止在祭壇內放置陣法! 請重新放置","bold":true,"color":"dark_red"}
execute if score success determine matches 1 if block ~ ~ ~ light[level=1] run scoreboard players set success determine 0

execute if score success determine matches 1 if block ~ ~ ~ polished_deepslate_slab run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0
execute if score success determine matches 1 if block ~ ~ ~ polished_deepslate_slab run tellraw @p {"text":""}
execute if score success determine matches 1 if block ~ ~ ~ polished_deepslate_slab run tellraw @p {"text":"禁止在祭壇內放置陣法! 請重新放置","bold":true,"color":"dark_red"}
execute if score success determine matches 1 if block ~ ~ ~ polished_deepslate_slab run scoreboard players set success determine 0

execute if score success determine matches 1 if block ~ ~ ~ end_portal_frame run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0
execute if score success determine matches 1 if block ~ ~ ~ end_portal_frame run tellraw @p {"text":""}
execute if score success determine matches 1 if block ~ ~ ~ end_portal_frame run tellraw @p {"text":"禁止在祭壇內放置陣法! 請重新放置","bold":true,"color":"dark_red"}
execute if score success determine matches 1 if block ~ ~ ~ end_portal_frame run scoreboard players set success determine 0

execute if score success determine matches 1 if block ~ ~-1 ~ black_concrete run playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 0
execute if score success determine matches 1 if block ~ ~-1 ~ black_concrete run tellraw @p {"text":""}
execute if score success determine matches 1 if block ~ ~-1 ~ black_concrete run tellraw @p {"text":"超出邊界了! 請重新放置","bold":true,"color":"dark_red"}
execute if score success determine matches 1 if block ~ ~-1 ~ black_concrete run scoreboard players set success determine 0

execute if score success determine matches 1 as @s[nbt={OnGround:1b}] run function traps:use/trap_type
execute if score success determine matches 1 as @s[nbt={OnGround:0b}] positioned ~ ~-1 ~ align y if block ~ ~ ~ air run function traps:use/trap_type
execute if score success determine matches 1 as @s[nbt={OnGround:0b}] positioned ~ ~-1 ~ align y unless block ~ ~ ~ air positioned ~ ~0.5 ~ run function traps:use/trap_type


