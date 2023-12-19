advancement revoke @s only mobs:normal/hanged_man/shot_by_reversed

execute on attacker run effect give @s[tag=mobs.hanged_man,tag=mobs.reversed] minecraft:levitation 2 2
execute on attacker run effect give @s[tag=mobs.hanged_man,tag=mobs.reversed] minecraft:slow_falling 3 0 true
