execute as @e[tag=1] at @s if blocks ~ ~ ~ ~ ~ ~ 10 -63 -17 all run function pro:pick
execute as @e[tag=pp,nbt={OnGround:1b}] at @s run function pro:pick
execute as @e[tag=dp,nbt={OnGround:1b}] at @s run function pro:del
execute if score level temp matches 13 unless block 5 -60 -36 air unless block 6 -60 -36 air unless block 7 -60 -36 air unless block 8 -60 -36 air unless block 5 -59 -36 air unless block 6 -59 -36 air unless block 7 -59 -36 air unless block 8 -59 -36 air unless block 5 -58 -36 air unless block 6 -58 -36 air unless block 7 -58 -36 air unless block 8 -58 -36 air unless block 5 -57 -36 air unless block 6 -57 -36 air unless block 7 -57 -36 air unless block 8 -57 -36 air run scoreboard players set level temp 15

function pro:talk
scoreboard players add time temp 1
scoreboard players add @e[tag=ap] temp 1
kill @e[tag=ap,scores={temp=40..}]
scoreboard players enable @a code
execute if score level temp matches 10 unless block 5 -57 -36 air unless block 6 -57 -36 air unless block 7 -57 -36 air unless block 8 -57 -36 air run scoreboard players set level temp 11


execute as @e[tag=op,nbt={OnGround:1b}] at @s run function pro:ox
execute as @e[tag=xp,nbt={OnGround:1b}] at @s run function pro:ox