#scoreborad
scoreboard objectives add determine dummy "判斷式"
scoreboard objectives add use minecraft.used:carrot_on_a_stick "使用胡羅波釣竿"
scoreboard objectives add timer dummy "計時器"
scoreboard objectives add trap_trigger dummy "陷阱是否啟用"
scoreboard objectives add story dummy "劇情"

scoreboard players set waves determine 1
scoreboard players set emeny_num determine 0
scoreboard players set skip determine 0
scoreboard players set boss determine 0
scoreboard players set boss1 determine 0
scoreboard players set temp determine 0

scoreboard players set s1 story -1
scoreboard players set s2 story 1
scoreboard players set s3 story 1
scoreboard players set s4 story 1
scoreboard players set s5 story 1

scoreboard players set 3bomb timer 0
scoreboard players set 4big_bomb timer 0
scoreboard players set 5thunder timer 0

schedule clear story:s1

#bossbar
bossbar add boss1 {"text":"#RT-1013","bold":true,"color":"dark_gray"}
bossbar set boss1 max 150
bossbar set boss1 color white
bossbar set boss1 style notched_6
bossbar set boss1 visible false 

#資源包載入完畢通知
tellraw @a {"text":"【資源包已載入完畢】","bold":true,"color":"dark_green"}
playsound entity.player.levelup block @a ~ ~ ~ 1.0 1.0 1.0

#team => 同個 team 不會互吸仇恨 => 怪物巡路 AI
team add player_and_mobs "玩家和怪物"
team add base "基地"
team add wall "牆壁" 
#牆壁還沒做 awa

team join player_and_mobs @a

