execute as @s[tag=mobs.reversed] run scoreboard players set @s mobs.cooldown_timer 0
execute if score @s mobs.cooldown_timer matches 0.. run scoreboard players set @s mobs.skill_timer 0
execute unless score @s mobs.cooldown_timer matches 0.. run function mobs:normal/wheel_of_fortune/cooldown
execute unless score @s mobs.skill_timer matches 0.. run return 0

tag @s add mobs.skill
scoreboard players set @s mobs.skill_timer 60

data modify entity @s NoAI set value 1b
execute unless entity @e[type=minecraft:silverfish,tag=mobs,tag=mobs.wheel_of_fortune,distance=0..1] run summon minecraft:silverfish ~ -64 ~ {Tags:["mobs","mobs.new","mobs.wheel_of_fortune"],Team:"pushOwnTeam",Invulnerable:1b,Silent:1b,Attributes:[{Name:"minecraft:generic.attack_damage",Base:0d},{Name:"minecraft:generic.movement_speed",Base:0.35}],active_effects:[{id:"minecraft:invisibility",duration:-1,amplifier:0b,show_particles:0b}]}
execute positioned ~ -64 ~ run tp @e[limit=1,sort=nearest,type=minecraft:silverfish,tag=mobs,tag=mobs.wheel_of_fortune,distance=0..2] @s
