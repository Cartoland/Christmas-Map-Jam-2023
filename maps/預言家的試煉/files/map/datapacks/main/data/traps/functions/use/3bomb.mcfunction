clear @s carrot_on_a_stick{CustomModelData:3} 1
scoreboard players set 3bomb timer 20


execute align xz run summon block_display ~0.25 ~ ~0.25 {Tags:["3bomb","trap"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.25f,0.5f]},block_state:{Name:"minecraft:obsidian"}}
playsound item.armor.equip_netherite block @a ~ ~ ~ 25.0 1.0 0

execute if score s1 story matches 15..19 positioned 27.25 ~ ~ if entity @e[tag=3bomb,distance=..0.5] run scoreboard players set s1 story 20
execute if score s1 story matches 15..19 positioned 27.25 ~ ~ unless entity @e[tag=3bomb,distance=..0.5] run scoreboard players set s1 story 17