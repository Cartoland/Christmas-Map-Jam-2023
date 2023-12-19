#返還陷阱
execute if score boss determine matches 0 align xz as @e[tag=3bomb,distance=..0.5] run function traps:get/3bomb
execute if score boss determine matches 0 align xz as @e[tag=4big_bomb,distance=..0.5] run function traps:get/4big_bomb
execute if score boss determine matches 0 align xz as @e[tag=5thunder,distance=..0.5] run function traps:get/5thunder

execute if score boss determine matches 0 align xz at @e[tag=trap,distance=..0.5] run playsound item.trident.riptide_1 block @a ~ ~ ~ 0.8 1.0 1.0

#殺死陷阱
execute align xz as @e[tag=trap,distance=..0.5] run kill @s