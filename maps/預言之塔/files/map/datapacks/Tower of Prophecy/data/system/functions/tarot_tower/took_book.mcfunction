advancement revoke @s only system:tarot_tower/took_book

clear @s minecraft:written_book{tarot_tower:1b}
playsound minecraft:ambient.cave ambient @a ~ ~ ~
tellraw @a {"text":"<迷之音>","color":"gold","extra":[{"text":" 誰說你可以拿的?","color":"white"}]}
function system:tarot_tower/reset_floor
