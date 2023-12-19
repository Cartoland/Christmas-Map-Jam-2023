execute unless entity @e[tag=b1s3] run function icebird1215:bossfights/boss1/skill3/begin
tag @r add b1s3_target
schedule function icebird1215:bossfights/boss1/skill3/ini2 3s
title @a title {"text": "§4!"}
title @a subtitle {"text": "§f「你」的未來"}
tellraw @a[tag=b1s3_target] {"text": "§7目標是你，將你的未來引到時空陷阱上禁錮他!"}
playsound entity.wither.ambient block @a ~ ~ ~ 1 1