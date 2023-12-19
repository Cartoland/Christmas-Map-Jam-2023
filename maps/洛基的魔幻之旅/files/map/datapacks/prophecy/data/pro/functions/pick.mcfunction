setblock ~ ~ ~ air
execute unless block 7 -59 -26 air run clone ~ ~-1 ~ ~ ~-1 ~ 13 -59 -26
execute if block 7 -59 -26 air run clone ~ ~-1 ~ ~ ~-1 ~ 7 -59 -26
execute unless block 7 -59 -26 air unless block 13 -59 -26 air run fill 14 -59 -18 6 -59 -20 air
execute if entity @e[tag=pp,nbt={OnGround:1b}] run clone 7 -62 -22 13 -62 -22 7 -59 -24
tag @s remove pp
execute unless block 7 -59 -26 air unless block 13 -59 -26 air if score level temp matches 2 run scoreboard players set time temp 0
execute unless block 7 -59 -26 air unless block 13 -59 -26 air if score level temp matches 2 run scoreboard players set level temp 3
kill @e[tag=hh]