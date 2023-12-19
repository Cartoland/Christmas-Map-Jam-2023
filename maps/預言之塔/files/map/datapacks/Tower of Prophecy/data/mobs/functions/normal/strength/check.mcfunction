scoreboard players set $if_target mobs.states 0
execute on target run scoreboard players set $if_target mobs.states 1
execute if score $if_target mobs.states matches 1 run function mobs:normal/strength/try_skill
