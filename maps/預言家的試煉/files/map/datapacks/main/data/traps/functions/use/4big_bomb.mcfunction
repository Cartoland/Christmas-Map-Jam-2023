clear @s carrot_on_a_stick{CustomModelData:4} 1
scoreboard players set 4big_bomb timer 40


execute align xz run summon block_display ~0.25 ~ ~0.25 {Tags:["4big_bomb","trap"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.25f,0.5f]},block_state:{Name:"minecraft:tnt"}}
playsound item.armor.equip_netherite block @a ~ ~ ~ 25.0 1.0 0