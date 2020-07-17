# ゲーム中の勝敗判定
# 生きているプレイヤーが残っているチームが1つだけになったら終了

# プレイヤー死亡時にチームの死亡数にカウント
# 赤チームの人間死亡時人数マイナス
execute if entity @a[team=red,scores={deathCnt=1..}] as @a[team=red,scores={deathCnt=1..}] run scoreboard players remove _redRemain remainNum 1
execute if entity @a[team=red,scores={deathCnt=1..}] as @a[team=red,scores={deathCnt=1..}] run gamemode spectator @s
execute if entity @a[team=red,scores={deathCnt=1..}] as @a[team=red,scores={deathCnt=1..}] run spawnpoint @s
execute if entity @a[team=red,scores={deathCnt=1..}] as @a[scores={deathCnt=1..}] run scoreboard players set @s deathCnt 0

# 青チームの人間死亡時人数マイナス
execute if entity @a[team=blue,scores={deathCnt=1..}] as @a[team=blue,scores={deathCnt=1..}] run scoreboard players remove _blueRemain remainNum 1
execute if entity @a[team=blue,scores={deathCnt=1..}] as @a[team=blue,scores={deathCnt=1..}] run gamemode spectator @s
execute if entity @a[team=blue,scores={deathCnt=1..}] as @a[team=blue,scores={deathCnt=1..}] run spawnpoint @s
execute if entity @a[team=blue,scores={deathCnt=1..}] as @a[scores={deathCnt=1..}] run scoreboard players set @s deathCnt 0

# 勝敗判定
# 青が0になったら赤の勝利
execute if score _blueRemain remainNum matches 0 run scoreboard players set _winTeam winTeam 1
# 赤が0になったら青の勝利
execute if score _redRemain remainNum matches 0 run scoreboard players set _winTeam winTeam 2
# 勝利タイトルを出す
execute if score _winTeam winTeam matches 1.. run function dkp:announce/win_title
# ゲーム終了処理
execute if score _winTeam winTeam matches 1.. run function dkp:game_end

