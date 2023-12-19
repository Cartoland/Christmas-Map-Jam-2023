#遊戲結束
scoreboard players set in_game determine 0

#播放勝利動畫
playsound entity.enderman.teleport block @a ~ ~ ~ 1.0 1.0 1.0
tellraw @p ["",{"text":"在失敗了第 ","bold":true,"color":"gray"},{"score":{"name":"skip","objective":"determine"},"bold":true,"color":"blue"},{"text":" 次後，","bold":true,"color":"gray"},{"selector":"@p","color":"gray"},{"text":" 選擇跳關","bold":true,"color":"gray"}]
kill @e[tag=base]

#清除所有陷阱
kill @e[tag=trap]
give @p ender_eye{CanPlaceOn:["end_portal_frame"],display:{Name:'[{"text":"","italic":false},{"text":"祭壇能量塊","color":"dark_purple","bold":true}]',Lore:['[{"text":"","italic":false},{"text":"放入祭壇後可啟動","color":"gray"}]']}} 1
kill @e[tag=enemy]

#還原祭壇和關卡
setblock 27 109 -1 air
setblock 27 109 -1 end_portal_frame
scoreboard players add waves determine 1
function waves:ready

#跳關歸零
scoreboard players set skip determine 0

bossbar set boss1 visible false