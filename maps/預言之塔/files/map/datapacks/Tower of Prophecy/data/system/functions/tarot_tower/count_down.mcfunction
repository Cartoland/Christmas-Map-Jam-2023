execute if score $countDown system.tarot_tower.states matches 60 run title @a title {"text":"3","color":"yellow"}
execute if score $countDown system.tarot_tower.states matches 60 at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~
execute if score $countDown system.tarot_tower.states matches 40 run title @a title {"text":"2","color":"gold"}
execute if score $countDown system.tarot_tower.states matches 40 at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~
execute if score $countDown system.tarot_tower.states matches 20 run title @a title {"text":"1","color":"red"}
execute if score $countDown system.tarot_tower.states matches 20 at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~
execute if score $countDown system.tarot_tower.states matches 0 unless score $world system.tarot_tower.states matches -1 run title @a title {"text":"戰鬥開始","color":"dark_red"}
execute if score $countDown system.tarot_tower.states matches 0 unless score $world system.tarot_tower.states matches -1 at @e[type=minecraft:marker,tag=system.tarot_tower,tag=system.center,tag=system.current] run playsound minecraft:entity.elder_guardian.curse block @a ~ ~ ~ 1 0.8
execute if score $countDown system.tarot_tower.states matches 0 unless score $world system.tarot_tower.states matches -1 if score $current system.tarot_tower.floor matches 1..10 run function system:tarot_tower/storage/begin
execute if score $countDown system.tarot_tower.states matches 0 if score $current system.tarot_tower.floor matches 11 run function system:tarot_tower/begin_boss
execute if score $countDown system.tarot_tower.states matches 0 if score $world system.tarot_tower.states matches -1 run function system:tarot_tower/world_reversed
scoreboard players remove $countDown system.tarot_tower.states 1
