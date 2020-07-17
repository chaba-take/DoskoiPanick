# ループ管理用ファイル

# チーム分け
execute if score _gameStatus gameStatus matches 0 run function dkp:team/team_div/team_select
# ゲーム開始カウントダウン
execute if score _gameStatus gameStatus matches 1 run function dkp:ready/countdown
# ゲーム実行時のワールドボーダー
execute if score _gameStatus gameStatus matches 2 run function dkp:wb/monitor_border
# ニワトリランダム
execute if score _gameStatus gameStatus matches 2 run function dkp:mobs/chicken_timer
# ニワトリルートテーブル
execute if score _gameStatus gameStatus matches 2 run function dkp:mobs/chihcken_loot
# ゲーム中の勝敗判定
execute if score _gameStatus gameStatus matches 2 run function dkp:judge_win_lose
# 金のちくわ監視
execute if score _gameStatus gameStatus matches 2 run function dkp:items/use/golden_chikuwa