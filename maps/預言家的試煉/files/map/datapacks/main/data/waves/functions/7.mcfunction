kill @e[tag=p]
summon marker 27.5 108 -14 {Tags:["2tank","hard_mob","p"]}
summon marker 27.5 108 -12 {Tags:["1zombie","normal_mob","p"]}
 
clear @a carrot_on_a_stick
function traps:get/1returner
function traps:get/2checker
 
function traps:get/3bomb
function traps:get/4big_bomb

scoreboard players set waves determine 7