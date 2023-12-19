scoreboard players add @e[tag=boss1] bosstime 1
execute as @e[tag=boss1,limit=1] at @s if score @s bosstime matches 200 run function icebird1215:bossfights/boss1/skill1/ini
execute as @e[tag=boss1,limit=1] at @s if score @s bosstime matches 500 run function icebird1215:bossfights/boss1/skill2/ini
execute as @e[tag=boss1,limit=1] at @s if score @s bosstime matches 600 run function icebird1215:bossfights/boss1/skill3/ini
scoreboard players reset @e[tag=boss1,limit=1,scores={bosstime=700}] bosstime