execute if predicate mobs:common/one_quarter run function mobs:normal/strength/skill
execute unless score @s mobs.skill_timer matches 1.. run tag @s add mobs.cooldown
execute unless score @s mobs.skill_timer matches 1.. run scoreboard players set @s mobs.cooldown_timer 20
