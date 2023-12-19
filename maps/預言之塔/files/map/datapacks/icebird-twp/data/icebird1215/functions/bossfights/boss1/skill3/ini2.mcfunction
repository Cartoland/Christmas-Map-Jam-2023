execute as @e[tag=b1s3] run data merge entity @s {NoAI:0b}
attribute @e[tag=b1s3,limit=1] generic.follow_range base set 0 
attribute @e[tag=b1s3,limit=1] generic.follow_range base set 100
execute as @e[tag=b1s3] run damage @s 0.0000001 player_attack by @p[tag=b1s3_target]