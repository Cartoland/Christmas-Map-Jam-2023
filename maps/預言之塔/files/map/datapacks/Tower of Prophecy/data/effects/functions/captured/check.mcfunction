tp @s ~ ~ ~

scoreboard players operation $mod effects.captured_timer = @s effects.captured_timer
scoreboard players operation $mod effects.captured_timer %= $20 effects.const
execute if score $mod effects.captured_timer matches 1 run damage @s 4 minecraft:cramming

execute if score @s effects.captured_timer matches 1 run attribute @s generic.knockback_resistance modifier remove 27b52f32-c6cb-403f-beef-087892bf654e
scoreboard players remove @s effects.captured_timer 1
