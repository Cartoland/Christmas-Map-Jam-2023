tag @s add mobs
tag @s add mobs.high_priestess
scoreboard players set $if_origin mobs.states 0
execute on origin as @s[tag=mobs.high_priestess] run scoreboard players set $if_origin mobs.states 1
execute if score $if_origin mobs.states matches 1 run attribute @s generic.attack_damage base set 16
