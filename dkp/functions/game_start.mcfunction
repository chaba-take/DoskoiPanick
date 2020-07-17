# ゲーム初期設定 ゲーム開始時に毎回起動
# 各種スコア初期化
# ワールドボーダー用秒数スコアボード設定
# 160秒（3200tick）
scoreboard players set _borderTime Timer 3200
# ゲーム開始カウントダウンスコアを5に設定
scoreboard players set _countDown countDown 100
scoreboard players set _countSet countDown 0
scoreboard players set _const20 countDown 20
scoreboard players set _dispCountDown countDown 0
# ニワトリタイマーを設定
scoreboard players set _chickenTimer Timer 0
# 死亡カウント
scoreboard players set @a deathCnt 0
# ニワトリキル数
scoreboard players set @a chickenKill 0
# チームスコアボードカウント
scoreboard players set _blueRemain remainNum 0
scoreboard players set _redRemain remainNum 0
# ダメージ検知初期化
scoreboard players set @a damageCnt 0
# WB初期化  
scoreboard players set _wbRange wbRange 60
# 勝利チーム初期化
scoreboard players set _winTeam winTeam -1
# 即時リスポン設定
gamerule doImmediateRespawn true

# チームの数をスコアボードに登録
# 青チーム
execute store result score _blueRemain remainNum run execute if entity @a[team=blue]
# 赤チーム
execute store result score _redRemain remainNum run execute if entity @a[team=red]

# ゲームモード切り替え
gamemode adventure @a
# mobのドロップをさ せない
gamerule doMobLoot false
# アイテム取り上げ
clear @a
# 基本武器支給
execute as @a run function dkp:items/give/chikuwa
# 鎧着せ直し
execute as @a[team=red] at @s[team=red] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:'{"text":"赤チーム"}',color:16730704},Unbreakable:1b}
execute as @a[team=blue] at @s[team=blue] run replaceitem entity @s armor.chest leather_chestplate{display:{Name:'{"text":"青チーム"}',color:5857279},Unbreakable:1b}


# リングにtp
# 赤チーム
execute as @e[type=armor_stand,tag=red_start] run tp @a[team=red] @s
# 青チーム
execute as @e[type=armor_stand,tag=blue_start] run tp @a[team=blue] @s

# 塩配布
give @a minecraft:bone_meal{display:{Name:'{"text":"清めの塩"}',Lore:['{"text":"Qで土俵に撒いてお清めをしよう！！"}']}} 64

# カウントダウンにするためにゲームステータスを準備中に変更
scoreboard players set _gameStatus gameStatus 1
