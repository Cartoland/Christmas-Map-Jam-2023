clear @s carrot_on_a_stick{CustomModelData:5} 1
scoreboard players set 5thunder timer 20

execute align xz run summon block_display ~0.25 ~ ~0.25 {Tags:["5thunder","trap"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.25f,0.5f]},block_state:{Name:"minecraft:budding_amethyst"}}
playsound item.armor.equip_diamond block @a ~ ~ ~ 25.0 1.0 0