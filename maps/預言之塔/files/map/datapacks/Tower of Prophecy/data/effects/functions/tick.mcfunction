
execute as @a[scores={effects.bleed_timer=1..}] at @s run function effects:bleed/check
execute as @a[scores={effects.captured_timer=1..}] at @s run function effects:captured/check
