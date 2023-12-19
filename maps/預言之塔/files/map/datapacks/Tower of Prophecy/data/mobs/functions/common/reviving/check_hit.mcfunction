execute store result score $timestamp mobs.reviving.timer run data get entity @s attack.timestamp
execute if score $timestamp mobs.reviving.timer >= $gametime system.utils on passengers as @s[tag=mobs.reviving.core] unless score @s mobs.reviving.type matches 99 at @s run function mobs:common/reviving/killed
