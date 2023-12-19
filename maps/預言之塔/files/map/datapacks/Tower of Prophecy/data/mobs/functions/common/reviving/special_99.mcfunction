execute unless entity @a[tag=this] run tag @p add this
execute as @e[type=minecraft:marker,tag=mobs.reviving,scores={mobs.reviving.type=99}] run function mobs:common/reviving/killed
scoreboard players set $cancel mobs.reviving.type 1
tag @a[tag=this] remove this
