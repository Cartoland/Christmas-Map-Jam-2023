advancement revoke @s only icebird1215:used_item4

execute store result score $random system.utils run random value 0..17

execute if score $random system.utils matches 0 run effect give @s resistance 15 0 
execute if score $random system.utils matches 1 run effect give @s resistance 15 1 
execute if score $random system.utils matches 2 run effect give @s resistance 15 2 
execute if score $random system.utils matches 3 run effect give @s strength 15 1 
execute if score $random system.utils matches 4 run effect give @s strength 15 2 
execute if score $random system.utils matches 5 run effect give @s strength 15 3 
execute if score $random system.utils matches 6 run effect give @s strength 15 4 
execute if score $random system.utils matches 7 run effect give @s nausea 15 0 
execute if score $random system.utils matches 8 run effect give @s nausea 15 0 
execute if score $random system.utils matches 9 run effect give @s speed 15 0 
execute if score $random system.utils matches 10 run effect give @s speed 15 1 
execute if score $random system.utils matches 11 run effect give @s speed 15 2 
execute if score $random system.utils matches 12 run effect give @s blindness 15 0 
execute if score $random system.utils matches 13 run effect give @s blindness 15 0 
execute if score $random system.utils matches 14 run effect give @s wither 15 0 
execute if score $random system.utils matches 15 run effect give @s wither 15 1 
execute if score $random system.utils matches 16 run effect give @s regeneration 15 0 
execute if score $random system.utils matches 17 run effect give @s regeneration 15 1 

clear @s glass_bottle 1
loot give @s loot icebird1215:bottle

