execute at @r[gamemode=!creative,gamemode=!spectator,distance=0..30] rotated ~ 0 run summon minecraft:enderman ^ ^ ^-1 {Tags:["mobs","mobs.normal","mobs.reversed","mobs.magician","mobs.provoke"],Team:"mobs",CustomName:'{"text":"Dinnerbone"}',Health:40f,Attributes:[{Name:"minecraft:generic.max_health",Base:40d},{Name:"minecraft:generic.attack_damage",Base:12d}],PersistenceRequired:1b}
function mobs:common/provoke
