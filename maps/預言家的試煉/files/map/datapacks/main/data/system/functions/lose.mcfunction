schedule clear waves:20/bossai

#遊戲結束
scoreboard players set in_game determine 0

#播放失敗動畫
playsound entity.wither.death block @a ~ ~ ~ 1.0 1.0 1.0
title @a title {"text":"防禦失敗","bold":true,"color":"red"}
effect give @a slowness 4 9 true
effect give @a jump_boost 4 160 true
effect give @a blindness 5 0 true

#清除所有敵人和陷阱
kill @e[tag=enemy]
kill @e[tag=trap]
clear @a carrot_on_a_stick
give @p ender_eye{CanPlaceOn:["end_portal_frame"],display:{Name:'[{"text":"","italic":false},{"text":"祭壇能量塊","color":"dark_purple","bold":true}]',Lore:['[{"text":"","italic":false},{"text":"放入祭壇後可啟動","color":"gray"}]']}} 1
function traps:get/1returner
function traps:get/2checker


#還原祭壇和關卡
setblock 27 109 -1 air
setblock 27 109 -1 end_portal_frame
function waves:ready

#連輸五次跳關
scoreboard players add skip determine 1
execute if score skip determine matches 5.. run tellraw @p ["",{"text":"遇到困難了嗎 ?  ","bold":true,"color":"gray"},{"text":"【點我可以跳關】","bold":true,"color":"dark_aqua","clickEvent":{"action":"run_command","value":"/execute if score skip determine matches 5.. run function system:skip"}}]

bossbar set boss1 visible false