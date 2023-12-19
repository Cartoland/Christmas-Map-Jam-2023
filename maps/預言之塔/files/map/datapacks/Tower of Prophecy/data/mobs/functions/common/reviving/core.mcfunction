# executed by and at marker
execute if predicate mobs:common/out_of_world run kill @s
execute if predicate mobs:common/out_of_world run return 0

scoreboard players set $cancel mobs.reviving.type 0

scoreboard players set @s mobs.reviving.timer 100
scoreboard players set @s mobs.reviving.type 0
execute if data entity @s data.entity{IsBaby:1b} run scoreboard players set @s mobs.reviving.type 1
execute if data entity @s data.entity{Tags:["mobs.lovers"]} run scoreboard players set @s mobs.reviving.type 99

execute as @s[scores={mobs.reviving.type=99}] unless entity @e[tag=mobs.lovers,tag=mobs.reversed] run function mobs:common/reviving/special_99

execute if score $cancel mobs.reviving.type matches 1 run kill @s
execute if score $cancel mobs.reviving.type matches 1 run return 0

tag @s remove mobs.no_exp
tag @s add mobs.reviving.core
summon minecraft:item ~ ~ ~ {Tags:["mobs.reviving","mobs.reviving.base","mobs.reviving.new"],PickupDelay:-1s,Item:{id:"minecraft:skeleton_skull",Count:1b}}
summon minecraft:interaction ~ ~ ~ {Tags:["mobs.reviving","mobs.reviving.hitbox","mobs.reviving.new"]}
ride @e[limit=1,type=minecraft:interaction,tag=mobs.reviving.new] mount @e[limit=1,type=minecraft:item,tag=mobs.reviving.new]
ride @s mount @e[limit=1,type=minecraft:interaction,tag=mobs.reviving.new]
tag @e[tag=mobs.reviving.new] remove mobs.reviving.new

execute as @s[scores={mobs.reviving.type=0}] on vehicle run data merge entity @s {width:0.6f,height:0.6f}
execute as @s[scores={mobs.reviving.type=1}] on vehicle run data merge entity @s {width:0.3f,height:0.3f}

execute as @s[scores={mobs.reviving.type=99}] run scoreboard players set @s mobs.reviving.timer 60
execute as @s[scores={mobs.reviving.type=99}] on vehicle run data merge entity @s {width:0.6f,height:0.6f}
