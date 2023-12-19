execute if data entity @s data.loot_table run data modify entity @s data.entity.DeathLootTable set from entity @s data.loot_table
execute unless data entity @s data.loot_table run data remove entity @s data.entity.DeathLootTable
execute align xz positioned ~0.5 -65 ~0.5 run function mobs:common/reviving/loot with entity @s data
execute align xz positioned ~ -65 ~ run tp @e[type=minecraft:item,dx=0,dy=1,dz=0] @s
function mobs:common/kill_below
