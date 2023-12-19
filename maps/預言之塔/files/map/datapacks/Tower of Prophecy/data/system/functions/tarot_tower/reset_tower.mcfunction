#declare tag system.tarot_tower
#declare tag system.floor
#declare tag system.entrance
#declare tag system.exit
#declare tag system.center
#declare tag system.current

function system:tarot_tower/storage/setting

kill @e[tag=mobs]
kill @e[tag=system.tarot_tower]

scoreboard players set $current system.tarot_tower.floor 0
scoreboard players set $world system.tarot_tower.floor 0
scoreboard players set $world system.tarot_tower.states 0

summon minecraft:marker -39.5 7 -7.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_1"],Rotation:[90f,0f]}
summon minecraft:marker -56.5 8 -8.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_1"],Rotation:[-90f,0f]}
summon minecraft:marker -47.5 7 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_1"],Rotation:[180f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_1] system.tarot_tower.floor 1
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_1] system.tarot_tower.rotation 1

summon minecraft:marker -55.5 14 -7.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_2"],Rotation:[0f,0f]}
summon minecraft:marker -56.5 15 9.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_2"],Rotation:[180f,0f]}
summon minecraft:marker -47.5 14 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_2"],Rotation:[90f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_2] system.tarot_tower.floor 2
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_2] system.tarot_tower.rotation 2

summon minecraft:marker -55.5 21 8.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_3"],Rotation:[-90f,0f]}
summon minecraft:marker -38.5 22 9.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_3"],Rotation:[90f,0f]}
summon minecraft:marker -47.5 21 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_3"],Rotation:[0f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_3] system.tarot_tower.floor 3
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_3] system.tarot_tower.rotation 3

summon minecraft:marker -39.5 28 8.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_4"],Rotation:[180f,0f]}
summon minecraft:marker -38.5 29 -8.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_4"],Rotation:[0f,0f]}
summon minecraft:marker -47.5 28 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_4"],Rotation:[-90f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_4] system.tarot_tower.floor 4
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_4] system.tarot_tower.rotation 0

summon minecraft:marker -39.5 35 -7.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_5"],Rotation:[90f,0f]}
summon minecraft:marker -56.5 36 -8.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_5"],Rotation:[-90f,0f]}
summon minecraft:marker -47.5 35 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_5"],Rotation:[180f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_5] system.tarot_tower.floor 5
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_5] system.tarot_tower.rotation 1

summon minecraft:marker -55.5 42 -7.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_6"],Rotation:[0f,0f]}
summon minecraft:marker -56.5 43 9.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_6"],Rotation:[180f,0f]}
summon minecraft:marker -47.5 42 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_6"],Rotation:[90f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_6] system.tarot_tower.floor 6
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_6] system.tarot_tower.rotation 2

summon minecraft:marker -55.5 49 8.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_7"],Rotation:[-90f,0f]}
summon minecraft:marker -38.5 50 9.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_7"],Rotation:[90f,0f]}
summon minecraft:marker -47.5 49 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_7"],Rotation:[0f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_7] system.tarot_tower.floor 7
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_7] system.tarot_tower.rotation 3

summon minecraft:marker -39.5 56 8.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_8"],Rotation:[180f,0f]}
summon minecraft:marker -38.5 57 -8.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_8"],Rotation:[0f,0f]}
summon minecraft:marker -47.5 56 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_8"],Rotation:[-90f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_8] system.tarot_tower.floor 8
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_8] system.tarot_tower.rotation 0

summon minecraft:marker -39.5 63 -7.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_9"],Rotation:[90f,0f]}
summon minecraft:marker -56.5 64 -8.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_9"],Rotation:[-90f,0f]}
summon minecraft:marker -47.5 63 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_9"],Rotation:[180f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_9] system.tarot_tower.floor 9
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_9] system.tarot_tower.rotation 1

summon minecraft:marker -55.5 70 -7.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_10"],Rotation:[0f,0f]}
summon minecraft:marker -56.5 71 9.5 {Tags:["system","system.tarot_tower","system.exit","system.floor_10"],Rotation:[180f,0f]}
summon minecraft:marker -47.5 70 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_10"],Rotation:[90f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_10] system.tarot_tower.floor 10
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_10] system.tarot_tower.rotation 2

summon minecraft:marker -55.5 77 8.5 {Tags:["system","system.tarot_tower","system.entrance","system.floor_11"],Rotation:[-90f,0f]}
summon minecraft:marker -47.5 77 0.5 {Tags:["system","system.tarot_tower","system.center","system.floor_11"],Rotation:[0f,0f]}
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.floor_11] system.tarot_tower.floor 11
scoreboard players set @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.floor_11] system.tarot_tower.rotation 3

fill -48 82 0 -48 79 0 air
setblock -48 78 0 minecraft:light[level=15]

gamemode adventure @a[tag=system.player]
gamemode spectator @a[tag=!system.player]

function system:tarot_tower/next_floor
