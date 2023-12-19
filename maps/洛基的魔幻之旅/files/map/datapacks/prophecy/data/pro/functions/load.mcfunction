tag @e[tag=!fa] remove p
fill 7 -59 -24 13 -59 -26 air
fill 6 -59 -18 14 -59 -20 air
clone 6 -64 -20 14 -64 -18 6 -60 -20
scoreboard players set time temp 0
scoreboard players set level temp 0
setblock 10 -60 -13 minecraft:heavy_weighted_pressure_plate
scoreboard players set t temp 0
scoreboard players set cl temp 0
setblock 10 -60 -31 minecraft:heavy_weighted_pressure_plate
fill 5 -60 -36 8 -57 -36 air
clone 18 -60 -36 19 -60 -36 13 -60 -37
function pad:reset
setblock 11 -61 -30 air
setblock 10 -60 -38 minecraft:heavy_weighted_pressure_plate
fill 5 -61 -42 15 -61 -52 minecraft:quartz_block replace #minecraft:concrete_powder
fill 6 -60 -43 14 -60 -51 air
scoreboard players set ll temp 1
scoreboard players set @e[tag=ox] temp 0
tag @a remove wait
scoreboard players set ro temp 2
scoreboard players reset @e error
clone 5 -58 -38 8 -60 -38 5 -60 -37
clear @a
kill @e[tag=hh]