# カウントダウン表示

scoreboard players operation _countSet countDown = _countDown countDown
scoreboard players operation _dispCountDown countDown = _countDown countDown
scoreboard players set _const20 countDown 20
# 内部カウント用20 で割った余り
scoreboard players operation _countSet countDown %= _const20 countDown
# 表示用 20で割った数
scoreboard players operation _dispCountDown countDown /= _const20 countDown
execute if score _countDown countDown matches 1.. if score _countSet countDown matches 0 run title @a title [{"text":"どすこいパニック","color":"gold"}]
execute if score _countDown countDown matches 1.. if score _countSet countDown matches 0 run title @a subtitle [{"score":{"name":"_dispCountDown","objective":"countDown"}}]
execute if score _countDown countDown matches 1.. if score _countSet countDown matches 0 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10000
execute if score _countDown countDown matches 1.. if score _countSet countDown matches 0 run title @a times 0 55 10
execute if score _countDown countDown matches 1.. if score _countDown countDown matches 1.. run scoreboard players remove _countDown countDown 1

# 開始後の設定
execute if score _countDown countDown matches 0 run scoreboard players set _gameStatus gameStatus 2
execute if score _countDown countDown matches 0 run title @a title [{"text":"どすこいパニック","color":"gold"}]
execute if score _countDown countDown matches 0 run title @a subtitle [{"text":"- Start -","color":"red"}]
execute if score _countDown countDown matches 0 run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 10000
# ワールドボーダー設定
execute if score _countDown countDown matches 0 run function dkp:wb/wb_setting

# 骨粉ドロップ検知
execute if entity @a[scores={d_koppun=1..}] run kill @e[limit=10,type=minecraft:item,distance=..10]
execute if entity @a[scores={d_koppun=1..}] run scoreboard players set @a[scores={d_koppun=1..}] d_koppun 0

# 体力設定
execute if score _countDown countDown matches 0 run effect give @a minecraft:health_boost 999999 4 true
# 即時回復
execute if score _countDown countDown matches 0 run effect give @a minecraft:instant_health 1 99 true
# 満腹度常に回復
execute if score _countDown countDown matches 0 run effect give @a minecraft:saturation 99999 99 true
# 塩回収
execute if score _countDown countDown matches 0 run clear @a minecraft:bone_meal

# カウントダウンの値を-1して念の為動かないようにしておく
execute if score _countDown countDown matches 0 run scoreboard players remove _countDown countDown 1



