effect give @s minecraft:glowing 1 0 true
particle minecraft:firework ~ ~ ~ 0.2 0.2 0.2 0.1 20 normal
tag @s add mobs.cooldown
scoreboard players set @s mobs.cooldown_timer 40
