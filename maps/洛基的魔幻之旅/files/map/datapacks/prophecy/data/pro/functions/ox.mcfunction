execute if entity @s[tag=op] positioned ~-1 ~-1 ~-1 run clone -4 -61 -36 -2 -60 -34 ~ ~ ~
execute if entity @s[tag=xp] positioned ~-1 ~-1 ~-1 run clone -4 -61 -33 -2 -60 -31 ~ ~ ~

execute as @e[tag=ox] at @s if block ~ ~ ~ air if entity @e[tag=op] run setblock ~ ~ ~ polished_blackstone_button[face=floor]

execute if entity @e[tag=s,scores={temp=1}] run function pro:s
execute if entity @e[tag=c,scores={temp=1}] run function pro:c
execute at @e[tag=op] as @e[tag=ox,limit=1,sort=nearest] run scoreboard players operation test error = @s error
scoreboard players operation test error %= 2 error
execute if score test error matches 1 run function pro:lose
execute at @e[tag=op] as @e[tag=ox,limit=1,sort=nearest] if score @s error matches 8 run function pro:over
tag @a remove wait
tag @s remove xp
tag @s remove op