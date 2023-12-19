execute at @e[tag=1zombie] run function mobs:spawn/1zombie
execute at @e[tag=2tank] run function mobs:spawn/2tank
execute at @e[tag=3small] run function mobs:spawn/3small
execute at @e[tag=4smalltank] run function mobs:spawn/4smalltank
execute at @e[tag=5iron] run function mobs:spawn/5iron

kill @e[tag=p]

effect give @e[tag=enemy] slowness 1 9

execute if score waves determine matches 20 run function story:s4