#declare tag system.player
#declare tag system.died

execute store result score $gametime system.utils run time query gametime
effect give @a minecraft:saturation infinite 0 true

execute if score $battle system.tarot_tower.states matches 1 run function system:tarot_tower/battle

execute as @a[scores={system.tarot_tower.trigger=-2}] run function system:tarot_tower/ready
execute as @a[scores={system.tarot_tower.trigger=-1}] run function system:tarot_tower/storage/options
execute as @a[scores={system.tarot_tower.trigger=1..3}] run function system:tarot_tower/storage/selected
execute as @a[scores={system.tarot_tower.trigger=22}] run function system:tarot_tower/world_upright

execute if score $countDown system.tarot_tower.states matches 0.. run function system:tarot_tower/count_down
