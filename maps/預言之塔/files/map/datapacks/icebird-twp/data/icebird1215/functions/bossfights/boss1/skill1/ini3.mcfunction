tp @e[tag=boss1_fake] ~ ~-1000 ~
kill @e[tag=boss1_fake]
effect give @s glowing 5 0 true
execute as @a[x=-56,y=80,z=3,dx=14,dy=-4,dz=-7] run damage @s 30 explosion
particle explosion ^ ^ ^5 4 0.2 4 0.7 200 force
playsound entity.ender_dragon.growl block @a ~ ~ ~ 2 2
schedule function icebird1215:bossfights/boss1/skill1/end 2s