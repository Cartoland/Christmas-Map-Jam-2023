tag @e[tag=mobs.this] remove mobs.this
tag @s add mobs.this
summon minecraft:item_display ~ ~ ~ {Tags:["mobs.reviving.why"]}
ride @s mount @e[limit=1,type=minecraft:item_display,tag=mobs.reviving.why]
execute summon minecraft:marker run function mobs:common/reviving/marker
data modify entity @s DeathLootTable set value ""
ride @s dismount
kill @e[type=minecraft:item_display,tag=mobs.reviving.why]
tag @s add mobs.reviving.set
tag @s remove mobs.this
