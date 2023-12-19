tag @s add mobs
scoreboard players set $if_origin mobs.states 0
execute on origin as @s[tag=mobs.high_priestess,tag=mobs.reversed] run scoreboard players set $if_origin mobs.states 1
execute if score $if_origin mobs.states matches 1 at @s run function mobs:normal/high_priestess/fang_damage
