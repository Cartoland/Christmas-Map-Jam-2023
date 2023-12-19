advancement revoke @s only system:first_login

scoreboard players operation @s system.player_id = $playerCount system.player_id
scoreboard players add $playerCount system.player_id 1
spawnpoint @s 0 0 0
tp @s 0 0 0


# 之後刪掉這個

tag @s add system.player
