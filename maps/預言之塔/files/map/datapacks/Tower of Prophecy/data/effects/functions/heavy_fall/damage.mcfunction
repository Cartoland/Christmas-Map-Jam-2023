#declare tag effect.heavy_fall

advancement revoke @s only effects:heavy_fall/damage

damage @s 15 minecraft:fall
tag @s remove effect.heavy_fall
