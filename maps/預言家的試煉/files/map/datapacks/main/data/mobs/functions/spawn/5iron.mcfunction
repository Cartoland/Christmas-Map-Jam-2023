summon zombie ~ ~1 ~ {Tags:["5iron","enemy","iron"],CustomNameVisible:1,CustomName:'[{"text":"","italic":false},{"text":"鋼鐵魔僵","color":"dark_gray"}]',Health:3f,Attributes:[{Name:"generic.max_health",Base:5},{Name:"generic.follow_range",Base:1000},{Name:"generic.attack_damage",Base:2},{Name:"generic.knockback_resistance",Base:2.0}],HandItems:[{Count:1b,id:"stick",tag:{}},{}],HandDropChances:[0f,0f],ArmorItems:[{Count:1b,id:"iron_boots",tag:{}},{Count:1b,id:"iron_leggings",tag:{}},{Count:1b,id:"iron_chestplate",tag:{}},{Count:1b,id:"iron_helmet",tag:{}}],ArmorDropChances:[0f,0f,0f,0f]}
team join player_and_mobs @e[distance=..2,tag=5iron]
team join walls @e[distance=..2,tag=5iron]

effect give @e[tag=iron] slowness infinite 0 true