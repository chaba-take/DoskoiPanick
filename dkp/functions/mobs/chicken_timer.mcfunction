# ニワトリを5秒に一回出すタイマー
execute if score _chickenTimer Timer matches 0.. run scoreboard players add _chickenTimer Timer 1
execute if score _chickenTimer Timer matches 60.. run function dkp:mobs/summon_chicken
execute if score _chickenTimer Timer matches 60.. run scoreboard players set _chickenTimer Timer 0 
