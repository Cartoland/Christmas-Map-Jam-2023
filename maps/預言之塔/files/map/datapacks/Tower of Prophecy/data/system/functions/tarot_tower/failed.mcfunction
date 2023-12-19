execute as @a at @s run playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 0.5
title @a subtitle {"text":"請再接再厲"}
title @a title {"text":"失敗","color":"red"}
tag @e[tag=mobs] add mobs.delete
scoreboard players set $battle system.tarot_tower.states 0
scoreboard players enable @a[tag=system.player] system.tarot_tower.trigger
tag @a[tag=system.died] remove system.died
tp @a[gamemode=!adventure,tag=system.player,scores={system.player_died=0}] @e[limit=1,type=minecraft:marker,tag=system.tarot_tower,tag=system.entrance,tag=system.current]
gamemode adventure @a[tag=system.player]

function system:tarot_tower/reset_floor
