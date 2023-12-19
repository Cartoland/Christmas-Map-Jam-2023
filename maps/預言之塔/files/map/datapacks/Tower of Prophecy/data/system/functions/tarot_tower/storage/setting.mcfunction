#declare storage system:tarot_tower

data modify storage system:tarot_tower normal_pool set value []
data modify storage system:tarot_tower normal_pool append value {id:"magician"}
data modify storage system:tarot_tower normal_pool append value {id:"high_priestess"}
data modify storage system:tarot_tower normal_pool append value {id:"empress"}
data modify storage system:tarot_tower normal_pool append value {id:"emperor"}
data modify storage system:tarot_tower normal_pool append value {id:"high_priest"}
data modify storage system:tarot_tower normal_pool append value {id:"lovers"}
data modify storage system:tarot_tower normal_pool append value {id:"chariot"}
data modify storage system:tarot_tower normal_pool append value {id:"strength"}
data modify storage system:tarot_tower normal_pool append value {id:"hermit"}
data modify storage system:tarot_tower normal_pool append value {id:"wheel_of_fortune"}
data modify storage system:tarot_tower normal_pool append value {id:"hanged_man"}
data modify storage system:tarot_tower normal_pool append value {id:"devil"}

data modify storage system:tarot_tower elite_pool set value []
data modify storage system:tarot_tower elite_pool append value {id:"death"}
data modify storage system:tarot_tower elite_pool append value {id:"temperance"}
data modify storage system:tarot_tower elite_pool append value {id:"tower"}
data modify storage system:tarot_tower elite_pool append value {id:"star"}
data modify storage system:tarot_tower elite_pool append value {id:"moon"}
data modify storage system:tarot_tower elite_pool append value {id:"sun"}

data modify storage system:tarot_tower special_pool set value []
data modify storage system:tarot_tower special_pool append value {id:"justice"}
# 晚點補
data modify storage system:tarot_tower special_pool append value {id:"judgement"}
#data modify storage system:tarot_tower special_pool append value {id:"world"}

data modify storage system:tarot_tower floors_data set value [{},{begin:{type:"",reversed:0b}},{begin:{elite_type:"",elite_reversed:0b,normal1_type:"",normal1_reversed:0b,normal2_type:"",normal2_reversed:0b}},{begin:{type:"",reversed:0b}},{begin:{elite_type:"",elite_reversed:0b,normal1_type:"",normal1_reversed:0b,normal2_type:"",normal2_reversed:0b}},{begin:{type:"",reversed:0b}},{begin:{type:"",reversed:0b}},{begin:{elite_type:"",elite_reversed:0b,normal1_type:"",normal1_reversed:0b,normal2_type:"",normal2_reversed:0b}},{begin:{type:"",reversed:0b}},{begin:{type:"",reversed:0b}},{begin:{elite_type:"",elite_reversed:0b,normal1_type:"",normal1_reversed:0b,normal2_type:"",normal2_reversed:0b}}]

data modify storage system:tarot_tower plots set value ['']
data modify storage system:tarot_tower plots append value '{"text":"「你的旅程正要開始。」\\n"}'

data modify storage system:tarot_tower data.magician set value {text:'{"text":"魔術師"}'}
data modify storage system:tarot_tower data.high_priestess set value {text:'{"text":"女祭司"}'}
data modify storage system:tarot_tower data.empress set value {text:'{"text":"女皇"}'}
data modify storage system:tarot_tower data.emperor set value {text:'{"text":"皇帝"}'}
data modify storage system:tarot_tower data.high_priest set value {text:'{"text":"教皇"}'}
data modify storage system:tarot_tower data.lovers set value {text:'{"text":"戀人"}'}
data modify storage system:tarot_tower data.chariot set value {text:'{"text":"戰車"}'}
data modify storage system:tarot_tower data.strength set value {text:'{"text":"力量"}'}
data modify storage system:tarot_tower data.hermit set value {text:'{"text":"隱者"}'}
data modify storage system:tarot_tower data.wheel_of_fortune set value {text:'{"text":"命運之輪"}'}
data modify storage system:tarot_tower data.justice set value {text:'{"text":"正義"}'}
data modify storage system:tarot_tower data.hanged_man set value {text:'{"text":"倒吊人"}'}
data modify storage system:tarot_tower data.death set value {text:'{"text":"死神"}'}
data modify storage system:tarot_tower data.temperance set value {text:'{"text":"節制"}'}
data modify storage system:tarot_tower data.devil set value {text:'{"text":"惡魔"}'}
data modify storage system:tarot_tower data.tower set value {text:'{"text":"高塔"}'}
data modify storage system:tarot_tower data.star set value {text:'{"text":"星星"}'}
data modify storage system:tarot_tower data.moon set value {text:'{"text":"月亮"}'}
data modify storage system:tarot_tower data.sun set value {text:'{"text":"太陽"}'}
data modify storage system:tarot_tower data.judgement set value {text:'{"text":"審判"}'}
data modify storage system:tarot_tower data.world set value {text:'{"text":"世界"}'}
data modify storage system:tarot_tower data.upright set value {text:'{"text":"正位"}'}
data modify storage system:tarot_tower data.reversed set value {text:'{"text":"逆位"}'}
