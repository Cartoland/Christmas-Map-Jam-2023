#declare tag mobs.high_priestess

execute as @e[type=minecraft:vex,tag=!mobs] run function mobs:normal/high_priestess/vex_check
execute as @e[type=minecraft:evoker_fangs,tag=!mobs] run function mobs:normal/high_priestess/fang_check
