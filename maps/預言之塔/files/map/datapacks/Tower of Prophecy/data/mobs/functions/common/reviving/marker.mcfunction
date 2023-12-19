data merge entity @s {Tags:["mobs.death_detect","mobs.reviving","mobs.reviving.marker"],data:{command:"execute at @s run function mobs:common/reviving/core"}}
data modify entity @s data.entity set from entity @e[limit=1,tag=mobs.this] {}
data remove entity @s data.entity.Pos
data remove entity @s data.entity.Motion
data remove entity @s data.entity.UUID
data modify entity @s data.entity.DeathLootTable set value ""
data modify entity @s data.id set from entity @e[limit=1,type=minecraft:item_display,tag=mobs.reviving.why] Passengers[0].id
data modify entity @s data.loot_table set from entity @e[limit=1,tag=mobs.this] LootTable
ride @s mount @e[limit=1,tag=mobs.this]
