# タイマー実働&ワールドボーダー設定

# ワールドボーダーは30秒ごとに10秒かけて範囲が狭くなる
# それが4回
# 1回目のボーダー移動
execute if score _borderTime Timer matches 2600 run function dkp:wb/move_border
# 2回目
execute if score _borderTime Timer matches 1800 run function dkp:wb/move_border
# 3回目
execute if score _borderTime Timer matches 1000 run function dkp:wb/move_border
# 4回目
execute if score _borderTime Timer matches 200 run function dkp:wb/move_border
# タイマー動かす
execute if score _borderTime Timer matches 1.. run scoreboard players remove _borderTime Timer 1
# ワールドボーダーの範囲をスコアボードにも入れておく
execute store result score _wbRange wbRange run worldborder get
# ワールドボーダーの範囲を見てkillを決める
execute if score _borderTime Timer matches ..3100 if score _wbRange wbRange matches 51.. as @e[type=armor_stand,tag=world_center] at @e[type=armor_stand,tag=world_center] run kill @e[type=player,gamemode=adventure,distance=30.5..]
execute if score _borderTime Timer matches ..3100 if score _wbRange wbRange matches 41..50 as @e[type=armor_stand,tag=world_center] at @e[type=armor_stand,tag=world_center] run kill @e[type=player,gamemode=adventure,distance=25.5..]
execute if score _borderTime Timer matches ..3100 if score _wbRange wbRange matches 31..40 as @e[type=armor_stand,tag=world_center] at @e[type=armor_stand,tag=world_center] run kill @e[type=player,gamemode=adventure,distance=20.5..]
execute if score _borderTime Timer matches ..3100 if score _wbRange wbRange matches 21..30 as @e[type=armor_stand,tag=world_center] at @e[type=armor_stand,tag=world_center] run kill @e[type=player,gamemode=adventure,distance=15.5..]
execute if score _borderTime Timer matches ..3100 if score _wbRange wbRange matches 10..20 as @e[type=armor_stand,tag=world_center] at @e[type=armor_stand,tag=world_center] run kill @e[type=player,gamemode=adventure,distance=10.5..]