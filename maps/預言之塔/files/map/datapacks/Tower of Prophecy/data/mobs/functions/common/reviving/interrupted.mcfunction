advancement revoke @s only mobs:common/reviving/interrupted
tag @s add this
execute as @e[type=minecraft:interaction,tag=mobs.reviving.hitbox] run function mobs:common/reviving/check_hit
tag @s remove this
