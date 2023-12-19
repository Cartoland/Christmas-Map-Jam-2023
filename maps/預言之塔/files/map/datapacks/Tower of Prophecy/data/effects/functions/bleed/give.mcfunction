scoreboard players operation $add effects.bleed_timer = @s effects.bleed_timer
scoreboard players operation $add effects.bleed_timer %= $20 effects.const
$scoreboard players set @s effects.bleed_timer $(seconds)
scoreboard players operation @s effects.bleed_timer *= $20 effects.const
scoreboard players operation @s effects.bleed_timer += $add effects.bleed_timer
