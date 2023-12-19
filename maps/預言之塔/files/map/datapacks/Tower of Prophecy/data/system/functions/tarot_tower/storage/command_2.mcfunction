scoreboard players set @a[tag=system.player] system.tarot_tower.trigger 0
scoreboard players enable @a[tag=system.player] system.tarot_tower.trigger

function system:tarot_tower/storage/set_options with storage system:tarot_tower current

data modify storage system:tarot_tower book_content.command set value '{"text":"      ","extra":[{"text":"做出選擇吧","color":"dark_gray","italic":true}]}'
