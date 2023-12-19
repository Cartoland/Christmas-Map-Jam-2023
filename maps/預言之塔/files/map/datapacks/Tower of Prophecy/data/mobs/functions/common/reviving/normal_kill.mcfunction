tag @s add this
execute as @e[type=minecraft:marker,tag=mobs.reviving.marker] on vehicle if data entity @s {Health:0.0f} run function mobs:common/reviving/normal_kill_check
tag @a[tag=this] remove this
advancement revoke @s only mobs:common/reviving/normal_kill
