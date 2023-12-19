scoreboard players add @e[tag=b1s2] boss1 1
execute as @e[tag=b1s2,scores={boss1=60}] run tag @s add b1s2_trap
execute as @e[tag=b1s2] at @s run function icebird1215:bossfights/boss1/skill2/particle
execute as @e[tag=b1s2_trap] at @s run function icebird1215:bossfights/boss1/skill2/particle2
execute as @e[tag=b1s2_trap] at @s if entity @p[distance=..3] run function icebird1215:bossfights/boss1/skill2/damage
execute as @e[tag=b1s2_trap] at @s if entity @e[tag=b1s3,distance=..3] run function icebird1215:bossfights/boss1/skill2/stock