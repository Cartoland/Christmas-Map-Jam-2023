$scoreboard players set @s effects.captured_timer $(seconds)
scoreboard players operation @s effects.captured_timer *= $20 effects.const
$effect give @s minecraft:slowness $(seconds) 6 true
$effect give @s minecraft:jump_boost $(seconds) 128 true
$effect give @s minecraft:mining_fatigue $(seconds) 128 true
$effect give @s minecraft:weakness $(seconds) 255 true
attribute @s generic.knockback_resistance modifier add 27b52f32-c6cb-403f-beef-087892bf654e "effects.captured" 1.0 add
