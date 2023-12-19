summon vindicator ~ ~ ~ {NoAI:1B,Silent:1b,Glowing:1b,CustomNameVisible:1b,PersistenceRequired:0b,Health:150f,Johnny:1b,Tags:["boss1","enemy"],CustomName:'{"text":"RT-1013","color":"#323952","bold":true}',HandItems:[{id:"minecraft:iron_ingot",Count:1b,tag:{Enchantments:[{}]}},{}],ArmorItems:[{id:"minecraft:iron_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:feather_falling",lvl:10s}]}},{},{},{}],Attributes:[{Name:generic.max_health,Base:150},{Name:generic.follow_range,Base:200},{Name:generic.attack_damage,Base:10}]}
team join player_and_mobs @e[distance=..2,tag=boss1]
team join walls @e[distance=..2,tag=boss1]

effect give @e[tag=boss1] slowness infinite 3 true