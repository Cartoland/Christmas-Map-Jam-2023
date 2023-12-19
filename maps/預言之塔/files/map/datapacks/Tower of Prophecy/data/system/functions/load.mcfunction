#declare storage system:utils

scoreboard objectives add system.utils dummy
scoreboard objectives add system.player_id dummy
scoreboard objectives add system.player_died deathCount

scoreboard objectives add system.tarot_tower.states dummy
scoreboard objectives add system.tarot_tower.floor dummy
scoreboard objectives add system.tarot_tower.rotation dummy
scoreboard objectives add system.tarot_tower.trigger trigger

execute unless score $playerCount system.player_id matches 0.. run scoreboard players set $playerCount system.player_id 0

scoreboard players set $true system.utils 1
scoreboard players set $false system.utils 0
