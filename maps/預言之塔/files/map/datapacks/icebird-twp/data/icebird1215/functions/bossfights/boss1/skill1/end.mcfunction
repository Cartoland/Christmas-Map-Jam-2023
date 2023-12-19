tp @e[tag=boss1_true] ~ ~-1000 ~
kill @e[tag=boss1_true]
tp @e[tag=boss1] @p
data merge entity @e[tag=boss1,limit=1] {Invulnerable:0b}
effect clear @e[tag=boss1,limit=1] invisibility