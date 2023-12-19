#遊戲結束
scoreboard players set in_game determine 0

#播放勝利動畫
playsound entity.player.levelup block @a ~ ~ ~ 1.0 1.0 1.0
title @a title {"text":"防禦成功","bold":true,"color":"green"}
kill @e[tag=base]

#清除所有陷阱
kill @e[tag=trap]
give @p ender_eye{CanPlaceOn:["end_portal_frame"],display:{Name:'[{"text":"","italic":false},{"text":"祭壇能量塊","color":"dark_purple","bold":true}]',Lore:['[{"text":"","italic":false},{"text":"放入祭壇後可啟動","color":"gray"}]']}} 1


#還原祭壇和關卡
setblock 27 109 -1 air
setblock 27 109 -1 end_portal_frame
scoreboard players add waves determine 1
function waves:ready

#故事
execute if score s1 story matches 21..22 run scoreboard players set s1 story 23
execute if score waves determine matches 6 run function story:s2
execute if score waves determine matches 11 run function story:s3

#跳關歸零
scoreboard players set skip determine 0

bossbar set boss1 visible false