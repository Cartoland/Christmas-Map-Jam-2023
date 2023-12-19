tag @s remove mobs.high_tower
ride @s dismount
data modify entity @s[type=minecraft:skeleton] Invulnerable set value 0b
data modify entity @s[type=minecraft:skeleton] Motion[1] set value -10d
kill @s[type=minecraft:marker]
tag @a[tag=system.player] add effect.heavy_fall
effect give @a[tag=system.player] minecraft:levitation 1 5 true
