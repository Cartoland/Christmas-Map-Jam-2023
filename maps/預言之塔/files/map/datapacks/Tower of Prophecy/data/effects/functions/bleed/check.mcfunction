scoreboard players operation $mod effects.bleed_timer = @s effects.bleed_timer
scoreboard players operation $mod effects.bleed_timer %= $20 effects.const
execute if score $mod effects.bleed_timer matches 1 run damage @s 2 minecraft:out_of_world
scoreboard players remove @s effects.bleed_timer 1

execute if score @s system.player_died matches 1 run scoreboard players set @s effects.bleed_timer 0
