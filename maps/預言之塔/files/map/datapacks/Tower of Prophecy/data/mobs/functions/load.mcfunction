#declare tag mobs
#declare tag mobs.normal
#declare tag mobs.elite
#declare tag mobs.reversed
#declare tag mobs.new

#declare tag mobs.skill
scoreboard objectives add mobs.skill_timer dummy

#declare tag mobs.cooldown
scoreboard objectives add mobs.cooldown_timer dummy

#declare tag mobs.halt
scoreboard objectives add mobs.halt_timer dummy

scoreboard objectives add mobs.states dummy
scoreboard objectives add mobs.utils dummy

scoreboard objectives add mobs.reviving.timer dummy
scoreboard objectives add mobs.reviving.type dummy

scoreboard players set $360 mobs.utils 360

team add mobs {"text":"If you are not a mob, please leave the team"}
team modify mobs nametagVisibility never
team modify mobs color red

team add pushOwnTeam
team modify pushOwnTeam collisionRule pushOtherTeams

#declare storage mobs:utils
