scoreboard players set $if_target mobs.states 0
execute on target run scoreboard players set $if_target mobs.states 1
execute if score $if_target mobs.states matches 1 at @s run function mobs:elite/star/skill
execute if score $if_target mobs.states matches 0 run tag @s add mobs.provoke
