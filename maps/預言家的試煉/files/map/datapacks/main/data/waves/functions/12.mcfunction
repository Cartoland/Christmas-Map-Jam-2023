kill @e[tag=p]
summon marker 27.5 108 -10 {Tags:["4smalltank","normal_mob","p"]}
summon marker 27.5 108 -12 {Tags:["3small","hard_mob","p"]}
summon marker 22.8 108 -6.2 {Tags:["1zombie","normal_nob","p"]}
 
clear @a carrot_on_a_stick
function traps:get/1returner
function traps:get/2checker
 
function traps:get/3bomb
function traps:get/4big_bomb
function traps:get/5thunder

scoreboard players set waves determine 12