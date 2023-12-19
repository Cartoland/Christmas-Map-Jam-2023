scoreboard players set @a[tag=system.player] system.tarot_tower.trigger 0
scoreboard players enable @a[tag=system.player] system.tarot_tower.trigger
data modify storage system:tarot_tower book_content.command set value '{"text":"       ","extra":[{"text":"揭示你的命運","color":"gold","italic":true,"underlined":true,"clickEvent":{"action":"run_command","value":"/trigger system.tarot_tower.trigger set -1"}}]}'
