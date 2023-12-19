playsound minecraft:block.glass.break hostile @a ~ ~2 ~ 2 1
data modify storage mobs:utils damage set value {amount:0f}
execute store result storage mobs:utils damage.amount float 1 run random value 2..16
function mobs:elite/moon/damage with storage mobs:utils damage
tag @s add mobs.cooldown
scoreboard players set @s mobs.cooldown_timer 120
