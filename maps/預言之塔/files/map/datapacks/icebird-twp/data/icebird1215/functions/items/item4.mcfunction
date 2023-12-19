data remove entity @e[tag=item_4.int,limit=1] interaction
clear @s
tag @s add item4
kill @e[type=item]
playsound entity.witch.ambient block @s ~ ~ ~ 1 1.5
effect give @s instant_health 1 10
tellraw @s {"text": "§a選擇竹賢模式"}
loot give @s loot icebird1215:bottle
