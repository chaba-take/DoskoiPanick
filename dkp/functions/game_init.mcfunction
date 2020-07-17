# ゲームinit（初回のみ）
#####
# スコアボード削除
#####
# ワールドボーダー用タイマー
scoreboard objectives remove Timer
# ゲームステータス
scoreboard objectives remove gameStatus
# 準備カウントダウン
scoreboard objectives remove countDown
# プレイヤー死亡数スコアボード
scoreboard objectives remove deathCnt
# ニワトリキルスコアボード
scoreboard objectives remove chickenKill
# ワールドボーダー範囲
scoreboard objectives remove wbRange
# ニワトリ召喚タイマー
scoreboard objectives remove chickenTime
# チームの人数スコアボード
scoreboard objectives remove remainNum
# 勝利チームスコアボード
scoreboard objectives remove winTeam
# ダメージ検知用スコアボード
scoreboard objectives remove damageCnt
# 骨粉ドロップ検知
scoreboard objectives remove d_koppun


#####
# スコアボード作成
#####
scoreboard objectives add Timer dummy "各種タイマー"
# 0:ゲーム停止 1:ゲーム準備（カウントダウン） 2:ゲーム開始
scoreboard objectives add gameStatus dummy "ゲームステータス"
scoreboard objectives add countDown dummy "カウントダウン"
scoreboard objectives add deathCnt deathCount "死亡数"
scoreboard objectives add chickenKill minecraft.killed:minecraft.chicken "ニワトリキルカウント"
scoreboard objectives add wbRange dummy "ワールドボーダー範囲"
scoreboard objectives add chickenTime dummy "ニワトリ召喚タイマー"
scoreboard objectives add remainNum dummy "チーム人数"
scoreboard objectives add damageCnt minecraft.custom:damage_dealt "ダメージ検知"
scoreboard objectives add d_koppun minecraft.dropped:minecraft.bone_meal "骨粉ドロップ検知"
# 1:赤 2:青
scoreboard objectives add winTeam dummy "勝利チーム"

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
scoreboard players set _wbRange wbRange 0
# 勝利チーム初期化
scoreboard players set _winTeam winTeam -1
# ゲームステータス
scoreboard players set _gameStatus gameStatus 0

#####
# チーム設定
#####
function dkp:team/team_setting