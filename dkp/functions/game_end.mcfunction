# ゲーム終了処理

# ゲームステータス変更
scoreboard players set _gameStatus gameStatus 0
# ワールドボーダー拡張
worldborder set 1000

# チーム解散
team leave @a
# アイテム取り上げ
clear @a
# ニワトリ消滅
kill @e[type=chicken]
# 全員クリエイティブ
gamemode creative @a
execute as mg_cha run function dkp:items/give/commandbook
# チーム分けの場所にtp
schedule function dkp:start_point_tp 10t