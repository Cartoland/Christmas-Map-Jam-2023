$execute on vehicle on vehicle at @s run summon $(id) ~ ~ ~ $(entity)
execute on vehicle run function mobs:common/kill_below
ride @s mount @e[limit=1,type=#minecraft:mobs,tag=mobs.reviving,tag=mobs.this]
team join mobs @e[tag=mobs.reviving,tag=mobs.this]
tag @e[tag=mobs.reviving,tag=mobs.this] add mobs.reviving.set
tag @e[tag=mobs.this] remove mobs.this
tag @s add mobs.death_detect
tag @s remove mobs.reviving.core
scoreboard players reset @s mobs.reviving.type
scoreboard players reset @s mobs.reviving.timer
